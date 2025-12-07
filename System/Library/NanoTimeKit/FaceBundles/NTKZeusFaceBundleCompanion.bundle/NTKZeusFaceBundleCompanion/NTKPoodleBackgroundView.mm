@interface NTKPoodleBackgroundView
- (CGRect)faceBounds;
- (NTKPoodleBackgroundView)initWithDevice:(id)device;
- (void)layoutSubviews;
- (void)setPalette:(id)palette;
@end

@implementation NTKPoodleBackgroundView

- (NTKPoodleBackgroundView)initWithDevice:(id)device
{
  deviceCopy = device;
  sub_16F44(deviceCopy, v38);
  v37.receiver = self;
  v37.super_class = NTKPoodleBackgroundView;
  v6 = [(NTKPoodleBackgroundView *)&v37 initWithFrame:v39, v40, v41, v42];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
    dialWidth = [(NTKPoodleBackgroundView *)v7 dialWidth];
    v10 = v9;
    v11 = sub_16AD8(dialWidth);
    v12 = +[CALayer layer];
    dialInnerLayer = v7->_dialInnerLayer;
    v7->_dialInnerLayer = v12;

    [(CALayer *)v7->_dialInnerLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialInnerLayer setMasksToBounds:1];
    v14 = v7->_dialInnerLayer;
    v15 = +[UIColor grayColor];
    -[CALayer setBackgroundColor:](v14, "setBackgroundColor:", [v15 CGColor]);

    [(CALayer *)v7->_dialInnerLayer setActions:v11];
    layer = [(NTKPoodleBackgroundView *)v7 layer];
    [layer addSublayer:v7->_dialInnerLayer];

    v17 = +[CALayer layer];
    dialOuterLayer = v7->_dialOuterLayer;
    v7->_dialOuterLayer = v17;

    [(CALayer *)v7->_dialOuterLayer setBorderWidth:v10 + 1.0];
    [(CALayer *)v7->_dialOuterLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialOuterLayer setMasksToBounds:1];
    v19 = v7->_dialOuterLayer;
    v20 = +[UIColor darkGrayColor];
    -[CALayer setBorderColor:](v19, "setBorderColor:", [v20 CGColor]);

    [(CALayer *)v7->_dialOuterLayer setActions:v11];
    layer2 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer2 addSublayer:v7->_dialOuterLayer];

    v22 = +[CALayer layer];
    dialInnerBorderLayer = v7->_dialInnerBorderLayer;
    v7->_dialInnerBorderLayer = v22;

    [(CALayer *)v7->_dialInnerBorderLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialInnerBorderLayer setMasksToBounds:1];
    [(CALayer *)v7->_dialInnerBorderLayer setBorderWidth:0.0];
    v24 = v7->_dialInnerBorderLayer;
    v25 = +[UIColor orangeColor];
    -[CALayer setBorderColor:](v24, "setBorderColor:", [v25 CGColor]);

    [(CALayer *)v7->_dialInnerBorderLayer setActions:v11];
    layer3 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer3 addSublayer:v7->_dialInnerBorderLayer];

    v27 = +[CALayer layer];
    dialOuterBorderLayer = v7->_dialOuterBorderLayer;
    v7->_dialOuterBorderLayer = v27;

    [(CALayer *)v7->_dialOuterBorderLayer setCornerCurve:kCACornerCurveCircular];
    [(CALayer *)v7->_dialOuterBorderLayer setMasksToBounds:1];
    [(CALayer *)v7->_dialOuterBorderLayer setBorderWidth:0.0];
    v29 = v7->_dialOuterBorderLayer;
    v30 = +[UIColor orangeColor];
    -[CALayer setBorderColor:](v29, "setBorderColor:", [v30 CGColor]);

    [(CALayer *)v7->_dialOuterBorderLayer setActions:v11];
    layer4 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer4 addSublayer:v7->_dialOuterBorderLayer];

    layer5 = [(NTKPoodleBackgroundView *)v7 layer];
    [layer5 setMasksToBounds:1];

    layer6 = [(NTKPoodleBackgroundView *)v7 layer];
    v34 = sub_16AD8(layer6);
    [layer6 setActions:v34];

    v35 = v7;
  }

  return v7;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = NTKPoodleBackgroundView;
  [(NTKPoodleBackgroundView *)&v17 layoutSubviews];
  [(NTKPoodleBackgroundView *)self dialWidth];
  v4 = v3;
  [(NTKPoodleBackgroundView *)self bounds];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  v19 = CGRectInset(v18, v4, v4);
  v9 = v19.origin.x;
  v10 = v19.origin.y;
  v11 = v19.size.width;
  v13 = v19.size.height;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v20 = CGRectInset(v19, v4, v4);
  v15 = v20.origin.y;
  v16 = v20.origin.x;
  v12 = v20.size.width;
  v14 = v20.size.height;
  [(CALayer *)self->_dialInnerLayer setFrame:v9, v10, v11, v13];
  [(CALayer *)self->_dialInnerLayer setCornerRadius:v11 * 0.5];
  [(CALayer *)self->_dialOuterLayer setFrame:x, y, width, height];
  [(CALayer *)self->_dialOuterLayer setCornerRadius:width * 0.5];
  [(CALayer *)self->_dialInnerBorderLayer setFrame:v16, v15, v12, v14];
  [(CALayer *)self->_dialInnerBorderLayer setCornerRadius:v12 * 0.5];
  [(CALayer *)self->_dialOuterBorderLayer setFrame:x, y, width, height];
  [(CALayer *)self->_dialOuterBorderLayer setCornerRadius:width * 0.5];
}

- (void)setPalette:(id)palette
{
  objc_storeStrong(&self->_palette, palette);
  paletteCopy = palette;
  dialInnerLayer = self->_dialInnerLayer;
  innerDialBackground = [paletteCopy innerDialBackground];
  -[CALayer setBackgroundColor:](dialInnerLayer, "setBackgroundColor:", [innerDialBackground CGColor]);

  dialInnerBorderLayer = self->_dialInnerBorderLayer;
  innerDialBackgroundBorder = [paletteCopy innerDialBackgroundBorder];
  -[CALayer setBorderColor:](dialInnerBorderLayer, "setBorderColor:", [innerDialBackgroundBorder CGColor]);

  v10 = self->_dialInnerBorderLayer;
  innerDialBorderWidth = [paletteCopy innerDialBorderWidth];
  [innerDialBorderWidth floatValue];
  [(CALayer *)v10 setBorderWidth:v12];

  dialOuterLayer = self->_dialOuterLayer;
  outerDialBackground = [paletteCopy outerDialBackground];
  -[CALayer setBorderColor:](dialOuterLayer, "setBorderColor:", [outerDialBackground CGColor]);

  dialOuterBorderLayer = self->_dialOuterBorderLayer;
  outerDialBackgroundBorder = [paletteCopy outerDialBackgroundBorder];
  -[CALayer setBorderColor:](dialOuterBorderLayer, "setBorderColor:", [outerDialBackgroundBorder CGColor]);

  v17 = self->_dialOuterBorderLayer;
  outerDialBorderWidth = [paletteCopy outerDialBorderWidth];
  [outerDialBorderWidth floatValue];
  [(CALayer *)v17 setBorderWidth:v18];
}

- (CGRect)faceBounds
{
  sub_16F44(self->_device, v6);
  v2 = v7;
  v3 = v8;
  v4 = v9;
  v5 = v10;
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end