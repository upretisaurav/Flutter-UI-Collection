import 'package:carbon_icons/carbon_icons.dart';
import 'package:flutter/material.dart';
import 'package:podcast_mobile_ui/widgets/podcast_detail_tile.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ExclusiveTabContent extends StatefulWidget {
  const ExclusiveTabContent({super.key});

  @override
  State<ExclusiveTabContent> createState() => _ExclusiveTabContentState();
}

class _ExclusiveTabContentState extends State<ExclusiveTabContent> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          podcastCarousel(),
          const SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Categories",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color(0xffe4f9fc),
                    border: Border.all(
                      color: const Color(0xffd1f0f5),
                    )),
                child: const Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
                  child: Center(
                    child: Row(
                      children: [
                        Text(
                          "View all",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          SizedBox(
            height: 170,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                categoryTile(
                  title: "Business",
                  totalPodcast: "190 Podcasts",
                  iconData: CarbonIcons.chart_pie,
                ),
                categoryTile(
                  title: "Music",
                  totalPodcast: "80 Podcasts",
                  iconData: CarbonIcons.headphones,
                ),
                categoryTile(
                  title: "Education",
                  totalPodcast: "153 Podcasts",
                  iconData: CarbonIcons.book,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          const Text(
            "Popular Podcasters",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                popularPodcaster(
                  name: "John Doe",
                  followers: 1245,
                  totalPodcasts: 245,
                  imageUrl: "assets/images/jpg/male.jpg",
                ),
                const SizedBox(
                  height: 20,
                ),
                popularPodcaster(
                  name: "Michellea John",
                  followers: 1126,
                  totalPodcasts: 135,
                  imageUrl: "assets/images/jpg/girl_portrait.jpg",
                ),
                const SizedBox(
                  height: 20,
                ),
                popularPodcaster(
                  name: "Michellea John",
                  followers: 1126,
                  totalPodcasts: 135,
                  imageUrl: "assets/images/jpg/girl_portrait.jpg",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget popularPodcaster({
    String? name,
    int? followers,
    int? totalPodcasts,
    String? imageUrl,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.transparent,
              child: SizedBox(
                width: 60,
                height: 60,
                child: ClipOval(
                  child: Image.asset(
                    imageUrl ?? "",
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name ?? "",
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "$followers followers",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.grey.shade600,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          "$totalPodcasts Podcasts",
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        const Icon(CarbonIcons.overflow_menu_horizontal),
      ],
    );
  }

  Widget categoryTile({
    String? title,
    String? totalPodcast,
    IconData? iconData,
  }) {
    return Container(
      width: 140,
      margin: const EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xffe4f9fc),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Icon(iconData),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title ?? "",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              totalPodcast ?? "",
              style: TextStyle(
                color: Colors.grey.shade600,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget podcastCarousel() {
    return Column(
      children: [
        SizedBox(
          height: 140,
          child: PageView(
            controller: _pageController,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: PodcastDetailTile(
                  title: "How to face big decision",
                  imageurl: "assets/images/jpg/girl_thinking.jpg",
                  author: "TOM HEART",
                  duration: "1 hr 20 min",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: PodcastDetailTile(
                  title: "Understanding Flutter",
                  imageurl: "assets/images/jpg/girl_thinking.jpg",
                  author: "JANE DOE",
                  duration: "45 min",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: PodcastDetailTile(
                  title: "Understanding Flutter",
                  imageurl: "assets/images/jpg/girl_thinking.jpg",
                  author: "Saurav Upreti",
                  duration: "45 min",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 16),
        SmoothPageIndicator(
          controller: _pageController,
          count: 3,
          effect: const ExpandingDotsEffect(
            dotHeight: 8.0,
            dotWidth: 8.0,
            activeDotColor: Colors.grey,
          ),
        ),
      ],
    );
  }
}
