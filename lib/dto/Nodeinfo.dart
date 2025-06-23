
/**
 * 代理列表专用 model 类
 */
class Nodeinfo {
  final String  proxyname;      //节点名称
  final String  ipinfo;         //ip 信息
  final String  portinfo;       //端口信息
  final int?     delay;          //节点延迟
  final double?  speed;          //节点速度

  Nodeinfo({
    required this.proxyname,
    required this.ipinfo,
    required this.portinfo,
    this.delay,
    this.speed,
  });

}