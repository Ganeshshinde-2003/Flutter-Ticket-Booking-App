import 'package:flutter/material.dart';
import 'package:ticketbooking/utils/app_layout.dart';
import 'package:ticketbooking/utils/app_styles.dart';
import 'package:ticketbooking/widgets/layout_bulder.dart';
import 'package:ticketbooking/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TiketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;
  const TiketView({
    super.key,
    required this.ticket,
    required this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(169),
      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color:
                    isColor == false ? const Color(0xff526799) : Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppLayout.getHeight(21)),
                  topRight: Radius.circular(AppLayout.getHeight(21)),
                ),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style: isColor == false
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3.copyWith(
                                color: Colors.black,
                              ),
                      ),
                      Expanded(child: Container()),
                      ThinkContainer(isColor: isColor),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilder(
                                isColor: isColor,
                                sections: 6,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: isColor == false
                                      ? Colors.white
                                      : const Color(0xffbaccf7),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      ThinkContainer(isColor: isColor),
                      Expanded(child: Container()),
                      Text(
                        ticket['to']['code'],
                        style: isColor == false
                            ? Styles.headLineStyle3.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle3.copyWith(
                                color: Colors.black,
                              ),
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['from']['name'],
                          style: isColor == false
                              ? Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4,
                        ),
                      ),
                      Text(
                        ticket['flying_time'],
                        style: isColor == false
                            ? Styles.headLineStyle4.copyWith(
                                color: Colors.white,
                              )
                            : Styles.headLineStyle4.copyWith(
                                color: Colors.black,
                              ),
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          ticket['to']['name'],
                          textAlign: TextAlign.end,
                          style: isColor == false
                              ? Styles.headLineStyle4.copyWith(
                                  color: Colors.white,
                                )
                              : Styles.headLineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: isColor == false ? Styles.orangeColor : Colors.white,
              child: Row(
                children: [
                  SizedBox(
                    height: AppLayout.getHeight(20),
                    width: AppLayout.getWidth(10),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder:
                            (BuildContext context, BoxConstraints constraints) {
                          return Flex(
                            direction: Axis.horizontal,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: List.generate(
                              (constraints.constrainWidth() / 15).floor(),
                              (index) => SizedBox(
                                width: 5,
                                height: 1,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    color: isColor == false
                                        ? Colors.white
                                        : Colors.grey.shade300,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: isColor == false
                            ? Colors.grey.shade200
                            : Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: isColor == false ? Styles.orangeColor : Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(isColor == false ? 21 : 0),
                  bottomRight: Radius.circular(isColor == false ? 21 : 0),
                ),
              ),
              padding: const EdgeInsets.only(
                left: 16,
                top: 10,
                right: 16,
                bottom: 16,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ticket['date'],
                            style: isColor == false
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3.copyWith(
                                    color: Colors.black,
                                  ),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style: isColor == false
                                ? Styles.headLineStyle4.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            ticket['departure_time'],
                            style: isColor == false
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3.copyWith(
                                    color: Colors.black,
                                  ),
                          ),
                          const Gap(5),
                          Text(
                            "Departure time",
                            style: isColor == false
                                ? Styles.headLineStyle4.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            ticket['number'].toString(),
                            style: isColor == false
                                ? Styles.headLineStyle3.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle3.copyWith(
                                    color: Colors.black,
                                  ),
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style: isColor == false
                                ? Styles.headLineStyle4.copyWith(
                                    color: Colors.white,
                                  )
                                : Styles.headLineStyle4,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
