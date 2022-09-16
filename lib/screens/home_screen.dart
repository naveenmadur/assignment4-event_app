import 'package:flutter/material.dart';
import '../widgets/home_screen_bottom_nav_bar_widget.dart';
import '../widgets/home_screen_app_bar.dart';
import '../widgets/featured_row.dart';
import '../widgets/event_tile.dart';
import '../widgets/grid_view_tile.dart';
import '../widgets/filter_widget.dart';
import '../models/filter_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 10,
        // backgroundColor: const Color.fromRGBO(252, 252, 252, 1),
        elevation: 0,
        //this is used to remove back button from the app bar
        automaticallyImplyLeading: false,
        flexibleSpace: const HomeScreenAppBar(),
      ),
      body: SingleChildScrollView(
        child: Container(
          // padding: const EdgeInsets.only(top: 8),
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey)),
              //Row for search bar
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const IconButton(
                    onPressed: null,
                    icon: Icon(
                      Icons.search,
                      size: 35,
                    )),
                SizedBox(
                    width: MediaQuery.of(context).size.width / 2,
                    child: const TextField(
                      decoration:
                          InputDecoration(label: Text('enter anything')),
                    )),
                const Icon(
                  Icons.toggle_on_outlined,
                  size: 35,
                )
              ],
            ),
          ),
              const FeaturedRow(
                featureText: 'Featured',
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2.4,
                child: ListView.builder(
                  itemBuilder: (context, index) => const EventTile(),
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const FeaturedRow(
                featureText: 'Popular Event \u{1F525}',
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 16),
                height: MediaQuery.of(context).size.height / 20,
                child: ListView.builder(
                  itemBuilder: (context, index) =>
                       FilterWidget(text: filterTextList[index].filterText, index: index,),
                  itemCount: filterTextList.length,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 1.56,
                child: GridView.count(
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  physics: const NeverScrollableScrollPhysics(),
                  childAspectRatio: 1 / 1.5,
                  crossAxisCount: 2,
                  children: const [
                    GridViewTile(),
                    GridViewTile(),
                    GridViewTile(),
                    GridViewTile(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const HomeScreenBottomNavBar(),
    );
  }
}
