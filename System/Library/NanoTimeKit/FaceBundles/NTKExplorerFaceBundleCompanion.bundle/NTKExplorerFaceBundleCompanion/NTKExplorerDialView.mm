@interface NTKExplorerDialView
- (NTKExplorerDialView)initWithFrame:(CGRect)frame forDevice:(id)device;
- (id)_hourNumeralHideAnimation;
- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value;
- (id)_minuteClusterExpandAnimation;
- (id)_minuteTickBreakAnimation;
- (id)_minuteTickShowAnimation;
- (id)_minuteTickShrinkAndGrow;
- (id)_numeralShowAnimation;
- (id)_secondTickBrightenAnimation;
- (id)_secondTickDimAnimation;
- (void)_addOrRemoveChildLayers;
- (void)_applyDensity:(unint64_t)density;
- (void)applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity;
- (void)cleanupAfterEditing;
- (void)setDensity:(unint64_t)density;
@end

@implementation NTKExplorerDialView

- (NTKExplorerDialView)initWithFrame:(CGRect)frame forDevice:(id)device
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  deviceCopy = device;
  v147.receiver = self;
  v147.super_class = NTKExplorerDialView;
  height = [(NTKExplorerDialView *)&v147 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    v130 = deviceCopy;
    objc_storeStrong(&height->_device, device);
    v13 = +[UIColor blackColor];
    [(NTKExplorerDialView *)v12 setBackgroundColor:v13];

    v140 = 0u;
    memset(v139, 0, sizeof(v139));
    sub_78B4(v12->_device, v139);
    layer = [(NTKExplorerDialView *)v12 layer];
    [layer bounds];
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v23 = v19 * 0.5;
    v24 = v21 * 0.5;
    if (qword_16800 != -1)
    {
      sub_82DC();
    }

    v25 = qword_167F8;
    v26 = objc_opt_new();
    ringLayer = v12->_ringLayer;
    v12->_ringLayer = v26;

    v137 = v23;
    [(CALayer *)v12->_ringLayer setPosition:v23, v24];
    [(CALayer *)v12->_ringLayer setBounds:v16, v18, v20, v22];
    v28 = [(CALayer *)v12->_ringLayer setCornerRadius:width * 0.5];
    v29 = v12->_ringLayer;
    v30 = _ringColor(v28);
    -[CALayer setBorderColor:](v29, "setBorderColor:", [v30 CGColor]);

    v31 = *v139;
    [(CALayer *)v12->_ringLayer setBorderWidth:*v139];
    [layer addSublayer:v12->_ringLayer];
    v32 = objc_opt_new();
    hourReplicatorLayer = v12->_hourReplicatorLayer;
    v12->_hourReplicatorLayer = v32;

    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setBounds:v16, v18, v20, v22];
    [(CAReplicatorLayer *)v12->_hourReplicatorLayer setInstanceCount:12];
    v34 = v12->_hourReplicatorLayer;
    CATransform3DMakeRotation(&v138, 0.523598776, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v34 setInstanceTransform:&v138];
    [layer addSublayer:v12->_hourReplicatorLayer];
    v35 = objc_opt_new();
    v135 = v12;
    hourTickLayer = v12->_hourTickLayer;
    v12->_hourTickLayer = v35;

    v133 = CGPointZero.y;
    v37 = v140;
    [(CALayer *)v12->_hourTickLayer setBounds:?];
    [(CALayer *)v12->_hourTickLayer setCornerRadius:*&v37 * 0.5];
    v38 = v12->_hourTickLayer;
    v39 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v38, "setBackgroundColor:", [v39 CGColor]);

    [(CALayer *)v12->_hourTickLayer setPosition:v23];
    [(CALayer *)v12->_hourTickLayer setActions:v25];
    [(CAReplicatorLayer *)v135->_hourReplicatorLayer addSublayer:v135->_hourTickLayer];
    v40 = objc_opt_new();
    minuteReplicatorLayer = v12->_minuteReplicatorLayer;
    v12->_minuteReplicatorLayer = v40;

    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setBounds:v16, v18, v20, v22];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setInstanceCount:12];
    v42 = v12->_minuteReplicatorLayer;
    CATransform3DMakeRotation(&v138, 0.523598776, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v42 setInstanceTransform:&v138];
    [(CAReplicatorLayer *)v12->_minuteReplicatorLayer setInstanceDelay:5.0];
    [layer addSublayer:v12->_minuteReplicatorLayer];
    v43 = objc_opt_new();
    minuteCollectionLayer = v12->_minuteCollectionLayer;
    v12->_minuteCollectionLayer = v43;

    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setBounds:v16, v18, v20, v22];
    v45 = v12->_minuteCollectionLayer;
    CATransform3DMakeRotation(&v138, 0.261799388, 0.0, 0.0, 1.0);
    [(CAReplicatorLayer *)v45 setTransform:&v138];
    v46 = v12->_minuteCollectionLayer;
    v47 = *&CATransform3DIdentity.m33;
    *&v138.m31 = *&CATransform3DIdentity.m31;
    *&v138.m33 = v47;
    v48 = *&CATransform3DIdentity.m43;
    *&v138.m41 = *&CATransform3DIdentity.m41;
    *&v138.m43 = v48;
    v49 = *&CATransform3DIdentity.m13;
    *&v138.m11 = *&CATransform3DIdentity.m11;
    *&v138.m13 = v49;
    v50 = *&CATransform3DIdentity.m23;
    *&v138.m21 = *&CATransform3DIdentity.m21;
    *&v138.m23 = v50;
    [(CAReplicatorLayer *)v46 setInstanceTransform:&v138];
    [(CAReplicatorLayer *)v12->_minuteCollectionLayer setActions:v25];
    [(CAReplicatorLayer *)v135->_minuteReplicatorLayer addSublayer:v135->_minuteCollectionLayer];
    v51 = objc_opt_new();
    minuteTickLayer = v12->_minuteTickLayer;
    v12->_minuteTickLayer = v51;

    v53 = v141;
    [(CALayer *)v12->_minuteTickLayer setBounds:CGPointZero.x, v133, v141, v142];
    [(CALayer *)v12->_minuteTickLayer setCornerRadius:v53 * 0.5];
    v54 = [(CALayer *)v12->_minuteTickLayer setPosition:v23, v31 * 0.5];
    v55 = v12->_minuteTickLayer;
    v56 = _minuteTickColor(v54);
    -[CALayer setBackgroundColor:](v55, "setBackgroundColor:", [v56 CGColor]);

    [(CALayer *)v12->_minuteTickLayer setActions:v25];
    [(CAReplicatorLayer *)v135->_minuteCollectionLayer addSublayer:v135->_minuteTickLayer];
    v57 = objc_opt_new();
    subdialReplicatorLayer = v12->_subdialReplicatorLayer;
    v12->_subdialReplicatorLayer = v57;

    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setFillMode:kCAFillModeBoth];
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setBounds:CGPointZero.x, v133, *(v139 + 1), *(v139 + 1)];
    v136 = v24;
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setPosition:v23, v24];
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setActions:v25];
    [layer addSublayer:v12->_subdialReplicatorLayer];
    v59 = objc_opt_new();
    secondTickLayer = v12->_secondTickLayer;
    v12->_secondTickLayer = v59;

    v61 = v143;
    v62 = v144;
    [(CALayer *)v12->_secondTickLayer setBounds:CGPointZero.x, v133, v143, v144];
    [(CALayer *)v12->_secondTickLayer setCornerRadius:v61 * 0.5];
    v63 = v12->_secondTickLayer;
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer bounds];
    [(CALayer *)v63 setPosition:v64 * 0.5, v62 * 0.5];
    [(CALayer *)v12->_secondTickLayer setActions:v25];
    v65 = v12->_secondTickLayer;
    v66 = +[UIColor whiteColor];
    -[CALayer setBackgroundColor:](v65, "setBackgroundColor:", [v66 CGColor]);

    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer addSublayer:v12->_secondTickLayer];
    [(CAReplicatorLayer *)v12->_subdialReplicatorLayer setInstanceCount:12];
    v67 = v12->_subdialReplicatorLayer;
    v68 = v25;
    CATransform3DMakeRotation(&v138, 0.523598776, 0.0, 0.0, 1.0);
    v69 = v67;
    v70 = layer;
    [(CAReplicatorLayer *)v69 setInstanceTransform:&v138];
    v134 = [NSMutableArray arrayWithCapacity:3];
    v71 = 0;
    v72 = v146;
    v73 = UIFontWeightBold;
    v74 = NSFontAttributeName;
    v76 = CGSizeZero.width;
    v75 = CGSizeZero.height;
    v77 = &v139[1] + 1;
    v78 = &NTKAllSignatureCornerTypes_ptr;
    v79 = &NTKAllSignatureCornerTypes_ptr;
    do
    {
      v80 = v78;
      v81 = [v78[109] localizedStringWithFormat:@"%i", dword_CC70[v71]];
      v82 = *(v77 - 1);
      v83 = *v77;
      v84 = v79;
      v85 = v73;
      v86 = [v79[106] systemFontOfSize:CLKRoundedFontDesignName weight:v72 design:v73];
      v150 = v74;
      v151 = v86;
      v87 = [NSDictionary dictionaryWithObjects:&v151 forKeys:&v150 count:1];
      [v81 boundingRectWithSize:3 options:v87 attributes:0 context:{v76, v75}];
      v89 = v88;

      v90 = CLKLocaleCurrentNumberSystem();
      if ((v90 - 3) < 0xC || v90 == -1)
      {
        [v86 capHeight];
        v92 = v91 + 1.0;
        v93 = &NTKAllSignatureCornerTypes_ptr;
      }

      else
      {
        v93 = &NTKAllSignatureCornerTypes_ptr;
        if (v90 == 2)
        {
          [v86 capHeight];
          v100 = v99;
          [v86 descender];
          v92 = v100 - v101;
        }

        else
        {
          [v86 capHeight];
          v92 = v102 + 1.0;
        }
      }

      layer2 = [v93[101] layer];
      v95 = _numeralsGreyColor([layer2 setString:v81]);
      [layer2 setForegroundColor:{objc_msgSend(v95, "CGColor")}];

      [v86 ascender];
      v97 = v96;
      [v86 capHeight];
      [layer2 setBounds:{0.0, v97 - v98 + -1.0, v89, ceil(v92)}];
      [layer2 setFont:v86];
      [layer2 setFontSize:v72];
      [layer2 setAnchorPoint:{0.5, 0.5}];
      [layer2 setPosition:{v137 + v82, v136 + v83}];
      [layer2 setActions:v68];
      [layer2 setContentsScale:2.0];
      [v70 addSublayer:layer2];
      [v134 addObject:layer2];

      ++v71;
      v77 += 2;
      v73 = v85;
      v76 = CGSizeZero.width;
      v78 = v80;
      v74 = NSFontAttributeName;
      v79 = v84;
    }

    while (v71 != 3);
    v103 = [v134 copy];
    hourNumerals = v135->_hourNumerals;
    v135->_hourNumerals = v103;

    v105 = [NSMutableArray arrayWithCapacity:12];
    v106 = v145;
    v107 = v68;
    v132 = v70;
    v108 = &v139[19] + 1;
    v109 = -60;
    v131 = v75;
    do
    {
      v110 = [v78[109] localizedStringWithFormat:@"%02i", v109 + 65];
      v111 = *(v108 - 25);
      v112 = *(v108 - 24);
      v113 = [v79[106] systemFontOfSize:CLKRoundedFontDesignName weight:v106 design:v73];
      v148 = v74;
      v149 = v113;
      v114 = [NSDictionary dictionaryWithObjects:&v149 forKeys:&v148 count:1];
      [v110 boundingRectWithSize:3 options:v114 attributes:0 context:{v76, v131}];
      v116 = v115;
      v118 = v117;
      v120 = v119;
      v122 = v121;

      v123 = +[CATextLayer layer];
      v124 = _numeralsGreyColor([v123 setString:v110]);
      [v123 setForegroundColor:{objc_msgSend(v124, "CGColor")}];

      v125 = v116;
      v73 = v85;
      v126 = v118;
      v76 = CGSizeZero.width;
      [v123 setBounds:{v125, v126, v120, v122}];
      [v123 setFont:v113];
      [v123 setFontSize:v106];
      [v123 setAnchorPoint:{*(v108 - 1), *v108}];
      [v123 setPosition:{v137 + v111, v136 + v112}];
      [v123 setActions:v107];
      [v123 setContentsScale:2.0];
      [v132 addSublayer:v123];
      [v105 addObject:v123];

      v74 = NSFontAttributeName;
      v79 = v84;

      v78 = v80;
      v108 += 2;
      v109 += 5;
    }

    while (v109);
    v127 = [v105 copy];
    v12 = v135;
    minuteNumerals = v135->_minuteNumerals;
    v135->_minuteNumerals = v127;

    v135->_currentDensityTransition = 0x7FFFFFFFFFFFFFFFLL;
    v135->_density = 0x7FFFFFFFFFFFFFFFLL;

    deviceCopy = v130;
  }

  return v12;
}

- (void)setDensity:(unint64_t)density
{
  if (self->_density != density)
  {
    self->_density = density;
    self->_currentDensityTransition = 0x7FFFFFFFFFFFFFFFLL;
    [(NTKExplorerDialView *)self _applyDensity:self->_density];
  }
}

- (void)cleanupAfterEditing
{
  self->_editing = 0;
  self->_currentDensityTransition = 0x7FFFFFFFFFFFFFFFLL;
  [(NTKExplorerDialView *)self _addOrRemoveChildLayers];
}

- (void)_applyDensity:(unint64_t)density
{
  [(NTKExplorerDialView *)self _addOrRemoveChildLayers];
  layer = [(NTKExplorerDialView *)self layer];
  LODWORD(v6) = 1.0;
  [layer setSpeed:v6];
  [layer setTimeOffset:0.0];
  [(CALayer *)self->_secondTickLayer removeAllAnimations];
  [(CAReplicatorLayer *)self->_minuteCollectionLayer removeAllAnimations];
  [(CALayer *)self->_minuteTickLayer removeAllAnimations];
  if (density == 2)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  hourNumerals = self->_hourNumerals;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_57D0;
  v19[3] = &unk_10438;
  *&v19[4] = v7;
  [(NSArray *)hourNumerals enumerateObjectsUsingBlock:v19];
  minuteNumerals = self->_minuteNumerals;
  if (density == 3)
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_588C;
  v18[3] = &unk_10438;
  *&v18[4] = v10;
  if (density == 3)
  {
    v11 = 4;
  }

  else
  {
    v11 = 1;
  }

  [(NSArray *)minuteNumerals enumerateObjectsUsingBlock:v18];
  secondTickLayer = self->_secondTickLayer;
  v13 = _secondTickColor(density);
  -[CALayer setBackgroundColor:](secondTickLayer, "setBackgroundColor:", [v13 CGColor]);

  hourTickLayer = self->_hourTickLayer;
  v15 = _hourTickColor(density);
  -[CALayer setBackgroundColor:](hourTickLayer, "setBackgroundColor:", [v15 CGColor]);

  [(CAReplicatorLayer *)self->_minuteCollectionLayer setTransform:v17, _minuteClusterTransform(density, v17).n128_f64[0]];
  [(CAReplicatorLayer *)self->_minuteCollectionLayer setInstanceTransform:v17, _minuteInstanceTransform(density, v17).n128_f64[0]];
  [(CAReplicatorLayer *)self->_minuteCollectionLayer setInstanceCount:v11];
  v16 = 0.0;
  if (density)
  {
    *&v16 = 1.0;
  }

  [(CAReplicatorLayer *)self->_minuteCollectionLayer setOpacity:v16];
}

- (void)applyTransitionFraction:(double)fraction fromDensity:(unint64_t)density toDensity:(unint64_t)toDensity
{
  currentDensityTransition = self->_currentDensityTransition;
  if (density != toDensity)
  {
    if (currentDensityTransition != density)
    {
      self->_currentDensityTransition = density;
      [(NTKExplorerDialView *)self _applyDensity:density];
      v9 = self->_currentDensityTransition;
      switch(v9)
      {
        case 2uLL:
          [(CAReplicatorLayer *)self->_subdialReplicatorLayer setInstanceDelay:3.0];
          _secondTickDimAnimation = [(NTKExplorerDialView *)self _secondTickDimAnimation];
          [(CALayer *)self->_secondTickLayer addAnimation:_secondTickDimAnimation forKey:@"secondTickDim"];
          _hourNumeralHideAnimation = [(NTKExplorerDialView *)self _hourNumeralHideAnimation];
          hourNumerals = self->_hourNumerals;
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_5F54;
          v25[3] = &unk_10460;
          v26 = _hourNumeralHideAnimation;
          v16 = _hourNumeralHideAnimation;
          [(NSArray *)hourNumerals enumerateObjectsUsingBlock:v25];
          _numeralShowAnimation = [(NTKExplorerDialView *)self _numeralShowAnimation];
          minuteNumerals = self->_minuteNumerals;
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_5FD0;
          v23[3] = &unk_10460;
          v24 = _numeralShowAnimation;
          v19 = _numeralShowAnimation;
          [(NSArray *)minuteNumerals enumerateObjectsUsingBlock:v23];
          _minuteClusterExpandAnimation = [(NTKExplorerDialView *)self _minuteClusterExpandAnimation];
          [(CAReplicatorLayer *)self->_minuteCollectionLayer addAnimation:_minuteClusterExpandAnimation forKey:@"minuteClusterExpand"];
          _minuteTickShrinkAndGrow = [(NTKExplorerDialView *)self _minuteTickShrinkAndGrow];
          [(CALayer *)self->_minuteTickLayer addAnimation:_minuteTickShrinkAndGrow forKey:@"minuteScale"];

          goto LABEL_13;
        case 1uLL:
          [(CAReplicatorLayer *)self->_subdialReplicatorLayer setInstanceDelay:1.0];
          _secondTickDimAnimation = [(NTKExplorerDialView *)self _secondTickBrightenAnimation];
          [(CALayer *)self->_secondTickLayer addAnimation:_secondTickDimAnimation forKey:@"secondTickBrighten"];
          _numeralShowAnimation2 = [(NTKExplorerDialView *)self _numeralShowAnimation];
          v12 = self->_hourNumerals;
          v27[0] = _NSConcreteStackBlock;
          v27[1] = 3221225472;
          v27[2] = sub_5ED8;
          v27[3] = &unk_10460;
          v28 = _numeralShowAnimation2;
          v13 = _numeralShowAnimation2;
          [(NSArray *)v12 enumerateObjectsUsingBlock:v27];

          goto LABEL_13;
        case 0uLL:
          _secondTickDimAnimation = [(NTKExplorerDialView *)self _minuteTickShowAnimation];
          [(CAReplicatorLayer *)self->_minuteCollectionLayer addAnimation:_secondTickDimAnimation forKey:@"minuteTickShow"];
LABEL_13:

          break;
      }
    }

    layer = [(NTKExplorerDialView *)self layer];
    [layer setSpeed:0.0];
    [layer setTimeOffset:dbl_CCB0[density] * fraction];

    return;
  }

  if (currentDensityTransition != density)
  {
    self->_currentDensityTransition = density;

    [(NTKExplorerDialView *)self _applyDensity:fraction];
  }
}

- (id)_instantaneousAnimationForKeyPath:(id)path value:(id)value
{
  valueCopy = value;
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceDelay"];
  [v5 setFromValue:valueCopy];
  [v5 setToValue:valueCopy];

  [v5 setBeginTime:0.00000011920929];
  [v5 setDuration:0.00001];
  [v5 setFillMode:kCAFillModeForwards];

  return v5;
}

- (void)_addOrRemoveChildLayers
{
  if (self->_editing)
  {
    LOBYTE(v3) = 1;
    v4 = 1;
  }

  else
  {
    density = self->_density;
    v4 = density - 1;
    if (density - 1 > 2)
    {
      layer = [(NTKExplorerDialView *)self layer];
      [(CAReplicatorLayer *)self->_minuteReplicatorLayer removeFromSuperlayer];
      v4 = 0;
      LOBYTE(v3) = 0;
      goto LABEL_8;
    }

    v3 = 4u >> (v4 & 7);
  }

  layer = [(NTKExplorerDialView *)self layer];
  superlayer = [(CAReplicatorLayer *)self->_minuteReplicatorLayer superlayer];

  if (!superlayer)
  {
    [layer insertSublayer:self->_minuteReplicatorLayer above:self->_ringLayer];
  }

LABEL_8:
  firstObject = [(NSArray *)self->_hourNumerals firstObject];
  superlayer2 = [firstObject superlayer];
  v10 = superlayer2 != 0;

  hourNumerals = self->_hourNumerals;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_6340;
  v23[3] = &unk_10488;
  v26 = v4 & 1;
  v27 = v10;
  v12 = layer;
  v24 = v12;
  selfCopy = self;
  [(NSArray *)hourNumerals enumerateObjectsUsingBlock:v23];
  firstObject2 = [(NSArray *)self->_minuteNumerals firstObject];
  superlayer3 = [firstObject2 superlayer];
  v15 = superlayer3 != 0;

  minuteNumerals = self->_minuteNumerals;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_63C4;
  v18[3] = &unk_10488;
  v21 = v3 & 1;
  v22 = v15;
  v19 = v12;
  selfCopy2 = self;
  v17 = v12;
  [(NSArray *)minuteNumerals enumerateObjectsUsingBlock:v18];
}

- (id)_minuteTickShowAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v2 setFromValue:&off_10E48];
  [v2 setToValue:&off_10E60];
  [v2 setDuration:13.0];
  [v2 setBeginTime:7.0];
  [v2 setFillMode:kCAFillModeBoth];
  v3 = [CABasicAnimation animationWithKeyPath:@"instanceTransform"];
  if (qword_16598 != -1)
  {
    sub_837C();
  }

  v18 = *&byte_16518[64];
  v19 = *&byte_16518[80];
  v20 = *&byte_16518[96];
  v21 = *&byte_16518[112];
  v14 = *byte_16518;
  v15 = *&byte_16518[16];
  v16 = *&byte_16518[32];
  v17 = *&byte_16518[48];
  v4 = [NSValue valueWithCATransform3D:&v14];
  [v3 setFromValue:v4];

  if (qword_16598 != -1)
  {
    sub_8390();
  }

  v18 = xmmword_16458;
  v19 = unk_16468;
  v20 = xmmword_16478;
  v21 = unk_16488;
  v14 = xmmword_16418;
  v15 = unk_16428;
  v16 = xmmword_16438;
  v17 = unk_16448;
  v5 = [NSValue valueWithCATransform3D:&v14];
  [v3 setToValue:v5];

  [v3 setDuration:20.0];
  [v3 setFillMode:kCAFillModeBoth];
  v6 = [CABasicAnimation animationWithKeyPath:@"transform"];
  if (qword_16410 != -1)
  {
    sub_83B8();
  }

  v18 = *&byte_16390[64];
  v19 = *&byte_16390[80];
  v20 = *&byte_16390[96];
  v21 = *&byte_16390[112];
  v14 = *byte_16390;
  v15 = *&byte_16390[16];
  v16 = *&byte_16390[32];
  v17 = *&byte_16390[48];
  v7 = [NSValue valueWithCATransform3D:&v14];
  [v6 setFromValue:v7];

  if (qword_16410 != -1)
  {
    sub_83B8();
  }

  v18 = *&byte_16290[64];
  v19 = *&byte_16290[80];
  v20 = *&byte_16290[96];
  v21 = *&byte_16290[112];
  v14 = *byte_16290;
  v15 = *&byte_16290[16];
  v16 = *&byte_16290[32];
  v17 = *&byte_16290[48];
  v8 = [NSValue valueWithCATransform3D:&v14];
  [v6 setToValue:v8];

  [v6 setDuration:20.0];
  [v6 setFillMode:kCAFillModeBoth];
  v9 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  [v9 setFromValue:&off_10E78];
  [v9 setToValue:&off_10E78];
  [v9 setDuration:0.0];
  [v9 setFillMode:kCAFillModeBoth];
  v10 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  [v10 setFromValue:&off_10E78];
  [v10 setToValue:&off_10E48];
  [v10 setDuration:5.0];
  [v10 setBeginTime:15.0];
  [v10 setFillMode:kCAFillModeBoth];
  v11 = objc_opt_new();
  [v11 setBeginTime:0.00000011920929];
  [v11 setDuration:20.0];
  [v11 setFillMode:kCAFillModeBoth];
  v22[0] = v9;
  v22[1] = v6;
  v22[2] = v2;
  v22[3] = v3;
  v22[4] = v10;
  v12 = [NSArray arrayWithObjects:v22 count:5];
  [v11 setAnimations:v12];

  return v11;
}

- (id)_secondTickDimAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
  v3 = _secondTickColor(2);
  [v2 setFromValue:{objc_msgSend(v3, "CGColor")}];

  v4 = _secondTickColor(1);
  [v2 setToValue:{objc_msgSend(v4, "CGColor")}];

  [v2 setDuration:19.0];
  [v2 setBeginTime:5.0];
  [v2 setFillMode:kCAFillModeBoth];

  return v2;
}

- (id)_secondTickBrightenAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"backgroundColor"];
  v3 = _secondTickColor(1);
  [v2 setFromValue:{objc_msgSend(v3, "CGColor")}];

  v4 = _secondTickColor(2);
  [v2 setToValue:{objc_msgSend(v4, "CGColor")}];

  [v2 setDuration:6.0];
  [v2 setBeginTime:5.0];
  [v2 setFillMode:kCAFillModeBoth];

  return v2;
}

- (id)_numeralShowAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"opacity"];
  [v2 setFromValue:&off_10E60];
  [v2 setToValue:&off_10E60];
  [v2 setDuration:0.0];
  [v2 setFillMode:kCAFillModeBoth];
  v3 = [CASpringAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v3 setMass:0.45];
  [v3 setStiffness:200.0];
  [v3 setDamping:11.0];
  [v3 setFromValue:&off_10E48];
  [v3 setToValue:&off_10E60];
  [v3 setDuration:13.0];
  [v3 duration];
  v5 = 0.6 / v4;
  *&v5 = v5;
  [v3 setSpeed:v5];
  [v3 setFillMode:kCAFillModeBoth];
  v6 = objc_opt_new();
  [v6 setBeginTime:0.00000011920929];
  [v6 setDuration:13.0];
  [v6 setFillMode:kCAFillModeBoth];
  v9[0] = v2;
  v9[1] = v3;
  v7 = [NSArray arrayWithObjects:v9 count:2];
  [v6 setAnimations:v7];

  return v6;
}

- (id)_hourNumeralHideAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v2 setFromValue:&off_10E60];
  [v2 setToValue:&off_10E48];
  [v2 setDuration:13.0];
  [v2 setFillMode:kCAFillModeBoth];
  v3 = objc_opt_new();
  [v3 setBeginTime:0.00000011920929];
  [v3 setDuration:13.0];
  [v3 setFillMode:kCAFillModeBoth];
  v6 = v2;
  v4 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 setAnimations:v4];

  return v2;
}

- (id)_minuteTickBreakAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"transform"];
  if (qword_16410 != -1)
  {
    sub_8368();
  }

  v17 = *&byte_16290[64];
  v18 = *&byte_16290[80];
  v19 = *&byte_16290[96];
  v20 = *&byte_16290[112];
  v13 = *byte_16290;
  v14 = *&byte_16290[16];
  v15 = *&byte_16290[32];
  v16 = *&byte_16290[48];
  v3 = [NSValue valueWithCATransform3D:&v13];
  [v2 setFromValue:v3];

  if (qword_16410 != -1)
  {
    sub_83B8();
  }

  v17 = *&byte_16310[64];
  v18 = *&byte_16310[80];
  v19 = *&byte_16310[96];
  v20 = *&byte_16310[112];
  v13 = *byte_16310;
  v14 = *&byte_16310[16];
  v15 = *&byte_16310[32];
  v16 = *&byte_16310[48];
  v4 = [NSValue valueWithCATransform3D:&v13];
  [v2 setToValue:v4];

  [v2 setDuration:10.0];
  [v2 setFillMode:kCAFillModeBoth];
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  v6 = [NSNumber numberWithInteger:4];
  [v5 setFromValue:v6];
  [v5 setToValue:v6];
  [v5 setDuration:0.0];
  [v5 setFillMode:kCAFillModeBoth];
  v7 = [CABasicAnimation animationWithKeyPath:@"instanceTransform"];
  if (qword_16598 != -1)
  {
    sub_8390();
  }

  v17 = xmmword_16458;
  v18 = unk_16468;
  v19 = xmmword_16478;
  v20 = unk_16488;
  v13 = xmmword_16418;
  v14 = unk_16428;
  v15 = xmmword_16438;
  v16 = unk_16448;
  v8 = [NSValue valueWithCATransform3D:&v13];
  [v7 setFromValue:v8];

  if (qword_16598 != -1)
  {
    sub_8390();
  }

  v17 = *&byte_16498[64];
  v18 = *&byte_16498[80];
  v19 = *&byte_16498[96];
  v20 = *&byte_16498[112];
  v13 = *byte_16498;
  v14 = *&byte_16498[16];
  v15 = *&byte_16498[32];
  v16 = *&byte_16498[48];
  v9 = [NSValue valueWithCATransform3D:&v13];
  [v7 setToValue:v9];

  [v7 setDuration:10.0];
  [v7 setFillMode:kCAFillModeBoth];
  v10 = objc_opt_new();
  [v10 setBeginTime:0.00000011920929];
  [v10 setDuration:10.0];
  [v10 setFillMode:kCAFillModeBoth];
  v21[0] = v5;
  v21[1] = v2;
  v21[2] = v7;
  v11 = [NSArray arrayWithObjects:v21 count:3];
  [v10 setAnimations:v11];

  return v10;
}

- (id)_minuteClusterExpandAnimation
{
  v2 = [CABasicAnimation animationWithKeyPath:@"instanceCount"];
  [v2 setFromValue:&off_10E60];
  [v2 setToValue:&off_10E90];
  [v2 setDuration:5.0];
  [v2 setFillMode:kCAFillModeForwards];
  v3 = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
  [v3 setFromValue:&off_11208];
  [v3 setToValue:&off_11208];
  [v3 setDuration:0.00000011920929];
  [v3 setFillMode:kCAFillModeForwards];
  v4 = [CABasicAnimation animationWithKeyPath:@"instanceDelay"];
  [v4 setFromValue:&off_11218];
  [v4 setToValue:&off_11218];
  [v4 setDuration:0.00000011920929];
  [v4 setFillMode:kCAFillModeForwards];
  v5 = [CABasicAnimation animationWithKeyPath:@"instanceTransform.rotation.z"];
  [v5 setFromValue:&off_11208];
  [v5 setToValue:&off_11208];
  [v5 setDuration:0.00000011920929];
  [v5 setFillMode:kCAFillModeForwards];
  v6 = objc_opt_new();
  [v6 setBeginTime:1.5];
  [v6 setDuration:5.0];
  [v6 setFillMode:kCAFillModeForwards];
  v9[0] = v3;
  v9[1] = v2;
  v9[2] = v5;
  v9[3] = v4;
  v7 = [NSArray arrayWithObjects:v9 count:4];
  [v6 setAnimations:v7];

  return v6;
}

- (id)_minuteTickShrinkAndGrow
{
  v2 = [CAKeyframeAnimation animationWithKeyPath:@"transform.scale.xy"];
  [v2 setBeginTime:0.00000011920929];
  [v2 setDuration:6.5];
  [v2 setKeyTimes:&off_110E8];
  [v2 setValues:&off_11100];

  return v2;
}

@end