import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool _showFirstChild = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        centerTitle: true,
        title: Text(
          'AnimatedCrossFade',
          style: TextStyle(fontSize: 26,color:Colors.black,fontWeight: FontWeight.w500),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: AnimatedCrossFade(
            firstChild: _buildFirstchild(),
            secondChild: _buildSecondChild(),
            crossFadeState: _showFirstChild
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(seconds: 1),
            reverseDuration: Duration(seconds: 1),
            firstCurve: Curves.easeIn,
            secondCurve: Curves.easeInOut,
            layoutBuilder: (Widget topChild, Key topChildKey,
                Widget bottomChild, Key bottomChildKey) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    key: bottomChildKey,
                    child: bottomChild,
                  ),
                  Positioned(
                    key: topChildKey,
                    child: topChild,
                  ),
                ],
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirstChild = !_showFirstChild;
          });
        },
        tooltip: 'Toogle',
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.swap_horiz),
      ),
    );
  }

  Widget _buildFirstchild() {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 15.0, offset: Offset(0, 5)),
        ],
        image: DecorationImage(
            image: AssetImage('asset/img/galaxy_imge.jpg'), fit: BoxFit.cover),
      ),
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        child: Text(
          "Galaxy View",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildSecondChild() {
    return Container(
      width: 400,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
              color: Colors.black26, blurRadius: 15.0, offset: Offset(0, 5)),
        ],
        image: DecorationImage(
            image: AssetImage('asset/img/developer boy.jpg'),
            fit: BoxFit.cover),
      ),
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.black54,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
        ),
        child: Text(
          "Intent Developer",
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
