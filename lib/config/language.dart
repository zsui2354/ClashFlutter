class Language {

  String currentLocale = 'zh-cn';

  final Map<String,Map<String,String>> languages = {
    'zh-cn':{
      //导航栏
      'nav.ProxyNetwork':'代理',
      'nav.subscribe':'订阅',
      'nav.settings':'设置',
      'nav.log':'日志',
      'nav.about':'关于',
    },
    'en':{
      //导航栏
      'nav.ProxyNetwork':'Proxy',
      'nav.subscribe':'Subscribe',
      'nav.settings':'Settings',
      'nav.log':'Log',
      'nav.about':'About',
    }
  };

  String tr(String key) {
    return languages[currentLocale]?[key] ?? key;
  }
}