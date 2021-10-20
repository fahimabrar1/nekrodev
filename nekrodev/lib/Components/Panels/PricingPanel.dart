import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Components/Pricing/WebRentPricingCard.dart';

import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

class PricingPanel extends StatelessWidget {
  PricingPanel({Key? key}) : super(key: key);

  List<WebRentPricingDataHolder> _webRentCardList = [
    new WebRentPricingDataHolder("Basic", "1499", [
      new NameAndValue("Domain (.xyz)", "Free"),
      new NameAndValue("Hosting", "Free"),
      new NameAndValue("SSD", "500 MB"),
      new NameAndValue("Bandwidth", "5 GB"),
      new NameAndValue("SSL Certificate", "Free"),
      new NameAndValue("Email Accounts", "1"),
      new NameAndValue("Up Time Guarantee", "99.99%"),
      new NameAndValue("Admin Panel", "Available"),
      new NameAndValue("Admin Access", "1"),
      new NameAndValue("Staff Access", "No"),
      new NameAndValue("Inventory Management", "No"),
      new NameAndValue("Payment Gateway", "No"),
      new NameAndValue("Backup Gurantee", "Weekly"),
      new NameAndValue("Website Type", "EXCEPT eCOMMERCE"),
    ]),
    new WebRentPricingDataHolder("Basic", "1999", [
      new NameAndValue("Domain (.xyz)", "Free"),
      new NameAndValue("Hosting", "Free"),
      new NameAndValue("SSD", "1 GB"),
      new NameAndValue("Bandwidth", "10 GB"),
      new NameAndValue("SSL Certificate", "Free"),
      new NameAndValue("Email Accounts", "1"),
      new NameAndValue("Up Time Guarantee", "99.99%"),
      new NameAndValue("Admin Panel", "Available"),
      new NameAndValue("Admin Access", "1"),
      new NameAndValue("Staff Access", "1"),
      new NameAndValue("Inventory Management", "1"),
      new NameAndValue("Payment Gateway", "(Merchat Acc. Only)"),
      new NameAndValue("Backup Gurantee", "Weekly"),
      new NameAndValue("Website Type", "Any"),
    ]),
    new WebRentPricingDataHolder("Basic", "1299", [
      new NameAndValue("Domain (.xyz)", "Free"),
      new NameAndValue("Hosting", "Free"),
      new NameAndValue("SSD", "5 GB"),
      new NameAndValue("Bandwidth", "50 GB"),
      new NameAndValue("SSL Certificate", "Free"),
      new NameAndValue("Email Accounts", "2"),
      new NameAndValue("Up Time Guarantee", "99.99%"),
      new NameAndValue("Admin Panel", "Available"),
      new NameAndValue("Admin Access", "1"),
      new NameAndValue("Staff Access", "2"),
      new NameAndValue("Inventory Management", "Available"),
      new NameAndValue("Payment Gateway", "Available"),
      new NameAndValue("Backup Gurantee", "Weekly"),
      new NameAndValue("Website Type", "Any"),
    ]),
    new WebRentPricingDataHolder("Basic", "2299", [
      new NameAndValue("Domain (.xyz)", "Free"),
      new NameAndValue("Hosting", "Free"),
      new NameAndValue("SSD", "10 GB"),
      new NameAndValue("Bandwidth", "100 GB"),
      new NameAndValue("SSL Certificate", "Free"),
      new NameAndValue("Email Accounts", "3"),
      new NameAndValue("Up Time Guarantee", "99.99%"),
      new NameAndValue("Admin Panel", "Available"),
      new NameAndValue("Admin Access", "2"),
      new NameAndValue("Staff Access", "3"),
      new NameAndValue("Inventory Management", "Available"),
      new NameAndValue("Payment Gateway", "Available"),
      new NameAndValue("Backup Gurantee", "Daily"),
      new NameAndValue("Website Type", "Any"),
    ]),
    new WebRentPricingDataHolder("Basic", "3799", [
      new NameAndValue("Domain (.xyz)", "Free"),
      new NameAndValue("Hosting", "Free"),
      new NameAndValue("SSD", "20 GB"),
      new NameAndValue("Bandwidth", "200 GB"),
      new NameAndValue("SSL Certificate", "Free"),
      new NameAndValue("Email Accounts", "5"),
      new NameAndValue("Up Time Guarantee", "99.99%"),
      new NameAndValue("Admin Panel", "Available"),
      new NameAndValue("Admin Access", "3"),
      new NameAndValue("Staff Access", "5"),
      new NameAndValue("Inventory Management", "Available"),
      new NameAndValue("Payment Gateway", "Available"),
      new NameAndValue("Backup Gurantee", "Daily"),
      new NameAndValue("Website Type", "Any"),
    ]),
    new WebRentPricingDataHolder("Basic", "5999", [
      new NameAndValue("Domain (.xyz)", "Free"),
      new NameAndValue("Hosting", "Free"),
      new NameAndValue("SSD", "50 GB"),
      new NameAndValue("Bandwidth", "500 GB"),
      new NameAndValue("SSL Certificate", "Free"),
      new NameAndValue("Email Accounts", "Unlimited"),
      new NameAndValue("Up Time Guarantee", "99.99%"),
      new NameAndValue("Admin Panel", "Available"),
      new NameAndValue("Admin Access", "5"),
      new NameAndValue("Staff Access", "10"),
      new NameAndValue("Inventory Management", "Available"),
      new NameAndValue("Payment Gateway", "Available"),
      new NameAndValue("Backup Gurantee", "Daily"),
      new NameAndValue("Website Type", "Any"),
    ]),
  ];

  @override
  Widget build(BuildContext context) {
    return PricingPanel_Desktop(
      webRentCardList: _webRentCardList,
    );
  }
}

class PricingPanel_Desktop extends StatefulWidget {
  double? laptopWidth;
  final List<WebRentPricingDataHolder> webRentCardList;

  PricingPanel_Desktop(
      {this.laptopWidth, required this.webRentCardList, Key? key})
      : super(key: key);

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
            Flexible(
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
                      for (var i = 0;
                          i < widget.webRentCardList.length.floor() / 2;
                          i++)
                        WebRentPricingCard(
                            webRentPricingDataHolder: widget.webRentCardList[i])
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (var i = 3; i < widget.webRentCardList.length; i++)
                        WebRentPricingCard(
                            webRentPricingDataHolder: widget.webRentCardList[i])
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
