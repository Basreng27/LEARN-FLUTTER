import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:komik_app/data/datasource/remote_datasource.dart';
import 'package:komik_app/pages/bloc/komik_bloc.dart';
import 'package:komik_app/pages/widgets/sidebar.dart';

class KomikPage extends StatefulWidget {
  const KomikPage({super.key});

  @override
  State<KomikPage> createState() => _KomikPageState();
}

class _KomikPageState extends State<KomikPage> {
  @override
  Widget build(BuildContext context) {
    // bungkus menggunakan BlockProvider
    return BlocProvider(
      create: (context) =>
          KomikBloc(remoteDataSource: RemoteDataSource())..add(LoadKomik()),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Komik"),
        ),
        drawer: const Sidebar(),
        body: BlocBuilder<KomikBloc, KomikState>(
          //bungkus dengan BlockBuilder
          builder: (context, state) {
            if (state is KomikLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is KomikLoaded) {
              final data = state.komiks;

              return ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(data[index].nama),
                    // subtitle: Text(data[index].chapter.toString()),
                  );
                },
              );
            } else if (state is KomikError) {
              return Center(child: Text(state.error));
            }

            return const SizedBox();
          },
        ),
      ),
    );
  }
}
