# COVID19TREE兴趣小组分工安排

_这个项目还在成长的初级阶段，大家感兴趣的，可以随时在微信或[Slack](covid19tree.slack.com)把自己名字添加进来，或者感兴趣的任务下面自己添加修。还有我们的[google doc](https://docs.google.com/document/d/1Dhl9Xhn0ZUGw0AjlmqP4ZY4RXkWQ_hJCZI_eeoni5QQ/edit)。_      

**近期将安排Zoom会议** （_请备注您合适的[时间](http://whenisgood.net/)_）  
  Date: April, 4th, 2020  
  U.S. Pacific time 12pm     
  Central time 2pm   
  Berlin 9pm
  [Zoom Link](https://unl.zoom.us/j/838814944)  


#### 研究兴趣目标

**新型冠状病毒（Covid-19）的全球大流行，导致世界上80%的人们居家抗疫，影响了人们生活的方方面面。各行各业的人们都需要行动起来，去对抗这个看不见的敌人。华人基因组学在线沙龙，基于我们社区的基因组学分析优势，收集了大约三千个病毒基因组。我们将从病毒的系统发育，群体遗传角度，以我们自己的视角，去研究病毒的起源和进化。我们本着开放、开源、可重复的数据分析原则，进行数据分析。我们计划将在多个外类群的基础上，进行系统发育关系的构建，并进行进化模型分区。然后构建单倍型网络，并与旅游史进行关联分析。最终我们将数据可视化，并搭载网站予以呈现。在此过程中，我们广泛召集有相关技术背景，愿意贡献时间和精力的研究者，共同为抗击疫情做出我们应有的贡献！**  

#### 小组成员(GitHub 用户名 时区 简历) 

 + [yangjl](https://github.com/yangjl) UCT-5  
 + [oushujun](https://github.com/oushujun) UCT-5  
 + huangzhii  UCT-5 [cv](http://web.ics.purdue.edu/~huang898/)  
 + melop  Germany (GMT+2) [cv](http://fish.raycui.com/wp/cv/)
 + Cactusolo  UTC-4 [cv](https://www.sunmiao.name/)
 + [hkchi](https://github.com/hkchi) UCT-5   
 + njaupanpan UTC+2 [cv](https://epidiverse.eu/en/epidiverse-people)
 + [lipingfangs](https://github.com/lipingfangs) GMT8  
 
   
_备注: 不断完善中_  

### 数据收集  

+ 前期数据  
  方平—SCAU 250条 `all.fasta`  
    _国家生物信息学中心和内地有权限的_  
  王留阳—DukeU 1800k `gisaid_cov20200329_highcoverage_seq.fasta.gz`  
    _gisAID；高质量；建树1800条选自于此_  
  张盼盼—CNRS 2293的基因组  
  
  [小崔矩阵](http://raycui.com/ncov19/ncov19.tar.gz)
  
+ [reference](https://www.ncbi.nlm.nih.gov/nuccore/NC_045512)
  
+ 自动化收集
  先把自動化腳本弄好，例如，把 gisaid 的 metadata 下載，然後搞個自動格式轉換  
  
### 数据分析与可视化 

+ 外类群选择  
  蝙蝠和穿山甲  RaTG13 SARS  
  以用不同的外群分别构几棵树，对照看看？
  
+ 系列比对  
  MAFFT  

+ 进化模型分区 (孙苗)    
  partitionfider  
  
  GTRgamma/GTRCAT (recommended for >500 taxa)
  
  TIM2 + F + R2 (IQtree)
  
+ 建树 （崔融丰、孙苗）
  - raxml 建树  
    用fasttree 产生一个start tree, 然后转给raxml  
    
  - 基因组距离 (张盼盼)  
    popgen? 例如用Treemixgen
+ Haplotype Network  
+ 旅游史 (约翰斯基·仁波切)    
  
+ 数据可视化与网站搭建配合
  自動尋找各個可能的 suboptimal 的根，做 statistics  
  
### 网站搭建 （Zhi-Purdue&IUSM）
  架设网站，维护github，git wiki，branding等  
  biolearns python包  
  
  系统发育树[展现]( https://github.com/oist/phylogeny-io)  
  在網頁界面上最好可以設定一個 cutoff 讓用戶選擇
  
### 分化时间 （崔融丰、黄恺驰、孙苗)    
  *Beast mcmctree phylobase   
  treepl  
  bootstrap alignment 100 获得置信区间  
  
  [Timetree](https://github.com/neherlab/treetime)  
  [treedater](https://github.com/emvolz/treedater)  
  Tip date 擬定一下感染後發病時間的概率分佈   


### 数据存储策略  
  github 存後台和前台代碼

### 强化项目  
+ 传染病学和病毒学的学术咨询  
+ 数据定版【截止时间点】  
+ 系统发育树定版
+ 枝长和分化时间  
+ 网站设计，网站搭载那些内容等

