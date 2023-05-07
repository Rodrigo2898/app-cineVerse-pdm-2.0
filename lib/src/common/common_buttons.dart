import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class CommonButton extends ElevatedButton {
  CommonButton({Key? key, required String text, required VoidCallback onPressed}) :super (
    key: key,
    onPressed: onPressed,
    style:  ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
         const Color.fromARGB(255, 217, 166, 12)
      )
    ),
    child: Text(
      text.i18n(),
      style: const TextStyle(
        color: Colors.black12,
      ),
    )
  );
}