import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class loginScreen extends StatefulWidget {
  const loginScreen({Key? key}) : super(key: key);

  @override
  _loginScreenState createState() => _loginScreenState();
}
class _loginScreenState extends State<loginScreen> {
  bool isRememberMe = false;

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'User ID',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  hintText: 'Enter your user ID',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 14.0
                  ),
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.blue.shade500,
                  )
              )
          ),
        )
      ],
    );
  }
  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Password',
          style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10,),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 50,
          child: TextField(
              obscureText: true,
              style: TextStyle(
                  color: Colors.black87
              ),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: 14),
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(
                    color: Colors.black38,
                    fontSize: 14.0
                  ),
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.blue.shade700,
                  )
              )
          ),
        )
      ],
    );
  }
  Widget buildForgetPasswordButton(){
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
        onPressed: ()=>print("Forgot password pressed"),
        padding: EdgeInsets.only(right: 0),
        child: Text('Forgot Password?', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.0),),
      ),
    );
  }
  Widget buildremembercb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value){
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
  Widget buildLoginBtn(){
    return Container(
      padding: EdgeInsets.fromLTRB(100.0, 15.0, 100.0, 10.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5,
        onPressed: (){
          Navigator.of(context).pushNamed('/dash');
        },
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.blue.shade900,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
  Widget buildSignUpButn(){
    return GestureDetector(
      onTap: ()=>print('Sign Up Pressed'),
      child: RichText(
        text: TextSpan(
        children: [
          TextSpan(
        text: 'Need any help? ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
    ),
          TextSpan(
            text: 'Click here!',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            )
          )
        ]
    ),
    ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.light,
          child: GestureDetector(
            child: Stack(
              children: <Widget>[
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.blue.shade300,
                        Colors.blue.shade900,

                        // Colors.blue.shade800,
                        // Colors.blue.shade800,
                      ]
                    )
                  ),
                   child: SingleChildScrollView(
                     physics: AlwaysScrollableScrollPhysics(),
                     padding: EdgeInsets.symmetric(
                       horizontal: 25,
                       vertical: 40
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: <Widget>[
                         Column(
                           children: [
                             Image.asset("assets/education.png", width: 58.0,),
                             SizedBox(height: 10.0),
                             Text("නැණ පියස", style: TextStyle(
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 16.0
                             ),textAlign: TextAlign.center,),
                           ],
                         ),
                         SizedBox(height: 20,),
                         Text('Log In', style: TextStyle(
                             color: Colors.white,
                             fontSize: 30,
                             fontWeight: FontWeight.bold
                         ),
                         ),
                         SizedBox(height: 50,),
                         buildEmail(),
                         SizedBox(height: 20,),
                         buildPassword(),
                         buildForgetPasswordButton(),
                         buildremembercb(),
                         buildLoginBtn(),
                         buildSignUpButn(),
                       ],
                     ),
                   ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
