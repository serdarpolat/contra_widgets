import 'package:contra_widgets/Views/Chat/ChatNavbar.dart';
import 'package:contra_widgets/Views/ContactUs.dart';
import 'package:contra_widgets/src/SourcesBox.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile1 extends StatelessWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: w(context),
        height: h(context),
        color: white,
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProfileHeader(),
                  SizedBox(height: hh(context, 24)),
                  LatestImages(),
                  SizedBox(height: hh(context, 14)),
                  Padding(
                    padding: horizontal24(context),
                    child: Text(
                      "Tags",
                      style: displayBold21(context, black),
                    ),
                  ),
                  SizedBox(height: hh(context, 12)),
                  Container(
                    padding: horizontal24(context),
                    child: Wrap(
                      spacing: hh(context, 8),
                      runSpacing: hh(context, 8),
                      children: List.generate(
                        tags.length,
                        (index) => TagItem(item: tags[index]),
                      ),
                    ),
                  ),
                  SizedBox(height: hh(context, 114)),
                ],
              ),
            ),
            ChatNavbar(),
          ],
        ),
      ),
    );
  }
}

class TagItemModel {
  final String tag;
  final Color bg;

  TagItemModel(this.tag, this.bg);
}

List<TagItemModel> tags = [
  TagItemModel("Travel", white),
  TagItemModel("big Foodie", yellow50),
  TagItemModel("Photography", green50),
  TagItemModel("Bollywood Movie", red50),
  TagItemModel("Sharukh Khan", pink50),
];

class TagItem extends StatelessWidget {
  const TagItem({
    Key? key,
    required this.item,
  }) : super(key: key);
  final TagItemModel item;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: hh(context, 10),
        horizontal: hh(context, 12),
      ),
      child: Text(
        item.tag,
        style: displayExtrabold12(context, black),
      ),
      decoration: BoxDecoration(
        color: item.bg,
        borderRadius: BorderRadius.circular(hh(context, 48)),
        border: baseBorder(context),
      ),
    );
  }
}

class LatestImages extends StatelessWidget {
  const LatestImages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: horizontal24(context),
          child: Text(
            "Latest Images",
            style: displayBold21(context, black),
          ),
        ),
        Container(
          height: hh(context, 192),
          padding: EdgeInsets.only(top: hh(context, 16)),
          child: ListView.builder(
            itemCount: 3,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: ww(context, 24)),
            itemBuilder: (context, index) {
              var colors = [yellow, red, pink];
              return Container(
                width: hh(context, 140),
                height: hh(context, 160),
                margin: EdgeInsets.only(right: h16(context)),
                child: Center(
                  child: SvgPicture.asset(
                    "image".getIcon,
                    color: white,
                    width: ww(context, 40),
                  ),
                ),
                decoration: baseDecoration(
                  context,
                  bgColor: colors[index],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w(context),
      height: hh(context, 546),
      child: Column(
        children: [
          SizedBox(height: hh(context, 72)),
          ClipOval(
            child: Container(
              width: hh(context, 170),
              height: hh(context, 170),
              child: SvgPicture.asset("avatar-4".getSvgImg),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: baseBorder(context),
                color: yellow,
              ),
            ),
          ),
          SizedBox(height: hh(context, 21)),
          Text(
            "Katrisa Feona",
            style: hExtra36(context, white),
          ),
          SizedBox(height: hh(context, 7)),
          Text(
            "@katiness",
            style: displayBold17(context, white),
          ),
          SizedBox(height: hh(context, 24)),
          Padding(
            padding: horizontal24(context),
            child: Row(
              children: [
                Expanded(
                  child: LongShadowButton(
                    onTap: () {},
                    height: hh(context, 60),
                    bgColor: white,
                    borderColor: black,
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "message-circle".getIcon,
                          width: hh(context, 24),
                        ),
                        SizedBox(width: ww(context, 12)),
                        Text("Send message",
                            style: displayExtraBold21(context, black)),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: ww(context, 22)),
                CircleShadowButton(
                  onTap: () {},
                  color: white,
                  child: SvgPicture.asset("plus".getIcon),
                ),
              ],
            ),
          ),
          SizedBox(height: hh(context, 32)),
          Container(
            width: w(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "276",
                      style: hExtra27(context, white),
                    ),
                    SizedBox(height: hh(context, 8)),
                    Text(
                      "Images",
                      style: displayMedium15(context, white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "62K",
                      style: hExtra27(context, white),
                    ),
                    SizedBox(height: hh(context, 8)),
                    Text(
                      "Followers",
                      style: displayMedium15(context, white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "27",
                      style: hExtra27(context, white),
                    ),
                    SizedBox(height: hh(context, 8)),
                    Text(
                      "Following",
                      style: displayMedium15(context, white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: blue,
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(hh(context, 32)),
        ),
      ),
    );
  }
}
