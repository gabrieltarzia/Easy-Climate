import 'package:easy_climate/app/modules/widgets/previewTile.widget.dart';
import 'package:flutter/material.dart';

class PreviewList extends StatelessWidget {
  const PreviewList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Container(
        color: Colors.black12,
        child: ListView(
          padding: const EdgeInsets.all(12),
          shrinkWrap: true,
          children: const [
            PreviewTile(),
            PreviewTile(),
            PreviewTile(),
            PreviewTile(),
            PreviewTile(),
            PreviewTile(),
          ],
        ),
      ),
    );
  }
}
