import 'package:flutter/material.dart' ;
class RegisterScreen extends StatefulWidget {

createState() {
    return RegisterScreenState();
  }
}

class RegisterScreenState extends State<RegisterScreen> {
  // var borderRadius;

Widget build(context) {
return Container(
margin: EdgeInsets. all(20.0), //SET MARGIN DARI CONTAINER
child: Form(
child: Column(
//CHILDREN DARI COLUMN BERISI 4 BUAH OBJECT YANG AKAN DI-RENDER,YAKNI
// TextInput UNTUK NAME, EMAIL, PASSWORD DAN TOMBOL DAFTAR
children: [
            nameField(),
            emailField(),
            passwordField(),
            registerButton(),
          ],
    )
  ),
  );
}

Widget nameField() {
//MEMBUAT TEXT INPUT
return TextFormField(
          decoration: new InputDecoration(
          hintText: "Masukan Nama Lengkap Anda",
          labelText: "Nama Lengkap",
          icon: Icon(Icons.people),
          border: OutlineInputBorder(borderRadius:
                  new BorderRadius.circular(5.0)),
          ),
          
//AKAN BERISI VALIDATION
);
}
Widget emailField() {
return TextFormField(
    keyboardType:
    TextInputType. emailAddress, // KEYBOARD TYPENYA ADALAH EMAILADDRESS
    //AGAR SYMBOL @ DILETAKKAN DIDEPAN KETIKA KEYBOARD DI TAMPILKAN
    decoration: InputDecoration(
    labelText: 'Email' ,
    hintText: 'email@example.com' ,
    icon: Icon(Icons.mail),
    border:OutlineInputBorder(
      borderRadius: new BorderRadius.circular(5.0)),
),
 //AKAN BERISI VALIDATION
);
}

Widget passwordField() {
return TextFormField(
    obscureText: true, //KETIKA obsecureText bernilai TRUE
    //MAKA SAMA DENGAN TYPE PASSWORD PADA HTML
    decoration: InputDecoration(
    labelText: 'Password' ,
    hintText: 'Enter Password' ,
    icon: Icon(Icons.key),
    border: OutlineInputBorder(
      borderRadius: new BorderRadius.circular(5.0)),
),
//AKAN BERISI VALIDATION
);
}
Widget registerButton() {
//MEMBUAT TOMBOL
return ElevatedButton(
onPressed: () {
//PERINTAH YANG AKAN DIEKSEKUSI KETIKA TOMBOL DITEKAN
},
child: Text('Daftar' ), //TEXT YANG AKAN DITAMPILKAN PADA TOMBOL
);
}
}