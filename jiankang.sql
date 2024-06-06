
-- 数据库: `jiankang`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--
DROP DATABASE IF EXISTS jiankang;
CREATE DATABASE jiankang CHARSET utf8;
use jiankang;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL auto_increment COMMENT '主键PK',
  `adminname` varchar(50) default NULL COMMENT '管理员账号',
  `pwd` varchar(50) default NULL COMMENT '管理员密码',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='管理员' AUTO_INCREMENT=10 ;

--
-- 导出表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `adminname`, `pwd`) VALUES
(9, 'admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `dangan`
--

CREATE TABLE `dangan` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL COMMENT '名称',
  `sdate` varchar(50) default NULL COMMENT '日期',
  `xuetang` varchar(50) default NULL COMMENT '血糖',
  `xuezhi` varchar(100) default NULL COMMENT '总胆固醇',
  `ganyou` varchar(50) NOT NULL COMMENT '甘油三酯',
  `xueya1` varchar(50) NOT NULL COMMENT '低压',
  `xueya` varchar(100) default NULL COMMENT '高压',
  `xinlv` varchar(100) default NULL COMMENT '心率',
  `tiwen` varchar(100) default NULL COMMENT '体温',
  `huxi` varchar(100) default NULL COMMENT '呼吸次数',
  `shiyu` varchar(100) default NULL COMMENT '食欲',
  `shui` varchar(100) default NULL COMMENT '睡眠',
  `uname` varchar(50) default NULL COMMENT '用户',
  `zt` varchar(50) default NULL COMMENT '健康状态',
  `yijian` varchar(200) default NULL COMMENT '健康分析',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='健康档案' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `dangan`
--

INSERT INTO `dangan` (`id`, `name`, `sdate`, `xuetang`, `xuezhi`, `ganyou`, `xueya1`, `xueya`, `xinlv`, `tiwen`, `huxi`, `shiyu`, `shui`, `uname`, `zt`, `yijian`) VALUES
(1, '张三的20190416的档案', '2020-06-20', '5.8', '5.8', '2.0', '80', '190', '56', '37', '555', '好', '5', 'ztest', '未审核', '正常,无需担心'),
(2, '201901415我的档案', '2020-06-22', '7.5', '55', '1.9', '90', '160', '55', '35', '88', '不好', '6', 'ztest', '未审核', '需要你多喝水,多运动,好好睡觉');

-- --------------------------------------------------------

--
-- 表的结构 `health`
--

CREATE TABLE `health` (
  `id` int(11) NOT NULL auto_increment,
  `sdate` varchar(50) default NULL COMMENT '检查日期',
  `name` varchar(50) default NULL COMMENT '名称',
  `danwei` varchar(50) default NULL COMMENT '检查医院',
  `xiangmu` varchar(50) default NULL COMMENT '检查项目',
  `jieguo` varchar(50) default NULL COMMENT '检查结果',
  `cuoshi` varchar(50) default NULL COMMENT '采取措施',
  `beizhu` varchar(50) default NULL COMMENT '备注',
  `uname` varchar(50) default NULL COMMENT '账号',
  `zt` varchar(50) default NULL COMMENT '预警状态',
  `yijian` varchar(50) default NULL COMMENT '健康状况',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='体检记录' AUTO_INCREMENT=7 ;

--
-- 导出表中的数据 `health`
--

INSERT INTO `health` (`id`, `sdate`, `name`, `danwei`, `xiangmu`, `jieguo`, `cuoshi`, `beizhu`, `uname`, `zt`, `yijian`) VALUES
(5, '2020-06-20', '血常规检查', '北京人民医院', '血常规', '转氨酶高', '少喝酒', '是', 'ztest', '低危', '不要紧不要紧'),
(6, '2020-06-22', '体检一下', '北京人民医院', '肝功能', '脂肪肝', '多运动', '啥的', 'ztest', '低危', '不要怕,有我在呢');

-- --------------------------------------------------------

--
-- 表的结构 `liuyan`
--

CREATE TABLE `liuyan` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(50) default NULL COMMENT '留言标题',
  `neirong` varchar(3000) default NULL COMMENT '内容',
  `huifu` varchar(250) default NULL COMMENT '回复',
  `uname` varchar(50) default NULL COMMENT '用户',
  `addtime` varchar(50) default NULL COMMENT '时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='留言' AUTO_INCREMENT=3 ;

--
-- 导出表中的数据 `liuyan`
--

INSERT INTO `liuyan` (`id`, `title`, `neirong`, `huifu`, `uname`, `addtime`) VALUES
(2, '我这么了', '<p>爱上</p>', '夜神了', 'ztest', '2020-06-20 00:24:09');

-- --------------------------------------------------------

--
-- 表的结构 `notice`
--

CREATE TABLE `notice` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(150) default NULL COMMENT '标题',
  `pic` varchar(200) default NULL COMMENT '图片',
  `neirong` varchar(3000) default NULL COMMENT '内容',
  `addtime` varchar(50) default NULL COMMENT '时间',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='新闻公告' AUTO_INCREMENT=5 ;

--
-- 导出表中的数据 `notice`
--

INSERT INTO `notice` (`id`, `title`, `pic`, `neirong`, `addtime`) VALUES
(4, '测绘师下', '', '<p>阿斯顿订单多多多多多</p>', '2020-06-20 00:26:59');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(50) default NULL COMMENT '姓名',
  `sex` varchar(20) default NULL COMMENT '性别',
  `sdate` varchar(50) default NULL COMMENT '出生日期',
  `tel` varchar(20) default NULL COMMENT '联系电话',
  `xueli` varchar(50) default NULL COMMENT '学历',
  `addr` varchar(50) default NULL COMMENT '地址',
  `username` varchar(50) default NULL COMMENT '登录账号',
  `pwd` varchar(50) default NULL COMMENT '登录密码',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='用户' AUTO_INCREMENT=6 ;

--
-- 导出表中的数据 `user`
--

INSERT INTO `user` (`id`, `name`, `sex`, `sdate`, `tel`, `xueli`, `addr`, `username`, `pwd`) VALUES
(5, '曹湘鑫', '女', '1998-05-17', '18302121333', '本科', '辽宁', 'cxx', 'admin');
