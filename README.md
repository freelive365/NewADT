# NewADT
a finite element procedures for New Automatic Dynamic incremental nonlinear analysis of Thermal analysis

### NewADT 研发规划

## 12-10 完成：
#### 上午：
* 1. 三维纯热传导，加固定温度载荷===》意味着，先写好**固定温度载荷下的右端项计算函数**
* 2. 热传导+线性对流，能把两个刚度矩阵加对，也即测试多矩阵刚度矩阵总装的程序正确性，同时能写出来  **对流单元，对流载荷函数**

####下午：
* 3. 热传导+热生成+线性对流，写上**热生成部分的函数，并能保证右端项的争取累加**

##12-11 完成：
* 4. 以上都是线性稳态问题，现在开始考虑 热熔矩阵C， ==》**保证5种时间积分的正确性**，以及等效热容矩阵的正确性，能够对线性瞬态问题得到正确结果

##12-12 完成：
* 5. 然后不急着进行非线性单元的计算，先把所有的边界载荷处理好，包括==》 **集中热流，分布热流（二维+三维）**，同时保证**以上三种边界+对流边界+固定温度边界+内部热生成边界   同时作用的正确性**。主要验证当以函数曲线输入的热流边界时，能算对。 **以上都先做着稳态传导**

##12-13 完成：
* 6. 开始**多边界下的瞬态测试，及功能添加**====》保证step4 进行的瞬态分析的正确性

##12-14 完成：
* 7. 开始考虑单元非线性： 热传导单元+**热辐射单元**===》参考对流单元，写出辐射单元，能够 保证**稳态下 非线性迭代过程**的正确性

##12-15 完成：
* 8. step7的稳态非线性扩展到瞬态==》保证**瞬态非线性**的争取迭代

##12-16 完成：
* 9. 开始进行**材料各向异性及非线性**的扩展，先做各向异性，这个简单，完了考虑随温度变化的材料

##12-17 完成：
* 10. 最终来做**潜热分析**，很快

##12-18~12-20 完成：
* 11. 做出考虑**扩散**效应的热传导功能

##12-21~12-25 完成：
* 12. **热固耦合**功能

##12-26~12-30 完成：
* 13. 整体功能测试，及文档撰写
