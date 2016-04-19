User.create!([
  {email: "yzyzsun@gmail.com", password: "3r7-RbW-85N-SeH", sid: "3140100000", name: "Sun Yaozhu", school_class: "情報工学科 1401", admin: true},
  {email: "test@yzyzsun.me", password: "t9F-Vxa-5JP-nFC", sid: "3150100000", name: "Test User", school_class: "総合政策学科 1501", admin: false}
])
Book.create!([
  {isbn: "9787115249494", title: "黑客与画家", author: "Paul Graham", publisher: "人民邮电出版社", introduction: "本书是硅谷创业之父 Paul Graham 的文集，主要介绍黑客即优秀程序员的爱好和动机，讨论黑客成长、黑客对世界的贡献以及编程语言和黑客工作方法等所有对计算机时代感兴趣的人的一些话题。书中的内容不但有助于了解计算机编程的本质、互联网行业的规则，还会帮助读者了解我们这个时代，迫使读者独立思考。\r\n本书适合所有程序员和互联网创业者，也适合一切对计算机行业感兴趣的读者。", image_url: "https://img3.doubanio.com/lpic/s4669554.jpg", publishing_date: "2011-04-01", language: "简体中文", category_id: 1},
  {isbn: "9787115282828", title: "数学之美", author: "吴军", publisher: "人民邮电出版社", introduction: "几年前，“数学之美”系列文章原刊载于谷歌黑板报，获得上百万次点击，得到读者高度评价。读者说，读了“数学之美”，才发现大学时学的数学知识，比如马尔可夫链、矩阵计算，甚至余弦函数原来都如此亲切，并且栩栩如生，才发现自然语言和信息处理这么有趣。\r\n今年，作者吴军博士几乎把所有文章都重写了一遍，为的是把高深的数学原理讲得更加通俗易懂，让非专业读者也能领略数学的魅力。读者通过具体的例子学到的是思考问题的方式 —— 如何化繁为简，如何用数学去解决工程问题，如何跳出固有思维不断去思考创新。", image_url: "https://img3.doubanio.com/lpic/s9114855.jpg", publishing_date: "2012-05-01", language: "简体中文", category_id: 1},
  {isbn: "9787111135104", title: "计算机程序的构造和解释", author: "H. Abelson / G. J. Sussman / J. Sussman", publisher: "机械工业出版社", introduction: "《计算机程序的构造和解释(原书第2版)》1984年出版，成型于美国麻省理工学院(MIT)多年使用的一本教材，1996年修订为第2版。在过去的二十多年里，《计算机程序的构造和解释(原书第2版)》对于计算机科学的教育计划产生了深刻的影响。第2版中大部分重要程序设计系统都重新修改并做过测试，包括各种解释器和编译器。作者根据其后十余年的教学实践，还对其他许多细节做了相应的修改。", image_url: "https://img3.doubanio.com/lpic/s1113106.jpg", publishing_date: "2004-02-01", language: "简体中文", category_id: 1},
  {isbn: "9787209041065", title: "设计中的设计", author: "原研哉", publisher: "山东人民出版社", introduction: "设计到底是什么？作为一名从业二十余年并且具有世界影响的设计师，原研哉对自己提出了这样一个问题。为了给出自己的答案，他走了那么长的路，做了那么多的探索。“RE-DESIGN——二十一世纪的日常用品再设计”展真是一个有趣的展览，但又不仅仅是有趣，它分明是为我们揭示了“日常生活”所具有的无限可能性。若我们能以满怀新鲜的眼神去观照日常，“设计”的意义定会超越技术的层面，为我们的生活观和人生观注入力量。", image_url: "https://img3.doubanio.com/lpic/s3105556.jpg", publishing_date: "2006-11-01", language: "简体中文", category_id: 2},
  {isbn: "9787115188120", title: "写给大家看的设计书", author: "Robin Williams", publisher: "人民邮电出版社", introduction: "这本书出自一位世界级设计师之手。复杂的设计原理在书中凝炼为亲密性、对齐、重复和对比4 个基本原则。作者以其简洁明快的风格，将优秀设计所必须遵循的这4 个基本原则及其背后的原理通俗易懂地展现在读者面前。本书包含大量的示例，让你了解怎样才能按照自己的方式设计出美观且内容丰富的产品。\r\n此书适用于各行各业需要从事设计工作的读者，也适用于有经验的设计人员。", image_url: "https://img3.doubanio.com/lpic/s24928411.jpg", publishing_date: "2009-01-01", language: "简体中文", category_id: 2},
  {isbn: "9784087807783", title: "転調", author: "生田絵梨花", publisher: "集英社", introduction: "乃木坂46・生田絵梨花の記念すべき1st写真集。舞台は、彼女の生誕地であるドイツ・デュッセルドルフ! \r\n5歳でドイツを離れて以来、13年振りに訪れた懐かしの土地での撮影――生まれ育った家、近所の遊び場、よく食べたアイスクリーム、名前の由来にもなったErikaの花…etc。\r\n彼女の生い立ちを追った写真に加え、本邦初公開となる水着も披露。今まで見たことのない素顔の“いくちゃん\"で溢れる一冊です。", image_url: "https://img3.doubanio.com/lpic/s28421363.jpg", publishing_date: "2016-01-21", language: "日语", category_id: 3}
])
Category.create!([
  {category: "技术"},
  {category: "设计"},
  {category: "摄影"}
])
