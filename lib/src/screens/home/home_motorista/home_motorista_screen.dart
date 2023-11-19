import 'package:animate_do/animate_do.dart';
import 'package:shopgo/src/screens/home/app_bar_screen.dart';
import 'package:shopgo/src/screens/home/components/service_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:shopgo/src/screens/home/drawer_screen.dart';
import 'package:shopgo/src/services/services.dart';
//import 'package:shopgo/src/screens/home/home_motorista/card_list_service.dart';

class HomeMotoristaScreen extends StatefulWidget {
  const HomeMotoristaScreen({
    super.key,
  });

  @override
  State<HomeMotoristaScreen> createState() => _HomeMotoristaScreenState();
}

class _HomeMotoristaScreenState extends State<HomeMotoristaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const DrawerApp(),
        appBar: const PreferredSize(
            preferredSize: Size(60, 60), child: AppBarShopGo()),
        body: cardList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await Navigator.pushNamed(context, '/add');
            setState(() {});
          },
          child: const Icon(Icons.add),
        ));
  }

  FutureBuilder<List<dynamic>> cardList() {
    return FutureBuilder(
        future: getPeople(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
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
                  child: Column(children: <Widget>[
                    FadeInUp(
                        duration: const Duration(milliseconds: 1500),
                        child: makeItem(
                            image: '${snapshot.data?[index]['url']}',
                            tag: 'red',
                            context: context,
                            name: '${snapshot.data?[index]['nombre']}',
                            price: '${snapshot.data?[index]['price']}')),
                  ] //Text(
                      //(snapshot.data?[index]['precio']).toString(),
                      //),
                      //onTap: (() async {
                      //await Navigator.pushNamed(context, "/edit", arguments: {
                      //"nombre": snapshot.data?[index]['nombre'],
                      //"uid": snapshot.data?[index]['uid']
                      //});
                      //setState(() {});
                      //}),
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
}

Widget makeItem(
    {image, tag, context, required String name, required String price}) {
  return Hero(
    tag: tag,
    child: GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Shoes(
                      image: image,
                      tag: tag,
                    )));
      },
      child: Container(
        height: 250,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade400,
                  blurRadius: 10,
                  offset: const Offset(0, 10))
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeInUp(
                          duration: const Duration(milliseconds: 1000),
                          child: Text(
                            name,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )),
                      const SizedBox(
                        height: 10,
                      ),
                      FadeInUp(
                          duration: const Duration(milliseconds: 1100),
                          child: const Text(
                            "Nike",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          )),
                    ],
                  ),
                ),
                FadeInUp(
                    duration: const Duration(milliseconds: 1200),
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Center(
                        child: Icon(
                          Icons.favorite_border,
                          size: 20,
                        ),
                      ),
                    ))
              ],
            ),
            FadeInUp(
                duration: const Duration(milliseconds: 1200),
                child: Text(
                  price,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )),
          ],
        ),
      ),
    ),
  );
}
