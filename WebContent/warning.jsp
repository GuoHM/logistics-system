<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注意事项</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/news-style.css">
</head>
<body onload="today()"  data-spy="scroll" data-target="#myScrollspy">
<div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>        </button>
        <a class="navbar-brand" href="#" name="date"></a>
    </div>
    <div class="collapse navbar-collapse menubar-left">
        <ul class="nav navbar-nav">
            <li><a href="index.html"><span class="glyphicon glyphicon-home">首页</span></a></li>
            <li><a href="index.html"><span class="glyphicon glyphicon-envelope">寄快递</span></a></li>
            <li><a href="news.html"><span class="glyphicon glyphicon glyphicon-lock">网点查询</span></a></li>
            <li><a href="info.html"><span class="glyphicon glyphicon-book">运费查询</span></a></li>
            <li><a href="info.html"><span class="glyphicon glyphicon-th">关于我们</span></a></li>
            <li><a href="warning.html"><span class="glyphicon glyphicon-star">注意事项</span></a></li>
        </ul>
    </div><!-- /.nav-collapse -->
    <div class="btn-group menubar-right">
        <button name="login" type="button" class="btn btn-default">
            <a href="login.html" style="color:black;"><span class="glyphicon glyphicon-user">登录</span></a>
        </button>
    </div>
</div>

<div class="maincontent">
    <div class="container">
        <div class="row clearfix">
            <div class="col-xs-2 column" id="myScrollspy">
                <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix">
                    <ul class="nav nav-tabs nav-stacked" data-spy="affix" data-offset-top="125">
                        <li><a href="#section-1" class="editor">寄件流程</a></li>
                        <li><a href="#section-2" class="elements">禁寄物品</a></li>
                    </ul>
                </nav>
            </div>

            <div class="col-xs-8 column">

                <hr style="border-top:1px ridge rgba(6,3,9,0.47)" id="section-1">
                <br/>
                <!--mian information of the competion-->

                <h1 class="text-center" >寄件流程</h1>
                <div class="content">
                    <h4>1. 阅读申通快递详情单背书条款后再填写运单：</h4>
                    <p>运单及背书是消费者与申通快递公司之间签订的运输合同。由于没有快递行业合同法律规范或者司法解释，各地法院大多使用《经济合同法》。但即使均依据《经济合同法》条款进行判决，各法院的判决结果也不尽相同。</p>
                    <p>因此，消费者在寄递前一定要看清楚关于保险、赔偿、免责等条款。如果是每天快件量较大的客户，建议与申通快递公司另外签订保护自身合法利益的快递合同。 对于填写运单，要把寄件人与收件人的联系电话、收件人地址填写准确，否则可能会给派送造成麻烦，或在退回快件时找不到退回地址和发件人。</p>
                    <h4>2. 贵重物品要购买保险：</h4>
                    <p>一般价值2000元以上的物品，如手机 手表、电脑、照相机、首饰、高档服装、艺术品等建议要购买保险。并在保险货物名称的栏目内上正确的填写物品名称，保险金额、价值，避免理赔时产生纠纷。同时申报价值也需如实填写。有些快递运输保险是有免赔额的，如申报的保险额是5000元，但实际可能只赔4700元，其中有300元是免赔额。</p>
                    <p>因此，一定要向申通快递公司咨询清楚，必要时要求其请提供书面的说明。保险费率一般为1%至3%之间，如果保险费率过高，建议与其它快递公司的价格与保险费比较后再作权衡。</p>
                    <h4>3. 交接快件签名与保存运单：</h4>
                    <p>将快件交给快递业务员时，除自己在运单签名外，要求其必须签名，签名应与佩戴的胸牌一致。这是具有法律意义的交接。运单除了是运输合同外，还是寄递快件的凭证，在送达寄件人之前千万不要丢弃。</p>
                    <h4>4.签收流程：</h4>
                    <p>快件外包装完好，由收件人签字确认后验货。如果开箱验货后出现短缺、破损等情况，可以采取退回或让快递业务员写书面材料证明、拍照，并立即打电话通知商家或快递公司客服人员（记住客服人员、快递业务员的姓名或编号）。 </p>
                    <p>如果外包装出现明显破损等异常情况的，收派员应告知收件人先验收内件再做签收，快递服务组织与寄件人另有约定的除外。如果开箱验货后出现短缺、破损等情况，可以采取退回或让快递业务员写书面材料证明、拍照，并立即打电话通知商家或快递公司客服人员（记住客服人员、快递业务员的姓名或编号）。</p>
                </div>


                <!--end of the main information-->
                <hr style="border-top:1px ridge rgba(6,3,9,0.47)" id="section-2">
                <br/>
                <!--details of the competition<-->
                <h1 class="text-center">禁寄物品</h1>
                <div class="content">
                    <p>禁寄物品是指国家法律、法规禁止寄递的物品，主要包括：</p>
                    <h4>一、枪支（含仿制品、主要零部件）弹药</h4>
                    <p>
                        1．枪支（含仿制品、主要零部件）：如手枪、步枪、冲锋枪、防暴枪、气枪、猎枪、运动枪、麻醉注射枪、钢珠枪、催泪枪等。<br>
                        2．弹药（含仿制品）：如子弹、炸弹、手榴弹、火箭弹、照明弹、燃烧弹、烟幕（雾）弹、信号弹、催泪弹、毒气弹、地雷、手雷、炮弹、火药等。
                    </p>
                    <h4>二、管制器具</h4>
                    <p>
                        1．管制刀具：如匕首、三棱刮刀、带有自锁装置的弹簧刀（跳刀）、其他相类似的单刃、双刃、三棱尖刀等。<br>
                        2．其他：如弩、催泪器、催泪枪、电击器等。
                    </p>
                    <h4>三、爆炸物品</h4>
                    <p>
                        1．爆破器材：如炸药、雷管、导火索、导爆索、爆破剂等。<br>
                        2．烟花爆竹：如烟花、鞭炮、摔炮、拉炮、砸炮、彩药弹等烟花爆竹及黑火药、烟火药、发令纸、引火线等。<br>
                        3．其他：如推进剂、发射药、硝化棉、电点火头等。
                    </p>
                    <h4>四、压缩和液化气体及其容器</h4>
                    <p>
                        1．易燃气体：如氢气、甲烷、乙烷、丁烷、天然气、液化石油气、乙烯、丙烯、乙炔、打火机等。<br>
                        2．有毒气体：如一氧化碳、一氧化氮、氯气等。<br>
                        3．易爆或者窒息、助燃气体：如压缩氧气、氮气、氦气、氖气、气雾剂等。
                    </p>
                    <h4>五、易燃液体</h4>
                    <p> 如汽油、柴油、煤油、桐油、丙酮、乙醚、油漆、生漆、苯、酒精、松香油等。</p>
                    <h4>六、易燃固体、自燃物质、遇水易燃物质</h4>
                    <p>
                        1．易燃固体：如红磷、硫磺、铝粉、闪光粉、固体酒精、火柴、活性炭等。<br>
                        2．自燃物质：如黄磷、白磷、硝化纤维（含胶片）、钛粉等。<br>
                        3．遇水易燃物质：如金属钠、钾、锂、锌粉、镁粉、碳化钙（电石）、氰化钠、氰化钾等。
                    </p>
                    <h4>七、氧化剂和过氧化物</h4>
                    <p>如高锰酸盐、高氯酸盐、氧化氢、过氧化钠、过氧化钾、过氧化铅、氯酸盐、溴酸盐、硝酸盐、双氧水等。</p>
                    <h4>八、毒性物质</h4>
                    <p>如砷、砒霜、汞化物、铊化物、氰化物、硒粉、苯酚、汞、剧毒农药等。</p>
                    <h4>九、生化制品、传染性、感染性物质</h4>
                    <p>如病菌、炭疽、寄生虫、排泄物、医疗废弃物、尸骨、动物器官、肢体、未经硝制的兽皮、未经药制的兽骨等。</p>
                    <h4>十、放射性物质</h4>
                    <p> 如铀、钴、镭、钚等。</p>
                    <h4>十一、腐蚀性物质</h4>
                    <p>如硫酸、硝酸、盐酸、蓄电池、氢氧化钠、氢氧化钾等。</p>
                    <h4>十二、毒品及吸毒工具、非正当用途麻醉药品和精神药品、非正当用途的易制毒化学品</h4>
                    <p>
                        1．毒品、麻醉药品和精神药品：如鸦片（包括罂粟壳、花、苞、叶）、吗啡、海洛因、可卡因、大麻、甲基苯丙胺（冰毒）、氯胺酮、甲卡西酮、苯丙胺、安钠咖等。<br>
                        2．易制毒化学品：如胡椒醛、黄樟素、黄樟油、麻黄素、伪麻黄素、羟亚胺、邻酮、苯乙酸、溴代苯丙酮、醋酸酐、甲苯、丙酮等。<br>
                        3．吸毒工具：如冰壶等。
                    </p>
                    <h4>十三、非法出版物、印刷品、音像制品等宣传品</h4>
                    <p>如含有反动、煽动民族仇恨、破坏国家统一、破坏社会稳定、宣扬邪教、宗教极端思想、淫秽等内容的图书、刊物、图片、照片、音像制品等。</p>
                    <h4>十四、间谍专用器材</h4>
                    <p> 如暗藏式窃听器材、窃照器材、突发式收发报机、一次性密码本、密写工具、用于获取情报的电子监听和截收器材等。</p>
                    <h4>十五、非法伪造物品</h4>
                    <p>如伪造或者变造的货币、证件、公章等。</p>
                    <h4>十六、侵犯知识产权和假冒伪劣物品</h4>
                    <p>
                        1．侵犯知识产权：如侵犯专利权、商标权、著作权的图书、音像制品等。<br>
                        2．假冒伪劣：如假冒伪劣的食品、药品、儿童用品、电子产品、化妆品、纺织品等。
                    </p>
                    <h4>十七、濒危野生动物及其制品</h4>
                    <p>如象牙、虎骨、犀牛角及其制品等。</p>
                    <h4>十八、禁止进出境物品</h4>
                    <p>如有碍人畜健康的、来自疫区的以及其他能传播疾病的食品、药品或者其他物品；内容涉及国家秘密的文件、资料及其他物品。</p>
                    <h4>十九、其他物品</h4>
                    <p>《危险化学品目录》《民用爆炸物品品名表》《易制爆危险化学品名录》《易制毒化学品的分类和品种目录》《中华人民共和国禁止进出境物品表》载明的物品和《人间传染的病原微生物名录》载明的第一、二类病原微生物等，以及法律、行政法规、国务院和国务院有关部门规定禁止寄递的其他物品。</p>
                    <p align="left" class="STYLE3">&nbsp;</p>
                </div>
            </div>
        </div>
        <!--end of the important information-->
    </div>
</div>
</div>
</div>

<footer id="fh5co-footer" role="contentinfo">
    <div class="row copyright">
        <div class="col-md-12 text-center">
            <p>
                <small class="block">&copy; 2016 Free HTML5. All Rights Reserved.</small>
                <small class="block">作者：郭浩明，杨含笑</small>
            </p>
        </div>
    </div>
</footer>


<!-- jQuery (Bootstrap 插件需要引入) -->
<script src="js/jquery.min.js"></script>
<!-- 包含了所有编译插件 -->
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
</body>
</html>