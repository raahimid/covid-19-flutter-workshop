import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/config/palette.dart';
import 'package:flutter_covid_dashboard_ui/config/styles.dart';
import 'package:flutter_covid_dashboard_ui/data/data.dart';
import 'package:flutter_covid_dashboard_ui/widgets/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState() {
    _tabController = new TabController(vsync: this, length: 3);
    super.initState();
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    fetchData();
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: CustomAppBar(),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(screenHeight),
          _buildStatistics(screenHeight),
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
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(0.0),
            bottomRight: Radius.circular(0.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[],
            ),
            SizedBox(height: screenHeight * 0.02),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Feeling Sick?',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  'If someone is showing any symptoms, seek emergency medical care immediately.',
                  style: const TextStyle(
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
                      onPressed: () {
                        launch(('tel://800-232-4636'));
                      },
                      color: Colors.red[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.phone,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Call Now',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                    FlatButton.icon(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 20.0,
                      ),
                      onPressed: () {
                        const url =
                            "https://www.floridadisaster.org/covid19/testing-sites/";
                        launch(url);
                      },
                      color: Color(0xFF14B5D0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      icon: const Icon(
                        Icons.healing,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Get Tested',
                        style: Styles.buttonTextStyle,
                      ),
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  SliverToBoxAdapter _buildStatistics(double screenHeight) {
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
                        color: Color(0xFFEC6969)),
                    indicatorColor: Colors.transparent,
                    labelStyle: Styles.tabTextStyle,
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
                        DeathTab(),
                        RecoveredTab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
