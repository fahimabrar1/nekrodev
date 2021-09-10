import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nekrodev/Components/Fonts/Fonts.dart';
import 'package:nekrodev/Responsive/Responsive.dart';
import '../MyColors.dart';
import '../MyGlobalVaraibles.dart';

///
/// This ServicesPanel file Contains All the ServicesPanel Such As for Desktop, Mobile, Tablet
/// These Different ServicesPanel Are Used For Different Devices Using Responsive Class
///

///
/// ServicesPanel Responsive Calls All the childs Through Responsive.
///

class ServicesPanel extends StatelessWidget {
  ServicesPanel({Key? key}) : super(key: key);

  late Responsive ServicePanelResponsove = new Responsive(
      mobile: ServicesPanel_Mobile(),
      tablet: ServicesPanel_Tablet(),
      desktop: ServicesPanel_Desktop(),
      laptop: ServicesPanel_Desktop(
        laptopWidth: laptopContainerWidth,
      ));
  @override
  Widget build(BuildContext context) {
    return ServicePanelResponsove;
  }
}

///
/// This ServicesPanel_Desktop is Desktop View Of ServicesPanel
///

class ServicesPanel_Desktop extends StatefulWidget {
  double? laptopWidth;
  ServicesPanel_Desktop({Key? key, this.laptopWidth}) : super(key: key);

  @override
  _ServicesPanel_DesktopState createState() => _ServicesPanel_DesktopState();
}

class _ServicesPanel_DesktopState extends State<ServicesPanel_Desktop> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        //height: 700,
        //color: Colors.amber[100],
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
                    padding: EdgeInsets.only(top: 50, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Flexible(
                                child: FittedBox(
                                  child: Container(
                                    margin: EdgeInsets.only(right: 80),
                                    //color: Colors.red,
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        height: (widget.laptopWidth != null)
                                            ? 300
                                            : 400,
                                        width: (widget.laptopWidth != null)
                                            ? 300
                                            : 400,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                              cardBorderRadius),
                                          child: Image(
                                            fit: BoxFit.fill,
                                            image: AssetImage(
                                                "/images/pexels1.jpeg"),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.only(left: 80),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 30),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "// ",
                                              style: Fonts.gRubik(
                                                  18,
                                                  MyColor.blue,
                                                  FontWeight.normal),
                                            ),
                                            TextSpan(
                                              text: "Services",
                                              style: Fonts.gRubik(
                                                  18,
                                                  MyColor.blackFont,
                                                  FontWeight.normal),
                                            ),
                                            TextSpan(
                                              text: "//",
                                              style: Fonts.gRubik(
                                                  18,
                                                  MyColor.blue,
                                                  FontWeight.normal),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                FittedBox(
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "IT Solutions",
                                          style: Fonts.gRubik(
                                              72,
                                              MyColor.blackFont,
                                              FontWeight.bold),
                                        ),
                                        Text(
                                          "For Your Business",
                                          style: Fonts.gRubik(
                                              42,
                                              MyColor.blackFont,
                                              FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Flexible(
                                  child: Container(
                                    //color: Colors.red,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        ProvidedService(title: "Service"),
                                        ProvidedService(title: "Service"),
                                        ProvidedService(title: "Service"),
                                        ProvidedService(title: "Service"),
                                        ProvidedService(title: "Service"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

///
/// This ServicesPanel_Tablet is Tablet View Of ServicesPanel
///

class ServicesPanel_Tablet extends StatefulWidget {
  const ServicesPanel_Tablet({Key? key}) : super(key: key);

  @override
  _ServicesPanel_TabletState createState() => _ServicesPanel_TabletState();
}

class _ServicesPanel_TabletState extends State<ServicesPanel_Tablet> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

///
/// This ServicesPanel_Mobile is  Mobile View Of ServicesPanel
///

class ServicesPanel_Mobile extends StatefulWidget {
  const ServicesPanel_Mobile({Key? key}) : super(key: key);

  @override
  _ServicesPanel_MobileState createState() => _ServicesPanel_MobileState();
}

class _ServicesPanel_MobileState extends State<ServicesPanel_Mobile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

///
/// ProvidedService class is the Symbol And Text Section In Service
///

class ProvidedService extends StatelessWidget {
  String title;
  ProvidedService({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: EdgeInsets.only(
          top: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Container(
                height: 30,
                width: 30,
                color: MyColor.blue,
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    Icon(
                      Icons.approval,
                      size: 14,
                      color: MyColor.white,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              title,
              style: Fonts.gRubik(
                24,
                MyColor.blackFont,
                FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
