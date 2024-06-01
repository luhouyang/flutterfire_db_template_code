import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// import 'package:notify_db/full_ui/pages/home_page.dart';
import 'package:notify_db/skeleton_ui/pages/home_page.dart';
import 'package:notify_db/usecase/user_usecase.dart';

void main() {
  //TODO: WidgetFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  // options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => UserUsecase())],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          color: Colors.blue,
          home: HomePage()),
    );
  }
}
