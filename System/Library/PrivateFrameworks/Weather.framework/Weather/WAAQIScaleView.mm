@interface WAAQIScaleView
- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect;
- (CGRect)trackRectForBounds:(CGRect)bounds;
- (CGSize)intrinsicContentSize;
- (WAAQIScaleView)initWithFrame:(CGRect)frame;
- (double)aqiPercentageInRange;
- (unint64_t)sanitizedAQI:(unint64_t)i;
- (void)drawRect:(CGRect)rect;
- (void)setAQI:(unint64_t)i;
- (void)setScale:(id)scale;
@end

@implementation WAAQIScaleView

- (WAAQIScaleView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = WAAQIScaleView;
  v3 = [(WAAQIScaleView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WAAQIScaleView *)v3 setBackgroundColor:clearColor];
  }

  return v3;
}

- (void)setScale:(id)scale
{
  scaleCopy = scale;
  if (self->_scale != scaleCopy)
  {
    v6 = scaleCopy;
    objc_storeStrong(&self->_scale, scale);
    [(WAAQIScaleView *)self setAQI:[(WAAQIScale *)v6 range]];
    [(WAAQIScaleView *)self setNeedsDisplay];
    scaleCopy = v6;
  }
}

- (void)setAQI:(unint64_t)i
{
  if (self->_AQI != i)
  {
    self->_AQI = [(WAAQIScaleView *)self sanitizedAQI:?];

    [(WAAQIScaleView *)self setNeedsDisplay];
  }
}

- (unint64_t)sanitizedAQI:(unint64_t)i
{
  scale = [(WAAQIScaleView *)self scale];
  range = [scale range];
  v8 = v7;

  if (i < range || i - range >= v8)
  {
    scale2 = [(WAAQIScaleView *)self scale];
    range2 = [scale2 range];
    v12 = range2 + v11;

    scale3 = [(WAAQIScaleView *)self scale];
    range3 = [scale3 range];

    if (v12 <= i)
    {
      return v12;
    }

    else
    {
      return range3;
    }
  }

  return i;
}

- (double)aqiPercentageInRange
{
  v3 = [(WAAQIScaleView *)self AQI];
  scale = [(WAAQIScaleView *)self scale];
  gradient = [scale gradient];
  range = [gradient range];
  v8 = (range + v7);

  scale2 = [(WAAQIScaleView *)self scale];
  gradient2 = [scale2 gradient];
  range2 = [gradient2 range];

  result = 0.0;
  if (v8 - range2 > 0.0)
  {
    return 1.0 - (v8 - v3) / (v8 - range2);
  }

  return result;
}

- (CGSize)intrinsicContentSize
{
  [(WAAQIScaleView *)self bounds];
  v3 = v2;
  v4 = 9.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v60.receiver = self;
  v60.super_class = WAAQIScaleView;
  [(WAAQIScaleView *)&v60 drawRect:?];
  if (self->_scale)
  {
    CurrentContext = UIGraphicsGetCurrentContext();
    if (IsUIRTL(CurrentContext, v9))
    {
      v63.origin.x = x;
      v63.origin.y = y;
      v63.size.width = width;
      v63.size.height = height;
      transform.a = -1.0;
      transform.b = 0.0;
      transform.c = 0.0;
      transform.d = 1.0;
      transform.tx = CGRectGetWidth(v63);
      transform.ty = 0.0;
      CGContextConcatCTM(CurrentContext, &transform);
    }

    CGContextSaveGState(CurrentContext);
    v50 = x;
    v51 = y;
    v52 = width;
    [(WAAQIScaleView *)self trackRectForBounds:x, y, width, height];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;
    [(WAAQIScaleView *)self bounds];
    v49 = v13;
    [WAAQIScaleView thumbRectForBounds:"thumbRectForBounds:trackRect:" trackRect:?];
    v19 = v18;
    v53 = v20;
    v22 = v21;
    v24 = v23;
    bezierPath = [MEMORY[0x277D75208] bezierPath];
    v64.origin.x = v11;
    v64.origin.y = v13;
    v64.size.width = v15;
    v64.size.height = v17;
    [bezierPath moveToPoint:{4.5, CGRectGetMinY(v64)}];
    v65.origin.x = v19;
    v65.origin.y = v53;
    v65.size.width = v22;
    v65.size.height = v24;
    rect = v24;
    v26 = CGRectGetMinX(v65) + -1.5;
    v66.origin.x = v11;
    v66.origin.y = v49;
    v66.size.width = v15;
    v66.size.height = v17;
    [bezierPath addLineToPoint:{v26, CGRectGetMinY(v66)}];
    v67.origin.x = v19;
    v67.origin.y = v53;
    v67.size.width = v22;
    v67.size.height = v24;
    v27 = CGRectGetMinX(v67) + 3.0;
    v68.origin.x = v11;
    v68.origin.y = v49;
    v68.size.width = v15;
    v68.size.height = v17;
    [bezierPath addArcWithCenter:0 radius:v27 startAngle:CGRectGetMidY(v68) endAngle:6.0 clockwise:?];
    v69.origin.x = v11;
    v69.origin.y = v49;
    v69.size.width = v15;
    v69.size.height = v17;
    [bezierPath addLineToPoint:{4.5, CGRectGetMaxY(v69)}];
    v70.origin.x = v11;
    v70.origin.y = v49;
    v70.size.width = v15;
    v70.size.height = v17;
    [bezierPath addArcWithCenter:1 radius:4.5 startAngle:CGRectGetMidY(v70) endAngle:4.5 clockwise:{1.57079633, 4.71238898}];
    [bezierPath closePath];
    v71.origin.x = v19;
    v71.origin.y = v53;
    v71.size.width = v22;
    v71.size.height = rect;
    v28 = CGRectGetMaxX(v71) + 1.5;
    v72.origin.x = v11;
    v72.origin.y = v49;
    v72.size.width = v15;
    v72.size.height = v17;
    [bezierPath moveToPoint:{v28, CGRectGetMinY(v72)}];
    v73.origin.x = v11;
    v73.origin.y = v49;
    v73.size.width = v15;
    v73.size.height = v17;
    v29 = CGRectGetMaxX(v73) + -4.5;
    v74.origin.x = v11;
    v74.origin.y = v49;
    v74.size.width = v15;
    v74.size.height = v17;
    [bezierPath addLineToPoint:{v29, CGRectGetMinY(v74)}];
    v75.origin.x = v11;
    v75.origin.y = v49;
    v75.size.width = v15;
    v75.size.height = v17;
    v30 = CGRectGetMaxX(v75) + -4.5;
    v76.origin.x = v11;
    v76.origin.y = v49;
    v76.size.width = v15;
    v76.size.height = v17;
    [bezierPath addArcWithCenter:1 radius:v30 startAngle:CGRectGetMidY(v76) endAngle:4.5 clockwise:{4.71238898, 1.57079633}];
    v77.origin.x = v19;
    v77.size.height = rect;
    v77.origin.y = v53;
    v77.size.width = v22;
    v31 = CGRectGetMaxX(v77) + 1.5;
    v78.origin.x = v11;
    v78.origin.y = v49;
    v78.size.width = v15;
    v78.size.height = v17;
    [bezierPath addLineToPoint:{v31, CGRectGetMaxY(v78)}];
    v79.origin.x = v19;
    v79.origin.y = v53;
    v79.size.width = v22;
    v79.size.height = rect;
    v32 = CGRectGetMaxX(v79) + -3.0;
    v80.origin.x = v11;
    v80.origin.y = v49;
    v80.size.width = v15;
    v80.size.height = v17;
    [bezierPath addArcWithCenter:0 radius:v32 startAngle:CGRectGetMidY(v80) endAngle:6.0 clockwise:{1.57079633, 4.71238898}];
    [bezierPath closePath];
    CGContextAddPath(CurrentContext, [bezierPath CGPath]);
    CGContextClip(CurrentContext);
    gradient = [(WAAQIScale *)self->_scale gradient];
    stops = [gradient stops];
    v35 = malloc_type_malloc(8 * [stops count], 0x100004000313F17uLL);

    array = [MEMORY[0x277CBEB18] array];
    gradient2 = [(WAAQIScale *)self->_scale gradient];
    range = [gradient2 range];
    v40 = range + v39;

    if (v40)
    {
      gradient3 = [(WAAQIScale *)self->_scale gradient];
      stops2 = [gradient3 stops];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __27__WAAQIScaleView_drawRect___block_invoke;
      v55[3] = &unk_279E67D60;
      v56 = array;
      v57 = v35;
      v58 = v40;
      [stops2 enumerateObjectsUsingBlock:v55];
    }

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v44 = CGGradientCreateWithColors(DeviceRGB, array, v35);
    v81.origin.x = v50;
    v81.origin.y = v51;
    v81.size.width = v52;
    v81.size.height = height;
    v62.x = CGRectGetWidth(v81);
    v62.y = 0.0;
    CGContextDrawLinearGradient(CurrentContext, v44, *MEMORY[0x277CBF348], v62, 0);
    CGGradientRelease(v44);
    CGColorSpaceRelease(DeviceRGB);
    free(v35);
    CGContextRestoreGState(CurrentContext);
    v82.origin.x = v19;
    v82.origin.y = v53;
    v82.size.width = v22;
    v82.size.height = rect;
    v45 = CGPathCreateWithEllipseInRect(v82, 0);
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    CGContextSetFillColorWithColor(CurrentContext, [whiteColor CGColor]);

    CGContextAddPath(CurrentContext, v45);
    v47 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.2];
    cGColor = [v47 CGColor];
    v61.height = 0.33;
    v61.width = 0.0;
    CGContextSetShadowWithColor(CurrentContext, v61, 0.5, cGColor);

    CGContextFillPath(CurrentContext);
    CGPathRelease(v45);
  }
}

double __27__WAAQIScaleView_drawRect___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v6 color];
  [v5 addObject:{objc_msgSend(v7, "CGColor")}];

  [v6 location];
  v9 = v8;

  result = v9 / *(a1 + 48);
  *(*(a1 + 40) + 8 * a3) = result;
  return result;
}

- (CGRect)trackRectForBounds:(CGRect)bounds
{
  width = bounds.size.width;
  x = bounds.origin.x;
  v5 = (CGRectGetHeight(bounds) + -9.0) * 0.5;
  v6 = 9.0;
  v7 = x;
  v8 = width;
  result.size.height = v6;
  result.size.width = v8;
  result.origin.y = v5;
  result.origin.x = v7;
  return result;
}

- (CGRect)thumbRectForBounds:(CGRect)bounds trackRect:(CGRect)rect
{
  if (self->_scale)
  {
    height = rect.size.height;
    width = rect.size.width;
    y = rect.origin.y;
    x = rect.origin.x;
    v9 = CGRectGetMaxX(rect) + -12.0 + 3.0 + -6.0 + -6.0;
    [(WAAQIScaleView *)self aqiPercentageInRange];
    v11 = v9 * v10 + 6.0;
    v16.origin.x = x;
    v16.origin.y = y;
    v16.size.width = width;
    v16.size.height = height;
    v12 = CGRectGetMidY(v16) + -4.5;
    v13 = 9.0;
    v14 = 9.0;
  }

  else
  {
    v11 = *MEMORY[0x277CBF3A0];
    v12 = *(MEMORY[0x277CBF3A0] + 8);
    v14 = *(MEMORY[0x277CBF3A0] + 16);
    v13 = *(MEMORY[0x277CBF3A0] + 24);
  }

  v15 = v11;
  result.size.height = v13;
  result.size.width = v14;
  result.origin.y = v12;
  result.origin.x = v15;
  return result;
}

@end