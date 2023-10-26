import 'package:flutter/material.dart';
import '../services/logginService.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loggin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Inicio de Sesión'),
          automaticallyImplyLeading: false,
        ),
        body: LoginForm(),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
    const LoginForm ({super.key});
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();

  bool _obscureText=true;
    Future<void> redirecionar() async{
        var email=await isLoggin();
        if(email!=null&&email!=""){
            Navigator.pushReplacementNamed(context, "/");
        }
    }

    @override
    void initState(){
        super.initState();
        redirecionar();
    // Realiza tus inicializaciones aquí, como suscripciones o configuración inicial de datos.
    // Por ejemplo:
    // myInitializationFunction();

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('../../assets/logo2.png'),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10.0),
                      child:Text(
                        "Inicia Sesión con",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top:10.0),
                      child:ElevatedButton(
                          onPressed: () async{
                          // Lógica de inicio de sesión aquí
                              await signInWithGoogle();
                              final bandera=await googleAccess();
                              if(bandera){
                                  Navigator.pushReplacementNamed(context, "/");
                              }
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            shape: CircleBorder()/*RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50)),*/
                          ),
                          child: Image.asset('../../assets/google.png'),/*Row(
                            children:<Widget>[
                              Image.asset('../assets/google.png'),
                            ],
                          ),*/
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top:10.0),
                      child:Text(
                        "o",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      "Ingresa tu usuario y\ncontraseña",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Padding(
                      padding:EdgeInsets.only(left:30, right:30),
                      child:Column(
                        children:[
                        TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(labelText: 'Correo Electrónico'),
                            focusNode: _focusNode1,
                            onEditingComplete: () {
                              FocusScope.of(context).requestFocus(_focusNode2);
                            },
                        ),
                        TextFormField(
                            controller: _passwordController,
                            obscureText: this._obscureText,
                            decoration: InputDecoration(labelText: 'Contraseña',
                            suffix: Checkbox(
                              value: !this._obscureText,
                              onChanged: (bool? value) {
                                setState(() {
                                  this._obscureText=!this._obscureText;
                                });
                              },
                            ),),
                            focusNode: _focusNode2,
                            onEditingComplete: (){
                              FocusScope.of(context).requestFocus(_focusNode3);
                            }
                        ),]
                      ),
                    ),
                    //SizedBox(height: 16.0),
                    Padding(
                      padding:EdgeInsets.only(top:20),
                      child:ElevatedButton(
                          onPressed: () async{
                          // Lógica de inicio de sesión aquí
                            /*  var bandera=await loggin(_emailController.text, _passwordController.text);
                              if(bandera){
                                  Navigator.pushReplacementNamed(context, "/");
                              }
                              print(bandera); */
                          },
                          child: Text('Iniciar Sesión', style: TextStyle(color:Colors.white)),
                          focusNode:_focusNode3,
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                          ),
                      ),
                    ),
                    Padding(
                      padding:EdgeInsets.only(top:10),
                      child:TextButton(
                          onPressed: () {
                              Navigator.pushReplacementNamed(context, "/createAccount");
                          },
                          child: Text('¿No tienes una cuenta? Regístrate'),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                            Navigator.pushReplacementNamed(context, "/forgotPassword");
                        },
                        child: Text('He olvidado mi contraseña!'),
                    ),                    
                ],
            ),
        ),
    );
  }
}