import 'package:aananditeckass/constant/color.dart';
import 'package:aananditeckass/view/widget/carousel.dart';
import 'package:aananditeckass/view/widget/search_field.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<Map<String, String>> vehicleList = [
    {"Name": "Pressure car wash", "Image": "image/carwash.jpg"},
    {"Name": "Underbody", "Image": "image/underbody.jpg"},
    {"Name": "Waterless cleaning", "Image": "image/waterless.jpg"},
    {"Name": "Deep cleaning", "Image": "image/carwash.jpg"},
    {"Name": "Car wash and coat", "Image": "image/underbody.jpg"},
    {"Name": "Bike washing", "Image": "image/bike.jpg"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(100, 160),
        child: Container(
          color: whiteColor,
          child: Column(children: [
            Container(
              color: redcolor,
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    Icon(
                      Icons.location_on_outlined,
                      size: 35,
                      color: whiteColor,
                    ),
                    Column(
                      children: [
                        Text(
                          "Add Address",
                          style: TextStyle(fontSize: 15, color: whiteColor),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 18,
                          color: whiteColor,
                        )
                      ],
                    )
                  ]),
                  Row(children: [
                    Column(
                      children: [
                        Text(
                          "Add Vehicle",
                          style: TextStyle(fontSize: 15, color: whiteColor),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 18,
                          color: whiteColor,
                        )
                      ],
                    ),
                    Icon(
                      Icons.car_crash_sharp,
                      size: 35,
                      color: whiteColor,
                    )
                  ]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: CustomTextField(
                labelText: "Search",
                hintText: "Search for services",
                enable: false,
              ),
            )
          ]),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height - 180,
        color: redcolor,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  // color: redcolor,
                  image: DecorationImage(
                      image: AssetImage(
                        "image/thumbnail.jpg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              // CarouselCard(),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Doorstep Autocare services",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10.0,
                          mainAxisSpacing: 10.0,
                          childAspectRatio: 1.25,
                        ),
                        padding: const EdgeInsets.all(10.0),
                        itemCount: vehicleList.length,
                        itemBuilder: (context, index) {
                          return serviceCard(vehicleList[index]);
                        },
                      ),
                      const Divider(
                        thickness: 5,
                        height: 32,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Popular services",
                          style: TextStyle(
                              color: blackColor,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      GridView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3, // Number of columns
                          crossAxisSpacing: 10.0, // Horizontal spacing
                          mainAxisSpacing: 10.0, // Vertical spacing
                          childAspectRatio:
                              3 / 4, // Width-to-height ratio of each item
                        ),
                        padding: const EdgeInsets.all(10.0),
                        itemCount: 6,
                        itemBuilder: (context, index) {
                          return popullarServiceCard();
                        },
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  serviceCard(Map vehicle) {
    return Container(
      child: Column(
        children: [
          Image.asset(
            vehicle['Image'],
            width: 80,
          ),
          Text(
            vehicle['Name'],
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  popullarServiceCard() {
    return Column(
      children: [
        Container(
          width: 120,
          height: 100,
          // width: double.infinity,
          // height: 200,
          decoration: BoxDecoration(
            color: greyColor,
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        Text(
          "Superem Luxury deep cleaning with supper",
          softWrap: true,
          textAlign: TextAlign.left,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: blackColor, fontSize: 12, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Rs. 100 \$",
              style: TextStyle(
                  color: blackColor, fontSize: 12, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  "4.7",
                  style: TextStyle(
                      color: blackColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const Icon(
                  Icons.star,
                  color: Color.fromARGB(255, 243, 193, 13),
                  size: 15,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
