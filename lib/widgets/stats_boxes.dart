import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_workshop_stub/config/palette.dart';
import 'package:google_fonts/google_fonts.dart';


class StatsBoxes extends StatelessWidget {
  final IconData icon;
  final String data;

  const StatsBoxes({
    @required this.icon,
    @required this.data,
  });

  @override
  Widget build(BuildContext context){
    return Container(
      height: 65.0,
      decoration: BoxDecoration(
        color: Palette.tabColor,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
              size: 36.0,
            ),
            Spacer(),
            Text(
              data,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 30.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(width: 50.0),
          ],
        ),
      ),
    );
  }
}