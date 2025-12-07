@interface PKFusedDoubleCellView
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (PKFusedDoubleCellView)init;
- (PKFusedDoubleCellView)initWithFrame:(CGRect)frame;
- (double)_layoutLabelsSideBySide:(CGRect)side halfSize:(CGSize)size leftTitleSize:(CGSize)titleSize leftDetailSize:(CGSize)detailSize leftSubDetailSize:(CGSize)subDetailSize disclosureSize:(CGSize)disclosureSize disclosurePadding:(double)padding rightSize:(CGSize)self0 rightTitleSize:(CGSize)self1 rightDetailSize:(CGSize)self2 rightSubDetailSize:(CGSize)self3 isTemplateLayout:(BOOL)self4;
- (double)_layoutLabelsStacked:(CGRect)stacked disclosureSize:(CGSize)size disclosurePadding:(double)padding isTemplateLayout:(BOOL)layout;
- (id)_detailFont;
- (id)_titleFont;
- (void)_setupViews;
- (void)_updateContent:(BOOL)content;
- (void)endUpdates:(BOOL)updates;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setEnableDisclosure:(BOOL)disclosure;
- (void)setLeftDetail:(id)detail;
- (void)setLeftDetailColor:(id)color;
- (void)setLeftSubDetail:(id)detail;
- (void)setLeftSubDetailColor:(id)color;
- (void)setLeftTitle:(id)title;
- (void)setLeftTitleColor:(id)color;
- (void)setPass:(id)pass;
- (void)setRightDetail:(id)detail;
- (void)setRightDetailColor:(id)color;
- (void)setRightSubDetail:(id)detail;
- (void)setRightSubDetailColor:(id)color;
- (void)setRightTitle:(id)title;
- (void)setRightTitleColor:(id)color;
- (void)setTitleFont:(id)font;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation PKFusedDoubleCellView

- (PKFusedDoubleCellView)init
{
  v5.receiver = self;
  v5.super_class = PKFusedDoubleCellView;
  v2 = [(PKFusedDoubleCellView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(PKFusedDoubleCellView *)v2 _performInit];
  }

  return v3;
}

- (PKFusedDoubleCellView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PKFusedDoubleCellView;
  v3 = [(PKFusedDoubleCellView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PKFusedDoubleCellView *)v3 _performInit];
  }

  return v4;
}

- (void)prepareForReuse
{
  [(UILabel *)self->_leftTitleView setText:0];
  [(UILabel *)self->_leftDetailView setText:0];
  [(UILabel *)self->_leftSubDetailView setText:0];
  [(UILabel *)self->_rightTitleView setText:0];
  [(UILabel *)self->_rightDetailView setText:0];
  [(UILabel *)self->_rightSubDetailView setText:0];
  [(UIView *)self->_separatorView setAlpha:0.0];
  disclosureView = self->_disclosureView;

  [(UIImageView *)disclosureView setAlpha:0.0];
}

- (void)_setupViews
{
  secondarySystemGroupedBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemGroupedBackgroundColor];
  [(UIView *)self pkui_setMaskType:3];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  leftTitleView = self->_leftTitleView;
  self->_leftTitleView = v8;

  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  rightTitleView = self->_rightTitleView;
  self->_rightTitleView = v10;

  v12 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  leftDetailView = self->_leftDetailView;
  self->_leftDetailView = v12;

  v14 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  rightDetailView = self->_rightDetailView;
  self->_rightDetailView = v14;

  v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  leftSubDetailView = self->_leftSubDetailView;
  self->_leftSubDetailView = v16;

  v18 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  rightSubDetailView = self->_rightSubDetailView;
  self->_rightSubDetailView = v18;

  v20 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v4, v5, v6, v7}];
  separatorView = self->_separatorView;
  self->_separatorView = v20;

  v22 = self->_separatorView;
  separatorColor = [MEMORY[0x1E69DC888] separatorColor];
  [(UIView *)v22 setBackgroundColor:separatorColor];

  [(UIView *)self->_separatorView setAlpha:0.0];
  v24 = objc_alloc(MEMORY[0x1E69DCAE0]);
  if (_UISolariumFeatureFlagEnabled())
  {
    PKUISmallChevronImage();
  }

  else
  {
    PKUIChevronImage();
  }
  v25 = ;
  v26 = [v24 initWithImage:{v25, 424}];
  disclosureView = self->_disclosureView;
  self->_disclosureView = v26;

  v28 = self->_disclosureView;
  tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  [(UIImageView *)v28 setTintColor:tertiaryLabelColor];

  [(UIImageView *)self->_disclosureView setAlpha:0.0];
  [*(&self->super.super.super.isa + v30) setAccessibilityIdentifier:@"PKFusedDoubleCellView.leftTitleView"];
  [(UILabel *)self->_rightTitleView setAccessibilityIdentifier:@"PKFusedDoubleCellView.rightTitleView"];
  [(UILabel *)self->_leftDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.leftDetailView"];
  [(UILabel *)self->_rightDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.rightDetailView"];
  [(UILabel *)self->_leftSubDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.leftSubDetailView"];
  [(UILabel *)self->_rightSubDetailView setAccessibilityIdentifier:@"PKFusedDoubleCellView.rightSubDetailView"];
  [(PKFusedDoubleCellView *)self addSubview:*(&self->super.super.super.isa + v30)];
  [(PKFusedDoubleCellView *)self addSubview:self->_leftDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_leftSubDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_rightTitleView];
  [(PKFusedDoubleCellView *)self addSubview:self->_rightDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_rightSubDetailView];
  [(PKFusedDoubleCellView *)self addSubview:self->_disclosureView];
  [(PKFusedDoubleCellView *)self addSubview:self->_separatorView];
  [(PKFusedDoubleCellView *)self setBackgroundColor:secondarySystemGroupedBackgroundColor];
}

- (id)_titleFont
{
  titleFont = self->_titleFont;
  if (titleFont)
  {
    v3 = titleFont;
  }

  else
  {
    v3 = PKFontForDefaultDesign(*MEMORY[0x1E69DDCF8], *MEMORY[0x1E69DDC38]);
  }

  return v3;
}

- (id)_detailFont
{
  v2 = PKUIGetMinScreenWidthType();
  v3 = 28.0;
  if (!v2)
  {
    v3 = 24.0;
  }

  v4 = PKScaledValueForValueWithMaximumContentSizeCategory(*MEMORY[0x1E69DDC28], v3);
  v5 = *MEMORY[0x1E69DB958];

  return PKRoundedSystemFontOfSizeAndWeight(v4, v5);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, a2, 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PKFusedDoubleCellView;
  [(PKFusedDoubleCellView *)&v3 layoutSubviews];
  [(PKFusedDoubleCellView *)self bounds];
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self);
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  layoutCopy = layout;
  y = bounds.origin.y;
  height = bounds.size.height;
  width = bounds.size.width;
  x = bounds.origin.x;
  traitCollection = [(PKFusedDoubleCellView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v10 = _UISolariumFeatureFlagEnabled();
  _UISolariumFeatureFlagEnabled();
  v11 = 10.0;
  if (v10)
  {
    v11 = 16.0;
  }

  v53 = v11;
  v12 = 32.0;
  if (!v10)
  {
    v12 = 20.0;
  }

  v59 = width;
  v13 = width - v12;
  v14 = PKUIPixelLength();
  v58 = v13;
  v15 = v13 * 0.5 + -6.5;
  v16 = v14 * 0.5;
  v17 = v15 - v16;
  if (self->_leftTitle)
  {
    [(UILabel *)self->_leftTitleView sizeThatFits:v15 - v16, 3.40282347e38];
  }

  else
  {
    v18 = *MEMORY[0x1E695F060];
    v19 = *(MEMORY[0x1E695F060] + 8);
  }

  v49 = v19;
  v54 = v18;
  if (self->_leftDetail)
  {
    [(UILabel *)self->_leftDetailView sizeThatFits:v17, 3.40282347e38];
  }

  else
  {
    v20 = *MEMORY[0x1E695F060];
    v21 = *(MEMORY[0x1E695F060] + 8);
  }

  v48 = v21;
  v52 = v20;
  if (self->_leftSubDetail)
  {
    [(UILabel *)self->_leftSubDetailView sizeThatFits:v17, 3.40282347e38];
    v51 = v22;
    v47 = v23;
  }

  else
  {
    v51 = *MEMORY[0x1E695F060];
    v47 = *(MEMORY[0x1E695F060] + 8);
  }

  [(UIImageView *)self->_disclosureView alpha];
  if (v24 <= 0.0)
  {
    v26 = *MEMORY[0x1E695F060];
    v50 = *(MEMORY[0x1E695F060] + 8);
  }

  else
  {
    [(UIImageView *)self->_disclosureView sizeThatFits:v17, 3.40282347e38];
    v26 = v25;
    v50 = v27;
  }

  if (v26 <= 0.0)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = 10.0;
  }

  if (self->_rightTitle)
  {
    [(UILabel *)self->_rightTitleView sizeThatFits:v17 - v26 + -10.0, 3.40282347e38];
    v30 = v29;
    v46 = v31;
  }

  else
  {
    v30 = *MEMORY[0x1E695F060];
    v46 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_rightDetail)
  {
    [(UILabel *)self->_rightDetailView sizeThatFits:v17 - v26 + -10.0, 3.40282347e38];
    v33 = v32;
    v45 = v34;
  }

  else
  {
    v33 = *MEMORY[0x1E695F060];
    v45 = *(MEMORY[0x1E695F060] + 8);
  }

  if (self->_rightSubDetail)
  {
    [(UILabel *)self->_rightSubDetailView sizeThatFits:v17 - v26 + -10.0, 3.40282347e38];
    v36 = v35;
    v38 = v37;
  }

  else
  {
    v36 = *MEMORY[0x1E695F060];
    v38 = *(MEMORY[0x1E695F060] + 8);
  }

  v39 = x + v53;
  v40 = y + 12.0;
  v41 = height + -24.0;
  if (fmax(v54, fmax(v52, v51)) > v17 || v28 + v26 + fmax(v30, fmax(v33, v36)) > v17 || IsAccessibilityCategory)
  {
    [(PKFusedDoubleCellView *)self _layoutLabelsStacked:layoutCopy disclosureSize:v39 disclosurePadding:v40 isTemplateLayout:v58, v41, v26, v50, v28];
  }

  else
  {
    [(PKFusedDoubleCellView *)self _layoutLabelsSideBySide:layoutCopy halfSize:v39 leftTitleSize:v40 leftDetailSize:v58 leftSubDetailSize:v41 disclosureSize:v17 disclosurePadding:3.40282347e38 rightSize:v54 rightTitleSize:v49 rightDetailSize:*&v52 rightSubDetailSize:v48 isTemplateLayout:*&v51, v47, *&v26, *&v50, *&v28, v17 - v26 + -10.0, 0x47EFFFFFE0000000, *&v30, v46, *&v33, v45, *&v36, v38];
  }

  v43 = v42 + 0.0 + 12.0 + 12.0;
  v44 = v59;
  result.height = v43;
  result.width = v44;
  return result;
}

- (double)_layoutLabelsSideBySide:(CGRect)side halfSize:(CGSize)size leftTitleSize:(CGSize)titleSize leftDetailSize:(CGSize)detailSize leftSubDetailSize:(CGSize)subDetailSize disclosureSize:(CGSize)disclosureSize disclosurePadding:(double)padding rightSize:(CGSize)self0 rightTitleSize:(CGSize)self1 rightDetailSize:(CGSize)self2 rightSubDetailSize:(CGSize)self3 isTemplateLayout:(BOOL)self4
{
  width_low = LOBYTE(detailSize.width);
  rect = side.size.height;
  height = titleSize.height;
  width = titleSize.width;
  v121 = side.size.width;
  amount = size.width;
  y = side.origin.y;
  v120 = side.origin.y;
  x = side.origin.x;
  v18 = [(PKFusedDoubleCellView *)self _shouldReverseLayoutDirection:*&detailSize.width];
  if (v18)
  {
    v19 = CGRectMinXEdge;
  }

  else
  {
    v19 = CGRectMaxXEdge;
  }

  if (v18)
  {
    v20 = CGRectMaxXEdge;
  }

  else
  {
    v20 = CGRectMinXEdge;
  }

  memset(&v137, 0, sizeof(v137));
  remainder.origin.x = x;
  remainder.origin.y = y;
  remainder.size.width = v121;
  remainder.size.height = rect;
  v21 = fmax(height + rightSize.width + rightTitleSize.width, fmax(v138 + v140 + v142, rightDetailSize.width));
  v22 = PKUIPixelLength();
  memset(&slice, 0, sizeof(slice));
  v143.origin.x = x;
  v143.origin.y = v120;
  v143.size.width = v121;
  v143.size.height = rect;
  CGRectDivide(v143, &slice, &remainder, amount, v20);
  CGRectDivide(remainder, &v137, &remainder, 6.5, v20);
  memset(&v134, 0, sizeof(v134));
  CGRectDivide(remainder, &v134, &remainder, v22, v20);
  v23 = PKContentAlignmentMake();
  v24.n128_u64[0] = *&v134.origin.x;
  v25.n128_u64[0] = *&v134.origin.y;
  v26.n128_u64[0] = *&v134.size.width;
  v27.n128_u64[0] = *&v134.size.height;
  v28.n128_f64[0] = v22;
  v29.n128_f64[0] = v21;
  PKSizeAlignedInRect(v23, v28, v29, v24, v25, v26, v27, v30);
  v134.origin.x = v31;
  v134.origin.y = v32;
  v134.size.width = v33;
  v134.size.height = v34;
  CGRectDivide(remainder, &v137, &remainder, 6.5, v20);
  memset(&v133, 0, sizeof(v133));
  CGRectDivide(remainder, &v133, &remainder, rightTitleSize.height, v19);
  v35 = PKContentAlignmentMake();
  v36.n128_u64[0] = *&v133.origin.x;
  v37.n128_u64[0] = *&v133.origin.y;
  v38.n128_u64[0] = *&v133.size.width;
  v39.n128_u64[0] = *&v133.size.height;
  v40.n128_u64[0] = *&rightTitleSize.height;
  v41.n128_u64[0] = *&rightDetailSize.width;
  PKSizeAlignedInRect(v35, v40, v41, v36, v37, v38, v39, v42);
  v133.origin.x = v43;
  v133.origin.y = v44;
  v133.size.width = v45;
  v133.size.height = v46;
  CGRectDivide(remainder, &v137, &remainder, rightDetailSize.height, v19);
  memset(&v132, 0, sizeof(v132));
  CGRectDivide(remainder, &v132, &remainder, rightSubDetailSize.width, v19);
  memset(&v131, 0, sizeof(v131));
  CGRectDivide(slice, &v131, &slice, height, CGRectMinYEdge);
  v47 = PKContentAlignmentMake();
  v48.n128_u64[0] = *&v131.origin.x;
  v49.n128_u64[0] = *&v131.origin.y;
  v50.n128_u64[0] = *&v131.size.width;
  v51.n128_u64[0] = *&v131.size.height;
  v52.n128_f64[0] = width;
  v53.n128_f64[0] = height;
  PKSizeAlignedInRect(v47, v52, v53, v48, v49, v50, v51, v54);
  v131.origin.x = v55;
  v131.origin.y = v56;
  v131.size.width = v57;
  v131.size.height = v58;
  memset(&v130, 0, sizeof(v130));
  CGRectDivide(slice, &v130, &slice, rightSize.width, CGRectMinYEdge);
  v59 = PKContentAlignmentMake();
  v60.n128_u64[0] = *&v130.origin.x;
  v61.n128_u64[0] = *&v130.origin.y;
  v62.n128_u64[0] = *&v130.size.width;
  v63.n128_u64[0] = *&v130.size.height;
  v64.n128_f64[0] = padding;
  v65.n128_u64[0] = *&rightSize.width;
  PKSizeAlignedInRect(v59, v64, v65, v60, v61, v62, v63, v66);
  v130.origin.x = v67;
  v130.origin.y = v68;
  v130.size.width = v69;
  v130.size.height = v70;
  memset(&v129, 0, sizeof(v129));
  CGRectDivide(slice, &v129, &slice, rightTitleSize.width, CGRectMinYEdge);
  v71 = PKContentAlignmentMake();
  v72.n128_u64[0] = *&v129.origin.x;
  v73.n128_u64[0] = *&v129.origin.y;
  v74.n128_u64[0] = *&v129.size.width;
  v75.n128_u64[0] = *&v129.size.height;
  v76.n128_u64[0] = *&rightSize.height;
  v77.n128_u64[0] = *&rightTitleSize.width;
  PKSizeAlignedInRect(v71, v76, v77, v72, v73, v74, v75, v78);
  v129.origin.x = v79;
  v129.origin.y = v80;
  v129.size.width = v81;
  v129.size.height = v82;
  memset(&v128, 0, sizeof(v128));
  CGRectDivide(v132, &v128, &v132, v138, CGRectMinYEdge);
  v83 = PKContentAlignmentMake();
  v84.n128_u64[0] = *&v128.origin.x;
  v85.n128_u64[0] = *&v128.origin.y;
  v86.n128_u64[0] = *&v128.size.width;
  v87.n128_u64[0] = *&v128.size.height;
  v88.n128_u64[0] = layout;
  v89.n128_f64[0] = v138;
  PKSizeAlignedInRect(v83, v88, v89, v84, v85, v86, v87, v90);
  v128.origin.x = v91;
  v128.origin.y = v92;
  v128.size.width = v93;
  v128.size.height = v94;
  memset(&v127, 0, sizeof(v127));
  CGRectDivide(v132, &v127, &v132, v140, CGRectMinYEdge);
  v95 = PKContentAlignmentMake();
  v96.n128_u64[0] = *&v127.origin.x;
  v97.n128_u64[0] = *&v127.origin.y;
  v98.n128_u64[0] = *&v127.size.width;
  v99.n128_u64[0] = *&v127.size.height;
  v100.n128_u64[0] = v139;
  v101.n128_f64[0] = v140;
  PKSizeAlignedInRect(v95, v100, v101, v96, v97, v98, v99, v102);
  v127.origin.x = v103;
  v127.origin.y = v104;
  v127.size.width = v105;
  v127.size.height = v106;
  memset(&v126, 0, sizeof(v126));
  CGRectDivide(v132, &v126, &v132, v142, CGRectMinYEdge);
  v107 = PKContentAlignmentMake();
  v108.n128_u64[0] = *&v126.origin.x;
  v109.n128_u64[0] = *&v126.origin.y;
  v110.n128_u64[0] = *&v126.size.width;
  v111.n128_u64[0] = *&v126.size.height;
  v112.n128_u64[0] = v141;
  v113.n128_f64[0] = v142;
  PKSizeAlignedInRect(v107, v112, v113, v108, v109, v110, v111, v114);
  v126.origin.x = v115;
  v126.origin.y = v116;
  v126.size.width = v117;
  v126.size.height = v118;
  if ((width_low & 1) == 0)
  {
    [(UILabel *)self->_leftTitleView setFrame:v131.origin.x, v131.origin.y, v131.size.width, v131.size.height];
    [(UILabel *)self->_leftDetailView setFrame:v130.origin.x, v130.origin.y, v130.size.width, v130.size.height];
    [(UILabel *)self->_leftSubDetailView setFrame:v129.origin.x, v129.origin.y, v129.size.width, v129.size.height];
    [(UILabel *)self->_rightTitleView setFrame:v128.origin.x, v128.origin.y, v128.size.width, v128.size.height];
    [(UILabel *)self->_rightDetailView setFrame:v127.origin.x, v127.origin.y, v127.size.width, v127.size.height];
    [(UILabel *)self->_rightSubDetailView setFrame:v126.origin.x, v126.origin.y, v126.size.width, v126.size.height];
    [(UIView *)self->_separatorView setFrame:v134.origin.x, v134.origin.y, v134.size.width, v134.size.height];
    [(UIImageView *)self->_disclosureView setFrame:v133.origin.x, v133.origin.y, v133.size.width, v133.size.height];
  }

  return v21;
}

- (double)_layoutLabelsStacked:(CGRect)stacked disclosureSize:(CGSize)size disclosurePadding:(double)padding isTemplateLayout:(BOOL)layout
{
  height = size.height;
  width = size.width;
  v8 = stacked.size.height;
  v9 = stacked.size.width;
  y = stacked.origin.y;
  x = stacked.origin.x;
  v13 = [(PKFusedDoubleCellView *)self _shouldReverseLayoutDirection:stacked.origin.x];
  remainder.origin.x = x;
  remainder.origin.y = y;
  rect = y;
  if (v13)
  {
    v14 = CGRectMinXEdge;
  }

  else
  {
    v14 = CGRectMaxXEdge;
  }

  remainder.size.width = v9;
  remainder.size.height = v8;
  v137 = PKUIPixelLength();
  if (self->_leftTitle)
  {
    [(UILabel *)self->_leftTitleView sizeThatFits:v9, v8];
    v133 = v15;
    v17 = v16;
  }

  else
  {
    v17 = *(MEMORY[0x1E695F060] + 8);
    v133 = *MEMORY[0x1E695F060];
  }

  if (self->_leftDetail)
  {
    [(UILabel *)self->_leftDetailView sizeThatFits:v9, v8];
    v135 = v18;
    v20 = v19;
  }

  else
  {
    v20 = *(MEMORY[0x1E695F060] + 8);
    v135 = *MEMORY[0x1E695F060];
  }

  v143 = width;
  v21 = v9 - width;
  if (self->_leftSubDetail)
  {
    [(UILabel *)self->_leftSubDetailView sizeThatFits:v9, v8];
    v136 = v22;
    v24 = v23;
  }

  else
  {
    v24 = *(MEMORY[0x1E695F060] + 8);
    v136 = *MEMORY[0x1E695F060];
  }

  v25 = v21 + -10.0;
  if (self->_rightTitle)
  {
    [(UILabel *)self->_rightTitleView sizeThatFits:v25, v8];
    v138 = v27;
    v139 = v26;
  }

  else
  {
    v138 = *(MEMORY[0x1E695F060] + 8);
    v139 = *MEMORY[0x1E695F060];
  }

  if (self->_rightDetail)
  {
    [(UILabel *)self->_rightDetailView sizeThatFits:v25, v8];
    v140 = v29;
    v141 = v28;
  }

  else
  {
    v140 = *(MEMORY[0x1E695F060] + 8);
    v141 = *MEMORY[0x1E695F060];
  }

  if (self->_rightSubDetail)
  {
    [(UILabel *)self->_rightSubDetailView sizeThatFits:v25, v8];
    v142 = v30;
    v32 = v31;
  }

  else
  {
    v32 = *(MEMORY[0x1E695F060] + 8);
    v142 = *MEMORY[0x1E695F060];
  }

  memset(&v156, 0, sizeof(v156));
  v33 = v17 + v20 + v24;
  memset(&slice, 0, sizeof(slice));
  v157.origin.x = x;
  v157.origin.y = rect;
  v157.size.width = v9;
  v157.size.height = v8;
  CGRectDivide(v157, &slice, &remainder, v33, CGRectMinYEdge);
  memset(&v153, 0, sizeof(v153));
  CGRectDivide(slice, &v153, &slice, v17, CGRectMinYEdge);
  v34 = PKContentAlignmentMake();
  v35.n128_u64[0] = *&v153.origin.x;
  v36.n128_u64[0] = *&v153.origin.y;
  v37.n128_u64[0] = *&v153.size.width;
  v38.n128_u64[0] = *&v153.size.height;
  v39.n128_u64[0] = v133;
  v40.n128_f64[0] = v17;
  PKSizeAlignedInRect(v34, v39, v40, v35, v36, v37, v38, v41);
  v153.origin.x = v42;
  v153.origin.y = v43;
  v153.size.width = v44;
  v153.size.height = v45;
  memset(&v152, 0, sizeof(v152));
  CGRectDivide(slice, &v152, &slice, v20, CGRectMinYEdge);
  v46 = PKContentAlignmentMake();
  v47.n128_u64[0] = *&v152.origin.x;
  v48.n128_u64[0] = *&v152.origin.y;
  v49.n128_u64[0] = *&v152.size.width;
  v50.n128_u64[0] = *&v152.size.height;
  v51.n128_u64[0] = v135;
  v52.n128_f64[0] = v20;
  PKSizeAlignedInRect(v46, v51, v52, v47, v48, v49, v50, v53);
  v152.origin.x = v54;
  v152.origin.y = v55;
  v152.size.width = v56;
  v152.size.height = v57;
  memset(&v151, 0, sizeof(v151));
  CGRectDivide(slice, &v151, &slice, v24, CGRectMinYEdge);
  v58 = PKContentAlignmentMake();
  v59.n128_u64[0] = *&v151.origin.x;
  v60.n128_u64[0] = *&v151.origin.y;
  v61.n128_u64[0] = *&v151.size.width;
  v62.n128_u64[0] = *&v151.size.height;
  v63.n128_u64[0] = v136;
  v64.n128_f64[0] = v24;
  PKSizeAlignedInRect(v58, v63, v64, v59, v60, v61, v62, v65);
  v151.origin.x = v66;
  v151.origin.y = v67;
  v151.size.width = v68;
  v151.size.height = v69;
  CGRectDivide(remainder, &v156, &remainder, 6.5, CGRectMinYEdge);
  memset(&v150, 0, sizeof(v150));
  CGRectDivide(remainder, &v150, &remainder, v137, CGRectMinYEdge);
  v70 = PKContentAlignmentMake();
  v71.n128_u64[0] = *&v150.origin.x;
  v72.n128_u64[0] = *&v150.origin.y;
  v73.n128_u64[0] = *&v150.size.width;
  v74.n128_u64[0] = *&v150.size.height;
  v75.n128_f64[0] = v9;
  v76.n128_f64[0] = v137;
  PKSizeAlignedInRect(v70, v75, v76, v71, v72, v73, v74, v77);
  v150.origin.x = v78;
  v150.origin.y = v79;
  v150.size.width = v80;
  v150.size.height = v81;
  CGRectDivide(remainder, &v156, &remainder, 6.5, CGRectMinYEdge);
  v82 = v150.size.height;
  v83 = fmax(v138 + v140 + v32, height);
  memset(&v149, 0, sizeof(v149));
  CGRectDivide(remainder, &v149, &remainder, v83, CGRectMinYEdge);
  memset(&v148, 0, sizeof(v148));
  CGRectDivide(v149, &v148, &v149, v143, v14);
  v84 = PKContentAlignmentMake();
  v85.n128_u64[0] = *&v148.origin.x;
  v86.n128_u64[0] = *&v148.origin.y;
  v87.n128_u64[0] = *&v148.size.width;
  v88.n128_u64[0] = *&v148.size.height;
  v89.n128_f64[0] = v143;
  v90.n128_f64[0] = height;
  PKSizeAlignedInRect(v84, v89, v90, v85, v86, v87, v88, v91);
  v148.origin.x = v92;
  v148.origin.y = v93;
  v148.size.width = v94;
  v148.size.height = v95;
  memset(&v147, 0, sizeof(v147));
  CGRectDivide(v149, &v147, &v149, v138, CGRectMinYEdge);
  v96 = PKContentAlignmentMake();
  v97.n128_u64[0] = *&v147.origin.x;
  v98.n128_u64[0] = *&v147.origin.y;
  v99.n128_u64[0] = *&v147.size.width;
  v100.n128_u64[0] = *&v147.size.height;
  v101.n128_u64[0] = v139;
  v102.n128_f64[0] = v138;
  PKSizeAlignedInRect(v96, v101, v102, v97, v98, v99, v100, v103);
  v147.origin.x = v104;
  v147.origin.y = v105;
  v147.size.width = v106;
  v147.size.height = v107;
  memset(&v146, 0, sizeof(v146));
  CGRectDivide(v149, &v146, &v149, v140, CGRectMinYEdge);
  v108 = PKContentAlignmentMake();
  v109.n128_u64[0] = *&v146.origin.x;
  v110.n128_u64[0] = *&v146.origin.y;
  v111.n128_u64[0] = *&v146.size.width;
  v112.n128_u64[0] = *&v146.size.height;
  v113.n128_u64[0] = v141;
  v114.n128_f64[0] = v140;
  PKSizeAlignedInRect(v108, v113, v114, v109, v110, v111, v112, v115);
  v146.origin.x = v116;
  v146.origin.y = v117;
  v146.size.width = v118;
  v146.size.height = v119;
  memset(&v145, 0, sizeof(v145));
  CGRectDivide(v149, &v145, &v149, v32, CGRectMinYEdge);
  v120 = PKContentAlignmentMake();
  v121.n128_u64[0] = *&v145.origin.x;
  v122.n128_u64[0] = *&v145.origin.y;
  v123.n128_u64[0] = *&v145.size.width;
  v124.n128_u64[0] = *&v145.size.height;
  v125.n128_u64[0] = v142;
  v126.n128_f64[0] = v32;
  PKSizeAlignedInRect(v120, v125, v126, v121, v122, v123, v124, v127);
  v145.origin.x = v128;
  v145.origin.y = v129;
  v145.size.width = v130;
  v145.size.height = v131;
  if (!layout)
  {
    [(UILabel *)self->_leftTitleView setFrame:v153.origin.x, v153.origin.y, v153.size.width, v153.size.height];
    [(UILabel *)self->_leftDetailView setFrame:v152.origin.x, v152.origin.y, v152.size.width, v152.size.height];
    [(UILabel *)self->_leftSubDetailView setFrame:v151.origin.x, v151.origin.y, v151.size.width, v151.size.height];
    [(UILabel *)self->_rightTitleView setFrame:v147.origin.x, v147.origin.y, v147.size.width, v147.size.height];
    [(UILabel *)self->_rightDetailView setFrame:v146.origin.x, v146.origin.y, v146.size.width, v146.size.height];
    [(UILabel *)self->_rightSubDetailView setFrame:v145.origin.x, v145.origin.y, v145.size.width, v145.size.height];
    [(UIView *)self->_separatorView setFrame:v150.origin.x, v150.origin.y, v150.size.width, v150.size.height];
    [(UIImageView *)self->_disclosureView setFrame:v148.origin.x, v148.origin.y, v148.size.width, v148.size.height];
  }

  return v83 + v33 + 0.0 + 13.0 + v82;
}

- (void)setPass:(id)pass
{
  passCopy = pass;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_pass, pass);
  }
}

- (void)setEnableDisclosure:(BOOL)disclosure
{
  if (self->_enableDisclosure != disclosure)
  {
    self->_enableDisclosure = disclosure;
  }
}

- (void)setLeftTitle:(id)title
{
  titleCopy = title;
  leftTitle = self->_leftTitle;
  v6 = titleCopy;
  v10 = v6;
  if (leftTitle == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !leftTitle)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)leftTitle isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    leftTitle = self->_leftTitle;
    self->_leftTitle = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setLeftDetail:(id)detail
{
  detailCopy = detail;
  leftDetail = self->_leftDetail;
  v6 = detailCopy;
  v10 = v6;
  if (leftDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !leftDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)leftDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    leftDetail = self->_leftDetail;
    self->_leftDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setLeftSubDetail:(id)detail
{
  detailCopy = detail;
  leftSubDetail = self->_leftSubDetail;
  v6 = detailCopy;
  v10 = v6;
  if (leftSubDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !leftSubDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)leftSubDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    leftSubDetail = self->_leftSubDetail;
    self->_leftSubDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRightTitle:(id)title
{
  titleCopy = title;
  rightTitle = self->_rightTitle;
  v6 = titleCopy;
  v10 = v6;
  if (rightTitle == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !rightTitle)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)rightTitle isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    rightTitle = self->_rightTitle;
    self->_rightTitle = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRightDetail:(id)detail
{
  detailCopy = detail;
  rightDetail = self->_rightDetail;
  v6 = detailCopy;
  v10 = v6;
  if (rightDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !rightDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)rightDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    rightDetail = self->_rightDetail;
    self->_rightDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setRightSubDetail:(id)detail
{
  detailCopy = detail;
  rightSubDetail = self->_rightSubDetail;
  v6 = detailCopy;
  v10 = v6;
  if (rightSubDetail == v6)
  {

LABEL_9:
    v8 = v10;
    goto LABEL_10;
  }

  if (!v6 || !rightSubDetail)
  {

    v8 = v10;
    goto LABEL_8;
  }

  v7 = [(NSString *)rightSubDetail isEqualToString:v6];

  v8 = v10;
  if (!v7)
  {
LABEL_8:
    v9 = v8;
    rightSubDetail = self->_rightSubDetail;
    self->_rightSubDetail = v9;
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setLeftTitleColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leftTitleColor, color);
  }
}

- (void)setTitleFont:(id)font
{
  fontCopy = font;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_titleFont, font);
  }
}

- (void)setLeftDetailColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leftDetailColor, color);
  }
}

- (void)setLeftSubDetailColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_leftSubDetailColor, color);
  }
}

- (void)setRightTitleColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rightTitleColor, color);
  }
}

- (void)setRightDetailColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rightDetailColor, color);
  }
}

- (void)setRightSubDetailColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_rightSubDetailColor, color);
  }
}

- (void)endUpdates:(BOOL)updates
{
  v3 = self->_deferUpdateCounter - 1;
  self->_deferUpdateCounter = v3;
  if (!v3)
  {
    [(PKFusedDoubleCellView *)self _updateContent:updates];
  }
}

- (void)_updateContent:(BOOL)content
{
  if (!self->_deferUpdateCounter)
  {
    contentCopy = content;
    _titleFont = [(PKFusedDoubleCellView *)self _titleFont];
    _detailFont = [(PKFusedDoubleCellView *)self _detailFont];
    _subDetailFont = [(PKFusedDoubleCellView *)self _subDetailFont];
    [(UILabel *)self->_leftTitleView setFont:_titleFont];
    leftTitleView = self->_leftTitleView;
    leftTitle = self->_leftTitle;
    leftTitleColor = self->_leftTitleColor;
    if (leftTitleColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftTitleView, self->_leftTitle, leftTitleColor, 0, contentCopy);
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftTitleView, leftTitle, labelColor, 0, contentCopy);
    }

    [(UILabel *)self->_rightTitleView setFont:_titleFont];
    rightTitleView = self->_rightTitleView;
    rightTitle = self->_rightTitle;
    rightTitleColor = self->_rightTitleColor;
    if (rightTitleColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightTitleView, self->_rightTitle, rightTitleColor, 0, contentCopy);
    }

    else
    {
      labelColor2 = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightTitleView, rightTitle, labelColor2, 0, contentCopy);
    }

    [(UILabel *)self->_leftDetailView setFont:_detailFont];
    [(UILabel *)self->_leftDetailView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_leftDetailView setMinimumScaleFactor:0.5];
    leftDetailView = self->_leftDetailView;
    leftDetail = self->_leftDetail;
    leftDetailColor = self->_leftDetailColor;
    if (leftDetailColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftDetailView, self->_leftDetail, leftDetailColor, 1, contentCopy);
    }

    else
    {
      labelColor3 = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftDetailView, leftDetail, labelColor3, 1, contentCopy);
    }

    [(UILabel *)self->_rightDetailView setFont:_detailFont];
    [(UILabel *)self->_rightDetailView setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)self->_rightDetailView setMinimumScaleFactor:0.5];
    rightDetailView = self->_rightDetailView;
    rightDetail = self->_rightDetail;
    rightDetailColor = self->_rightDetailColor;
    if (rightDetailColor)
    {
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightDetailView, self->_rightDetail, rightDetailColor, 1, contentCopy);
    }

    else
    {
      labelColor4 = [MEMORY[0x1E69DC888] labelColor];
      __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightDetailView, rightDetail, labelColor4, 1, contentCopy);
    }

    if (self->_leftSubDetail)
    {
      [(UILabel *)self->_leftSubDetailView setFont:_subDetailFont];
      leftSubDetailView = self->_leftSubDetailView;
      leftSubDetail = self->_leftSubDetail;
      leftSubDetailColor = self->_leftSubDetailColor;
      if (leftSubDetailColor)
      {
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftSubDetailView, leftSubDetail, leftSubDetailColor, 0, contentCopy);
      }

      else
      {
        labelColor5 = [MEMORY[0x1E69DC888] labelColor];
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(leftSubDetailView, leftSubDetail, labelColor5, 0, contentCopy);
      }
    }

    if (self->_rightSubDetail)
    {
      [(UILabel *)self->_rightSubDetailView setFont:_subDetailFont];
      rightSubDetailView = self->_rightSubDetailView;
      rightSubDetail = self->_rightSubDetail;
      rightSubDetailColor = self->_rightSubDetailColor;
      if (rightSubDetailColor)
      {
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightSubDetailView, rightSubDetail, rightSubDetailColor, 0, contentCopy);
      }

      else
      {
        labelColor6 = [MEMORY[0x1E69DC888] labelColor];
        __40__PKFusedDoubleCellView__updateContent___block_invoke_2(rightSubDetailView, rightSubDetail, labelColor6, 0, contentCopy);
      }
    }

    __45__PKAdjustableSingleCellView__updateContent___block_invoke(self->_disclosureView, self->_enableDisclosure, contentCopy);
    __45__PKAdjustableSingleCellView__updateContent___block_invoke(self->_separatorView, 1u, contentCopy);
    [(PKFusedDoubleCellView *)self setNeedsLayout];
    if (contentCopy)
    {
      [(PKFusedDoubleCellView *)self layoutIfNeeded];
    }

    [(PKFusedDoubleCellView *)self setNeedsLayout];
  }
}

void __40__PKFusedDoubleCellView__updateContent___block_invoke_2(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v9 = a1;
  if (v9)
  {
    if (a3)
    {
      v19 = v9;
      v10 = a3;
      [v19 setText:a2];
      [v19 setTextColor:v10];

      [v19 setLineBreakMode:0];
      [v19 setNumberOfLines:a4];
      v9 = v19;
      if (a5)
      {
        v11 = [v19 layer];
        v12 = v11;
        if (a2)
        {
          v13 = 1.0;
        }

        else
        {
          v13 = 0.0;
        }

        [v11 opacity];
        v15 = v14;
        if (v13 != v14)
        {
          v16 = [MEMORY[0x1E69B92B0] springAnimationWithKeyPath:@"opacity"];
          [v16 pkui_updateForAdditiveAnimationFromScalar:v15 toScalar:v13];
          v17 = [v12 pkui_addAdditiveAnimation:v16];

          v18 = 0.0;
          if (a2)
          {
            *&v18 = 1.0;
          }

          [v12 setOpacity:v18];
        }

        v9 = v19;
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  v12.receiver = self;
  v12.super_class = PKFusedDoubleCellView;
  [(PKFusedDoubleCellView *)&v12 traitCollectionDidChange:changeCopy];
  traitCollection = [(PKFusedDoubleCellView *)self traitCollection];
  v6 = traitCollection;
  if (changeCopy)
  {
    if (traitCollection)
    {
      preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];
      preferredContentSizeCategory2 = [v6 preferredContentSizeCategory];
      v9 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, preferredContentSizeCategory2);

      if (v9)
      {
        preferredContentSizeCategory3 = [changeCopy preferredContentSizeCategory];
        v11 = *MEMORY[0x1E69DDC90];

        if (preferredContentSizeCategory3 != v11)
        {
          [(PKFusedDoubleCellView *)self _updateContent:0];
        }
      }
    }
  }
}

@end