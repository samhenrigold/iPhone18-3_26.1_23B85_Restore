@interface CEImageIcon
- (CEImageIcon)initWithCoder:(id)coder;
- (CEImageIcon)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CEImageIcon

- (CEImageIcon)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v18.receiver = self;
  v18.super_class = CEImageIcon;
  v5 = [(CEIcon *)&v18 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"iconUrls"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = [v6 objectForKeyedSubscript:@"1x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = [MEMORY[0x277CBEBC0] URLWithString:v8];
        URL1x = v5->_URL1x;
        v5->_URL1x = v9;
      }

      v11 = [v6 objectForKeyedSubscript:@"2x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = [MEMORY[0x277CBEBC0] URLWithString:v11];
        URL2x = v5->_URL2x;
        v5->_URL2x = v12;
      }

      v14 = [v6 objectForKeyedSubscript:@"3x"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = [MEMORY[0x277CBEBC0] URLWithString:v14];
        URL3x = v5->_URL3x;
        v5->_URL3x = v15;
      }
    }

    else
    {
      v8 = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [CEImageIcon initWithDictionary:v5];
      }
    }
  }

  return v5;
}

- (CEImageIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CEImageIcon;
  v5 = [(CEIcon *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url1x"];
    URL1x = v5->_URL1x;
    v5->_URL1x = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url2x"];
    URL2x = v5->_URL2x;
    v5->_URL2x = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url3x"];
    URL3x = v5->_URL3x;
    v5->_URL3x = v10;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CEImageIcon;
  v4 = [(CEIcon *)&v6 copyWithZone:zone];
  [v4 setURL1x:self->_URL1x];
  [v4 setURL2x:self->_URL2x];
  [v4 setURL3x:self->_URL3x];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CEImageIcon;
  coderCopy = coder;
  [(CEIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_URL1x forKey:{@"url1x", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_URL2x forKey:@"url2x"];
  [coderCopy encodeObject:self->_URL3x forKey:@"url3x"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CEImageIcon;
  v3 = [(CEIcon *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" url1x: %@ url2x: %@ url3x: %@", self->_URL1x, self->_URL2x, self->_URL3x];

  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse urls from dictionary", v5, v6, v7, v8);
}

@end