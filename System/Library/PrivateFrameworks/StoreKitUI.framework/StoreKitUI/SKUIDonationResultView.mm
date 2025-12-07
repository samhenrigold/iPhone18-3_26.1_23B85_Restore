@interface SKUIDonationResultView
- (NSString)message;
- (NSString)title;
- (UIImage)image;
- (void)image;
- (void)layoutSubviews;
- (void)message;
- (void)setImage:(id)image;
- (void)setMessage:(id)message;
- (void)setTitle:(id)title;
- (void)title;
@end

@implementation SKUIDonationResultView

- (UIImage)image
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDonationResultView *)v3 image:v4];
      }
    }
  }

  image = [(UIImageView *)self->_imageView image];

  return image;
}

- (NSString)message
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIDonationResultView *)v3 message:v4];
      }
    }
  }

  text = [(UILabel *)self->_messageLabel text];

  return text;
}

- (void)setImage:(id)image
{
  imageCopy = image;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDonationResultView *)v5 setImage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  image = [(UIImageView *)self->_imageView image];

  if (image != imageCopy)
  {
    imageView = self->_imageView;
    if (imageCopy)
    {
      if (!imageView)
      {
        v15 = objc_alloc_init(MEMORY[0x277D755E8]);
        v16 = self->_imageView;
        self->_imageView = v15;

        v17 = self->_imageView;
        backgroundColor = [(SKUIDonationResultView *)self backgroundColor];
        [(UIImageView *)v17 setBackgroundColor:backgroundColor];

        [(SKUIDonationResultView *)self addSubview:self->_imageView];
        imageView = self->_imageView;
      }

      [(UIImageView *)imageView setImage:imageCopy];
      [(UIImageView *)self->_imageView sizeToFit];
    }

    else
    {
      [(UIImageView *)imageView removeFromSuperview];
      v19 = self->_imageView;
      self->_imageView = 0;
    }

    [(SKUIDonationResultView *)self setNeedsLayout];
  }
}

- (void)setMessage:(id)message
{
  messageCopy = message;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDonationResultView *)v5 setMessage:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  message = [(SKUIDonationResultView *)self message];
  if (message != messageCopy && (objc_msgSend_isEqualToString_(messageCopy) & 1) == 0)
  {
    messageLabel = self->_messageLabel;
    if (messageCopy)
    {
      if (!messageLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_messageLabel;
        self->_messageLabel = v15;

        v17 = self->_messageLabel;
        backgroundColor = [(SKUIDonationResultView *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:backgroundColor];

        v19 = self->_messageLabel;
        v20 = [MEMORY[0x277D74300] systemFontOfSize:14.0];
        [(UILabel *)v19 setFont:v20];

        [(UILabel *)self->_messageLabel setNumberOfLines:0];
        [(UILabel *)self->_messageLabel setTextAlignment:1];
        v21 = self->_messageLabel;
        _secondaryLabelColor = [MEMORY[0x277D75348] _secondaryLabelColor];
        [(UILabel *)v21 setTextColor:_secondaryLabelColor];

        [(SKUIDonationResultView *)self addSubview:self->_messageLabel];
        messageLabel = self->_messageLabel;
      }

      [(UILabel *)messageLabel setText:messageCopy];
    }

    else
    {
      [(UILabel *)messageLabel removeFromSuperview];
      v23 = self->_messageLabel;
      self->_messageLabel = 0;
    }

    [(SKUIDonationResultView *)self setNeedsLayout];
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
        [(SKUIDonationResultView *)v5 setTitle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  title = [(SKUIDonationResultView *)self title];
  if (title != titleCopy && (objc_msgSend_isEqualToString_(titleCopy) & 1) == 0)
  {
    titleLabel = self->_titleLabel;
    if (titleCopy)
    {
      if (!titleLabel)
      {
        v15 = objc_alloc_init(MEMORY[0x277D756B8]);
        v16 = self->_titleLabel;
        self->_titleLabel = v15;

        v17 = self->_titleLabel;
        backgroundColor = [(SKUIDonationResultView *)self backgroundColor];
        [(UILabel *)v17 setBackgroundColor:backgroundColor];

        v19 = self->_titleLabel;
        v20 = [MEMORY[0x277D74300] boldSystemFontOfSize:17.0];
        [(UILabel *)v19 setFont:v20];

        [(UILabel *)self->_titleLabel setNumberOfLines:0];
        [(UILabel *)self->_titleLabel setTextAlignment:1];
        v21 = self->_titleLabel;
        _labelColor = [MEMORY[0x277D75348] _labelColor];
        [(UILabel *)v21 setTextColor:_labelColor];

        [(SKUIDonationResultView *)self addSubview:self->_titleLabel];
        titleLabel = self->_titleLabel;
      }

      [(UILabel *)titleLabel setText:titleCopy];
    }

    else
    {
      [(UILabel *)titleLabel removeFromSuperview];
      v23 = self->_titleLabel;
      self->_titleLabel = 0;
    }

    [(SKUIDonationResultView *)self setNeedsLayout];
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
        [(SKUIDonationResultView *)v3 title:v4];
      }
    }
  }

  text = [(UILabel *)self->_titleLabel text];

  return text;
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDonationResultView layoutSubviews]";
}

- (void)image
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDonationResultView image]";
}

- (void)message
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDonationResultView message]";
}

- (void)setImage:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDonationResultView setImage:]";
}

- (void)setMessage:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDonationResultView setMessage:]";
}

- (void)setTitle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDonationResultView setTitle:]";
}

- (void)title
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDonationResultView title]";
}

@end