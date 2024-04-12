import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Dart 2.17부터 enum type class를 사용할수 있다.
enum LeadingIcon {
  cancel(icon: Icon(Icons.close)),
  back(icon: Icon(Icons.arrow_back_ios));

  final Icon icon;
  const LeadingIcon({required this.icon});
}

class DefaultLayout extends StatelessWidget {
  final Color? backgroundColor;
  final Widget child;
  final String? title;
  final Widget? bottomNavigationBar;
  final Widget? floatingActionButton;
  final bool topSafeArea;
  final bool bottomSafeArea;
  final double padding;
  final LeadingIcon? leading;
  final Function()? backBtn;
  const DefaultLayout({
    super.key,
    required this.child,
    this.backgroundColor,
    this.title,
    this.bottomNavigationBar,
    this.floatingActionButton,
    this.topSafeArea = false,
    this.bottomSafeArea = true,
    this.padding = 8,
    this.leading,
    this.backBtn,
  });

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      //세로방향 고정
      DeviceOrientation.portraitUp,
    ]);
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: renderAppBar(),
        backgroundColor: Colors.white,
        body: SafeArea(
          top: topSafeArea,
          bottom: bottomSafeArea,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: padding),
            child: child,
          ),
        ),
      ),
    );
  }

  AppBar? renderAppBar() {
    if (title == null) {
      return null;
    } else {
      return AppBar(
        leading: leading != null
            ? IconButton(
                onPressed: backBtn,
                icon: leading == LeadingIcon.back
                    ? LeadingIcon.back.icon
                    : LeadingIcon.cancel.icon,
              )
            : null,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          title!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        foregroundColor: Colors.black,
      );
    }
  }
}
