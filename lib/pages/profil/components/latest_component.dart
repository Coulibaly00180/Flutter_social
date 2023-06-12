import 'package:flutter/material.dart';
import 'package:social/theme/styles.dart';
import 'package:social/widgets/profil/photo_card_widget.dart';
import 'package:social/models/latest_photos_model.dart';

class LatestComponent extends StatelessWidget {
  const LatestComponent({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double screendWidth = MediaQuery.of(context).size.width;
    double cardSize = (screendWidth - 60) / 3;
    return Container(
      height: 150,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest',
            style: profilSubTitleStyle,
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: latestPhotos.map((post) {
              return PhotoCardWidget(
                cardSize: cardSize,
                photoUrl: post['photoPost'],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
