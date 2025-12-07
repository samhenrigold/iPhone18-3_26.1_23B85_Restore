@interface FadeLayerThruBlack
@end

@implementation FadeLayerThruBlack

void ___FadeLayerThruBlack_block_invoke(uint64_t a1)
{
  [getCATransactionClass(a1) begin];
  [(objc_class *)(getCATransactionClass)() setDisableActions:1];
  [*(a1 + 40) frame];
  [*(a1 + 32) setFrame:?];
  if (CGColorGetBlack_sOnce != -1)
  {
    dispatch_once_f(&CGColorGetBlack_sOnce, &CGColorGetBlack_sContext, _CGColorCreateWithRGB);
  }

  [*(a1 + 32) setBackgroundColor:CGColorGetBlack_sColor];
  [*(a1 + 32) setOpacity:0.0];
  v2 = *(a1 + 56);
  [*(a1 + 40) zPosition];
  v4 = -1.0;
  if (!v2)
  {
    v4 = 1.0;
  }

  [*(a1 + 32) setZPosition:v3 + v4];
  v5 = [*(a1 + 40) superlayer];
  [v5 addSublayer:*(a1 + 32)];

  [(objc_class *)(getCATransactionClass)() commit];
  LODWORD(v6) = 1.0;
  v7 = [*(a1 + 32) setOpacity:v6];
  v14 = [getCABasicAnimationClass(v7) animationWithKeyPath:@"opacity"];
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:0.0];
  [v14 setFromValue:v8];

  LODWORD(v9) = 1.0;
  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v14 setToValue:v10];

  CAMediaTimingFunctionClass = getCAMediaTimingFunctionClass();
  v12 = getkCAMediaTimingFunctionEaseOut();
  v13 = [(objc_class *)CAMediaTimingFunctionClass functionWithName:v12];
  [v14 setTimingFunction:v13];

  [v14 setDuration:*(a1 + 48)];
  [*(a1 + 32) addAnimation:v14 forKey:@"fadeToBlack"];
}

void ___FadeLayerThruBlack_block_invoke_2(uint64_t a1, double a2)
{
  if (*(a1 + 72))
  {
    v3 = 32;
    v4 = 1.0;
  }

  else
  {
    [getCATransactionClass(a1) begin];
    [(objc_class *)(getCATransactionClass)() setDisableActions:1];
    v4 = 0.0;
    [*(a1 + 32) setOpacity:0.0];
    [(objc_class *)(getCATransactionClass)() commit];
    v3 = 40;
  }

  *&a2 = v4;
  v5 = [*(a1 + v3) setOpacity:a2];
  v6 = [getCABasicAnimationClass(v5) animationWithKeyPath:@"opacity"];
  if (*(a1 + 72))
  {
    *&v7 = 0.0;
  }

  else
  {
    *&v7 = 1.0;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  [v6 setFromValue:v8];

  if (*(a1 + 72))
  {
    *&v9 = 1.0;
  }

  else
  {
    *&v9 = 0.0;
  }

  v10 = [MEMORY[0x1E696AD98] numberWithFloat:v9];
  [v6 setToValue:v10];

  CAMediaTimingFunctionClass = getCAMediaTimingFunctionClass();
  v12 = getkCAMediaTimingFunctionEaseIn();
  v13 = [(objc_class *)CAMediaTimingFunctionClass functionWithName:v12];
  [v6 setTimingFunction:v13];

  [v6 setDuration:*(a1 + 64)];
  v14 = objc_alloc_init(CAAnimationDelegateBlockHelper);
  [v6 setDelegate:v14];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = ___FadeLayerThruBlack_block_invoke_3;
  v17[3] = &unk_1E73A28E8;
  v18 = *(a1 + 40);
  v20 = *(a1 + 56);
  v19 = *(a1 + 48);
  [(CAAnimationDelegateBlockHelper *)v14 setAnimationDidStopBlock:v17];
  v15 = 32;
  if (*(a1 + 72))
  {
    v16 = @"fadeInTarget";
  }

  else
  {
    v15 = 40;
    v16 = @"fadeOutBlack";
  }

  [*(a1 + v15) addAnimation:v6 forKey:v16];
}

void ___FadeLayerThruBlack_block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) removeFromSuperlayer];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___FadeLayerThruBlack_block_invoke_4;
    block[3] = &unk_1E73A4FD0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

@end