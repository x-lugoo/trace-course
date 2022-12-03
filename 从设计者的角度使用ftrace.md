# 从设计者的角度使用ftrace

### 在我仔细研究Linux内核中的ftrace之后，发现ftrace中的各个tracers的作用一直被人们严重低估了

>比如我们会花了大量的时间去理解Linux内核中的一块代码，然后猜测可能的执行流， 但是ftrace会首先直接告诉你整个执行流，
然后你再去查看代码，这样无论从效率和准确度来讲都是极大的提升。

#### 对于任意一个函数，
 + 想要知道它是否执行了
 + 或者想知道它的函数参数
 + 函数返回值
 + 函数的执行时间
 + 函数向上的执行流
 + 函数向下的执行流，
 + 甚至任意两个函数之间的执行流
#### ftrace都能很好的支持。

#### 重要的是所有函数都能这样结合起来使用，还有更加重要的是,函数可以跟事件结合起来，事件可以过滤,可以触发其它的事件和tracers. 
#### 这样就衍生出了无限的可能性。

## 本课程的设计宗旨和学习收益:
 + 让学员站在设计者的角度来理解ftrace
 + 明白各个tracers为什么这样设计和整个发展脉络
 + 进而更加灵活地使用ftrace以辅助我们的实际工程项目和研究学习
 + 也可以激发学员进而迸发出更加先进的trace功能为整个Linux内核社区做贡献。
 
 #### 本课程更加偏向于理解设计思想和使用，如果想了解源代码级别的实现，可以参考我投放在
 #### csdn  <https://edu.csdn.net/course/detail/38112>. 或者阅码场平台的视频课程《Linux内核tracers的实现原理与应用》。 
 
 ## 讲师介绍:
> 谢欢，大家可以叫我Jeff, 我目前就职于某国际知名linux发行版开源公司， 热衷于linux内核。我平时把linux内核源码当小说一样阅读学习，
> 也一直把能给linux社区贡献更多有质量的代码而努力. 最近给Linux内核提交了系列补丁objtrace,截至目前有了kprobe maintainer的
> Tested-by 和 Reviewed-by.
> 
> Tested-by: Masami Hiramatsu <mhiramat@kernel.org>
> Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>
#### 以下是最新patch objtrace源码和邮件列表讨论:
<https://github.com/x-lugoo/linux/tree/objtrace-v15>
<https://lore.kernel.org/lkml/20220819032706.695212-1-xiehuan09@gmail.com/>



## 课程大纲

#### 第一部分
+ ftrace总体介绍
+ function tracer
+ 查看函数是否执行
+ 查看函数向上的调用栈(堆栈)
+ set_ftrace_filter一招制胜
+ 练习查看函数是否执行和获取对应的堆栈

#### 第二部分
+ function_graph tracer
+ 查看函数执行时间
+ 查看函数向下的调用栈
+ 同时查看函数向上和向下的调用栈
+ 练习查看函数的执行时间和向下的调用栈


#### 第三部分
+ kprobe event
+ trace event
+ kprobe/tracepoint与event结合
+ probes 与event 结合
+ vfs与event结合
+ event filter
+ event trigger
+ 练习kprobe event和trace event的使用


#### 第四部分
+ function tracer
+ Function graph tracer
+ wakeup
+ blk
+ 练习各种tracer的使用


#### 第五部分
+ ftrace联合大演练之组合的魔力
+ 中断延迟
+ 信号处理
+ 使用ftrace探索poll select epoll io_uring


### 本课程会进行3次直播授课，每次三个小时
> 会提供qemu实验环境，使用的linux内核版本在v5.12及以上 (ftrace在v2.6.27时引进内核，部分功能低版本内核同样适用)

> 小班授课，每期大概10-15人左右，
+ 费用：1888 截止时间2022-12-30
+ 费用：2288 截止时间2023-01-30
+ 费用：2688 2023-01-30以后

> 预计2023年1月29号开课（视情况调整） 报名方式：联系微信号：googuu

