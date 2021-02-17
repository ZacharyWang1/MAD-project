import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Center(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Expanded(
          //     child: Image.asset("images/stretching2.jpg",
          //         fit: BoxFit.fill,
          //         // width: MediaQuery.of(context).size.width,
          //         width: double.infinity)),
          Text(
            'Target Weight \n 40KG',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(60),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  height: 5,
                  width: 5,
                  // padding: const EdgeInsets.all(1),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('BMI \n 18.0', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  height: 5,
                  width: 5,
                  color: Colors.indigo[100],
                  child: Center(
                    child:
                        Text('Body Fat \n 12%', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child:
                        Text('Weight \n 58KG', style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('Metalbolic Rate \n 1,458KJ',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('Muscle Mass \n 50.6KG',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
                Container(
                  height: 5,
                  width: 5,
                  padding: const EdgeInsets.all(3),
                  color: Colors.indigo[100],
                  child: Center(
                    child: Text('Hrs Exercised \n 3Hrs',
                        style: TextStyle(fontSize: 15)),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
