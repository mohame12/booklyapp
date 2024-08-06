import 'package:booklyapp1/feature/search_screen/presentaion/manger/search_cubit/search_cubit.dart';
import 'package:booklyapp1/feature/search_screen/presentaion/widgets/search_v_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchList extends StatelessWidget {
  const SearchList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit,SearchState >(
      builder: (context, state) {
        if(state is SearchSuccess) {
          return Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemCount:state.book.length,
              itemBuilder: (context, index) =>
                  SearchVirticalListViewItem(book: state.book[index],),),
          );
        }
        else if(state is SearchLoading)
          {
            return const Center(child: CircularProgressIndicator());
          }
        else if(state is SearchFailure )
            {
              return const Icon(FontAwesomeIcons.exclamation);
            }
        else{
          return const Align(
              alignment:Alignment.center ,
              child: Text('Search For Some Books'));
        }
      },
    );
  }
}