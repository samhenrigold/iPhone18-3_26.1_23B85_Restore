@interface SKUIImageViewElementCacheKey
- (BOOL)isEqual:(id)equal;
- (SKUIImageViewElementCacheKey)initWithURL:(id)l size:(CGSize)size imageTreatment:(id)treatment;
@end

@implementation SKUIImageViewElementCacheKey

- (SKUIImageViewElementCacheKey)initWithURL:(id)l size:(CGSize)size imageTreatment:(id)treatment
{
  height = size.height;
  width = size.width;
  lCopy = l;
  treatmentCopy = treatment;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v12 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        [(SKUIImageViewElementCacheKey *)v12 initWithURL:v13 size:v14 imageTreatment:v15, v16, v17, v18, v19];
      }
    }
  }

  v22.receiver = self;
  v22.super_class = SKUIImageViewElementCacheKey;
  v20 = [(SKUIImageViewElementCacheKey *)&v22 init];
  if (v20)
  {
    v20->_imageTreatment = SKUIImageTreatmentForString(treatmentCopy);
    v20->_size.width = width;
    v20->_size.height = height;
    objc_storeStrong(&v20->_url, l);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && *&self->_size.height == *&equalCopy->_size.height && *&self->_size.width == *&equalCopy->_size.width && self->_imageTreatment == equalCopy->_imageTreatment)
    {
      v6 = [(NSURL *)self->_url isEqual:equalCopy->_url];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (void)initWithURL:(uint64_t)a3 size:(uint64_t)a4 imageTreatment:(uint64_t)a5 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIImageViewElementCacheKey initWithURL:size:imageTreatment:]";
}

@end