import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest/palette.dart';
import 'package:fluttertest/ui/forgotscreen.dart';
import 'package:fluttertest/ui/homescreen.dart';
import 'package:fluttertest/ui/signupscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   bool validate = false;
  bool p_isObscure = true;
   bool checkbox = false;
  void _toggleObscured() {
    setState(() {
      p_isObscure = !p_isObscure;
    });
  }
   final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.inputfieldbackgroundcolor,
      body: SafeArea(
        child: Expanded(
          child: Column(
            children: [
              Stack(
                children: [
                   Container(padding: EdgeInsets.only(),
                    alignment: Alignment.bottomCenter,
                child: Image.asset("assets/images/newlogo.png",height: 250,width: 250,),
              ),
              Container(padding: EdgeInsets.only(top: 190),
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Log in',
                  style: TextStyle(fontSize: 28),
                )
                ,),
                ],
              ),
             
            //     SizedBox(
            //   height: 20,
            // ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Padding(padding: EdgeInsets.all(0),
                  child: Column(
                    children: [
                      Container(
                            padding:
                                EdgeInsets.only(right: 20, left: 20),
                            child: Column(
                              children: [
                                TextFormField(
                                  cursorColor: Palette.cursorcolor,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.all(10),
                                    filled: true,
                                    fillColor: Palette.white,
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: Image.asset(
                                        'assets/images/ic_email.png',
                                        width: 0,
                                        height: 0,
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    // errorText:
                                    // validate ? 'Please Enter Email Address' : null,
                                    hintText: 'Email Address',
                                    // hintText: 'Enter E-Mail Address',
                                    //errorText: 'Please Enter Your E-Mail Address'
                                  ),
                                  //controller: emailCtr,
                                  inputFormatters: [
                                    LengthLimitingTextInputFormatter(320),
                                    FilteringTextInputFormatter.deny(" "),
                                    FilteringTextInputFormatter.deny("[]"),
                                    FilteringTextInputFormatter.deny("["),
                                    FilteringTextInputFormatter.deny("]"),
                                    FilteringTextInputFormatter.deny("^"),
                                    FilteringTextInputFormatter.deny(""),
                                    FilteringTextInputFormatter.deny("`"),
                                    FilteringTextInputFormatter.deny("/"),
                                    FilteringTextInputFormatter.deny("\\"),
                                    FilteringTextInputFormatter.allow(
                                        RegExp(r'[0-9a-zA-z._@]')),
                                    FilteringTextInputFormatter.deny(
                                        RegExp(r"/"))
                                  ],
                                  
                                  //maxLength: 250,
                                  validator: (value) {
                                    if (value?.trim().isEmpty ?? true) {
                                      return "Please Enter Email Address";
                                    } else if (!RegExp(
                                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                        .hasMatch(value ?? "")) {
                                      return "Enter Valid Email Address";
                                    }
                                    return null;
                                  },
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                                  EdgeInsets.only(top: 20, right: 20, left: 20),
                              child: TextFormField(
                                cursorColor: Palette.cursorcolor,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(6)
                                ],
                                obscureText: p_isObscure,
                                decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Palette.white,
                                  border: OutlineInputBorder(
                                  
                                      borderRadius: BorderRadius.circular(50)),
                                  contentPadding: const EdgeInsets.all(10),
                                  prefixIcon: Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Image.asset(
                                      'assets/images/ic_lock.png',
                                      width: 0,
                                      height: 0,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  hintText: 'Password',
                                  suffixIcon: GestureDetector(
                                    onTap: _toggleObscured,
                                    child: Transform.scale(
                                      scale: 0.5,
                                     child: ImageIcon(
                                        p_isObscure
                                            ? AssetImage(
                                                "assets/images/ic_eye_close.png",
                                              )
                                            : AssetImage(
                                                "assets/images/ic_eye.png",
                                              ),
                                        size: 12,
                                        color: Palette.button_color,
                                      ),
                                    ),
                                  ),
                                ),
                                //keyboardType: TextInputType.number  ,
                               // autovalidateMode: AutovalidateMode.onUserInteraction,
                                //maxLength: 6,
                               // controller: _pass,
                                validator: (val) {
                                  if (val!.isEmpty)
                                    return 'Please Your Password';
                                  return null;
                                }
                              ),
                            ),
                          ),
                         Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: SizedBox(
                            width: 320,
                            height: 40,
                            child: MaterialButton(
                              color: Palette.cursorcolor,
                              textColor: Palette.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              onPressed: () {
                                setState(() {
                                  if (_formKey.currentState!.validate()) {
                                    Fluttertoast.showToast(
                                        msg: "Record Submited",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.SNACKBAR,
                                        timeInSecForIosWeb: 1,
                                        backgroundColor:
                                            Color.fromARGB(255, 58, 54, 54),
                                        textColor: Colors.white,
                                        fontSize: 16.0);
                                  } else {
                                    //  Fluttertoast.showToast(
                                    // msg: "Record Not Submited",
                                    // toastLength: Toast.LENGTH_SHORT,
                                    // gravity: ToastGravity.BOTTOM,
                                    // timeInSecForIosWeb: 1,
                                    // backgroundColor:
                                    //     Color.fromARGB(255, 58, 54, 54),
                                    // textColor: Colors.white,
                                    // fontSize: 16.0);
                                  }
                                });
                              },
                              child: Text('Login'),
                            ),
                          ),
                        ),
                        

                        Padding(
                          padding: EdgeInsets.only(top: 25),
                          child: SizedBox(
                            width: 320,
                            height: 40,
                            child: MaterialButton(
                              color: Colors.white,
                              textColor: Palette.button_color,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                  side:
                                      BorderSide(color: Palette.cursorcolor)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const HomeScreen()),
                                );
                              },
                              child: Text(
                                'Continue as guest',
                                style: TextStyle(color: Palette.cursorcolor),
                              ),
                            ),
                          ),
                        ),
                        Container(
                         alignment: Alignment.bottomCenter,
                          child: Padding(
                                  padding: EdgeInsets.only(top:20),
                                            child: Text('Or Login With',
                                          
                                                ),
                                          ),
                        ),
                         Container(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Expanded(
                                        child: GestureDetector(
                                          onTap: (() {
                                           Fluttertoast.showToast(
                                              msg: "Facebook Login Page",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Color.fromARGB(255, 219, 0, 0),
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                                          }),
                                         child: Container(
                                    padding:
                                        EdgeInsets.only(right: 25, top: 20),
                                    child: Image.asset(
                                      'assets/images/ic_facebook.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  ),
                                        ),
                                      ),
                                    ),
                                     Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Expanded(
                                        child: GestureDetector(
                                          onTap: (() {
                                            Fluttertoast.showToast(
                                              msg: "Google Login Page",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Color.fromARGB(255, 219, 0, 0),
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                                          }),
                                         child:Container(
                                    
                                    padding: EdgeInsets.only(left: 55, top: 20),
                                    child: Image.asset(
                                      'assets/images/ic_google.png',
                                      height: 40,
                                      width: 40,
                                    ),
                                  )
                                        ),
                                      ),
                                    ),
                                  
                                  
                                ],
                              )
                            ],
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                                  onTap: (() {
                                    Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    ForgotScreen()),
                                          );
                                  }),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    
                                    child: Text('Forgot Password?',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                //fontFamily: KSMFontFamily.robotoRgular,
                                                color: Color.fromARGB(255, 0, 0, 0),decoration: TextDecoration.underline)),
                                  ),
                                ),
                        ),
                        Container(
                            padding: EdgeInsets.all(15),
                            child: Row(
                              children: [
                                Stack(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: (() {}),
                                        child: Padding(
                                          padding: EdgeInsets.only(
                                              left: 60, top: 10),
                                          //alignment: Alignment.topRight,
                                          child: Text(
                                              "Don't have an account?",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyMedium
                                                  ?.copyWith(
                                                      //fontFamily: KSMFontFamily.robotoRgular,
                                                      color: Color.fromARGB(
                                                          255, 0, 0, 0))),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Expanded(
                                        child: GestureDetector(
                                          onTap: (() {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SignUpScreen()
                                                      ),
                                            );
                                          }),
                                          child: Padding(
                                            padding: EdgeInsets.only(top:10,left: 210),
                                            //alignment: Alignment.topRight,
                                            child: Text('Sign UP',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                        //fontFamily: KSMFontFamily.robotoRgular,
                                                        color:Palette.cursorcolor)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                    ],
                  ),
                  )
                ),
              )
            )
            ],
          ) 
        )
      ),
    );
  }
  String? validateEmail(String? email) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (email == null || email.isEmpty || !regex.hasMatch(email)) {
      // Fluttertoast.showToast(
      //     msg: "Enter a valid email address",
      //     toastLength: Toast.LENGTH_SHORT,
      //     gravity: ToastGravity.BOTTOM,
      //     timeInSecForIosWeb: 1,
      //     backgroundColor: Color.fromARGB(255, 219, 0, 0),
      //     textColor: Colors.white,
      //     fontSize: 16.0);
      // //return 'Enter a valid email address';
    } else {
      return null;
    }
  }
}