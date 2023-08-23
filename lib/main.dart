import 'package:cubit_iti/cubit/Radio%20ToggleCubit/radio_toggle_cubit.dart';
import 'package:cubit_iti/cubit/ReplaceUICubit/replace_ui_cubit.dart';
import 'package:cubit_iti/cubit/ShowHidePassword/show_hide_password_cubit.dart';
import 'package:cubit_iti/setstate/bar%20setstate.dart';
import 'package:cubit_iti/setstate/eye.dart';
import 'package:cubit_iti/screen%20Cubit/Radio.dart';
import 'package:cubit_iti/screen%20Cubit/Reblace.dart';
import 'package:cubit_iti/screen%20Cubit/bar%20cubit.dart';
import 'package:cubit_iti/cubit/ChangeSelectedValue/change_selected_value_cubit.dart';
import 'package:cubit_iti/screen%20Cubit/eye.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


void main() {
  runApp( myapp());
}

class myapp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
    BlocProvider<ChangeSelectedValueCubit>(
    create: (BuildContext context) => ChangeSelectedValueCubit(),
    ),
        BlocProvider<ShowHidePasswordCubit>(
          create: (BuildContext context) => ShowHidePasswordCubit(),
        ),
        BlocProvider<RadioToggleCubit>(
          create: (BuildContext context) => RadioToggleCubit(),
        ),
        BlocProvider<ReplaceUiCubit>(
          create: (BuildContext context) => ReplaceUiCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'iti News App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white
          ),
        ),
        home: cubitbar(),
      ),
    );
  }
}