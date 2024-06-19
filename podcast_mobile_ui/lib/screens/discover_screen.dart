import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:podcast_mobile_ui/screens/player_screen.dart';
import 'package:podcast_mobile_ui/widgets/filter_dropdown.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "DISCOVER",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          customIconButton(Icons.notifications_outlined),
          const SizedBox(
            width: 15,
          ),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: SizedBox(
                  width: 60,
                  height: 60,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/jpg/male.jpg",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0,
                right: 0,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Row(
                          children: [
                            Icon(Icons.search),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search something...",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  customIconButton(CarbonIcons.settings_adjust)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Trending this week",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Stack(
                        children: [
                          Hero(
                            tag: "podcastImage",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "assets/images/jpg/lake.jpg",
                              ),
                            ),
                          ),
                          Positioned(
                            top: 20,
                            right: 20,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: 12.0,
                                  vertical: 8.0,
                                ),
                                child: Text(
                                  '50:00 min',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Positioned(
                            bottom: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Good Life Project",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "ELIZABETH GILBERT",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            right: 20,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const PlayerScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.play_arrow,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Trending podcasts",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  CategoryDropdown(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 330,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    podcastItem(
                      imageUrl: "assets/images/jpg/women.jpg",
                      podcastTitle: "Earn your Happy",
                      podcastCreator: "LOHI HARDER",
                      time: "1 hr 50 min",
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    podcastItem(
                      imageUrl: "assets/images/jpg/ocen.jpg",
                      podcastTitle: "The Serenity of Life",
                      podcastCreator: "James Watson",
                      time: "1 hr 20 min",
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customIconButton(IconData icon) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(
            icon,
          ),
        ),
      ),
    );
  }

  Widget podcastItem({
    String? imageUrl,
    String? podcastTitle,
    String? podcastCreator,
    String? time,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    imageUrl ?? "",
                    height: 200,
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 20,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Icon(
                          CarbonIcons.favorite,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 20,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Center(
                        child: Icon(
                          Icons.play_arrow,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              podcastTitle ?? "",
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  podcastCreator ?? "",
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Row(
                  children: [
                    const Icon(CarbonIcons.time),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      time ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
