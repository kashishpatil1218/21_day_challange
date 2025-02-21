import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContextMenu extends StatelessWidget {
  const ContextMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoContextMenu'),
      ),
      body: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: CupertinoContextMenu(
            actions: <Widget>[
              CupertinoContextMenuAction(
                child: Text('Action one'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoContextMenuAction(
                child: Text('Action two'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
            child: Image.asset(
              'asset/img/images.png',
              height: 500,
            ),
          ),
        ),
      ),
    );
  }
}
