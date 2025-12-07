@interface PKAddPassButton
+ (PKAddPassButton)addPassButtonWithStyle:(PKAddPassButtonStyle)addPassButtonStyle;
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (BOOL)_singleLineFitsSize:(CGSize)size;
- (CGSize)_baseIntrinsicMultiLineSize;
- (CGSize)_baseIntrinsicSingleLineSize;
- (CGSize)_intrinsicContentSizeForSingleLine:(BOOL)line;
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKAddPassButton)initWithAddPassButtonStyle:(PKAddPassButtonStyle)style;
- (PKAddPassButton)initWithAddPassButtonStyle:(int64_t)style addPassButtonType:(int64_t)type;
- (PKAddPassButton)initWithCoder:(id)coder;
- (id)_singleLineTitle;
- (id)_splitAttributedTitle;
- (void)_adjustVisibleLabelWithBounds:(CGRect)bounds;
- (void)_applyStyle;
- (void)_createHighlightFilterIfNecessary;
- (void)_sharedInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)layoutSubviews;
- (void)setAddPassButtonStyle:(PKAddPassButtonStyle)addPassButtonStyle;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PKAddPassButton

+ (PKAddPassButton)addPassButtonWithStyle:(PKAddPassButtonStyle)addPassButtonStyle
{
  v3 = [objc_alloc(objc_opt_class()) initWithAddPassButtonStyle:addPassButtonStyle];

  return v3;
}

- (PKAddPassButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKAddPassButton;
  v5 = [(PKAddPassButton *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_addPassButtonStyle = [coderCopy decodeIntegerForKey:@"PKButtonStyle"];
    v5->_addPassButtonType = [coderCopy decodeIntegerForKey:@"PKButtonType"];
    [(PKAddPassButton *)v5 _sharedInit];
  }

  return v5;
}

- (PKAddPassButton)initWithAddPassButtonStyle:(PKAddPassButtonStyle)style
{
  v4 = *MEMORY[0x1E695EFF8];
  v5 = *(MEMORY[0x1E695EFF8] + 8);
  v9.receiver = self;
  v9.super_class = PKAddPassButton;
  v6 = [(PKAddPassButton *)&v9 initWithFrame:v4, v5, 190.0, 57.0];
  v7 = v6;
  if (v6)
  {
    v6->_addPassButtonStyle = style;
    v6->_addPassButtonType = 0;
    [(PKAddPassButton *)v6 _sharedInit];
  }

  return v7;
}

- (PKAddPassButton)initWithAddPassButtonStyle:(int64_t)style addPassButtonType:(int64_t)type
{
  v6 = *MEMORY[0x1E695EFF8];
  v7 = *(MEMORY[0x1E695EFF8] + 8);
  v11.receiver = self;
  v11.super_class = PKAddPassButton;
  v8 = [(PKAddPassButton *)&v11 initWithFrame:v6, v7, 190.0, 57.0];
  v9 = v8;
  if (v8)
  {
    v8->_addPassButtonStyle = style;
    v8->_addPassButtonType = type;
    [(PKAddPassButton *)v8 _sharedInit];
  }

  return v9;
}

- (void)_sharedInit
{
  [(PKAddPassButton *)self setOpaque:0];
  layer = [(PKAddPassButton *)self layer];
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
  v16 = [v40 resizedImageWithConstraints:?];
  v17 = [MEMORY[0x1E69DCAB8] imageWithPKImage:v16];
  [v17 size];
  self->_iconSize.width = v18;
  self->_iconSize.height = v19;
  v20 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
  iconView = self->_iconView;
  self->_iconView = v20;

  [(PKAddPassButton *)self addSubview:self->_iconView];
  _singleLineTitle = [(PKAddPassButton *)self _singleLineTitle];
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
  [(PKAddPassButton *)self addSubview:self->_singleLineLabel];
  v29 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  multiLineLabel = self->_multiLineLabel;
  self->_multiLineLabel = v29;

  v31 = self->_multiLineLabel;
  clearColor2 = [MEMORY[0x1E69DC888] clearColor];
  [(UILabel *)v31 setBackgroundColor:clearColor2];

  v33 = self->_multiLineLabel;
  _splitAttributedTitle = [(PKAddPassButton *)self _splitAttributedTitle];
  [(UILabel *)v33 setAttributedText:_splitAttributedTitle];

  [(UILabel *)self->_multiLineLabel setNumberOfLines:2];
  [(UILabel *)self->_multiLineLabel sizeToFit];
  [(PKAddPassButton *)self addSubview:self->_multiLineLabel];
  [(UILabel *)self->_singleLineLabel frame];
  self->_singleLineSize.width = v35;
  self->_singleLineSize.height = v36;
  [(UILabel *)self->_multiLineLabel frame];
  self->_multiLineSize.width = v37;
  self->_multiLineSize.height = v38;
  [(PKAddPassButton *)self _applyStyle];
  [(PKAddPassButton *)self bounds];
  [(PKAddPassButton *)self _adjustVisibleLabelWithBounds:?];
  [(PKAddPassButton *)self setAccessibilityLabel:_singleLineTitle];
  [(PKAddPassButton *)self setAccessibilityTraits:*MEMORY[0x1E69DD9B8]];
  if (dyld_program_sdk_at_least())
  {
    [(PKAddPassButton *)self sizeToFit];
  }
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKAddPassButton;
  coderCopy = coder;
  [(PKAddPassButton *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_addPassButtonStyle forKey:{@"PKButtonStyle", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_addPassButtonType forKey:@"PKButtonType"];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKAddPassButton;
  [(PKAddPassButton *)&v2 dealloc];
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
    v7.super_class = PKAddPassButton;
    v5 = [(PKAddPassButton *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  [(PKAddPassButton *)self _intrinsicContentSizeForSingleLine:0];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  [(PKAddPassButton *)self _intrinsicContentSizeForSingleLine:[(PKAddPassButton *)self _singleLineFitsSize:fits.width]];
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
    [(PKAddPassButton *)self _baseIntrinsicSingleLineSize];
  }

  else
  {
    [(PKAddPassButton *)self _baseIntrinsicMultiLineSize];
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
  v169.receiver = self;
  v169.super_class = PKAddPassButton;
  [(PKAddPassButton *)&v169 layoutSubviews];
  [(PKAddPassButton *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  _shouldReverseLayoutDirection = [(PKAddPassButton *)self _shouldReverseLayoutDirection];
  if (_shouldReverseLayoutDirection)
  {
    v12 = CGRectMaxXEdge;
  }

  else
  {
    v12 = CGRectMinXEdge;
  }

  [(PKShapeView *)self->_maskView setFrame:v4, v6, v8, v10];
  v153 = v6;
  [(PKAddPassButton *)self _adjustVisibleLabelWithBounds:v4, v6, v8, v10];
  [(UILabel *)self->_singleLineLabel alpha];
  v14 = v13;
  [(PKAddPassButton *)self _intrinsicContentSizeForSingleLine:v13 > 0.0];
  v16 = v15.n128_f64[0];
  v17.n128_f64[0] = v15.n128_f64[0] * 0.25;
  PKFloatRoundToPixel(v17, v15);
  v24 = v23;
  v25 = fmin(v10 / v16, 1.0);
  memset(&v168, 0, sizeof(v168));
  if (v25 == 1.0)
  {
    v28 = *(MEMORY[0x1E69792E8] + 80);
    *&v168.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v168.m33 = v28;
    v29 = *(MEMORY[0x1E69792E8] + 112);
    *&v168.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v168.m43 = v29;
    v30 = *(MEMORY[0x1E69792E8] + 16);
    *&v168.m11 = *MEMORY[0x1E69792E8];
    *&v168.m13 = v30;
    v26 = *(MEMORY[0x1E69792E8] + 32);
    v27 = *(MEMORY[0x1E69792E8] + 48);
    *&v168.m21 = v26;
    *&v168.m23 = v27;
  }

  else
  {
    CATransform3DMakeScale(&v168, v25, v25, 1.0);
  }

  v162 = v14;
  v18.n128_u64[0] = *&self->_iconSize.height;
  v19.n128_u64[0] = *&self->_singleLineSize.width;
  left = self->_singleLineAlignmentInset.left;
  height = self->_singleLineSize.height;
  top = self->_singleLineAlignmentInset.top;
  bottom = self->_singleLineAlignmentInset.bottom;
  v144 = v25 * self->_iconSize.width;
  amount = self->_singleLineAlignmentInset.right;
  v31 = v25 * 8.0;
  v27.n128_u64[0] = *&self->_multiLineSize.height;
  rect = v25 * self->_multiLineSize.width;
  v20.n128_u64[0] = *&self->_multiLineAlignmentInset.top;
  v21.n128_u64[0] = *&self->_multiLineAlignmentInset.left;
  v22.n128_u64[0] = *&self->_multiLineAlignmentInset.bottom;
  right = self->_multiLineAlignmentInset.right;
  if (v8 != self->_boundsSize.width || v10 != self->_boundsSize.height)
  {
    self->_boundsSize.width = v8;
    self->_boundsSize.height = v10;
    v33 = MEMORY[0x1E69DC728];
    v34 = v4;
    v36 = *MEMORY[0x1E695EFF8];
    v35 = *(MEMORY[0x1E695EFF8] + 8);
    v26.n128_f64[0] = v25 * 4.0;
    v157 = v19.n128_u64[0];
    v160 = v18.n128_u64[0];
    v155 = v27.n128_u64[0];
    v149 = v21.n128_u64[0];
    v151 = v20.n128_u64[0];
    v147 = v22.n128_u64[0];
    v142 = right;
    PKFloatRoundToPixel(v26, v27);
    v38 = v37;
    v39 = v36;
    v4 = v34;
    v40 = v35;
    v31 = v25 * 8.0;
    v41 = [v33 _bezierPathWithPillRect:v39 cornerRadius:{v40, v8, v10, v38}];
    -[CAShapeLayer setPath:](self->_layer, "setPath:", [v41 CGPath]);
    shapeLayer = [(PKShapeView *)self->_maskView shapeLayer];
    [shapeLayer setPath:{objc_msgSend(v41, "CGPath")}];

    right = v142;
    v22.n128_u64[0] = v147;
    v21.n128_u64[0] = v149;
    v20.n128_u64[0] = v151;
    v27.n128_u64[0] = v155;
    v19.n128_u64[0] = v157;
    v18.n128_u64[0] = v160;
  }

  v143 = v25 * v18.n128_f64[0];
  v158 = v25 * v20.n128_f64[0];
  v161 = v25 * v19.n128_f64[0];
  v156 = v25 * v21.n128_f64[0];
  v128 = v25 * v22.n128_f64[0];
  v130 = v25 * v27.n128_f64[0];
  v127 = v25 * right;
  v27.n128_u64[1] = 0;
  memset(&slice, 0, sizeof(slice));
  v43 = v4 + v24 * v25;
  v44 = v153 + v24 * v25;
  v45 = v24 * v25 + v24 * v25;
  v46 = v8 - v45;
  v47 = v10 - v45;
  v132 = v31 + v144;
  v26.n128_f64[0] = v31 + v144 + rect;
  v18.n128_f64[0] = v43 - (v26.n128_f64[0] - v46);
  if (v46 >= v26.n128_f64[0])
  {
    v20.n128_f64[0] = v46;
  }

  else
  {
    v20.n128_f64[0] = v46 + v26.n128_f64[0] - v46;
  }

  if (((v46 < v26.n128_f64[0]) & _shouldReverseLayoutDirection) == 0)
  {
    v18.n128_f64[0] = v43;
  }

  v48 = *MEMORY[0x1E69BB7F8];
  v27.n128_f64[0] = v47;
  v19.n128_f64[0] = v153 + v24 * v25;
  v21.n128_f64[0] = v47;
  PKSizeAlignedInRect(*MEMORY[0x1E69BB7F8], v26, v27, v18, v19, v20, v21, v22);
  remainder = v170;
  CGRectDivide(v170, &slice, &remainder, v144, v12);
  v52.n128_u64[0] = 0;
  v53.n128_u64[0] = 0;
  v54.n128_u64[0] = 0;
  v55.n128_u64[0] = 0;
  if (v162 <= 0.0)
  {
    v53.n128_u64[0] = *&slice.origin.x;
    v52.n128_u64[0] = *&slice.origin.y;
    v49.n128_u64[0] = *&slice.size.width;
    v50.n128_u64[0] = *&slice.size.height;
    v55.n128_f64[0] = v144;
    v54.n128_f64[0] = v143;
    PKSizeAlignedInRect(v48, v55, v54, v53, v52, v49, v50, v51);
  }

  v148 = v53.n128_f64[0];
  v150 = v55.n128_f64[0];
  v152 = v54.n128_f64[0];
  v154 = v52.n128_f64[0];
  v56 = v25 * height;
  v139 = v25 * left;
  v141 = v25 * top;
  v137 = v25 * bottom;
  v133 = v56;
  v135 = v25 * amount;
  amounta = v31;
  CGRectDivide(remainder, &slice, &remainder, v31, v12);
  CGRectDivide(remainder, &slice, &remainder, rect, v12);
  v57.n128_f64[0] = rect - (v156 + v127);
  v58 = v158 + v128;
  v59.n128_f64[0] = v130 - (v158 + v128);
  v60.n128_u64[0] = *&slice.origin.x;
  v61.n128_u64[0] = *&slice.origin.y;
  v62.n128_u64[0] = *&slice.size.width;
  v63.n128_u64[0] = *&slice.size.height;
  PKSizeAlignedInRect(v48, v57, v59, v60, v61, v62, v63, v64);
  v129 = v66;
  v131 = v65;
  v68 = v67;
  recta = v156 + v127 + v69;
  remainder.origin.x = v43;
  remainder.origin.y = v44;
  remainder.size.width = v46;
  remainder.size.height = v47;
  v70.n128_f64[0] = v132 + v161;
  v71.n128_f64[0] = v47;
  v72.n128_f64[0] = v43;
  v73.n128_f64[0] = v44;
  v74.n128_f64[0] = v46;
  v75.n128_f64[0] = v47;
  PKSizeAlignedInRect(v48, v70, v71, v72, v73, v74, v75, v76);
  remainder = v171;
  CGRectDivide(v171, &slice, &remainder, v144, v12);
  if (v162 > 0.0)
  {
    v79.n128_u64[0] = *&slice.origin.x;
    v80.n128_u64[0] = *&slice.origin.y;
    v81.n128_u64[0] = *&slice.size.width;
    v82.n128_u64[0] = *&slice.size.height;
    v77.n128_f64[0] = v144;
    v78.n128_f64[0] = v143;
    PKSizeAlignedInRect(v48, v77, v78, v79, v80, v81, v82, v83);
    v150 = v84;
    v152 = v85;
    v148 = v86;
    v154 = v87;
  }

  v159 = v129 - v158;
  v88 = v58 + v68;
  CGRectDivide(remainder, &slice, &remainder, amounta, v12);
  CGRectDivide(remainder, &slice, &remainder, v161, v12);
  v89.n128_f64[0] = v161 - (v139 + v135);
  v90.n128_f64[0] = v133 - (v141 + v137);
  v91.n128_u64[0] = *&slice.origin.x;
  v92.n128_u64[0] = *&slice.origin.y;
  v93.n128_u64[0] = *&slice.size.width;
  v94.n128_u64[0] = *&slice.size.height;
  PKSizeAlignedInRect(v48, v89, v90, v91, v92, v93, v94, v95);
  v100 = v96 - v139;
  v101 = v97 - v141;
  v102 = v139 + v135 + v98;
  v103 = v141 + v137 + v99;
  if (v162 <= 0.0)
  {
    v104 = v139 + v135 + v98;
  }

  else
  {
    v104 = recta;
  }

  v105 = v96 - v139;
  v106 = v97 - v141;
  v107 = v139 + v135 + v98;
  v108 = v141 + v137 + v99;
  if (v162 <= 0.0)
  {
    v105 = v131 - v156;
    v106 = v159;
    v107 = recta;
    v108 = v88;
  }

  if (_shouldReverseLayoutDirection)
  {
    MinX = CGRectGetMaxX(*&v105) - v104;
  }

  else
  {
    MinX = CGRectGetMinX(*&v105);
  }

  if (v162 <= 0.0)
  {
    v110 = v131 - v156;
  }

  else
  {
    v110 = MinX;
  }

  if (v162 <= 0.0)
  {
    v111 = MinX;
  }

  else
  {
    v111 = v100;
  }

  layer = [(UIImageView *)self->_iconView layer];
  [layer anchorPoint];
  v114 = v113;
  v116 = v115;
  v165 = v168;
  [layer setTransform:&v165];
  [layer setPosition:{v150 + v114 * v148, v152 + v116 * v154}];
  layer2 = [(UILabel *)self->_multiLineLabel layer];

  [layer2 anchorPoint];
  v119 = v118;
  v121 = v120;
  v165 = v168;
  [layer2 setTransform:&v165];
  [layer2 setPosition:{v110 + v119 * recta, v159 + v121 * v88}];
  layer3 = [(UILabel *)self->_singleLineLabel layer];

  [layer3 anchorPoint];
  v124 = v123;
  v126 = v125;
  v165 = v168;
  [layer3 setTransform:&v165];
  [layer3 setPosition:{v111 + v124 * v102, v101 + v126 * v103}];
}

- (void)_adjustVisibleLabelWithBounds:(CGRect)bounds
{
  v4 = [(PKAddPassButton *)self _singleLineFitsSize:bounds.size.width, bounds.size.height];
  [(UILabel *)self->_multiLineLabel setAlpha:(v4 ^ 1)];
  singleLineLabel = self->_singleLineLabel;

  [(UILabel *)singleLineLabel setAlpha:v4];
}

- (BOOL)_singleLineFitsSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(PKAddPassButton *)self _intrinsicContentSizeForSingleLine:1];
  return v6 * fmin(height / v5, 1.0) <= width;
}

- (void)_createHighlightFilterIfNecessary
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!self->_highlightFilter)
  {
    layer = [(PKAddPassButton *)self layer];
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
  v12.super_class = PKAddPassButton;
  [(PKAddPassButton *)&v12 setHighlighted:?];
  if (self->_highlighted != highlightedCopy)
  {
    self->_highlighted = highlightedCopy;
    [(PKAddPassButton *)self _createHighlightFilterIfNecessary];
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

- (void)setAddPassButtonStyle:(PKAddPassButtonStyle)addPassButtonStyle
{
  if (self->_addPassButtonStyle != addPassButtonStyle)
  {
    self->_addPassButtonStyle = addPassButtonStyle;
    [(PKAddPassButton *)self _applyStyle];
  }
}

- (void)_applyStyle
{
  layer = self->_layer;
  if (self->_addPassButtonStyle == 1)
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

- (id)_singleLineTitle
{
  addPassButtonType = self->_addPassButtonType;
  if (!addPassButtonType)
  {
    v4 = @"ADD_PASS_BUTTON_TITLE";
LABEL_5:
    v5 = PKLocalizedString(&v4->isa);

    return v5;
  }

  if (addPassButtonType == 1)
  {
    v4 = @"ADD_PASS_BUTTON_TITLE_TRACK";
    goto LABEL_5;
  }

  v5 = 0;

  return v5;
}

- (id)_splitAttributedTitle
{
  addPassButtonType = self->_addPassButtonType;
  if (addPassButtonType)
  {
    if (addPassButtonType != 1)
    {
      v11 = 0;
      goto LABEL_15;
    }

    v4 = @"ADD_PASS_BUTTON_SPLIT_SURTITLE_TRACK";
  }

  else
  {
    v4 = @"ADD_PASS_BUTTON_SPLIT_SURTITLE";
  }

  v5 = PKLocalizedString(&v4->isa);
  v6 = PKLocalizedString(&cfstr_AddPassButtonS_1.isa);
  v7 = PKLocalizedString(&cfstr_Pkaddtowalletb.isa);
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

  if ([(PKAddPassButton *)self _shouldReverseLayoutDirection])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = TitleFormattedString(v5, v9, v10, &self->_multiLineAlignmentInset.top);

LABEL_15:

  return v11;
}

@end