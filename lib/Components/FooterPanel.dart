import 'package:flutter/material.dart';
import 'package:web_lectro/ReUsableComponent/ReUsableButton.dart';
import 'package:web_lectro/ReUsableComponent/ReUsableText.dart';
import 'package:web_lectro/PlatformService.dart';

// ignore: must_be_immutable
class FooterPanel extends StatelessWidget {
  late bool isMobile, isDesktop;
  @override
  Widget build(BuildContext context) {
    isMobile = PlatformService.isMobile(context) ? true : false;
    isDesktop = PlatformService.isDesktop(context) ? true : false;

    double _width = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.symmetric(
            horizontal: isMobile ? 0 : _width / 10,
            vertical: isMobile ? 0 : 20),
        padding: EdgeInsets.all(isMobile ? 5 : 10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: isMobile
                ? BorderRadius.only(
                    topLeft: Radius.circular(10), topRight: Radius.circular(10))
                : BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 5,
                  spreadRadius: 2)
            ]),
        child: isDesktop
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [SocialNetwork(), WebInfo()],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SocialNetwork(), WebInfo()]));
  }

  // ignore: non_constant_identifier_names
  Widget SocialNetwork() => Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        BoldBlackText('Let\'s keep in touch!'),
        NormalGreyText(
            'Find us on any of these platforms, we respond 1-2 business days.'),
        SizedBox(height: 10),
        Row(children: [
          if (!isDesktop) Spacer(flex: 1),
          FloatingIconsButtons('assets/icon/facebook.svg'),
          FloatingIconsButtons('assets/icon/linkedin.svg'),
          FloatingIconsButtons('assets/icon/skype.svg'),
          FloatingIconsButtons('assets/icon/twitter.svg'),
          FloatingIconsButtons('assets/icon/youtube.svg'),
          if (!isDesktop) Spacer(flex: 1)
        ])
      ]));

  // ignore: non_constant_identifier_names
  Widget FloatingIconsButtons(String path) => Container(
      margin: EdgeInsets.all(5),
      height: 40,
      child: FloatingActionButton(
          backgroundColor: Colors.white,
          child: ColorLogoButton(path),
          onPressed: () {}));

  // ignore: non_constant_identifier_names
  Widget WebInfo() => Container(
      margin: EdgeInsets.all(20),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        UsefulLink(),
        isMobile ? Spacer(flex: 1) : SizedBox(width: 50),
        OtherResources()
      ]));

  // ignore: non_constant_identifier_names
  Widget UsefulLink() =>
      Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        NormalGreyText('USEFUL LINKS'),
        TextButtons('About Us', Colors.grey[900]!),
        TextButtons('Blog', Colors.grey[900]!),
        TextButtons('Github', Colors.grey[900]!),
        TextButtons('Free Products', Colors.grey[900]!)
      ]);
  // ignore: non_constant_identifier_names
  Widget OtherResources() => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          NormalGreyText('OTHER RESOURCES'),
          TextButtons('MIT License', Colors.grey[900]!),
          TextButtons('Terms & Conditions', Colors.grey[900]!),
          TextButtons('Privacy Policy', Colors.grey[900]!),
          TextButtons('Contact Us', Colors.grey[900]!)
        ],
      );
}
