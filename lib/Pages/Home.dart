// ignore_for_file: file_names

import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shoping_app/Utilities/style.dart';
import 'package:shoping_app/Widgets/HomeTopBanner.dart';
import 'package:shoping_app/Widgets/Hotel_card_view.dart';
import 'package:shoping_app/Widgets/ticket_view.dart';

import '../Utilities/SizeLayout.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Style.bgColor,
        body: ListView(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: Layout.Width(20)),
              child: Column(
                children: [
                  Gap(Layout.height(40)),
                  const HomeTopBanner(),
                  Gap(Layout.height(25)),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Layout.height(10))),
                    padding: EdgeInsets.symmetric(
                        horizontal: Layout.Width(12),
                        vertical: Layout.height(12)),
                    child: Row(children: [
                      const Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: Colors.deepPurple,
                      ),
                      Text(
                        "Search Here",
                        style: Style.headtextStyle4,
                      )
                    ]),
                  ),
                  Gap(Layout.height(40)),
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
                          style: Style.headtextStyle4
                              .copyWith(color: Style.primaryColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Gap(Layout.height(40)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(
                left: Layout.height(20),
              ),
              child: const Row(children: [TicketView()]),
            ),
            Gap(Layout.height(15)),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Layout.Width(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Hotels",
                    style: Style.headtextStyle2,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      "View all",
                      style: Style.headtextStyle4
                          .copyWith(color: Style.primaryColor),
                    ),
                  ),
                ],
              ),
            ),
            Gap(Layout.height(15)),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: Layout.height(20)),
              child: const Row(children: [
                HotelCardView(),
              ]),
            )
          ],
        ));
  }
}
