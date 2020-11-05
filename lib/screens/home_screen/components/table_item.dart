import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TableItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String image;

  const TableItem(
      {@required this.title, @required this.subtitle, @required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Expanded(
            flex: 5,
            child: Image(
              height: 50.0,
              width: 50.0,
              image: AssetImage(image),
            ),
          ),
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                ),
                const SizedBox(height: 5.0),
                Text(
                  subtitle,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
