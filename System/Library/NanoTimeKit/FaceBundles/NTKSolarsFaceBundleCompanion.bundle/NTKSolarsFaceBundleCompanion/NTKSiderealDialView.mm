@interface NTKSiderealDialView
- (NTKSiderealDialView)initWithFrame:(CGRect)frame dialDiameter:(double)diameter device:(id)device;
- (id)_replicatorLayerWithCenter:(CGPoint)center bounds:(CGRect)bounds dialDiameter:(double)diameter instanceCount:(int64_t)count instanceRotation:(double)rotation tickOpacity:(double)opacity tickSize:(CGSize)size tickCornerRadius:(double)self0;
@end

@implementation NTKSiderealDialView

- (NTKSiderealDialView)initWithFrame:(CGRect)frame dialDiameter:(double)diameter device:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v83.receiver = self;
  v83.super_class = NTKSiderealDialView;
  height = [(NTKSiderealDialView *)&v83 initWithFrame:x, y, width, height];
  if (height)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    sub_15D00(deviceCopy, &v77);
    [(NTKSiderealDialView *)height setUserInteractionEnabled:0];
    layer = [(NTKSiderealDialView *)height layer];
    [layer setAllowsGroupOpacity:1];

    v12 = [UIView alloc];
    [(NTKSiderealDialView *)height bounds];
    v13 = [v12 initWithFrame:?];
    hourContainerView = height->_hourContainerView;
    height->_hourContainerView = v13;

    [(NTKSiderealDialView *)height addSubview:height->_hourContainerView];
    v76 = objc_opt_new();
    [v76 setNumberStyle:0];
    v15 = +[NSLocale currentLocale];
    [v76 setLocale:v15];

    [v76 setMinimumIntegerDigits:2];
    [v76 setMaximumIntegerDigits:2];
    v84[0] = &off_2DCD0;
    v16 = [NSValue valueWithCGPoint:1.0, 0.0];
    v85[0] = v16;
    v84[1] = &off_2DCE8;
    v74 = [NSValue valueWithCGPoint:1.0, 0.0];
    v85[1] = v74;
    v84[2] = &off_2DD00;
    v17 = [NSValue valueWithCGPoint:*&v82, 0.0];
    v85[2] = v17;
    v84[3] = &off_2DD18;
    v18 = [NSValue valueWithCGPoint:1.0, 0.0];
    v85[3] = v18;
    v84[4] = &off_2DD30;
    v19 = [NSValue valueWithCGPoint:0.0, *(&v82 + 1)];
    v85[4] = v19;
    v84[5] = &off_2DD48;
    v20 = [NSValue valueWithCGPoint:-0.5, 0.0];
    v85[5] = v20;
    v84[6] = &off_2DD60;
    v21 = [NSValue valueWithCGPoint:-1.0, 0.0];
    v85[6] = v21;
    v84[7] = &off_2DD78;
    v22 = [NSValue valueWithCGPoint:0.0, 1.0];
    v85[7] = v22;
    v72 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:8];

    v23 = *(&v77 + 1);
    [(NTKSiderealDialView *)height bounds];
    CLKRectGetCenter();
    v73 = v24;
    v75 = v25;
    v26 = v23 * 0.5;
    v71 = CGRectZero.origin.y;
    v27 = CGRectZero.size.width;
    v28 = CGRectZero.size.height;
    v29 = *&v78;
    v30 = 1;
    for (i = 2; i != 26; i += 2)
    {
      v32 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, v71, v27, v28}];
      v33 = [CLKFont systemFontOfSize:v29 weight:UIFontWeightSemibold];
      [v32 setFont:v33];

      v34 = [NSNumber numberWithUnsignedInteger:i];
      v35 = [v76 stringFromNumber:v34];
      [v32 setText:v35];

      v37 = sub_15AC8(v36);
      [v32 setTextColor:v37];

      [v32 sizeToFit];
      v38 = __sincos_stret(v30 * 0.523598776 + 1.57079633);
      v39 = [NSNumber numberWithUnsignedInteger:i];
      v40 = [v72 objectForKeyedSubscript:v39];

      v41 = round(v73 + v26 * v38.__cosval);
      v42 = round(v75 + v26 * v38.__sinval);
      if (v40)
      {
        [v40 CGPointValue];
        v41 = v41 + v43;
        v42 = v42 + v44;
      }

      [v32 setCenter:{v41, v42}];
      [(UIView *)height->_hourContainerView addSubview:v32];

      ++v30;
    }

    layer2 = [(NTKSiderealDialView *)height layer];
    [(NTKSiderealDialView *)height bounds];
    v47 = v46;
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v54 = *&v77;
    CLKDegreesToRadians();
    v56 = [(NTKSiderealDialView *)height _replicatorLayerWithCenter:144 bounds:v73 dialDiameter:v75 instanceCount:v47 instanceRotation:v49 tickOpacity:v51 tickSize:v53 tickCornerRadius:v54, v55, 0x3FE0000000000000, *(&v80 + 1), v81, *(&v80 + 1) * 0.5];
    [layer2 addSublayer:v56];

    layer3 = [(NTKSiderealDialView *)height layer];
    [(NTKSiderealDialView *)height bounds];
    v62 = [(NTKSiderealDialView *)height _replicatorLayerWithCenter:24 bounds:v73 dialDiameter:v75 instanceCount:v58 instanceRotation:v59 tickOpacity:v60 tickSize:v61 tickCornerRadius:v54, 0.261799388, 0x3FF0000000000000, *(&v79 + 1), v80, *(&v79 + 1) * 0.5];
    [layer3 addSublayer:v62];

    layer4 = [(NTKSiderealDialView *)height layer];
    [(NTKSiderealDialView *)height bounds];
    v68 = [(NTKSiderealDialView *)height _replicatorLayerWithCenter:12 bounds:v73 dialDiameter:v75 instanceCount:v64 instanceRotation:v65 tickOpacity:v66 tickSize:v67 tickCornerRadius:v54, 0.523598776, 0x3FF0000000000000, *(&v78 + 1), v79, *(&v78 + 1) * 0.5];
    [layer4 addSublayer:v68];
  }

  return height;
}

- (id)_replicatorLayerWithCenter:(CGPoint)center bounds:(CGRect)bounds dialDiameter:(double)diameter instanceCount:(int64_t)count instanceRotation:(double)rotation tickOpacity:(double)opacity tickSize:(CGSize)size tickCornerRadius:(double)self0
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v16 = center.y;
  v17 = center.x;
  v18 = objc_opt_new();
  [v18 setFillMode:kCAFillModeBoth];
  [v18 setPosition:{v17, v16}];
  [v18 setBounds:{x, y, width, height}];
  v19 = sub_15AC8([v18 setInstanceCount:count]);
  [v18 setInstanceColor:{objc_msgSend(v19, "CGColor")}];

  CATransform3DMakeRotation(&v25, rotation, 0.0, 0.0, 1.0);
  [v18 setInstanceTransform:&v25];
  v20 = objc_opt_new();
  v21 = sub_15AC8(v20);
  [v20 setBackgroundColor:{objc_msgSend(v21, "CGColor")}];

  [v20 setBounds:{0.0, 0.0, radius, v27}];
  HIDWORD(v22) = HIDWORD(opacity);
  *&v22 = opacity;
  [v20 setOpacity:v22];
  [v20 setCornerRadius:v28];
  [v20 setPosition:{v17, v16 - diameter * 0.5 + v27 * 0.5 + 1.0}];
  [v18 addSublayer:v20];

  return v18;
}

@end