@interface NTKCFaceDetailToggleCell
+ (id)reuseIdentifier;
- (NTKCFaceDetailToggleCell)init;
- (NTKCFaceDetailToggleCellDelegate)delegate;
- (double)rowHeight;
- (void)_switchToggled;
- (void)layoutSubviews;
@end

@implementation NTKCFaceDetailToggleCell

+ (id)reuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (double)rowHeight
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v2 _scaledValueForValue:44.0];
  v4 = v3;

  return v4;
}

- (NTKCFaceDetailToggleCell)init
{
  v7.receiver = self;
  v7.super_class = NTKCFaceDetailToggleCell;
  v2 = [(NTKCDetailTableViewCell *)&v7 initWithStyle:0];
  if (v2)
  {
    v3 = objc_opt_new();
    toggle = v2->_toggle;
    v2->_toggle = v3;

    [(UISwitch *)v2->_toggle addTarget:v2 action:sel__switchToggled forControlEvents:4096];
    contentView = [(NTKCFaceDetailToggleCell *)v2 contentView];
    [contentView addSubview:v2->_toggle];

    [(NTKCDetailTableViewCell *)v2 setShowsSeparator:1];
  }

  return v2;
}

- (void)_switchToggled
{
  delegate = [(NTKCFaceDetailToggleCell *)self delegate];
  [delegate toggleCell:self didToggle:{-[UISwitch isOn](self->_toggle, "isOn")}];
}

- (void)layoutSubviews
{
  v52.receiver = self;
  v52.super_class = NTKCFaceDetailToggleCell;
  [(NTKCDetailTableViewCell *)&v52 layoutSubviews];
  contentView = [(NTKCFaceDetailToggleCell *)self contentView];
  [contentView bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  rect = v10;

  v13 = NTKCScreenEdgeMargin(v11, v12);
  IsRTL = CLKLayoutIsRTL();
  [(UISwitch *)self->_toggle frame];
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v49 = v5;
  v50 = v13;
  if (!IsRTL)
  {
    v22 = v15;
    v53.origin.x = v5;
    v53.origin.y = v7;
    v53.size.width = v9;
    v53.size.height = rect;
    CGRectGetWidth(v53);
    v54.origin.x = v22;
    v54.origin.y = v17;
    v54.size.width = v19;
    v54.size.height = v21;
    CGRectGetWidth(v54);
  }

  UIRectCenteredYInRectScale();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [(UISwitch *)self->_toggle setFrame:0];
  v31 = v9;
  v48 = v7;
  if (IsRTL)
  {
    v55.origin.x = v5;
    v55.origin.y = v7;
    v55.size.width = v9;
    v32 = rect;
    v55.size.height = rect;
    Width = CGRectGetWidth(v55);
    v56.origin.x = v24;
    v56.origin.y = v26;
    v56.size.width = v28;
    v56.size.height = v30;
    MinX = Width - CGRectGetMaxX(v56);
  }

  else
  {
    v57.origin.x = v24;
    v57.origin.y = v26;
    v57.size.width = v28;
    v57.size.height = v30;
    MinX = CGRectGetMinX(v57);
    v32 = rect;
  }

  v35 = v50;
  v36 = MinX + -16.0 - v50;
  textLabel = [(NTKCFaceDetailToggleCell *)self textLabel];
  [textLabel frame];
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;

  v58.origin.x = v39;
  v58.origin.y = v41;
  v58.size.width = v43;
  v58.size.height = v45;
  if (CGRectGetWidth(v58) > v36)
  {
    if (IsRTL)
    {
      v59.origin.y = v48;
      v59.origin.x = v49;
      v59.size.width = v31;
      v59.size.height = v32;
      v46 = CGRectGetWidth(v59);
      v60.origin.x = v39;
      v60.origin.y = v41;
      v60.size.width = v36;
      v60.size.height = v45;
      v35 = v46 - CGRectGetWidth(v60) - v50;
    }

    textLabel2 = [(NTKCFaceDetailToggleCell *)self textLabel];
    [textLabel2 setFrame:{v35, v41, v36, v45}];
  }
}

- (NTKCFaceDetailToggleCellDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end