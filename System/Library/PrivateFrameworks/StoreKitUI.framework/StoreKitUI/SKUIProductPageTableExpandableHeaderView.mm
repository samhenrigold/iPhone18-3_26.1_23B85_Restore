@interface SKUIProductPageTableExpandableHeaderView
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)actionString;
- (NSString)title;
- (UIColor)bottomBorderColor;
- (UIColor)topBorderColor;
- (void)actionString;
- (void)bottomBorderColor;
- (void)layoutSubviews;
- (void)setActionString:(id)string;
- (void)setBackgroundColor:(id)color;
- (void)setBottomBorderColor:(id)color;
- (void)setColorScheme:(id)scheme;
- (void)setTitle:(id)title;
- (void)setTopBorderColor:(id)color;
- (void)title;
- (void)topBorderColor;
@end

@implementation SKUIProductPageTableExpandableHeaderView

- (NSString)actionString
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v3 actionString:v4];
      }
    }
  }

  text = [(UILabel *)self->_actionLabel text];

  return text;
}

- (UIColor)bottomBorderColor
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v3 bottomBorderColor:v4];
      }
    }
  }

  backgroundColor = [(UIView *)self->_bottomBorderView backgroundColor];

  return backgroundColor;
}

- (void)setActionString:(id)string
{
  stringCopy = string;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v5 setActionString:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  actionString = [(SKUIProductPageTableExpandableHeaderView *)self actionString];
  v14 = actionString;
  if (actionString != stringCopy && (objc_msgSend_isEqualToString_(actionString) & 1) == 0)
  {
    v15 = [stringCopy length];
    actionLabel = self->_actionLabel;
    if (v15)
    {
      if (!actionLabel)
      {
        v17 = objc_alloc_init(MEMORY[0x277D756B8]);
        v18 = self->_actionLabel;
        self->_actionLabel = v17;

        v19 = self->_actionLabel;
        backgroundColor = [(SKUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v19 setBackgroundColor:backgroundColor];

        v21 = self->_actionLabel;
        v22 = [MEMORY[0x277D74300] systemFontOfSize:12.0];
        [(UILabel *)v21 setFont:v22];

        v23 = self->_actionLabel;
        secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v23 setTextColor:secondaryTextColor];
        }

        else
        {
          tintColor = [(SKUIProductPageTableExpandableHeaderView *)self tintColor];
          [(UILabel *)v23 setTextColor:tintColor];
        }

        [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_actionLabel];
        actionLabel = self->_actionLabel;
      }

      [(UILabel *)actionLabel setText:stringCopy];
      [(UILabel *)self->_actionLabel sizeToFit];
    }

    else
    {
      [(UILabel *)actionLabel removeFromSuperview];
      v25 = self->_actionLabel;
      self->_actionLabel = 0;
    }

    [(SKUIProductPageTableExpandableHeaderView *)self setNeedsLayout];
  }
}

- (void)setBottomBorderColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v5 setBottomBorderColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  bottomBorderView = self->_bottomBorderView;
  if (colorCopy)
  {
    if (!bottomBorderView)
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      v15 = self->_bottomBorderView;
      self->_bottomBorderView = v14;

      [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_bottomBorderView];
      bottomBorderView = self->_bottomBorderView;
    }

    [(UIView *)bottomBorderView setBackgroundColor:colorCopy];
  }

  else
  {
    [(UIView *)bottomBorderView removeFromSuperview];
    v16 = self->_bottomBorderView;
    self->_bottomBorderView = 0;
  }
}

- (void)setColorScheme:(id)scheme
{
  schemeCopy = scheme;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v6 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v6)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v6 setColorScheme:v7, v8, v9, v10, v11, v12, v13];
      }
    }
  }

  if (self->_colorScheme != schemeCopy)
  {
    objc_storeStrong(&self->_colorScheme, scheme);
    actionLabel = self->_actionLabel;
    secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor)
    {
      [(UILabel *)actionLabel setTextColor:secondaryTextColor];
    }

    else
    {
      tintColor = [(SKUIProductPageTableExpandableHeaderView *)self tintColor];
      [(UILabel *)actionLabel setTextColor:tintColor];
    }

    titleLabel = self->_titleLabel;
    secondaryTextColor2 = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
    if (secondaryTextColor2)
    {
      [(UILabel *)titleLabel setTextColor:secondaryTextColor2];
    }

    else
    {
      blackColor = [MEMORY[0x277D75348] blackColor];
      [(UILabel *)titleLabel setTextColor:blackColor];
    }
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
        [(SKUIProductPageTableExpandableHeaderView *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  title = [(SKUIProductPageTableExpandableHeaderView *)self title];
  v14 = title;
  if (title != titleCopy && (objc_msgSend_isEqualToString_(title) & 1) == 0)
  {
    v15 = [titleCopy length];
    titleLabel = self->_titleLabel;
    if (v15)
    {
      if (!titleLabel)
      {
        v17 = objc_alloc_init(MEMORY[0x277D756B8]);
        v18 = self->_titleLabel;
        self->_titleLabel = v17;

        v19 = self->_titleLabel;
        backgroundColor = [(SKUIProductPageTableExpandableHeaderView *)self backgroundColor];
        [(UILabel *)v19 setBackgroundColor:backgroundColor];

        v21 = self->_titleLabel;
        v22 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
        [(UILabel *)v21 setFont:v22];

        v23 = self->_titleLabel;
        secondaryTextColor = [(SKUIColorScheme *)self->_colorScheme secondaryTextColor];
        if (secondaryTextColor)
        {
          [(UILabel *)v23 setTextColor:secondaryTextColor];
        }

        else
        {
          blackColor = [MEMORY[0x277D75348] blackColor];
          [(UILabel *)v23 setTextColor:blackColor];
        }

        [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
      [(UILabel *)self->_titleLabel sizeToFit];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v25 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIProductPageTableExpandableHeaderView *)self setNeedsLayout];
  }
}

- (void)setTopBorderColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v5 setTopBorderColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  topBorderView = self->_topBorderView;
  if (colorCopy)
  {
    if (!topBorderView)
    {
      v14 = objc_alloc_init(MEMORY[0x277D75D18]);
      v15 = self->_topBorderView;
      self->_topBorderView = v14;

      [(SKUIProductPageTableExpandableHeaderView *)self addSubview:self->_topBorderView];
      topBorderView = self->_topBorderView;
    }

    [(UIView *)topBorderView setBackgroundColor:colorCopy];
  }

  else
  {
    [(UIView *)topBorderView removeFromSuperview];
    v16 = self->_topBorderView;
    self->_topBorderView = 0;
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
        [(SKUIProductPageTableExpandableHeaderView *)v3 title:v4];
      }
    }
  }

  text = [(UILabel *)self->_titleLabel text];

  return text;
}

- (UIColor)topBorderColor
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v3 topBorderColor:v4];
      }
    }
  }

  backgroundColor = [(UIView *)self->_topBorderView backgroundColor];

  return backgroundColor;
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView layoutSubviews]";
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v5 setBackgroundColor:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UILabel *)self->_actionLabel setBackgroundColor:colorCopy];
  [(UILabel *)self->_titleLabel setBackgroundColor:colorCopy];
  v13.receiver = self;
  v13.super_class = SKUIProductPageTableExpandableHeaderView;
  [(SKUIProductPageTableExpandableHeaderView *)&v13 setBackgroundColor:colorCopy];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIProductPageTableExpandableHeaderView *)v4 sizeThatFits:v5, v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = 44.0;
  v13 = width;
  result.height = v12;
  result.width = v13;
  return result;
}

- (void)actionString
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView actionString]";
}

- (void)bottomBorderColor
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView bottomBorderColor]";
}

- (void)setActionString:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView setActionString:]";
}

- (void)setBottomBorderColor:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView setBottomBorderColor:]";
}

- (void)setColorScheme:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView setColorScheme:]";
}

- (void)setTitle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView setTitle:]";
}

- (void)setTopBorderColor:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView setTopBorderColor:]";
}

- (void)title
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView title]";
}

- (void)topBorderColor
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView topBorderColor]";
}

- (void)setBackgroundColor:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView setBackgroundColor:]";
}

- (void)sizeThatFits:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIProductPageTableExpandableHeaderView sizeThatFits:]";
}

@end