import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whats_app/Models/message_model.dart';
import 'package:whats_app/Widgets/sending_form.dart';
import 'package:whats_app/Widgets/user_bar.dart';
import 'package:whats_app/Widgets/user_chat_bubble.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
  static String id = 'ChatScreen';
  final TextEditingController controller = TextEditingController();
  final String dateCreated=DateFormat('h:mm:ss a').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    CollectionReference messages =
        FirebaseFirestore.instance.collection('messages');

    return StreamBuilder<QuerySnapshot>(
        stream:  messages.orderBy('createdAt',descending: true).snapshots(),
        builder: (context, snapshots) {
          if (snapshots.hasData) {
            List<MessageModel> messageList = [
            ];
            for (int i = 0; i <snapshots.data!.docs.length; i++) {
              messageList.add(MessageModel.fromjson(snapshots.data!.docs[i]));
            }
            return SafeArea(
              child: Scaffold(
                backgroundColor: Colors
                    .grey, // Image.asset('assets/Images/scaffoldIamge.jpg').color,
                body: Column(
                  children: [
                    const UserBar(),
                    Expanded(
                      child: ListView.builder(
                        itemCount: messageList.length,
                        itemBuilder: (context, index) {
                          return UserChatBubble(
                            userMessage: messageList[index],
                          );
                        },
                      ),
                    ),
                    SendingForm(
                      onSubmitted: (message) {
                        messages.add({
                          'message': message,
                          'createdAt':dateCreated,
                        }).then(
                          (value) => message,
                        );
                        controller.clear();
                      },
                      controller: controller,
                    )
                  ],
                ),
              ),
            );
          } else {
            return const Text('Error');
          
          }
        });
  }
}
