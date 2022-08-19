import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app/components/menu_component.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {

  List<String> _list = [];
  final _inputController = TextEditingController();

  void _addItem() {
    _list.add(_inputController.text);

    setState(() {
      _list = _list;
      _inputController.clear();
    });
  }

  void _removeItem(index) {
    _list.removeAt(index);

    setState(() {
      _list = _list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Lista"),
        ),
        drawer: Menu(context),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: 260,
                  child: TextField(
                    textAlign: TextAlign.center,
                    controller: _inputController,
                    style: TextStyle(
                        fontSize: 16
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Digite alguma coisa:'
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                TextButton(
                    style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(
                            Colors.blue),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Colors.white)
                    ),
                    onPressed: _addItem,
                    child: const Text('Adicionar string')
                ),
                // Column(
                //   children: [
                //     for(var item in _list) Text(item)
                //   ],
                // ),
                SizedBox(
                  height: 500,
                  child: ListView.builder(
                    itemCount: _list.length,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () => _removeItem(index),
                        child: Container(
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(15),
                          alignment: Alignment.center,
                          child: Text(
                            '${index + 1} - ${_list[index]}',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          ),
                        )
                      );
                    },
                  ),
                ),
              ]
          ),
        )
    );
  }
}
