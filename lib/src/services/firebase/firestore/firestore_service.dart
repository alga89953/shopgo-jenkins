//import 'dart:ffi';

//import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_auth/firebase_auth.dart';

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

Future<void> addCategoria(String name, String description) async {
  await db
      .collection('services')
      .doc('szVtg3W6iBuu7Vx0HxVy')
      .collection('categories')
      .add({
    "name": name,
    "description": description,
    "state": "inactivo",
  });
}

//Guardar name firestore
Future<void> addServicio(
  String name,
  String description,
  String direction,
  String price,
  //String url
) async {
  //DateTime fechService,
  //int numMotorista,
  String date = (DateTime.now()).toString();
  await db.collection('services').add({
    "descripcion": description,
    "direccion": direction,
    "fechServicio": date,
    "nombre": name,
    //"numMotorista": numMotorista,
    "precio": price,
    //"url": url
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
