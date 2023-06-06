// ignore_for_file: file_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';

import '../Utilities/SizeLayout.dart';
import '../Utilities/style.dart';

class HotelCardView extends StatefulWidget {
  const HotelCardView({super.key});

  @override
  State<HotelCardView> createState() => _HotelCardViewState();
}

class _HotelCardViewState extends State<HotelCardView> {
  List _item = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      readJson();
    });
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString('lib/Json Files/HotelView.json');
    final data = await json.decode(response);
    setState(() {
      _item = data['items'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: Layout.height(350),
      child: _item.isNotEmpty
          ? ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _item.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: Layout.height(350),
                  padding: EdgeInsets.symmetric(
                      horizontal: Layout.Width(15),
                      vertical: Layout.height(17)),
                  margin: EdgeInsets.only(
                      right: Layout.height(17), top: Layout.height(15)),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 2,
                            spreadRadius: 1)
                      ],
                      color: Colors.deepPurple.shade100,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: Layout.height(180),
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(Layout.height(20)),
                              color: Style.primaryColor,
                              image: DecorationImage(
                                  image: AssetImage(_item[index]['img']),
                                  fit: BoxFit.cover)),
                        ),
                        Gap(Layout.height(15)),
                        Text(
                          _item[index]['Name'],
                          style: Style.headtextStyle2.copyWith(
                              color: const Color.fromARGB(255, 103, 93, 93)),
                        ),
                        Gap(Layout.height(5)),
                        Text(
                          "One Bedroom With Hall And Balcony",
                          style: Style.headtextStyle4.copyWith(
                              color: const Color.fromARGB(255, 103, 93, 93)),
                        ),
                        Gap(Layout.height(8)),
                        // Text(
                        //   "\$40/Night",
                        //   style: Style.headtextStyle.copyWith(
                        //       color: const Color.fromARGB(255, 103, 93, 93)),
                        // )
                        Text(
                          _item[index]['price'],
                          style: Style.headtextStyle.copyWith(
                              color: const Color.fromARGB(255, 103, 93, 93)),
                        )
                      ]),
                );
              })
          : ElevatedButton(onPressed: () {}, child: const Text("data")),
    );
  }
}
