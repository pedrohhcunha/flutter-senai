import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/app/components/menu_component.dart';

class NamePage extends StatefulWidget {
  const NamePage({Key? key}) : super(key: key);

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {

  String _name = '';
  final _inputController = TextEditingController();

  void _setName() {
    setState(() {
      _name = _inputController.text;
      _inputController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Bem vindo, " + _name),
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
                        labelText: 'Digite seu nome:'
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
                    onPressed: _setName,
                    child: const Text('Salvar')
                ),
              ]
          ),
        )
    );
  }
}
