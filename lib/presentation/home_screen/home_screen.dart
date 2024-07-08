import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_scatter/flutter_scatter.dart';
import 'package:ufs_mechenetask/presentation/home_screen/button.dart';
import 'package:ufs_mechenetask/presentation/home_screen/image_spiral.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 2324,
            width: 2120,
            child: Column(
              children: [
                Container(
                  height: 514,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image:
                              AssetImage("assets/bannerImageHolder_Mob.png"))),
                ),
                Container(
                  height: 530,
                  foregroundDecoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/section1BgImageHolder_Mob.png"))),
                ),
                Container(
                  height: 1110,
                  foregroundDecoration: const BoxDecoration(
                      color: Color.fromARGB(255, 35, 43, 64)),
                ),
                Container(
                  height: 170,
                  foregroundDecoration: const BoxDecoration(
                      color: Color.fromARGB(255, 26, 31, 44)),
                ),
              ],
            ),
          ),
          const FirstBanner(),
          const SecondBanner(),
          const BannerText(),
          const VideoBanner(),
          const Padding(
            padding: EdgeInsets.only(top: 620, left: 95),
            child: SizedBox(
              width: 160,
              child: Text(
                textAlign: TextAlign.center,
                "PROUDLY BROUGHT TO YOU BY",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 700, left: 40, right: 40),
            child: Center(child: ArchiSpiral()),
          ),
          const Padding(
            padding: EdgeInsets.only(
              top: 1066,
            ),
            child: Center(
              child: SizedBox(
                width: 260,
                child: Text(
                  textAlign: TextAlign.center,
                  "BALISOL \n EMPOWERING SUSTAINABILITY",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 1126, left: 10, right: 10),
            child: Text(
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
                "At the centre of every Garden of Life sits an architectural masterpiece based on sacred geometry. The self-sustaining oasis in the heart of Bali uses solar energy and photovoltaic technology to power its premises."),
          ),
          const YellowBanner(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 2170),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/Logo Vector.png",
                    height: 50,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Garden Of Life",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    '© 2023 -  GARDEN OF LIFE',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 97,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/facebook_Mob.png",
                          height: 15,
                        ),
                        Image.asset(
                          "assets/twitter_Tab.png",
                          height: 15,
                        ),
                        Image.asset(
                          "assets/instagram_Mob.png",
                          height: 15,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ]),
      )),
    );
  }
}

class YellowBanner extends StatelessWidget {
  const YellowBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 1126, left: 10, right: 10),
      child: Container(
        height: 1004,
        width: 390,
        decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [
              Color.fromARGB(255, 161, 103, 42),
              Color.fromARGB(255, 226, 165, 99),
              Color.fromARGB(255, 161, 103, 42),
            ]),
            borderRadius: BorderRadius.circular(30)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset(
                    "assets/balisolLogo_Mob.png",
                    width: 200,
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 220),
                    child: Text(
                      "BALISOL TOKEN",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                          fontSize: 26),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 270,
                    ),
                    child: Container(
                      height: 40,
                      width: 175,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 105, 83, 42)),
                      child: const Center(
                          child: Text(
                        "REWARD CALCULATION",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )),
                    ),
                  ),
                ),
                const FirstTable(),
                const SecondTable(),
                Padding(
                  padding: const EdgeInsets.only(top: 720, left: 15, right: 15),
                  child: Image.asset("assets/horizontalLine_Mob.png"),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 730),
                    child: Text(
                      "TOKEN VALUE/PRACE: ",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 88, 52, 8)),
                    ),
                  ),
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 750),
                    child: Text(
                      "USD 2.5",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 803, left: 15, right: 15),
                  child: Image.asset("assets/horizontalLine_Mob.png"),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 820),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(235, 75, 40, 0),
                      ),
                      height: 36,
                      width: 160,
                      child: UnicornOutlineButton(
                        strokeWidth: 2,
                        radius: 24,
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 171, 171, 166),
                          Color.fromARGB(255, 255, 223, 40)
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "BUY NOW",
                              style: TextStyle(color: Colors.white),
                            ),
                            Image.asset(
                              "assets/cartIcon_Mob.png",
                              width: 16,
                            )
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 870),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(235, 75, 40, 0),
                      ),
                      height: 36,
                      width: 160,
                      child: UnicornOutlineButton(
                        strokeWidth: 2,
                        radius: 24,
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 171, 171, 166),
                          Color.fromARGB(255, 255, 223, 40)
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "BALISOL FLYER",
                              style: TextStyle(color: Colors.white),
                            ),
                            Image.asset(
                              "assets/downloadIcon_Mob.png",
                              width: 16,
                            )
                          ],
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 920),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(235, 75, 40, 0),
                      ),
                      height: 36,
                      width: 160,
                      child: UnicornOutlineButton(
                        strokeWidth: 2,
                        radius: 24,
                        gradient: const LinearGradient(colors: [
                          Color.fromARGB(255, 171, 171, 166),
                          Color.fromARGB(255, 255, 223, 40)
                        ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Text(
                              "BACK TO SIGN-UP",
                              style: TextStyle(color: Colors.white),
                            ),
                            Image.asset(
                              "assets/leftArrowIcon_Mob.png",
                              width: 16,
                            )
                          ],
                        ),
                        onPressed: () {},
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

class SecondTable extends StatelessWidget {
  const SecondTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 450,
        ),
        child: Container(
            height: 250,
            width: 310,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(68, 217, 217, 217)),
            child: Center(
              child: Table(
                border: const TableBorder(
                    horizontalInside: BorderSide(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color.fromARGB(255, 163, 132, 99)),
                    verticalInside: BorderSide(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color.fromARGB(255, 163, 132, 99))),
                children: const [
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "AVAILABLE KW",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "COST PER KWH IN USD",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "MONTHLY ENERGY COST",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "DISTRIBUTION PER TOKEN PURCHASES",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "REWARD PAYMENT PER YEAR",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "375 kw",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "\$ 0.1",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "27,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "0.036",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "17.28%",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "375 kw",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "\$ 0.1",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "27,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "0.036",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "17.28%",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "375 kw",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "\$ 0.1",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "27,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "0.036",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "17.28%",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "375 kw",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "\$ 0.1",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "27,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "0.036",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "17.28%",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "375 kw",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "\$ 0.1",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "27,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "0.036",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "17.28%",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "375 kw",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "\$ 0.1",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "27,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "0.036",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "17.28%",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                ],
              ),
            )
            //  Row(
            //   children: [
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     )
            //   ],
            // ),
            ),
      ),
    );
  }
}

class FirstTable extends StatelessWidget {
  const FirstTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 330,
        ),
        child: Container(
            height: 95,
            width: 310,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(68, 217, 217, 217)),
            child: Center(
              child: Table(
                border: const TableBorder(
                    horizontalInside: BorderSide(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color.fromARGB(255, 163, 132, 99)),
                    verticalInside: BorderSide(
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Color.fromARGB(255, 163, 132, 99))),
                children: const [
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "WATT",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "TOKEN MINTED",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "TOKEN FOR SALE",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "PRICE FOR TOKEN",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "25 MONTH STAKING",
                      style: TextStyle(
                          color: Color.fromARGB(255, 88, 52, 8),
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                  TableRow(children: [
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "1,500,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "1,500,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "750,000",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "2.50",
                      style: TextStyle(
                          height: 3,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                    Center(
                        child: Text(
                      textAlign: TextAlign.center,
                      "4%(STARTING ON 01/09/2023)",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    )),
                  ]),
                ],
              ),
            )
            //  Row(
            //   children: [
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     ),
            //     Column(
            //       children: [Text("data"), Text("data")],
            //     )
            //   ],
            // ),
            ),
      ),
    );
  }
}

class VideoBanner extends StatelessWidget {
  const VideoBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 384),
      child: Container(
        height: 260,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
          "assets/video_Mob.png",
        ))),
        child: Center(
          child: Image.asset(
            "assets/playButtonHolder_Mob.png",
            height: 23.54,
            width: 23.54,
          ),
        ),
      ),
    );
  }
}

class BannerText extends StatelessWidget {
  const BannerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 18, right: 18, top: 152),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Where beauty and nature meet",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(252, 232, 144, 1),
              fontSize: 14,
            ),
          ),
          Text(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
              "The Garden of Life offers endless options for individuals interested in getting involved. You can invest in different parts of the project, become stakeholders, and earn rewards. We understand that investing is not only about making a positive impact, but also about realizing your own financial goals. The Garden of Life acknowledges that and allows you to reap financial rewards every step of your involvement."),
          SizedBox(
            height: 10,
          ),
          Text(
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white, fontSize: 12),
              "At the centre of every Garden of Life sits an architectural masterpiece based on sacred geometry. The self-sustaining oasis in the heart of Baliuses solar energy and photovoltaic technology to power its premises.")
        ],
      ),
    );
  }
}

class SecondBanner extends StatelessWidget {
  const SecondBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/2 nd bannerLogo_Mob.png",
            height: 56,
          ),
          Container(
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Gardens Of Life",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "Bali,Indonasia",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w100),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FirstBanner extends StatelessWidget {
  const FirstBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 140,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/Logo Vector.png",
                  width: 37.6,
                  height: 46.57,
                ),
                const Text(
                  "Garden Of Life",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            width: 67,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "assets/facebook_Mob.png",
                  height: 14,
                ),
                Image.asset(
                  "assets/twitter_Tab.png",
                  height: 14,
                ),
                Image.asset(
                  "assets/instagram_Mob.png",
                  height: 14,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
