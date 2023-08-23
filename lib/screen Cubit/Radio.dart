import 'package:cubit_iti/cubit/Radio%20ToggleCubit/radio_toggle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RadioCubit extends StatelessWidget {
  RadioCubit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),

              SizedBox(
                height: 300,
                child: BlocBuilder<RadioToggleCubit, RadioToggleState>(
                  builder: (context, state) {
                    return ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return RadioListTile(
                          value: index,
                          groupValue:
                          context.read<RadioToggleCubit>().currentValue,
                          onChanged: (value) {
                            context
                                .read<RadioToggleCubit>()
                                .toggleRadios(value);
                          },
                          title: Text("Title ${index + 1}"),
                          subtitle: Text("Hello we are ITI"),
                        );
                      },
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