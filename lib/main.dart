import 'package:dio/dio.dart';
import 'package:restful/external/datasource/dog_datasource_impl.dart';
import 'package:restful/infra/repositories/dog_repository_impl.dart';
import 'package:restful/infra/services/http_service_impl.dart';
import 'package:restful/presenter/controller/dog_controller.dart';
import 'package:restful/presenter/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home:  HomePage(controller: DogController(repository: DogRepositoryImpl(DogDatasourceImpl(service: HttpServiceImpl(host: 'https://dog.ceo', dio: Dio()))))),
    );
  }
}
