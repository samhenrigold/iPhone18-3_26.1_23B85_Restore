@interface PreferencesTwoPartValueCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (EKCellShortener)shortener;
- (TwoPartTextLabel)twoPartTextLabel;
- (UILabel)largePart2TextLabel;
- (id)description;
- (void)_layoutSubviewsCore;
- (void)checkValueWidths;
- (void)layoutSubviews;
- (void)layoutText:(id)text andValue:(id)value;
- (void)setStrikeThroughLargeDetailTextLabel:(BOOL)label;
- (void)setStrikeThroughLargePart2TextLabel:(BOOL)label;
- (void)shorten;
@end

@implementation PreferencesTwoPartValueCell

- (TwoPartTextLabel)twoPartTextLabel
{
  twoPartLabel = self->_twoPartLabel;
  if (!twoPartLabel)
  {
    v4 = objc_alloc_init(TwoPartTextLabel);
    v5 = self->_twoPartLabel;
    self->_twoPartLabel = v4;

    v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    [(TwoPartTextLabel *)self->_twoPartLabel setFont:v6];

    valueColor = [(PreferencesTwoPartValueCell *)self valueColor];
    [(TwoPartTextLabel *)self->_twoPartLabel setTextColor:valueColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(TwoPartTextLabel *)self->_twoPartLabel setBackgroundColor:clearColor];

    v9 = objc_msgSend_contentView(self);
    [v9 addSubview:self->_twoPartLabel];

    twoPartLabel = self->_twoPartLabel;
  }

  return twoPartLabel;
}

- (UILabel)largePart2TextLabel
{
  largePart2TextLabel = self->_largePart2TextLabel;
  if (!largePart2TextLabel)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCC10]);
    v5 = self->_largePart2TextLabel;
    self->_largePart2TextLabel = v4;

    tableCellBlueTextColor = [MEMORY[0x1E69DC888] tableCellBlueTextColor];
    [(UILabel *)self->_largePart2TextLabel setTextColor:tableCellBlueTextColor];

    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UILabel *)self->_largePart2TextLabel setBackgroundColor:clearColor];

    v8 = objc_msgSend_contentView(self);
    [v8 addSubview:self->_largePart2TextLabel];

    largePart2TextLabel = self->_largePart2TextLabel;
  }

  return largePart2TextLabel;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PreferencesTwoPartValueCell;
  v4 = [(PreferencesTwoPartValueCell *)&v9 description];
  twoPartTextLabel = [(PreferencesTwoPartValueCell *)self twoPartTextLabel];
  v6 = [twoPartTextLabel description];
  v7 = [v3 stringWithFormat:@"%@\t%@", v4, v6];

  return v7;
}

- (void)layoutText:(id)text andValue:(id)value
{
  textCopy = text;
  valueCopy = value;
  IsLeftToRight = CalInterfaceIsLeftToRight(valueCopy, v7);
  [(PreferencesTwoPartValueCell *)self directionalLayoutMargins];
  v10 = v9;
  v11 = objc_msgSend_contentView(self);
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v97.origin.x = v13;
  v97.origin.y = v15;
  v97.size.width = v17;
  v97.size.height = v19;
  v98 = CGRectInset(v97, v10, 0.0);
  x = v98.origin.x;
  width = v98.size.width;
  height = v98.size.height;
  v23 = v10 * [(PreferencesTwoPartValueCell *)self indentationLevel];
  v24 = x + v23;
  if (!IsLeftToRight)
  {
    v24 = x;
  }

  v94 = v24;
  v25 = width - v23;
  v26 = MEMORY[0x1E695F060];
  [textCopy sizeThatFits:{width - v23, height}];
  v28 = v27;
  text = [textCopy text];
  v30 = text;
  if (text && [text length])
  {
    superview = [textCopy superview];

    if (!superview)
    {
      v32 = objc_msgSend_contentView(self);
      [v32 addSubview:textCopy];
    }
  }

  else
  {
    [textCopy removeFromSuperview];
  }

  v33 = *v26;
  v34 = *v26;
  if (valueCopy)
  {
    [valueCopy sizeThatFits:{v25, height}];
    v34 = v35;
    text2 = [valueCopy text];
    v37 = text2;
    if (text2 && [text2 length])
    {
      superview2 = [valueCopy superview];

      if (!superview2)
      {
        v39 = objc_msgSend_contentView(self);
        [v39 addSubview:valueCopy];
      }
    }

    else
    {
      [valueCopy removeFromSuperview];
    }
  }

  numberOfLines = [textCopy numberOfLines];
  v41 = ceil(v25 * (v28 / (v28 + v34 + 6.0)));
  [textCopy setNumberOfLines:1];
  [textCopy sizeThatFits:{v41, height}];
  v43 = v42;
  [textCopy setNumberOfLines:0];
  [textCopy sizeThatFits:{v41, height}];
  v46 = v43 * numberOfLines;
  if (numberOfLines <= 0)
  {
    v46 = 3.40282347e38;
  }

  if (v45 < v46)
  {
    v46 = v45;
  }

  v89 = v46;
  if (v45 <= v46 && v46 <= height)
  {
    v41 = v44;
  }

  [textCopy setNumberOfLines:numberOfLines];
  numberOfLines2 = [valueCopy numberOfLines];
  v49 = v25;
  v92 = v41;
  v50 = v25 - v41;
  v51 = v25 - v41 + -6.0;
  [valueCopy setNumberOfLines:1];
  if (valueCopy)
  {
    [valueCopy sizeThatFits:{v51, height}];
    v53 = v52;
    [valueCopy setNumberOfLines:0];
    [valueCopy sizeThatFits:{v51, height}];
    v33 = v55;
  }

  else
  {
    v53 = v26[1];
    [0 setNumberOfLines:0];
    v54 = v53;
  }

  v56 = v53 * numberOfLines2;
  if (numberOfLines2 <= 0)
  {
    v56 = 3.40282347e38;
  }

  if (v54 < v56)
  {
    v56 = v54;
  }

  v88 = v56;
  v90 = height;
  if (v54 > v56 || v56 > height)
  {
    v58 = v51;
  }

  else
  {
    v58 = v33;
  }

  [valueCopy setNumberOfLines:numberOfLines2];
  font = [textCopy font];
  [font ascender];
  v61 = v60;
  font2 = [valueCopy font];
  [font2 ascender];
  v64 = v63;

  if (v61 >= v64)
  {
    font3 = [textCopy font];
    [font3 ascender];
    v74 = v73;
    font4 = [valueCopy font];
    [font4 ascender];
    CalRoundToScreenScale(v74 - v75);
    v72 = v76;
    v71 = 0.0;
  }

  else
  {
    font3 = [valueCopy font];
    [font3 ascender];
    v67 = v66;
    font4 = [textCopy font];
    [font4 ascender];
    CalRoundToScreenScale(v67 - v69);
    v71 = v70;
    v72 = 0.0;
  }

  if (IsLeftToRight)
  {
    v77 = 0.0;
  }

  else
  {
    v77 = v50;
  }

  if (IsLeftToRight)
  {
    v78 = v49 - v58;
  }

  else
  {
    v78 = 0.0;
  }

  v99.origin.x = v77;
  v99.origin.y = v71;
  v99.size.width = v92;
  v99.size.height = v89;
  v104.origin.x = v78;
  v104.origin.y = v72;
  v104.size.width = v58;
  v104.size.height = v88;
  v100 = CGRectUnion(v99, v104);
  v79 = CalCeilToScreenScale((v90 - v100.size.height) * 0.5);
  v101.origin.x = v77;
  v101.origin.y = v71;
  v101.size.width = v92;
  v101.size.height = v89;
  v102 = CGRectOffset(v101, v94, v79);
  v91 = v102.size.height;
  v93 = v102.origin.x;
  y = v102.origin.y;
  v81 = v102.size.width;
  v102.origin.x = v78;
  v102.origin.y = v72;
  v102.size.width = v58;
  v102.size.height = v88;
  v103 = CGRectOffset(v102, v94, v79);
  v82 = v103.origin.x;
  v83 = v103.origin.y;
  v84 = v103.size.width;
  v85 = v103.size.height;
  superview3 = [textCopy superview];

  if (superview3)
  {
    [textCopy setFrame:{v93, y, v81, v91}];
  }

  superview4 = [valueCopy superview];

  if (superview4)
  {
    [valueCopy setFrame:{v82, v83, v84, v85}];
  }
}

- (void)_layoutSubviewsCore
{
  v4.receiver = self;
  v4.super_class = PreferencesTwoPartValueCell;
  [(EKUITableViewCell *)&v4 layoutSubviews];
  textLabel = [(PreferencesTwoPartValueCell *)self textLabel];
  [(PreferencesTwoPartValueCell *)self layoutText:textLabel andValue:self->_twoPartLabel];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  traitCollection = [(PreferencesTwoPartValueCell *)self traitCollection];
  if (EKUIUsesLargeTextLayout(traitCollection))
  {
  }

  else
  {
    largePart2TextLabel = self->_largePart2TextLabel;

    if (!largePart2TextLabel)
    {
      v23.receiver = self;
      v23.super_class = PreferencesTwoPartValueCell;
      [(PreferencesTwoPartValueCell *)&v23 sizeThatFits:width, height];
      v9 = v20;
      v17 = v21;
      goto LABEL_5;
    }
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
  [(PreferencesTwoPartValueCell *)self layoutIfNeeded];
  v22.receiver = self;
  v22.super_class = PreferencesTwoPartValueCell;
  [(PreferencesTwoPartValueCell *)&v22 sizeThatFits:width, height];
  v9 = v8;
  v11 = v10;
  [(UILabel *)self->_largePart2TextLabel frame];
  v13 = v12;
  font = [(UILabel *)self->_largePart2TextLabel font];
  [font _bodyLeading];
  CalRoundToScreenScale((v13 + v15) * 0.5);
  v17 = v11 + v16;

LABEL_5:
  v18 = v9;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

- (void)setStrikeThroughLargeDetailTextLabel:(BOOL)label
{
  if (self->_strikeThroughLargeDetailTextLabel != label)
  {
    self->_strikeThroughLargeDetailTextLabel = label;
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
}

- (void)setStrikeThroughLargePart2TextLabel:(BOOL)label
{
  if (self->_strikeThroughLargePart2TextLabel != label)
  {
    self->_strikeThroughLargePart2TextLabel = label;
  }

  [(PreferencesTwoPartValueCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  *&v56.size.width = self;
  *&v56.size.height = PreferencesTwoPartValueCell;
  [(CGSize *)&v56.size layoutSubviews];
  traitCollection = [(PreferencesTwoPartValueCell *)self traitCollection];
  v4 = EKUIUsesLargeTextLayout(traitCollection);

  if (v4)
  {
    detailTextLabel = [(PreferencesTwoPartValueCell *)self detailTextLabel];
    text = [detailTextLabel text];

    largePart2TextLabel = [(PreferencesTwoPartValueCell *)self largePart2TextLabel];
    text2 = [largePart2TextLabel text];

    v9 = MEMORY[0x1E69DB6B8];
    if (text)
    {
      v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:text];
      v11 = *v9;
      v12 = [MEMORY[0x1E696AD98] numberWithBool:self->_strikeThroughLargeDetailTextLabel];
      [v10 addAttribute:v11 value:v12 range:{0, objc_msgSend(v10, "length")}];

      detailTextLabel2 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [detailTextLabel2 setAttributedText:v10];
    }

    if (text2)
    {
      v14 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:text2];
      v15 = *v9;
      v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_strikeThroughLargePart2TextLabel];
      [v14 addAttribute:v15 value:v16 range:{0, objc_msgSend(v14, "length")}];

      largePart2TextLabel2 = [(PreferencesTwoPartValueCell *)self largePart2TextLabel];
      [largePart2TextLabel2 setAttributedText:v14];
    }

    if (self->_largePart2TextLabel)
    {
      textLabel = [(PreferencesTwoPartValueCell *)self textLabel];
      [textLabel sizeToFit];

      detailTextLabel3 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [detailTextLabel3 sizeToFit];

      [(UILabel *)self->_largePart2TextLabel sizeToFit];
      textLabel2 = [(PreferencesTwoPartValueCell *)self textLabel];
      [textLabel2 frame];
      v56.origin.y = v21;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      detailTextLabel4 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
      [detailTextLabel4 frame];
      v30 = v29;
      v32 = v31;
      v34 = v33;
      v36 = v35;

      text3 = [(UILabel *)self->_largePart2TextLabel text];
      v38 = [text3 length];

      if (v38)
      {
        font = [(UILabel *)self->_largePart2TextLabel font];
        [font _bodyLeading];
        CalRoundToScreenScale(v40 * 0.5);
        v42 = v41;

        v43 = v23 - v42;
        textLabel3 = [(PreferencesTwoPartValueCell *)self textLabel];
        [textLabel3 setFrame:{v56.origin.y, v43, v25, v27}];

        v45 = v32 - v42;
        detailTextLabel5 = [(PreferencesTwoPartValueCell *)self detailTextLabel];
        v56.origin.x = v30;
        [detailTextLabel5 setFrame:{v30, v45, v34, v36}];

        frame = [(UILabel *)self->_largePart2TextLabel frame];
        v49 = v48;
        v51 = v50;
        if (CalInterfaceIsLeftToRight(frame, v52))
        {
          v57.origin.x = v56.origin.y;
          v57.origin.y = v43;
          v57.size.width = v25;
          v57.size.height = v27;
          MinX = CGRectGetMinX(v57);
        }

        else
        {
          v58.origin.x = v56.origin.y;
          v58.origin.y = v43;
          v58.size.width = v25;
          v58.size.height = v27;
          MinX = CGRectGetMaxX(v58) - v49;
        }

        v59.origin.x = v56.origin.x;
        v59.origin.y = v45;
        v59.size.width = v34;
        v59.size.height = v36;
        [(UILabel *)self->_largePart2TextLabel setFrame:MinX, CGRectGetMaxY(v59), v49, v51];
        v55 = objc_msgSend_contentView(self);
        [v55 addSubview:self->_largePart2TextLabel];
      }
    }

    else
    {
      [0 removeFromSuperview];
    }
  }

  else
  {
    textLabel4 = [(PreferencesTwoPartValueCell *)self textLabel];
    [(PreferencesTwoPartValueCell *)self layoutText:textLabel4 andValue:self->_twoPartLabel];

    [(PreferencesTwoPartValueCell *)self checkValueWidths];
  }
}

- (void)shorten
{
  WeakRetained = objc_loadWeakRetained(&self->_shortener);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_shortener);
    [v4 shortenCell:self];

    [(PreferencesTwoPartValueCell *)self _layoutSubviewsCore];
  }
}

- (void)checkValueWidths
{
  if ([(TwoPartTextLabel *)self->_twoPartLabel hasTwoParts])
  {
    [(TwoPartTextLabel *)self->_twoPartLabel frame];
    v4 = v3;
    [(TwoPartTextLabel *)self->_twoPartLabel idealSize];
    if (v4 < v5)
    {

      [(PreferencesTwoPartValueCell *)self shorten];
    }
  }
}

- (EKCellShortener)shortener
{
  WeakRetained = objc_loadWeakRetained(&self->_shortener);

  return WeakRetained;
}

@end