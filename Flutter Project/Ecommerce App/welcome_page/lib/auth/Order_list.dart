import 'package:flutter/material.dart';
import 'package:welcome_page/Payment%20with%20API/default_button.dart';
import 'package:welcome_page/auth/custom_scaffold.dart';

class OrderList extends StatelessWidget {
  const OrderList({Key? key});

  @override
  Widget build(BuildContext context) {
    const double iconSize = 28.0; // Adjust according to your design
    const double spaceBetweenItems = 30.0; // Adjust according to your design

    return CustomScaffold(
      body: ListView.separated(
        shrinkWrap: true,
        itemCount: 10,
        separatorBuilder: (_, __) =>
            const SizedBox(height: 160), // Change the height to 20
        itemBuilder: (_, index) => RoundedContainer(
          padding: const EdgeInsets.all(50.0),
          showBorder: true,
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: [
                // icon
                const Icon(Icons.local_shipping_outlined, size: iconSize),
                const SizedBox(width: 30),
                // Status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyText1!.apply(
                              color: Color.fromARGB(255, 17, 21, 236),
                              fontWeightDelta: 1,
                            ),
                      ),
                      Text(
                        '1Apr2024',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: spaceBetweenItems),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_right, size: iconSize),
                ),
                const SizedBox(height: spaceBetweenItems),
              ],
            ),
            const SizedBox(height: spaceBetweenItems),

            Row(
              children: [
                // icon
                const Icon(Icons.tag, size: iconSize),
                const SizedBox(width: 30),
                // Status and date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Processing',
                        style: Theme.of(context).textTheme.bodyText1!.apply(
                              color: Color.fromARGB(255, 17, 21, 236),
                              fontWeightDelta: 1,
                            ),
                      ),
                      Text(
                        '1Apr2024',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: spaceBetweenItems),

            Row(children: [
              Expanded(
                child: Row(
                  children: [
                    // icon
                    const Icon(Icons.calendar_month_outlined, size: iconSize),
                    const SizedBox(width: 30),
                    // Status and date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Processing',
                            style: Theme.of(context).textTheme.bodyText1!.apply(
                                  color: Color.fromARGB(255, 17, 21, 236),
                                  fontWeightDelta: 1,
                                ),
                          ),
                          Text(
                            '1Apr2024',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    // icon
                    const Icon(Icons.calendar_month_rounded, size: iconSize),
                    const SizedBox(width: 30),
                    // Status and date
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Processing',
                            style: Theme.of(context).textTheme.bodyText1!.apply(
                                  color: Color.fromARGB(255, 17, 21, 236),
                                  fontWeightDelta: 1,
                                ),
                          ),
                          Text(
                            '1Apr2024',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ]),
            // ],
          ]),
          //],
        ),
      ),
      showBottomNavBar: true,
      initialIndex: 4,
    );
  }
}
