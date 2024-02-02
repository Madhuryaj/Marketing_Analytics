#R Code to understand Matrix


> c(2,3,4)
[1] 2 3 4
> x<-c
> x
function (...)  .Primitive("c")
> x<-c(2,3,4)
> x
[1] 2 3 4
> y<-c(2:5)
> y
[1] 2 3 4 5
> x+y
[1] 4 6 8 7
Warning message:
In x + y : longer object length is not a multiple of shorter object length
> y<-c(2:4)
> y
[1] 2 3 4
> x+y
[1] 4 6 8
> sqrt(x)
[1] 1.414214 1.732051 2.000000
> sd(y)
[1] 1
> cor(x,y)
[1] 1
> x<-c(3,4,5)
> sqrt(x)
[1] 1.732051 2.000000 2.236068
> sd(x)
[1] 1
> cor(x,y)
[1] 1
> z<-matrix(data=c(1:4),nrow=2,ncol=2)
> z
     [,1] [,2]
[1,]    1    3
[2,]    2    4
> A<-matrix(data=c(1:4),nrow=2,ncol=2,nyRow=TRUE)
Error in matrix(data = c(1:4), nrow = 2, ncol = 2, nyRow = TRUE) : 
  unused argument (nyRow = TRUE)
> A<-matrix(data=c(1:4),nrow=2,ncol=2,byRow=TRUE)
Error in matrix(data = c(1:4), nrow = 2, ncol = 2, byRow = TRUE) : 
  unused argument (byRow = TRUE)
> A<-matrix(data=c(1:4),nrow=2,ncol=2,byrow=TRUE)
> A
     [,1] [,2]
[1,]    1    2
[2,]    3    4
> b<-matrix(data=c(1:4),nrow=2,ncol=2,bycol=FALSE)
Error in matrix(data = c(1:4), nrow = 2, ncol = 2, bycol = FALSE) : 
  unused argument (bycol = FALSE)
> b<-matrix(data=c(1:4),nrow=2,ncol=3)
Warning message:
In matrix(data = c(1:4), nrow = 2, ncol = 3) :
  data length [4] is not a sub-multiple or multiple of the number of columns [3]
> matrix?
+ 
+ help(matrix)
Error in `?`(matrix, help(matrix)) : 
  no documentation of type ‘matrix’ and topic ‘help(matrix)’ (or error in processing help)
> help("matrix")
> rnorm()
Error in rnorm() : argument "n" is missing, with no default
> rnorm(2)
[1]  0.2356830 -0.3023923
> rnorm(4)
[1]  0.3832136  0.1790139 -1.0053847 -1.4149733
> rnorm(41)
 [1] -0.149978094  0.277201578  1.887136060  0.061844333 -1.280575974  0.953195465  0.480139905  0.068992933  0.349224635
[10]  2.392990087 -1.216245231  0.963751124  0.770641465  1.748731174 -0.258622352 -0.150066511 -1.678547843  0.008696457
[19] -0.495080668  0.079623997  0.094889740 -1.812481761 -0.319518356 -0.383069942 -1.037566641 -0.508813073  0.785055089
[28] -0.286222737 -0.726048225  0.820810065  1.612620788 -0.882915369  1.152689816  0.511647304 -0.202161698 -0.111422992
[37]  0.741737373 -0.389500255 -1.536029910  0.401904315  2.191716721
> rnorm(1)
[1] 0.4611182
> help("rnorm")
> d<-rnorm(5)
> d
[1]  0.1616096  0.9095053  1.8377479 -0.8415641 -0.6184890
> sqrt(d)
[1] 0.4020069 0.9536799 1.3556356       NaN       NaN
Warning message:
In sqrt(d) : NaNs produced
> mean(d)
[1] 0.2897619
> sd(d)
[1] 1.106976
> d
[1]  0.1616096  0.9095053  1.8377479 -0.8415641 -0.6184890
> mean(rnorm(3))
[1] -0.1569056
> e<-matrix(c(10:20,nrow=3,ncol=4,byrow=True))
Error: object 'True' not found
> e<-matrix(c(10:20,nrow=3,ncol=4,byrow=TRUE))
> e
      [,1]
 [1,]   10
 [2,]   11
 [3,]   12
 [4,]   13
 [5,]   14
 [6,]   15
 [7,]   16
 [8,]   17
 [9,]   18
[10,]   19
[11,]   20
[12,]    3
[13,]    4
[14,]    1
> e<-matrix(c(10:20),nrow=3,ncol=4,byrow=TRUE))
Error: unexpected ')' in "e<-matrix(c(10:20),nrow=3,ncol=4,byrow=TRUE))"
> e
      [,1]
 [1,]   10
 [2,]   11
 [3,]   12
 [4,]   13
 [5,]   14
 [6,]   15
 [7,]   16
 [8,]   17
 [9,]   18
[10,]   19
[11,]   20
[12,]    3
[13,]    4
[14,]    1
> e<-matrix(c(10:20),nrow=3,ncol=4,byrow=TRUE))
Error: unexpected ')' in "e<-matrix(c(10:20),nrow=3,ncol=4,byrow=TRUE))"
> e<-matrix(c(10:20),nrow=3,ncol=4,byrow=TRUE)
Warning message:
In matrix(c(10:20), nrow = 3, ncol = 4, byrow = TRUE) :
  data length [11] is not a sub-multiple or multiple of the number of rows [3]
> e<-matrix(c(10:20),nrow=4,ncol=4,byrow=TRUE)
Warning message:
In matrix(c(10:20), nrow = 4, ncol = 4, byrow = TRUE) :
  data length [11] is not a sub-multiple or multiple of the number of rows [4]
> e<-matrix(c(10:22),nrow=4,ncol=4,byrow=TRUE)
Warning message:
In matrix(c(10:22), nrow = 4, ncol = 4, byrow = TRUE) :
  data length [13] is not a sub-multiple or multiple of the number of rows [4]
> e<-matrix(c(10:21),nrow=3,ncol=4,byrow=TRUE)
> e
     [,1] [,2] [,3] [,4]
[1,]   10   11   12   13
[2,]   14   15   16   17
[3,]   18   19   20   21
> c([2][3])
Error: unexpected '[' in "c(["
> e([2][3])
Error: unexpected '[' in "e(["
> e[2][3]
[1] NA
> e[2:3]
[1] 14 18
> e[2,3]
[1] 16
> - e[2,3]
[1] -16
> e[-2,-3]
     [,1] [,2] [,3]
[1,]   10   11   13
[2,]   18   19   21
> e[-2:-3]
 [1] 10 11 15 19 12 16 20 13 17 21
> e[2:3]
[1] 14 18
> e[3:4]
[1] 18 11
> e[6:4]
[1] 19 15 11
> f<-matrix(1:16,4,4)
> f
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
[3,]    3    7   11   15
[4,]    4    8   12   16
> f[2,3]
[1] 10
> f[0:3]
[1] 1 2 3
> f[0:4]
[1] 1 2 3 4
> f[1:4]
[1] 1 2 3 4
> f[2:4]
[1] 2 3 4
> f[3:4]
[1] 3 4
> f[4:4]
[1] 4
> f[1:2,]
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
> f[,3:4]
     [,1] [,2]
[1,]    9   13
[2,]   10   14
[3,]   11   15
[4,]   12   16
> f[,]
     [,1] [,2] [,3] [,4]
[1,]    1    5    9   13
[2,]    2    6   10   14
[3,]    3    7   11   15
[4,]    4    8   12   16
> -f(1,3)
Error in f(1, 3) : could not find function "f"
> typeof(f)
[1] "integer"
> class(f)
[1] "matrix" "array" 
> f[,-c(1,3)]
     [,1] [,2]
[1,]    5   13
[2,]    6   14
[3,]    7   15
[4,]    8   16
> f[,-c(1,3,4)]
[1] 5 6 7 8
> f[,-c(2,3,4)]
[1] 1 2 3 4
> f[,-c(1,2,3,4)]
    
[1,]
[2,]
[3,]
[4,]
> help("dist")
