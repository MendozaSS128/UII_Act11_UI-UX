import 'package:flutter/material.dart';

class ArtistaTile extends StatelessWidget {
  final String artistaNombre;
  final String artistaAlbums;
  final artistaColor;
  final String imageName;

  final double borderRadius = 12;

  const ArtistaTile(
      {super.key,
      required this.artistaAlbums,
      required this.artistaColor,
      required this.artistaNombre,
      required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
            color: artistaColor[50],
            borderRadius: BorderRadius.circular(borderRadius)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: artistaColor[100],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(borderRadius),
                          topRight: Radius.circular(borderRadius),
                        )),
                    padding: EdgeInsets.all(12),
                    child: Text(
                      artistaAlbums,
                      style: TextStyle(
                          color: artistaColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10.0),
              child: Image.asset(imageName),
            ),
            Text(
              artistaNombre,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 4),
            Text(
              "Artista verificado",
              style: TextStyle(color: Colors.grey[700]),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite, color: Colors.red[500]),
                  Icon(Icons.add, color: Colors.grey[500]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
