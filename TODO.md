# COVID19TREE兴趣小组分工安排

_这个项目还在成长的初级阶段，大家感兴趣的，可以随时在微信或[Slack](covid19tree.slack.com)把自己名字添加进来，或者感兴趣的任务下面自己添加修。还有我们的[google doc](https://docs.google.com/document/d/1Dhl9Xhn0ZUGw0AjlmqP4ZY4RXkWQ_hJCZI_eeoni5QQ/edit)。_      

**近期将安排Zoom会议** （_请备注您合适的[时间](http://whenisgood.net/)_）  


#### 研究兴趣目标

**本着开放、开源、可重复的的数据分析精神，进行独立自主的数据分析，指出现有社区团体分析方法缺陷(如，[序列剔除](https://github.com/nextstrain/ncov/issues/279)、[置根](https://github.com/nextstrain/ncov/issues/278))和/或媒体不实报道，对中国或其他地区或国家有偏见，我们用数据为证据来反驳和澄清。**  

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
    __国家生物信息学中心和内地有权限的__  
  王留阳—DukeU 1800k `gisaid_cov20200329_highcoverage_seq.fasta.gz`  
  __gisAID；高质量；建树1800条选自于此__
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
  
### 分化时间  
  *Beast mcmctree phylobase 或 （崔融丰、孙苗）
  treepl 
  bootstrap alignment 100 获得置信区间
  
  [Timetree](https://github.com/neherlab/treetime)
  [treedater](https://github.com/emvolz/treedater)
  Tip date 擬定一下感染後發病時間的概率分佈 


### 数据存储策略  
  github 存後台和前台代碼


