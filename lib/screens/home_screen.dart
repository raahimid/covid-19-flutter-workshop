import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_workshop_stub/config/palette.dart';
import 'package:flutter_covid_workshop_stub/widgets/deaths_tab.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_covid_workshop_stub/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildStatistics(screenHeight),
          //statistics
        ],
      ),
    );
  }

  SliverToBoxAdapter _buildHeader(double screenHeight) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        decoration: BoxDecoration(
          color: Palette.primaryColor,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(height: screenHeight * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Feeling sick?',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  'If someone is showing any symptoms, seek emergency medical care immediately',
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                    fontSize: 17.0,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Palette.callNowColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Call Now',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {},
                      color: Palette.getTestedColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.healing,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Get Tested',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildStatistics(double screenHeight){
    return SliverToBoxAdapter(
      child: Container(
        height: 450.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: <Widget>[
            DefaultTabController(
              length: 3,
              initialIndex: 0,
              child: Column(
                children: <Widget>[
                  TabBar(
                    indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Palette.tabColor,
                    ),
                    labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 19.0,
                    ),
                    labelPadding: EdgeInsets.all(10.0),
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xFFACABBB),
                    tabs: <Widget>[
                      Text('Confirmed'),
                      Text('Deaths'),
                      Text('Recovered'),
                    ],
                    onTap: (index) {},
                  ),
                  Container(
                    height: 250.0,
                    child: TabBarView(
                      children: <Widget>[
                        ConfirmedTab(),
                        DeathsTab(),
                        RecoveredTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),

      )
    );

  }

}
