import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:images/presentation/cubit/exhibits_cubit.dart';
import 'package:images/presentation/widgets/card.dart';

class ExhibitsListScreen extends StatelessWidget {
  const ExhibitsListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<ExhibitsCubit, ExhibitsState>(
          builder: (context, state) {
            if (state is LoadingStates) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is LoadedStates) {
              return ListView.builder(
                  itemCount: state.exhibits.length,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 165,
                      child: ListView.builder(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20.0, vertical: 10.0),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.exhibits[index].images.length,
                          itemBuilder: (context, indexImage) {
                            return ExhibitCard(
                              title: state.exhibits[index].title,
                              image: state.exhibits[index].images[indexImage],
                            );
                          }),
                    );
                  });
            }
            return Container();
          },
        ),
      ),
    );
  }
}
