# CupertinoContextMenu 


`CupertinoContextMenu` is a Flutter widget that provides an iOS-style context menu when a user long-presses on an item. It allows users to preview content and perform quick actions.


### Example
```dart
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CupertinoContextMenuExample(),
    );
  }
}

class CupertinoContextMenuExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CupertinoContextMenu Example')),
      body: Center(
        child: CupertinoContextMenu(
          actions: <Widget>[
            CupertinoContextMenuAction(
              child: const Text('Action 1'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            CupertinoContextMenuAction(
              child: const Text('Action 2'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text(
                'Long Press Me',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
```





# Image
<div>
  <img src="https://github.com/user-attachments/assets/ec35bf3a-3a8a-411f-b920-2373a634254d"height=500px>
  <img src="https://github.com/user-attachments/assets/65a07509-67e5-405e-9797-b8a76003dd58"height=500px>
</div>



https://github.com/user-attachments/assets/fce0fe65-e27f-4a3f-89ea-efc06d5255f5
