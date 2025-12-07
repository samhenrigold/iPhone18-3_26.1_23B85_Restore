@interface PKApplyActionContentActionItemCell
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)_resetState;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setActionItem:(id)item;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation PKApplyActionContentActionItemCell

- (void)setActionItem:(id)item
{
  v46 = *MEMORY[0x1E69E9840];
  itemCopy = item;
  objc_storeStrong(&self->_actionItem, item);
  [(PKApplyActionContentActionItemCell *)self _resetState];
  contentView = [(PKApplyActionContentActionItemCell *)self contentView];
  contextPrimaryActionIdentifier = [(PKApplyActionContentActionItem *)self->_actionItem contextPrimaryActionIdentifier];

  if (contextPrimaryActionIdentifier)
  {
    v7 = objc_alloc(MEMORY[0x1E69DCAE0]);
    v8 = PKUIChevronImage();
    v9 = [v7 initWithImage:v8];

    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
    [(UIImageView *)v9 setTintColor:tertiaryLabelColor];

    disclosureView = self->_disclosureView;
    self->_disclosureView = v9;
    v12 = v9;

    [contentView addSubview:self->_disclosureView];
  }

  v40 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  obj = [(PKApplyActionContentActionItem *)self->_actionItem items];
  v13 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
  if (v13)
  {
    v14 = v13;
    v38 = *v42;
    v37 = *MEMORY[0x1E69DDD80];
    v15 = *MEMORY[0x1E69DDC38];
    v35 = *MEMORY[0x1E69DDCF8];
    v36 = *MEMORY[0x1E69B9D20];
    v16 = *MEMORY[0x1E69B9CC8];
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v42 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v41 + 1) + 8 * i);
        v19 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        title = [v18 title];
        [v19 setText:title];

        [v19 setNumberOfLines:0];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        [v19 setTextColor:secondaryLabelColor];

        v22 = PKFontForDefaultDesign(v37, v15, 0, 0);
        [v19 setFont:v22];

        [v19 setAccessibilityIdentifier:v36];
        [contentView addSubview:v19];
        v23 = objc_alloc_init(MEMORY[0x1E69DCC10]);
        subtitle = [v18 subtitle];
        [v23 setText:subtitle];

        [v23 setNumberOfLines:0];
        labelColor = [MEMORY[0x1E69DC888] labelColor];
        [v23 setTextColor:labelColor];

        v26 = PKFontForDefaultDesign(v35, v15, 0, 0);
        [v23 setFont:v26];

        [v23 pkui_setExcludedFromScreenCapture:1 andBroadcasting:1];
        [v23 setAccessibilityIdentifier:v16];
        [contentView addSubview:v23];
        [v40 addObject:v19];
        [v39 addObject:v23];
      }

      v14 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    }

    while (v14);
  }

  v27 = [v40 copy];
  titleLabels = selfCopy->_titleLabels;
  selfCopy->_titleLabels = v27;

  v29 = [v39 copy];
  subtitleLabels = selfCopy->_subtitleLabels;
  selfCopy->_subtitleLabels = v29;

  contextPrimaryActionIdentifier2 = [(PKApplyActionContentActionItem *)selfCopy->_actionItem contextPrimaryActionIdentifier];
  [(PKApplyActionContentActionItemCell *)selfCopy setAccessibilityIdentifier:contextPrimaryActionIdentifier2];

  [(PKApplyActionContentActionItemCell *)selfCopy setNeedsLayout];
}

- (void)setHighlighted:(BOOL)highlighted
{
  v10.receiver = self;
  v10.super_class = PKApplyActionContentActionItemCell;
  [(PKApplyActionContentActionItemCell *)&v10 setHighlighted:?];
  if (highlighted)
  {
    [MEMORY[0x1E69DC888] tableCellDefaultSelectionTintColor];
  }

  else
  {
    [objc_opt_class() backgroundColor];
  }
  v5 = ;
  v6 = MEMORY[0x1E69DD250];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__PKApplyActionContentActionItemCell_setHighlighted___block_invoke;
  v8[3] = &unk_1E8010A10;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 _animateUsingDefaultTimingWithOptions:0 animations:v8 completion:0];
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKApplyActionContentActionItemCell;
  [(PKApplyActionContentActionItemCell *)&v4 layoutSubviews];
  contentView = [(PKApplyActionContentActionItemCell *)self contentView];
  [contentView bounds];
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self);
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  objc_msgSend__layoutWithBounds_isTemplateLayout_(self, a2, 1, *MEMORY[0x1E695EFF8], *(MEMORY[0x1E695EFF8] + 8), fits.width, fits.height);
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = PKTableViewCellTextInset();
  v11 = x + v10;
  v12 = y + 12.0;
  v13 = width - (v10 + PKTableViewCellTextInset());
  v14 = height + -24.0;
  if ([(PKApplyActionContentActionItemCell *)self _shouldReverseLayoutDirection])
  {
    v15 = CGRectMinXEdge;
  }

  else
  {
    v15 = CGRectMaxXEdge;
  }

  remainder.origin.x = v11;
  remainder.origin.y = y + 12.0;
  remainder.size.width = v13;
  remainder.size.height = height + -24.0;
  disclosureView = self->_disclosureView;
  if (disclosureView)
  {
    [(UIImageView *)disclosureView sizeThatFits:v13, 3.40282347e38];
    v18 = v17;
    v20 = v19;
  }

  else
  {
    v18 = *MEMORY[0x1E695F060];
    v20 = *(MEMORY[0x1E695F060] + 8);
  }

  memset(&v80, 0, sizeof(v80));
  memset(&v79, 0, sizeof(v79));
  if (v18 <= 0.0)
  {
    v21 = v13;
  }

  else
  {
    v21 = v13 - v18 + -15.0;
  }

  v73 = *(MEMORY[0x1E695F058] + 16);
  v74 = *MEMORY[0x1E695F058];
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v73;
  if (v18 > 0.0)
  {
    v82.origin.x = v11;
    v82.origin.y = v12;
    v82.size.width = v13;
    v82.size.height = v14;
    CGRectDivide(v82, &slice, &remainder, v18, v15);
    CGRectDivide(remainder, &v80, &remainder, 15.0, v15);
    v22 = PKContentAlignmentMake();
    v23.n128_u64[0] = *&slice.origin.x;
    v24.n128_u64[0] = *&slice.origin.y;
    v25.n128_u64[0] = *&slice.size.width;
    v26.n128_u64[0] = *&slice.size.height;
    v27.n128_f64[0] = v18;
    v28.n128_u64[0] = v20;
    PKSizeAlignedInRect(v22, v27, v28, v23, v24, v25, v26, v29);
    slice.origin.x = v30;
    slice.origin.y = v31;
    slice.size.width = v32;
    slice.size.height = v33;
  }

  if (![(NSArray *)self->_titleLabels count])
  {
    v70 = 24.0;
    if (layout)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v34 = 0;
  v35 = 0.0;
  do
  {
    v36 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:v34];
    v76.origin = v74;
    v76.size = v73;
    [v36 sizeThatFits:{v21, 3.40282347e38}];
    v38 = v37;
    v40 = v39;
    v41 = [(NSArray *)self->_subtitleLabels objectAtIndexedSubscript:v34];
    v75.origin = v74;
    v75.size = v73;
    [v41 sizeThatFits:{v21, 3.40282347e38}];
    v43 = v42;
    v45 = v44;
    CGRectDivide(remainder, &v76, &remainder, v40, CGRectMinYEdge);
    v46 = PKContentAlignmentMake();
    v47.n128_u64[0] = *&v76.origin.x;
    v48.n128_u64[0] = *&v76.origin.y;
    v49.n128_u64[0] = *&v76.size.width;
    v50.n128_u64[0] = *&v76.size.height;
    v51.n128_u64[0] = v38;
    v52.n128_f64[0] = v40;
    PKSizeAlignedInRect(v46, v51, v52, v47, v48, v49, v50, v53);
    v76.origin.x = v54;
    v76.origin.y = v55;
    v76.size.width = v56;
    v76.size.height = v57;
    CGRectDivide(remainder, &v75, &remainder, v45, CGRectMinYEdge);
    v58 = PKContentAlignmentMake();
    v59.n128_u64[0] = *&v75.origin.x;
    v60.n128_u64[0] = *&v75.origin.y;
    v61.n128_u64[0] = *&v75.size.width;
    v62.n128_u64[0] = *&v75.size.height;
    v63.n128_u64[0] = v43;
    v64.n128_f64[0] = v45;
    PKSizeAlignedInRect(v58, v63, v64, v59, v60, v61, v62, v65);
    v75.origin.x = v66;
    v75.origin.y = v67;
    v75.size.width = v68;
    v75.size.height = v69;
    if (!layout)
    {
      [v36 setFrame:{v76.origin.x, v76.origin.y, v76.size.width, v76.size.height}];
      [v41 setFrame:{v75.origin.x, v75.origin.y, v75.size.width, v75.size.height}];
    }

    v35 = v35 + v40 + v45;
    if (++v34 < [(NSArray *)self->_titleLabels count])
    {
      CGRectDivide(remainder, &v79, &remainder, 8.0, CGRectMinYEdge);
      v35 = v35 + 8.0;
    }
  }

  while (v34 < [(NSArray *)self->_titleLabels count]);
  v70 = v35 + 24.0;
  if (!layout)
  {
LABEL_20:
    [(UIImageView *)self->_disclosureView setFrame:slice.origin.x, slice.origin.y, slice.size.width, slice.size.height];
  }

LABEL_21:
  v71 = width;
  v72 = v70;
  result.height = v72;
  result.width = v71;
  return result;
}

- (void)_resetState
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = self->_titleLabels;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    do
    {
      v7 = 0;
      do
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v20 + 1) + 8 * v7++) removeFromSuperview];
      }

      while (v5 != v7);
      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v5);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_subtitleLabels;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v12++) removeFromSuperview];
      }

      while (v10 != v12);
      v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v10);
  }

  [(UIImageView *)self->_disclosureView removeFromSuperview];
  disclosureView = self->_disclosureView;
  self->_disclosureView = 0;

  titleLabels = self->_titleLabels;
  self->_titleLabels = 0;

  subtitleLabels = self->_subtitleLabels;
  self->_subtitleLabels = 0;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = PKApplyActionContentActionItemCell;
  [(PKApplyActionContentActionItemCell *)&v3 prepareForReuse];
  [(PKApplyActionContentActionItemCell *)self _resetState];
}

@end