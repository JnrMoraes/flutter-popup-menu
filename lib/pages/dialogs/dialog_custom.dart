import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DialogCustom extends Dialog {
  DialogCustom(BuildContext context, {super.key})
      : super(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Titulo Dialog'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Fechar Dialog'),
                )
              ],
            ),
          ),
        );
}
class DialogCustomIos extends CupertinoDialogAction {
  DialogCustomIos(BuildContext context, {super.key})
      : super(
          child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text('Titulo Dialog'),
                ),
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text('Fechar Dialog'),
                )
              ],
            ),
          ),
        );
}
