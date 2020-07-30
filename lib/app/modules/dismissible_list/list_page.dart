import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartlook/smartlook.dart';

class ListPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _ListPageState();
  }
}

class _ListPageState extends State<ListPage> {
  final _items = List<String>.generate(20, (i) => "Item ${i + 1}");

  @override
  void dispose() {
    Smartlook.trackNavigationEvent("list_page", SmartlookNavigationEventType.exit);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List',
          style: GoogleFonts.dancingScript(
            color: Colors.white,
            fontSize: 26,
            fontWeight: FontWeight.w600
          ),
        ),
        centerTitle: false,
        backgroundColor: Colors.red,
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final String item = _items[index];
          return Dismissible(
            key: Key(item),
            onDismissed: (DismissDirection dir) {
              setState(() => this._items.removeAt(index));
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text(dir == DismissDirection.startToEnd
                      ? '$item removed.'
                      : '$item liked.'),
                  action: SnackBarAction(
                    label: 'UNDO',
                    onPressed: () {
                      setState(() => this._items.insert(index, item));
                    },
                  ),
                ),
              );
            },
            background: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
              alignment: Alignment.centerLeft,
            ),
            secondaryBackground: Container(
              color: Colors.green,
              child: Icon(Icons.thumb_up),
              alignment: Alignment.centerRight,
            ),
            child: ListTile(
              title: Center(child: Text('${_items[index]}')),
            ),
          );
        },
      ),
    );
  }
}