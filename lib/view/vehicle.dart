import 'package:aananditeckass/constant/color.dart';
import 'package:aananditeckass/view/widget/search_field.dart';
import 'package:flutter/material.dart';

class SelectVehicle extends StatefulWidget {
  const SelectVehicle({super.key});

  @override
  State<SelectVehicle> createState() => _SelectVehicleState();
}

class _SelectVehicleState extends State<SelectVehicle> {
  // vehicleCard(){
  //   return
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios_new)),
        title: Text(
          'Select Vehicle',
          style: TextStyle(color: blackColor, fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Can not find vehicle",
                style: TextStyle(
                    color: blackColor,
                    fontWeight: FontWeight.w500,
                    fontSize: 12),
              ))
        ],
      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: CustomTextField(),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 210,
          child: SingleChildScrollView(
            child: GridView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Number of columns
                crossAxisSpacing: 10.0, // Horizontal spacing
                mainAxisSpacing: 10.0, // Vertical spacing
                childAspectRatio: 1, // Width-to-height ratio of each item
              ),
              padding: const EdgeInsets.all(10.0),
              itemCount: 18,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Container(
                      margin: EdgeInsets.only(right: 2),
                      // color: redcolor,
                      decoration: BoxDecoration(
                          color: whiteColor,
                          border: Border.all(color: greyColor),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('image/Honda.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ]),
    );
  }
}
