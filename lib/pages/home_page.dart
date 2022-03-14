import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:maps/pages/maps.dart';



class HomePage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: buildBody(context),
      appBar: buildAppBar(),
    );
  }



  buildAppBar() {
    return AppBar(
      title: Text(
        'MAPS',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }


  buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 60,
        left: 40,
        right: 40,
        bottom: 200,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xffffc2bb),
            Color(0xffd8bfd8),
          ],
        ),
      ),
  child: buildForm(context),
    );

  }
  
}

buildForm(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 300,
          alignment: Alignment.center,
          child: TextButton(
            child: Text(
              "Click here for the maps",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            onPressed: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapsPage()),
              ),
            },
          ),
        ),
      ],
    );
  }


