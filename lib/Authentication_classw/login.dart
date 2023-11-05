import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/Authentication_classw/home.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController otpController = TextEditingController();

  FirebaseAuth auth = FirebaseAuth.instance;
  bool otpVisibility = false;
  User? user;
  String verificationID = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: NetworkImage("https://images.unsplash.com/photo-1545147986-a9d6f2ab03b5?auto=format&fit=crop&q=80&w=1888&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
      
      // appBar: AppBar(
      //   title: Text(
      //     "Phone Auth",
      //     style: TextStyle(
      //       fontSize: 30,
      //     ),
      //   ),
      //   backgroundColor: Colors.indigo[900],
      // ),
      child: Column(
      //decoration: DecoratedBox(decoration: DecorationImage(image: NetworkImage("")))
      //margin: EdgeInsets.all(10),
      //child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

        const Padding(
          padding: EdgeInsets.all(4),
          child: TextField(
            decoration: InputDecoration(border: OutlineInputBorder(),
              //border: OutlineInputBorder(),
            hintText: "User Name",
            prefix: Padding(
                padding: EdgeInsets.all(4),
                child: Text(''),
              ),),
            //controller: email,
          ),
        ),

        Padding(padding:EdgeInsets.all(4),
         child: TextField(
            controller: phoneController,
            decoration: InputDecoration(border: OutlineInputBorder(),
              hintText: 'Phone Number',
              // prefix: Padding(
              //   padding: EdgeInsets.all(4),
              //   child: Text('+91'),
              // ),
         ),
            maxLength: 10,
            keyboardType: TextInputType.phone,
          ),),
          Visibility(
            child: TextField(
              controller: otpController,
              decoration: InputDecoration(border: OutlineInputBorder(),
                hintText: 'OTP',
                prefix: Padding(
                  padding: EdgeInsets.all(4),
                  child: Text(''),
                ),
              ),
              maxLength: 6,
              keyboardType: TextInputType.number,
            ),
            visible: otpVisibility,
          ),
          SizedBox(
            height: 10,
          ),
          MaterialButton(
            color: Colors.brown,
            onPressed: () {
              if (otpVisibility) {
                verifyOTP();
              } else {
                loginWithPhone();
              }
            },
            child: Text(
              otpVisibility ? "Verify" : "Login",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
        ],
      )));
  }

  void loginWithPhone() async {
    auth.verifyPhoneNumber(
      phoneNumber: "+91" + phoneController.text,
      verificationCompleted: (PhoneAuthCredential credential) async {
        await auth.signInWithCredential(credential).then((value) {
          print("You are logged in successfully");
        });
      },
      verificationFailed: (FirebaseAuthException e) {
        print(e.message);
      },
      codeSent: (String verificationId, int? resendToken) {
        otpVisibility = true;
        verificationID = verificationId;
        setState(() {});
      },
      codeAutoRetrievalTimeout: (String verificationId) {},
    );
  }

  void verifyOTP() async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
        verificationId: verificationID, smsCode: otpController.text);

    await auth.signInWithCredential(credential).then(
      (value) {
        setState(() {
          user = FirebaseAuth.instance.currentUser;
        });
      },
    ).whenComplete(
      () {
        if (user != null) {
          Fluttertoast.showToast(
            msg: "You are logged in successfully",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => Home(),
            ),
          );
        } else {
          Fluttertoast.showToast(
            msg: "your login is failed",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        }
      },
    );
  }
}