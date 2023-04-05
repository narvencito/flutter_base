import 'package:flutter/material.dart';
import 'package:music/app/route/routes_app.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final userNameController = TextEditingController();
  final userPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SizedBox(
              width: (constraints.maxWidth > 700)
                  ? MediaQuery.of(context).size.width * 0.5
                  : MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: TextFormField(
                              controller: userNameController,
                              decoration: InputDecoration(
                                label: const Text("User name"),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.all(5),
                            child: TextFormField(
                              controller: userPasswordController,
                              decoration: InputDecoration(
                                //isDense: true,
                                //contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                label: const Text("Password"),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: (constraints.maxWidth > 700)
                            ? MediaQuery.of(context).size.width * 0.2
                            : MediaQuery.of(context).size.width * 0.4,
                            height: 40,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, RoutesApp.movie);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Container(
                        width: (constraints.maxWidth > 700)
                            ? MediaQuery.of(context).size.width * 0.2
                            : MediaQuery.of(context).size.width * 0.4,
                            height: 40,
                        margin: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, RoutesApp.movie);
                            },
                            child: const Text(
                              "go to movies",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
