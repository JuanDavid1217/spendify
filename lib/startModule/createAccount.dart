import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Crear una Cuenta'),
          automaticallyImplyLeading: false,
        ),
        body: CreateAccount(),
      ),
    );
  }
}

class CreateAccountForm extends StatefulWidget {
    const CreateAccountForm ({super.key});
  @override
  _CreateAccountFormState createState() => _CreateAccountFormState();
}

class _CreateAccountFormState extends State<CreateAccountForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _secondLastNameController  =TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _celNumberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();
  final FocusNode _focusNode3 = FocusNode();
  final FocusNode _focusNode4 = FocusNode();
  final FocusNode _focusNode5 = FocusNode();
  final FocusNode _focusNode6 = FocusNode();
  final FocusNode _focusNode7 = FocusNode();
  final FocusNode _focusNode8 = FocusNode();

  bool? value=false;

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
                          "Registro Inicio de Sesion",
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
                            controller: _nameController,
                            decoration: InputDecoration(labelText: 'Nombre'),
                            focusNode: _focusNode1,
                            onEditingComplete: (){
                              FocusScope.of(context).requestFocus(_focusNode2);
                            },
                          ),
                          TextFormField(
                            controller: _lastNameController,
                            decoration: InputDecoration(labelText: 'Apellido Paterno'),
                            focusNode: _focusNode2,
                            onEditingComplete: (){
                              FocusScope.of(context).requestFocus(_focusNode3);
                            }
                          ),
                          TextFormField(
                            controller: _secondLastNameController,
                            decoration: InputDecoration(labelText: 'Apellido Materno'),
                            focusNode: _focusNode3,
                            onEditingComplete: (){
                              FocusScope.of(context).requestFocus(_focusNode4);
                            }
                          ),
                          TextFormField(
                              controller: _emailController,
                              decoration: InputDecoration(labelText: 'Correo Electrónico'),
                              focusNode: _focusNode4,
                              onEditingComplete: () {
                                FocusScope.of(context).requestFocus(_focusNode5);
                              },
                          ),
                          TextFormField(
                              controller: _celNumberController,
                              decoration: InputDecoration(labelText: 'Teléfono'),
                              focusNode: _focusNode5,
                              onEditingComplete: () {
                                FocusScope.of(context).requestFocus(_focusNode6);
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
                              focusNode: _focusNode6,
                              onEditingComplete: (){
                                FocusScope.of(context).requestFocus(_focusNode7);
                              },
                          ),
                          TextFormField(
                              controller: _confirmPasswordController,
                              obscureText: this._obscureText,
                              decoration: InputDecoration(labelText: 'Confirma tu Contraseña'),
                              focusNode: _focusNode7,
                              onEditingComplete: (){
                                FocusScope.of(context).requestFocus(_focusNode8);
                              },
                          ),
                          Padding(
                            padding:EdgeInsets.only(top:20),
                            child:Row(
                              children:[
                                RichText(
                                  text: TextSpan(
                                    text: 'Acepto los ',
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Términos y Condiciones ',
                                        style: TextStyle(
                                          color: Colors.blue,
                                          decoration: TextDecoration.underline,
                                        ),
                                        recognizer: TapGestureRecognizer()..onTap = (){
                                          Navigator.pushReplacementNamed(context, "/termsAndConditions");
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                //Text('Acepto los Términos y Condiciones '),
                                Checkbox(
                                  value: this.value,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      this.value = value;
                                    });
                                  },
                                ),
                              ]
                            )
                          ),
                          ]
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:20.0),
                        child:TextButton(
                          onPressed: () {
                              //Navigator.pushReplacementNamed(context, "/create-account");
                          },
                          focusNode:_focusNode8,
                          child: Text('Aceptar y Continuar'),
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