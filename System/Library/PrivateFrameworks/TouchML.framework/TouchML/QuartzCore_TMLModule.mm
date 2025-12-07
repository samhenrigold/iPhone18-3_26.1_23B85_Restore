@interface QuartzCore_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
+ (void)initializeJSContext:(id)context;
@end

@implementation QuartzCore_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F1BF7CC;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9210 != -1)
  {
    dispatch_once(&qword_2806D9210, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)initializeJSContext:(id)context
{
  contextCopy = context;
  [TMLTransform3D initializeJSContext:contextCopy];
  [self defineConstants:contextCopy];
  [contextCopy setObject:&unk_287F2C420 forKeyedSubscript:@"CACurrentMediaTime"];
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:*MEMORY[0x277CDA7C8] forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"kCAMediaTimingFunctionLinear" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA7B0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAMediaTimingFunctionEaseIn" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA7C0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAMediaTimingFunctionEaseOut" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA7B8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAMediaTimingFunctionEaseInEaseOut" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA7A8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAMediaTimingFunctionDefault" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA238] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFillModeForwards" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA228] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFillModeBackwards" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA230] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFillModeBoth" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA240] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFillModeRemoved" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA988] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionRotateX" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA990] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionRotateY" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA998] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionRotateZ" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9A0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionScale" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9A8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionScaleX" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9B0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionScaleY" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9B8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionScaleZ" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9C0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionTranslate" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9C8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionTranslateX" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9D0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionTranslateY" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA9D8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAValueFunctionTranslateZ" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA070] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAnimationLinear" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA068] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAnimationDiscrete" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA078] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAnimationPaced" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA058] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAnimationCubic" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA060] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAnimationCubicPaced" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA088] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAnimationRotateAuto" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA090] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAnimationRotateAutoReverse" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA928] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionFade" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA950] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionMoveIn" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA958] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionPush" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA960] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionReveal" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA940] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionFromRight" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA938] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionFromLeft" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA948] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionFromTop" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA930] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransitionFromBottom" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA6E0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityCenter" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA740] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityTop" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA6B0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityBottom" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA6E8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityLeft" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA730] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityRight" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA748] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityTopLeft" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA760] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityTopRight" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA6B8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityBottomLeft" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA6D0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityBottomRight" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA700] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityResize" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA710] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityResizeAspect" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA720] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGravityResizeAspectFill" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA5B8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFilterNearest" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA560] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFilterLinear" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA630] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFilterTrilinear" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA7D0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAOnOrderIn" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA7D8] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAOnOrderOut" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA920] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATransition" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA690] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAGradientLayerAxial" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA838] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAScrollNone" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA840] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAScrollVertically" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA830] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAScrollHorizontally" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA828] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAScrollBoth" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA250] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFillRuleNonZero" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA248] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAFillRuleEvenOdd" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA798] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCALineJoinMiter" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA7A0] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCALineJoinRound" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA790] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCALineJoinBevel" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA778] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCALineCapButt" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA780] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCALineCapRound" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA788] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCALineCapSquare" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA978] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATruncationNone" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA980] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATruncationStart" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA968] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATruncationEnd" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA970] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCATruncationMiddle" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA038] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAlignmentNatural" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA030] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAlignmentLeft" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA040] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAlignmentRight" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA020] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAlignmentCenter" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA028] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCAAlignmentJustified" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA130] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCACornerCurveCircular" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDA138] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"kCACornerCurveContinuous" descriptor:dictionary];
}

@end