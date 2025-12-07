@interface CESymbolIcon
- (CESymbolIcon)initWithCoder:(id)coder;
- (CESymbolIcon)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CESymbolIcon

- (CESymbolIcon)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = CESymbolIcon;
  v5 = [(CEIcon *)&v27 initWithDictionary:dictionaryCopy];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"id"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v8 = v6;
      identifier = v5->_identifier;
      v5->_identifier = v8;
    }

    else
    {
      identifier = _CELogSystem(isKindOfClass);
      if (os_log_type_enabled(identifier, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:v5];
      }
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"path"];
    objc_opt_class();
    v11 = objc_opt_isKindOfClass();
    if (v11)
    {
      v12 = v10;
      path = v5->_path;
      v5->_path = v12;
    }

    else
    {
      path = _CELogSystem(v11);
      if (os_log_type_enabled(path, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:v5];
      }
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"color"];
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      v16 = v14;
      systemColorName = v5->_systemColorName;
      v5->_systemColorName = v16;
    }

    else
    {
      systemColorName = _CELogSystem(v15);
      if (os_log_type_enabled(systemColorName, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:v5];
      }
    }

    v18 = [dictionaryCopy objectForKeyedSubscript:@"foregroundColor"];
    objc_opt_class();
    v19 = objc_opt_isKindOfClass();
    if (v19)
    {
      v20 = v18;
      foregroundSystemColorName = v5->_foregroundSystemColorName;
      v5->_foregroundSystemColorName = v20;
    }

    else
    {
      foregroundSystemColorName = _CELogSystem(v19);
      if (os_log_type_enabled(foregroundSystemColorName, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:v5];
      }
    }

    v22 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();
    if (v23)
    {
      v24 = v22;
      backgroundSystemColorName = v5->_backgroundSystemColorName;
      v5->_backgroundSystemColorName = v24;
    }

    else
    {
      backgroundSystemColorName = _CELogSystem(v23);
      if (os_log_type_enabled(backgroundSystemColorName, OS_LOG_TYPE_DEBUG))
      {
        [CESymbolIcon initWithDictionary:v5];
      }
    }
  }

  return v5;
}

- (CESymbolIcon)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CESymbolIcon;
  v5 = [(CEIcon *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"id"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    path = v5->_path;
    v5->_path = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"systemColorName"];
    systemColorName = v5->_systemColorName;
    v5->_systemColorName = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"foregroundSystemColorName"];
    foregroundSystemColorName = v5->_foregroundSystemColorName;
    v5->_foregroundSystemColorName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"backgroundSystemColorName"];
    backgroundSystemColorName = v5->_backgroundSystemColorName;
    v5->_backgroundSystemColorName = v14;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CESymbolIcon;
  v4 = [(CEIcon *)&v6 copyWithZone:zone];
  [v4 setIdentifier:self->_identifier];
  [v4 setPath:self->_path];
  [v4 setSystemColorName:self->_systemColorName];
  [v4 setForegroundSystemColorName:self->_foregroundSystemColorName];
  [v4 setBackgroundSystemColorName:self->_backgroundSystemColorName];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CESymbolIcon;
  coderCopy = coder;
  [(CEIcon *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_identifier forKey:{@"id", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_path forKey:@"path"];
  [coderCopy encodeObject:self->_systemColorName forKey:@"systemColorName"];
  [coderCopy encodeObject:self->_foregroundSystemColorName forKey:@"foregroundSystemColorName"];
  [coderCopy encodeObject:self->_backgroundSystemColorName forKey:@"backgroundSystemColorName"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CESymbolIcon;
  v3 = [(CEIcon *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" id: %@, path: %@, systemColorName: %@, foregroundSystemColorName: %@, backgroundSystemColorName: %@", self->_identifier, self->_path, self->_systemColorName, self->_foregroundSystemColorName, self->_backgroundSystemColorName];

  return v4;
}

- (void)initWithDictionary:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse identifier from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse path from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse color from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.4(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse foreground color from dictionary", v5, v6, v7, v8);
}

- (void)initWithDictionary:(uint64_t)a1 .cold.5(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = OUTLINED_FUNCTION_1(v1);
  OUTLINED_FUNCTION_0(&dword_2439E1000, v3, v4, "%@ Unable to parse background color from dictionary", v5, v6, v7, v8);
}

@end