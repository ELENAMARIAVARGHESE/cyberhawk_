import 'package:login/bloc/signupbloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login/ui/Login.dart';
class sig extends StatefulWidget {
  const sig({Key? key}) : super(key: key);

  @override
  State<sig> createState() => _sigState();
}

class _sigState extends State<sig> {
  @override

  bool show1=false;
  var phoneno=TextEditingController();
  var Password=TextEditingController();
  var role=TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
child: Text("Create account",style: TextStyle(fontSize: 25),)),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: phoneno,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("phone no")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: Password,
                obscureText: !show1,
                decoration: InputDecoration(
                   suffixIcon: InkWell(
                                    onTap: () {
                                      show1 = !show1;
                                      setState(() {});
                                    },
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      color: show1
                                          ? const Color.fromARGB(
                                              255, 129, 199, 132)
                                          : Colors.grey,
                                    )
                                    
                                    ),
                    border: OutlineInputBorder(),
                    label: Text("Password")
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: role,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Role")
                ),
              ),
   ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Container(
                child: MaterialButton(onPressed: (){
    BlocProvider.of<SignupBloc>(context).add(
    GetSignupevent(
    username: phoneno.text,
    password: Password.text,
    role:role.text
    
    ));
    
    },
     child: BlocConsumer<SignupBloc, SignupStates>(
                          listener: ((context, state) {
                        if (state is SignupError) {
                          //Fluttertoast.showToast(msg: state.error.toString());
                        }
                        if (state is SignupSuccess) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()));
                        }
                      }), builder: (context, state) {
                        if (state is Fetching) {
                          return const CircularProgressIndicator();
                        } else {
                          return const Text(
                            "Signup",
                            style: TextStyle(fontSize: 17.5),
                          );
                        }
                      }),           
                  color: Colors.amber,
                  
                ),
              ),
            )
          ],
        ),

     ),
);
}
}