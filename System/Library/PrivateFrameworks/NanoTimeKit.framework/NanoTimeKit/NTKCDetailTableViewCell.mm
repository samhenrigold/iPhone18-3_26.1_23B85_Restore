@interface NTKCDetailTableViewCell
- (BOOL)_visibleAtPoint:(CGPoint)point;
- (NTKCDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)_fontSizeDidChange;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setShowsSeparator:(BOOL)separator;
@end

@implementation NTKCDetailTableViewCell

- (NTKCDetailTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v13.receiver = self;
  v13.super_class = NTKCDetailTableViewCell;
  v4 = [(NTKCDetailTableViewCell *)&v13 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = BPSBackgroundColor();
    [(NTKCDetailTableViewCell *)v4 setBackgroundColor:v5];

    tertiarySystemBackgroundColor = [MEMORY[0x277D75348] tertiarySystemBackgroundColor];
    [(NTKCDetailTableViewCell *)v4 setSelectionTintColor:tertiarySystemBackgroundColor];

    [(NTKCDetailTableViewCell *)v4 setSelectionStyle:0];
    defaultTextColor = [objc_opt_class() defaultTextColor];
    textLabel = [(NTKCDetailTableViewCell *)v4 textLabel];
    [textLabel setTextColor:defaultTextColor];

    if (CLKLayoutIsRTL())
    {
      v9 = 0;
    }

    else
    {
      v9 = 2;
    }

    detailTextLabel = [(NTKCDetailTableViewCell *)v4 detailTextLabel];
    [detailTextLabel setTextAlignment:v9];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__fontSizeDidChange name:*MEMORY[0x277D76810] object:0];

    [(NTKCDetailTableViewCell *)v4 _fontSizeDidChange];
  }

  return v4;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D76810] object:0];

  v4.receiver = self;
  v4.super_class = NTKCDetailTableViewCell;
  [(NTKCDetailTableViewCell *)&v4 dealloc];
}

- (void)setShowsSeparator:(BOOL)separator
{
  if (self->_showsSeparator != separator)
  {
    self->_showsSeparator = separator;
    separatorView = self->_separatorView;
    if (separator)
    {
      if (!separatorView)
      {
        v5 = objc_opt_new();
        [(NTKCDetailTableViewCell *)self setSeparatorView:v5];

        [(NTKCDetailTableViewCell *)self addSubview:self->_separatorView];
        separatorView = self->_separatorView;
      }

      v6 = 0;
    }

    else
    {
      v6 = 1;
    }

    [(UIView *)separatorView setHidden:v6];
  }
}

- (void)layoutSubviews
{
  v87.receiver = self;
  v87.super_class = NTKCDetailTableViewCell;
  [(NTKCDetailTableViewCell *)&v87 layoutSubviews];
  contentView = [(NTKCDetailTableViewCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v14 = NTKCScreenEdgeMargin(v12, v13);
  textLabel = [(NTKCDetailTableViewCell *)self textLabel];
  font = [textLabel font];
  [font _scaledValueForValue:28.0];
  v18 = v17;

  IsRTL = CLKLayoutIsRTL();
  textLabel2 = [(NTKCDetailTableViewCell *)self textLabel];
  text = [textLabel2 text];
  if (![text length])
  {

LABEL_17:
    goto LABEL_18;
  }

  v85 = v11;
  rect = v9;
  ignoresRTLCorrection = self->_ignoresRTLCorrection;

  if (!ignoresRTLCorrection)
  {
    v84 = v7;
    textLabel3 = [(NTKCDetailTableViewCell *)self textLabel];
    [textLabel3 frame];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;

    v32 = v14;
    if (IsRTL)
    {
      v88.origin.x = v5;
      v88.origin.y = v84;
      v88.size.height = v85;
      v88.size.width = rect;
      Width = CGRectGetWidth(v88);
      v89.origin.x = v25;
      v89.origin.y = v27;
      v89.size.width = v29;
      v89.size.height = v31;
      v32 = Width - CGRectGetWidth(v89) - v14;
    }

    textLabel4 = [(NTKCDetailTableViewCell *)self textLabel];
    [textLabel4 _lastLineBaseline];
    v36 = v18 - v35;

    v90.origin.x = v32;
    v90.origin.y = v36;
    v90.size.width = v29;
    v90.size.height = v31;
    if (CGRectGetMinY(v90) < 0.0)
    {
      v36 = 0.0;
    }

    textLabel5 = [(NTKCDetailTableViewCell *)self textLabel];
    [textLabel5 setFrame:{v32, v36, v29, v31}];

    detailTextLabel = [(NTKCDetailTableViewCell *)self detailTextLabel];
    text2 = [detailTextLabel text];
    v40 = [text2 length];

    if (v40)
    {
      v91.origin.x = v5;
      v91.origin.y = v84;
      v91.size.height = v85;
      v91.size.width = rect;
      v41 = CGRectGetWidth(v91) + v14 * -2.0;
      v92.origin.x = v32;
      v92.origin.y = v36;
      v92.size.width = v29;
      v92.size.height = v31;
      v42 = v41 - CGRectGetWidth(v92) + -16.0;
      detailTextLabel2 = [(NTKCDetailTableViewCell *)self detailTextLabel];
      [detailTextLabel2 frame];
      v45 = v44;
      v47 = v46;
      v49 = v48;

      detailTextLabel3 = [(NTKCDetailTableViewCell *)self detailTextLabel];
      [detailTextLabel3 _lastLineBaseline];
      v52 = v18 - v51;

      v93.origin.x = v45;
      v93.origin.y = v52;
      v93.size.width = v47;
      v93.size.height = v49;
      v53 = CGRectGetWidth(v93);
      v54 = 0.0;
      if (v42 >= 0.0)
      {
        v54 = v42;
      }

      if (v53 <= v42)
      {
        v55 = v47;
      }

      else
      {
        v55 = v54;
      }

      if ((IsRTL & 1) == 0)
      {
        v94.origin.x = v5;
        v94.origin.y = v84;
        v94.size.height = v85;
        v94.size.width = rect;
        v56 = CGRectGetWidth(v94) - v14;
        v95.origin.x = v45;
        v95.origin.y = v52;
        v95.size.width = v55;
        v95.size.height = v49;
        v14 = v56 - CGRectGetWidth(v95);
      }

      textLabel2 = [(NTKCDetailTableViewCell *)self detailTextLabel];
      [textLabel2 setFrame:{v14, v52, v55, v49}];
      goto LABEL_17;
    }
  }

LABEL_18:
  [(NTKCDetailTableViewCell *)self bringSubviewToFront:self->_separatorView];
  [(UIView *)self->_separatorView frame];
  v58 = v57;
  v60 = v59;
  v62 = v61;
  [(NTKCDetailTableViewCell *)self bounds];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;
  [(NTKCDetailTableViewCell *)self separatorInset];
  v72 = v66 + v71;
  v75 = v68 - (v73 + v74);
  v96.size.height = v70 - (v71 + v76);
  v96.origin.x = v64 + v73;
  v96.origin.y = v72;
  v96.size.width = v75;
  v77 = CGRectGetWidth(v96);
  if (IsRTL)
  {
    [(NTKCDetailTableViewCell *)self bounds];
    v78 = CGRectGetWidth(v97);
    v98.origin.x = v58;
    v98.origin.y = v60;
    v98.size.width = v77;
    v98.size.height = v62;
    v79 = v78 - CGRectGetWidth(v98);
    [(NTKCDetailTableViewCell *)self separatorInset];
    v81 = v79 - v80;
  }

  else
  {
    [(NTKCDetailTableViewCell *)self separatorInset];
    v81 = v82;
  }

  [(NTKCDetailTableViewCell *)self bounds];
  Height = CGRectGetHeight(v99);
  v100.origin.x = v81;
  v100.origin.y = v60;
  v100.size.width = v77;
  v100.size.height = v62;
  [(UIView *)self->_separatorView setFrame:v81, Height - CGRectGetHeight(v100), v77, v62];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  v18 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NTKCDetailTableViewCell;
  [(NTKCDetailTableViewCell *)&v16 setHighlighted:highlighted animated:animated];
  if ([(NTKCDetailTableViewCell *)self selectionStyle])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subviews = [(NTKCDetailTableViewCell *)self subviews];
    v6 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(subviews);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
            [v11 setSelected:{-[NTKCDetailTableViewCell isHighlighted](self, "isHighlighted")}];
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = [subviews countByEnumeratingWithState:&v12 objects:v17 count:16];
      }

      while (v7);
    }
  }
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v10.receiver = self;
  v10.super_class = NTKCDetailTableViewCell;
  v7 = [(NTKCDetailTableViewCell *)&v10 hitTest:event withEvent:?];
  if (v7 && [(NTKCDetailTableViewCell *)self _visibleAtPoint:x, y])
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_visibleAtPoint:(CGPoint)point
{
  _tableView = [(NTKCDetailTableViewCell *)self _tableView];
  v5 = [_tableView indexPathForCell:self];
  [_tableView bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  [_tableView contentInset];
  v15 = v7 + v14;
  v17 = v9 + v16;
  v19 = v11 - (v14 + v18);
  v21 = v13 - (v16 + v20);
  v22 = [_tableView headerViewForSection:{objc_msgSend(v5, "section")}];
  [v22 frame];
  v42.origin.x = v23;
  v42.origin.y = v24;
  v42.size.width = v25;
  v42.size.height = v26;
  v38.origin.x = v15;
  v38.origin.y = v17;
  v38.size.width = v19;
  v38.size.height = v21;
  v39 = CGRectIntersection(v38, v42);
  x = v39.origin.x;
  y = v39.origin.y;
  width = v39.size.width;
  height = v39.size.height;
  if (!CGRectIsNull(v39))
  {
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = height;
    v31 = CGRectGetHeight(v40);
    v17 = v17 + v31;
    v21 = v21 - v31;
  }

  [(NTKCDetailTableViewCell *)self convertPoint:_tableView toView:point.x, point.y];
  v37.x = v32;
  v37.y = v33;
  v41.origin.x = v15;
  v41.origin.y = v17;
  v41.size.width = v19;
  v41.size.height = v21;
  v34 = CGRectContainsPoint(v41, v37);

  return v34;
}

- (void)_fontSizeDidChange
{
  _fontForTextLabel = [(NTKCDetailTableViewCell *)self _fontForTextLabel];
  textLabel = [(NTKCDetailTableViewCell *)self textLabel];
  [textLabel setFont:_fontForTextLabel];

  _fontForDetailTextLabel = [(NTKCDetailTableViewCell *)self _fontForDetailTextLabel];
  detailTextLabel = [(NTKCDetailTableViewCell *)self detailTextLabel];
  [detailTextLabel setFont:_fontForDetailTextLabel];

  [(NTKCDetailTableViewCell *)self setNeedsLayout];
}

@end