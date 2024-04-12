import 'dart:developer';

import 'package:api_weather_app/core/usecases/colors.dart';
import 'package:api_weather_app/core/usecases/sizes.dart';
import 'package:api_weather_app/features/data/images.dart';
import 'package:api_weather_app/features/presentation/widgets/custome_appbar.dart';
import 'package:api_weather_app/features/presentation/widgets/custome_texts.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _clicked = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    DateTime now = DateTime.now();
    String formattedTime = DateFormat.jm().format(now);
    return Scaffold(
      //  appBar: CustomeAppbar(),
      //  extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          padding:
              const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: AppColors.lightBlue,
            image: DecorationImage(
              image: AssetImage(background[0]),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  height: 70,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(15)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.location_pin,
                          color: Colors.red,
                        ),
                      ),
                      Column(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomeTexts(
                            data: "Dubai",
                            size: 24,
                            color: Colors.white,
                            fw: FontWeight.bold,
                          ),
                          CustomeTexts(
                            data: "Good Morning",
                            size: 15,
                            color: Colors.white,
                            fw: FontWeight.w400,
                          )
                        ],
                      ),
                      AppSizes.sizeHundredW,
                      IconButton(
                          onPressed: () {
                            setState(() {
                              _clicked = !_clicked;
                            });
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
              _clicked == true
                  ? Positioned(
                      top: 75,
                      left: 20,
                      right: 20,
                      child: Container(
                        height: 50,
                        //   decoration: BoxDecoration(color: Colors.red),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 235, 6, 6)))),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              // InkWell(
              //   child: Container(
              //     decoration: BoxDecoration(
              //         borderRadius: BorderRadius.circular(30),
              //         color: Colors.black.withOpacity(0.4)),
              //     child: ListTile(
              //       tileColor: Colors.amber,
              //       leading: Icon(
              //         Icons.location_pin,
              //         color: Colors.red,
              //       ),
              //       title: Text(
              //         "Dubai",
              //         style: TextStyle(
              //           color: Colors.white,
              //           fontWeight: FontWeight.w700,
              //           fontSize: 20,
              //         ),
              //       ),
              //       subtitle: Text(
              //         "Good Morning",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //       trailing: IconButton(
              //         onPressed: () {
              //           log("__________pressed0-------------------");
              //         },
              //         icon: Icon(Icons.search),
              //         iconSize: 35,
              //         color: Colors.white,
              //       ),
              //     ),
              //   ),
              //   onTap: () {
              //     log("________________tapped111-----------");
              //   },
              // ),

              Align(
                alignment: const Alignment(0, -0.6),
                child: Image.asset(stickerImgs[6]),
              ),
              Align(
                alignment: const Alignment(0, .1),
                child: Container(
                  height: 160,
                  width: 130,
                  child: Column(
                    children: [
                      CustomeTexts(
                        data: "25°C",
                        color: Colors.white,
                        size: 50,
                        fw: FontWeight.bold,
                      ),
                      CustomeTexts(
                        data: "Snow",
                        color: Colors.white,
                        size: 27,
                        fw: FontWeight.w600,
                      ),
                      CustomeTexts(
                        data: formattedTime,
                        color: Colors.white,
                        size: 16,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: const Alignment(0, 0.7),
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(20)),
                    height: 180,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            AppSizes.sizeFiftyW,
                            Image.asset(
                              'assets/images/temperature-high.png',
                              height: 35,
                            ),
                            Column(
                              children: [
                                CustomeTexts(
                                  data: "Temp Max",
                                  size: 12,
                                  color: Colors.white,
                                ),
                                CustomeTexts(
                                  data: '25°C',
                                  size: 22,
                                  fw: FontWeight.w500,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            AppSizes.sizeFiftyW,
                            Image.asset(
                              'assets/images/temperature-low.png',
                              height: 35,
                            ),
                            Column(
                              children: [
                                CustomeTexts(
                                  data: "Temp Min",
                                  size: 12,
                                  color: Colors.white,
                                ),
                                CustomeTexts(
                                  data: '25°C',
                                  size: 22,
                                  fw: FontWeight.w500,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                          child: Divider(
                            color: Colors.white,
                            thickness: 1,
                          ),
                        ),
                        Row(
                          children: [
                            AppSizes.sizeFiftyW,
                            Image.asset(
                              'assets/images/sun.png',
                              height: 35,
                            ),
                            Column(
                              children: [
                                CustomeTexts(
                                  data: "Temp Max",
                                  size: 12,
                                  color: Colors.white,
                                ),
                                CustomeTexts(
                                  data: '25°C',
                                  size: 22,
                                  fw: FontWeight.w500,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            AppSizes.sizeFiftyW,
                            Image.asset(
                              'assets/images/moon.png',
                              height: 35,
                            ),
                            Column(
                              children: [
                                CustomeTexts(
                                  data: "Sunset",
                                  size: 12,
                                  color: Colors.white,
                                ),
                                CustomeTexts(
                                  data: '25°C',
                                  size: 22,
                                  fw: FontWeight.w500,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    log("pressedddddd----------------");
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
