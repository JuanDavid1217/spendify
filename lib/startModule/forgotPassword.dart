import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Recuperación de Contraseña'),
          automaticallyImplyLeading: false,
        ),
        body: ForgotPassword(),
      ),
    );
  }
}

class ForgotPasswordForm extends StatefulWidget {
    const ForgotPasswordForm ({super.key});
  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();

  bool _obscureText=true;
    /*Future<void> redirecionar() async{
        var email=await isLoggin();
        if(email!=null&&email!=""){
            Navigator.pushReplacementNamed(context, "/");
        }
    }*/

    @override
    void initState(){
        super.initState();
        //redirecionar();
    // Realiza tus inicializaciones aquí, como suscripciones o configuración inicial de datos.
    // Por ejemplo:
    // myInitializationFunction();

    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(16.0),
            child: SingleChildScrollView(
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        child: Image.asset('../../assets/logo2.png'),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:10.0),
                        child:Text(
                          "Recuperación de Cuenta",
                          style: TextStyle(
                            color:Colors.blue,
                            fontSize: 18,
                          )
                        )
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
                              },
                          ),
                          TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: this._obscureText,
                              decoration: InputDecoration(labelText: 'Confirma tu Contraseña'),
                              focusNode: _focusNode3,
                              onEditingComplete: (){
                                FocusScope.of(context).requestFocus(_focusNode4);
                              },
                          ),
                          ]
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:20.0),
                        child:TextButton(
                            onPressed: () {
                                //Navigator.pushReplacementNamed(context, "/create-account");
                            },
                            focusNode:_focusNode4,
                            child: Text('Confirmar'),
                        ),
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:30.0),
                        child:TextButton(
                          onPressed: () {
                              Navigator.pushReplacementNamed(context, "/loggin");
                          },
                          child: Text('Volver'),
                        )
                      )                     
                  ],
              ),
            ),
        ),
    );
  }
}