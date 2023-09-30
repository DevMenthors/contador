import 'package:contador/view/pages/cadastro.dart';
import 'package:contador/view/pages/nova_tela.dart';
import 'package:flutter/material.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<StatefulWidget> createState() => _TelaState();
}

class _TelaState extends State<TelaInicial> {
  int number = 0;

  void increment() {
    setState(() {
      number++;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index){
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.red,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
        NavigationDestination(  
        selectedIcon: Icon(Icons.person), 
        icon: Icon(Icons.person_outline_outlined), 
        label: 'Perfil',
        ),

        NavigationDestination(  
        selectedIcon: Icon(Icons.home), 
        icon: Icon(Icons.home_outlined), 
        label: 'Home',
        ),

        NavigationDestination(  
        selectedIcon: Icon(Icons.school), 
        icon: Icon(Icons.school_outlined), 
        label: 'DevMenthors',
        ),

        ],
        ),




      drawer: Drawer(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const Novatela(),
                      ),
                    );
                  },
                  child: const Text(
                    'Nova página',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (_) => const Cadastro(),
                      ),
                    );
                  },
                  child: const Text(
                    'Cadastrar-se',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(Icons.widgets_outlined),
            );
          },
        ),
        backgroundColor: Colors.red,
        title: const Text('Contador'),
        centerTitle: true,
      ),
      body: <Widget>[
        Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: const Text('Sobre nós'),

        ),
        Container(
          color: Colors.grey,
          alignment: Alignment.center,
          child: const Text('Página inicial'),),
        Container(
          color: Colors.grey[700],
          alignment: Alignment.topCenter,
          child: Padding(padding: EdgeInsets.only(top: 50), 
          child: Column(children: [
Image.asset('asset/dev_logo.png', width: 190,  ),

          ],)  
          ),
          
        ),
      ][currentPageIndex],
      
    );
  }
}

