import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_flutter/responsive_flutter.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
// import 'package:webview_flutter_plus/webview_flutter_plus.dart';
// import 'package:webview_dart/webview_dart.dart';

class A7_Card extends StatefulWidget {
  @override
  _A7_CardState createState() => _A7_CardState();
}

class _A7_CardState extends State<A7_Card> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          alignment: Alignment.centerLeft,
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              children: [
                agent_container_freeview(),
                agent_details_actions(),
              ],
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: agent_portrait_view()),
            ),
          ]),
    );
  }
}

class agent_portrait_view extends StatelessWidget {
  const agent_portrait_view({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: MediaQuery.of(context).size.width * 0.1,
      child: Container(
          // alignment: Alignment.centerLeft,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(360)),
            border: Border.all(color: Colors.blueGrey, width: 5),
            image: DecorationImage(image: AssetImage('images/Avatar.png')),
          )),
    );
  }
}

class agent_container_freeview extends StatefulWidget {
  agent_container_freeview({
    Key? key,
  }) : super(key: key);

  @override
  State<agent_container_freeview> createState() =>
      _agent_container_freeviewState();
}

class _agent_container_freeviewState extends State<agent_container_freeview> {
  late UnityWidgetController _unityWidgetController;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _unityWidgetController.dispose();
  }

  void onUnityMessage(message) {
    print('Received message from unity: ${message.toString()}');
  }

  void onUnitySceneLoaded(SceneLoaded scene) {
    print('Received scene loaded from unity: ${scene.name}');
    print('Received scene loaded from unity buildIndex: ${scene.buildIndex}');
  }

  // Callback that connects the created controller to the unity controller
  void _onUnityCreated(controller) {
    this._unityWidgetController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(11),
            topRight: Radius.circular(11),
            bottomLeft: Radius.circular(0),
            bottomRight: Radius.circular(0),
          ),
          color: Color.fromRGBO(52, 52, 52, 1),
        ),
        // child: Text("asdas")
        // child:
        // WebViewPlus(
        //   javascriptMode: JavascriptMode.unrestricted,
        //   onWebViewCreated: (controller) {
        //     controller.loadUrl('unity/bootstrap_apps/index.html');
        //   },
        // ),
        // UnityWidget(
        //   borderRadius: BorderRadius.all(Radius.circular(10)),
        //   onUnityCreated: _onUnityCreated,
        //   onUnityMessage: onUnityMessage,
        //   // onUnitySceneLoaded: onUnitySceneLoaded,
        // ),
      ),
    );
  }
}

class agent_details_actions extends StatelessWidget {
  const agent_details_actions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          width: MediaQuery.of(context).size.width * 1,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              topRight: Radius.circular(0),
              bottomLeft: Radius.circular(11),
              bottomRight: Radius.circular(11),
            ),
            color: Colors.white,
          ),
          child: Container(
            // width: MediaQuery.of(context).size.width * 0.8,
            // height: MediaQuery.of(context).size.height * 0.8,
            padding: EdgeInsets.all(10),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.height * 0.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MaterialButton(
                          child: Text("🤝Meet"),
                          color: Colors.amber,
                          onPressed: () {},
                        ),
                        Spacer(),
                        MaterialButton(
                          child: Text("💬 Chat"),
                          color: Colors.blueGrey,
                          onPressed: () {},
                        ),
                        Spacer(),
                        MaterialButton(
                          child: Text("📧 Email"),
                          color: Colors.green,
                          onPressed: () {},
                        ),
                        Spacer(),
                        MaterialButton(
                          child: Text("📞Call"),
                          color: Colors.redAccent,
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.18,
                      height: MediaQuery.of(context).size.height * 0.18,
                    ),
                    Text("Ahmad Mansoor",
                        style: TextStyle(
                            fontSize:
                                ResponsiveFlutter.of(context).fontSize(3))),
                    Text(
                        "Systems Architect | Automation, AI and Robotics Engineer | Behaviour Scientist",
                        style: TextStyle(
                            fontSize:
                                ResponsiveFlutter.of(context).fontSize(2))),
                    Text("Pakistan",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize:
                                ResponsiveFlutter.of(context).fontSize(1))),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.30,
                      height: MediaQuery.of(context).size.height * 0.30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.amber,
                          ),
                          Container(
                            color: Colors.green,
                          ),
                          Container(
                            color: Colors.blue,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
