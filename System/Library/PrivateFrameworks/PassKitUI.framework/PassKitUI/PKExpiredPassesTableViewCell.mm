@interface PKExpiredPassesTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKExpiredPassesTableViewCell)initWithReuseIdentifier:(id)identifier;
- (double)_layoutWithBounds:(double)bounds isTemplateLayout:(double)layout;
- (id)_configureLabels;
- (void)_determineAccessibilitySettings;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setPass:(id)pass;
- (void)setPrimaryText:(id)text;
- (void)setSecondaryText:(id)text;
- (void)setTertiaryText:(id)text;
@end

@implementation PKExpiredPassesTableViewCell

- (PKExpiredPassesTableViewCell)initWithReuseIdentifier:(id)identifier
{
  v33[1] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = PKExpiredPassesTableViewCell;
  v3 = [(PKExpiredPassesTableViewCell *)&v32 initWithStyle:0 reuseIdentifier:identifier];
  v4 = v3;
  if (v3)
  {
    v3->_isRTL = [(PKExpiredPassesTableViewCell *)v3 _shouldReverseLayoutDirection];
    [(PKExpiredPassesTableViewCell *)v4 _determineAccessibilitySettings];
    v5 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    primaryLabel = v4->_primaryLabel;
    v4->_primaryLabel = v5;

    v7 = v4->_primaryLabel;
    labelColor = [MEMORY[0x1E69DC888] labelColor];
    [(UILabel *)v7 setTextColor:labelColor];

    v9 = v4->_primaryLabel;
    v10 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC20], 2, 0);
    [(UILabel *)v9 setFont:v10];

    contentView = [(PKExpiredPassesTableViewCell *)v4 contentView];
    [contentView addSubview:v4->_primaryLabel];

    [(UILabel *)v4->_primaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9D20]];
    v12 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    secondaryLabel = v4->_secondaryLabel;
    v4->_secondaryLabel = v12;

    v14 = v4->_secondaryLabel;
    secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v14 setTextColor:secondaryLabelColor];

    v16 = v4->_secondaryLabel;
    v17 = *MEMORY[0x1E69DDD28];
    v18 = *MEMORY[0x1E69DDC28];
    v19 = PKFontForDefaultDesign(*MEMORY[0x1E69DDD28], *MEMORY[0x1E69DDC28], 0x8000, 0);
    [(UILabel *)v16 setFont:v19];

    contentView2 = [(PKExpiredPassesTableViewCell *)v4 contentView];
    [contentView2 addSubview:v4->_secondaryLabel];

    v21 = *MEMORY[0x1E69B9CC8];
    [(UILabel *)v4->_secondaryLabel setAccessibilityIdentifier:*MEMORY[0x1E69B9CC8]];
    v22 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    tertiaryLabel = v4->_tertiaryLabel;
    v4->_tertiaryLabel = v22;

    v24 = v4->_tertiaryLabel;
    secondaryLabelColor2 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    [(UILabel *)v24 setTextColor:secondaryLabelColor2];

    v26 = v4->_tertiaryLabel;
    v27 = PKFontForDefaultDesign(v17, v18, 0x8000, 0);
    [(UILabel *)v26 setFont:v27];

    contentView3 = [(PKExpiredPassesTableViewCell *)v4 contentView];
    [contentView3 addSubview:v4->_tertiaryLabel];

    [(UILabel *)v4->_tertiaryLabel setAccessibilityIdentifier:v21];
    [(PKExpiredPassesTableViewCell *)&v4->super.super.super.super.isa _configureLabels];
    [(PKExpiredPassesTableViewCell *)v4 setAccessoryType:1];
    v33[0] = objc_opt_class();
    v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
    v30 = [(PKExpiredPassesTableViewCell *)v4 registerForTraitChanges:v29 withHandler:&__block_literal_global_198];

    [(PKExpiredPassesTableViewCell *)v4 setAccessibilityIdentifier:*MEMORY[0x1E69B99E0]];
  }

  return v4;
}

- (void)_determineAccessibilitySettings
{
  if (self)
  {
    traitCollection = [self traitCollection];
    category = [traitCollection preferredContentSizeCategory];

    self[1024] = UIContentSizeCategoryIsAccessibilityCategory(category);
  }
}

- (id)_configureLabels
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 1024) == 0;
    if (*(result + 1024))
    {
      v3 = 2;
    }

    else
    {
      v3 = 1;
    }

    v4 = result[130];
    if (v2)
    {
      v5 = 4;
    }

    else
    {
      v5 = 0;
    }

    [v4 setNumberOfLines:v3];
    if (*(v1 + 1024))
    {
      v6 = 0;
    }

    else
    {
      v6 = 4;
    }

    [v1[130] setLineBreakMode:v6];
    [v1[131] setNumberOfLines:v3];
    [v1[131] setLineBreakMode:v5];
    [v1[132] setNumberOfLines:v3];
    v7 = v1[132];

    return [v7 setLineBreakMode:v5];
  }

  return result;
}

void __56__PKExpiredPassesTableViewCell_initWithReuseIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [(PKExpiredPassesTableViewCell *)v2 _determineAccessibilitySettings];
  [(PKExpiredPassesTableViewCell *)v2 _configureLabels];
  [v2 setNeedsLayout];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = [(PKExpiredPassesTableViewCell *)self _layoutWithBounds:*MEMORY[0x1E695EFF8] isTemplateLayout:*(MEMORY[0x1E695EFF8] + 8), fits.width, 1.79769313e308];
  result.height = v4;
  result.width = v3;
  return result;
}

- (double)_layoutWithBounds:(double)bounds isTemplateLayout:(double)layout
{
  if (!self)
  {
    return 0.0;
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v12 = 15.0;
    v13 = 13.0;
    v14 = 18.0;
    v15 = 15.0;
  }

  else
  {
    if (*(self + 1025))
    {
      v14 = 10.0;
    }

    else
    {
      v14 = 16.0;
    }

    if (*(self + 1025))
    {
      v12 = 16.0;
    }

    else
    {
      v12 = 10.0;
    }

    v13 = 8.0;
    v15 = 8.0;
  }

  if (*(self + 1025))
  {
    v16 = CGRectMaxXEdge;
  }

  else
  {
    v16 = CGRectMinXEdge;
  }

  v17 = PKContentAlignmentMake();
  if (_UISolariumFeatureFlagEnabled())
  {
    if (*(self + 1024))
    {
      v18 = 80.0;
    }

    else
    {
      v18 = 40.0;
    }
  }

  else
  {
    v18 = 80.0;
  }

  v113 = a5;
  remainder.origin.x = bounds + v14;
  remainder.origin.y = layout + v15;
  remainder.size.width = a5 - (v14 + v12);
  remainder.size.height = a6 - (v13 + v15);
  v19 = *(MEMORY[0x1E695F050] + 16);
  v20 = *MEMORY[0x1E695F058];
  v21 = *(MEMORY[0x1E695F058] + 8);
  v22 = *(MEMORY[0x1E695F058] + 16);
  v23 = *(MEMORY[0x1E695F058] + 24);
  v24 = *(self + 1032);
  slice.origin = *MEMORY[0x1E695F050];
  slice.size = v19;
  v25 = v23;
  v115 = v21;
  v116 = v22;
  v114 = v20;
  if (v24)
  {
    [(PKPassThumbnailView *)v24 _layoutWithBounds:&v118 commit:*MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), v18 + -10.0, v18];
    v27 = *&v118;
    v26 = *&v119;
    x = remainder.origin.x;
    y = remainder.origin.y;
    width = remainder.size.width;
    height = remainder.size.height;
    if (*(self + 1024) == 1)
    {
      CGRectDivide(*&x, &slice, &remainder, v119, CGRectMinYEdge);
      v32.n128_u64[0] = *&slice.origin.x;
      v33.n128_u64[0] = *&slice.origin.y;
      v34.n128_u64[0] = *&slice.size.width;
      v35.n128_u64[0] = *&slice.size.height;
      v36.n128_u64[0] = v27;
      v37.n128_u64[0] = v26;
      PKSizeAlignedInRect(v17, v36, v37, v32, v33, v34, v35, v38);
      v114 = v39;
      v115 = v40;
      v116 = v41;
      v25 = v42;
    }

    else
    {
      CGRectDivide(*&x, &slice, &remainder, v118, v16);
      UIRectCenteredRect();
      v114 = v43;
      v115 = v44;
      v116 = v45;
      v25 = v46;
      CGRectDivide(remainder, &slice, &remainder, 16.0, v16);
    }
  }

  v117 = v25;
  if (*(self + 1072))
  {
    v47 = 0.0;
    if (*(self + 1032) && *(self + 1024) == 1)
    {
      v47 = 2.0;
      CGRectDivide(remainder, &slice, &remainder, 2.0, CGRectMinYEdge);
    }

    [*(self + 1040) sizeThatFits:{remainder.size.width, remainder.size.height}];
    v49 = *&v48;
    v51 = fmin(v50, remainder.size.width);
    CGRectDivide(remainder, &slice, &remainder, v48, CGRectMinYEdge);
    v52.n128_u64[0] = *&slice.origin.x;
    v53.n128_u64[0] = *&slice.origin.y;
    v54.n128_u64[0] = *&slice.size.width;
    v55.n128_u64[0] = *&slice.size.height;
    v56.n128_f64[0] = v51;
    v57.n128_u64[0] = v49;
    PKSizeAlignedInRect(v17, v56, v57, v52, v53, v54, v55, v58);
    v110 = v59;
    v111 = v60;
    v62 = v61;
    v112 = v63;
    v64 = v47 + v63;
  }

  else
  {
    v64 = 0.0;
    v111 = v22;
    v112 = v23;
    v62 = v21;
    v110 = v20;
  }

  if (*(self + 1080))
  {
    v65 = remainder.size.width;
    v66 = remainder.size.height;
    if (*(self + 1072))
    {
      v67 = remainder.origin.x;
      v68 = remainder.origin.y;
      CGRectDivide(*(&v65 - 2), &slice, &remainder, 2.0, CGRectMinYEdge);
      v64 = v64 + 2.0;
      v65 = remainder.size.width;
      v66 = remainder.size.height;
    }

    [*(self + 1048) sizeThatFits:{v65, v66}];
    v70 = *&v69;
    v72 = fmin(v71, remainder.size.width);
    CGRectDivide(remainder, &slice, &remainder, v69, CGRectMinYEdge);
    v73.n128_u64[0] = *&slice.origin.x;
    v74.n128_u64[0] = *&slice.origin.y;
    v75.n128_u64[0] = *&slice.size.width;
    v76.n128_u64[0] = *&slice.size.height;
    v77.n128_f64[0] = v72;
    v78.n128_u64[0] = v70;
    PKSizeAlignedInRect(v17, v77, v78, v73, v74, v75, v76, v79);
    v108 = v80;
    v109 = v81;
    v83 = v82;
    v85 = v84;
    v64 = v64 + v84;
  }

  else
  {
    v85 = v23;
    v108 = v20;
    v109 = v22;
    v83 = v21;
  }

  if (*(self + 1088))
  {
    v86 = remainder.size.width;
    v87 = remainder.size.height;
    if (*(self + 1080))
    {
      v88 = remainder.origin.x;
      v89 = remainder.origin.y;
      CGRectDivide(*(&v86 - 2), &slice, &remainder, 2.0, CGRectMinYEdge);
      v64 = v64 + 2.0;
      v86 = remainder.size.width;
      v87 = remainder.size.height;
    }

    [*(self + 1056) sizeThatFits:{v86, v87}];
    v91 = *&v90;
    v93 = fmin(v92, remainder.size.width);
    CGRectDivide(remainder, &slice, &remainder, v90, CGRectMinYEdge);
    v94.n128_u64[0] = *&slice.origin.x;
    v95.n128_u64[0] = *&slice.origin.y;
    v96.n128_u64[0] = *&slice.size.width;
    v97.n128_u64[0] = *&slice.size.height;
    v98.n128_f64[0] = v93;
    v99.n128_u64[0] = v91;
    PKSizeAlignedInRect(v17, v98, v99, v94, v95, v96, v97, v100);
    v20 = v101;
    v21 = v102;
    v22 = v103;
    v23 = v104;
    v64 = v64 + v104;
  }

  if (*(self + 1024) != 1 && v117 > v64)
  {
    v105 = (v117 - v64) * 0.5;
    if (*(self + 1072))
    {
      v62 = v62 + v105;
    }

    if (*(self + 1080))
    {
      v83 = v83 + v105;
    }

    v106 = v21 + v105;
    if (*(self + 1088))
    {
      v21 = v106;
    }
  }

  if ((a2 & 1) == 0)
  {
    [*(self + 1032) setFrame:{v114, v115, v116, v117}];
    [*(self + 1040) setFrame:{v110, v62, v111, v112}];
    [*(self + 1048) setFrame:{v108, v83, v109, v85}];
    [*(self + 1056) setFrame:{v20, v21, v22, v23}];
  }

  return v113;
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PKExpiredPassesTableViewCell;
  [(PKExpiredPassesTableViewCell *)&v8 layoutSubviews];
  contentView = [(PKExpiredPassesTableViewCell *)self contentView];
  [contentView bounds];
  [(PKExpiredPassesTableViewCell *)self _layoutWithBounds:v4 isTemplateLayout:v5, v6, v7];
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKExpiredPassesTableViewCell;
  [(PKExpiredPassesTableViewCell *)&v3 prepareForReuse];
  [(PKExpiredPassesTableViewCell *)self setPrimaryText:0];
  [(PKExpiredPassesTableViewCell *)self setSecondaryText:0];
  [(PKExpiredPassesTableViewCell *)self setTertiaryText:0];
  [(PKExpiredPassesTableViewCell *)self setPass:0];
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if (self->_pass != passCopy)
  {
    v11 = passCopy;
    objc_storeStrong(&self->_pass, pass);
    if (self->_pass)
    {
      v6 = [PKPassThumbnailView alloc];
      if (v6)
      {
        v6 = [(PKPassThumbnailView *)&v6->super.super.super.isa initWithPass:0 suppressedContent:0 rendererState:0 options:?];
      }

      thumbnailView = self->_thumbnailView;
      self->_thumbnailView = v6;

      [(PKPassThumbnailView *)self->_thumbnailView setShadowVisibility:?];
      v8 = self->_thumbnailView;
      if (v8)
      {
        v8->_preferMinimumHeight = 0;
      }

      contentView = [(PKExpiredPassesTableViewCell *)self contentView];
      [contentView addSubview:self->_thumbnailView];

      [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
    }

    else
    {
      [(PKPassThumbnailView *)self->_thumbnailView removeFromSuperview];
      v10 = self->_thumbnailView;
      self->_thumbnailView = 0;
    }

    passCopy = v11;
  }
}

- (void)setPrimaryText:(id)text
{
  textCopy = text;
  primaryText = self->_primaryText;
  v9 = textCopy;
  v7 = primaryText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_primaryText, text);
    [(UILabel *)self->_primaryLabel setText:self->_primaryText];
    [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setSecondaryText:(id)text
{
  textCopy = text;
  secondaryText = self->_secondaryText;
  v9 = textCopy;
  v7 = secondaryText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_secondaryText, text);
    [(UILabel *)self->_secondaryLabel setText:self->_secondaryText];
    [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

- (void)setTertiaryText:(id)text
{
  textCopy = text;
  tertiaryText = self->_tertiaryText;
  v9 = textCopy;
  v7 = tertiaryText;
  if (v7 == v9)
  {

    goto LABEL_9;
  }

  if (!v9 || !v7)
  {

    goto LABEL_8;
  }

  v8 = [(NSString *)v9 isEqualToString:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_tertiaryText, text);
    [(UILabel *)self->_tertiaryLabel setText:self->_tertiaryText];
    [(PKExpiredPassesTableViewCell *)self setNeedsLayout];
  }

LABEL_9:
}

@end