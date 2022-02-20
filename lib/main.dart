import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyApp2()));

//Todo Any Simple app should start with the MaterialApp widget
class MyApp2 extends StatelessWidget {
  final List<int> codeC = [
    100,
    200,
    300,
    400,
    500,
    600,
    800,
    900,
  ];

  MyApp2({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Todo put const for things which not gonna be replaced in the app
        title: const Text("list view"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Todo with horizontal/Vertical listView we need to wrap it with a container or sizedBox to set the height of the list
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    // like loop
                    return Container(
                      color: Colors.red[codeC[index]],
                      //Todo set also the width
                      height: 100,
                      width: 100,
                    );
                  }),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width / 2,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    // like loop
                    return Container(
                      color: Colors.cyan[codeC[index]],
                      height: 100,
                      width: 100,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
//Todo Always remove unused comments and keep writing comments explaining the code
