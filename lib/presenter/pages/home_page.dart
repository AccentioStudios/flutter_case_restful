import 'package:flutter/material.dart';
import 'package:restful/core/exceptions/exeption.dart';
import 'package:restful/presenter/controller/dog_controller.dart';
class HomePage extends StatefulWidget {
  final DogController controller;
  const HomePage({super.key, required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void showDialogError() {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Erro no Servidor'),
            actions: <Widget>[
              ElevatedButton(
                child: const Text("Ok"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dogs!'),
      ),
      body: AnimatedBuilder(
        animation: widget.controller.res,
        builder: (context, child) {
          String dogUrl = widget.controller.res.value;
          return Column(
            children: [
              Expanded(
                child: Center(
                  child: dogUrl.isEmpty? const Center( child: Text("Load a new dog!")): Image.network(dogUrl),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    widget.controller.loadDog(aletrErro: showDialogError);
                  },
                  child: const Text('Load New Dog'),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
