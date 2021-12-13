import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("kjsflskdjf"),
      // ),
      body: SafeArea(
        child: Container(
          height: 800,
          child: Stack(children: [
            Container(
              height: 280,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  image: new DecorationImage(
                    image: new AssetImage("assets/images/background.png"),
                    fit: BoxFit.fill,
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Главная",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 90,
                    width: 339,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/molniya.png", height: 70),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Начните зарабатывать!",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              Text(
                                "Приобретите тариф Behype-PRO\n и начните свою карьеру!",
                                style: TextStyle(fontSize: 12),
                              ),
                            ]),
                        SizedBox(
                          width: 15,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 255,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                width: 361,
                height: 579,
                child: Padding(
                  padding: const EdgeInsets.only(left: 19, right: 19),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 44,
                        ),
                        Text(
                          "Категории",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black),
                        ),
                        SizedBox(
                          height: 19,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              width: 97,
                              height: 114,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/reklama.png",
                                    width: 80,
                                  ),
                                  Text(
                                    "Реклама",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "106 кампаний",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 97,
                              height: 114,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/piar.png",
                                    width: 45,
                                  ),
                                  Text(
                                    "Взаимопиар",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "56 заявок",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 97,
                              height: 114,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.blueAccent),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    "assets/images/barter.png",
                                    width: 70,
                                  ),
                                  Text(
                                    "Бартер",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "245 заявок",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.black),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 44,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Рекламные кампании",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                alignment: Alignment.center,
                                width: 60,
                                height: 22,
                                child: const Text(
                                  "Войти",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                )),
                          ],
                        ),
                        SizedBox(height: 30),
                        Container(
                          width: 160,
                          height: 152,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.blueAccent),
                              gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xff6322E0),
                                  Color(0xffD96DFF),
                                ],
                              )),
                          child: Column(
                            children: [
                              Container(
                                child: Image.asset(
                                  "assets/images/pansil.png",
                                  width: 140,
                                ),
                              ),
                              Spacer(),
                              Container(
                                alignment: Alignment.center,
                                height: 38,
                                width: 170,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Text(
                                  "В новом обновлении",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
