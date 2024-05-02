import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sport/login_register/login.dart';

class Register extends StatefulWidget {

  @override
  _Register createState() => _Register();
}
class _Register extends State<Register> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1e1e1e),
      body: Center(
        child:  // Show loader if _isLoading is true
        SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width/8),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Welcome to NOWTV,',
                    style: GoogleFonts.inter(
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .displayLarge,
                      fontSize: 22,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width/8),
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create an account to explore amazing feature',
                    style: GoogleFonts.inter(
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .displaySmall,
                      fontSize: 14,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w200,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width/8, right:  MediaQuery.sizeOf(context).width/8),
                      child: TextField(

                        style: GoogleFonts.inter(
                          color: Color(0xffa8a8a8),
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_circle_outlined,color: Color(0xffE2E2E2),weight: 0.2,),
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          labelStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          filled: true,
                          fillColor: Color(0xff2C2C2C),
                          hintText: 'Enter Username',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Color(
                                  0xff808080)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xff2C2C2C)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          labelText: 'Username',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width/8, right:  MediaQuery.sizeOf(context).width/8),
                      child: TextField(

                        style: GoogleFonts.inter(
                          color: Color(0xffa8a8a8),
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                        decoration: InputDecoration(
                          prefixIcon: Icon(FluentIcons.mail_48_regular,color: Color(0xffE2E2E2),),
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          labelStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          filled: true,
                          fillColor: Color(0xff2C2C2C),
                          hintText: 'Enter Email',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Color(
                                  0xff808080)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xff2C2C2C)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          labelText: 'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left:  MediaQuery.sizeOf(context).width/8, right: MediaQuery.sizeOf(context).width/8),
                      child: TextField(
                        style: GoogleFonts.inter(
                          color: Color(0xffa8a8a8),
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(FluentIcons.key_32_regular,color: Color(0xffE2E2E2),size: 20,),
                          suffixIcon: Icon(FluentIcons.eye_48_filled,color: Color(0xffE2E2E2),size: 20,),
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          labelStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          filled: true,
                          fillColor: Color(0xff2C2C2C),
                          hintText: 'Enter Password',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Color(
                                  0xff808080)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xff2C2C2C)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          labelText: 'Password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left:  MediaQuery.sizeOf(context).width/8, right: MediaQuery.sizeOf(context).width/8),
                      child: TextField(
                        style: GoogleFonts.inter(
                          color: Color(0xffa8a8a8),
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                        ),
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: Icon(FluentIcons.key_32_regular,color: Color(0xffE2E2E2),size: 20,),
                          suffixIcon: Icon(FluentIcons.eye_48_filled,color: Color(0xffE2E2E2),size: 20,),
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          labelStyle: GoogleFonts.inter(
                            color: Color(0xffa8a8a8),
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                          ),
                          filled: true,
                          fillColor: Color(0xff2C2C2C),
                          hintText: 'Confirm Password',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2, color: Color(
                                  0xff808080)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2, color: Color(0xff2C2C2C)),
                              borderRadius:
                              BorderRadius.all(Radius.circular(10))),
                          labelText: 'Confirm Password',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: EdgeInsets.only(right: MediaQuery.sizeOf(context).width/8),
                      child: Text(
                        'Forget Password?',
                        style: GoogleFonts.inter(
                          textStyle: Theme
                              .of(context)
                              .textTheme
                              .displayLarge,
                          fontSize: 14,
                          color: Color(0xffEAEAEA),
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: ElevatedButton(
                        child: Text(
                          'Register',
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff00A3B7),

                        ),
                        onPressed: () async {
                          print('Hello world');
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 18,
                ),
                Center(
                  child: Text('Or register with',style: GoogleFonts.inter(
                    textStyle: Theme
                        .of(context)
                        .textTheme
                        .displayMedium,
                    fontSize: 17,
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.w200,
                    fontStyle: FontStyle.normal,
                  ),),
                ),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 18,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(FontAwesomeIcons.google, color: Colors.red),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                        ),
                      ),
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Icon(FontAwesomeIcons.facebook, color: Colors.blue),
                        style: ElevatedButton.styleFrom(
                          shape: CircleBorder(),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Not have an account?',style: GoogleFonts.inter(
                      textStyle: Theme
                          .of(context)
                          .textTheme
                          .displayMedium,
                      fontSize: 17,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w200,
                      fontStyle: FontStyle.normal,
                    ),),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) => Login(),
                          ),
                        );
                      },
                      child: Text('Login'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ), // Show your other UI elements when _isLoading is false
      ),
    );
  }

  @override
  void initState() {

  }
}