import 'package:auto_route/auto_route.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

import '/core/widgets/w_loader.dart';
import '/core/resources/dimensions.dart';
import '/core/resources/functions.dart';
import '/core/widgets/w_text_btn.dart';
import '/gen/assets.gen.dart';
import '../widgets/w_texts_column.dart';

@RoutePage()
class ErrorConnectionPage extends StatefulWidget {
  const ErrorConnectionPage({super.key});

  @override
  State<ErrorConnectionPage> createState() => _ErrorConnectionPageState();
}

class _ErrorConnectionPageState extends State<ErrorConnectionPage> {
  bool isLoading = false;

  checkConnection() async {
    setState(() {
      isLoading = true;
    });
    await (Connectivity().checkConnectivity());
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: StreamBuilder<List<ConnectivityResult>>(
        stream: Connectivity().onConnectivityChanged,
        builder: (context, snapshot) {
          final data = snapshot.data;
          if ((data?.contains(ConnectivityResult.wifi) ?? false) ||
              (data?.contains(ConnectivityResult.mobile) ?? false)) {
            Navigator.pop(context);
            return Container();
          } else {
            return Scaffold(
              backgroundColor: Theme.of(context).cardColor,
              body: isLoading
                  ? const WLoader()
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 80),
                        Assets.svg.connection.svg(),
                        const Padding(
                          padding: Dimensions.paddingTop64,
                          child: WTextsColumn(
                            title: "Internet sekin",
                            subtitle: "Internet bilan ulanishni shirring",
                          ),
                        ),
                      ],
                    ),
              bottomNavigationBar: Container(
                color: Theme.of(context).cardColor,
                padding: Dimensions.paddingAll16
                    .copyWith(bottom: getBottomPadding(context)),
                child: WTextBtn(
                  title: "Urunib ko'rish",
                  onPressed: () async => await checkConnection(),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
