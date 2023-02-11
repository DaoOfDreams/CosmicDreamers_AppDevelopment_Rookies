import 'package:flutter/material.dart';
import 'package:bite/Register.dart';
import 'Menu.dart';

class LoginUI extends StatelessWidget {
  const LoginUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'lOGIN Ui',
        theme :ThemeData(
          primarySwatch: Colors.teal,
        ),
        home:const Scaffold(

          body:LoginScreen(),

        )
    );
  }
}
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Material(
      child: Padding(

        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            children:  [const SizedBox(height: 100),
              const Text(
                  "User Login",
                  style:TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Colors.teal,
                  )
              ),
              const SizedBox(
                height:25,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress ,
                decoration: const InputDecoration(
                  labelText: "Enter Email",
                  border:OutlineInputBorder(),
                  prefixIcon:Icon(Icons.email),
                ),
              ),
              const SizedBox(
                height:25,
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword ,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: "Enter Password",
                  border:OutlineInputBorder(),
                  prefixIcon:Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(
                height:5,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:(){}, child: const Text(
                      "Forget Password?"
                  ))
                ],
              ),
              const SizedBox(
                height:25,
              ),
              Container(
                height:60,
                width:double.infinity,
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  gradient:const LinearGradient(colors: [Colors.blue,Colors.green]),
                ),
                child:MaterialButton(
                  onPressed: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const Menu();
                        },
                      ),
                    );
                  },
                  child:const Text(
                    "Login",
                    style:TextStyle(
                      fontSize:25,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height:30,
              ),
              const Divider(
                height : 30,
                color:Colors.black,
              ),
              const SizedBox(
                height:10,
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  const Text(
                    "Don't have an Account?",
                    style :TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  TextButton(onPressed:(){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) {
                          return const RegistrationUI();
                        },
                      ),
                    );
                  }, child: const Text(
                      "Register Account "
                  ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}