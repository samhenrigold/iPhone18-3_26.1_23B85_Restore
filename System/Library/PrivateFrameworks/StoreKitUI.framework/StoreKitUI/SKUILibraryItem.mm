@interface SKUILibraryItem
- (BOOL)isEqual:(id)equal;
- (NSNumber)storeItemIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)description;
- (void)hash;
- (void)storeItemIdentifier;
@end

@implementation SKUILibraryItem

- (NSNumber)storeItemIdentifier
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUILibraryItem *)v3 storeItemIdentifier:v4];
      }
    }
  }

  storeIdentifier = [(SKUILibraryItem *)self storeIdentifier];
  itemIdentifier = [storeIdentifier itemIdentifier];

  return itemIdentifier;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILibraryItem copyWithZone:];
  }

  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_storeFlavorIdentifier copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(SKUIStoreIdentifier *)self->_storeIdentifier copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (id)description
{
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    [SKUILibraryItem description];
  }

  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = SKUILibraryItem;
  v4 = [(SKUILibraryItem *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@: [%@, %@]", v4, self->_storeIdentifier, self->_storeFlavorIdentifier];

  return v5;
}

- (unint64_t)hash
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v3)
      {
        [(SKUILibraryItem *)v3 hash:v4];
      }
    }
  }

  storeItemIdentifier = [(SKUILibraryItem *)self storeItemIdentifier];
  v12 = [storeItemIdentifier hash];
  v13 = [(NSString *)self->_storeFlavorIdentifier hash]^ v12;
  v14 = [(SKUIStoreIdentifier *)self->_storeIdentifier hash];

  return v13 ^ v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG);
      if (v5)
      {
        [(SKUILibraryItem *)v5 isEqual:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = objc_opt_class();
  if (v13 == objc_opt_class() && (storeIdentifier = self->_storeIdentifier) != 0 && (storeIdentifier == equalCopy[1] || [(SKUIStoreIdentifier *)storeIdentifier isEqual:?]))
  {
    storeFlavorIdentifier = self->_storeFlavorIdentifier;
    if (storeFlavorIdentifier == equalCopy[2])
    {
      isEqualToString = 1;
    }

    else
    {
      isEqualToString = objc_msgSend_isEqualToString_(storeFlavorIdentifier);
    }
  }

  else
  {
    isEqualToString = 0;
  }

  return isEqualToString;
}

- (void)storeItemIdentifier
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUILibraryItem storeItemIdentifier]";
}

- (void)copyWithZone:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILibraryItem copyWithZone:]";
}

- (void)description
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUILibraryItem description]";
}

- (void)hash
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUILibraryItem hash]";
}

- (void)isEqual:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUILibraryItem isEqual:]";
}

@end