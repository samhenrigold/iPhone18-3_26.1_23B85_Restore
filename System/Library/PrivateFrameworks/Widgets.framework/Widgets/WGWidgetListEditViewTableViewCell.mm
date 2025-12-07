@interface WGWidgetListEditViewTableViewCell
- (UIButton)insertWidgetAccessoryButton;
- (WGWidgetListEditViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
- (void)setWidgetEnabled:(BOOL)enabled;
@end

@implementation WGWidgetListEditViewTableViewCell

- (WGWidgetListEditViewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = WGWidgetListEditViewTableViewCell;
  v4 = [(WGWidgetListEditViewTableViewCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    contentView = [(WGWidgetListEditViewTableViewCell *)v4 contentView];
    _systemGroupBackgroundCellColor = [MEMORY[0x277D75348] _systemGroupBackgroundCellColor];
    [contentView setBackgroundColor:_systemGroupBackgroundCellColor];

    textLabel = [(WGWidgetListEditViewTableViewCell *)v5 textLabel];
    [textLabel _setDrawsAsBackdropOverlay:0];
    v9 = [MEMORY[0x277D755B8] systemImageNamed:@"circle.fill"];
    v10 = [MEMORY[0x277D75348] colorWithRed:0.525490196 green:0.941176471 blue:1.0 alpha:1.0];
    v11 = [v9 _flatImageWithColor:v10];

    v12 = [objc_alloc(MEMORY[0x277D755E8]) initWithSize:{6.0, 6.0}];
    dotImageView = v5->_dotImageView;
    v5->_dotImageView = v12;

    [(UIImageView *)v5->_dotImageView setImage:v11];
    contentView2 = [(WGWidgetListEditViewTableViewCell *)v5 contentView];
    [contentView2 addSubview:v5->_dotImageView];
  }

  return v5;
}

- (void)setWidgetEnabled:(BOOL)enabled
{
  self->_widgetEnabled = enabled;
  v4 = [(WGWidgetListEditViewTableViewCell *)self showsDot]& !enabled;

  [(WGWidgetListEditViewTableViewCell *)self setShowsDot:v4];
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = WGWidgetListEditViewTableViewCell;
  [(WGWidgetListEditViewTableViewCell *)&v49 layoutSubviews];
  traitCollection = [(WGWidgetListEditViewTableViewCell *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  IsAccessibilityContentSizeCategory = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();

  contentView = [(WGWidgetListEditViewTableViewCell *)self contentView];
  [contentView bounds];
  v8 = v7;
  v47 = v10;
  v48 = v9;
  rect = v11;

  imageView = [(WGWidgetListEditViewTableViewCell *)self imageView];
  [imageView frame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  image = [imageView image];

  v45 = v8;
  if (image)
  {
    BSRectWithSize();
    if ([(WGWidgetListEditViewTableViewCell *)self _shouldReverseLayoutDirection])
    {
      v50.origin.x = v8;
      v50.size.width = v47;
      v50.origin.y = v48;
      v50.size.height = rect;
      CGRectGetMaxX(v50);
    }

    if ((IsAccessibilityContentSizeCategory & 1) == 0)
    {
      v51.origin.x = v8;
      v51.size.width = v47;
      v51.origin.y = v48;
      v51.size.height = rect;
      CGRectGetHeight(v51);
    }

    image2 = [imageView image];
    [image2 size];
    v23 = BSRectWithSize();
    v44 = _WGMainScreenScale(v23, v24);
    UIRectCenteredIntegralRectScale();
    v14 = v25;
    v16 = v26;
    v18 = v27;
    v20 = v28;

    [imageView setContentMode:{9, *&v44}];
    [imageView setFrame:{v14, v16, v18, v20}];
  }

  textLabel = [(WGWidgetListEditViewTableViewCell *)self textLabel];
  [textLabel frame];
  v31 = v30;
  v33 = v32;
  v35 = v34;
  if ([(WGWidgetListEditViewTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v52.origin.x = v8;
    v52.size.width = v47;
    v52.origin.y = v48;
    v52.size.height = rect;
    v36 = CGRectGetMaxX(v52) - v33 + -12.0;
    image3 = [imageView image];

    if (image3)
    {
      v36 = v36 + -32.0;
    }
  }

  else
  {
    v36 = 12.0;
    if ((IsAccessibilityContentSizeCategory & 1) == 0)
    {
      image4 = [imageView image];
      if (image4)
      {
        v53.origin.x = v14;
        v53.origin.y = v16;
        v53.size.width = v18;
        v53.size.height = v20;
        v36 = CGRectGetMaxX(v53) + 12.0;
      }
    }
  }

  [textLabel setFrame:{v36, v31, v33, v35}];
  v39 = 5.0;
  if ([(WGWidgetListEditViewTableViewCell *)self _shouldReverseLayoutDirection])
  {
    v54.origin.x = v45;
    v54.size.width = v47;
    v54.origin.y = v48;
    v54.size.height = rect;
    v39 = CGRectGetMaxX(v54) + -5.0;
  }

  dotImageView = self->_dotImageView;
  v55.origin.x = v14;
  v55.origin.y = v16;
  v55.size.width = v18;
  v55.size.height = v20;
  MidY = CGRectGetMidY(v55);
  [(UIImageView *)dotImageView setCenter:v39, WGRoundToMainScreenScale(v42, v43, MidY)];
  v56.origin.x = v45;
  v56.size.width = v47;
  v56.origin.y = v48;
  v56.size.height = rect;
  [(WGWidgetListEditViewTableViewCell *)self setSeparatorInset:*MEMORY[0x277D76F30], CGRectGetMinX(v56) + 12.0, *MEMORY[0x277D76F30], *MEMORY[0x277D76F30]];
}

- (UIButton)insertWidgetAccessoryButton
{
  WeakRetained = objc_loadWeakRetained(&self->_insertWidgetAccessoryButton);

  return WeakRetained;
}

@end