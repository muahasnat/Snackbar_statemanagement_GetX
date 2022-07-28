import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text("Sneckbar"),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    child: Text("Show Snackbar"),
                    onPressed: () {
                      Get.snackbar(
                        "Title",
                        "message are mona",
                        snackPosition: SnackPosition.BOTTOM,
                        // titleText: Text("Title here"),
                        // messageText: Text("Messege here"),
                        colorText: Colors.white,
                        backgroundColor: Colors.black,
                        animationDuration: Duration(milliseconds: 1000),
                        borderRadius: 20,
                        margin: EdgeInsets.all(20),
                        // maxWidth: 100,
                        backgroundGradient: LinearGradient(
                            colors: [Colors.red, Colors.blue, Colors.green]),
                        borderColor: Colors.purple,
                        borderWidth: 4,
                        // boxShadows: [
                        //   BoxShadow(
                        //     color: Colors.purple,
                        //     offset: Offset(30,50),
                        //     spreadRadius: 20,
                        //     blurRadius:5,

                        //   )
                        // ]
                        isDismissible: true,
                        dismissDirection: DismissDirection.horizontal,
                        forwardAnimationCurve: Curves.bounceInOut,
                        //duration: Duration(microseconds: 8000),
                        icon: Icon(Icons.send, color: Colors.yellow),
                        shouldIconPulse: false,
                        leftBarIndicatorColor: Colors.grey,
                        mainButton: TextButton(
                            onPressed: () {},
                            child: Text(
                              "data",
                              style: TextStyle(color: Colors.white),
                            )),
                        onTap: (val) {},
                        overlayBlur: 5,
                        overlayColor: Colors.purple,
                        padding: EdgeInsets.all(5),
                        showProgressIndicator: true,
                        progressIndicatorBackgroundColor: Colors.black,
                        progressIndicatorValueColor:
                            AlwaysStoppedAnimation<Color>(Colors.white),
                        reverseAnimationCurve: Curves.bounceInOut,
                        snackbarStatus: (val) {},
                        //  userInputForm: Form(child: Row(children: [
                        //   Expanded(child: TextField())
                        //  ],),),
                      );
                    }),
              ],
            ),
          ),
        ));
  }
}
