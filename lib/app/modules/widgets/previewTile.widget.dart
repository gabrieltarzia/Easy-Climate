import 'package:flutter/material.dart';

class PreviewTile extends StatelessWidget {
  const PreviewTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(2.0),
        child: ListTile(
          tileColor: Colors.black12,
          leading: Image.network(
              'https://freepngimg.com/thumb/weather/23793-9-weather-photos.png',
              loadingBuilder: (context, child, loadingProgress) =>
                  loadingProgress != null
                      ? const CircularProgressIndicator()
                      : child),
          title: const Text('SEGUNDA FEIRA'),
          subtitle: const Text('Previsão de chuva'),
          trailing: const Text('12° | 20°',
              style: TextStyle(fontSize: 18, color: Colors.black)),
        ),
      );
}
