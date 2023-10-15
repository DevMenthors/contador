import 'package:contador/view/pages/bottom_pages/dev_page.dart';
import 'package:contador/view/pages/bottom_pages/pagina_inicial.dart';
import 'package:contador/view/pages/bottom_pages/sobre.dart';
import 'package:contador/view/pages/cadastro.dart';
import 'package:contador/view/pages/nova_tela.dart';
import 'package:flutter/material.dart';
import 'package:sweet_nav_bar/sweet_nav_bar.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<StatefulWidget> createState() => _TelaState();
}

class _TelaState extends State<TelaInicial> {
  int paginaAtual = 1;
  late PageController controllerview = PageController(initialPage: paginaAtual);

  final iconLinearGradiant = List<Color>.from([
    const Color.fromARGB(255, 251, 2, 197),
    const Color.fromARGB(255, 72, 3, 80)
  ]);
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

  void setPaginaAtual(int page){
    setState(() {
      paginaAtual = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: SweetNavBar(
        currentIndex: paginaAtual,
        paddingBackgroundColor: Colors.transparent,
        items: [
          SweetNavBarItem(
              sweetActive: const Icon(Icons.home),
              sweetIcon: const Icon(
                Icons.home_outlined,
              ),
              sweetLabel: 'Home',
              iconColors: iconLinearGradiant,
              sweetBackground: Colors.red),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.business), sweetLabel: 'Business'),
          SweetNavBarItem(
              sweetIcon: const Icon(Icons.school), sweetLabel: 'School'),
        ],
        onTap: (index) {
          controllerview.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.easeIn);
        },
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
        elevation: 0,
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
      body: PageView(
        onPageChanged: setPaginaAtual,
        controller: controllerview,
        children: const[
          SobrePage(),
          PaginaInicial(),
          DevPage(),
        ],
      )
    );
  }
}
