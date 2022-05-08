import 'package:flutter/material.dart';

Future<void> showErrorAlert(BuildContext context, String errorText) async {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      content: Text(errorText),
      actions: [
        TextButton(
          onPressed: (() => Navigator.of(context).pop()),
          child: const Text('Ok'),
        )
      ],
    ),
  );
}
