import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(
          left: 10.0,
          top: 40.0,
        ),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Going to Mombasa',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Going to Nairobi',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    'Going to Mombasa',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    'Going to Nairobi',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      fontSize: 35.0,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
            StudentImageAsset(),
            StudentBookFlight(),
          ],
        ),
        // width: 100.0,
        // height: 200.0,
        margin: EdgeInsets.all(10),
      ),
    );
  }
}

class StudentImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/student.jpg');
    Image image = Image(
      image: assetImage,
    );
    return Container(
      child: image,
    );
  }
}

class StudentBookFlight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
        color: Colors.deepPurple,
        elevation: 6.0,
        child: Text('Book Flight'),
        onPressed: () => bookFlight(context),
      ),
    );
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text('Flight booked succefully'),
      content: Text('Have a better flight'),
    );

    showDialog(
      context: context,
      builder: (BuildContext context) => alertDialog,
    );
  }
}
