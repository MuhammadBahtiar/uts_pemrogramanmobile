import 'package:flutter/material.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
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
                    'Universitas Islam Nahdlatul Ulama Jepara',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Jl. Taman Siswa, Pekeng, Tahunan, Kec. Tahunan, Kabupaten Jepara, Jawa Tengah 59451',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
            color: Colors.orange[500],
          ),
          const Text('4,5'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'Universitas Islam Nahdlatul Ulama Jepara atau UNISNU Jepara '
        'merupakan salah satu Perguruan Tinggi Swasta (PTS) di Jawa Tengah. '
        'Cikal bakal pendirian Universitas Islam Nahdlatul Ulama berawal '
        'dari didirikannya Institut Islam Nahdlatul Ulama (INISNU) Jepara. '
        'UNISNU merupakan hasil peleburan dari tiga perguruan tinggi, yakni '
        'INISNU, STIENU, dan STTDNU. Hal tersebut didasarkan pada SK. '
        'Mendikbud 149/E/O/2013 tanggal 26 April 2013.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'UTS Pemrograman Mobile',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bahtiar - 19124000894'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'unisnujepara.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
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
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
