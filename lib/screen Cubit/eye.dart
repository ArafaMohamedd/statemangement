import 'package:cubit_iti/cubit/ShowHidePassword/show_hide_password_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class eye extends StatelessWidget {
  eye({super.key});

  List<String> filterList = [
    "تمت",
    "تحت المراجعة",
    "المكتملة",
    "الملغية",
    "قيد التنفيذ",
    "اطلب مرة اخرى",
    "قيم الطلب",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(

          child: Column(
            children: [
              SizedBox(height: 100,),
              Padding(
                padding: EdgeInsets.all(8.0),
                child:
                BlocBuilder<ShowHidePasswordCubit, ShowHidePasswordState>(
                  builder: (context, state) {
                    return TextField(
                      obscureText:
                      context.read<ShowHidePasswordCubit>().isShown,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: IconButton(
                          icon: context.read<ShowHidePasswordCubit>().isShown
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            context
                                .read<ShowHidePasswordCubit>()
                                .showHidePass();
                          },
                        ),
                        hintText: "Password",
                        // errorBorder: ,
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 36, 4, 240), width: 2),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // border: ,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        // border:
                      ),
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}