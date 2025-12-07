@interface LSSystemBundleIdentity
- (BOOL)isEqual:(id)equal;
- (LSSystemBundleIdentity)initWithBundleIdentifier:(id)identifier;
- (LSSystemBundleIdentity)initWithCoder:(id)coder;
- (LSSystemBundleIdentity)initWithIdentityString:(id)string parsedIdentityStringDictionary:(id)dictionary error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSSystemBundleIdentity

- (LSSystemBundleIdentity)initWithIdentityString:(id)string parsedIdentityStringDictionary:(id)dictionary error:(id *)error
{
  stringCopy = string;
  v8 = [dictionary objectForKey:@"b"];
  v13.receiver = self;
  v13.super_class = LSSystemBundleIdentity;
  v9 = [(LSBundleIdentity *)&v13 initWithIdentityString:stringCopy personaUniqueString:0 personaType:4];

  if (v9)
  {
    v10 = [v8 copy];
    bundleIdentifier = v9->_bundleIdentifier;
    v9->_bundleIdentifier = v10;
  }

  return v9;
}

- (LSSystemBundleIdentity)initWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v16 = 0;
  v5 = [MEMORY[0x1E696ACB0] dataWithJSONObject:identifierCopy options:4 error:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
  }

  else
  {
    v9 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      computeIdentityString(v7, v9);
    }

    v8 = @"<ERROR>";
  }

  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{v:2, b:%@, it:%lu}", v8, 1];

  v15.receiver = self;
  v15.super_class = LSSystemBundleIdentity;
  v11 = [(LSBundleIdentity *)&v15 initWithIdentityString:v10 personaUniqueString:0 personaType:4];

  if (v11)
  {
    v12 = [identifierCopy copy];
    bundleIdentifier = v11->_bundleIdentifier;
    v11->_bundleIdentifier = v12;
  }

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = LSSystemBundleIdentity;
  coderCopy = coder;
  [(LSBundleIdentity *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:{@"bundleIdentifier", v5.receiver, v5.super_class}];
}

- (LSSystemBundleIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = LSSystemBundleIdentity;
  v5 = [(LSBundleIdentity *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v6;
  }

  return v5;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = LSSystemBundleIdentity;
  return [(NSString *)self->_bundleIdentifier hash]^ __ROR8__([(LSBundleIdentity *)&v3 hash], 56);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    bundleIdentifier = self->_bundleIdentifier;
    if (bundleIdentifier == equalCopy[4])
    {
      v6 = 1;
    }

    else
    {
      v6 = [(NSString *)bundleIdentifier isEqualToString:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end