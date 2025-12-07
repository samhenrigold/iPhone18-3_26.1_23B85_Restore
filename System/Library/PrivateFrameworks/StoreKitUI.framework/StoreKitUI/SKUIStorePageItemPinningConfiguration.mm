@interface SKUIStorePageItemPinningConfiguration
- (UIEdgeInsets)pinningContentInset;
- (void)invalidatePinningContentInset;
- (void)invalidatePinningGroup;
- (void)invalidatePinningStyle;
- (void)invalidatePinningTransitionStyle;
- (void)setPinningContentInset:(UIEdgeInsets)inset;
- (void)setPinningGroup:(int64_t)group;
- (void)setPinningStyle:(int64_t)style;
- (void)setPinningTransitionStyle:(int64_t)style;
@end

@implementation SKUIStorePageItemPinningConfiguration

- (void)setPinningContentInset:(UIEdgeInsets)inset
{
  right = inset.right;
  bottom = inset.bottom;
  left = inset.left;
  top = inset.top;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v8)
      {
        [(SKUIStorePageItemPinningConfiguration *)v8 setPinningContentInset:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  self->_pinningContentInset.top = top;
  self->_pinningContentInset.left = left;
  self->_pinningContentInset.bottom = bottom;
  self->_pinningContentInset.right = right;
  self->_hasValidPinningContentInset = 1;
}

- (void)setPinningStyle:(int64_t)style
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStorePageItemPinningConfiguration *)v5 setPinningStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  self->_pinningStyle = style;
  self->_hasValidPinningStyle = 1;
}

- (void)setPinningGroup:(int64_t)group
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUIStorePageItemPinningConfiguration *)v5 setPinningGroup:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  self->_pinningGroup = group;
  self->_hasValidPinningGroup = 1;
}

- (void)setPinningTransitionStyle:(int64_t)style
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStorePageItemPinningConfiguration *)v5 setPinningTransitionStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  self->_pinningTransitionStyle = style;
  self->_hasValidPinningTransitionStyle = 1;
}

- (void)invalidatePinningContentInset
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration invalidatePinningContentInset]";
}

- (void)invalidatePinningStyle
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration invalidatePinningStyle]";
}

- (void)invalidatePinningGroup
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration invalidatePinningGroup]";
}

- (void)invalidatePinningTransitionStyle
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration invalidatePinningTransitionStyle]";
}

- (UIEdgeInsets)pinningContentInset
{
  top = self->_pinningContentInset.top;
  left = self->_pinningContentInset.left;
  bottom = self->_pinningContentInset.bottom;
  right = self->_pinningContentInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (void)setPinningContentInset:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration setPinningContentInset:]";
}

- (void)setPinningStyle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration setPinningStyle:]";
}

- (void)setPinningGroup:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration setPinningGroup:]";
}

- (void)setPinningTransitionStyle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePageItemPinningConfiguration setPinningTransitionStyle:]";
}

@end