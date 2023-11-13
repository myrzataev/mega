import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String hexCode1 = "#8C4AE2";
    String hexCode2 = "#743BD1";

    Color color1 = HexColor(hexCode1);
    Color color2 = HexColor(hexCode2);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:150),
                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 329,
                        height: 45,
                        // margin: EdgeInsets.only(left: 23, top: 387),
                        child: const Center(
                          child: Text(
                            'Добро пожаловать!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight:FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Container(
                        width: 319,
                        height: 38,
                        // margin: EdgeInsets.only(
                        //   left: 28,
                        // ),
                        child: const Center(
                          child: Text(
                            'Приветствуем вас на площадке аренды строительной техники',
                            textAlign: TextAlign.center,
                
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                         
                        
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70),
                        child: Button(text: 'Регистрация', height1: 60, width1: 343, ),
                      ),
          
                      Padding(
                        padding: const EdgeInsets.only(top:20),
                        child: Container(
                          width: 250,
                          height: 47,
                          child: TextButton(onPressed: (){},
                          child:Text('У меня уже есть аккаунт',               
                              style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16, color: Colors.white),
                              textAlign: TextAlign.center,
                              ),
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                backgroundColor: Colors.transparent,
                              ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 70,),
                        child: Button(text: 'Магазин автозапчастей',height1: 34, width1: 168,fontSize1: 12,fontWeight: FontWeight.w700, radius: 39.07,borderradius: 1.56,),
                      )
                    ],
                  ),
                ),
              ),
          ),
        ),
      ),
    );
  }
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
class Button extends StatelessWidget {
  final String text;
  final Color color;
  final double width1;
  final double height1;
  final double radius;
  final double fontSize1;
  final double borderradius;

  final FontWeight fontWeight;
  const Button({super.key, required this.text, this.color = Colors.transparent, required this.width1, required this.height1, this.fontSize1 = 18, this.radius = 50, this.fontWeight = FontWeight.w700, this.borderradius = 2});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width1,
        height: height1,
        child: ElevatedButton(onPressed: (){},
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: Colors.transparent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            side: const BorderSide(
              width: 2,
              color: Colors.white,
            )
          
          ),
          child: Text(
            text, style: TextStyle(fontSize: fontSize1,
            fontWeight: fontWeight,),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
