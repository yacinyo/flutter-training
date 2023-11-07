import 'package:flutter/material.dart';
import 'package:training_app/style/style.dart';

AppBar getAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 5),
          child: Image.asset("assets/logo.png"),
        ),
        const Text(
          "Messagerie Simplon",
          style: appBarTitle,
        ),
      ],
    ),
  );
}
