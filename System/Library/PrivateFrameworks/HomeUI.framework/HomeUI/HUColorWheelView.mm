@interface HUColorWheelView
- ($F24F406B2B787EFB06265DBA3D28CBD5)colorWheelCoordinateForPoint:(CGPoint)point boundedToWheel:(BOOL)wheel;
- (CGPoint)pointForColorWheelCoordinate:(id)coordinate;
- (HUColorWheelView)initWithColorWheelSpace:(id)space;
- (double)_outerRadius;
- (id)wheelBezierPath;
- (void)drawRect:(CGRect)rect;
- (void)setColorWheelSpace:(id)space;
- (void)setWheelHoleRadius:(double)radius;
@end

@implementation HUColorWheelView

- (HUColorWheelView)initWithColorWheelSpace:(id)space
{
  spaceCopy = space;
  v11.receiver = self;
  v11.super_class = HUColorWheelView;
  v5 = [(HUColorWheelView *)&v11 init];
  v6 = v5;
  if (v5)
  {
    [(HUColorWheelView *)v5 setColorWheelSpace:spaceCopy];
    [(HUColorWheelView *)v6 setOpaque:0];
    widthAnchor = [(HUColorWheelView *)v6 widthAnchor];
    heightAnchor = [(HUColorWheelView *)v6 heightAnchor];
    v9 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    [v9 setActive:1];
  }

  return v6;
}

- (void)setColorWheelSpace:(id)space
{
  spaceCopy = space;
  v8 = spaceCopy;
  if (!spaceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HUColorWheelView.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"colorWheelSpace != nil"}];

    spaceCopy = 0;
  }

  if (([(HUColorWheelSpace *)self->_colorWheelSpace isEqual:spaceCopy]& 1) == 0)
  {
    objc_storeStrong(&self->_colorWheelSpace, space);
    [(HUColorWheelView *)self setNeedsDisplay];
  }
}

- (void)setWheelHoleRadius:(double)radius
{
  if (self->_wheelHoleRadius != radius)
  {
    self->_wheelHoleRadius = radius;
    [(HUColorWheelView *)self setNeedsDisplay];
  }
}

- (double)_outerRadius
{
  [(HUColorWheelView *)self bounds];
  v4 = v3;
  [(HUColorWheelView *)self bounds];
  return fmin(v4, v5) * 0.5;
}

- (id)wheelBezierPath
{
  [(HUColorWheelView *)self bounds];
  UIRectGetCenter();
  v4 = v3;
  v6 = v5;
  v7 = MEMORY[0x277D75208];
  [(HUColorWheelView *)self _outerRadius];
  v9 = [v7 bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v8 clockwise:{0.0, 6.28318531}];
  v10 = MEMORY[0x277D75208];
  [(HUColorWheelView *)self wheelHoleRadius];
  v12 = [v10 bezierPathWithArcCenter:1 radius:v4 startAngle:v6 endAngle:v11 clockwise:{0.0, 6.28318531}];
  [v9 appendPath:v12];

  [v9 setUsesEvenOddFillRule:1];

  return v9;
}

- (CGPoint)pointForColorWheelCoordinate:(id)coordinate
{
  var0 = coordinate.var0;
  if (coordinate.var1 == 1.79769313e308)
  {
    var1 = 0.5;
  }

  else
  {
    var1 = coordinate.var1;
  }

  [(HUColorWheelView *)self wheelHoleRadius];
  v7 = v6;
  [(HUColorWheelView *)self _outerRadius];
  v9 = v7 + (v8 - v7) * var1;
  [(HUColorWheelView *)self bounds];
  UIRectGetCenter();
  v11 = v10;
  v13 = v12;
  v14 = __sincos_stret(var0 * 6.28318531);
  v15 = v13 - v14.__sinval * v9;
  v16 = v11 + v14.__cosval * v9;
  result.y = v15;
  result.x = v16;
  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)colorWheelCoordinateForPoint:(CGPoint)point boundedToWheel:(BOOL)wheel
{
  wheelCopy = wheel;
  y = point.y;
  x = point.x;
  [(HUColorWheelView *)self bounds];
  [(HUColorWheelView *)self wheelHoleRadius];

  HUColorWheelCoordinateForPoint(wheelCopy, x, y);
  result.var1 = v9;
  result.var0 = v8;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  v4 = [(HUColorWheelView *)self wheelBezierPath:rect.origin.x];
  [v4 addClip];

  colorWheelSpace = [(HUColorWheelView *)self colorWheelSpace];

  if (!colorWheelSpace)
  {
    NSLog(&cfstr_MissingColorSp.isa, self);
  }

  [(HUColorWheelView *)self bounds];
  UIRectGetCenter();
  [(HUColorWheelView *)self bounds];
  v8 = HUSizeRoundedToScreenScale(v6, v7);
  v10 = v9;
  [objc_opt_class() _colorWheelRenderingScale];
  [(HUColorWheelView *)self wheelHoleRadius];
  v12 = v11;
  colorWheelSpace2 = [(HUColorWheelView *)self colorWheelSpace];
  v14 = v8;
  v15 = v10;
  if (*&v8 != *&v10)
  {
    v35.width = v8;
    v35.height = v10;
    v16 = NSStringFromCGSize(v35);
    NSLog(&cfstr_AttemptingToDr.isa, v16);
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v18 = CGBitmapContextCreateWithData(0, v8, v10, 8uLL, 4 * v14, DeviceRGB, 0x4001u, 0, 0);
  Data = CGBitmapContextGetData(v18);
  v29 = *MEMORY[0x277CBF348];
  v20 = v15;
  v21 = v14 * v15;
  v22 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __HUCreateColorWheelImage_block_invoke;
  block[3] = &unk_277DB9C30;
  v30 = v14;
  v31 = v20;
  v32 = v12;
  v27 = colorWheelSpace2;
  v28 = v8;
  v33 = 4;
  v34 = Data;
  v23 = colorWheelSpace2;
  dispatch_apply(v21, v22, block);

  Image = CGBitmapContextCreateImage(v18);
  v25 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:0 orientation:1.0];
  CGContextRelease(v18);
  CGColorSpaceRelease(DeviceRGB);
  CGImageRelease(Image);

  [v25 size];
  UIRectCenteredAboutPoint();
  [v25 drawInRect:?];
}

@end