import 'package:flutter/material.dart';

void showAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => const AlertDialog(
            content: Text("hi"),
          ));
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget cancelButton = FlatButton(
    child: Text("Cancel"),
    onPressed: () {},
  );
  Widget continueButton = FlatButton(
    child: Text("Continue"),
    onPressed: () {},
  );

  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text("AlertDialog"),
            content: Text(
                "Would you like to continue learning how to use Flutter alerts?"),
            actions: [
              cancelButton,
              continueButton,
            ],
          ));
}
