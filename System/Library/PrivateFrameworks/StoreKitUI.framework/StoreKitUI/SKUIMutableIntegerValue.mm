@interface SKUIMutableIntegerValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)hash;
@end

@implementation SKUIMutableIntegerValue

- (unint64_t)hash
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIMutableIntegerValue *)v3 hash:v4];
      }
    }
  }

  return ~self->_integerValue;
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
        [(SKUIMutableIntegerValue *)v5 isEqual:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    v13 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_integerValue == self->_integerValue;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIMutableIntegerValue *)v5 copyWithZone:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v13 setIntegerValue:self->_integerValue];
  return v13;
}

- (void)hash
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIMutableIntegerValue hash]";
}

- (void)isEqual:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIMutableIntegerValue isEqual:]";
}

- (void)copyWithZone:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIMutableIntegerValue copyWithZone:]";
}

@end