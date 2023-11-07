import 'package:flutter/material.dart';
import 'package:training_app/models/image_message.dart';
import 'package:training_app/widgets/message_widget.dart';
import 'package:training_app/widgets/message_widget.dart';

class ImageMessageWidget extends MessageWidget {
  ImageMessageWidget({
    key,
    required message,
  }) : super(key: key, message: message) {
    if (message is! ImageMessage) {
      throw Exception("Le message doit être de type ImageMessage");
    }
  }

  @override
  Widget getBody() {
    if ((message as ImageMessage).imageUrl != null) {
      return Image.network((message as ImageMessage).imageUrl!);
    }
    return const SizedBox();
  }
}
