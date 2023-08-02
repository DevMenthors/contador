import 'package:flutter/material.dart';

// REMOVIDA

/// Tela inicial feita usando um StatelessWidget.
class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          OutlinedButton(
            onPressed: () {},
            child: const Text(
              'Zerar',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          Container(
            height: 200,
            width: 200,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(40),
            ),
            child: const Text(
              '0',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_rounded,
          size: 40,
        ),
      ),
    );
  }
}
