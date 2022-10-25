import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/bloc/Login_bloc.dart';
import 'package:login/ui/SignUp.dart';
import 'Page1.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var password =TextEditingController();
  var phone =TextEditingController();


    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff3A3A4D), Color(0xff13131D)]
          )
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Padding(
                    padding: const EdgeInsets.fromLTRB(10.0,50.0,0,0),
                    child: Row(
                      children: [
                        Image.asset('assets/logo.jpg'),
                       SizedBox(width:MediaQuery.of(context).size.width * 0.005),
                        const Text(
                          'Cyberhawk',
                          style: TextStyle(
                            //fontFamily: "IBMPlexSans",
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding:  EdgeInsets.fromLTRB(10.0,100.0,0,0),
                    child:  Text(
                      'Login',
                      style: TextStyle(
                        //fontFamily: "IBMPlexSans",
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
            
                   Padding(
                    padding:  const EdgeInsets.fromLTRB(10.0,50.0,10.0,0),
                  child: TextField(   
                    controller: phone,     
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.blueGrey),
                      ),
                      prefixIcon: Icon(Icons.phone,
                      color: Colors.blueGrey,),
                      hintText: 'Phone',
                      hintStyle: TextStyle(color: Colors.white)
                    )
                  ),
                  ),
            
                   Padding(
                    padding:  EdgeInsets.fromLTRB(10.0,20.0,10.0,0),
                  child: TextField( 
                    controller: password,  
                    style: TextStyle(color: Colors.white),     
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1.5, color: Colors.blueGrey),
                      ),
                      prefixIcon: Icon(Icons.key,
                      color: Colors.blueGrey,),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                    )
                  ),
                  ),
            
                  const Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blueGrey,
                      fontSize: 15
                      ),
                    ),
                  ),
            
                  Center(
                    child: SizedBox(
                      width:350.0,
                      child: MaterialButton(
                        onPressed: 
                      (){
                        
                        BlocProvider.of<LoginBloc>(context).add(VerifyPassword(
                        name: phone.text,
                        password: password.text));
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => PageOne()));
                        },
                        child: Row(
                          children: [
                            const Text("Login"),
                            BlocConsumer<LoginBloc, LoginStates>(
                          listener: ((context, state) {
                        if (state is LoginError) {
                          //Fluttertoast.showToast(msg: state.error.toString());
                        }
                        if (state is LoginSuccess) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PageOne()));
                        }
                      }), builder: (context, state) {
                        if (state is Loading) {
                          return const CircularProgressIndicator();
                        } else {
                          return const Text(
                            "Login",
                            style: TextStyle(fontSize: 17.5),
                          );
                        }
                      }),
                          ],
                        ),
                      color: Colors.yellowAccent,
                      
                      ),
                    ),
                  ),
            
            
                 Padding(
                    padding: EdgeInsets.fromLTRB(65, 30, 0, 0),
                    child: InkWell(
                      onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const sig()));
                    },
                      child: Text(
                        "Don't have an account? Create Account.",
                        style: TextStyle(color: Colors.blueGrey,
                        fontSize: 15
                        ),
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

