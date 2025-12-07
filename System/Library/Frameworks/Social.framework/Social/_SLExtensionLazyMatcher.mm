@interface _SLExtensionLazyMatcher
- (NSExtension)extension;
- (_SLExtensionLazyMatcher)initWithIdentifier:(id)identifier;
@end

@implementation _SLExtensionLazyMatcher

- (_SLExtensionLazyMatcher)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = _SLExtensionLazyMatcher;
  v5 = [(_SLExtensionLazyMatcher *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (NSExtension)extension
{
  extension = self->_extension;
  if (!extension)
  {
    identifier = self->_identifier;
    v15 = 0;
    v6 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:identifier error:&v15];
    v7 = v15;
    v8 = self->_extension;
    self->_extension = v6;

    _SLLog(v2, 7, @"_SLExtensionLazyMatcher for %@ got extension %@ error %{public}@", v9, v10, v11, v12, v13, self->_identifier);
    extension = self->_extension;
  }

  return extension;
}

@end