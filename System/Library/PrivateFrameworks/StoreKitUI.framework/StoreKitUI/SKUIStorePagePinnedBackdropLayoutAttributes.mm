@interface SKUIStorePagePinnedBackdropLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)hash;
@end

@implementation SKUIStorePagePinnedBackdropLayoutAttributes

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStorePagePinnedBackdropLayoutAttributes *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v15.receiver = self;
  v15.super_class = SKUIStorePagePinnedBackdropLayoutAttributes;
  v13 = [(UICollectionViewLayoutAttributes *)&v15 copyWithZone:zone];
  [v13 setBackdropColor:self->_backdropColor];
  [v13 setBackdropGroupName:self->_backdropGroupName];
  [v13 setBackdropStyle:self->_backdropStyle];
  [v13 setHidesBackdropView:self->_hidesBackdropView];
  [v13 setTransitionProgress:self->_transitionProgress];
  return v13;
}

- (unint64_t)hash
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIStorePagePinnedBackdropLayoutAttributes *)v3 hash:v4];
      }
    }
  }

  v16.receiver = self;
  v16.super_class = SKUIStorePagePinnedBackdropLayoutAttributes;
  v11 = [(UICollectionViewLayoutAttributes *)&v16 hash];
  v12 = [(UIColor *)self->_backdropColor hash]^ v11;
  v13 = [(NSString *)self->_backdropGroupName hash];
  v14 = 10000;
  if (!self->_hidesBackdropView)
  {
    v14 = 0;
  }

  return v12 ^ v13 ^ self->_backdropStyle ^ v14 ^ llround(self->_transitionProgress * 1000.0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIStorePagePinnedBackdropLayoutAttributes *)v5 isEqual:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (self == equalCopy)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = equalCopy;
      v18.receiver = self;
      v18.super_class = SKUIStorePagePinnedBackdropLayoutAttributes;
      v16 = [(UICollectionViewLayoutAttributes *)&v18 isEqual:v13]&& ((backdropColor = self->_backdropColor, backdropColor == v13->_backdropColor) || [(UIColor *)backdropColor isEqual:?]) && ((backdropGroupName = self->_backdropGroupName, backdropGroupName == v13->_backdropGroupName) || objc_msgSend_isEqualToString_(backdropGroupName)) && self->_backdropStyle == v13->_backdropStyle && self->_hidesBackdropView == v13->_hidesBackdropView && self->_transitionProgress != v13->_transitionProgress;
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (void)copyWithZone:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePagePinnedBackdropLayoutAttributes copyWithZone:]";
}

- (void)hash
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePagePinnedBackdropLayoutAttributes hash]";
}

- (void)isEqual:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIStorePagePinnedBackdropLayoutAttributes isEqual:]";
}

@end