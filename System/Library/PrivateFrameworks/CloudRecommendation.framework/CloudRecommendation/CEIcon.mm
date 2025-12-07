@interface CEIcon
- (CEIcon)initWithCoder:(id)coder;
- (CEIcon)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CEIcon

- (CEIcon)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = CEIcon;
  v5 = [(CEIcon *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
      type = v5->_type;
      v5->_type = v8;
    }

    else
    {
      type = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(type, OS_LOG_TYPE_DEBUG))
      {
        [CEIcon initWithDictionary:v5];
      }
    }
  }

  return v5;
}

- (CEIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CEIcon;
  v5 = [(CEIcon *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CEIcon allocWithZone:?]];
  [(CEIcon *)v4 setType:self->_type];
  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse type from dictionary", v5, v6, v7, v8);
}

@end