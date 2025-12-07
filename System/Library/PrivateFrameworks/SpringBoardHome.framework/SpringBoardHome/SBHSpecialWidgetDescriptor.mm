@interface SBHSpecialWidgetDescriptor
- (BOOL)isEqual:(id)equal;
- (SBHSpecialWidgetDescriptor)initWithCoder:(id)coder;
- (id)_initWithType:(unint64_t)type supportedSizeClasses:(unint64_t)classes;
- (id)accentColor;
- (id)backgroundColor;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)succinctDescriptionBuilder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SBHSpecialWidgetDescriptor

- (id)_initWithType:(unint64_t)type supportedSizeClasses:(unint64_t)classes
{
  v7 = [objc_alloc(MEMORY[0x1E6994290]) initWithExtensionBundleIdentifier:&stru_1F3D472A8 containerBundleIdentifier:0 deviceIdentifier:0];
  v23.receiver = self;
  v23.super_class = SBHSpecialWidgetDescriptor;
  v8 = [(SBHSpecialWidgetDescriptor *)&v23 initWithExtensionIdentity:v7 kind:&stru_1F3D472A8 supportedFamilies:classes intentType:0];
  v9 = v8;
  if (v8)
  {
    v10 = type - 1;
    if (type - 1 > 5)
    {
      v13 = @"None";
    }

    else
    {
      v11 = off_1E808C710[v10];
      v12 = SBHBundle(v8);
      v13 = [v12 localizedStringForKey:v11 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    }

    v14 = [(__CFString *)v13 copy];
    displayName = v9->_displayName;
    v9->_displayName = v14;

    if (v10 > 5)
    {
      v19 = @"None";
    }

    else
    {
      v17 = off_1E808C740[v10];
      v18 = SBHBundle(v16);
      v19 = [v18 localizedStringForKey:v17 value:&stru_1F3D472A8 table:@"SpringBoardHome"];
    }

    v20 = [(__CFString *)v19 copy];
    description = v9->_description;
    v9->_description = v20;

    v9->_type = type;
  }

  return v9;
}

- (id)backgroundColor
{
  if (self->_type == 5)
  {
    systemTealColor = [MEMORY[0x1E69DC888] systemTealColor];
  }

  else
  {
    systemTealColor = 0;
  }

  return systemTealColor;
}

- (id)accentColor
{
  if (self->_type == 5)
  {
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  }

  else
  {
    whiteColor = 0;
  }

  return whiteColor;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v9 = [v8 type], v9 == -[SBHSpecialWidgetDescriptor type](self, "type")))
  {
    v12.receiver = self;
    v12.super_class = SBHSpecialWidgetDescriptor;
    v10 = [(SBHSpecialWidgetDescriptor *)&v12 isEqual:v6];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = SBHSpecialWidgetDescriptor;
  v3 = [(SBHSpecialWidgetDescriptor *)&v7 hash];
  displayName = [(SBHSpecialWidgetDescriptor *)self displayName];
  v5 = [displayName hash];

  return v5 ^ v3;
}

- (id)succinctDescriptionBuilder
{
  v5.receiver = self;
  v5.super_class = SBHSpecialWidgetDescriptor;
  succinctDescriptionBuilder = [(SBHSpecialWidgetDescriptor *)&v5 succinctDescriptionBuilder];
  [succinctDescriptionBuilder appendString:self->_displayName withName:@"displayName"];
  [succinctDescriptionBuilder appendString:self->_description withName:@"description"];

  return succinctDescriptionBuilder;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v6.receiver = self;
  v6.super_class = SBHSpecialWidgetDescriptor;
  v4 = [(SBHSpecialWidgetDescriptor *)&v6 descriptionBuilderWithMultilinePrefix:prefix];
  [v4 appendString:self->_displayName withName:@"displayName"];
  [v4 appendString:self->_description withName:@"description"];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = SBHSpecialWidgetDescriptor;
  coderCopy = coder;
  [(SBHSpecialWidgetDescriptor *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (SBHSpecialWidgetDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SBHSpecialWidgetDescriptor;
  v5 = [(SBHSpecialWidgetDescriptor *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

@end