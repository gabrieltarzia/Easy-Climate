import 'package:flutter/material.dart';
import '../model/preview.model.dart';

class PreviewCard extends StatelessWidget {
  final Preview preview;
  const PreviewCard(this.preview, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.black12,
      elevation: 12,
      margin: const EdgeInsets.only(bottom: 12, top: 12, left: 48, right: 48),
      child: SizedBox(
        height: (MediaQuery.of(context).size.height) / 2,
        width: (MediaQuery.of(context).size.width) / 1.5,
        child: Padding(
          padding: const EdgeInsets.all(48),
          child: Column(
            children: [
              const ListTile(
                title: Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      'preview.city',
                      style: TextStyle(fontSize: 48),
                    )),
                subtitle: Align(
                    alignment: Alignment.topCenter,
                    child: Text('preview.dayWeek')),
              ),
              Expanded(
                  flex: 3,
                  child: Image.network(
                      preview.iconIndex!.length == 1
                          ? 'https://developer.accuweather.com/sites/default/files/0${preview.iconIndex}-s.png'
                          : 'https://developer.accuweather.com/sites/default/files/${preview.iconIndex}-s.png',
                      loadingBuilder: (context, child, loadingProgress) =>
                          loadingProgress != null
                              ? const CircularProgressIndicator()
                              : child,
                      scale: 0.2)),
              Text(
                '${preview.minTemp}C° | ${preview.maxTemp}C°',
                style: const TextStyle(fontSize: 34),
              ),
              const Divider(),
              Text(
                preview.description!,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


  //