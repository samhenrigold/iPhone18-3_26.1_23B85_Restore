@interface _SUIAShockwaveChromaticAberrationConfiguration
+ (CGRect)donutMaskRectForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings inBounds:(CGRect)bounds idiom:(int64_t)idiom;
+ (id)chromaticAberrationConfigurationForState:(int64_t)state variant:(int64_t)variant buttonEmanating:(BOOL)emanating normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)self0;
- (CGPoint)aberrationMagnitude;
- (CGRect)donutMaskFrame;
- (double)aberrationBlurRadius;
- (double)aberrationColorBrightnessFactor;
- (double)aberrationColorSaturateAmount;
- (double)aberrationEDRGain;
- (double)aberrationIntensity;
- (double)aberrationMultiplyFactor;
- (void)_setAberrationBlurRadius:(double)radius;
- (void)_setAberrationColorBrightnessFactor:(double)factor;
- (void)_setAberrationColorSaturateAmount:(double)amount;
- (void)_setAberrationEDRGain:(double)gain;
- (void)_setAberrationIntensity:(double)intensity;
- (void)_setAberrationMagnitude:(CGPoint)magnitude;
- (void)_setAberrationMultiplyFactor:(double)factor;
- (void)_setDonutMaskFrame:(CGRect)frame;
@end

@implementation _SUIAShockwaveChromaticAberrationConfiguration

- (void)_setDonutMaskFrame:(CGRect)frame
{
  propertyDictionary = self->super._propertyDictionary;
  frameCopy = frame;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&frameCopy objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"donutMaskFrame"];
}

- (CGRect)donutMaskFrame
{
  v7 = 0u;
  v8 = 0u;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"donutMaskFrame"];
  [v2 getValue:&v7 size:32];

  v4 = *(&v7 + 1);
  v3 = *&v7;
  v6 = *(&v8 + 1);
  v5 = *&v8;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_setAberrationIntensity:(double)intensity
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:intensity];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationIntensity"];
}

- (double)aberrationIntensity
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationIntensity"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationMagnitude:(CGPoint)magnitude
{
  propertyDictionary = self->super._propertyDictionary;
  magnitudeCopy = magnitude;
  v4 = [MEMORY[0x277CCAE60] valueWithBytes:&magnitudeCopy objCType:"{CGPoint=dd}"];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationMagnitude"];
}

- (CGPoint)aberrationMagnitude
{
  v5 = 0.0;
  v6 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationMagnitude"];
  [v2 getValue:&v5 size:16];

  v3 = v5;
  v4 = v6;
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)_setAberrationBlurRadius:(double)radius
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:radius];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationBlurRadius"];
}

- (double)aberrationBlurRadius
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationBlurRadius"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationEDRGain:(double)gain
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:gain];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationEDRGain"];
}

- (double)aberrationEDRGain
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationEDRGain"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationColorBrightnessFactor:(double)factor
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationColorBrightnessFactor"];
}

- (double)aberrationColorBrightnessFactor
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationColorBrightnessFactor"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationMultiplyFactor:(double)factor
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:factor];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationMultiplyFactor"];
}

- (double)aberrationMultiplyFactor
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationMultiplyFactor"];
  [v2 getValue:&v4 size:8];

  return v4;
}

- (void)_setAberrationColorSaturateAmount:(double)amount
{
  propertyDictionary = self->super._propertyDictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:amount];
  [(NSMutableDictionary *)propertyDictionary setObject:v4 forKey:@"aberrationColorSaturateAmount"];
}

- (double)aberrationColorSaturateAmount
{
  v4 = 0.0;
  v2 = [(NSMutableDictionary *)self->super._propertyDictionary objectForKey:@"aberrationColorSaturateAmount"];
  [v2 getValue:&v4 size:8];

  return v4;
}

+ (CGRect)donutMaskRectForState:(int64_t)state variant:(int64_t)variant normalizedStartLocation:(CGRect)location settings:(id)settings inBounds:(CGRect)bounds idiom:(int64_t)idiom
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v66 = location.size.height;
  v67 = location.size.width;
  v68 = location.origin.y;
  v69 = location.origin.x;
  settingsCopy = settings;
  chromaticAberrationInitialDonutMask = [settingsCopy chromaticAberrationInitialDonutMask];
  gradientLayerSize = [chromaticAberrationInitialDonutMask gradientLayerSize];
  [gradientLayerSize sizeValue];
  BSRectWithSize();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  if (state <= 5)
  {
    if (((1 << state) & 0x2C) != 0)
    {
      v27 = [settingsCopy chromaticAberrationFinalDonutMaskForIdiom:idiom];
      [v27 maximumExtentOfZeroOpacity];
      UIRectGetCenter();
      SUIAExpandNormalizedPoint(x, y, width, height, v28);
      v70.origin.x = x;
      v70.origin.y = y;
      v70.size.width = width;
      v70.size.height = height;
      CGRectGetMinX(v70);
      v71.origin.x = x;
      v71.origin.y = y;
      v71.size.width = width;
      v71.size.height = height;
      CGRectGetMinY(v71);
      UIDistanceBetweenPoints();
      v72.origin.x = x;
      v72.origin.y = y;
      v72.size.width = width;
      v72.size.height = height;
      CGRectGetMaxX(v72);
      v73.origin.x = x;
      v73.origin.y = y;
      v73.size.width = width;
      v73.size.height = height;
      CGRectGetMinY(v73);
      UIDistanceBetweenPoints();
      v74.origin.x = x;
      v74.origin.y = y;
      v74.size.width = width;
      v74.size.height = height;
      CGRectGetMinX(v74);
      v75.origin.x = x;
      v75.origin.y = y;
      v75.size.width = width;
      v75.size.height = height;
      CGRectGetMaxY(v75);
      UIDistanceBetweenPoints();
      v76.origin.x = x;
      v76.origin.y = y;
      v76.size.width = width;
      v76.size.height = height;
      CGRectGetMaxX(v76);
      v77.origin.x = x;
      v77.origin.y = y;
      v77.size.width = width;
      v77.size.height = height;
      CGRectGetMaxY(v77);
      v29 = UIDistanceBetweenPoints();
      v30 = SUIAScreenEdgeForNormalizedButtonRect(v29);
      if (v30 == 8 || v30 == 2)
      {
        [settingsCopy finalFitVsDiameterRatioLongEdgeForIdiom:idiom];
      }

      else
      {
        [settingsCopy finalFitVsDiameterRatioShortEdgeForIdiom:idiom];
      }

      v39 = BSRectWithSize();
      v20 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v40, v41, v42, v43, 0.0, v69, v68, v44, v39, v69, v68, v67, v66, x, y, width, height);
      v22 = v45;
      v24 = v46;
      v26 = v47;
    }

    else if (((1 << state) & 0x11) != 0 || variant)
    {
      donutMaskInitialEdgeOutsetProportion = [settingsCopy donutMaskInitialEdgeOutsetProportion];
      v20 = SAUIRectMovedOffscreenByProportionToNormalizedButtonRectInContextOfShockwaveBounds(v20, v22, v24, v26, v32, v33, v34, v35, donutMaskInitialEdgeOutsetProportion, v69, v68, v67, v66, x, y, width, height);
      v22 = v36;
      v24 = v37;
      v26 = v38;
    }

    else
    {
      [self donutMaskRectForState:0 variant:0 normalizedStartLocation:settingsCopy settings:idiom inBounds:v69 idiom:{v68, v67, v66, x, y, width, height}];
      v64 = v52;
      v65 = v53;
      [self donutMaskRectForState:2 variant:0 normalizedStartLocation:settingsCopy settings:idiom inBounds:v69 idiom:{v68, v67, v66, x, y, width, height}];
      v55 = v54;
      [settingsCopy captureHintInterpolationProgress];
      v57 = v56;
      v24 = v64 + v56 * (v55 - v64);
      v26 = v65 + v56 * (v55 - v65);
      UIRectGetCenter();
      v59 = v58;
      v61 = v60;
      UIRectGetCenter();
      v20 = v59 + v57 * (v62 - v59) - v24 * 0.5;
      v22 = v61 + v57 * (v63 - v61) - v26 * 0.5;
    }
  }

  v48 = v20;
  v49 = v22;
  v50 = v24;
  v51 = v26;
  result.size.height = v51;
  result.size.width = v50;
  result.origin.y = v49;
  result.origin.x = v48;
  return result;
}

+ (id)chromaticAberrationConfigurationForState:(int64_t)state variant:(int64_t)variant buttonEmanating:(BOOL)emanating normalizedStartLocation:(CGRect)location settings:(id)settings bounds:(CGRect)bounds idiom:(int64_t)idiom usesIntelligentFillLight:(BOOL)self0
{
  lightCopy = light;
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v15 = location.size.height;
  v16 = location.size.width;
  v17 = location.origin.y;
  v18 = location.origin.x;
  settingsCopy = settings;
  v23 = objc_alloc_init(self);
  donutMaskPositionAnimationSettings = [settingsCopy donutMaskPositionAnimationSettings];
  [settingsCopy aberrationMagnitudeX];
  v66 = v25;
  aberrationMagnitudeY = [settingsCopy aberrationMagnitudeY];
  v65 = v27;
  v28 = SUIAScreenEdgeForNormalizedButtonRect(aberrationMagnitudeY);
  memset(&v69, 0, sizeof(v69));
  SUIACATransform3DFromNominalRightEdgeToEdge(v28, &v69);
  memset(&v68, 0, sizeof(v68));
  v67 = v69;
  CATransform3DGetAffineTransform(&v68, &v67);
  [v23 _setAberrationMagnitude:{vaddq_f64(*&v68.tx, vmlaq_n_f64(vmulq_n_f64(*&v68.c, v65), *&v68.a, v66))}];
  [settingsCopy aberrationBlurRadius];
  [v23 _setAberrationBlurRadius:?];
  aberrationUseEDR = [settingsCopy aberrationUseEDR];
  v30 = 0.0;
  v31 = 0.0;
  if (aberrationUseEDR)
  {
    [settingsCopy aberrationEDRGain];
  }

  [v23 _setAberrationEDRGain:v31];
  if ([settingsCopy aberrationUseColorBrightness])
  {
    [settingsCopy aberrationColorBrightness];
    v30 = v32;
  }

  [v23 _setAberrationColorBrightnessFactor:v30];
  aberrationUseColorMatrixMultiply = [settingsCopy aberrationUseColorMatrixMultiply];
  v34 = 0.0;
  v35 = 0.0;
  if (aberrationUseColorMatrixMultiply)
  {
    [settingsCopy aberrationColorMatrixMultiplyFactor];
  }

  [v23 _setAberrationMultiplyFactor:v35];
  if ([settingsCopy aberrationUseColorSaturate])
  {
    [settingsCopy aberrationColorSaturateAmount];
    v34 = v36;
  }

  [v23 _setAberrationColorSaturateAmount:v34];
  [v23 _setAberrationIntensity:1.0];
  if (state <= 5)
  {
    if (((1 << state) & 0x2C) != 0)
    {
      if (variant)
      {
        v37 = donutMaskPositionAnimationSettings;
      }

      else
      {
        v37 = [donutMaskPositionAnimationSettings copy];

        if (lightCopy)
        {
          [settingsCopy visionIntelligenceHintRetargetImpulse];
        }

        else
        {
          [settingsCopy captureHintRetargetImpulse];
        }

        v52 = v44;
        [v37 retargetImpulse];
        [v37 setRetargetImpulse:v52 + v53];
      }

      [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
      [v23 _setDonutMaskFrame:?];
      [settingsCopy donutMaskEndTransitionDelay];
      v55 = v54;
      v51 = [settingsCopy chromaticAberrationFinalDonutMaskForIdiom:idiom];
      v56 = [v37 copy];
      [v23 _setBehaviorSettings:v56 forKeypath:@"donutMaskFrame"];

      locations = [v51 locations];
      [v23 _setDonutGradientLocations:locations];

      v58 = [v37 copy];
      [v23 _setBehaviorSettings:v58 forKeypath:@"donutGradientLocations"];

      colors = [v51 colors];
      [v23 _setDonutGradientColors:colors];

      v60 = [v37 copy];
      [v23 _setBehaviorSettings:v60 forKeypath:@"donutGradientColors"];

      [v23 _setAberrationIntensity:0.0];
      if (state == 5)
      {
        [settingsCopy abberationCancelledFadeOutAnimationSettings];
      }

      else
      {
        [settingsCopy abberationFadeOutAnimationSettings];
      }
      v61 = ;
      v62 = [v61 copy];
      [v23 _setBehaviorSettings:v62 forKeypath:@"aberrationIntensity"];

      if (state != 5)
      {
        [v23 _setDelay:@"donutMaskFrame" forApplicationOfKeypath:v55];
        [v23 _setDelay:@"donutGradientLocations" forApplicationOfKeypath:v55];
        [v23 _setDelay:@"donutGradientColors" forApplicationOfKeypath:v55];
        [settingsCopy aberrationFadeOutDelay];
        [v23 _setDelay:@"aberrationIntensity" forApplicationOfKeypath:?];
      }
    }

    else
    {
      if (((1 << state) & 0x11) != 0)
      {
        [objc_opt_class() donutMaskRectForState:state variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
        [v23 _setDonutMaskFrame:?];
        chromaticAberrationInitialDonutMask = [settingsCopy chromaticAberrationInitialDonutMask];
        locations2 = [chromaticAberrationInitialDonutMask locations];
        [v23 _setDonutGradientLocations:locations2];

        chromaticAberrationInitialDonutMask2 = [settingsCopy chromaticAberrationInitialDonutMask];
        colors2 = [chromaticAberrationInitialDonutMask2 colors];
        [v23 _setDonutGradientColors:colors2];

        if (state != 4)
        {
          goto LABEL_31;
        }

        v42 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:v42 forKeypath:@"donutMaskFrame"];

        chromaticAberrationInitialDonutMask4 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:chromaticAberrationInitialDonutMask4 forKeypath:@"donutGradientLocations"];
      }

      else
      {
        if (!variant)
        {
          captureHintAnimationSettings = [settingsCopy captureHintAnimationSettings];

          donutMaskPositionAnimationSettings = captureHintAnimationSettings;
        }

        [objc_opt_class() donutMaskRectForState:1 variant:variant normalizedStartLocation:settingsCopy settings:idiom inBounds:v18 idiom:{v17, v16, v15, x, y, width, height}];
        [v23 _setDonutMaskFrame:?];
        v46 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:v46 forKeypath:@"donutMaskFrame"];

        chromaticAberrationInitialDonutMask3 = [settingsCopy chromaticAberrationInitialDonutMask];
        locations3 = [chromaticAberrationInitialDonutMask3 locations];
        [v23 _setDonutGradientLocations:locations3];

        v49 = [donutMaskPositionAnimationSettings copy];
        [v23 _setBehaviorSettings:v49 forKeypath:@"donutGradientLocations"];

        chromaticAberrationInitialDonutMask4 = [settingsCopy chromaticAberrationInitialDonutMask];
        colors3 = [chromaticAberrationInitialDonutMask4 colors];
        [v23 _setDonutGradientColors:colors3];
      }

      v51 = [donutMaskPositionAnimationSettings copy];
      [v23 _setBehaviorSettings:v51 forKeypath:@"donutGradientColors"];
      v37 = donutMaskPositionAnimationSettings;
    }

    donutMaskPositionAnimationSettings = v37;
  }

LABEL_31:

  return v23;
}

@end