import 'dart:async';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
//import 'package:flutter_animate/effects/move_effect.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hovering/hovering.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';
import '/video_player_screen.dart';
import 'package:seo/seo.dart';
import 'package:go_router/go_router.dart';


bool _enabled = true;

void main() => runApp(MyApp());

/////
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          home: MyStatefulWidget3(),
        );
      },
    );
  }
}
//////

//////
class MyStatefulWidget3 extends StatefulWidget {
  const MyStatefulWidget3({super.key});

  @override
  State<MyStatefulWidget3> createState() => _MyStatefulWidget3State();
}

late AnimationController _controller;
late Animation<double> _opacityAnimation;

TextEditingController? contrasenaOlvidadaTextFieldController;

class _MyStatefulWidget3State extends State<MyStatefulWidget3> {
  bool _visible = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        _visible = false;
      });
    });
  }

/////
  final controller = PageController();

  get scaffoldKey => null;

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context);
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    bool isDesktop(BuildContext context) =>
        MediaQuery.of(context).size.width >= 1000;

    bool isMobile(BuildContext context) =>
        MediaQuery.of(context).size.width < 1000;
    double _boxTop = 0;
    bool selected = false;

    return SeoController(
      enabled: true,
      tree: WidgetTree(context: context),
      child:Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white, //Color(0xff772CE8),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(children: [
                ////////////////////////////////////////////////////////////
                Seo.head(
                  tags: [
                    MetaTag(name: 'You in Roll advertising', content: 'You in Roll advertising'),
                    LinkTag(rel: 'The main thing for YouinRoll is the community. And while some people worry about the number of views, its important to remember that streaming is not a competition. You will find it easier to make friends and build relationships with streamers and community members who respect you. And you will feel part of a great team.', href: 'https://www.youinroll.com/advertising'),
                  ],
                  child: Row(),
                ),

///////////////////////////////////////////////////////////////////////////

                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: [
                    Column(
                      children: [
                        Seo.image(
                            src: 'https://www.youinroll.com/advertising',
                            alt: 'image',
                            child:Container(
                                width: _mediaQuery.size.width * 0.12,
                                height: _mediaQuery.size.width * 0.10,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                            "assets/images/photo_2022-12-01_23-29-18.jpg")))))
                            .animate()
                            .move(
                          curve: Curves.easeInOut,
                          delay: 0.ms,
                          duration: 500.ms,
                          begin: Offset(0, 40),
                          end: Offset(0, 0),
                        ),
                      ],
                    ),

                    Flexible(
                      child: Container(
                        alignment: Alignment.center,
                        child: Wrap(
                          children: <Widget>[
                            TextButton(
                              onPressed: () => context.pushNamed('Home'),
                              // style: menuButtonStyle,
                              child: Seo.text(
                                text: 'HOME',
                                child:AutoSizeText(
                                  'HOME',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),

                                  //maxLines: 2,
                                ),),
                            ),
                            TextButton(
                              onPressed: () =>context.pushNamed('Watch'),
                              //style: menuButtonStyle,
                              child: Seo.text(
                                text: 'WATCH',
                                child:AutoSizeText(
                                  'WATCH',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),

                                  //maxLines: 2,
                                ),),
                            ),
                            TextButton(
                              onPressed: () =>context.pushNamed('Company'),
                              //style: menuButtonStyle,
                              child: Seo.text(
                                text: 'COMPANY',
                                child:AutoSizeText(
                                  'COMPANY',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),

                                  //maxLines: 2,
                                ),),
                            ),
                            TextButton(
                              onPressed: () => context.pushNamed('Advertising'),
                              // onPressed: () =>
                              //    Navigator.pushNamed(context, Routes.style),
                              // style: menuButtonStyle,
                              child: Seo.text(
                                text: 'ADVERTISING',
                                child:AutoSizeText(
                                  'ADVERTISING',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),

                                  //maxLines: 2,
                                ),),
                            ),
                            TextButton(
                              onPressed: () => context.pushNamed('Contactus'),
                              // onPressed: () =>
                              //    Navigator.pushNamed(context, Routes.style),
                              // style: menuButtonStyle,
                              child: Seo.text(
                                text: 'CONTACT US',
                                child:AutoSizeText(
                                  'CONTACT US',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),

                                  //maxLines: 2,
                                ),),
                            ),
                            TextButton(
                              onPressed: () =>
                                  context.pushNamed('About'),
                              // onPressed: () =>
                              //    Navigator.pushNamed(context, Routes.style),
                              // style: menuButtonStyle,
                              child: Seo.text(
                                text: 'ABOUT',
                                child:AutoSizeText(
                                  'ABOUT',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),),
                            ),
                            TextButton(
                              onPressed: () =>
                                  context.pushNamed('Audience'),
                              // onPressed: () =>
                              //    Navigator.pushNamed(context, Routes.style),
                              // style: menuButtonStyle,
                              child: Seo.text(
                                text: 'AUDIENCE',
                                child:AutoSizeText(
                                  'AUDIENCE',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),),
                            ),
                            TextButton(
                              onPressed: () =>
                                  context.pushNamed('Resources'),
                              // onPressed: () =>
                              //    Navigator.pushNamed(context, Routes.style),
                              // style: menuButtonStyle,
                              child: Seo.text(
                                text: 'Resources',
                                child: AutoSizeText(
                                  'RESOURCES',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),),
                            ),
                          ],
                        ),
                      ),
                    ),
//////////////////////////////////
                    Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(10.0),
                          color: Colors.white,
                          //
                          width: _mediaQuery.size.width * 0.1,
                          height: _mediaQuery.size.width * 0.05,
                          child: TextButton(
                            onPressed: () {},
                            //style:
                            style: ButtonStyle(
                              foregroundColor:
                              MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                    if (states.contains(MaterialState.hovered))
                                      return Colors.green;

                                    return Colors.white;
                                  }),
                            ),
                            child: Seo.text(
                              text: 'Streaming.tv',

                              child:AutoSizeText(
                                'Streaming.tv ',
                                textAlign: TextAlign.left,
                                // color: Colors.white,

                                style: TextStyle(
                                  fontSize: 18,
                                  //color: Colors.black.withOpacity(1),
                                  color: Colors.black,
                                ),
                                // maxLines: 6,
                              ),),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: _mediaQuery.size.width,
                      height: _mediaQuery.size.width * 0.6, //1000
                      color: Colors.white,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    _mediaQuery.size.width * 0.13, 0, 0, 0),
                                //_mediaQuery.size.width * 0.13

                                child: Seo.text(
                                  text: 'Where brands',
                                  child:Text(
                                    'Where brands',
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: _mediaQuery.size.width * 0.10,
                                    ),
                                  ),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    _mediaQuery.size.width * 0.13, 0, 0, 0),
                                //_mediaQuery.size.width * 0.13

                                child: Seo.text(
                                  text: 'and communities',
                                  child:Text(
                                    'and communities',
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: _mediaQuery.size.width * 0.10,
                                    ),
                                  ),),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    _mediaQuery.size.width * 0.13, 0, 0, 0),
                                //_mediaQuery.size.width * 0.13

                                child: Seo.text(
                                  text: 'intersect',
                                  child:Text(
                                    'intersect',
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: _mediaQuery.size.width * 0.10,
                                    ),
                                  ),),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //Color(0xff772CE8),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stack(children: [
                      Positioned(
                        right: 0, //100
                        top: 0, //350
                        child: Container(
                          width: _mediaQuery.size.width * 0.5,
                          height: _mediaQuery.size.width * 0.05,
                          color: Colors.white,
                        ),
                      ),
                      Container(
                        color: Colors.black,
                        height: _mediaQuery.size.width * 2.1, //*1.1
                        width: _mediaQuery.size.width,
                      ),
                      Positioned(
                        //100
                        bottom: 0, //350
                        child: Container(
                          width: _mediaQuery.size.width,
                          height: _mediaQuery.size.width * 0.92,
                          color: Colors.white,
                        ),
                      ),

                      Positioned(
                        right: 0, //100
                        top: 0, //350
                        child: Container(
                          width: _mediaQuery.size.width * 0.5,
                          height: _mediaQuery.size.width * 0.05,
                          color: Colors.white,
                        ),
                      ),


                      Positioned(
                        right: 0, //100
                        top: _mediaQuery.size.width * 0.08, //350
                        child: _visible
                            ? AnimatedContainer(
                          width: _mediaQuery.size.width * 0.52,
                          height: _mediaQuery.size.width * 0.32,
                          duration: Duration(seconds: 10),
                          child: Shimmer.fromColors(
                            baseColor: Colors.grey.shade300,
                            //baseColor: Colors.grey.shade300,
                            highlightColor: Colors.grey.shade100,
                            period: Duration(milliseconds: 500),
                            enabled: _enabled,
                            child: Container(
                              width: _mediaQuery.size.width * 0.52,
                              height: _mediaQuery.size.width * 0.32,
                              color: Colors.yellow,
                            ),
                          ),
                        )
                            : VideoPlayer(
                          path:
                          "https://stream.youinroll.com:8443/hls/9964620c4379b74e42a2be06610aeef8.m3u8",

                          videoType: VideoType.asset,
                          autoPlay: false,
                          looping: true,
                          showControls: true,
                          allowFullScreen: true,
                          allowPlaybackSpeedMenu: false,
                          width: _mediaQuery.size.width * 0.57,
                          height: _mediaQuery.size.width * 0.33,
                        ),
                      ),

                      Positioned(
                        left: _mediaQuery.size.width * 0.1, //100
                        top: _mediaQuery.size.width * 0.1, //350
                        child: Container(
                          width: _mediaQuery.size.width * 0.24,
                          height: _mediaQuery.size.width * 0.15,
                          child: Seo.text(
                            text: 'Twitch is the live\nstreaming service and\nglobal community for\ncontent spanning\ngaming, entertainment,\nmusic, sports, and more.',
                            child:Text(
                              'Twitch is the live\nstreaming service and\nglobal community for\ncontent spanning\ngaming, entertainment,\nmusic, sports, and more.',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: _mediaQuery.size.width * 0.02,
                              ),
                            ),),
                        ),
                      ),
                      Positioned(
                        left: _mediaQuery.size.width * 0.2, //100
                        top: _mediaQuery.size.width * 0.4, //350

                        child:Container(
                          width: _mediaQuery.size.width,
                          height: _mediaQuery.size.width * 0.25,
                          child: Seo.text(
                            text: 'The ultimate\ninfluencer marketing\nbased service',
                            child:Text(
                              'The ultimate\ninfluencer marketing\nbased service',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: _mediaQuery.size.width * 0.065,
                              ),
                            ),),
                        ),
                      ),

                      Positioned(
                        left: _mediaQuery.size.width * 0.1, //100
                        top: _mediaQuery.size.width * 1.3, //350
                        child: Container(
                          width: _mediaQuery.size.width,
                          height: _mediaQuery.size.width * 0.35,
                          child: Seo.text(
                            text: 'What people are\nsaying about\nTwitch',
                            child:Text(
                              'What people are\nsaying about\nTwitch',
                              textAlign: TextAlign.left,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff772CE8),
                                fontSize: _mediaQuery.size.width * 0.095,
                              ),
                            ),),
                        ),
                      ),

                      Positioned(
                        left: _mediaQuery.size.width * 0.6, //100
                        top: _mediaQuery.size.width * 0.64, //350
                        child: Container(
                          width: _mediaQuery.size.width * 0.4,
                          height: _mediaQuery.size.width * 0.56, //0.4
                          child: Column(
                            children: [
                              Seo.text(
                                text: '84% believe showing\nsupport for streamers\nis an important part of\nthe Twitch experience\n\n76% appreciate\nbrands that help their\nfavorite streamers\nachieve success',
                                child:Text(
                                  '84% believe showing\nsupport for streamers\nis an important part of\nthe Twitch experience\n\n76% appreciate\nbrands that help their\nfavorite streamers\nachieve success',
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: _mediaQuery.size.width * 0.027,
                                  ),
                                ),),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        _mediaQuery.size.width * 0.057, 30, 0, 0),
                                    child: HoverButton(
                                      onpressed: () {},
                                      hoverTextColor: Colors.white,
                                      textColor: Color(0xff772CE8),
                                      height: 50,
                                      color: Colors.black,
                                      hoverColor: Colors.black,
                                      elevation: 0,
                                      hoverElevation: 0,
                                      child: Seo.text(
                                        text: 'Get in touch ↗',
                                        child:Text(
                                          'Get in touch ↗',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: _mediaQuery.size.width * 0.03,
                                          ),
                                        ),),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      /////
                      Positioned(
                        left: _mediaQuery.size.width * 0.1, //100
                        top: _mediaQuery.size.width * 0.75, //350

                        child:Seo.image(
                          src: 'https://www.youinroll.com/advertising',
                          alt: 'yoinroll photo',
                          child:Container(
                            width: _mediaQuery.size.width * 0.4,
                            height: _mediaQuery.size.width * 0.5,
                            decoration: BoxDecoration(

                              //borderRadius: BorderRadius.circular(30),
                                shape: BoxShape.rectangle,
                                image: new DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        "assets/images/photo_2022-12-02_00-23-40.jpg"))),
                          ),
                        ),

                      ),
                      /////
                      Positioned(
                          left: _mediaQuery.size.width * 0.05, //100
                          bottom: _mediaQuery.size.width * 0.05, //0.01
                          child: Row(children: [
                            Container(
                              width: _mediaQuery.size.width * 0.3,
                              height: _mediaQuery.size.width * 0.3,
                              child: Column(
                                children: [
                                  Seo.text(
                                    text: '"Twitch is now pulling\nin mainstream\nviewers with its vision\nfor the future of live TV."',
                                    child:Text(
                                      '"Twitch is now pulling\nin mainstream\nviewers with its vision\nfor the future of live TV."',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: _mediaQuery.size.width * 0.026,
                                      ),
                                    ),),
                                  Seo.text(
                                    text: 'Fast Company',
                                    child:Text(
                                      'Fast Company',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple,
                                        fontSize: _mediaQuery.size.width * 0.026,
                                      ),
                                    ),),
                                ],
                              ),
                            ),
                            Container(
                              width: _mediaQuery.size.width * 0.3,
                              height: _mediaQuery.size.width * 0.3,
                              child: Column(
                                children: [
                                  Seo.text(
                                    text: '"Twitch is changing\nthe TV viewing\nexperience"',
                                    child:Text(
                                      '"Twitch is changing\nthe TV viewing\nexperience"',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: _mediaQuery.size.width * 0.026,
                                      ),
                                    ),),
                                  Seo.text(
                                    text: 'The Drum',
                                    child:Text(
                                      'The Drum',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.purple,
                                        fontSize: _mediaQuery.size.width * 0.026,
                                      ),
                                    ),),
                                ],
                              ),
                            ),
                            Container(
                              width: _mediaQuery.size.width * 0.3,
                              height: _mediaQuery.size.width * 0.3,
                              child: Container(
                                child: Column(
                                  // mainAxisSize: MainAxisSize.max,
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  // crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Seo.text(
                                      text: '"...the future of\nTwitch will more or\nless be the future of\nstreaming."',
                                      child:Text(
                                        '"...the future of\nTwitch will more or\nless be the future of\nstreaming."',
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontSize: _mediaQuery.size.width * 0.026,
                                        ),
                                      ),),
                                    Seo.text(
                                      text: 'Quartz',
                                      child:Text(
                                        'Quartz',
                                        textAlign: TextAlign.left,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.purple,
                                          fontSize: _mediaQuery.size.width * 0.026,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ])),

/////////////
                      Positioned(
                        //<-- SEE HERE
                        left: 0,
                        bottom: 0,
                        child: Container(
                          width: _mediaQuery.size.width,
                          height: _mediaQuery.size.width * 0.5,
                          // color: Color(0xff772CE8), //orange
                          child: Row(
                            children: [
                              Row(children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      _mediaQuery.size.width * 0.13,
                                      _mediaQuery.size.width * 0.4,
                                      0,
                                      0),
                                  child: Seo.link(
                                    href: 'https://youinroll.com/read/terms-of-service/300/',
                                    anchor: 'Terms of Service',
                                    child:HoverButton(
                                      onpressed: () async {
                                        await launchURL(
                                            'https://youinroll.com/read/terms-of-service/300/');
                                      },
                                      hoverTextColor: Color(0xff772CE8),
                                      textColor: Colors.black,
                                      height: 50,
                                      minWidth: _mediaQuery.size.width * 0.12,
                                      color: Colors.white,
                                      hoverColor: Colors.white,
                                      elevation: 0,
                                      hoverElevation: 0,
                                      child: Seo.text(
                                        text: 'Terms of Service',
                                        child:Text(
                                          'Terms of Service',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: _mediaQuery.size.width * 0.011,
                                          ),
                                        ),),
                                    ),),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, _mediaQuery.size.width * 0.4, 0, 0),
                                  child: Seo.link(
                                    href: 'https://youinroll.com/read/privacy-notice/278/',
                                    anchor: 'Privacy Policy',
                                    child:HoverButton(
                                      onpressed: () async {
                                        await launchURL(
                                            'https://youinroll.com/read/privacy-notice/278/');
                                      },
                                      hoverTextColor: Color(0xff772CE8),
                                      textColor: Colors.black,
                                      height: 150,
                                      //50
                                      minWidth: _mediaQuery.size.width * 0.1,
                                      color: Colors.white,
                                      hoverColor: Colors.white,
                                      elevation: 0,
                                      hoverElevation: 0,
                                      child: Seo.text(
                                        text: 'Privacy Policy',
                                        child:Text(
                                          'Privacy Policy',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: _mediaQuery.size.width * 0.011,
                                          ),
                                        ),),
                                    ),),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, _mediaQuery.size.width * 0.4, 0, 0),
                                  child: Seo.link(
                                    href: 'https://youinroll.com/read/ad-choices/293/',
                                    anchor: 'Ad Choices',
                                    child: HoverButton(
                                      onpressed: () async {
                                        await launchURL(
                                            'https://youinroll.com/read/ad-choices/293/');
                                      },
                                      hoverTextColor: Color(0xff772CE8),
                                      textColor: Colors.black,
                                      height: 50,
                                      minWidth: _mediaQuery.size.width * 0.1,
                                      color: Colors.white,
                                      hoverColor: Colors.white,
                                      elevation: 0,
                                      hoverElevation: 0,
                                      child: Seo.text(
                                        text: 'Ad Choices',
                                        child:Text(
                                          'Ad Choices',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: _mediaQuery.size.width * 0.011,
                                          ),
                                        ),),
                                    ),),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, _mediaQuery.size.width * 0.4, 0, 0),
                                  child: Seo.link(
                                    href: 'https://youinroll.com/read/cookie-notice/292/',
                                    anchor: 'Cookie Policy',
                                    child:HoverButton(
                                      onpressed: () async {
                                        await launchURL(
                                            'https://youinroll.com/read/cookie-notice/292/');
                                      },
                                      hoverTextColor: Color(0xff772CE8),
                                      textColor: Colors.black,
                                      height: 50,
                                      minWidth: _mediaQuery.size.width * 0.1,
                                      color: Colors.white,
                                      hoverColor: Colors.white,
                                      elevation: 0,
                                      hoverElevation: 0,
                                      child: Seo.text(
                                        text: 'Cookie Policy',
                                        child:Text(
                                          'Cookie Policy',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: _mediaQuery.size.width * 0.011,
                                          ),
                                        ),),
                                    ),),
                                ),

                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, _mediaQuery.size.width * 0.4, 0, 0),
                                  child: Seo.link(
                                    href: 'https://youinroll.com/read/affiliate-program-agreement/288/',
                                    anchor: 'Afiliates',
                                    child:HoverButton(
                                      onpressed: () async {
                                        await launchURL(
                                            'https://youinroll.com/read/affiliate-program-agreement/288/');
                                      },
                                      hoverTextColor: Color(0xff772CE8),
                                      textColor: Colors.black,
                                      height: 50,
                                      minWidth: _mediaQuery.size.width * 0.1,
                                      color: Colors.white,
                                      hoverColor: Colors.white,
                                      elevation: 0,
                                      hoverElevation: 0,
                                      child: Seo.text(
                                        text: 'Affiliates',
                                        child:Text(
                                          'Affiliates',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: _mediaQuery.size.width * 0.011,
                                          ),
                                        ),),

                                    ),),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      _mediaQuery.size.width * 0.1,
                                      _mediaQuery.size.width * 0.4,
                                      0,
                                      0),

                                  child: Seo.text(
                                    text: '© 2023 YouinRoll Interactive, Inc.',
                                    child:Text(
                                      '© 2023 YouinRoll Interactive, Inc.',
                                      textAlign: TextAlign.left,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontSize: _mediaQuery.size.width * 0.011,
                                      ),
                                    ),),
                                ),
                              ]),

                            ],
                          ),
                          //Color(0xff772CE8),
                        ),
                      ),

                    ]),
                  ],
                ),

              ]),
            ),
          ),
        ),
      ),);
  }

  Future launchURL(String url) async {
    var uri = Uri.parse(url).toString();
    try {
      await launch(uri);
    } catch (e) {
      throw 'Could not launch $uri: $e';
    }
  }
}
