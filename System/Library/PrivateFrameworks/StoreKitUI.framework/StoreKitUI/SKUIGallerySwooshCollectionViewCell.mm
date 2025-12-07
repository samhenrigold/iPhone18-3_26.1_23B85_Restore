@interface SKUIGallerySwooshCollectionViewCell
- (NSString)title;
- (void)layoutSubviews;
- (void)setColoringWithColorScheme:(id)scheme;
- (void)setContentChildView:(id)view;
- (void)setTitle:(id)title;
- (void)title;
@end

@implementation SKUIGallerySwooshCollectionViewCell

- (void)setColoringWithColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGallerySwooshCollectionViewCell *)v5 setColoringWithColorScheme:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_msgSend_primaryTextColor(schemeCopy);
  titleColor = self->_titleColor;
  if (titleColor != v13 && ([(UIColor *)titleColor isEqual:v13]& 1) == 0)
  {
    objc_storeStrong(&self->_titleColor, v13);
    titleLabel = self->_titleLabel;
    if (self->_titleColor)
    {
      [(UILabel *)self->_titleLabel setTextColor:?];
    }

    else
    {
      v16 = [MEMORY[0x277D75348] colorWithWhite:0.235294118 alpha:1.0];
      [(UILabel *)titleLabel setTextColor:v16];
    }
  }
}

- (void)setContentChildView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIGallerySwooshCollectionViewCell *)v6 setContentChildView:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  contentChildView = self->_contentChildView;
  if (contentChildView != viewCopy)
  {
    if ([(UIView *)contentChildView isDescendantOfView:self])
    {
      [(UIView *)self->_contentChildView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentChildView, view);
    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
    contentChildView = self->_contentChildView;
  }

  if (contentChildView && ![(UIView *)contentChildView isDescendantOfView:self])
  {
    contentView = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
    [contentView addSubview:self->_contentChildView];
    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
  }
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIGallerySwooshCollectionViewCell *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  text = [(UILabel *)self->_titleLabel text];
  v14 = text;
  if (text != titleCopy && (objc_msgSend_isEqualToString_(text) & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v16 = objc_alloc_init(MEMORY[0x277D756B8]);
        v17 = self->_titleLabel;
        self->_titleLabel = v16;

        v18 = self->_titleLabel;
        backgroundColor = [(SKUIGallerySwooshCollectionViewCell *)self backgroundColor];
        [(UILabel *)v18 setBackgroundColor:backgroundColor];

        v20 = self->_titleLabel;
        v21 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v20 setFont:v21];

        v22 = self->_titleLabel;
        if (self->_titleColor)
        {
          [(UILabel *)self->_titleLabel setTextColor:?];
        }

        else
        {
          v24 = [MEMORY[0x277D75348] colorWithWhite:0.235294118 alpha:1.0];
          [(UILabel *)v22 setTextColor:v24];
        }

        contentView = [(SKUIGallerySwooshCollectionViewCell *)self contentView];
        [contentView addSubview:self->_titleLabel];

        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v23 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIGallerySwooshCollectionViewCell *)self setNeedsLayout];
  }
}

- (NSString)title
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIGallerySwooshCollectionViewCell *)v3 title:v4];
      }
    }
  }

  text = [(UILabel *)self->_titleLabel text];

  return text;
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIGallerySwooshCollectionViewCell layoutSubviews]";
}

- (void)setColoringWithColorScheme:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIGallerySwooshCollectionViewCell setColoringWithColorScheme:]";
}

- (void)setContentChildView:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIGallerySwooshCollectionViewCell setContentChildView:]";
}

- (void)setTitle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIGallerySwooshCollectionViewCell setTitle:]";
}

- (void)title
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIGallerySwooshCollectionViewCell title]";
}

@end