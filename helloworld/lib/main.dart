import 'package:flutter/material.dart';

import './app_screens/home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Exploring UI Widgets',
    home: Scaffold(
      appBar: AppBar(
        title: Text('Long List'),
      ),
      body: getListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.add),
        tooltip: 'Add more item',
      ),
    ),
  ));
}

void showSnackBar(BuildContext context, String item) {
  var snackBar = SnackBar(
    content: Text('You just tapped the item $item'),
    action: SnackBarAction(
      label: 'UNDO',
      onPressed: () {},
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
}

List<String> getStringElement() {
  var items = List<String>.generate(
    1000,
    (counter) => 'item $counter',
  );
  return items;
}

Widget getListView() {
  var listItem = getStringElement();
  var listView = ListView.builder(
    itemBuilder: (
      context,
      index,
    ) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItem[index]),
        onTap: () {
          showSnackBar(
            context,
            listItem[index],
          );
        },
      );
    },
  );
  return listView;
}

// Widget getListView() {
//   var listView = ListView(
//     children: <Widget>[
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('LandScape'),
//         subtitle: Text('Beautiful view !'),
//         trailing: Icon(Icons.wb_sunny),
//         onTap: () => debugPrint('Landscape taped'),
//       ),
//       ListTile(
//         leading: Icon(Icons.laptop_chromebook),
//         title: Text('Laptop'),
//         subtitle: Text('Window OS !'),
//       ),
//       ListTile(
//         leading: Icon(Icons.phone),
//         title: Text('LandScape'),
//         subtitle: Text('Android Phone !'),
//         trailing: Icon(Icons.phone_android),
//       ),
//     ],
//   );
//   return listView;
// }
