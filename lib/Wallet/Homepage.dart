import 'package:flutter/material.dart';

class WalletHome extends StatefulWidget {
  const WalletHome({super.key});

  @override
  State<WalletHome> createState() => _WalletHomeState();
}

class _WalletHomeState extends State<WalletHome> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var img =
        "https://www.creativeboom.com/uploads/articles/f5/f5fafa6ee140fa9ba6f65e3721606aade1291861_810.jpg";
    var visa =
        "https://static.vecteezy.com/system/resources/previews/022/100/873/original/visa-logo-transparent-free-png.png";

    Widget CARD(int n, int m, int y) {
      return Container(
        color: Colors.green,
        height: height * 0.3,
        width: width * 0.9,
        decoration: BoxDecoration(
            shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(20)),
        child: Stack(
          alignment: Alignment.centerLeft,
          clipBehavior: Clip.hardEdge,
          children: [
            Positioned(
              top: 20,
              left: 15,
              child: Text(
                "Card No. ",
                style: TextStyle(color: Colors.black.withOpacity(0.3)),
              ),
            ),
            Positioned(
              top: 40,
              left: 15,
              child: Text("**** **** **** ${n}"),
            ),
            Positioned(
              top: 70,
              left: 15,
              child: Text(
                "Expires  ${m}/${y}",
                style: TextStyle(color: Colors.black.withOpacity(0.3)),
              ),
            ),
            Positioned(
                top: 10, left: 10, child: Image(image: NetworkImage(visa))),
          ],
        ),
      );
    }

    return Scaffold(
      drawer: Drawer(),
      body: Center(
        child: Column(
          children: [
            Card(
                elevation: 50,
                clipBehavior: Clip.hardEdge,
                child: Container(
                  height: height * 0.4,
                  width: width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(img), fit: BoxFit.cover)),
                  child: Stack(
                    children: [
                      Positioned(
                          top: height * 0.1,
                          left: 20,
                          child: Text(
                            "Wallet",
                            style: TextStyle(
                                fontSize: 50,
                                color: Color.fromARGB(255, 171, 13, 13)),
                          )),
                      Positioned(
                          top: 20,
                          right: 10,
                          child: IconButton(
                            onPressed: () {},
                            icon:
                                Icon(Icons.notifications, color: Colors.black),
                          )),
                      Positioned(
                          top: height * 0.1,
                          right: 10,
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add, color: Colors.black),
                          )),
                      Positioned(
                        top: height * 0.3,
                        child: Container(
                          height: height * 0.3,
                          width: width * 0.9,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            clipBehavior: Clip.hardEdge,
                            itemCount: 5,
                            itemBuilder: (context, index) => CARD(9988, 06, 23),
                          ),
                        ),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
