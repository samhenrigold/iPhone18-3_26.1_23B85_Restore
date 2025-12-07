@interface FASettingsPresetSource
- (BOOL)isEqual:(id)equal;
- (FASettingsPresetSource)initWithCoder:(id)coder;
- (FASettingsPresetSource)initWithDictionary:(id)dictionary;
- (FASettingsPresetSource)initWithIdentifier:(id)identifier configuration:(id)configuration;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FASettingsPresetSource

- (FASettingsPresetSource)initWithIdentifier:(id)identifier configuration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = FASettingsPresetSource;
  v8 = [(FASettingsPresetSource *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_configuration, configuration);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = self->_identifier;
    identifier = [v5 identifier];
    if ([(NSString *)identifier isEqualToString:identifier])
    {
      configuration = self->_configuration;
      configuration = [v5 configuration];
      v10 = [(FASettingsPresetConfiguration *)configuration isEqual:configuration];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_configuration forKey:@"values"];
}

- (FASettingsPresetSource)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"values"];

  v7 = [(FASettingsPresetSource *)self initWithIdentifier:v5 configuration:v6];
  return v7;
}

- (FASettingsPresetSource)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v6 = _FALogSystem(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:?];
    }
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  objc_opt_class();
  v8 = objc_opt_isKindOfClass();
  if ((v8 & 1) == 0)
  {
    v9 = _FALogSystem(v8);
    if (os_log_type_enabled(&v9->super, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:?];
    }

    goto LABEL_13;
  }

  v9 = [[FASettingsPresetConfiguration alloc] initWithDictionary:dictionaryCopy];
  if (!v9)
  {
    v11 = _FALogSystem(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FASettingsPresetConfiguration initWithDictionary:?];
    }

LABEL_13:
    selfCopy = 0;
    goto LABEL_14;
  }

  self = [(FASettingsPresetSource *)self initWithIdentifier:v7 configuration:v9];
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(FASettingsPresetSource *)self identifier];
  configuration = [(FASettingsPresetSource *)self configuration];
  v7 = [v3 stringWithFormat:@"<%@: %p> ({\n identifier: %@\n configuration: %@\n)}", v4, self, identifier, configuration];

  return v7;
}

@end