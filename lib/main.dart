import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    Widget titleSection() {
      return Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            Expanded(
              /*1*/
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /*2*/
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: const Text(
                      'Oeschinen Lake Campground',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'Kandersteg, Switzerland',
                    style: TextStyle(
                      color: Colors.grey[500],
                    ),
                  ),
                ],
              ),
            ),
            /*3*/
            const Icon(
              Icons.star,
              color: Color.fromARGB(255, 239, 59, 119),
            ),
            const Text('41'),
          ],
        ),
      );
    }

    Widget buttonSection() {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE'),
        ],
      );
    }
    Widget textSection(){
      return Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'salmos91 El que habita al abrigo del altisimo,morara bajo la sombra del omnipotente '
        '2.Dire yo a Jehova,esperanza mia y castillo mio mi Dios, en quien confiare '
        '3.El me librara del lazo del cazador y de la peste destructora '
        '4.Con sus plumas me cubrira y debaja de sus alas estare segura,escudo y proteccion es su verdad '
        '5.No temere al terror nocturno ,ni a la saeta que vuele de dia ni a la pestilencia que ande en la oscuridad,ni a mortandad que en medio del dia destruya '
        '6.Caeran a mi lado mil y diez mil, a mi diestra mas a mi no llegaran '
        '7.Ciertamente con mis ojos mirare y vere la recompensa de los impios',
        softWrap: true,
      ),
    );
  }  
    


    return MaterialApp(
      title: 'Amar a Dios sobre todas las cosas ',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Amar a Dios sobre todas las cosas '),
        ),
        body: ListView(
          children: [
            Image.asset(
              'web/images/img.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
              titleSection(),
              buttonSection(),
              textSection(),
          ],
        ),
      ),
    );
    
  }
}

Column _buildButtonColumn(Color color, IconData icon, String label) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(icon, color: color),
      Container(
        margin: const EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    ],
  );
}
