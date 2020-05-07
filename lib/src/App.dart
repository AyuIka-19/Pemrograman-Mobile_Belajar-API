import 'package:flutter/material.dart';
import 'package:belajar_api/src/tampilan/home_screen.dart';
import 'package:belajar_api/src/tampilan/form_add_screen.dart';

GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        key: _scaffoldState,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue[900],
          title: Text(
            "Flutter CRUD API",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: HomeScreen(),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            _scaffoldState.currentContext,
            MaterialPageRoute(builder: (BuildContext context) {
              return FormAddScreen();
            }),
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        
        bottomNavigationBar: BottomAppBar(
            //color: Colors.transparent,
            child: Container(
              height: 60,
              color: Colors.blue[900],
              alignment: Alignment.center,
              child: Text(
                'Pemrograman Mobile',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            //elevation: 0,
          ),
      ),
    );
  }
}