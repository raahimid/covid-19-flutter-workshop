import 'package:flutter/material.dart';
import 'package:flutter_covid_workshop_stub/widgets/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmedTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: 250.0,
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Column(
                  children: <Widget>[
                    StatsBoxes(
                      icon: Icons.public,
                      data: '1,000,000',
                    ),
                    SizedBox(height: 20.0),
                    StatsBoxes(
                      icon: Icons.flag,
                      data: '1,000',
                    ),
                  ],
                ),
              ),
              Text(
                "*These numbers are updated in realtime.",
                style: GoogleFonts.roboto(
                  color: Color(0xFFACABBB),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
