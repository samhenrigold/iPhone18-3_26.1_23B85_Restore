@interface PKMultiKeyValueCell
- (BOOL)_shouldStackLabelsWithBounds:(CGRect)bounds;
- (CGSize)_layoutWithBounds:(CGRect)bounds isTemplateLayout:(BOOL)layout;
- (CGSize)sizeThatFits:(CGSize)fits;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setSources:(id)sources;
@end

@implementation PKMultiKeyValueCell

- (void)setSources:(id)sources
{
  v60 = *MEMORY[0x1E69E9840];
  sourcesCopy = sources;
  if ((PKEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_sources, sources);
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v6 = self->_titleLabels;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v54;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v54 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v53 + 1) + 8 * i) removeFromSuperview];
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v53 objects:v59 count:16];
      }

      while (v8);
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = 880;
    v11 = self->_subtitleLabels;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v50;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v50 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v49 + 1) + 8 * j) removeFromSuperview];
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v13);
    }

    selfCopy = self;
    contentView = [(PKMultiKeyValueCell *)self contentView];
    v42 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v36 = sourcesCopy;
    obj = sourcesCopy;
    v43 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
    if (v43)
    {
      v40 = *v46;
      v16 = *MEMORY[0x1E69DDCF8];
      v17 = *MEMORY[0x1E69DDC38];
      v39 = *MEMORY[0x1E69B9D20];
      v38 = *MEMORY[0x1E69B96F8];
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v45 + 1) + 8 * k);
          if ([v19 isBold])
          {
            v20 = 2;
          }

          else
          {
            v20 = 0;
          }

          v21 = objc_alloc_init(MEMORY[0x1E69DCC10]);
          title = [v19 title];
          [v21 setText:title];

          [v21 setNumberOfLines:0];
          labelColor = [MEMORY[0x1E69DC888] labelColor];
          [v21 setTextColor:labelColor];

          v24 = PKFontForDefaultDesign(v16, v17, v20, 0);
          [v21 setFont:v24];

          [v21 setAccessibilityIdentifier:v39];
          [contentView addSubview:v21];
          v25 = objc_alloc_init(MEMORY[0x1E69DCC10]);
          subtitle = [v19 subtitle];
          [v25 setText:subtitle];

          [v25 setNumberOfLines:0];
          subtitleTextColor = [v19 subtitleTextColor];
          if (subtitleTextColor)
          {
            [v25 setTextColor:subtitleTextColor];
          }

          else
          {
            secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
            [v25 setTextColor:secondaryLabelColor];
          }

          v29 = PKFontForDefaultDesign(v16, v17, v20, 0);
          [v25 setFont:v29];

          [v25 setAccessibilityIdentifier:v38];
          [contentView addSubview:v25];
          [v42 addObject:v21];
          [v41 addObject:v25];
        }

        v43 = [obj countByEnumeratingWithState:&v45 objects:v57 count:16];
      }

      while (v43);
    }

    v30 = [v42 copy];
    titleLabels = selfCopy->_titleLabels;
    selfCopy->_titleLabels = v30;

    v32 = [v41 copy];
    v33 = *(&selfCopy->super.super.super.super.super.super.isa + v34);
    *(&selfCopy->super.super.super.super.super.super.isa + v34) = v32;

    [(PKMultiKeyValueCell *)selfCopy setNeedsLayout];
    sourcesCopy = v36;
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = PKMultiKeyValueCell;
  [(PKMultiKeyValueCell *)&v4 layoutSubviews];
  contentView = [(PKMultiKeyValueCell *)self contentView];
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
  width = bounds.size.width;
  v7 = bounds.origin.x + 16.0;
  v8 = bounds.origin.y + 16.0;
  v9 = bounds.size.height + -32.0;
  _shouldReverseLayoutDirection = [(PKMultiKeyValueCell *)self _shouldReverseLayoutDirection];
  v11 = [(PKMultiKeyValueCell *)self _shouldStackLabelsWithBounds:v7, v8, width + -32.0, v9];
  v12 = _shouldReverseLayoutDirection == 0;
  if (_shouldReverseLayoutDirection)
  {
    v13 = CGRectMaxXEdge;
  }

  else
  {
    v13 = CGRectMinXEdge;
  }

  if (v12)
  {
    v14 = CGRectMaxXEdge;
  }

  else
  {
    v14 = CGRectMinXEdge;
  }

  remainder.origin.x = v7;
  remainder.origin.y = v8;
  remainder.size.width = width + -32.0;
  remainder.size.height = v9;
  if ([(NSArray *)self->_titleLabels count])
  {
    v86 = width;
    v15 = 0;
    memset(&slice, 0, sizeof(slice));
    v16 = 0.0;
    do
    {
      v88 = v16;
      v17 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:v15];
      [v17 sizeThatFits:{remainder.size.width, remainder.size.height}];
      v19 = v18;
      v21 = v20;
      v22 = [(NSArray *)self->_subtitleLabels objectAtIndexedSubscript:v15];
      [v22 sizeThatFits:{remainder.size.width, remainder.size.height}];
      v24 = v23;
      v26 = v25;
      if (v11)
      {
        CGRectDivide(remainder, &slice, &remainder, v21, CGRectMinYEdge);
        v27 = PKContentAlignmentMake();
        v28.n128_u64[0] = *&slice.origin.x;
        v29.n128_u64[0] = *&slice.origin.y;
        v30.n128_u64[0] = *&slice.size.width;
        v31.n128_u64[0] = *&slice.size.height;
        v32.n128_f64[0] = v19;
        v33.n128_f64[0] = v21;
        PKSizeAlignedInRect(v27, v32, v33, v28, v29, v30, v31, v34);
        v87 = v35;
        v37 = v36;
        v39 = v38;
        v41 = v40;
        CGRectDivide(remainder, &slice, &remainder, *&v26, CGRectMinYEdge);
        v42 = PKContentAlignmentMake();
        v43.n128_u64[0] = *&slice.origin.x;
        v44.n128_u64[0] = *&slice.origin.y;
        v45.n128_u64[0] = *&slice.size.width;
        v46.n128_u64[0] = *&slice.size.height;
        v47.n128_f64[0] = v24;
        v48.n128_u64[0] = v26;
        PKSizeAlignedInRect(v42, v47, v48, v43, v44, v45, v46, v49);
        v51 = v50;
        v53 = v52;
        v55 = v54;
        v57 = v56;
        CGRectDivide(remainder, &slice, &remainder, 5.0, CGRectMinYEdge);
        v21 = v41 + v57;
      }

      else
      {
        memset(&v90, 0, sizeof(v90));
        CGRectDivide(remainder, &v90, &remainder, v21, CGRectMinYEdge);
        v58 = fmin(v90.size.width, v19);
        memset(&v89, 0, sizeof(v89));
        CGRectDivide(v90, &v89, &v90, v58, v13);
        v59 = PKContentAlignmentMake();
        v60.n128_u64[0] = *&v89.origin.x;
        v61.n128_u64[0] = *&v89.origin.y;
        v62.n128_u64[0] = *&v89.size.width;
        v63.n128_u64[0] = *&v89.size.height;
        v64.n128_f64[0] = v58;
        v65.n128_f64[0] = v21;
        PKSizeAlignedInRect(v59, v64, v65, v60, v61, v62, v63, v66);
        v87 = v67;
        v37 = v68;
        v39 = v69;
        v41 = v70;
        v71 = fmin(v90.size.width, v24);
        CGRectDivide(v90, &v89, &v90, v71, v14);
        v72 = PKContentAlignmentMake();
        v73.n128_u64[0] = *&v89.origin.x;
        v74.n128_u64[0] = *&v89.origin.y;
        v75.n128_u64[0] = *&v89.size.width;
        v76.n128_u64[0] = *&v89.size.height;
        v77.n128_f64[0] = v71;
        v78.n128_u64[0] = v26;
        PKSizeAlignedInRect(v72, v77, v78, v73, v74, v75, v76, v79);
        v51 = v80;
        v53 = v81;
        v55 = v82;
        v57 = v83;
        CGRectDivide(remainder, &v90, &remainder, 5.0, CGRectMinYEdge);
      }

      v16 = v88 + v21;
      if (++v15 < [(NSArray *)self->_titleLabels count])
      {
        v16 = v16 + 5.0;
      }

      if (!layout)
      {
        [v17 setFrame:{v87, v37, v39, v41}];
        [v22 setFrame:{v51, v53, v55, v57}];
      }
    }

    while (v15 < [(NSArray *)self->_titleLabels count]);
    v84 = v16 + 32.0;
    width = v86;
  }

  else
  {
    v84 = 32.0;
  }

  v85 = width;
  result.height = v84;
  result.width = v85;
  return result;
}

- (BOOL)_shouldStackLabelsWithBounds:(CGRect)bounds
{
  width = bounds.size.width;
  if (![(NSArray *)self->_titleLabels count:bounds.origin.x])
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = [(NSArray *)self->_titleLabels objectAtIndexedSubscript:v5];
    v7 = [(NSArray *)self->_subtitleLabels objectAtIndexedSubscript:v5];
    [v6 sizeThatFits:{width, 1.79769313e308}];
    v9 = v8;
    [v7 sizeThatFits:{width, 1.79769313e308}];
    v11 = v9 + v10 + 8.0;

    v12 = width < v11;
    if (width < v11)
    {
      break;
    }

    ++v5;
  }

  while (v5 < [(NSArray *)self->_titleLabels count]);
  return v12;
}

- (void)prepareForReuse
{
  v5.receiver = self;
  v5.super_class = PKMultiKeyValueCell;
  [(PKMultiKeyValueCell *)&v5 prepareForReuse];
  titleLabels = self->_titleLabels;
  self->_titleLabels = 0;

  subtitleLabels = self->_subtitleLabels;
  self->_subtitleLabels = 0;
}

@end