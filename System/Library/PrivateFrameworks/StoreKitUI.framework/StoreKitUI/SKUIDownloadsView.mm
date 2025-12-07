@interface SKUIDownloadsView
- (void)layoutSubviews;
- (void)setContentView:(id)view;
- (void)setOverlayView:(id)view;
@end

@implementation SKUIDownloadsView

- (void)setContentView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDownloadsView *)v5 setContentView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIView *)self->_contentView removeFromSuperview];
  contentView = self->_contentView;
  self->_contentView = viewCopy;
  v14 = viewCopy;

  [(SKUIDownloadsView *)self insertSubview:self->_contentView atIndex:0];
  [(SKUIDownloadsView *)self setNeedsLayout];
}

- (void)setOverlayView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIDownloadsView *)v5 setOverlayView:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(UIView *)self->_overlayView removeFromSuperview];
  overlayView = self->_overlayView;
  self->_overlayView = viewCopy;
  v14 = viewCopy;

  [(SKUIDownloadsView *)self addSubview:self->_overlayView];
  [(SKUIDownloadsView *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDownloadsView layoutSubviews]";
}

- (void)setContentView:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDownloadsView setContentView:]";
}

- (void)setOverlayView:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIDownloadsView setOverlayView:]";
}

@end