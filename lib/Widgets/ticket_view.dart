import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:shoping_app/Utilities/style.dart';
import 'package:shoping_app/Widgets/circle_container.dart';

import '../Utilities/SizeLayout.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  List _tickets = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      readJson();
    });
  }

  Future<void> readJson() async {
    final String response =
        await rootBundle.loadString("lib/Json Files/TicketsList.json");
    final data = await json.decode(response);
    setState(() {
      _tickets = data['tickets'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: Layout.height(200),
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _tickets.length,
            itemBuilder: (context, index) {
              return SizedBox(
                width: MediaQuery.of(context).size.width * .90,
                height: Layout.height(200),
                child: Container(
                  margin: EdgeInsets.only(right: Layout.height(16)),
                  child: Column(children: [
                    //Up part of the ticket
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(Layout.height(21)),
                            topRight: Radius.circular(Layout.height(21))),
                        color: const Color.fromARGB(255, 101, 142, 184),
                      ),
                      padding: EdgeInsets.all(Layout.height(16)),
                      child: Column(children: [
                        Row(
                          children: [
                            Text(
                              _tickets[index]['origin'],
                              style: Style.headtextStyle3
                                  .copyWith(color: Colors.white),
                            ),
                            const Spacer(),
                            const CircleContainer(),
                            Expanded(
                              child: Stack(
                                children: [
                                  SizedBox(
                                    height: Layout.height(24),
                                    child: LayoutBuilder(
                                      builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        return Flex(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          direction: Axis.horizontal,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              (constraints.constrainWidth() / 6)
                                                  .floor(),
                                              (index) => const SizedBox(
                                                    height: 1,
                                                    width: 3,
                                                    child: DecoratedBox(
                                                        decoration:
                                                            BoxDecoration(
                                                                color: Colors
                                                                    .white)),
                                                  )),
                                        );
                                      },
                                    ),
                                  ),
                                  Center(
                                    child: Transform.rotate(
                                      angle: 1.5,
                                      child: const Icon(
                                        Icons.airplanemode_active,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const CircleContainer(),
                            const Spacer(),
                            Text(
                              _tickets[index]['Destination'],
                              style: Style.headtextStyle3
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                         Gap(Layout.height(5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: Layout.Width(100),
                              child: Text(
                                _tickets[index]['originFullName'],
                                style: Style.headtextStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            ),
                            Text(
                              _tickets[index]['TotalTime'],
                              style: Style.headtextStyle4
                                  .copyWith(color: Colors.white),
                            ),
                            SizedBox(
                              width: Layout.Width(100),
                              child: Text(
                                _tickets[index]['DestiFullName'],
                                textAlign: TextAlign.end,
                                style: Style.headtextStyle4
                                    .copyWith(color: Colors.white),
                              ),
                            )
                          ],
                        )
                      ]),
                    ),

                    //Middle Part of the ticket
                    Container(
                      color: Style.orangeColor,
                      child: Row(children: [
                        SizedBox(
                          height: Layout.height(20),
                          width: Layout.Width(10),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight:
                                          Radius.circular(Layout.height(10)),
                                      bottomRight:
                                          Radius.circular(Layout.height(10))))),
                        ),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.all(Layout.height(12)),
                          child: LayoutBuilder(
                            builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.max,
                                children: List.generate(
                                    (constraints.constrainWidth() / 15).floor(),
                                    (index) => const SizedBox(
                                          width: 5,
                                          height: 1,
                                          child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                  color: Colors.white)),
                                        )),
                              );
                            },
                          ),
                        )),
                        SizedBox(
                          height: Layout.height(20),
                          width: Layout.Width(10),
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topLeft:
                                          Radius.circular(Layout.height(10)),
                                      bottomLeft:
                                          Radius.circular(Layout.height(10))))),
                        ),
                      ]),
                    ),

                    //Down Part of the Tickets
                    Container(
                      padding: EdgeInsets.only(
                          left: Layout.height(16),
                          right: Layout.height(16),
                          top: Layout.height(10),
                          bottom: Layout.height(10)),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(Layout.height(21)),
                            bottomRight: Radius.circular(Layout.height(21))),
                        color: Style.orangeColor,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _tickets[index]['Date'],
                                style: Style.headtextStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "Date",
                                style: Style.headtextStyle4
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                _tickets[index]['Time'],
                                style: Style.headtextStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "Departure Time",
                                style: Style.headtextStyle4
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                _tickets[index]['Number'].toString(),
                                style: Style.headtextStyle3
                                    .copyWith(color: Colors.white),
                              ),
                              Text(
                                "Number",
                                style: Style.headtextStyle4
                                    .copyWith(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
              );
            }));
  }
}
