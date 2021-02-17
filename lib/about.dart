import 'package:flutter/material.dart';

class About extends StatelessWidget {
  // final String name;
  // TextEditingController nameController = TextEditingController();
  // TextEditingController passwordController = TextEditingController();
  // bool _disableButton = false;

  // handleClick(name) {
  //   print('$name clicked');
  // }

  //class constructor
  // Login(this.name);

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
              child: Image.asset('images/eathealthy.jfif',
                  fit: BoxFit.fill,
                  height: 10.0,
                  // width: MediaQuery.of(context).size.width,
                  width: double.infinity)),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(
                'Our Goal is to provide you with beneficial health Tips and Tricks which can ultimately benefit your quality of health',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                )),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.accessibility),
              Icon(Icons.timer),
              Icon(Icons.phone_android),
              Icon(Icons.phone_iphone),
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Expanded(
                    child: Image.asset('images/stretching1.jpg',
                        fit: BoxFit.fill,
                        // width: MediaQuery.of(context).size.width,
                        width: double.infinity)),
                Expanded(
                    child: Image.asset('images/weights.jfif',
                        fit: BoxFit.fill,
                        // width: MediaQuery.of(context).size.width,
                        width: double.infinity)),
                Text('Lose Weight', style: TextStyle(fontSize: 25)),
                Text('Healthier living', style: TextStyle(fontSize: 25)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
