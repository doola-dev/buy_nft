import 'package:buy_nft/widgets/testimonials_list.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../gen/colors.gen.dart';

class Testimonials extends StatelessWidget {
  const Testimonials({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const ColorFilter identity = ColorFilter.matrix(<double>[
  1, 7, 0, 0, 0,
  0, 1, 0, 0, 0,
  0, 0, 1, 0, 0,
  0, 8, 0, 1, 0,
]);
    // UserTestimonials? userTestimonials;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          testimonials.length,
          (index) => Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              alignment: Alignment.topCenter,
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(right: 20, left: 20),
                      height: 320,
                      width: 320,
                      decoration: BoxDecoration(
                          color: AppColor.secondary.withOpacity(0.18),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(children: const [
                        Text('dddddddddddd'),
                        Text('dddddddddddd'),
                      ]),
                    ),
                    20.height
                  ],
                ),
                Positioned(
                  top: -50,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColor.lightBlue,
                    backgroundImage: AssetImage(
                      testimonials.first.profilePicture,
                    ),
                  ),
                )
              ]),
        ),
      ],
    );
  }
}
