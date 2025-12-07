@interface SKUIHandleRulesSettingsHeaderFooterDescriptionView
+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (id)_labelWithDescription:(id)description forWidth:(double)width;
+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)layoutSubviews;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SKUIHandleRulesSettingsHeaderFooterDescriptionView

+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIHandleRulesSettingsHeaderFooterDescriptionView *)v5 prefetchResourcesForSettingsHeaderFooterDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v4)
      {
        [(SKUIHandleRulesSettingsHeaderFooterDescriptionView *)v4 preferredSizeForSettingsHeaderFooterDescription:v5 context:v6, v7, v8, v9, v10, v11];
      }
    }
  }

  v12 = *MEMORY[0x277CBF3A8];
  v13 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v13;
  result.width = v12;
  return result;
}

+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUIHandleRulesSettingsHeaderFooterDescriptionView *)v5 requestLayoutForSettingsHeaderFooterDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context
{
  descriptionCopy = description;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIHandleRulesSettingsHeaderFooterDescriptionView *)v8 sizeThatFitsWidth:v9 settingsHeaderFooterDescription:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  v16 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v16 _scaledValueForValue:22.0];
  v18 = v17;
  v19 = [self _labelWithDescription:descriptionCopy forWidth:width];
  [v19 _firstLineBaselineFrameOriginY];
  v21 = v18 - v20;
  [v19 _lastLineBaselineFrameOriginY];
  v23 = v21 + v22;

  widthCopy = width;
  v25 = v23;
  result.height = v25;
  result.width = widthCopy;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  descriptionCopy = description;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIHandleRulesSettingsHeaderFooterDescriptionView *)v8 reloadWithSettingsHeaderFooterDescription:v9 width:v10 context:v11, v12, v13, v14, v15];
      }
    }
  }

  description = self->_description;
  self->_description = descriptionCopy;
  v17 = descriptionCopy;

  v18 = [objc_opt_class() _labelWithDescription:self->_description forWidth:width];
  label = self->_label;
  self->_label = v18;

  [(SKUIHandleRulesSettingsHeaderFooterDescriptionView *)self addSubview:self->_label];
}

- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIHandleRulesSettingsHeaderFooterDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

- (void)layoutSubviews
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIHandleRulesSettingsHeaderFooterDescriptionView layoutSubviews]";
}

+ (id)_labelWithDescription:(id)description forWidth:(double)width
{
  v5 = MEMORY[0x277D756B8];
  descriptionCopy = description;
  v7 = objc_alloc_init(v5);
  text = [descriptionCopy text];
  [v7 setText:text];
  [v7 setNumberOfLines:0];
  v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D769E0]];
  [v7 setFont:v9];
  showInvalid = [descriptionCopy showInvalid];

  if (showInvalid)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v11 = ;
  [v7 setColor:v11];
  [v7 sizeThatFits:{width, 1.0}];
  [v7 setFrame:{0.0, 0.0, width, v12}];

  return v7;
}

+ (void)prefetchResourcesForSettingsHeaderFooterDescription:(uint64_t)a3 reason:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIHandleRulesSettingsHeaderFooterDescriptionView prefetchResourcesForSettingsHeaderFooterDescription:reason:context:]";
}

+ (void)preferredSizeForSettingsHeaderFooterDescription:(uint64_t)a3 context:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIHandleRulesSettingsHeaderFooterDescriptionView preferredSizeForSettingsHeaderFooterDescription:context:]";
}

+ (void)requestLayoutForSettingsHeaderFooterDescription:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIHandleRulesSettingsHeaderFooterDescriptionView requestLayoutForSettingsHeaderFooterDescription:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 settingsHeaderFooterDescription:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIHandleRulesSettingsHeaderFooterDescriptionView sizeThatFitsWidth:settingsHeaderFooterDescription:context:]";
}

- (void)reloadWithSettingsHeaderFooterDescription:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIHandleRulesSettingsHeaderFooterDescriptionView reloadWithSettingsHeaderFooterDescription:width:context:]";
}

- (void)setImage:(uint64_t)a3 forArtworkRequest:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIHandleRulesSettingsHeaderFooterDescriptionView setImage:forArtworkRequest:context:]";
}

@end