import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/Painters/TrapiShape.dart';

import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

class PricingPanel extends StatelessWidget {
  const PricingPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PricingPanel_Desktop();
  }
}

class PricingPanel_Desktop extends StatefulWidget {
  double? laptopWidth;

  PricingPanel_Desktop({this.laptopWidth, Key? key}) : super(key: key);

  @override
  _PricingPanel_DesktopState createState() => _PricingPanel_DesktopState();
}

class _PricingPanel_DesktopState extends State<PricingPanel_Desktop> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        //height: 700,
        //color: MyColor.white,
        width: (widget.laptopWidth != null)
            ? widget.laptopWidth
            : desktopContainerWidth,
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(top: 50, bottom: 10),
                      child: Container(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Pricing Plans",
                                style: Fonts.gRubik(
                                    54, MyColor.blackFont, FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 50),
                      child: Container(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    "Chose the plan that fits your requirements",
                                style: Fonts.gRubik(
                                    21,
                                    MyColor.blackFont.withOpacity(0.5),
                                    FontWeight.normal),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        elevation: 5,
                        child: Container(
                          width: 320,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: MyColor.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(cardBorderRadius),
                                          topRight:
                                              Radius.circular(cardBorderRadius),
                                        ),
                                      ),
                                      height: 100,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Basic Plan",
                                            style: Fonts.gRubik(24,
                                                MyColor.white, FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //Free Domain

                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Domain (.xyz)",
                                      style: Fonts.gRubik(16, MyColor.blackFont,
                                          FontWeight.w300),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Hosting
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hosting",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSD
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSD",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "500 MB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Bandwidth
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bandwidth",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "5 GB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSL Certificate
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSL Certificate",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Email Accounts
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Email Accounts",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Panel
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Panel",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Available",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Staff Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Staff Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Inventory Management
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Inventory Management",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Payment gateway
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment Gateway",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Backup Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Backup Gurantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Weekly",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Up Time Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Up Time Guarantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "99.90%",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Website Type
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Website Type",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "EXCEPT ECOMMERCE",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 50),

                              //Price
                              Container(
                                height: 50,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "tk 1999/mo",
                                      style: Fonts.gRubik(
                                          24, MyColor.blue, FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        elevation: 5,
                        child: Container(
                          width: 320,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyColor.blue,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  cardBorderRadius),
                                              topRight: Radius.circular(
                                                  cardBorderRadius))),
                                      height: 100,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Basic Plan",
                                            style: Fonts.gRubik(24,
                                                MyColor.white, FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //Free Domain

                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Domain (.xyz)",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Hosting
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hosting",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSD
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSD",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "500 MB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Bandwidth
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bandwidth",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "5 GB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSL Certificate
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSL Certificate",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Email Accounts
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Email Accounts",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Panel
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Panel",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Available",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Staff Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Staff Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Inventory Management
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Inventory Management",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Payment gateway
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment Gateway",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Backup Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Backup Gurantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Weekly",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Up Time Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Up Time Guarantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "99.90%",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Website Type
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Website Type",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "EXCEPT ECOMMERCE",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 50),

                              //Price
                              Container(
                                height: 50,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "tk 1999/mo",
                                      style: Fonts.gRubik(
                                          24, MyColor.blue, FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        elevation: 5,
                        child: Container(
                          width: 320,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyColor.blue,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  cardBorderRadius),
                                              topRight: Radius.circular(
                                                  cardBorderRadius))),
                                      height: 100,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Basic Plan",
                                            style: Fonts.gRubik(24,
                                                MyColor.white, FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //Free Domain

                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Domain (.xyz)",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Hosting
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hosting",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSD
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSD",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "500 MB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Bandwidth
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bandwidth",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "5 GB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSL Certificate
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSL Certificate",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Email Accounts
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Email Accounts",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Panel
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Panel",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Available",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Staff Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Staff Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Inventory Management
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Inventory Management",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Payment gateway
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment Gateway",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Backup Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Backup Gurantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Weekly",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Up Time Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Up Time Guarantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "99.90%",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Website Type
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Website Type",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "EXCEPT ECOMMERCE",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 50),

                              //Price
                              Container(
                                height: 50,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "tk 1999/mo",
                                      style: Fonts.gRubik(
                                          24, MyColor.blue, FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Card(
                        color: Colors.white,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        elevation: 5,
                        child: Container(
                          width: 320,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: MyColor.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft:
                                              Radius.circular(cardBorderRadius),
                                          topRight:
                                              Radius.circular(cardBorderRadius),
                                        ),
                                      ),
                                      height: 100,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Basic Plan",
                                            style: Fonts.gRubik(24,
                                                MyColor.white, FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //Free Domain

                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Domain (.xyz)",
                                      style: Fonts.gRubik(16, MyColor.blackFont,
                                          FontWeight.w300),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Hosting
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hosting",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSD
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSD",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "500 MB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Bandwidth
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bandwidth",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "5 GB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSL Certificate
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSL Certificate",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Email Accounts
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Email Accounts",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Panel
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Panel",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Available",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Staff Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Staff Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Inventory Management
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Inventory Management",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Payment gateway
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment Gateway",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Backup Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Backup Gurantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Weekly",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Up Time Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Up Time Guarantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "99.90%",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Website Type
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Website Type",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "EXCEPT ECOMMERCE",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 50),

                              //Price
                              Container(
                                height: 50,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "tk 1999/mo",
                                      style: Fonts.gRubik(
                                          24, MyColor.blue, FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        elevation: 5,
                        child: Container(
                          width: 320,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyColor.blue,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  cardBorderRadius),
                                              topRight: Radius.circular(
                                                  cardBorderRadius))),
                                      height: 100,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Basic Plan",
                                            style: Fonts.gRubik(24,
                                                MyColor.white, FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //Free Domain

                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Domain (.xyz)",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Hosting
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hosting",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSD
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSD",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "500 MB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Bandwidth
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bandwidth",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "5 GB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSL Certificate
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSL Certificate",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Email Accounts
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Email Accounts",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Panel
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Panel",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Available",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Staff Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Staff Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Inventory Management
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Inventory Management",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Payment gateway
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment Gateway",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Backup Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Backup Gurantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Weekly",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Up Time Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Up Time Guarantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "99.90%",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Website Type
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Website Type",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "EXCEPT ECOMMERCE",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 50),

                              //Price
                              Container(
                                height: 50,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "tk 1999/mo",
                                      style: Fonts.gRubik(
                                          24, MyColor.blue, FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        margin: EdgeInsets.all(10),
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(cardBorderRadius),
                        ),
                        elevation: 5,
                        child: Container(
                          width: 320,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: MyColor.blue,
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(
                                                  cardBorderRadius),
                                              topRight: Radius.circular(
                                                  cardBorderRadius))),
                                      height: 100,
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          margin: EdgeInsets.only(bottom: 20),
                                          child: Text(
                                            "Basic Plan",
                                            style: Fonts.gRubik(24,
                                                MyColor.white, FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),

                              //Free Domain

                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Domain (.xyz)",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Hosting
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Hosting",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSD
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSD",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "500 MB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Bandwidth
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Bandwidth",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "5 GB",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //SSL Certificate
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "SSL Certificate",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Free",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Email Accounts
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Email Accounts",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Panel
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Panel",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Available",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Admin Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Admin Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "1",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Staff Access
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Staff Access",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),

                              //Inventory Management
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Inventory Management",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Payment gateway
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Payment Gateway",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "None",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Backup Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Backup Gurantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "Weekly",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Up Time Gurantee
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Up Time Guarantee",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "99.90%",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),
                              //Divider
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 2,
                                    right: mobileBorderMargin * 2),
                                child: Divider(),
                              ),
                              //Website Type
                              Padding(
                                padding: EdgeInsets.only(
                                    left: mobileBorderMargin * 1.5,
                                    right: mobileBorderMargin * 1.5),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Website Type",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                    Text(
                                      "EXCEPT ECOMMERCE",
                                      style: Fonts.gRubik(14, MyColor.blackFont,
                                          FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ),

                              SizedBox(height: 50),

                              //Price
                              Container(
                                height: 50,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(
                                      "tk 1999/mo",
                                      style: Fonts.gRubik(
                                          24, MyColor.blue, FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PricingPanel_Tablet extends StatefulWidget {
  const PricingPanel_Tablet({Key? key}) : super(key: key);

  @override
  _PricingPanel_TabletState createState() => _PricingPanel_TabletState();
}

class _PricingPanel_TabletState extends State<PricingPanel_Tablet> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class PricingPanel_Mobile extends StatefulWidget {
  const PricingPanel_Mobile({Key? key}) : super(key: key);

  @override
  _PricingPanel_MobileState createState() => _PricingPanel_MobileState();
}

class _PricingPanel_MobileState extends State<PricingPanel_Mobile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
