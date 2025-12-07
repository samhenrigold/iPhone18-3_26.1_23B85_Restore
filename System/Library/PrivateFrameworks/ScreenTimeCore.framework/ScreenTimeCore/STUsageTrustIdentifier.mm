@interface STUsageTrustIdentifier
- (BOOL)isEqual:(id)equal;
- (STUsageTrustIdentifier)initWithCoder:(id)coder;
- (STUsageTrustIdentifier)initWithIdentifier:(id)identifier usageTrusted:(BOOL)trusted;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_stUsageTrustIdentifierCommonInitWithIdentifier:(id)identifier usageTrusted:(BOOL)trusted;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STUsageTrustIdentifier

- (STUsageTrustIdentifier)initWithIdentifier:(id)identifier usageTrusted:(BOOL)trusted
{
  trustedCopy = trusted;
  v8.receiver = self;
  v8.super_class = STUsageTrustIdentifier;
  identifierCopy = identifier;
  v6 = [(STUsageTrustIdentifier *)&v8 init];
  [(STUsageTrustIdentifier *)v6 _stUsageTrustIdentifierCommonInitWithIdentifier:identifierCopy usageTrusted:trustedCopy, v8.receiver, v8.super_class];

  return v6;
}

- (STUsageTrustIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
  v6 = [coderCopy containsValueForKey:@"UsageTrusted"];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = v6;

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      [(STUsageTrustIdentifier *)v5 initWithCoder:v8];
    }

    v9 = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STUsageTrustIdentifier;
    v9 = [(STUsageTrustIdentifier *)&v11 init];
    -[STUsageTrustIdentifier _stUsageTrustIdentifierCommonInitWithIdentifier:usageTrusted:](v9, "_stUsageTrustIdentifierCommonInitWithIdentifier:usageTrusted:", v5, [coderCopy decodeBoolForKey:@"UsageTrusted"]);
  }

  return v9;
}

- (void)_stUsageTrustIdentifierCommonInitWithIdentifier:(id)identifier usageTrusted:(BOOL)trusted
{
  v6 = [identifier copy];
  identifier = self->_identifier;
  self->_identifier = v6;

  self->_usageTrusted = trusted;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"Identifier"];
  [coderCopy encodeBool:self->_usageTrusted forKey:@"UsageTrusted"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(STUsageTrustIdentifier *)self identifier];
    identifier2 = [v5 identifier];
    if ([identifier isEqualToString:identifier2])
    {
      usageTrusted = [(STUsageTrustIdentifier *)self usageTrusted];
      v9 = usageTrusted ^ [v5 usageTrusted] ^ 1;
    }

    else
    {
      LOBYTE(v9) = 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  identifier = [(STUsageTrustIdentifier *)self identifier];
  v4 = [identifier hash];
  usageTrusted = [(STUsageTrustIdentifier *)self usageTrusted];

  return v4 ^ usageTrusted;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [STUsageTrustIdentifier allocWithZone:zone];
  identifier = self->_identifier;
  usageTrusted = self->_usageTrusted;

  return [(STUsageTrustIdentifier *)v4 initWithIdentifier:identifier usageTrusted:usageTrusted];
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, char a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  v3 = a1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_fault_impl(&dword_1B831F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to decode STUsageTrustIdentifier with identifier: %{public}@, hasUsageTrustedKey: %d", &v2, 0x12u);
}

@end