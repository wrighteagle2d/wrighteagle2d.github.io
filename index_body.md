Introduction
------------

[WrightEagle 2D Soccer Simulation Team](http://www.wrighteagle.org/2d/)
is a branch of [WrightEagle](http://www.wrighteagle.org/) Robocup Team,
established in 1998 by the [Multi-Agent Systems
Lab.](http://wrighteagle.org), [University of Science and Technology of
China](http://www.ustc.edu.cn) (USTC). We have participated in annual
competitions of RoboCup since 1999 and have won 6 ***world champions***
and 5 runners-up of RoboCup since 2005.

We model [RoboCup 2D soccer
simulation](https://en.wikipedia.org/wiki/RoboCup_2D_Soccer_Simulation_League)
as a typical problem of partially observable stochastic games (POSGs).
In order to solve it online under realtime constraints, we take
advantage of rationality assumption, hierarchical decomposition, state
abstraction, expectimax tree search, Monte Carlo simulation
and heuristic evaluation. More
precisely, we model the RoboCup 2D game as a [Markov decision
process](https://en.wikipedia.org/wiki/Markov_decision_process) (MDP),
assuming that opponents and teammates are all rational. We
further decompose the sequential decision-making problem within the
resulting MDP into a hierarchy of subtasks, including attack, defense, 
shoot, dribble, pass, intercept, position, mark, block, formation, etc. 
A hierarchical online
planning algorithm is then developed for the agent to do online planning
in realtime, exploiting subtask-specific heuristic and evaluation
functions. More information regarding our approach to RoboCup 2D can be
found in our recent
[publications](http://wrighteagle2d.github.io/publications.html).

\
\


Research
--------

-   [Hierarchical planning for large Markov decision processes (MDPs)](http://www.wrighteagle.org/en/research/decisionmaking.php)
-   [Online planning for (partially observable) Markov decision processes (MDPs and POMDPs)](http://www.wrighteagle.org/en/research/planning.php)
-   [Approximate planning for decentralized partially observable Markov decision processes (Dec-POMDPs)](http://www.wrighteagle.org/en/research/decpomdp.php)

\
\


Videos
------

-   [Final of RoboCup
    2015](https://www.youtube.com/watch?v=Ptzv9NF9opM) (HELIOS2015\_0-vs-**WrightEagle**\_3) ***[Champion!]***
-   [Final of RoboCup
    2014](https://www.youtube.com/watch?v=kRIygFjlD_Q) (**WrightEagle**\_3-vs-Gliders2014\_2) ***[Champion!]***
-   [Final of RoboCup
    2013](https://www.youtube.com/watch?v=BoWoIc4IrtI) (**WrightEagle**\_2-vs-HELIOS2013\_0) ***[Champion!]***
-   [Final of RoboCup
    2012](https://www.youtube.com/watch?v=cDhSjSYPvdE) (**HELIOS2012**\_4-vs-WrightEagle\_1)
-   [Final of RoboCup
    2011](https://www.youtube.com/watch?v=leNDA5tzUfk) (**WrightEagle**\_3-vs-HELIOS2011\_2) ***[Champion!]***
-   [Final of RoboCup
    2010](https://www.youtube.com/watch?v=BVWkndHk3AE) (**HELIOS2010**\_2-vs-WrightEagle\_1)
-   [Final of RoboCup
    2009](https://www.youtube.com/watch?v=Q18Wxs3Da-8) (HELIOS2009\_1-vs-**WrightEagle**\_2) ***[Champion!]***
-   [Final of RoboCup
    2008](https://www.youtube.com/watch?v=w1c_8TWX8dY) (**Brainstormers08**\_0\_4-vs-WE2008\_0\_3)
-   [Final of RoboCup
    2007](https://www.youtube.com/watch?v=ceDDg_l6_J0) (**Brainstormers07**\_3-vs-WE2007\_0)
-   [Final of RoboCup
    2006](https://www.youtube.com/watch?v=FiFj0HQXaGw) (Brainstormers06\_1-vs-**WE2006**\_2) ***[Champion!]***
-   [Final of RoboCup
    2005](https://www.youtube.com/watch?v=FiFj0HQXaGw) (**Brainstormers05**\_3-vs-WE2005\_0)

\
\


Binaries
--------

-   [Stable Version (for
    Ubuntu 16.04)](binaries/WrightEagle_stable_ubuntu_16.04.tar.gz)
-   [Stable Version (for
    Ubuntu 14.04)](binaries/WrightEagle_stable_ubuntu_14.04.tar.gz)
-   [Stable Version (for
    Ubuntu 12.04)](binaries/WrightEagle_stable_ubuntu_12.04.tar.gz)
-   [Binary of RoboCup 2015 (for
    Ubuntu 14.04)](binaries/WrightEagle_rc15_ubuntu_14.04_release.tar.gz)
-   [Binary of RoboCup 2015](binaries/WrightEagle_rc15_release.tar.gz)
-   [Binary of RoboCup 2014 (for
    Ubuntu 14.04)](binaries/WrightEagle_rc14_ubuntu_14.04_release.tar.gz)
-   [Binary of RoboCup 2014](binaries/WrightEagle_rc14_release.tar.gz)
-   [Binary of RoboCup China Open
    2013](binaries/WrightEagle_chinaopen13_release.tar.gz)
-   [Binary of RoboCup 2013 (for
    Ubuntu 14.04)](binaries/WrightEagle_rc13_ubuntu_14.04_release.tar.gz)
-   [Binary of RoboCup 2013](binaries/WrightEagle_rc13_release.tar.gz)
-   [Binary of RoboCup China Open
    2012](binaries/WrightEagle_chinaopen12_release.tar.gz)
-   [Binary of RoboCup 2012](binaries/WrightEagle_rc12_release.tar.gz)
-   [Binary of RoboCup China Open
    2011](binaries/WrightEagle_chinaopen11_release.tar.gz)
-   [Binary of RoboCup 2011](binaries/WrightEagle_rc11_release.tar.gz)
-   [Binary of RoboCup China Open
    2010](binaries/WrightEagle_chinaopen10_release.tar.gz)
-   [Binary of RoboCup 2010](binaries/WrightEagle_rc10_release.tar.gz)
-   [Binary of RoboCup China Open
    2009](binaries/WrightEagle_chinaopen09_release.tar.gz)
-   [Binary of RoboCup 2009](binaries/WrightEagle_rc09_release.tar.gz)

\
\


Releases
--------

-   [WrightEagleBASE at
    GitHub](https://github.com/wrighteagle2d/wrighteaglebase)
-   [WrightEagleBASE-4.1.0](releases/WrightEagleBASE-4.1.0.tar.gz)   (Jul.
    12, 2014)
-   [WrightEagleBASE-4.0.0](releases/WrightEagleBASE-4.0.0.tar.gz)   (Jan.
    13, 2013)
-   [WrightEagleBASE-3.0.0](releases/WrightEagleBASE-3.0.0.tar.gz)   (Aug.
    13, 2011)
-   [WrightEagleBASE-2.1.0](releases/WrightEagleBASE-2.1.0.tar.gz)   (Dec.
    5, 2010)
-   [WrightEagleBASE-2.0.2](releases/WrightEagleBASE-2.0.2.tar.gz)   (Aug.
    24, 2010)
-   [WrightEagleBASE-2.0.1](releases/WrightEagleBASE-2.0.1.tar.gz)   (Aug.
    21, 2010)
-   [WrightEagleBASE-2.0.0](releases/WrightEagleBASE-2.0.0.tar.gz)   (Aug.
    20, 2010)
-   [WrightEagleBASE-1.1.0](releases/WrightEagleBASE-1.1.0.tar.gz)   (Jan.
    19, 2010)
-   [WrightEagleBASE-1.0.1](releases/WrightEagleBASE-1.0.1.tar.gz)   (Oct.
    17, 2009)
-   [WrightEagleBASE-1.0.0](releases/WrightEagleBASE-1.0.0.tar.gz)   (Aug.
    26, 2009)

