//import 'dart:ffi';

//import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore db = FirebaseFirestore.instance;

Future<List> getPeople() async {
  List service = [];
  CollectionReference collectionReferencePeople = db.collection('services');
  QuerySnapshot querySnapshot = await collectionReferencePeople.get();

  for (var doc in querySnapshot.docs) {
    final data = doc.data() as Map<String, dynamic>;
    final person = {
      "uid": doc.id,
      "descripcion": data['descripcion'],
      "direccion": data['direccion'],
      "fechServicio": data['fechServicio'],
      "nombre": data['nombre'],
      "numMotorista": data['numMotorista'],
      "precio": data['precio'],
      "url": data['url'],
    };
    service.add(person);
  }

  return service;
}

//Guardar name firestore
Future<void> addServicio(String name, String description, String direction,
    DateTime fechService, int numMotorista, String price, String url) async {
  await db.collection('services').add({
    "descripcion": description,
    "direccion": direction,
    "fechServicio": fechService,
    "nombre": name,
    "numMotorista": numMotorista,
    "precio": price,
    "url": url
  });

  /*
  {
    "people": [
      {
        "name": "Nestor"
      },
      {
        "name": "Adrian"
      },
      {
        "name": "Jimenez"
      }
    ]
  }
  */
}

//Actualizar datos de firebase
Future<void> updateServicio(String uid, String nuevoNombre) async {
  await db.collection('servicio').doc(uid).set({"nombre": nuevoNombre});
}

//Borrar datos de firebase
Future<void> deletePeople(String uid) async {
  await db.collection('servicio').doc(uid).delete();
}
