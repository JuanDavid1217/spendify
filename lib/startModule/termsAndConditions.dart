import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Términos y Condiciones'),
          automaticallyImplyLeading: false,
        ),
        body: TermsAndConditions(),
      ),
    );
  }
}

class TermsAndConditionsForm extends StatefulWidget {
    const TermsAndConditionsForm ({super.key});
  @override
  _TermsAndConditionsFormState createState() => _TermsAndConditionsFormState();
}

class _TermsAndConditionsFormState extends State<TermsAndConditionsForm> {
    
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
    // Obtener el ancho de la pantalla
    double screenWidth = MediaQuery.of(context).size.width;
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
                        child:Container(
                          width: screenWidth,
                          child:Text(
                            'Términos y Condiciones',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        )
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:30.0, left:20.0, right:30.0),
                        child:Container(
                          width: screenWidth,
                          child:Text(
                            "Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso."+
                            "Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso."+
                            "Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso."+
                            "Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso. Aquí iran los términos y condiciones de uso.",
                             textAlign:TextAlign.justify,
                          ),
                        )
                      ),
                      Padding(
                        padding:EdgeInsets.only(top:30.0),
                        child:TextButton(
                          onPressed: () {
                              Navigator.pushReplacementNamed(context, "/createAccount");
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