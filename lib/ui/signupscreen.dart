import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertest/palette.dart';
import 'package:fluttertest/ui/loginscreen.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool validate = false;
  bool p_isObscure = true;
  bool pc_isObscure = false;

  bool checkbox = false;
  bool _obsecureText = true;
  bool _obsecureTextMobile = false;

  var fname, lname;

  void _toggleObscured() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }

  void _toggleObscured2() {
    setState(() {
      _obsecureTextMobile = !_obsecureTextMobile;
    });
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.inputfieldbackgroundcolor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Padding(
              padding: EdgeInsets.all(1),
              child: Container(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                padding: EdgeInsets.only(),
                                alignment: Alignment.bottomCenter,
                                child: Image.asset(
                                  "assets/images/newlogo.png",
                                  height: 250,
                                  width: 250,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(top: 190),
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(fontSize: 28),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Stack(
                        children: [
                          Stack(
                            children: [
                              Container(
                                child: Container(
                                    alignment: Alignment.bottomCenter,
                                    padding: EdgeInsets.only(),
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundImage: AssetImage(
                                        'assets/images/ic_profile.png',
                                      ),
                                      backgroundColor:
                                          Palette.inputfieldbackgroundcolor,
                                    )),
                              ),
                              Container(
                                  padding: EdgeInsets.only(left: 200, top: 40),
                                  child: IconButton(
                                    onPressed: () {
                                      Fluttertoast.showToast(
                                    msg: "Upload Phote",
                                    toastLength: Toast.LENGTH_SHORT,
                                    gravity: ToastGravity.BOTTOM,
                                    timeInSecForIosWeb: 1,
                                    backgroundColor:
                                        Palette.cursorcolor,

                                    textColor: Colors.white,
                                    fontSize: 16.0);
                                    },
                                    
                                    icon: Image.asset(
                                        'assets/images/ic_edit_icon.png'),
                                    iconSize: 10,
                                  )),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Column(
                        children: [
                          TextFormField( 
                            cursorColor: Palette.cursorcolor,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Palette.white,
                              contentPadding: const EdgeInsets.all(10),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  'assets/images/ic_profile.png',
                                  width: 0,
                                  height: 0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              disabledBorder: InputBorder.none,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              //focusColor: Palette.regfeildback,
                              hintText: 'Frist Name',
                            ),
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            validator: (fristname) {
                              if (fristname == null || fristname.isEmpty) {
                                return 'Please enter first name';
                              }
                              return null;
                            },
                            
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
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
                                  'assets/images/ic_profile.png',
                                  width: 0,
                                  height: 0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              hintText: 'Last Name',
                            ),
                            validator: (lastname) {
                              if (lastname == null || lastname.isEmpty) {
                                return 'Please enter Last name';
                              }
                              return null;
                            },
                      
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
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
                              //prefixIcon: Padding(padding: EdgeInsets.all(0.0),
                              // child: Icon(Icons.email_outlined),),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),

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
                              FilteringTextInputFormatter.deny(RegExp(r"/"))
                            ],
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
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: IntlPhoneField(
                         cursorColor: Palette.cursorcolor,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Palette.white,
                          contentPadding: const EdgeInsets.all(10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              'assets/images/ic_call.png',
                              width: 0,
                              height: 0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          // icon: const Icon(Icons.phone),
                          hintText: 'Phone Number',
                          
                        ),
                        validator: (phonenum) {
                              if (phonenum == null) {
                                return 'Please enter Contact Number';
                              }
                              return null;
                            },
                        disableLengthCheck: true,
                        initialCountryCode: 'IN',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                        showCountryFlag: false,
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 15, right: 20, left: 20),
                        child: TextFormField(
                           cursorColor: Palette.cursorcolor,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(6)
                            ],
                            obscureText: _obsecureText,
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
                                    _obsecureText
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
                            //keyboardType: TextInputType.,
                            // autovalidateMode: AutovalidateMode.onUserInteraction,
                            //maxLength: 6,
                            controller: _pass,
                            validator: (val) {
                              if (val!.isEmpty) return 'Please Your Password';
                              return null;
                            }),
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsets.only(top: 10, right: 20, left: 20),
                        child: TextFormField(
                           cursorColor: Palette.cursorcolor,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(6)
                            ],
                            obscureText: _obsecureTextMobile,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Palette.white,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              contentPadding: const EdgeInsets.all(10),
                              hintText: 'Confirm Password',
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                  'assets/images/ic_lock.png',
                                  width: 0,
                                  height: 0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              suffixIcon: GestureDetector(
                                onTap: _toggleObscured2,
                                child: Transform.scale(
                                  scale: 0.5,
                                  child: ImageIcon(
                                    _obsecureTextMobile
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
                            //keyboardType: TextInputType.number,
                            //autovalidateMode: AutovalidateMode.onUserInteraction,
                            // maxLength: 6,
                            controller: _confirmPass,
                            validator: (val) {
                              if (val!.isEmpty)
                                return 'Please Enter Confirm Password';
                              if (val != _pass.text)
                                return 'Password Not Match';
                              return null;
                            }),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, right: 20, left: 20),
                      child: Column(
                        children: [
                          TextFormField(
                             cursorColor: Palette.cursorcolor,
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(8)
                            ],
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Palette.white,
                              contentPadding: const EdgeInsets.all(10),
                              prefixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                               
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              hintText: 'Referral Code',
                            ),
                            // controller: emailCtr,
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0),
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.only(left: 5, top: 0),
                                  child: Row(
                                    children: [
                                      Checkbox(
                                        value: checkbox,
                                        onChanged: (value) {
                                          setState(() {
                                            checkbox = value!;
                                          });
                                          Border.all(
                                              color: Palette.cursorcolor);
                                        },
                                        side: BorderSide(
                                            color: Palette.cursorcolor),
                                      ),
                                      Text('I agree'),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (() {
                                    Fluttertoast.showToast(
                                              msg: "Terms and Condition Page",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Color.fromARGB(255, 219, 0, 0),
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                                  }),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 100, top: 15),
                                    //alignment: Alignment.topRight,

                                    child: Text('Terms and Condition',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                //fontFamily: KSMFontFamily.robotoRgular,
                                                color: Palette.cursorcolor)),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: (() {}),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 235, top: 15),
                                    //alignment: Alignment.topRight,
                                    child: Text('&',
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
                              Expanded(
                                child: GestureDetector(
                                  onTap: (() {
                                    Fluttertoast.showToast(
                                              msg: "Privacy Policy Page",
                                              toastLength: Toast.LENGTH_SHORT,
                                              gravity: ToastGravity.BOTTOM,
                                              timeInSecForIosWeb: 1,
                                              backgroundColor: Color.fromARGB(255, 219, 0, 0),
                                              textColor: Colors.white,
                                              fontSize: 16.0);
                                  }),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 250, top: 15),
                                    //alignment: Alignment.topRight,
                                    child: Text('Privacy Policy',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                //fontFamily: KSMFontFamily.robotoRgular,
                                                color: Palette.cursorcolor)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: SizedBox(
                        width: 300,
                        height: 40,
                        child: MaterialButton(
                          color: Palette.cursorcolor,
                          textColor: Palette.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          onPressed: () {
                            setState(() {
                              if (_formKey.currentState!.validate()) {
                                if (checkbox == pc_isObscure) {
                                  Fluttertoast.showToast(
                                      msg: "checkbox not selected",
                                      toastLength: Toast.LENGTH_SHORT,
                                      gravity: ToastGravity.BOTTOM,
                                      timeInSecForIosWeb: 1,
                                      backgroundColor:
                                          Color.fromARGB(255, 58, 54, 54),
                                      textColor: Colors.white,
                                      fontSize: 16.0);
                                } else {
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()));
                                }
                              } else {

                              }
                            });
                          },
                          child: Text('Sign Up'),
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
                                    padding: EdgeInsets.only(left: 52, top: 10),
                                    //alignment: Alignment.topRight,
                                    child: Text('Already have an account?',
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
                              Expanded(
                                child: GestureDetector(
                                  onTap: (() {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginScreen()),
                                    );
                                  }),
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 220, top: 10),
                                    //alignment: Alignment.topRight,
                                    child: Text('Login',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.copyWith(
                                                //fontFamily: KSMFontFamily.robotoRgular,
                                                color: Palette.cursorcolor)),
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
              ),
            )),
      )),
    );
  }
}
