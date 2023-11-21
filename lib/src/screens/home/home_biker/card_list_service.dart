//import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import '../../../services/firebase/firestore/firestore_service.dart';

FutureBuilder<List<dynamic>> cardListService() {
  return FutureBuilder(
      future: getPeople(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return Dismissible(
                onDismissed: (direction) async {
                  //await deletePeople(snapshot.data?[index]['uid']);
                  snapshot.data?.removeAt(index);
                },
                confirmDismiss: (direction) async {
                  bool result = false;
                  result = await showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                              '¿Estas seguro de querer eliminar a ${snapshot.data?[index]["name"]}?'),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  return Navigator.pop(context, false);
                                },
                                child: const Text(
                                  'Cancelar',
                                  style: TextStyle(color: Colors.red),
                                )),
                            TextButton(
                                onPressed: () {
                                  return Navigator.pop(context, true);
                                },
                                child: const Text('Si, estoy seguro'))
                          ],
                        );
                      });
                  return result;
                },
                background: Container(
                  color: Colors.red,
                  child: const Icon(Icons.delete),
                ),
                direction: DismissDirection.startToEnd,
                key: Key(snapshot.data?[index]['uid']),
                child: ListTile(
                  title: Text(
                    (snapshot.data?[index]['precio']).toString(),
                  ),
                  onTap: (() async {
                    await Navigator.pushNamed(context, "/edit", arguments: {
                      "nombre": snapshot.data?[index]['nombre'],
                      "uid": snapshot.data?[index]['uid']
                    });
                    //setState(() {});
                  }),
                ),
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      });
}
