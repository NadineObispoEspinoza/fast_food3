import 'package:flutter/material.dart';

import 'package:fast_food/screens/loggin.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String nombre = "";
  final nombreController = TextEditingController();
  @override
  void dispose() {
    nombreController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                  child: Image(image: AssetImage('assets/images/login.png')),
                ),
              ),
                   Center(
         child: Padding(
           padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,0.0),
           child: Text(
             'Ingresa tus credenciales',
             style: TextStyle( color: Color.fromARGB(71, 34, 18,1),
             fontSize: 20.0,
             decoration: TextDecoration.none
             ),

           ),
         ),
       ),
       Center(
         child: Padding(
           padding: const EdgeInsets.fromLTRB(0.0,5.0,0.0,0.0),
           child: Text(
             'registradas para acceder',
             style: TextStyle( color: Color.fromARGB(71, 34, 18,1),
             fontSize: 20.0,
             decoration: TextDecoration.none
             ),

            ),
          ),
        ),
            Form(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        decoration: InputDecoration(
                            labelText: 'Email',
                            icon: Icon(
                              Icons.email,
                              color: Colors.black,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              Form(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Container(
                      width: 300,
                      height: 50,
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: TextField(
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            labelText: 'Contraseña',
                            icon: Icon(
                              Icons.security_outlined,
                              color: Colors.black,
                              size: 30,
                            )),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '¿Aún no tienes cuenta?',
                  style: TextStyle(
                    color: Color(0xff7C7A7A),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Loggin()));
                  },
                  child: Text(
                    'Crear Ahora',
                    style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5.0),
              child: TextButton(
                onPressed: () {
                  nombre = nombreController.text;
                  print("El nombre que escribiste es: $nombre");
                },
                child: Text(
                  'Ingresar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
             Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.orange.withOpacity(0.9),
                        borderRadius: BorderRadius.circular(10)),
                    width: 330.0,
                    height: 60.0,
                    margin: EdgeInsets.only(top: 5),
                    child: FlatButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Loggin()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text(
                          'Continuar',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}