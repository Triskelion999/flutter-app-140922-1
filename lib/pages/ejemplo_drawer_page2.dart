import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'drawer_content/dc_page1.dart';
import 'drawer_content/dc_page2.dart';
import 'drawer_content/dc_page3.dart';
import 'drawer_pages/dw_page1.dart';
import 'drawer_pages/dw_page2.dart';
import 'drawer_pages/dw_page3.dart';

class EjemploDrawerPage2 extends StatefulWidget {
  @override
  State<EjemploDrawerPage2> createState() => _EjemploDrawerPage2State();
}

class _EjemploDrawerPage2State extends State<EjemploDrawerPage2> {
  final paginas = [DcPage1(), DcPage2(), DcPage3()];
  int paginaSe1 = 1;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title: Text('Ejemplo Drawer kkk',),
        ),
        body : paginas[paginaSe1 - 1],
        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue.shade100,
                  child: Text('Header')),
              ),
              ListTile(
                leading: Icon(MdiIcons.cube),
                title: Text('Página 1'),
                onTap: () { navegar(context,1); },
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(MdiIcons.cube),
                title: Text('Página 2'),
                onTap: () => navegar(context,2),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(MdiIcons.cube),
                title: Text('Página 3'),
                onTap: () => navegar(context,3),
              ),
              Divider(
                thickness: 2,
              ),
              ListTile(
                leading: Icon(MdiIcons.abacus),
                title: Text('Cerrar'),
                onTap: () => Navigator.pop(context),
              ),
              Divider(
                thickness: 2,
              ),
            ],
            ),
        )
    );
  }

  void navegar(BuildContext context, int numPagina) {
    List paginas = [DwPage1(), DwPage2(), DwPage3()];

    MaterialPageRoute route = MaterialPageRoute(
      builder: (context) => paginas[numPagina - 1],
    );

    Navigator.push(context, route);
  }
}
