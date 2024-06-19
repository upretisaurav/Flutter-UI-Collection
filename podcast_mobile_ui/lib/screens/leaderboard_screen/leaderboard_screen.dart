import 'package:flutter/material.dart';
import 'package:podcast_mobile_ui/screens/leaderboard_screen/all_tab_content.dart';
import 'package:podcast_mobile_ui/screens/leaderboard_screen/exclusive_tab_content.dart';
import 'package:podcast_mobile_ui/screens/leaderboard_screen/music_tab_content.dart';
import 'package:podcast_mobile_ui/screens/leaderboard_screen/news_politics_tab_content.dart';

class LeaderboardScreen extends StatelessWidget {
  const LeaderboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: const Text(
            "Popular Podcasts",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: const TabBar(
            isScrollable: false,
            tabs: [
              Tab(
                child: Center(
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Text(
                    "Exclusive",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Text(
                    "News & Politics",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
              Tab(
                child: Center(
                  child: Text(
                    "Music",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: TabBarView(
            children: [
              AllTabContent(),
              ExclusiveTabContent(),
              NewsPoliticsTabContent(),
              MusicTabContent(),
            ],
          ),
        ),
      ),
    );
  }
}
