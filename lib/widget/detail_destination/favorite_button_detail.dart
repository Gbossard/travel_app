///
/// widget/detail_destination/favorite_button_detail.dart
///
import 'package:flutter/material.dart';
import 'package:travel_app/theme.dart';

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({ Key? key }) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
   bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: greyLight,
        ),
        child:  Icon(isFavorite == true ? Icons.favorite : Icons.favorite_border, color: pacificBlue),           
      ),
      onTap: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}