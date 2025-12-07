@interface WKInterfaceMap
- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImage:(id)image centerOffset:(CGPoint)offset;
- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImageNamed:(id)named centerOffset:(CGPoint)offset;
- (void)addAnnotation:(CLLocationCoordinate2D)annotation withPinColor:(int64_t)color;
- (void)setRegion:(id *)region;
- (void)setVisibleMapRect:(id)rect;
@end

@implementation WKInterfaceMap

- (void)setVisibleMapRect:(id)rect
{
  var1 = rect.var1.var1;
  var0 = rect.var1.var0;
  v5 = rect.var0.var1;
  v12[4] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:rect.var0.var0];
  v12[0] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:v5];
  v12[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:var0];
  v12[2] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:var1];
  v12[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v11 forProperty:@"rect"];
}

- (void)setRegion:(id *)region
{
  v7 = v6;
  v8 = v5;
  v9 = v4;
  v21[4] = *MEMORY[0x277D85DE8];
  if (fabs(v4) > 180.0 || fabs(v3) > 90.0 || v5 < 0.0 || v5 > 180.0 || v6 < 0.0 || v6 > 360.0)
  {
    v16 = MEMORY[0x277CCACA8];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%+.8f, %+.8f", *&v3, *&v4];
    v18 = [v16 stringWithFormat:@"<center:%@ span:%+.8f, %+.8f>", v17, *&v8, *&v7];

    v20 = [v16 stringWithFormat:@"Invalid Region %@", v18];

    v19 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v20 userInfo:0];
    [v19 raise];
  }

  else
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:region];
    v21[0] = v11;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
    v21[1] = v12;
    v13 = [MEMORY[0x277CCABB0] numberWithDouble:v8];
    v21[2] = v13;
    v14 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v21[3] = v14;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
    [(WKInterfaceObject *)self _sendValueChanged:v15 forProperty:@"region"];
  }
}

- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImage:(id)image centerOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  longitude = annotation.longitude;
  latitude = annotation.latitude;
  v16[4] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCABB0];
  imageCopy = image;
  v12 = [v10 numberWithDouble:latitude];
  v16[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v16[1] = v13;
  v16[2] = imageCopy;
  v14 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v16[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:4];

  [(WKInterfaceObject *)self _sendValueChanged:v15 forProperty:@"annotation"];
}

- (void)addAnnotation:(CLLocationCoordinate2D)annotation withImageNamed:(id)named centerOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  longitude = annotation.longitude;
  latitude = annotation.latitude;
  v17[4] = *MEMORY[0x277D85DE8];
  v10 = MEMORY[0x277CCABB0];
  namedCopy = named;
  v12 = [v10 numberWithDouble:latitude];
  v17[0] = v12;
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:longitude];
  v17[1] = v13;
  v14 = [namedCopy copy];

  v17[2] = v14;
  v15 = [MEMORY[0x277CCAE60] valueWithCGPoint:{x, y}];
  v17[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  [(WKInterfaceObject *)self _sendValueChanged:v16 forProperty:@"annotation"];
}

- (void)addAnnotation:(CLLocationCoordinate2D)annotation withPinColor:(int64_t)color
{
  longitude = annotation.longitude;
  v11[3] = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:annotation.latitude];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:{longitude, v7}];
  v11[1] = v8;
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:color];
  v11[2] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:3];
  [(WKInterfaceObject *)self _sendValueChanged:v10 forProperty:@"annotation"];
}

@end