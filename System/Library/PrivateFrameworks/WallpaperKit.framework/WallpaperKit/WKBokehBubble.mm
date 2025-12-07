@interface WKBokehBubble
+ (id)_newFadeAnimationWithSeed:(uint64_t)seed;
+ (id)_newFlickerAnimationWithSeed:(uint64_t)seed;
+ (id)_newScaleAnimationWithSeed:(uint64_t)seed;
- (id)initWithSeed:(void *)seed;
- (void)_configureAnimationsWithSeed:(void *)seed;
- (void)_configureAppearanceWithSeed:(void *)seed;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation WKBokehBubble

+ (id)_newFadeAnimationWithSeed:(uint64_t)seed
{
  v13[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 3.0) + 5.0) + 0.0;
  v4 = v3 + ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 14.0) + 3.0);
  v5 = v4 + ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 3.0) + 5.0);
  v6 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v6 setAdditive:1];
  [v6 setValues:&unk_1F5EAA790];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:0.0 / v5];
  v13[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v3 / v5];
  v13[1] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:v4 / v5];
  v13[2] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5 / v5];
  v13[3] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:4];
  [v6 setKeyTimes:v11];

  [v6 setDuration:v5];
  return v6;
}

+ (id)_newFlickerAnimationWithSeed:(uint64_t)seed
{
  v30[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = rand_r(a2);
  v4 = vcvts_n_f32_s32(rand_r(a2), 0x1FuLL);
  v5 = vcvts_n_f32_s32(rand_r(a2), 0x1FuLL);
  v6 = (v5 * 0.2) + 0.3;
  v7 = (v5 * 0.5) + 0.5;
  if (v4 >= 0.15)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  v9 = vcvts_n_f32_s32(rand_r(a2), 0x1FuLL);
  v10 = vcvts_n_f32_s32(rand_r(a2), 0x1FuLL);
  v11 = v10 + 0.5;
  v12 = (v10 * 0.4) + 0.1;
  if (v9 < 0.15)
  {
    v12 = v11;
  }

  v13 = v12 * 0.5;
  v14 = v13 + 0.0;
  v15 = v13 + 0.0 + v8;
  v16 = v13 + v15;
  v17 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v17 setAdditive:1];
  v30[0] = &unk_1F5EAA718;
  v30[1] = &unk_1F5EAA718;
  v18 = -((vcvts_n_f32_s32(v3, 0x1FuLL) * 0.1) + 0.0);
  v19 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v30[2] = v19;
  v20 = [MEMORY[0x1E696AD98] numberWithDouble:v18];
  v30[3] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:4];
  [v17 setValues:v21];

  v22 = [MEMORY[0x1E696AD98] numberWithDouble:0.0 / v16];
  v29[0] = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v14 / v16];
  v29[1] = v23;
  v24 = [MEMORY[0x1E696AD98] numberWithDouble:v15 / v16];
  v29[2] = v24;
  v25 = [MEMORY[0x1E696AD98] numberWithDouble:v16 / v16];
  v29[3] = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:4];
  [v17 setKeyTimes:v26];

  [v17 setDuration:v16];
  [v17 setAutoreverses:1];
  LODWORD(v27) = 2139095040;
  [v17 setRepeatCount:v27];
  v31 = CAFrameRateRangeMake(30.0, 120.0, 30.0);
  [v17 setPreferredFrameRateRange:{*&v31.minimum, *&v31.maximum, *&v31.preferred}];
  return v17;
}

+ (id)_newScaleAnimationWithSeed:(uint64_t)seed
{
  v19[4] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 0.4) + 0.2) * 0.5;
  v4 = v3 + 0.0;
  v5 = v3 + 0.0 + 0.4;
  v6 = v3 + v5;
  v7 = objc_alloc_init(MEMORY[0x1E6979390]);
  [v7 setAdditive:1];
  v19[0] = &unk_1F5EAA718;
  v19[1] = &unk_1F5EAA718;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:-0.025];
  v19[2] = v8;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:-0.025];
  v19[3] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
  [v7 setValues:v10];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:0.0 / v6];
  v18[0] = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v4 / v6];
  v18[1] = v12;
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:v5 / v6];
  v18[2] = v13;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v6 / v6];
  v18[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  [v7 setKeyTimes:v15];

  [v7 setDuration:v6];
  *&v6 = v6;
  [v7 setTimeOffset:{((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * *&v6) + 0.0)}];
  [v7 setAutoreverses:1];
  LODWORD(v16) = 2139095040;
  [v7 setRepeatCount:v16];
  v20 = CAFrameRateRangeMake(30.0, 120.0, 30.0);
  [v7 setPreferredFrameRateRange:{*&v20.minimum, *&v20.maximum, *&v20.preferred}];
  return v7;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  if (finished)
  {
    [WKBokehBubble animationDidStop:? finished:?];
  }
}

- (id)initWithSeed:(void *)seed
{
  if (!seed)
  {
    return 0;
  }

  v6.receiver = seed;
  v6.super_class = WKBokehBubble;
  v3 = objc_msgSendSuper2(&v6, sel_init);
  v4 = v3;
  if (v3)
  {
    [v3 setCompositingFilter:*MEMORY[0x1E6979C30]];
    [(WKBokehBubble *)v4 _configureAppearanceWithSeed:a2];
    [(WKBokehBubble *)v4 _configureAnimationsWithSeed:a2];
  }

  return v4;
}

- (void)_configureAppearanceWithSeed:(void *)seed
{
  if (seed)
  {
    v4 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 2.0) + -1.0);
    v5 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 2.0) + -1.0);
    v6 = ((vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) * 1.2) + -1.5);
    [seed setPosition:{v4 * v6, v5 * v6}];
    [seed setZPosition:v6];
    v11 = [WKBokehImageArbiter imageForZ:v6];
    [v11 size];
    v9 = sqrt(v7 * v8) * 0.15 * 0.0078125;
    v10 = v11;
    [seed setContents:{objc_msgSend(v11, "CGImage")}];
    [seed setBounds:{0.0, 0.0, v9, v9}];
    [seed setOpacity:0.0];
  }
}

- (void)_configureAnimationsWithSeed:(void *)seed
{
  if (seed)
  {
    [seed removeAllAnimations];
    v4 = OUTLINED_FUNCTION_0_0();
    v15 = [(WKBokehBubble *)v4 _newFadeAnimationWithSeed:v5];
    [v15 setKeyPath:@"opacity"];
    [v15 setDelegate:seed];
    [seed addAnimation:v15 forKey:@"fade"];
    v6 = OUTLINED_FUNCTION_0_0();
    v8 = [(WKBokehBubble *)v6 _newFlickerAnimationWithSeed:v7];
    [v8 setKeyPath:@"opacity"];
    [seed addAnimation:v8 forKey:@"flicker"];
    if (vcvts_n_f32_s32(rand_r(a2), 0x1FuLL) < 0.5)
    {
      v9 = OUTLINED_FUNCTION_0_0();
      v11 = [(WKBokehBubble *)v9 _newScaleAnimationWithSeed:v10];
      [v11 setKeyPath:@"transform.scale.x"];
      [seed addAnimation:v11 forKey:@"squish"];
      v12 = OUTLINED_FUNCTION_0_0();
      v14 = [(WKBokehBubble *)v12 _newScaleAnimationWithSeed:v13];
      [v14 setKeyPath:@"transform.scale.y"];
      [seed addAnimation:v14 forKey:@"squash"];
    }
  }
}

- (uint64_t)animationDidStop:(void *)a1 finished:.cold.1(void *a1)
{
  v3 = rand();
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(WKBokehBubble *)a1 _configureAppearanceWithSeed:?];
  [(WKBokehBubble *)a1 _configureAnimationsWithSeed:?];
  return [MEMORY[0x1E6979518] commit];
}

@end