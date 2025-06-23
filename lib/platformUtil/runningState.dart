import 'dart:io';
import 'dart:convert';

class RunningState{


/**
 * 运行 Xray
 */
  Future<void> runXray(String configPath) async{
    final baseDir = 'assets/xray';
    late String xrayExecutable;

      if (Platform.isWindows) {
        xrayExecutable = '$baseDir/xray-windows.exe';
      } else if (Platform.isMacOS) {
        xrayExecutable = '$baseDir/xray-macos';
      } else if (Platform.isLinux) {
        xrayExecutable = '$baseDir/xray-linux';
      } else if(Platform.isAndroid){
        xrayExecutable = '$baseDir/xray-android';
      } else {
        throw UnsupportedError('Platform not supported yet');
      }

      final result = await Process.start(
        xrayExecutable,
        ['run','-config',configPath],               // CLI 参数数组，传入给 xray-core 的命令行参数
        runInShell: true,                           // 是否通过系统 Shell 启动（需要处理 PATH / 执行权限）
        workingDirectory: Directory.current.path,   // 指定当前工作目录（对配置文件中使用的相对路径有影响）
      );

      result.stdout.transform(utf8.decoder).listen((data) {   // 监听标准输出
        print('[XRAY]  $data');
      });

      result.stderr.transform(utf8.decoder).listen((data) {   // 监听标准错误
        print('[XRAY-ERROR] $data');
      });

      result.exitCode.then((code) {                           // 监听进程退出代码
        print('[XRAY] Exited with code $code');
      });
  }
}
