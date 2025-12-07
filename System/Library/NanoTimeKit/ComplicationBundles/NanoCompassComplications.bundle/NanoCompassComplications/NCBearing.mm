@interface NCBearing
+ (NCBearing)idealizedBearing;
+ (id)randomizedBearing;
- (NCBearing)initWithBearing:(double)bearing;
- (NCBearing)initWithHeading:(id)heading;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation NCBearing

- (NCBearing)initWithBearing:(double)bearing
{
  v9.receiver = self;
  v9.super_class = NCBearing;
  v4 = [(NCBearing *)&v9 init];
    ;
  }

    ;
  }

  objc_msgSend_setBearing_(v4, v5, v6, floor(bearing));
  return i;
}

- (NCBearing)initWithHeading:(id)heading
{
  objc_msgSend_heading(heading, a2, heading);

  return objc_msgSend_initWithBearing_(self, v4, v5);
}

+ (NCBearing)idealizedBearing
{
  if (qword_27E1C4B88 != -1)
  {
    sub_23BD658EC();
  }

  v3 = qword_27E1C4B80;

  return v3;
}

+ (id)randomizedBearing
{
  v2 = [NCBearing alloc];
  v3 = arc4random_uniform(0x168u);
  v6 = objc_msgSend_initWithBearing_(v2, v4, v5, v3);

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [NCBearing alloc];
  objc_msgSend_bearing(self, v5, v6);

  return objc_msgSend_initWithBearing_(v4, v7, v8);
}

@end