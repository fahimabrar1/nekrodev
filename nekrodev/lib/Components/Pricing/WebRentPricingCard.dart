import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';

import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

class NameAndValue {
  String name;
  String value;
  NameAndValue(this.name, this.value);
}

class WebRentPricingDataHolder {
  String packageName;
  String packagePrice;
  List<NameAndValue> _nameAndVal;
  WebRentPricingDataHolder(
      this.packageName, this.packagePrice, this._nameAndVal);
  // NameAndValue domain_Data;
  // NameAndValue hostingData;
  // NameAndValue ssd_Data;
  // NameAndValue bandwidthData;
  // NameAndValue sslCertificate_Data;
  // NameAndValue emailAccounts_Data;
  // NameAndValue upTimeGurantee_Data;
  // NameAndValue adminPanel_Data;
  // NameAndValue adminAccess_Data;
  // NameAndValue staffAccess_Data;
  // NameAndValue inventoryManagement_Data;
  // NameAndValue paymentGateway_Data;
  // NameAndValue backupGurantee_Data;
  // NameAndValue websiteType_Data;
  // NameAndValue monthlyPrice_Data;
}

class WebRentPricingCard extends StatelessWidget {
  final WebRentPricingDataHolder webRentPricingDataHolder;
  WebRentPricingCard({Key? key, required this.webRentPricingDataHolder})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
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
                        topLeft: Radius.circular(cardBorderRadius),
                        topRight: Radius.circular(cardBorderRadius),
                      ),
                    ),
                    height: 100,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: Text(
                          webRentPricingDataHolder.packageName,
                          style:
                              Fonts.gRubik(24, MyColor.white, FontWeight.bold),
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[0].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[0].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),
            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),

            //Hosting
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[1].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[1].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),

            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //SSD
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[2].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[2].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),

            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Bandwidth
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[3].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[3].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),

            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //SSL Certificate
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[4].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[4].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),

            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Email Accounts
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[5].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[5].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),
            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Admin Panel
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[6].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[6].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),

            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Admin Access
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[7].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[7].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),
            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Staff Access
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[8].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[8].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),
            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),

            //Inventory Management
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[9].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[9].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),

            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Payment gateway
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[10].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[10].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),
            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Backup Gurantee
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[11].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[11].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),
            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Up Time Gurantee
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[12].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[12].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
                  ),
                ],
              ),
            ),
            //Divider
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 2, right: mobileBorderMargin * 2),
              child: Divider(),
            ),
            //Website Type
            Padding(
              padding: EdgeInsets.only(
                  left: mobileBorderMargin * 1.5,
                  right: mobileBorderMargin * 1.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    webRentPricingDataHolder._nameAndVal[13].name,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                  Text(
                    webRentPricingDataHolder._nameAndVal[13].value,
                    style: Fonts.gRubik(14, MyColor.blackFont, FontWeight.w400),
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
                    webRentPricingDataHolder.packagePrice,
                    style: Fonts.gRubik(16, MyColor.blackFont, FontWeight.w300),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
