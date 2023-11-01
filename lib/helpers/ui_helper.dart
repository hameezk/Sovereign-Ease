import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

void showLoadingDialog(BuildContext context, String title) {
  AlertDialog loadingDialog = AlertDialog(
    content: Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(
            color: primaryColorLight,
          ),
          const SizedBox(
            height: 30,
          ),
          Text(title),
        ],
      ),
    ),
  );
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return loadingDialog;
      });
}

void showAlertDialog(BuildContext context, String title, String content) {
  AlertDialog alertDialog = AlertDialog(
    title: Text(title),
    content: SingleChildScrollView(child: Text(content)),
    actions: [
      TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Ok")),
    ],
  );
  showDialog(
      context: context,
      builder: (context) {
        return alertDialog;
      });
}

showCustomSnackbar({context, content, Function()? onTap}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black87,
      duration: const Duration(seconds: 2),
      content: GestureDetector(
        onTap: onTap,
        child: Text(
          content,
          style: Theme.of(context)
              .textTheme
              .bodyText1!
              .copyWith(color: Colors.white70),
        ),
      ),
    ),
  );
}
