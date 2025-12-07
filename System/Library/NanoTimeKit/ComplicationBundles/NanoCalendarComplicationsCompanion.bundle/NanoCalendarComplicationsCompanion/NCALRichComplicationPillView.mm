@interface NCALRichComplicationPillView
- (NCALRichComplicationPillView)initWithFrame:(CGRect)frame;
- (void)drawRect:(CGRect)rect;
- (void)setPillColors:(id)colors;
@end

@implementation NCALRichComplicationPillView

- (NCALRichComplicationPillView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NCALRichComplicationPillView;
  v3 = [(NCALRichComplicationPillView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NCALRichComplicationPillView *)v3 setNeedsDisplayOnBoundsChange:1];
    layer = [(NCALRichComplicationPillView *)v4 layer];
    [layer setMasksToBounds:1];
  }

  return v4;
}

- (void)setPillColors:(id)colors
{
  colorsCopy = colors;
  v5 = [colorsCopy count];
  if (v5 >= 3)
  {
    v6 = 3;
  }

  else
  {
    v6 = v5;
  }

  v7 = [colorsCopy subarrayWithRange:{0, v6}];

  pillColors = self->_pillColors;
  self->_pillColors = v7;

  [(NCALRichComplicationPillView *)self setNeedsDisplay];
}

- (void)drawRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v8 = [(NSArray *)self->_pillColors count];
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  CGRectGetHeight(v32);
  v9 = +[CLKRenderingContext sharedRenderingContext];
  device = [v9 device];

  CLKRoundForDevice();
  v12 = v11;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = v12;
  MaxY = CGRectGetMaxY(v33);
  if (v8)
  {
    v15 = MaxY;
    for (i = 0; i != v8; ++i)
    {
      v17 = [(NSArray *)self->_pillColors objectAtIndexedSubscript:i];
      [v17 setFill];

      CurrentContext = UIGraphicsGetCurrentContext();
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = v12;
      CGContextFillRect(CurrentContext, v34);
      v19 = +[UIColor blackColor];
      [v19 setFill];

      v20 = UIGraphicsGetCurrentContext();
      v35.size.height = 1.0;
      v35.origin.x = x;
      v35.origin.y = v15;
      v35.size.width = width;
      CGContextFillRect(v20, v35);
      v36.size.height = 1.0;
      v36.origin.x = x;
      v36.origin.y = v15;
      v36.size.width = width;
      y = CGRectGetMaxY(v36);
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = v12;
      v15 = CGRectGetMaxY(v37);
    }
  }

  else
  {
    v21 = ncs_log_complication(v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v22 = NSStringFromCGRect(v38);
      pillColors = self->_pillColors;
      v24 = 138544130;
      selfCopy = self;
      v26 = 2114;
      v27 = v22;
      v28 = 2048;
      v29 = v12;
      v30 = 2114;
      v31 = pillColors;
      _os_log_error_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "%{public}@ Zero slices (zero _pillColors) in drawRect: %{public}@, %0.2f heightPer, _pillColors %{public}@", &v24, 0x2Au);
    }
  }
}

@end