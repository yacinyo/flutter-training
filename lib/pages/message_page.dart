import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutter/material.dart';
import 'package:training_app/models/message.dart';
import 'package:training_app/pages/list_page.dart';
import 'package:training_app/image-service2.dart/message_service.dart';
import 'package:training_app/widgets/message_widget.dart';

class MessagesPage extends ListPage {
  final String conversationId;

  const MessagesPage({
    Key? key,
    required this.conversationId,
  }) : super(key: key);

  get query => null;

  @override
  FirestoreListView getListView() {
    return FirestoreListView<Message>(
      reverse: true,
      query: MessagesServices.getAll(conversationId).orderBy(
        'createdAt',
        descending: true,
      ),
      padding: const EdgeInsets.all(8.0),
      itemBuilder: (context, snapshot) {
        final message = snapshot.data();
        return MessageWidget(message: message);
      },
    );
  }
}
