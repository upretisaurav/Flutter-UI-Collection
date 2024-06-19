import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PlayerScreen extends StatelessWidget {
  const PlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: Icon(
                Icons.category,
                size: 20,
              ),
            ),
          ),
          const SizedBox(
            width: 24,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            podcastPlayerCard(
              title: "Good Life Project",
              imageUrl: "assets/images/jpg/lake.jpg",
              podcastAuthor: "Elizabeth Gilbert",
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        width: 50,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Up Next",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: ListView(
                          children: [
                            upNextCard(
                              title:
                                  "Go where the knowledge and other blah blah",
                              imgUrl: "assets/images/jpg/album1.jpg",
                              podcastAuthor: "JOHN S., SHAWN",
                              time: "26 min",
                            ),
                            upNextCard(
                              title: "How to change anything with flutter",
                              imgUrl: "assets/images/jpg/album2.jpg",
                              podcastAuthor: "JONAH BERGER",
                              time: "33 min",
                            ),
                            upNextCard(
                              title: "On the path to freedom",
                              imgUrl: "assets/images/jpg/album3.jpg",
                              podcastAuthor: "KEISHA N. BLAIN",
                              time: "25 min",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget upNextCard({
    String? title,
    String? imgUrl,
    String? podcastAuthor,
    String? time,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        imgUrl ?? "",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 175,
                        child: Text(
                          title ?? "",
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            podcastAuthor ?? "",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            time ?? "",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    width: 1.0,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Center(
                    child: Icon(
                      Icons.play_arrow,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget podcastPlayerCard({
    String? title,
    String? podcastAuthor,
    String? imageUrl,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 35.0,
          horizontal: 55.0,
        ),
        child: Column(
          children: [
            const Text(
              "Now Playing",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Hero(
              tag: "podcastImage",
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  imageUrl ?? "",
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title ?? "",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              podcastAuthor ?? "",
              style: TextStyle(
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: ProgressBar(
                progressBarColor: Colors.black,
                thumbRadius: 6.0,
                thumbColor: Colors.black,
                baseBarColor: Colors.grey,
                bufferedBarColor: Colors.grey,
                progress: const Duration(minutes: 17),
                buffered: const Duration(milliseconds: 2000),
                total: const Duration(minutes: 50),
                timeLabelPadding: 10,
                timeLabelTextStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 13,
                ),
                onSeek: (duration) {
                  debugPrint('User selected a new time: $duration');
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
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
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
