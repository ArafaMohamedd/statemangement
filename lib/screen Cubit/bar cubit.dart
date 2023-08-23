import 'package:cubit_iti/cubit/ChangeSelectedValue/change_selected_value_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class cubitbar extends StatelessWidget {
  cubitbar({super.key});

  List<String> filterList = [
  "تمت",
  "تحت المراجعة",
  "المكتملة",
  "الملغية",
  "قيد التنفيذ",
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
              SizedBox(
                height: 100,
              ),
              BlocBuilder<ChangeSelectedValueCubit, ChangeSelectedValueState>(
                builder: (context, state) {
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        for (int i = 0; i < filterList.length; i++)
                          InkWell(
                            onTap: () {
                              context
                                  .read<ChangeSelectedValueCubit>()
                                  .changeIndex(i);
                            },
                            child: Container(
                              margin: EdgeInsets.all(4),
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: context
                                      .read<ChangeSelectedValueCubit>()
                                      .selectedIndex ==
                                      i
                                      ? Colors.red
                                      : Colors.grey.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(16)),
                              child: Text(filterList[i]),
                            ),
                          ),
                      ],
                    ),
                  );
                },
              ),





      ]
    ),
    )
      )
    );
  }
}