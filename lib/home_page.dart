import 'package:flutter/material.dart';
import 'package:mendoza/tab/ajustes_tab.dart';
import 'package:mendoza/tab/albums_tab.dart';
import 'package:mendoza/tab/artista_tab.dart';
import 'package:mendoza/tab/perfil_tab.dart';
import 'package:mendoza/util/my_tab.dart';

import 'package:mendoza/tab/canciones_tab.dart';

void main() => runApp(HomePage());

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTaps = const [
    MyTab(
      iconPath: "lib/icon/mic.png",
    ),
    MyTab(
      iconPath: "lib/icon/disco.png",
    ),
    MyTab(
      iconPath: "lib/icon/album.png",
    ),
    MyTab(
      iconPath: "lib/icon/person.png",
    ),
    MyTab(
      iconPath: "lib/icon/settings.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTaps.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              icon: Icon(
                Icons.menu,
                size: 36,
                color: Color(0xff6b6a6a),
              ),
              onPressed: () {},
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.person,
                  size: 36,
                  color: Color(0xff6b6a6a),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 18.0),
              child: Row(
                children: const [
                  Text(
                    "Todo en",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    " SPOTIFY",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff236925)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            TabBar(tabs: myTaps),
            Expanded(
              child: TabBarView(
                children: [
                  ArtistaTap(),
                  CancionesTap(),
                  AlbumsTap(),
                  PerfilTap(),
                  AjustesTap(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
