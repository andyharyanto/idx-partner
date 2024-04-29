import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:idx_test_andy/common/styles.dart';
import 'package:idx_test_andy/component/idx_button.dart';
import 'package:styled_widget/styled_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<OfferingService> listOffering = [];
  List<StepService> listService = [];
  List<OurTeam> teamList = [];
  List<String> clientList = [
    "https://sandbox.elemisthemes.com/assets/img/brands/c1.png",
    "https://sandbox.elemisthemes.com/assets/img/brands/c2.png",
    "https://sandbox.elemisthemes.com/assets/img/brands/c3.png",
    "https://sandbox.elemisthemes.com/assets/img/brands/c4.png",
    "https://sandbox.elemisthemes.com/assets/img/brands/c5.png",
    "https://sandbox.elemisthemes.com/assets/img/brands/c6.png",
  ];

  final TextEditingController controllerInputWebsite = TextEditingController();
  final TextEditingController controllerInputEmail = TextEditingController();

  @override
  void initState() {
    listOffering = [
      OfferingService(
          imageUrl:
              "https://sandbox.elemisthemes.com/assets/img/icons/lineal/search-2.svg",
          title: "SEO Services",
          subTitle:
              "Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo."),
      OfferingService(
          imageUrl:
              "https://sandbox.elemisthemes.com/assets/img/icons/lineal/browser.svg",
          title: "Web Service",
          subTitle:
              "Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo."),
      OfferingService(
          imageUrl:
              "https://sandbox.elemisthemes.com/assets/img/icons/lineal/chat-2.svg",
          title: "Social Engagement",
          subTitle:
              "Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo."),
      OfferingService(
          imageUrl:
              "https://sandbox.elemisthemes.com/assets/img/icons/lineal/megaphone.svg",
          title: "Content Marketing",
          subTitle:
              "Nulla vitae elit libero, a pharetra augue. Donec id elit non mi porta gravida at eget metus cras justo."),
    ];
    listService = [
      StepService(
          number: "01",
          title: "Collect Ideas",
          subTitle: "Nulla vitae elit libero pharetra augue dapibus."),
      StepService(
          number: "02",
          title: "Data Analsis",
          subTitle: "Vivamus sagittis lacus vel augue laoreet."),
      StepService(
          number: "03",
          title: "Finalize Product",
          subTitle: "Cras mattis consectetur purus sit amet.")
    ];
    teamList = [
      OurTeam(
          photoUrl:
              "https://sandbox.elemisthemes.com/assets/img/avatars/te1.jpg",
          teamName: "Coriss Ambady",
          teamRole: "Financial Analyst",
          teamDesc: "Fermentum massa justo sit amet risus morbi leo.",
          socialMediaImageUrl: [
            Icons.ac_unit_outlined,
            Icons.access_alarm_rounded,
            Icons.accessibility_sharp
          ]),
      OurTeam(
          photoUrl:
              "https://sandbox.elemisthemes.com/assets/img/avatars/te2.jpg",
          teamName: "Nikolas Brooten",
          teamRole: "Sales Manager",
          teamDesc: "Fermentum massa justo sit amet risus morbi leo.",
          socialMediaImageUrl: [
            Icons.ac_unit_outlined,
            Icons.access_alarm_rounded,
            Icons.accessibility_sharp
          ]),
      OurTeam(
          photoUrl:
              "https://sandbox.elemisthemes.com/assets/img/avatars/te3.jpg",
          teamName: "Jackie Sanders",
          teamRole: "Investment Planner",
          teamDesc: "Fermentum massa justo sit amet risus morbi leo.",
          socialMediaImageUrl: [
            Icons.ac_unit_outlined,
            Icons.access_alarm_rounded,
            Icons.accessibility_sharp
          ]),
    ];

    super.initState();
  }

  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        key: _key,
        backgroundColor: Colors.white,
        drawer: drawerWidget(),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                        "https://sandbox.elemisthemes.com/assets/img/logo-dark.png"),
                    Row(
                      children: [
                        CustomText().textBold("EN").fontSize(20),
                        const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.orange,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Icon(Icons.info_outline_rounded),
                        const SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () => _key.currentState!.openDrawer(),
                          child: const Icon(
                            Icons.menu,
                            size: 35,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.orange.withOpacity(0.2),
                        Colors.white,
                        Colors.white
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 100,
                      ),
                      Image.network(
                          "https://sandbox.elemisthemes.com/assets/img/illustrations/i2.png"),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomText()
                          .textBold("Grow Your Business with Our Solutions.")
                          .fontSize(28)
                          .textAlignment(TextAlign.center),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomText()
                          .textNormal(
                              "We help our clients to increase their website traffic, rankings and visibility in search results.")
                          .fontSize(20)
                          .textAlignment(TextAlign.center),
                      const SizedBox(
                        height: 20,
                      ),
                      IdxButton(
                          buttonText: "Try It For Free", onButtonPress: () {}),
                      const SizedBox(
                        height: 20,
                      ),
                      CustomText()
                          .textMedium("WHAT WE DO?")
                          .fontSize(20)
                          .textColor(Colors.grey),
                      CustomText()
                          .textBold(
                              "The service we offer is specifically designed to meet your needs.")
                          .fontSize(28)
                          .textAlignment(TextAlign.center),
                      const SizedBox(
                        height: 20,
                      ),
                      ListView.builder(
                          itemCount: listOffering.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            OfferingService itemData = listOffering[index];
                            return Container(
                                padding: const EdgeInsets.all(16),
                                margin: const EdgeInsets.only(
                                    bottom: 16, left: 2, right: 2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                      offset: const Offset(1.0,
                                          1.0), // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                child: Column(
                                  children: [
                                    SvgPicture.network(
                                      itemData.imageUrl,
                                      width: 40,
                                    ),
                                    CustomText()
                                        .textBold(itemData.title)
                                        .fontSize(16),
                                    CustomText()
                                        .textNormal(itemData.subTitle)
                                        .fontSize(16)
                                        .textAlignment(TextAlign.center),
                                  ],
                                ));
                          }),
                      const SizedBox(
                        height: 16,
                      ),
                      Image.network(
                          "https://sandbox.elemisthemes.com/assets/img/illustrations/i3.png"),
                      Column(
                        children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: CustomText()
                                  .textMedium("ANALYZE NOW")
                                  .fontSize(16)
                                  .textColor(Colors.grey)),
                          CustomText()
                              .textBold(
                                  "Wonder how much faster your website can go? Easily check your SEO Score now.")
                              .fontSize(20),
                          CustomText()
                              .textNormal(
                                  "Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Praesent commodo cursus magna, vel scelerisque nisl consectetur et.")
                              .fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          SizedBox(
                            height: 60,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomLeft: Radius.circular(16)),
                                    color: Colors.white,
                                  ),
                                  child: TextField(
                                    controller: controllerInputWebsite,
                                    maxLines: 1,
                                    maxLength: 100,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        filled: false,
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal),
                                        hintText: "Enter Website URL",
                                        fillColor: Colors.transparent,
                                        counterText: ""),
                                  ),
                                )),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16)),
                                      color: Colors.orange,
                                    ),
                                    child: CustomText()
                                        .textBold("Check")
                                        .textColor(Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      ListView.builder(
                          itemCount: listService.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            StepService itemService = listService[index];
                            return Container(
                                padding: const EdgeInsets.all(16),
                                margin: const EdgeInsets.only(
                                    bottom: 16, left: 2, right: 2),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(12)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.2),
                                      blurRadius: 1.0,
                                      spreadRadius: 1.0,
                                      offset: const Offset(1.0,
                                          1.0), // shadow direction: bottom right
                                    )
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(12),
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.orangeAccent),
                                      child: CustomText()
                                          .textBold(itemService.number),
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomText()
                                              .textBold(itemService.title)
                                              .fontSize(16),
                                          CustomText()
                                              .textNormal(itemService.subTitle)
                                              .fontSize(16),
                                        ],
                                      ),
                                    )
                                  ],
                                ));
                          }),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText()
                              .textMedium("OUR STRATEGY")
                              .fontSize(16)
                              .textColor(Colors.grey)),
                      CustomText()
                          .textBold(
                              "Here are 3 working steps to organize our business projects.")
                          .fontSize(20),
                      CustomText()
                          .textNormal(
                              "Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Nullam quis risus eget urna mollis.")
                          .fontSize(16),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: IdxButton(
                              buttonText: "Learn More", onButtonPress: () {})),
                      const SizedBox(
                        height: 26,
                      ),
                      Image.network(
                          "https://sandbox.elemisthemes.com/assets/img/illustrations/i6.png"),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText()
                              .textMedium("WHY CHOOSE US?")
                              .fontSize(16)
                              .textColor(Colors.grey)),
                      CustomText()
                          .textBold(
                              "We bring solutions to make life easier for our clients.")
                          .fontSize(20),
                      ListView(
                        shrinkWrap: true,
                        children: const [
                          ExpansionTile(
                            tilePadding: EdgeInsets.all(0),
                            iconColor: Colors.orange,
                            collapsedIconColor: Colors.orange,
                            collapsedShape: RoundedRectangleBorder(
                              side: BorderSide.none,
                            ),
                            shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            title: Text('Professional Design'),
                            children: [
                              Text(
                                  "Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Praesent commodo cursus magna, vel.")
                            ],
                          ),
                          ExpansionTile(
                            tilePadding: EdgeInsets.all(0),
                            iconColor: Colors.orange,
                            collapsedIconColor: Colors.orange,
                            collapsedShape: RoundedRectangleBorder(
                              side: BorderSide.none,
                            ),
                            controlAffinity: ListTileControlAffinity.leading,
                            shape: RoundedRectangleBorder(
                              side: BorderSide.none,
                            ),
                            title: Text('Top Notch Support'),
                            children: [
                              Text(
                                  "Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Cras mattis consectetur purus sit amet fermentum. Praesent commodo cursus magna, vel.")
                            ],
                          ),
                        ],
                      ),
                      CustomText()
                          .textNormal(
                              "Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Nullam quis risus eget urna mollis.")
                          .fontSize(16),
                      const SizedBox(
                        height: 26,
                      ),
                      CustomText()
                          .textMedium("OUR TEAM")
                          .fontSize(16)
                          .textColor(Colors.grey),
                      CustomText()
                          .textBold(
                              "Think unique and be innovative. Make a difference with Sandbox.")
                          .fontSize(20)
                          .textAlignment(TextAlign.center),
                      const SizedBox(
                        height: 26,
                      ),
                      ListView.builder(
                          itemCount: teamList.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            OurTeam itemTeam = teamList[index];
                            return Container(
                                padding: const EdgeInsets.all(16),
                                margin: const EdgeInsets.only(bottom: 16),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12))),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: 80,
                                          height: 80,
                                          decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: ClipOval(
                                              child: SizedBox.fromSize(
                                            size: const Size.fromRadius(35),
                                            child: Image.network(
                                              itemTeam.photoUrl,
                                              fit: BoxFit.cover,
                                            ),
                                          ))),
                                      CustomText().textBold(itemTeam.teamName),
                                      CustomText()
                                          .textMedium(itemTeam.teamRole)
                                          .textColor(Colors.grey),
                                      CustomText()
                                          .textNormal(itemTeam.teamDesc),
                                      SizedBox(
                                        height: 40,
                                        child: ListView.builder(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            itemCount: teamList[index]
                                                .socialMediaImageUrl
                                                .length,
                                            shrinkWrap: false,
                                            scrollDirection: Axis.horizontal,
                                            itemBuilder: (context, indexs) {
                                              var icon = teamList[index]
                                                  .socialMediaImageUrl;
                                              return Icon(icon[indexs]);
                                            }),
                                      )
                                    ]));
                          }),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText()
                              .textMedium("OUR PRICING")
                              .fontSize(16)
                              .textColor(Colors.grey)),
                      CustomText()
                          .textBold("We offer great and premium prices.")
                          .fontSize(20)
                          .textAlignment(TextAlign.start),
                      const SizedBox(
                        height: 26,
                      ),
                      CustomText()
                          .textBold(
                              "Enjoy a and experience the full service. No credit card required!")
                          .fontSize(20)
                          .textAlignment(TextAlign.start),
                      RichText(
                        text: const TextSpan(
                          text: 'Enjoy a ',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'free 30-days trial',
                              style: TextStyle(
                                color: Colors.orange,
                                fontSize: 16,
                              ),
                            ),
                            TextSpan(
                                text:
                                    ' and experience the full service. No credit card required!',
                                style: TextStyle(
                                  fontSize: 16,
                                )),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: IdxButton(
                              buttonText: "See All Prices",
                              onButtonPress: () {})),
                      const SizedBox(
                        height: 26,
                      ),
                      Image.network(
                          "https://sandbox.elemisthemes.com/assets/img/illustrations/i5.png"),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CustomText()
                              .textMedium("LET'S TALK")
                              .fontSize(16)
                              .textColor(Colors.grey)),
                      CustomText()
                          .textBold(
                              "Let's make something great together. We are trusted by over 5000+ clients.")
                          .fontSize(20),
                      CustomText()
                          .textNormal(
                              "Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum. Maecenas faucibus mollis interdum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.")
                          .fontSize(16),
                      const SizedBox(
                        height: 26,
                      ),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: IdxButton(
                              buttonText: "Join Us", onButtonPress: () {})),
                      const SizedBox(
                        height: 26,
                      ),
                      SizedBox(
                        height: 200,
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 32,
                                  mainAxisSpacing: 3),
                          itemBuilder: (_, index) =>
                              Image.network(clientList[index]),
                          itemCount: clientList.length,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText()
                              .textBold(
                                  "Join our community by using our services and grow your business.")
                              .fontSize(20),
                          const SizedBox(
                            height: 26,
                          ),
                          IdxButton(
                              buttonText: "Try It For Free",
                              onButtonPress: () {}),
                          CustomText().textBold("Sandbox").fontSize(28),
                          const SizedBox(
                            height: 12,
                          ),
                          CustomText()
                              .textNormal(
                                  "© 2024 Sandbox. All rights reserved.")
                              .fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          CustomText().textBold("Get in Touch").fontSize(16),
                          CustomText()
                              .textNormal(
                                  "Moonshine St. 14/05 Light City, London, United Kingdom")
                              .fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          CustomText()
                              .textNormal("info@email.com")
                              .fontSize(16),
                          CustomText()
                              .textNormal("00 (123) 456 78 90")
                              .fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          CustomText().textBold("Learn More").fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          CustomText().textNormal("About Us").fontSize(16),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomText().textNormal("Our Story").fontSize(16),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomText().textNormal("Projects").fontSize(16),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomText().textNormal("Terms of Use").fontSize(16),
                          const SizedBox(
                            height: 8,
                          ),
                          CustomText()
                              .textNormal("Privacy Policy")
                              .fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          CustomText().textBold("Our Newsletter").fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          CustomText()
                              .textNormal(
                                  "Subscribe to our newsletter to get our news & deals delivered to you.")
                              .fontSize(16),
                          const SizedBox(
                            height: 26,
                          ),
                          SizedBox(
                            height: 60,
                            child: Row(
                              children: [
                                Expanded(
                                    child: Container(
                                  padding: const EdgeInsets.all(8),
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(16),
                                        bottomLeft: Radius.circular(16)),
                                    color: Colors.white,
                                  ),
                                  child: TextField(
                                    controller: controllerInputEmail,
                                    maxLines: 1,
                                    maxLength: 100,
                                    decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        filled: false,
                                        hintStyle: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.normal),
                                        hintText: "Email Address",
                                        fillColor: Colors.transparent,
                                        counterText: ""),
                                  ),
                                )),
                                InkWell(
                                  onTap: () {},
                                  child: Container(
                                    padding: const EdgeInsets.all(20),
                                    decoration: const BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(16),
                                          bottomRight: Radius.circular(16)),
                                      color: Colors.orange,
                                    ),
                                    child: CustomText()
                                        .textBold("Check")
                                        .textColor(Colors.white),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget drawerWidget() {
    return Drawer(
      child: Container(
        color: Colors.black,
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          top: true,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText()
                      .textBold("Sandbox")
                      .fontSize(20)
                      .textColor(Colors.white),
                  InkWell(
                    onTap: () {
                      _key.currentState!.closeDrawer();
                    },
                    child: const Icon(
                      Icons.close,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Wrap(
                direction: Axis.vertical,
                children: [
                  CustomText()
                      .textNormal("info@email.com")
                      .textColor(Colors.white),
                  CustomText()
                      .textNormal("00 (123) 456 78 90")
                      .textColor(Colors.white),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class OfferingService {
  String imageUrl = "";
  String title = "";
  String subTitle = "";

  OfferingService(
      {required this.imageUrl, required this.title, required this.subTitle});
}

class StepService {
  String number = "";
  String title = "";
  String subTitle = "";

  StepService(
      {required this.number, required this.title, required this.subTitle});
}

class OurTeam {
  String photoUrl = "";
  String teamName = "";
  String teamRole = "";
  String teamDesc = "";
  List<IconData> socialMediaImageUrl = [];

  OurTeam(
      {required this.photoUrl,
      required this.teamName,
      required this.teamRole,
      required this.teamDesc,
      required this.socialMediaImageUrl});
}
