
import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(end: 3),
      height: 5,
      width: 5,
      decoration: const BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(2.5)),
        color: Colors.green,
      ),
    );
  }
}
