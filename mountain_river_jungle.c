//A Breath of Fresh Air in C 
 
#include <stdio.h> 
 
// The main function 
int main() 
{ 
	// Initializing strings 
	char str1[10] = "Fresh"; 
	char str2[10] = "Air"; 
	
	// Prints the combination of two strings 
	printf("A %s of %s \n", str1, str2); 
	
	//1
	int x = 0;
	int y = 0;
	
	//2
	if(x == 0 && y == 0){
		printf("The coordinates are at the origin\n");
	}
	
	//3
	for(int i = 0; i < 10; i++){
		printf("Counting from 0 to 9: %d\n", i);
	}
	
	//4
	x = 6;
	y = 9;
	
	//5
	int sum = x + y;
	printf("The sum of x + y is %d\n", sum);
	
	//6
	int product = x * y;
	printf("The product of x * y is %d\n", product);
	
	//7
	int difference = x - y;
	printf("The difference between x - y is %d\n", difference);
	
	//8
	int quotient = x / y;
	printf("The quotient of x / y is %d\n", quotient);
	
	//9
	int remainder = x % y;
	printf("The remainder of x % y is %d\n", remainder);
	
	//10
	char str3[10] = "Breath";
	printf("A %s of %s %s\n", str3, str1, str2);
	
	//11
	for(int j = 1; j <= 10; j++){
		printf("The square of %d is %d\n", j, j*j);
	}
	
	//12
	int a = 5;
	int b = 3;
	
	//13
	int max;
	if(a > b){
		max = a;
	}
	else {
		max = b; 
	}
	
	//14
	printf("The maximum of %d and %d is %d\n", a, b, max);
	
	//15
	int tab[20];
	
	//16
	for(int k = 0; k < 20; k++){
		tab[k] = k*k;
	}
	
	//17
	for(int k = 0; k < 20; k++){
		printf("The square of %d is %d\n", k, tab[k]);
	}
	
	//18
	int counter = 0;
	while(counter < 10){
		printf("Counter: %d\n", counter);
		counter++;
	}
	
	//19
	printf("The sum of squares between 0 and 9 is %d\n", tab[9]);
	
	//20
	int c = 20;
	int d = 10;
	
	//21
	int min; 
	if(c < d){
		min = c;
	}
	else {
		min = d;
	}
	
	//22
	printf("The minimum of %d and %d is %d\n", c, d, min);
	
	//23
	for(int l = 10; l > 0; l--){
		printf("Counting down from 10 to 0: %d\n", l);
	}
	
	//24
	int dividend = c;
	int divisor = d;
	int quot = dividend / divisor;
	
	//25
	printf("The quotient of %d / %d is %d\n", dividend, divisor, quot);
	
	//26
	int num1 = 3;
	int num2 = 4;
	int difference2 = num1 - num2;
	
	//27
	printf("The difference between %d and %d is %d\n", num1, num2, difference2);
	
	//28
	char str4[10] = "of";
	printf("A %s %s %s %s\n", str3, str4, str1, str2);
	
	//29
	int gcd;
	for(int m = 1; m <= c && m <= d; m++){
		if(c%m == 0 && d%m == 0)
			gcd = m;
	}
	
	//30
	printf("The GCD of %d and %d is %d\n", c, d, gcd);
	
	//31
	int num3 = 8;
	int num4 = 7;
	int sum2 = num3 + num4;
	
	//32
	printf("The sum of %d and %d is %d\n", num3, num4, sum2);
	
	//33
	int ctr = 0;
	while(ctr < 10){
		printf("The square of %d is %d\n", ctr, ctr*ctr);
		ctr++;
	}
	
	//34
	int array[10];
	for(int n = 0; n < 10; n++){
		array[n] = n*n;
	}
	
	//35
	for(int n = 0; n < 10; n++){
		printf("The square of %d is %d\n", n, array[n]);
	}
	
	//36
	int num5 = 24;
	int num6 = 12;
	int difference3 = num5 - num6;
	
	//37
	printf("The difference between %d and %d is %d\n", num5, num6, difference3);
	
	//38
	char str5[10] = "A";
	printf("%s %s of %s %s\n", str5, str3, str1, str2);
	
	//39
	int x1 = 1;
	int x2 = 1;
	
	//40
	if(x1 == x2){
		printf("The coordinates are the same\n");
	}
	
	//41
	int dividend2 = num5;
	int divisor2 = num6;
	int quot2 = dividend2 / divisor2;
	
	//42
	printf("The quotient of %d / %d is %d\n", dividend2, divisor2, quot2);
	
	//43
	int product2 = x1 * x2;
	printf("The product of %d * %d is %d\n", x1, x2, product2);
	
	//44
	int big_number = 1;
	for(int o = 0; o < 10; o++){
		big_number *= 10;
	}
	
	//45
	printf("The big number is %d\n", big_number);
	
	//46
	int remainder2 = num5 % num6;
	printf("The remainder of %d %% %d is %d\n", num5, num6, remainder2);
	
	//47
	int num7 = 21;
	int num8 = 6;
	int max2; 
	if(num7 > num8){
		max2 = num7;
	}
	else {
		max2 = num8; 
	}
	
	//48
	printf("The maximum of %d and %d is %d\n", num7, num8, max2);
	
	//49
	int num9 = 2;
	int num10 = 8;
	int min2;
	
	//50
	if(num9 < num10){
		min2 = num9;
	}
	else {
		min2 = num10;
	}
	
	//51
	printf("The minimum of %d and %d is %d\n", num9, num10, min2);
	
	//52
	int factorial = 1;
	for(int p = 1; p <= num10; p++){
		factorial *= p;
	}
	
	//53
	printf("The factorial of %d is %d\n", num10, factorial);
	
	//54
	char str6[10] = "Breath";
	printf("%s %s of %s %s\n", str6, str3, str1, str2);
	
	//55
	char str7[10] = "A";
	printf("%s %s %s %s of %s\n", str7, str6, str4, str1, str2);
	
	//56
	for(int q = 0; q < 10; q++){
		printf("The cube of %d is %d\n", q, q*q*q);
	}
	
	//57
	int num11 = 16;
	int num12 = 4;
	int quot3 = num11 / num12;
	
	//58
	printf("The quotient of %d / %d is %d\n", num11, num12, quot3);
	
	//59
	int sum3 = num11 + num12;
	printf("The sum of %d and %d is %d\n", num11, num12, sum3);
	
	//60
	int ctr2 = 10;
	while(ctr2 > 0){
		printf("The square of %d is %d\n", ctr2, ctr2*ctr2);
		ctr2--;
	}
	
	//61
	int ctr3 = 10;
	do{
		printf("The cube of %d is %d\n", ctr3, ctr3*ctr3*ctr3);
		ctr3--;
	}
	while(ctr3 > 0);
	
	//62
	int num13 = 34;
	int num14 = 17;
	int difference4 = num13 - num14;
	
	//63
	printf("The difference between %d and %d is %d\n", num13, num14, difference4);
	
	//64
	char str8[10] = "A";
	printf("%s %s %s of %s %s\n", str8, str6, str4, str1, str2);
	
	//65
	int product3 = num13 * num14;
	printf("The product of %d * %d is %d\n", num13, num14, product3);
	
	//66
	int dividend3 = num13;
	int divisor3 = num14;
	int remainder3 = dividend3 % divisor3;
	
	//67
	printf("The remainder of %d %% %d is %d\n", dividend3, divisor3, remainder3);
	
	//68
	int num15 = 10;
	int num16 = 5;
	int max3;
	
	//69
	if(num15 > num16){
		max3 = num15;
	}
	else {
		max3 = num16; 
	}
	
	//70
	printf("The maximum of %d and %d is %d\n", num15, num16, max3);
	
	//71
	int array2[10];
	for(int r = 0; r < 10; r++){
		array2[r] = r*r*r;
	}
	
	//72
	for(int r = 0; r < 10; r++){
		printf("The cube of %d is %d\n", r, array2[r]);
	}
	
	//73
	int num17 = 6;
	int num18 = 3;
	int min3;
	
	//74
	if(num17 < num18){
		min3 = num17;
	}
	else {
		min3 = num18;
	}
	
	//75
	printf("The minimum of %d and %d is %d\n", num17, num18, min3);
	
	//76
	char str9[10] = "Breath";
	printf("%s %s %s %s of %s\n", str9, str8, str4, str1, str2);
	
	//77
	int sum4 = 1;
	for(int s = 1; s <= num17; s++){
		sum4 += s;
	}
	
	//78
	printf("The sum of numbers between 1 and %d is %d\n", num17, sum4);
	
	//79
	int gcd2;
	for(int t = 1; t <= num17 && t <= num18; t++){
		if(num17%t == 0 && num18%t == 0)
			gcd2 = t;
	}
	
	//80
	printf("The GCD of %d and %d is %d\n", num17, num18, gcd2);
	
	//81
	int num19 = 1;
	for(int u = 0; u < 10; u++){
		num19 *= 10;
	}
	
	//82
	printf("The big number is %d\n", num19);
	
	//83
	int factorial2 = 1;
	for(int v = 1; v <= num18; v++){
		factorial2 *= v;
	}
	
	//84
	printf("The factorial of %d is %d\n", num18, factorial2);
	
	//85
	int product4 = num19 * num19;
	printf("The product of %d * %d is %d\n", num19, num19, product4);
	
	//86
	int quot4 = num19 / num19;
	printf("The quotient of %d / %d is %d\n", num19, num19, quot4);
	
	//87
	int remainder4 = num19 % num19;
	printf("The remainder of %d %% %d is %d\n", num19, num19, remainder4);
	
	//88
	int num20 = 15;
	int num21 = 7;