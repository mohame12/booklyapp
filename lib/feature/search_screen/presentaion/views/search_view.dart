import 'package:booklyapp1/feature/search_screen/data/repos/search_repo_imp.dart';
import 'package:booklyapp1/feature/search_screen/presentaion/manger/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/search_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  static const String id = 'SearchView';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit(SearchRepoImp()),
      child:  SafeArea(
        child: Scaffold(
          appBar: AppBar(
            forceMaterialTransparency: true,
            leading: IconButton(icon: Icon(FontAwesomeIcons.xmark), onPressed: () { Navigator.pop(context); },),
          ),
          body: Padding(
            padding: EdgeInsets.only(top: 10),
            child: SearchBody(),
          ),
        ),
      ),
    );
  }

}



