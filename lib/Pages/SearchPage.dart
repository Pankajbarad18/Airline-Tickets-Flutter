// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../Utilities/SizeLayout.dart';
import '../Utilities/style.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: Layout.Width(20), vertical: Layout.height(20)),
        children: [
          Gap(Layout.height(40)),
          Text(
            "Where You\nWanna Go This Time?",
            style: Style.headtextStyle.copyWith(fontSize: 35),
          ),
          Gap(Layout.height(20)),

          //buttons

          FittedBox(
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 222, 220, 216),
                  borderRadius: BorderRadius.circular(Layout.height(50))),
              child: Row(children: [
                //Tickets Section
                Container(
                  padding: EdgeInsets.all(Layout.height(10)),
                  width: MediaQuery.of(context).size.width * 0.46,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(Layout.height(50)))),
                  child: const Center(
                      child: Text(
                    "AirLine Tickets",
                  )),
                ),

                //Hotels Section
                Container(
                  padding: EdgeInsets.all(Layout.height(10)),
                  width: MediaQuery.of(context).size.width * 0.46,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.horizontal(
                          right: Radius.circular(Layout.height(50)))),
                  child: const Center(
                      child: Text(
                    "Hotels",
                  )),
                ),
              ]),
            ),
          ),
          Gap(Layout.height(40)),

          //Departure Text Widget

          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Layout.Width(12), vertical: Layout.height(12)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Layout.height(10))),
            child: Row(
              children: [
                Icon(
                  Icons.flight_takeoff_rounded,
                  color: Colors.deepPurple.shade200,
                ),
                Gap(Layout.height(7)),
                Text(
                  "Departure",
                  style: Style.textStyle,
                )
              ],
            ),
          ),
          Gap(Layout.height(15)),

          //Arrival Text Widget

          Container(
            padding: EdgeInsets.symmetric(
                horizontal: Layout.Width(12), vertical: Layout.height(12)),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Layout.height(10))),
            child: Row(
              children: [
                Icon(
                  Icons.flight_land_rounded,
                  color: Colors.deepPurple.shade200,
                ),
                Gap(Layout.height(7)),
                Text(
                  "Arrival",
                  style: Style.textStyle,
                )
              ],
            ),
          ),
          Gap(Layout.height(15)),

          //Flight Button

          SizedBox(
            height: Layout.height(50),
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor:
                        const MaterialStatePropertyAll(Colors.black)),
                onPressed: () {},
                child: Text("Flight Search",
                    style: Style.headtextStyle3.copyWith(color: Colors.white))),
          ),
          Gap(Layout.Width(40)),

          //view all text

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Upcoming Flights",
                style: Style.headtextStyle2,
              ),
              InkWell(
                onTap: () {},
                child: Text(
                  "View all",
                  style:
                      Style.headtextStyle4.copyWith(color: Style.primaryColor),
                ),
              ),
            ],
          ),

          //Discount Coupons
          Gap(Layout.height(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.42,
                height: Layout.height(425),
                padding: EdgeInsets.symmetric(
                    horizontal: Layout.height(15), vertical: Layout.height(15)),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          blurRadius: 1,
                          spreadRadius: 1)
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Layout.height(20))),
                child: Column(children: [
                  Container(
                    height: Layout.height(190),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(Layout.height(12)),
                        image: const DecorationImage(
                            image: AssetImage("lib/Images/airline.jpg"))),
                  ),
                  Gap(Layout.height(15)),
                  Text(
                    "10% discount For All The New Users, Don't Miss Out This Oppurtunity",
                    style: Style.headtextStyle2,
                  )
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: Layout.height(15),
                            vertical: Layout.height(15)),
                        width: MediaQuery.of(context).size.width * 0.44,
                        height: Layout.height(200),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(Layout.height(15)),
                            color: Colors.blueGrey),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Discount\nFor Survey",
                              style: Style.headtextStyle2
                                  .copyWith(color: Colors.white),
                            ),
                            Gap(Layout.height(10)),
                            Text(
                              "Take a Survey Of Our Service And Get Chance To Add 5% Discount",
                              style: Style.headtextStyle3
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: -40,
                        top: -35,
                        child: Container(
                          padding: EdgeInsets.all(Layout.height(35)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border:
                                  Border.all(color: Colors.white60, width: 18),
                              color: Colors.transparent),
                        ),
                      ),
                    ],
                  ),
                  Gap(Layout.height(10)),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.44,
                    height: Layout.height(210),
                    padding: EdgeInsets.symmetric(
                        horizontal: Layout.height(15),
                        vertical: Layout.height(25)),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 214, 105, 97),
                        borderRadius: BorderRadius.circular(Layout.height(15))),
                    child: Column(children: [
                      Text(
                        "Spread Love",
                        style:
                            Style.headtextStyle.copyWith(color: Colors.white),
                      ),
                      Gap(Layout.height(30)),
                      RichText(
                          text: const TextSpan(children: [
                        TextSpan(text: '😍', style: TextStyle(fontSize: 28)),
                        TextSpan(text: '🥰', style: TextStyle(fontSize: 40)),
                        TextSpan(text: '😍', style: TextStyle(fontSize: 28))
                      ]))
                    ]),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
