@interface PKFDICSignageView
- (BOOL)isEqualToFooter:(id)footer;
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKFDICSignageView)initWithConfiguration:(id)configuration;
- (PKFDICSignageView)initWithFeature:(unint64_t)feature displayingBankName:(BOOL)name;
- (UIEdgeInsets)contentInsets;
- (id)_fdicInsuredAttributedStringWithLineBreak:(int64_t)break;
- (void)_updateFDICInsuredTextWithLineBreak:(int64_t)break;
- (void)layoutSubviews;
- (void)setContentInsets:(UIEdgeInsets)insets;
@end

@implementation PKFDICSignageView

- (PKFDICSignageView)initWithFeature:(unint64_t)feature displayingBankName:(BOOL)name
{
  if ((feature & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    nameCopy = name;
    v33.receiver = self;
    v33.super_class = PKFDICSignageView;
    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    v10 = [(PKFDICSignageView *)&v33 initWithFrame:*MEMORY[0x1E695F058], v7, v8, v9];
    p_isa = &v10->super.super.super.isa;
    if (v10)
    {
      v10->_feature = feature;
      v10->_displayingBankName = nameCopy;
      v12 = [objc_alloc(MEMORY[0x1E69DC888]) initWithDynamicProvider:&__block_literal_global_143];
      v13 = objc_alloc(MEMORY[0x1E69DCAE0]);
      v14 = PKUIImageNamed(@"FDICLogo");
      v15 = [v13 initWithImage:v14];
      v16 = p_isa[55];
      p_isa[55] = v15;

      [p_isa[55] setTintColor:v12];
      [p_isa addSubview:p_isa[55]];
      v17 = [objc_alloc(MEMORY[0x1E69DC888]) initWithDynamicProvider:&__block_literal_global_35_1];
      v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
      v19 = p_isa[56];
      p_isa[56] = v18;

      [p_isa[56] setTextColor:v17];
      [p_isa[56] setNumberOfLines:0];
      [p_isa _updateFDICInsuredTextWithLineBreak:0];
      [p_isa addSubview:p_isa[56]];
      if (nameCopy)
      {
        v20 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        v21 = p_isa[53];
        p_isa[53] = v20;

        v22 = [MEMORY[0x1E69DD1B8] traitCollectionWithPreferredContentSizeCategory:*MEMORY[0x1E69DDC70]];
        v23 = [v22 traitCollectionByModifyingTraits:&__block_literal_global_40];

        v24 = p_isa[53];
        v25 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD10] compatibleWithTraitCollection:v23];
        [v24 setFont:v25];

        [p_isa[53] setTextColor:v17];
        [p_isa[53] setNumberOfLines:0];
        [p_isa[53] setTextAlignment:0];
        [p_isa addSubview:p_isa[53]];
        v26 = p_isa[53];
        v27 = PKLocalizedFeatureString();
        [v26 setText:v27];

        v28 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
        v29 = p_isa[54];
        p_isa[54] = v28;

        v30 = [objc_alloc(MEMORY[0x1E69DC888]) initWithDynamicProvider:&__block_literal_global_47];
        [p_isa[54] setBackgroundColor:v30];
        [p_isa addSubview:p_isa[54]];
      }
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __56__PKFDICSignageView_initWithFeature_displayingBankName___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v2 = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.196 blue:0.337 alpha:1.0];
  }

  return v2;
}

id __56__PKFDICSignageView_initWithFeature_displayingBankName___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v2 = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v2;
}

id __56__PKFDICSignageView_initWithFeature_displayingBankName___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = [a2 userInterfaceStyle];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v2 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    }
  }

  else
  {
    v2 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
  }

  return v2;
}

- (PKFDICSignageView)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  feature = [configurationCopy feature];
  displayingBankName = [configurationCopy displayingBankName];

  return [(PKFDICSignageView *)self initWithFeature:feature displayingBankName:displayingBankName];
}

- (void)_updateFDICInsuredTextWithLineBreak:(int64_t)break
{
  v4 = [(PKFDICSignageView *)self _fdicInsuredAttributedStringWithLineBreak:break];
  [(UILabel *)self->_fdicInsuredLabel setAttributedText:v4];
}

- (id)_fdicInsuredAttributedStringWithLineBreak:(int64_t)break
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = PKLocalizedFeatureString();
  v4 = objc_alloc_init(MEMORY[0x1E69DB7C8]);
  [v4 setLineHeightMultiple:0.8];
  v5 = *MEMORY[0x1E69DB648];
  v10[0] = *MEMORY[0x1E69DB688];
  v10[1] = v5;
  v11[0] = v4;
  pk_fdicSignageFont = [MEMORY[0x1E69DB878] pk_fdicSignageFont];
  v11[1] = pk_fdicSignageFont;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v3 attributes:v7];

  return v8;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKFDICSignageView;
  [(PKFDICSignageView *)&v3 layoutSubviews];
  [(PKFDICSignageView *)self bounds];
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, a2, 1, 0.0, 0.0, fits.width, fits.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)intrinsicContentSize
{
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, a2, 1, 0.0, 0.0, 1.79769313e308, 1.79769313e308);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  layoutCopy = layout;
  memset(&slice, 0, sizeof(slice));
  p_contentInsets = &self->_contentInsets;
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  right = self->_contentInsets.right;
  v10 = bounds.origin.x + left;
  v11 = bounds.origin.y + top;
  v12 = bounds.size.width - (left + right);
  v13 = bounds.size.height - (top + self->_contentInsets.bottom);
  v80.origin.x = bounds.origin.x + left;
  v80.origin.y = bounds.origin.y + top;
  v80.size.width = v12;
  v80.size.height = v13;
  v15 = *MEMORY[0x1E695F060];
  v14 = *(MEMORY[0x1E695F060] + 8);
  if (self->_displayingBankName)
  {
    [(UILabel *)self->_bankNameLabel sizeThatFits:bounds.size.width - (left + right), 1.79769313e308];
    v17 = v16;
    v19 = v18;
    v83.origin.x = v10;
    v83.origin.y = v11;
    v83.size.width = v12;
    v83.size.height = v13;
    CGRectDivide(v83, &slice, &v80, v17, CGRectMinXEdge);
    if (!layoutCopy)
    {
      bankNameLabel = self->_bankNameLabel;
      v21 = PKContentAlignmentMake();
      v22.n128_u64[0] = *&slice.origin.x;
      v23.n128_u64[0] = *&slice.origin.y;
      v24.n128_u64[0] = *&slice.size.width;
      v25.n128_u64[0] = *&slice.size.height;
      v26.n128_f64[0] = v17;
      v27.n128_f64[0] = v19;
      PKSizeAlignedInRect(v21, v26, v27, v22, v23, v24, v25, v28);
      [(UILabel *)bankNameLabel setFrame:?];
    }

    CGRectDivide(v80, &slice, &v80, 12.0, CGRectMinXEdge);
    v29 = v15 + v17 + 12.0;
    v30 = PKUIPixelLength();
    CGRectDivide(v80, &slice, &v80, v30, CGRectMinXEdge);
    if (!layoutCopy)
    {
      divider = self->_divider;
      v32 = PKContentAlignmentMake();
      v33.n128_u64[0] = *&v80.origin.x;
      v34.n128_u64[0] = *&v80.origin.y;
      v35.n128_u64[0] = *&v80.size.width;
      v36.n128_u64[0] = *&v80.size.height;
      v37.n128_u64[0] = 0;
      v38.n128_f64[0] = v30;
      PKSizeAlignedInRect(v32, v38, v37, v33, v34, v35, v36, v39);
      [(UIView *)divider setFrame:?];
    }

    v14 = v14 + v19;
    CGRectDivide(v80, &slice, &v80, 12.0, CGRectMinXEdge);
    v15 = v29 + v30 + 12.0;
  }

  v40 = [(UIImageView *)self->_fdicLogoView image:*&v80.origin.x];
  [v40 size];
  v42 = v41;
  v44 = v43;

  CGRectDivide(v80, &slice, &v80, v42, CGRectMinXEdge);
  if (!layoutCopy)
  {
    v47.n128_u64[0] = *&slice.origin.x;
    v48.n128_u64[0] = *&slice.origin.y;
    v49.n128_u64[0] = *&slice.size.width;
    v50.n128_u64[0] = *&slice.size.height;
    v45.n128_f64[0] = v42;
    v46.n128_f64[0] = v44;
    PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v45, v46, v47, v48, v49, v50, v51);
    [(UIImageView *)self->_fdicLogoView setFrame:?];
  }

  CGRectDivide(v80, &slice, &v80, 9.0, CGRectMinXEdge);
  if (!self->_displayingBankName)
  {
    if (self->_forceFixedHalfWrapping)
    {
      v65 = [(PKFDICSignageView *)self _fdicInsuredAttributedStringWithLineBreak:1];
      [v65 pkui_sizeThatFits:0 withNumberOfLines:1 forceWordWrap:{1.79769313e308, 1.79769313e308}];
      v57 = v66;
      v59 = v67;
      [(UILabel *)self->_fdicInsuredLabel setAttributedText:v65];

      if (layoutCopy)
      {
        goto LABEL_23;
      }
    }

    else
    {
LABEL_19:
      [(PKFDICSignageView *)self _updateFDICInsuredTextWithLineBreak:0];
      [(UILabel *)self->_fdicInsuredLabel sizeThatFits:v80.size.width, 1.79769313e308];
      v57 = v68;
      v59 = v69;
      if (layoutCopy)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

  v52 = 3;
  while (1)
  {
    v53 = [(PKFDICSignageView *)self _fdicInsuredAttributedStringWithLineBreak:v52];
    v54 = v53;
    width = v80.size.width;
    if (v52)
    {
      width = 1.79769313e308;
    }

    [v53 pkui_sizeThatFits:0 withNumberOfLines:1 forceWordWrap:{width, 1.79769313e308}];
    v57 = v56.n128_f64[0];
    v59 = v58.n128_u64[0];
    PKFloatRoundToPixel(v56, v58);
    v61 = v60;
    v62.n128_u64[0] = *&v80.size.width;
    PKFloatRoundToPixel(v62, v63);
    if (v61 <= v64)
    {
      break;
    }

    if (--v52 == -1)
    {
      goto LABEL_19;
    }
  }

  [(UILabel *)self->_fdicInsuredLabel setAttributedText:v54];

  if (!layoutCopy)
  {
LABEL_22:
    v70 = PKContentAlignmentMake();
    v71.n128_u64[0] = *&v80.origin.x;
    v72.n128_u64[0] = *&v80.origin.y;
    v73.n128_u64[0] = *&v80.size.width;
    v74.n128_u64[0] = *&v80.size.height;
    v75.n128_f64[0] = v57;
    v76.n128_u64[0] = v59;
    PKSizeAlignedInRect(v70, v75, v76, v71, v72, v73, v74, v77);
    [(UILabel *)self->_fdicInsuredLabel setFrame:?];
  }

LABEL_23:
  [(UILabel *)self->_fdicInsuredLabel setTextAlignment:0];
  v78 = v15 + v42 + 9.0 + v57 + p_contentInsets->left + p_contentInsets->right;
  v79 = fmax(fmax(v14, v44), *&v59) + p_contentInsets->top + p_contentInsets->bottom;
  result.height = v79;
  result.width = v78;
  return result;
}

- (void)setContentInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_contentInsets.top, v3), vceqq_f64(*&self->_contentInsets.bottom, v4)))) & 1) == 0)
  {
    self->_contentInsets = insets;
    [(PKFDICSignageView *)self setNeedsLayout];
  }
}

- (BOOL)isEqualToFooter:(id)footer
{
  footerCopy = footer;
  v5 = [footerCopy isMemberOfClass:objc_opt_class()] && self->_feature == *(footerCopy + 51) && self->_displayingBankName == footerCopy[416];

  return v5;
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end