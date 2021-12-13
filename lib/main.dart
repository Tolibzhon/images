import 'package:flutter/material.dart';
import 'package:homework_images/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ',
      debugShowCheckedModeBanner: false,
      home: Image(),
    );
  }
}

class Image extends StatefulWidget {
  const Image({Key? key}) : super(key: key);

  @override
  State<Image> createState() => _ImageState();
}

class _ImageState extends State<Image> {
  bool passwordShow = true;
  String username = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text(
        //     "Figma Screen",
        //     style: TextStyle(fontSize: 26),
        //   ),
        // ),
        body: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Вход",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.black, fontSize: 26),
          ),
          SizedBox(
            height: 26,
          ),
          Container(
              color: const Color.fromRGBO(249, 248, 255, 1),
              child: TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (!value!.contains("@")) {
                    return 'E-mail должен содержать - @ ';
                  } else {
                    return null;
                  }
                },
                // onChanged: (values) => setState(() => username = values),
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade300)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "E-mail",
                    hintStyle: TextStyle(color: Colors.purple.shade300)),
              )),
          SizedBox(
            height: 20,
          ),
          Container(
              color: const Color.fromRGBO(249, 248, 255, 1),
              child: TextField(
                obscureText: passwordShow,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordShow = !passwordShow;
                        });
                      },
                      icon: Icon(
                        passwordShow ? Icons.visibility_off : Icons.visibility,
                        color: Color.fromRGBO(208, 208, 208, 1),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple.shade300)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(width: 0.1),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.purple.shade300)),
              )),
          SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SecondPage()),
              );
            },
            child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      // spreadRadius: 5,
                      blurRadius: 3,
                      offset: Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                alignment: Alignment.center,
                width: 130,
                height: 50,
                child: const Text(
                  "Войти",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                )),
          )
        ],
      ),
    ));
  }
}
