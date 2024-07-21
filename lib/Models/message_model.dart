class MessageModel {
  final String message;
  const MessageModel({required this.message});

  factory MessageModel.fromjson(json){
    return MessageModel(
      message:json['message'] ,
    );
  }
}
