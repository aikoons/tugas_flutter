import 'package:flutter/material.dart';
import 'package:tugas3/model/poli.dart';
import 'package:tugas3/ui/poli_detail.dart';
import 'package:tugas3/ui/poli_form.dart';
import 'package:tugas3/ui/poli_item.dart';

class PoliPage extends StatefulWidget{
  const PoliPage({super.key});

  @override
  State<PoliPage> createState() => _PoliPageState();
}

class _PoliPageState extends State<PoliPage>{
  @override
  Widget build (BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("Data Poli"),
      actions: [
        GestureDetector(
          child: const Icon(Icons.add),
          onTap: (){
            Navigator.push(
              context, MaterialPageRoute(builder: (context) => PoliForm())
            );
          },
        )
      ],),
      body: ListView(
        children:[
          PoliItem(poli: Poli(namaPoli: "Poli Anak")),
          PoliItem(poli: Poli(namaPoli: "Poli Kandungan")),
          PoliItem(poli: Poli(namaPoli: "Poli Gigi")),
          PoliItem(poli: Poli(namaPoli: "Poli THT")),
        ],
      )
    );
  }
}

