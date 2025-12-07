@interface PKExpressBannerTrailingView
- (CGSize)sizeThatFits:(CGSize)fits;
- (uint64_t)_updateStateAnimated:(double)animated withDelay:;
- (void)expressGlyphView:(id)view revealingCheckmarkAnimated:(BOOL)animated;
- (void)layoutSubviews;
@end

@implementation PKExpressBannerTrailingView

- (uint64_t)_updateStateAnimated:(double)animated withDelay:
{
  v4 = a2;
  memset(&v21, 0, sizeof(v21));
  if (*(self + 408) == 1)
  {
    v6 = *(MEMORY[0x1E69792E8] + 80);
    *&v21.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v21.m33 = v6;
    v7 = *(MEMORY[0x1E69792E8] + 112);
    *&v21.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v21.m43 = v7;
    v8 = *(MEMORY[0x1E69792E8] + 16);
    *&v21.m11 = *MEMORY[0x1E69792E8];
    *&v21.m13 = v8;
    v9 = *(MEMORY[0x1E69792E8] + 48);
    *&v21.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v21.m23 = v9;
  }

  else
  {
    CATransform3DMakeRotation(&v21, -1.74532925, 0.0, 1.0, 0.0);
  }

  memset(&v20, 0, sizeof(v20));
  v10 = *(self + 416);
  if (v10)
  {
    objc_msgSend_transform3D(v10);
  }

  a = v20;
  b = v21;
  result = CATransform3DEqualToTransform(&a, &b);
  if ((result & 1) == 0)
  {
    if (v4)
    {
      v12 = [objc_alloc(MEMORY[0x1E69BC7A0]) initWithMass:2.0 stiffness:100.0 damping:10.0];
      v13 = [v12 springAnimationWithKeyPath:@"transform"];
      a = v20;
      b = v21;
      [v13 pkui_updateForAdditiveAnimationFromTransform:&a toTransform:&b];
      if (animated != 0.0)
      {
        [v13 setBeginTime:animated];
      }

      layer = [*(self + 416) layer];
      v15 = [layer pkui_addAdditiveAnimation:v13];
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v17 = v21;
    v16[2] = __62__PKExpressBannerTrailingView__updateStateAnimated_withDelay___block_invoke;
    v16[3] = &unk_1E80121B0;
    v16[4] = self;
    return [MEMORY[0x1E69DD250] performWithoutAnimation:v16];
  }

  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(PKExpressGlyphView *)self->_glyphView sizeThatFits:18.0, 18.0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = PKExpressBannerTrailingView;
  [(PKExpressBannerTrailingView *)&v29 layoutSubviews];
  [(PKExpressBannerTrailingView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = *&v7;
  v10 = *&v9;
  [(PKExpressGlyphView *)self->_glyphView sizeThatFits:v7, v9];
  v11.n128_u64[0] = v4;
  v12.n128_u64[0] = v6;
  v13.n128_u64[0] = v8;
  v14.n128_u64[0] = v10;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v15, v16, v11, v12, v13, v14, v17);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(PKExpressGlyphView *)self->_glyphView setBounds:?];
  glyphView = self->_glyphView;
  [(PKExpressGlyphView *)glyphView anchorPoint];
  [(PKExpressGlyphView *)glyphView setCenter:v19 + v27 * v23, v21 + v28 * v25];
}

uint64_t __62__PKExpressBannerTrailingView__updateStateAnimated_withDelay___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 416);
  v2 = *(a1 + 120);
  v7[4] = *(a1 + 104);
  v7[5] = v2;
  v3 = *(a1 + 152);
  v7[6] = *(a1 + 136);
  v7[7] = v3;
  v4 = *(a1 + 56);
  v7[0] = *(a1 + 40);
  v7[1] = v4;
  v5 = *(a1 + 88);
  v7[2] = *(a1 + 72);
  v7[3] = v5;
  return [v1 setTransform3D:v7];
}

- (void)expressGlyphView:(id)view revealingCheckmarkAnimated:(BOOL)animated
{
  animatedCopy = animated;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained expressTrailingView:self revealingCheckmarkAnimated:animatedCopy];
}

@end