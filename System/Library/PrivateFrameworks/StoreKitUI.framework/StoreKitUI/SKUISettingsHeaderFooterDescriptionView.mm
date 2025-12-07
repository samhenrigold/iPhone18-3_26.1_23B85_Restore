@interface SKUISettingsHeaderFooterDescriptionView
+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context;
+ (CGSize)preferredSizeForSettingsHeaderFooterDescription:(id)description context:(id)context;
+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context;
+ (void)requestLayoutForSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
- (BOOL)setImage:(id)image forArtworkRequest:(id)request context:(id)context;
- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context;
@end

@implementation SKUISettingsHeaderFooterDescriptionView

+ (BOOL)prefetchResourcesForSettingsHeaderFooterDescription:(id)description reason:(int64_t)reason context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISettingsHeaderFooterDescriptionView *)v5 prefetchResourcesForSettingsHeaderFooterDescription:v6 reason:v7 context:v8, v9, v10, v11, v12];
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
        [(SKUISettingsHeaderFooterDescriptionView *)v4 preferredSizeForSettingsHeaderFooterDescription:v5 context:v6, v7, v8, v9, v10, v11];
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
      [(SKUISettingsHeaderFooterDescriptionView *)v5 requestLayoutForSettingsHeaderFooterDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
}

+ (CGSize)sizeThatFitsWidth:(double)width settingsHeaderFooterDescription:(id)description context:(id)context
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUISettingsHeaderFooterDescriptionView *)v5 sizeThatFitsWidth:v6 settingsHeaderFooterDescription:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = *MEMORY[0x277CBF3A8];
  v14 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)reloadWithSettingsHeaderFooterDescription:(id)description width:(double)width context:(id)context
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl())
  {
    v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
    if (v5)
    {
      [(SKUISettingsHeaderFooterDescriptionView *)v5 reloadWithSettingsHeaderFooterDescription:v6 width:v7 context:v8, v9, v10, v11, v12];
    }
  }
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
        [(SKUISettingsHeaderFooterDescriptionView *)v5 setImage:v6 forArtworkRequest:v7 context:v8, v9, v10, v11, v12];
      }
    }
  }

  return 0;
}

+ (void)prefetchResourcesForSettingsHeaderFooterDescription:(uint64_t)a3 reason:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUISettingsHeaderFooterDescriptionView prefetchResourcesForSettingsHeaderFooterDescription:reason:context:]";
}

+ (void)preferredSizeForSettingsHeaderFooterDescription:(uint64_t)a3 context:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUISettingsHeaderFooterDescriptionView preferredSizeForSettingsHeaderFooterDescription:context:]";
}

+ (void)requestLayoutForSettingsHeaderFooterDescription:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUISettingsHeaderFooterDescriptionView requestLayoutForSettingsHeaderFooterDescription:width:context:]";
}

+ (void)sizeThatFitsWidth:(uint64_t)a3 settingsHeaderFooterDescription:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUISettingsHeaderFooterDescriptionView sizeThatFitsWidth:settingsHeaderFooterDescription:context:]";
}

- (void)reloadWithSettingsHeaderFooterDescription:(uint64_t)a3 width:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUISettingsHeaderFooterDescriptionView reloadWithSettingsHeaderFooterDescription:width:context:]";
}

- (void)setImage:(uint64_t)a3 forArtworkRequest:(uint64_t)a4 context:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUISettingsHeaderFooterDescriptionView setImage:forArtworkRequest:context:]";
}

@end