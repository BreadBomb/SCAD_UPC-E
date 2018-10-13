# SCAD_UPC-E
This is an openscad script to generate UPC-E barcodes

![Demo](/images/demo.png)

* barcode = this is the 6 digit barcode
* height = the height of the physical object
* thickness = the thickness of the bars
* stretch = This is how tall you want the object to be
* inverse = will make the "spaces" the solid (good when a darker background is used)
* 0 is deafult of no, 1 means yes

```
barcode(654321,10,2,1,0);
```

This is a Remix of XlogicXs UPC Barcode Generator: https://www.thingiverse.com/thing:311438
