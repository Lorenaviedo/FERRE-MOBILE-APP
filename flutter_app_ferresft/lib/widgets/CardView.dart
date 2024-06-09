import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://youtube.com/watch?v=qcjiSlgTw0Q');

void main() => runApp(const CardExampleApp());

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(title: const Text('Card Example')),
          body: const CardExample(),
        ));
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(width: 8),
            const Image(image: AssetImage('images/taladro-img1.png')),
            const ListTile(
              leading: Icon(Icons.music_note),
              title: Text('Taladrp'),
              subtitle: Text(
                  'lorem ipsum dolor sit amet, consectetur adipiscing elit in lorem ipsum dolor sit amet'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const SizedBox(width: 8),
                TextButton(onPressed: _launchUrl, child: const Text('LISTEN')),
                const SizedBox(width: 8)
              ],
            )
          ],
        ),
      ),
    );
  }


  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}

