A = c(19,25,55,14,19,60,77,91,20,16,29,33,71,39,48,42,51,61,40,44,88,71,29,18,39)
B= 	c(10,8,19,22,30,29,44,49,32,19,11,16,45,66,70,71,17,15,22,29,40,35,19,33,16,19,64,40,9,15,22,37)

sort(A)
sort(B)

shapiro.test(A)
#p-value = .1177 therefore reject h0 and implies not normal data.

shapiro.test(B)
#p-value = .0041 therefore reject h0 and implies not normal data.



#Variance Test
var.test(A,B, ratio = 1)

#Mean Test
t.test(A, B, alternative = "greater", var.equal = F, conf.level = .95)
