import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '/core/widgets/custom_appbar.dart';
import '/core/widgets/custom_back_button.dart';
import '/core/widgets/w_bottom_button.dart';
import '/features/draw/presentation/widgets/w_draw_body.dart';
import '../../../../config/app_router.gr.dart';
import '../bloc/draw_bloc.dart';

class DrawView extends StatelessWidget {
  const DrawView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DrawBloc, DrawState>(
      listener: (context, state) {
        print(state.error?.errorMessage);
        print(state.error?.errorMessage);
        print(state.error?.errorMessage);
        print(state.error?.errorMessage);
        // if (state.status.isFailed) {
        //   showToast("Xatolik yuz berdi!");
        // }

        if (state.status.isLoaded) {
          context.router.replace(
            ResultRoute(
              percentage: state.percent,
              numberEntity: state.number,
              image: state.imageFile,
            ),
          );
        }
      },
      builder: (context, state) {
        final number = state.number;
        return Scaffold(
          appBar: CustomAppbar(
            actions: [
              Visibility(
                visible: number?.number != 9,
                child: Transform.rotate(
                  angle: 3.14,
                  child: CustomBackButton(onPressed: () {
                    if (number?.number != 9) {
                      context
                          .read<DrawBloc>()
                          .add(const DrawEvent.nextNumber());
                    }
                  }),
                ),
              )
            ],
            elevation: 4,
            forceMaterialTransparency: true,
            shadowColor: Colors.black.withOpacity(0.25),
            title: (number?.number ?? 0).toString(),
            disableBackButton: number?.number == 0,
            onBackPressed: () {
              if (number?.number != 0) {
                context.read<DrawBloc>().add(const DrawEvent.prevNumber());
              }
            },
          ),
          body: WDrawBody(globalKey: state.globalKey),
          bottomNavigationBar: WBottomButton(
            title: 'Baholash',
            isLoading: state.status.isLoading,
            isEnabled: state.points.where((p) => p != null).length > 5,
            onPressed: () {
              context.read<DrawBloc>().add(const DrawEvent.submit());
            },
          ),
        );
      },
    );
  }
}
