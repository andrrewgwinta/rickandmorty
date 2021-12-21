import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/data/repositories/character_repo.dart';

import '../../bloc/character_bloc.dart';
import '../../data/repositories/character_repo.dart';
import '../pages/search_page.dart';

class HomePage extends StatelessWidget {
  final String title;
  final repository = CharacterRepo();

  HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick & Morty'),
        centerTitle: true,
        backgroundColor: Colors.black26,
      ),
      body: BlocProvider(
          create: (context) => CharacterBloc(characterRepo: repository),
          child: Container(
              decoration: const BoxDecoration(color: Colors.black87),
              child: const SearchPage())),
    );
  }
}
