$fn = 100;

//barcode = this is the 12 digit barcode
//height = the thickness of the physical object (assuming 3d-print)
//stretch = This is how tall you want the object to be
//keychain = keychain bit, 0 if no, 1 if yes
//inverse = will make the "spaces" the solid (good when a darker background is used)
	//0 is deafult of no, 1 means yes
//laser = 0 if this is a normal 3d printed file, 1 if this is to be expored to dxf for laser cutter

//barcode(462409702600,35,1,1,0,0);

module barcode(barcode, height, stretch, inverse) {

digit_1 = floor(((barcode/100000) % 10));
digit_2 = floor(((barcode/10000) % 10));
digit_3 = floor(((barcode/1000) % 10));
digit_4 = floor(((barcode/100) % 10));
digit_5 = floor(((barcode/10) % 10));
digit_6 = (barcode % 10);
    
echo(digit_1);
object(barcode, height, stretch, inverse);


module object(barcode, height, stretch, inverse){
    if (inverse == 1) {
        difference(){
            cube([111,2,35]);
            bars();
        }
    } else {
        bars();
    }
}

module bars(){
	//start code
	start();
	//digit 1
	if (digit_1 == 0) {translate([3 * stretch,0,0]) number0even();}
	if (digit_1 == 1) {translate([3 * stretch,0,0]) number1even();}
	if (digit_1 == 2) {translate([3 * stretch,0,0]) number2even();}
	if (digit_1 == 3) {translate([3 * stretch,0,0]) number3even();}
	if (digit_1 == 4) {translate([3 * stretch,0,0]) number4even();}
	if (digit_1 == 5) {translate([3 * stretch,0,0]) number5even();}
	if (digit_1 == 6) {translate([3 * stretch,0,0]) number6even();}
	if (digit_1 == 7) {translate([3 * stretch,0,0]) number7even();}
	if (digit_1 == 8) {translate([3 * stretch,0,0]) number8even();}
	if (digit_1 == 9) {translate([3 * stretch,0,0]) number9even();}
	//digit 2
	if (digit_2 == 0) {translate([10 * stretch,0,0]) number0odd();}
	if (digit_2 == 1) {translate([10 * stretch,0,0]) number1odd();}
	if (digit_2 == 2) {translate([10 * stretch,0,0]) number2odd();}
	if (digit_2 == 3) {translate([10 * stretch,0,0]) number3odd();}
	if (digit_2 == 4) {translate([10 * stretch,0,0]) number4odd();}
	if (digit_2 == 5) {translate([10 * stretch,0,0]) number5odd();}
	if (digit_2 == 6) {translate([10 * stretch,0,0]) number6odd();}
	if (digit_2 == 7) {translate([10 * stretch,0,0]) number7odd();}
	if (digit_2 == 8) {translate([10 * stretch,0,0]) number8odd();}
	if (digit_2 == 9) {translate([10 * stretch,0,0]) number9odd();}
	//digit 3
	if (digit_3 == 0) {translate([17 * stretch,0,0]) number0even();}
	if (digit_3 == 1) {translate([17 * stretch,0,0]) number1even();}
	if (digit_3 == 2) {translate([17 * stretch,0,0]) number2even();}
	if (digit_3 == 3) {translate([17 * stretch,0,0]) number3even();}
	if (digit_3 == 4) {translate([17 * stretch,0,0]) number4even();}
	if (digit_3 == 5) {translate([17 * stretch,0,0]) number5even();}
	if (digit_3 == 6) {translate([17 * stretch,0,0]) number6even();}
	if (digit_3 == 7) {translate([17 * stretch,0,0]) number7even();}
	if (digit_3 == 8) {translate([17 * stretch,0,0]) number8even();}
	if (digit_3 == 9) {translate([17 * stretch,0,0]) number9even();}
	//digit 4
	if (digit_4 == 0) {translate([24 * stretch,0,0]) number0odd();}
	if (digit_4 == 1) {translate([24 * stretch,0,0]) number1odd();}
	if (digit_4 == 2) {translate([24 * stretch,0,0]) number2odd();}
	if (digit_4 == 3) {translate([24 * stretch,0,0]) number3odd();}
	if (digit_4 == 4) {translate([24 * stretch,0,0]) number4odd();}
	if (digit_4 == 5) {translate([24 * stretch,0,0]) number5odd();}
	if (digit_4 == 6) {translate([24 * stretch,0,0]) number6odd();}
	if (digit_4 == 7) {translate([24 * stretch,0,0]) number7odd();}
	if (digit_4 == 8) {translate([24 * stretch,0,0]) number8odd();}
	if (digit_4 == 9) {translate([24 * stretch,0,0]) number9odd();}
	//digit 5
	if (digit_5 == 0) {translate([31 * stretch,0,0]) number0even();}
	if (digit_5 == 1) {translate([31 * stretch,0,0]) number1even();}
	if (digit_5 == 2) {translate([31 * stretch,0,0]) number2even();}
	if (digit_5 == 3) {translate([31 * stretch,0,0]) number3even();}
	if (digit_5 == 4) {translate([31 * stretch,0,0]) number4even();}
	if (digit_5 == 5) {translate([31 * stretch,0,0]) number5even();}
	if (digit_5 == 6) {translate([31 * stretch,0,0]) number6even();}
	if (digit_5 == 7) {translate([31 * stretch,0,0]) number7even();}
	if (digit_5 == 8) {translate([31 * stretch,0,0]) number8even();}
	if (digit_5 == 9) {translate([31 * stretch,0,0]) number9even();}
	//digit 6
	if (digit_6 == 0) {translate([38 * stretch,0,0]) number0odd();}
	if (digit_6 == 1) {translate([38 * stretch,0,0]) number1odd();}
	if (digit_6 == 2) {translate([38 * stretch,0,0]) number2odd();}
	if (digit_6 == 3) {translate([38 * stretch,0,0]) number3odd();}
	if (digit_6 == 4) {translate([38 * stretch,0,0]) number4odd();}
	if (digit_6 == 5) {translate([38 * stretch,0,0]) number5odd();}
	if (digit_6 == 6) {translate([38 * stretch,0,0]) number6odd();}
	if (digit_6 == 7) {translate([38 * stretch,0,0]) number7odd();}
	if (digit_6 == 8) {translate([38 * stretch,0,0]) number8odd();}
	if (digit_6 == 9) {translate([38 * stretch,0,0]) number9odd();}
	//end code
	translate([45 * stretch,0,0]) end();
	//8 bits of quiet zone padding
}

module start() {
	cube([1 * stretch,2,height]);
	translate([2 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module end() {
	translate([1 * stretch,0,0])
	cube([1 * stretch,2,height]);
    translate([3* stretch,0,0])
	cube([1 * stretch,2,height]);
    translate([5 * stretch,0,0])
	cube([1 * stretch,2,height]);
}


module number0even() {
	translate([1 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([4 * stretch,0,0])
	cube([3 * stretch,2,height]);
}

module number0odd() {
	translate([3 * stretch,0,0])
	cube([2 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module number1even() {
	translate([1 * stretch,0,0])
	cube([2 * stretch,2,height]);
	translate([5 * stretch,0,0])
	cube([2 * stretch,2,height]);
}

module number1odd() {
	translate([2 * stretch,0,0])
	cube([2 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module number2even() {
	translate([2 * stretch,0,0])
	cube([2 * stretch,2,height]);
	translate([5 * stretch,0,0])
	cube([2 * stretch,2,height]);
}

module number2odd() {
	translate([2 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([5 * stretch,0,0])
	cube([2 * stretch,2,height]);
}


module number3even() {
	translate([1 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module number3odd() {
	translate([1 * stretch,0,0])
	cube([4 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module number4even() {
	translate([2 * stretch,0,0])
	cube([3 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module number4odd() {
	translate([1 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([5 * stretch,0,0])
	cube([2 * stretch,2,height]);
}

module number5even() {
	translate([1 * stretch,0,0])
	cube([3 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module number5odd() {
	translate([1 * stretch,0,0])
	cube([2 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}
module number6even() {
	translate([4 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}

module number6odd() {
	translate([1 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([3 * stretch,0,0])
	cube([4 * stretch,2,height]);
}
module number7even() {
	translate([2 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height]);
}
module number7odd() {
	translate([1 * stretch,0,0])
	cube([3 * stretch,2,height]);
	translate([5 * stretch,0,0])
	cube([2 * stretch,2,height]);
}
module number8even() {
	translate([3 * stretch,0,0])
	cube([1 * stretch,2,height+6]);
	translate([6 * stretch,0,0])
	cube([1 * stretch,2,height+6]);
}

module number8odd() {
	translate([1 * stretch,0,0])
	cube([2 * stretch,2,height+6]);
	translate([4 * stretch,0,0])
	cube([3 * stretch,2,height+6]);
}
module number9even() {
	translate([2 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([4 * stretch,0,0])
	cube([3 * stretch,2,height]);
}

module number9odd() {
	translate([3 * stretch,0,0])
	cube([1 * stretch,2,height]);
	translate([5 * stretch,0,0])
	cube([2 * stretch,2,height]);
}

//Used in conjunction with right digits
module solid() {
	translate([0,0,0])
	cube([7 * stretch,2,height]);
}

}