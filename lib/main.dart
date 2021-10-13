import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:raychat/data/message_dao.dart';
import 'ui/message_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: Add MultiProvider
    return MultiProvider(
      providers: [
        Provider<MessageDao>(create: (_)=> MessageDao(),lazy: false,),
      ],
     
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'RayChat',
        theme: ThemeData(primaryColor: const Color(0xFF3D814A)),
        // TODO: Add Consumer<UserDao> here
        home: const MessageList(),
        // TODO: Add closing parenthesis
      ),
    );
  }
}
