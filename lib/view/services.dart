import 'package:aananditeckass/constant/color.dart';
import 'package:flutter/material.dart';

class SelectServices extends StatefulWidget {
  SelectServices({super.key});

  @override
  State<SelectServices> createState() => _SelectServicesState();
}

class _SelectServicesState extends State<SelectServices> {
  List<String> service = [
    "Car",
    "Car Wash",
    "Deep Clean",
    "Car Detailing",
    "Waterless cleaning",
    "Car Cleaning",
    "Car Interior",
    "Car Exterior",
    "Car Parts",
    "Car Service",
    "Car Repairs",
    "Car Accessories",
    "Car Tires",
    "Car Battery"
  ];
  String selectedService = "Car";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          title: Text(
            'Services',
            style: TextStyle(color: blackColor, fontWeight: FontWeight.w500),
          ),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                      service.length,
                      (index) => Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedService = service[index];
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                decoration: BoxDecoration(
                                  color: selectedService == service[index]
                                      ? const Color.fromARGB(
                                          255,
                                          250,
                                          0,
                                          0,
                                        )
                                      : whiteColor,
                                  border:
                                      Border.all(color: Colors.grey, width: 1),
                                  borderRadius: BorderRadius.circular(6),
                                  // color: greyColor,
                                ),
                                child: Text(
                                  service[index],
                                  style: TextStyle(
                                      color: selectedService == service[index]
                                          ? whiteColor
                                          : blackColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )),
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  alignment: Alignment.center,
                  color: greyColor,
                  child: Text(
                    selectedService,
                    style: TextStyle(color: blackColor, fontSize: 20),
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 260,
              color: greyColor,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.only(bottom: 20),
                        color: whiteColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 5),
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(
                                    255,
                                    250,
                                    0,
                                    0,
                                  ),
                                  borderRadius: BorderRadius.circular(6)),
                              child: Text(
                                "RECOMMENDED",
                                style:
                                    TextStyle(color: whiteColor, fontSize: 12),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Odour Eleminator Package",
                                          softWrap: true,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: blackColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600)),
                                      const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              size: 6,
                                              color: Colors.blueGrey,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Floor cleaning",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.blueGrey),
                                            ),
                                          ]),
                                      const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              size: 6,
                                              color: Colors.blueGrey,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Dicky Deep Cleaning (Boot)",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.blueGrey),
                                            ),
                                          ]),
                                      const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.circle,
                                              size: 6,
                                              color: Colors.blueGrey,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              "Odour Eliminator Door",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.blueGrey),
                                            ),
                                          ]),
                                      InkWell(
                                          onTap: () {},
                                          child: Container(
                                              margin: const EdgeInsets.only(
                                                  top: 10),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 5),
                                              decoration: BoxDecoration(
                                                  color: whiteColor,
                                                  border: Border.all(
                                                      color: Colors.grey,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          20)),
                                              child: const Row(
                                                children: [
                                                  Text(
                                                    "+16 More",
                                                    style: TextStyle(
                                                        color: Colors.blue),
                                                  ),
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.blue,
                                                    size: 20,
                                                  )
                                                ],
                                              )))
                                    ]),
                                Container(
                                  width: 150,
                                  height: 150,
                                  decoration: BoxDecoration(
                                      color: greyColor,
                                      borderRadius: BorderRadius.circular(6),
                                      image: DecorationImage(
                                          image: AssetImage(index % 2 == 0
                                              ? "image/service2.jpg"
                                              : "image/service1.jpg"),
                                          fit: BoxFit.cover)),
                                )
                              ],
                            ),
                            const Row(children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent,
                              ),
                              Text(
                                "4.7",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.circle,
                                color: Colors.blueGrey,
                                size: 5,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "434 Rating",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              )
                            ]),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "₹ 3399",
                                            style: TextStyle(
                                                decoration:
                                                    TextDecoration.lineThrough,
                                                fontStyle: FontStyle.italic,
                                                color: Colors.grey),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "₹ 3300",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      Text(
                                        "60% off",
                                        style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ]),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 150,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                          ),
                                          backgroundColor: blackColor,
                                        ),
                                        onPressed: () {},
                                        child: Text(
                                          "Add",
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: const Text(
                                "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ",
                                softWrap: false,
                                overflow: TextOverflow.clip,
                                maxLines: 1,
                                style: TextStyle(color: Colors.blueGrey),
                              ),
                            ),
                          ],
                        ));
                  },
                  itemCount: 10),
            )
          ],
        ));
  }
}
