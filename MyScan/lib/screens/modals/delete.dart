import 'package:flutter/cupertino.dart';

void deleteDialog(BuildContext context, int index, VoidCallback onDelete) {
  showCupertinoModalPopup<void>(
    context: context,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text('Are you sure want to delete this file?'),
      actions: <CupertinoDialogAction>[
        CupertinoDialogAction(
          isDefaultAction: true,
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Cancel'),
        ),
        CupertinoDialogAction(
          isDestructiveAction: true,
          onPressed: () {
            Navigator.pop(context);
            onDelete.call();
          },
          child: const Text('Delete'),
        ),
      ],
    ),
  );
}
