@interface PKPGSVSectionHeader_BackgroundProvisioningHintView
- (CGSize)sizeThatFits:(CGSize)fits;
- (double)_layoutSubviewsInBounds:(double)bounds withCommitMode:(double)mode;
- (void)_updateFonts:(uint64_t)fonts;
- (void)layoutSubviews;
@end

@implementation PKPGSVSectionHeader_BackgroundProvisioningHintView

- (void)_updateFonts:(uint64_t)fonts
{
  if (fonts)
  {
    traitCollection = [fonts traitCollection];
    *(fonts + 424) = 0xBFF0000000000000;
    v7 = traitCollection;
    v5 = _PKFontForDesign(traitCollection, *MEMORY[0x1E69DB8C8], *MEMORY[0x1E69DDCF8], 0, 0, 0);
    [*(fonts + 408) setFont:v5];
    [*(fonts + 416) sizeToFit];
    if ((a2 & 1) == 0)
    {
      [fonts setNeedsLayout];
      v6 = *(fonts + 448);
      if (v6)
      {
        (*(v6 + 16))(v6, fonts);
      }
    }
  }
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)self _layoutSubviewsInBounds:*MEMORY[0x1E695EFF8] withCommitMode:*(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_layoutSubviewsInBounds:(double)bounds withCommitMode:(double)mode
{
  if (!self)
  {
    return 0.0;
  }

  _shouldReverseLayoutDirection = [self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0x200000000;
  }

  [*(self + 416) frame];
  v21 = v16.n128_f64[0];
  v52 = v17.n128_u64[0];
  v54 = a5;
  v22 = v16.n128_f64[0] + 10.0;
  v23 = fmax(a5 - (v16.n128_f64[0] + 10.0), 0.0);
  if (*(self + 424) == v23)
  {
    v18.n128_f64[0] = a5;
    v24 = *(self + 432);
    v25 = *(self + 440);
  }

  else
  {
    [*(self + 408) sizeThatFits:{v23, 1.79769313e308}];
    v25 = v15.n128_u64[0];
    v24 = fmin(v14.n128_f64[0], v23);
    if (a2)
    {
      *(self + 424) = v23;
      *(self + 432) = v24;
      *(self + 440) = v15.n128_u64[0];
    }

    v18.n128_f64[0] = v54;
  }

  if (v18.n128_f64[0] - v24 >= v22 + v22)
  {
    v14.n128_f64[0] = v24;
    v15.n128_u64[0] = v25;
    v16.n128_f64[0] = bounds;
    v17.n128_f64[0] = mode;
    v19.n128_f64[0] = a6;
    v27 = 1;
  }

  else
  {
    v14.n128_f64[0] = v23;
    v15.n128_u64[0] = v25;
    v16.n128_f64[0] = bounds;
    v17.n128_f64[0] = mode;
    v19.n128_f64[0] = a6;
    PKSizeAlignedInRect(HIDWORD(v13), v14, v15, v16, v17, v18, v19, v20);
    v18.n128_u64[0] = v14.n128_u64[0];
    v19.n128_u64[0] = v15.n128_u64[0];
    v20.n128_u64[0] = v16.n128_u64[0];
    v26 = v17.n128_u64[0];
    v14.n128_f64[0] = v24;
    v15.n128_u64[0] = v25;
    v16.n128_u64[0] = v18.n128_u64[0];
    v17.n128_u64[0] = v19.n128_u64[0];
    v18.n128_u64[0] = v20.n128_u64[0];
    v27 = HIDWORD(v13);
    v19.n128_u64[0] = v26;
  }

  PKSizeAlignedInRect(v27, v14, v15, v16, v17, v18, v19, v20);
  v32 = v28;
  v33 = v29;
  v34 = v30;
  v35 = v31;
  if (a2)
  {
    [*(self + 408) setFrame:{v28, v29, v30, v31}];
  }

  memset(&slice, 0, sizeof(slice));
  remainder.origin.x = v32;
  remainder.origin.y = v33;
  remainder.size.width = v34;
  remainder.size.height = v35;
  font = [*(self + 408) font];
  [font lineHeight];
  v38 = v37;
  v57.origin.x = v32;
  v57.origin.y = v33;
  v57.size.width = v34;
  v57.size.height = v35;
  CGRectDivide(v57, &slice, &remainder, v38, CGRectMinYEdge);
  height = slice.size.height;
  v40 = -v22;
  if (_shouldReverseLayoutDirection)
  {
    v40 = 0.0;
  }

  v41 = slice.size.width - (0.0 - v22);
  v42 = vaddq_f64(*&v40, slice.origin);
  remainder.origin = v42;
  remainder.size.width = v41;
  remainder.size.height = slice.size.height;
  y = v42.y;
  CGRectDivide(*(&height - 3), &slice, &remainder, v21, v13);
  v44.n128_u64[0] = *&slice.origin.x;
  v45.n128_u64[0] = *&slice.origin.y;
  v46.n128_u64[0] = *&slice.size.width;
  v47.n128_u64[0] = *&slice.size.height;
  v48.n128_f64[0] = v21;
  v49.n128_u64[0] = v53;
  PKSizeAlignedInRect(HIDWORD(v13) | 0x100000000, v48, v49, v44, v45, v46, v47, v50);
  if (a2)
  {
    [*(self + 416) setFrame:?];
  }

  return v54;
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = PKPGSVSectionHeader_BackgroundProvisioningHintView;
  [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)&v7 layoutSubviews];
  [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)self bounds];
  [(PKPGSVSectionHeader_BackgroundProvisioningHintView *)self _layoutSubviewsInBounds:v3 withCommitMode:v4, v5, v6];
}

@end