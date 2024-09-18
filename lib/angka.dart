import 'package:flutter/material.dart';

class angka extends StatelessWidget {
  const angka({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController conbil = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title:Text("Ganjil Genap"),
      ),
      body: 
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            children: [
              TextField(

                controller: conbil,
                decoration: InputDecoration(
                  label: Text("Bilangan"),
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                width: 100,
                child: 
                ElevatedButton(onPressed: (){
                  int number = int.parse(conbil.text);
                  String text = "";
          
                  if (number.isEven){
                    text = "Bilangan tersebut adalah bilangan Genap";
                  }else{
                    text = "Bilangan tersebut adalah bilangan Ganjil";
                  }
          
                  SnackBar snackBar = SnackBar(content: Text(text),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                child: Text("Submit")
                ),
              ),
            ],
          ),
        ),
    );
  }
}