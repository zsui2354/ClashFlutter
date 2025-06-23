// import 'dart:convert';
// import 'dart:io';
// import 'package:path_provider/path_provider.dart';

// Future<String> writeTestConfig() async {
//   final tempDir = await getTemporaryDirectory();
//   final configPath = '${tempDir.path}/xray_config.json';

//   final jsonData = {
//     "log": {
//       "loglevel": "info"
//     },
//     "inbounds": [
//       {
//         "port": 10808,
//         "listen": "127.0.0.1",
//         "protocol": "socks",
//         "settings": {"udp": true}
//       }
//     ],
//     "outbounds": [
//       {
//         "protocol": "freedom",
//         "settings": {}
//       }
//     ]
//   };

//   final file = File(configPath);
//   await file.writeAsString(jsonEncode(jsonData));
//   return configPath;
// }
