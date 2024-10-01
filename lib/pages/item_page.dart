import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail Produk"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
             item.gambar,
              width: 300,
              height: 200,
              fit: BoxFit.cover,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber),
              const SizedBox(width: 4),
              Text("${item.rating}", style: TextStyle(fontSize: 16),)
            ],
          ),
            Text("Nama Produk: ${item.name}"),
            Text("Harga: ${item.price}"),
            Text("Stok: ${item.stok}"),
            Text(item.deskripsi),
          ],
        ),
      ),
    );
  }
}