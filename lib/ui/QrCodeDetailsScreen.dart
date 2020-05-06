import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrCodeDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QrCodeDetailsArgument args = ModalRoute
        .of(context)
        .settings
        .arguments;
    return Material(
      child: Container(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                color: Colors.white,
                icon: Icon(
                  Icons.close,
                  size: 32,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            Expanded(
              child: Card(
                child: Container(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      QrImage(
                        data: args.code,
                        version: QrVersions.auto,
                        size: 200.0,
                      ),
                      Divider(
                        height: 50,
                      ),
                      _CaptionText(value: "Scanned value"),
                      _ValueText(value: args.code),
                      SizedBox(
                        height: 20,
                      ),
                      _CaptionText(value: "Date"),
                      _ValueText(value: "10-06-2020"),
                      SizedBox(
                        height: 20,
                      ),
                      _CaptionText(value: "Type"),
                      _ValueText(value: "qr code")
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//region Utility structure
class _CaptionText extends StatelessWidget {
  final String value;

  const _CaptionText({Key key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value, style: Theme
        .of(context)
        .textTheme
        .caption);
  }
}

class _ValueText extends StatelessWidget {
  final String value;

  const _ValueText({Key key, this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(value, style: Theme
        .of(context)
        .textTheme
        .title);
  }
}

class QrCodeDetailsArgument {
  final String code;

  QrCodeDetailsArgument(this.code);
}
//endregion
