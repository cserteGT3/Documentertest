# Old news

In 2001, Marshall Rose characterized several deployment problems when applying Postel's principle in the design of a new application protocol.
For example, a defective implementation that sends non-conforming messages might be used only with implementations that tolerate those deviations from the specification until, possibly several years later, it is connected with a less tolerant application that rejects its messages.
In such a situation, identifying the problem is often difficult, and deploying a solution can be costly. Rose therefore recommended "explicit consistency checks in a protocol ... even if they impose implementation overhead".
![](Lena.png)