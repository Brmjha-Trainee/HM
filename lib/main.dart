import 'package:flutter/material.dart';

void main() => runApp(Myapp2());

class Myapp2 extends StatelessWidget {
  final List<int> codeC = [100, 200, 300, 400, 500, 600, 800, 900,];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view"),
      ),
      body: Column(
        children: [
          ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) { // like loop
                return Container(
                  color: Colors.red[codeC[index]],
                  height: 100,
                  // margin: EdgeInsets.only(bottom: 5),
                );
              }
          ),
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: 5,
              itemBuilder: (context, index) { // like loop
                return Container(
                  color: Colors.cyan[codeC[index]],
                  height: 100,
                  // margin: EdgeInsets.only(bottom: 5),
                );
              }
          ),

        ],
      ),
    );

  }


}



