import 'package:flutter/material.dart';

class berhitung extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
  TextEditingController conbil1 = TextEditingController();
  TextEditingController conbil2 = TextEditingController();
  TextEditingController conHasil = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Mari Berhitung"),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(
          runSpacing: 10,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              controller: conbil1,
              decoration: InputDecoration(
                label: Text("Bilangan 1"),
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: conbil2,
              decoration: InputDecoration(
                label: Text("Bilangan 2"),
                border: OutlineInputBorder(),
              ),
            ),
            TextField(
              controller: conHasil,
              decoration: InputDecoration(
                label: Text("Hasil"),
                border: OutlineInputBorder(),
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 100,
                  child: 
                  ElevatedButton(onPressed: (){
                    double bilangan1 = double.parse(conbil1.text);
                    double bilangan2 = double.parse(conbil2.text);
                    double bilanganHasil = bilangan1 + bilangan2;

                    conHasil.text = bilanganHasil.toString();
                  },
                  child: Text("Tambah")
                  ),
                ),
                SizedBox(
                  width: 95,
                  child: 
                  ElevatedButton(onPressed: (){
                    double bilangan1 = double.parse(conbil1.text);
                    double bilangan2 = double.parse(conbil2.text);
                    double bilanganHasil = bilangan1 - bilangan2;

                    conHasil.text = bilanganHasil.toString();
                  },
                  child: Text("Kurang")
                  ),
                ),
                SizedBox(
                  width: 95,
                  child: 
                  ElevatedButton(onPressed: (){
                    double bilangan1 = double.parse(conbil1.text);
                    double bilangan2 = double.parse(conbil2.text);
                    double bilanganHasil = bilangan1 * bilangan2;

                    conHasil.text = bilanganHasil.toString();
                  },
                  child: Text("Kali")
                  ),
                ),
                SizedBox(
                  width: 95,
                  child: 
                  ElevatedButton(onPressed: (){
                    double bilangan1 = double.parse(conbil1.text);
                    double bilangan2 = double.parse(conbil2.text);
                    double bilanganHasil = bilangan1 / bilangan2;

                    conHasil.text = bilanganHasil.toString();
                  },
                  child: Text("Bagi")
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}