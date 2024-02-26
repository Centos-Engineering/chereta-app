import 'package:auction_app/bloc_observer.dart';
import 'package:auction_app/blocs/auctions_bloc/auctions_bloc.dart';
import 'package:auction_app/firebase_options.dart';
import 'package:auction_app/repositories/auth_repository.dart';
import 'package:auction_app/repositories/export_repository.dart';
import 'package:auction_app/routes/routes.dart';
import 'package:auction_app/views/splash_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'blocs/auth_bloc/auth_bloc.dart';

Future<void> main() {
  // ignore: deprecated_member_use
  return BlocOverrides.runZoned(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    final authRepository = AuthRepository();
    // await MongoDBConnection.connect();
    runApp(App(
      authRepository: authRepository,
    ));
  }, blocObserver: const AppBlocObserver());
}

class App extends StatelessWidget {
  final AuthRepository _authRepository;

  const App({Key? key, required AuthRepository authRepository})
      : _authRepository = authRepository,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuctionsBloc(FirebaseFirestore.instance),
        )
      ],
      child: RepositoryProvider.value(
        value: _authRepository,
        child: BlocProvider(
          create: (_) => AuthBloc(authRepository: _authRepository),
          child: const AppView(),
        ),
      ),
    );
  }
}

class AppView extends StatelessWidget {
  const AppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: FlowBuilder(
        onGeneratePages: onGenerateAppViewPages,
        state: context.select((AuthBloc bloc) => bloc.state.status),
      ),
    );
  }
}
