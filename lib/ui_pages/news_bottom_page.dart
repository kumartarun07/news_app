import 'package:flutter/material.dart';
import 'package:news_app/ui_pages/explore_page.dart';
import 'package:news_app/ui_pages/home_page.dart';
import 'package:news_app/ui_pages/saved_page.dart';
import 'package:news_app/ui_pages/settings_page.dart';

class NewsBottomPage extends StatefulWidget
{
  const NewsBottomPage({super.key});

  @override
  State<NewsBottomPage> createState() => _NewsBottomPageState();
}

class _NewsBottomPageState extends State<NewsBottomPage>
{
  int selectedIndex=0;
  List<Widget>pages=[
    HomePage(),
    ExplorePage(),
    SavedPage(),
    SettingsPage()

  ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
     body: pages[selectedIndex],
      bottomNavigationBar: NavigationBar(destinations: 
      [
        NavigationDestination(icon: Icon(Icons.home_rounded), label: "Home"),
        NavigationDestination(icon: Icon(Icons.explore), label: "Explore"),
        NavigationDestination(icon: Icon(Icons.save), label: "Saved"),
        NavigationDestination(icon: Icon(Icons.settings), label: "Setting"),
      ],
          //  shadowColor: Colors.blue,
       // indicatorShape: OutlineInputBorder(),
        onDestinationSelected: (value){
        selectedIndex = value;
        setState(() {

        });
        },
      ),
    );
  }
}
