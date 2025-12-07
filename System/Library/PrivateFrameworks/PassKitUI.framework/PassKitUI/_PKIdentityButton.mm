@interface _PKIdentityButton
+ (id)buttonWithLabel:(int64_t)label style:(int64_t)style;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_singleLineFitsSize:(CGSize)size;
- (CGSize)_baseIntrinsicMultiLineSize;
- (CGSize)_baseIntrinsicSingleLineSize;
- (CGSize)_intrinsicContentSizeForSingleLine:(BOOL)line;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_PKIdentityButton)initWithCoder:(id)coder;
- (_PKIdentityButton)initWithLabel:(int64_t)label style:(int64_t)style;
- (double)_adjustedCornerRadiusForScale:(double)scale;
- (id)_singleLineTitle;
- (id)_splitAttributedTitle;
- (void)_adjustVisibleLabelWithBounds:(CGRect)bounds;
- (void)_applyStyle;
- (void)_createHighlightFilterIfNecessary;
- (void)_sharedInit;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation _PKIdentityButton

+ (id)buttonWithLabel:(int64_t)label style:(int64_t)style
{
  v4 = [objc_alloc(objc_opt_class()) initWithLabel:label style:style];

  return v4;
}

- (_PKIdentityButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = _PKIdentityButton;
  v5 = [(_PKIdentityButton *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_label = [coderCopy decodeIntegerForKey:@"PKIdentityButtonLabel"];
    v5->_style = [coderCopy decodeIntegerForKey:@"PKIdentityButtonStyle"];
    [coderCopy decodeFloatForKey:@"PKIdentityButtonCornerRadius"];
    v5->_cornerRadius = v6;
    [(_PKIdentityButton *)v5 _sharedInit];
  }

  return v5;
}

- (_PKIdentityButton)initWithLabel:(int64_t)label style:(int64_t)style
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v11.receiver = self;
  v11.super_class = _PKIdentityButton;
  v8 = [(_PKIdentityButton *)&v11 initWithFrame:v6, v7, 190.0, 57.0];
  v9 = v8;
  if (v8)
  {
    v8->_style = style;
    v8->_label = label;
    v8->_cornerRadius = 4.0;
    [(_PKIdentityButton *)v8 _sharedInit];
  }

  return v9;
}

- (void)_sharedInit
{
  [(_PKIdentityButton *)self setOpaque:0];
  layer = [(_PKIdentityButton *)self layer];
  layer = self->_layer;
  self->_layer = layer;

  v5 = self->_layer;
  v6 = [MEMORY[0x1E69DC888] colorWithRed:0.11373 green:0.11765 blue:0.11765 alpha:1.0];
  -[CAShapeLayer setFillColor:](v5, "setFillColor:", [v6 CGColor]);

  v7 = self->_layer;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  [(CAShapeLayer *)v7 setLineWidth:1.0 / v9];

  v10 = objc_alloc_init(PKShapeView);
  maskView = self->_maskView;
  self->_maskView = v10;

  v12 = self->_layer;
  layer2 = [(PKShapeView *)self->_maskView layer];
  [(CAShapeLayer *)v12 setMask:layer2];

  v14 = MEMORY[0x1E69B8948];
  v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v40 = [v14 imageNamed:@"AddPass_Icon" inBundle:v15];

  v39 = [MEMORY[0x1E69B8950] constraintsWithAspectFitToSize:{28.0, 20.0}];
  v16 = [v40 resizedImageWithConstraints:v39];
  v17 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v16];
  [v17 size];
  self->_iconSize.width = v18;
  self->_iconSize.height = v19;
  v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
  iconView = self->_iconView;
  self->_iconView = v20;

  [(_PKIdentityButton *)self addSubview:self->_iconView];
  _singleLineTitle = [(_PKIdentityButton *)self _singleLineTitle];
  v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  singleLineLabel = self->_singleLineLabel;
  self->_singleLineLabel = v23;

  v25 = self->_singleLineLabel;
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v25 setBackgroundColor:clearColor];

  v27 = self->_singleLineLabel;
  v28 = TitleFormattedString(0, _singleLineTitle, 1, &self->_singleLineAlignmentInset.top);
  [(UILabel *)v27 setAttributedText:v28];

  [(UILabel *)self->_singleLineLabel setNumberOfLines:1];
  [(UILabel *)self->_singleLineLabel sizeToFit];
  [(_PKIdentityButton *)self addSubview:self->_singleLineLabel];
  v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  multiLineLabel = self->_multiLineLabel;
  self->_multiLineLabel = v29;

  v31 = self->_multiLineLabel;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v31 setBackgroundColor:clearColor2];

  v33 = self->_multiLineLabel;
  _splitAttributedTitle = [(_PKIdentityButton *)self _splitAttributedTitle];
  [(UILabel *)v33 setAttributedText:_splitAttributedTitle];

  [(UILabel *)self->_multiLineLabel setNumberOfLines:2];
  [(UILabel *)self->_multiLineLabel sizeToFit];
  [(_PKIdentityButton *)self addSubview:self->_multiLineLabel];
  [(UILabel *)self->_singleLineLabel frame];
  self->_singleLineSize.width = v35;
  self->_singleLineSize.height = v36;
  [(UILabel *)self->_multiLineLabel frame];
  self->_multiLineSize.width = v37;
  self->_multiLineSize.height = v38;
  [(_PKIdentityButton *)self _applyStyle];
  [(_PKIdentityButton *)self bounds];
  [(_PKIdentityButton *)self _adjustVisibleLabelWithBounds:?];
  [(_PKIdentityButton *)self setAccessibilityLabel:_singleLineTitle];
  [(_PKIdentityButton *)self setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
  [(_PKIdentityButton *)self sizeToFit];
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = _PKIdentityButton;
  coderCopy = coder;
  [(_PKIdentityButton *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_style forKey:{@"PKIdentityButtonStyle", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_label forKey:@"PKIdentityButtonLabel"];
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"path"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _PKIdentityButton;
    v5 = [(_PKIdentityButton *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:[(_PKIdentityButton *)self _singleLineFitsSize:fits.width]];
  v5 = fmin(height / v4, 1.0);
  v7 = v6 * v5;
  v8 = v4 * v5;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)_intrinsicContentSizeForSingleLine:(BOOL)line
{
  if (line)
  {
    [(_PKIdentityButton *)self _baseIntrinsicSingleLineSize];
  }

  else
  {
    [(_PKIdentityButton *)self _baseIntrinsicMultiLineSize];
  }

  v5 = v3.n128_f64[0];
  v6 = v4.n128_f64[0];
  v3.n128_f64[0] = v4.n128_f64[0] * 0.5;
  PKFloatRoundToPixel(v3, v4);
  v8 = v6 + v7 * 2.0;
  v9 = v5 + v7 * 2.0;
  result.height = v8;
  result.width = v9;
  return result;
}

- (CGSize)_baseIntrinsicSingleLineSize
{
  v2 = self->_iconSize.width + 8.0 + self->_singleLineSize.width - self->_singleLineAlignmentInset.left - self->_singleLineAlignmentInset.right;
  v3 = fmax(self->_iconSize.height, self->_singleLineSize.height - self->_singleLineAlignmentInset.top - self->_singleLineAlignmentInset.bottom);
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)_baseIntrinsicMultiLineSize
{
  v2 = self->_iconSize.width + 8.0 + self->_multiLineSize.width - self->_multiLineAlignmentInset.left - self->_multiLineAlignmentInset.right;
  v3 = fmax(self->_iconSize.height, self->_multiLineSize.height - self->_multiLineAlignmentInset.top - self->_multiLineAlignmentInset.bottom);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v171.receiver = self;
  v171.super_class = _PKIdentityButton;
  [(_PKIdentityButton *)&v171 layoutSubviews];
  [(_PKIdentityButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(_PKIdentityButton *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v12 = CGRectMaxXEdge;
  }

  else
  {
    v12 = CGRectMinXEdge;
  }

  [(PKShapeView *)self->_maskView setFrame:v4, v6, v8, v10];
  v155 = v6;
  [(_PKIdentityButton *)self _adjustVisibleLabelWithBounds:v4, v6, v8, v10];
  [(UILabel *)self->_singleLineLabel alpha];
  v14 = v13;
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:v13 > 0.0];
  v16 = v15.n128_f64[0];
  v17.n128_f64[0] = v15.n128_f64[0] * 0.25;
  PKFloatRoundToPixel(v17, v15);
  v24 = v23;
  v25 = fmin(v10 / v16, 1.0);
  memset(&v170, 0, sizeof(v170));
  if (v25 == 1.0)
  {
    v27 = *(MEMORY[0x1E69792E8] + 80);
    *&v170.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v170.m33 = v27;
    v28 = *(MEMORY[0x1E69792E8] + 112);
    *&v170.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v170.m43 = v28;
    v29 = *(MEMORY[0x1E69792E8] + 16);
    *&v170.m11 = *MEMORY[0x1E69792E8];
    *&v170.m13 = v29;
    v26 = *(MEMORY[0x1E69792E8] + 32);
    v30 = *(MEMORY[0x1E69792E8] + 48);
    *&v170.m21 = v26;
    *&v170.m23 = v30;
  }

  else
  {
    CATransform3DMakeScale(&v170, v25, v25, 1.0);
  }

  v164 = v14;
  v18.n128_u64[0] = *&self->_iconSize.height;
  v19.n128_u64[0] = *&self->_singleLineSize.width;
  left = self->_singleLineAlignmentInset.left;
  height = self->_singleLineSize.height;
  top = self->_singleLineAlignmentInset.top;
  bottom = self->_singleLineAlignmentInset.bottom;
  v146 = v25 * self->_iconSize.width;
  amount = self->_singleLineAlignmentInset.right;
  v31 = v25 * 8.0;
  v32 = self->_multiLineSize.height;
  rect = v25 * self->_multiLineSize.width;
  v20.n128_u64[0] = *&self->_multiLineAlignmentInset.top;
  v21.n128_u64[0] = *&self->_multiLineAlignmentInset.left;
  v22.n128_u64[0] = *&self->_multiLineAlignmentInset.bottom;
  right = self->_multiLineAlignmentInset.right;
  if (v8 != self->_boundsSize.width || v10 != self->_boundsSize.height)
  {
    self->_boundsSize.width = v8;
    self->_boundsSize.height = v10;
    v34 = MEMORY[0x1E69B9168];
    v35 = v4;
    v37 = *MEMORY[0x1E695EFF8];
    v36 = *(MEMORY[0x1E695EFF8] + 8);
    v159 = v19.n128_u64[0];
    v162 = v18.n128_u64[0];
    v157 = v32;
    v151 = v21.n128_u64[0];
    v153 = v20.n128_u64[0];
    v149 = v22.n128_u64[0];
    v144 = right;
    [(_PKIdentityButton *)self _adjustedCornerRadiusForScale:v25];
    v39 = v38;
    v40 = v37;
    v4 = v35;
    v41 = v36;
    v31 = v25 * 8.0;
    v42 = [v34 pathWithRoundedRect:v40 cornerRadius:{v41, v8, v10, v39}];
    -[CAShapeLayer setPath:](self->_layer, "setPath:", [v42 CGPath]);
    shapeLayer = [(PKShapeView *)self->_maskView shapeLayer];
    [shapeLayer setPath:{objc_msgSend(v42, "CGPath")}];

    right = v144;
    v22.n128_u64[0] = v149;
    v21.n128_u64[0] = v151;
    v20.n128_u64[0] = v153;
    v32 = v157;
    v19.n128_u64[0] = v159;
    v18.n128_u64[0] = v162;
  }

  v145 = v25 * v18.n128_f64[0];
  v160 = v25 * v20.n128_f64[0];
  v163 = v25 * v19.n128_f64[0];
  v158 = v25 * v21.n128_f64[0];
  v130 = v25 * v22.n128_f64[0];
  v132 = v25 * v32;
  v129 = v25 * right;
  v44.n128_u64[1] = 0;
  memset(&slice, 0, sizeof(slice));
  v45 = v4 + v24 * v25;
  v46 = v155 + v24 * v25;
  v47 = v24 * v25 + v24 * v25;
  v48 = v8 - v47;
  v49 = v10 - v47;
  v134 = v31 + v146;
  v26.n128_f64[0] = v31 + v146 + rect;
  v18.n128_f64[0] = v45 - (v26.n128_f64[0] - v48);
  if (v48 >= v26.n128_f64[0])
  {
    v20.n128_f64[0] = v48;
  }

  else
  {
    v20.n128_f64[0] = v48 + v26.n128_f64[0] - v48;
  }

  if (((v48 < v26.n128_f64[0]) & _shouldReverseLayoutDirection) == 0)
  {
    v18.n128_f64[0] = v45;
  }

  v50 = *MEMORY[0x1E69BB7F8];
  v44.n128_f64[0] = v49;
  v19.n128_f64[0] = v155 + v24 * v25;
  v21.n128_f64[0] = v49;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v26, v44, v18, v19, v20, v21, v22);
  remainder = v172;
  CGRectDivide(v172, &slice, &remainder, v146, v12);
  v54.n128_u64[0] = 0;
  v55.n128_u64[0] = 0;
  v56.n128_u64[0] = 0;
  v57.n128_u64[0] = 0;
  if (v164 <= 0.0)
  {
    v55.n128_u64[0] = *&slice.origin.x;
    v54.n128_u64[0] = *&slice.origin.y;
    v51.n128_u64[0] = *&slice.size.width;
    v52.n128_u64[0] = *&slice.size.height;
    v57.n128_f64[0] = v146;
    v56.n128_f64[0] = v145;
    PKSizeAlignedInRect(v50, v57, v56, v55, v54, v51, v52, v53);
  }

  v150 = v55.n128_f64[0];
  v152 = v57.n128_f64[0];
  v154 = v56.n128_f64[0];
  v156 = v54.n128_f64[0];
  v58 = v25 * height;
  v141 = v25 * left;
  v143 = v25 * top;
  v139 = v25 * bottom;
  v135 = v58;
  v137 = v25 * amount;
  amounta = v31;
  CGRectDivide(remainder, &slice, &remainder, v31, v12);
  CGRectDivide(remainder, &slice, &remainder, rect, v12);
  v59.n128_f64[0] = rect - (v158 + v129);
  v60 = v160 + v130;
  v61.n128_f64[0] = v132 - (v160 + v130);
  v62.n128_u64[0] = *&slice.origin.x;
  v63.n128_u64[0] = *&slice.origin.y;
  v64.n128_u64[0] = *&slice.size.width;
  v65.n128_u64[0] = *&slice.size.height;
  PKSizeAlignedInRect(v50, v59, v61, v62, v63, v64, v65, v66);
  v131 = v68;
  v133 = v67;
  v70 = v69;
  recta = v158 + v129 + v71;
  remainder.origin.x = v45;
  remainder.origin.y = v46;
  remainder.size.width = v48;
  remainder.size.height = v49;
  v72.n128_f64[0] = v134 + v163;
  v73.n128_f64[0] = v49;
  v74.n128_f64[0] = v45;
  v75.n128_f64[0] = v46;
  v76.n128_f64[0] = v48;
  v77.n128_f64[0] = v49;
  PKSizeAlignedInRect(v50, v72, v73, v74, v75, v76, v77, v78);
  remainder = v173;
  CGRectDivide(v173, &slice, &remainder, v146, v12);
  if (v164 > 0.0)
  {
    v81.n128_u64[0] = *&slice.origin.x;
    v82.n128_u64[0] = *&slice.origin.y;
    v83.n128_u64[0] = *&slice.size.width;
    v84.n128_u64[0] = *&slice.size.height;
    v79.n128_f64[0] = v146;
    v80.n128_f64[0] = v145;
    PKSizeAlignedInRect(v50, v79, v80, v81, v82, v83, v84, v85);
    v152 = v86;
    v154 = v87;
    v150 = v88;
    v156 = v89;
  }

  v161 = v131 - v160;
  v90 = v60 + v70;
  CGRectDivide(remainder, &slice, &remainder, amounta, v12);
  CGRectDivide(remainder, &slice, &remainder, v163, v12);
  v91.n128_f64[0] = v163 - (v141 + v137);
  v92.n128_f64[0] = v135 - (v143 + v139);
  v93.n128_u64[0] = *&slice.origin.x;
  v94.n128_u64[0] = *&slice.origin.y;
  v95.n128_u64[0] = *&slice.size.width;
  v96.n128_u64[0] = *&slice.size.height;
  PKSizeAlignedInRect(v50, v91, v92, v93, v94, v95, v96, v97);
  v102 = v98 - v141;
  v103 = v99 - v143;
  v104 = v141 + v137 + v100;
  v105 = v143 + v139 + v101;
  if (v164 <= 0.0)
  {
    v106 = v141 + v137 + v100;
  }

  else
  {
    v106 = recta;
  }

  v107 = v98 - v141;
  v108 = v99 - v143;
  v109 = v141 + v137 + v100;
  v110 = v143 + v139 + v101;
  if (v164 <= 0.0)
  {
    v107 = v133 - v158;
    v108 = v161;
    v109 = recta;
    v110 = v90;
  }

  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMaxX(*&v107) - v106;
  }

  else
  {
    MinX = CGRectGetMinX(*&v107);
  }

  if (v164 <= 0.0)
  {
    v112 = v133 - v158;
  }

  else
  {
    v112 = MinX;
  }

  if (v164 <= 0.0)
  {
    v113 = MinX;
  }

  else
  {
    v113 = v102;
  }

  layer = [(UIImageView *)self->_iconView layer];
  [layer anchorPoint];
  v116 = v115;
  v118 = v117;
  v167 = v170;
  [layer setTransform:&v167];
  [layer setPosition:{v152 + v116 * v150, v154 + v118 * v156}];
  layer2 = [(UILabel *)self->_multiLineLabel layer];

  [layer2 anchorPoint];
  v121 = v120;
  v123 = v122;
  v167 = v170;
  [layer2 setTransform:&v167];
  [layer2 setPosition:{v112 + v121 * recta, v161 + v123 * v90}];
  layer3 = [(UILabel *)self->_singleLineLabel layer];

  [layer3 anchorPoint];
  v126 = v125;
  v128 = v127;
  v167 = v170;
  [layer3 setTransform:&v167];
  [layer3 setPosition:{v113 + v126 * v104, v103 + v128 * v105}];
}

- (void)_adjustVisibleLabelWithBounds:(CGRect)bounds
{
  v4 = [(_PKIdentityButton *)self _singleLineFitsSize:bounds.size.width, bounds.size.height];
  [(UILabel *)self->_multiLineLabel setAlpha:(v4 ^ 1)];
  singleLineLabel = self->_singleLineLabel;

  [(UILabel *)singleLineLabel setAlpha:v4];
}

- (BOOL)_singleLineFitsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(_PKIdentityButton *)self _intrinsicContentSizeForSingleLine:1];
  return v6 * fmin(height / v5, 1.0) <= width;
}

- (id)_singleLineTitle
{
  v3 = self->_label - 1;
  if (v3 > 2)
  {
    v4 = @"IDENTITY_VERIFY_IDENTITY_BUTTON_TITLE";
  }

  else
  {
    v4 = off_1E8020DE0[v3];
  }

  v5 = PKLocalizedString(&v4->isa);

  return v5;
}

- (id)_splitAttributedTitle
{
  v3 = self->_label - 1;
  if (v3 > 2)
  {
    v4 = @"IDENTITY_VERIFY_IDENTITY_BUTTON_SPLIT_SURTITLE";
  }

  else
  {
    v4 = off_1E8020DF8[v3];
  }

  v5 = PKLocalizedString(&v4->isa);
  v6 = PKLocalizedString(&cfstr_IdentityButton.isa);
  v7 = PKLocalizedString(&cfstr_Pkidentityveri.isa);
  v8 = [v7 isEqualToString:@"1"];

  if (v8)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    v5 = v6;
  }

  if ([(_PKIdentityButton *)self _shouldReverseLayoutDirection])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = TitleFormattedString(v5, v9, v10, &self->_multiLineAlignmentInset.top);

  return v11;
}

- (void)_createHighlightFilterIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    layer = [(_PKIdentityButton *)self layer];
    v4 = objc_alloc(MEMORY[0x1E6979378]);
    v5 = [v4 initWithType:*MEMORY[0x1E6979CB0]];
    highlightFilter = self->_highlightFilter;
    self->_highlightFilter = v5;

    [(CAFilter *)self->_highlightFilter setName:@"highlightFilter"];
    v7 = self->_highlightFilter;
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:1.0];
    -[CAFilter setValue:forKey:](v7, "setValue:forKey:", [v8 CGColor], @"inputColor");

    v10[0] = self->_highlightFilter;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    [layer setFilters:v9];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v12.receiver = self;
  v12.super_class = _PKIdentityButton;
  [(_PKIdentityButton *)&v12 setHighlighted:?];
  if (self->_highlighted != highlightedCopy)
  {
    self->_highlighted = highlightedCopy;
    [(_PKIdentityButton *)self _createHighlightFilterIfNecessary];
    v5 = 0.6;
    if (!highlightedCopy)
    {
      v5 = 1.0;
    }

    v6 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:?];
    v7 = MEMORY[0x1E69DC888];
    presentationLayer = [(CAShapeLayer *)self->_layer presentationLayer];
    v9 = [presentationLayer valueForKeyPath:@"filters.highlightFilter.inputColor"];
    if (!v9)
    {
      v9 = [(CAShapeLayer *)self->_layer valueForKeyPath:@"filters.highlightFilter.inputColor"];
    }

    v10 = [v7 colorWithCGColor:v9];

    -[CAShapeLayer setValue:forKeyPath:](self->_layer, "setValue:forKeyPath:", [v6 CGColor], @"filters.highlightFilter.inputColor");
    v11 = [MEMORY[0x1E6979318] animationWithKeyPath:@"filters.highlightFilter.inputColor"];
    [v11 setDuration:0.15];
    [v11 setFillMode:*MEMORY[0x1E69797E8]];
    [v11 setFromValue:{objc_msgSend(v10, "CGColor")}];
    [v11 setToValue:{objc_msgSend(v6, "CGColor")}];
    [(CAShapeLayer *)self->_layer removeAnimationForKey:@"highlight"];
    [(CAShapeLayer *)self->_layer addAnimation:v11 forKey:@"highlight"];
  }
}

- (void)_applyStyle
{
  layer = self->_layer;
  if (self->_style == 1)
  {
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.3];
    v3 = v5;
    -[CAShapeLayer setStrokeColor:](layer, "setStrokeColor:", [v5 CGColor]);
  }

  else
  {
    fillColor = [(CAShapeLayer *)self->_layer fillColor];

    [(CAShapeLayer *)layer setStrokeColor:fillColor];
  }
}

- (void)setCornerRadius:(double)radius
{
  if (radius < 0.0)
  {
    radius = 0.0;
  }

  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    [(_PKIdentityButton *)self setNeedsDisplay];
  }
}

- (double)_adjustedCornerRadiusForScale:(double)scale
{
  [(_PKIdentityButton *)self cornerRadius];

  PKFloatRoundToPixelWithScale();
  return result;
}

@end