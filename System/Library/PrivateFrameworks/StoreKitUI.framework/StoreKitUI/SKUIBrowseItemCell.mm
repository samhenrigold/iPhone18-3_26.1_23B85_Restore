@interface SKUIBrowseItemCell
- (SKUIBrowseItemCell)initWithFrame:(CGRect)frame;
- (void)_reloadHighlightState;
- (void)layoutSubviews;
- (void)setDecorationImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setSelected:(BOOL)selected;
- (void)setShowTopBorder:(BOOL)border;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
@end

@implementation SKUIBrowseItemCell

- (SKUIBrowseItemCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUIBrowseItemCell initWithFrame:];
  }

  v26.receiver = self;
  v26.super_class = SKUIBrowseItemCell;
  height = [(SKUIBrowseItemCell *)&v26 initWithFrame:x, y, width, height];
  if (height)
  {
    v9 = objc_alloc_init(MEMORY[0x277D756B8]);
    titleLabel = height->_titleLabel;
    height->_titleLabel = v9;

    v11 = height->_titleLabel;
    v12 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UILabel *)v11 setFont:v12];

    [(UILabel *)height->_titleLabel setNumberOfLines:1];
    [(SKUIBrowseItemCell *)height addSubview:height->_titleLabel];
    v13 = objc_alloc_init(MEMORY[0x277D756B8]);
    subtitleLabel = height->_subtitleLabel;
    height->_subtitleLabel = v13;

    v15 = height->_subtitleLabel;
    v16 = [MEMORY[0x277D74300] systemFontOfSize:16.0];
    [(UILabel *)v15 setFont:v16];

    [(UILabel *)height->_subtitleLabel setNumberOfLines:1];
    v17 = height->_subtitleLabel;
    v18 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v17 setTextColor:v18];

    [(SKUIBrowseItemCell *)height addSubview:height->_subtitleLabel];
    v19 = objc_alloc_init(MEMORY[0x277D75D18]);
    borderView = height->_borderView;
    height->_borderView = v19;

    v21 = height->_borderView;
    v22 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
    [(UIView *)v21 setBackgroundColor:v22];

    v23 = [(SKUIBrowseItemCell *)height addSubview:height->_borderView];
    [(SKUIBrowseItemCell *)height setSemanticContentAttribute:storeSemanticContentAttribute(v23, v24)];
  }

  return height;
}

- (void)setDecorationImage:(id)image
{
  imageCopy = image;
  if (imageCopy)
  {
    objc_storeStrong(&self->_decorationImage, image);
    decorationImageView = self->_decorationImageView;
    if (decorationImageView)
    {
      [(UIImageView *)decorationImageView setImage:self->_decorationImage];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:self->_decorationImage];
      v9 = self->_decorationImageView;
      self->_decorationImageView = v8;

      [(SKUIBrowseItemCell *)self addSubview:self->_decorationImageView];
    }
  }

  else
  {
    decorationImage = self->_decorationImage;
    self->_decorationImage = 0;

    [(UIImageView *)self->_decorationImageView removeFromSuperview];
    v7 = self->_decorationImageView;
    self->_decorationImageView = 0;
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  text = [(UILabel *)self->_titleLabel text];
  isEqualToString = objc_msgSend_isEqualToString_(titleCopy);

  if ((isEqualToString & 1) == 0)
  {
    [(UILabel *)self->_titleLabel setText:titleCopy];
    [(SKUIBrowseItemCell *)self setNeedsLayout];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  text = [(UILabel *)self->_subtitleLabel text];
  isEqualToString = objc_msgSend_isEqualToString_(subtitleCopy);

  if ((isEqualToString & 1) == 0)
  {
    [(UILabel *)self->_subtitleLabel setText:subtitleCopy];
    [(SKUIBrowseItemCell *)self setNeedsLayout];
  }
}

- (void)setShowTopBorder:(BOOL)border
{
  self->_showTopBorder = border;
  topBorderView = self->_topBorderView;
  if (border)
  {
    if (!topBorderView)
    {
      v5 = objc_alloc_init(MEMORY[0x277D75D18]);
      v6 = self->_topBorderView;
      self->_topBorderView = v5;

      v7 = self->_topBorderView;
      v8 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
      [(UIView *)v7 setBackgroundColor:v8];

      v9 = self->_topBorderView;

      [(SKUIBrowseItemCell *)self addSubview:v9];
    }
  }

  else if (topBorderView)
  {
    [(UIView *)topBorderView removeFromSuperview];
    v10 = self->_topBorderView;
    self->_topBorderView = 0;
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  v4.receiver = self;
  v4.super_class = SKUIBrowseItemCell;
  [(SKUIBrowseItemCell *)&v4 setHighlighted:highlighted];
  [(SKUIBrowseItemCell *)self _reloadHighlightState];
}

- (void)setSelected:(BOOL)selected
{
  v4.receiver = self;
  v4.super_class = SKUIBrowseItemCell;
  [(SKUIBrowseItemCell *)&v4 setSelected:selected];
  [(SKUIBrowseItemCell *)self _reloadHighlightState];
}

- (void)layoutSubviews
{
  v49.receiver = self;
  v49.super_class = SKUIBrowseItemCell;
  [(SKUIBrowseItemCell *)&v49 layoutSubviews];
  [(SKUIBrowseItemCell *)self bounds];
  x = v50.origin.x;
  y = v50.origin.y;
  width = v50.size.width;
  height = v50.size.height;
  v7 = CGRectGetMaxX(v50) + -15.0;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(v8, v9);
  decorationImageView = self->_decorationImageView;
  if (decorationImageView)
  {
    frame = [(UIImageView *)decorationImageView frame];
    v14 = v13;
    v16 = v15;
    v17 = v7 - v13;
    v18 = y + (height - v15) * 0.5;
    v19 = self->_decorationImageView;
    SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v17, v18, v13, v15, x, y, width, height, frame, v20);
    [(UIImageView *)v19 setFrame:?];
    v51.origin.x = v17;
    v51.origin.y = v18;
    v51.size.width = v14;
    v51.size.height = v16;
    v7 = CGRectGetMinX(v51) + -10.0;
  }

  if (ShouldReverseLayoutDirection)
  {
    v21 = 2;
  }

  else
  {
    v21 = 0;
  }

  [(UILabel *)self->_subtitleLabel sizeToFit];
  frame2 = [(UILabel *)self->_subtitleLabel frame];
  v24 = v23;
  v26 = v25;
  v27 = v7 - v23;
  v28 = y + (height - v25) * 0.5;
  subtitleLabel = self->_subtitleLabel;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(v27, v28, v23, v25, x, y, width, height, frame2, v30);
  [(UILabel *)subtitleLabel setFrame:?];
  [(UILabel *)self->_subtitleLabel setTextAlignment:v21];
  v52.origin.x = v27;
  v52.origin.y = v28;
  v52.size.width = v24;
  v52.size.height = v26;
  v31 = CGRectGetMinX(v52) + -10.0;
  [(UILabel *)self->_titleLabel sizeToFit];
  frame3 = [(UILabel *)self->_titleLabel frame];
  titleLabel = self->_titleLabel;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(x + 15.0, y + (height - v33) * 0.5, v31 - x + -15.0, v33, x, y, width, height, frame3, v35);
  [(UILabel *)titleLabel setFrame:?];
  [(UILabel *)self->_titleLabel setTextAlignment:v21];
  [(UIView *)self->_borderView frame];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v38 = 1.0 / v37;

  v53.origin.x = x;
  v53.origin.y = y;
  v53.size.width = width;
  v53.size.height = height;
  MaxY = CGRectGetMaxY(v53);
  borderView = self->_borderView;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, MaxY - v38, width + -15.0, v38, x, y, width, height, v41, v42);
  [(UIView *)borderView setFrame:?];
  [(UIView *)self->_topBorderView frame];
  mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen2 scale];
  v45 = 1.0 / v44;

  topBorderView = self->_topBorderView;
  SKUIRectByApplyingStoreUserInterfaceLayoutDirectionInRect(15.0, 0.0, width + -15.0, v45, x, y, width, height, v47, v48);
  [(UIView *)topBorderView setFrame:?];
}

- (void)_reloadHighlightState
{
  hasBlueBackgroundWhenSelected = self->_hasBlueBackgroundWhenSelected;
  isHighlighted = [(SKUIBrowseItemCell *)self isHighlighted];
  v5 = isHighlighted;
  if (hasBlueBackgroundWhenSelected)
  {
    if ((isHighlighted & 1) != 0 || [(SKUIBrowseItemCell *)self isSelected])
    {
      titleLabel = self->_titleLabel;
      whiteColor = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)titleLabel setTextColor:whiteColor];

      subtitleLabel = self->_subtitleLabel;
      whiteColor2 = [MEMORY[0x277D75348] whiteColor];
      [(UILabel *)subtitleLabel setTextColor:whiteColor2];

      whiteColor3 = [MEMORY[0x277D75348] colorWithRed:0.298039216 green:0.631372549 blue:1.0 alpha:1.0];
      goto LABEL_9;
    }

    v12 = self->_titleLabel;
    blackColor = [MEMORY[0x277D75348] blackColor];
    [(UILabel *)v12 setTextColor:blackColor];

    v14 = self->_subtitleLabel;
    v15 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.5];
    [(UILabel *)v14 setTextColor:v15];

    v11 = MEMORY[0x277D75348];
  }

  else
  {
    v11 = MEMORY[0x277D75348];
    if (v5)
    {
      whiteColor3 = [MEMORY[0x277D75348] colorWithWhite:0.85 alpha:1.0];
      goto LABEL_9;
    }
  }

  whiteColor3 = [v11 whiteColor];
LABEL_9:
  v16 = whiteColor3;
  [(SKUIBrowseItemCell *)self setBackgroundColor:whiteColor3];

  borderView = self->_borderView;
  if (([(SKUIBrowseItemCell *)self isHighlighted]& 1) != 0)
  {
    isSelected = 1;
  }

  else
  {
    isSelected = [(SKUIBrowseItemCell *)self isSelected];
  }

  [(UIView *)borderView setHidden:isSelected];
  topBorderView = self->_topBorderView;
  if (([(SKUIBrowseItemCell *)self isHighlighted]& 1) != 0)
  {
    isSelected2 = 1;
  }

  else
  {
    isSelected2 = [(SKUIBrowseItemCell *)self isSelected];
  }

  [(UIView *)topBorderView setHidden:isSelected2];
}

- (void)initWithFrame:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIBrowseItemCell initWithFrame:]";
}

@end