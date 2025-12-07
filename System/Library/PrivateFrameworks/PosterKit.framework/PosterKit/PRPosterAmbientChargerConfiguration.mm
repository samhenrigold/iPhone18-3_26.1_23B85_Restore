@interface PRPosterAmbientChargerConfiguration
+ (id)decodeObjectWithJSON:(id)n;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToChargerConfiguration:(id)configuration;
- (NSString)description;
- (PRPosterAmbientChargerConfiguration)init;
- (PRPosterAmbientChargerConfiguration)initWithAssociatedChargerIdentifiers:(id)identifiers;
- (PRPosterAmbientChargerConfiguration)initWithBSXPCCoder:(id)coder;
- (PRPosterAmbientChargerConfiguration)initWithCoder:(id)coder;
- (id)encodeJSON;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterAmbientChargerConfiguration

- (PRPosterAmbientChargerConfiguration)init
{
  v6.receiver = self;
  v6.super_class = PRPosterAmbientChargerConfiguration;
  v2 = [(PRPosterAmbientChargerConfiguration *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    associatedChargerIdentifiers = v2->_associatedChargerIdentifiers;
    v2->_associatedChargerIdentifiers = v3;
  }

  return v2;
}

- (PRPosterAmbientChargerConfiguration)initWithAssociatedChargerIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v11.receiver = self;
  v11.super_class = PRPosterAmbientChargerConfiguration;
  v5 = [(PRPosterAmbientChargerConfiguration *)&v11 init];
  if (v5)
  {
    v6 = [identifiersCopy copy];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = [MEMORY[0x1E695DFD8] set];
    }

    associatedChargerIdentifiers = v5->_associatedChargerIdentifiers;
    v5->_associatedChargerIdentifiers = v8;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    v7 = (isKindOfClass & 1) != 0 && [(PRPosterAmbientChargerConfiguration *)self isEqualToChargerConfiguration:equalCopy];
  }

  return v7;
}

- (BOOL)isEqualToChargerConfiguration:(id)configuration
{
  if (configuration == self)
  {
    return 1;
  }

  else
  {
    return [*(configuration + 1) isEqualToSet:self->_associatedChargerIdentifiers];
  }
}

- (NSString)description
{
  v3 = [MEMORY[0x1E698E680] builderWithObject:self];
  allObjects = [(NSSet *)self->_associatedChargerIdentifiers allObjects];
  v5 = [allObjects sortedArrayUsingSelector:sel_compare_];

  [v3 appendArraySection:v5 withName:@"associatedChargerIdentifiers" skipIfEmpty:1];
  build = [v3 build];

  return build;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [PRMutablePosterAmbientChargerConfiguration allocWithZone:zone];
  associatedChargerIdentifiers = self->_associatedChargerIdentifiers;

  return [(PRPosterAmbientChargerConfiguration *)v4 initWithAssociatedChargerIdentifiers:associatedChargerIdentifiers];
}

- (PRPosterAmbientChargerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = PRPosterAmbientChargerConfiguration;
  v5 = [(PRPosterAmbientChargerConfiguration *)&v12 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_associatedChargerIdentifiers"];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [MEMORY[0x1E695DFD8] set];
    }

    associatedChargerIdentifiers = v5->_associatedChargerIdentifiers;
    v5->_associatedChargerIdentifiers = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  associatedChargerIdentifiers = self->_associatedChargerIdentifiers;
  if (associatedChargerIdentifiers)
  {
    coderCopy = coder;
    [coderCopy encodeObject:associatedChargerIdentifiers forKey:@"_associatedChargerIdentifiers"];
  }

  else
  {
    v4 = MEMORY[0x1E695DFD8];
    coderCopy2 = coder;
    coderCopy = [v4 set];
    [coderCopy2 encodeObject:? forKey:?];
  }
}

- (PRPosterAmbientChargerConfiguration)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PRPosterAmbientChargerConfiguration;
  v5 = [(PRPosterAmbientChargerConfiguration *)&v10 init];
  if (v5)
  {
    v6 = objc_opt_self();
    v7 = [coderCopy decodeObjectOfClass:v6 forKey:@"_associatedChargerIdentifiers"];
    associatedChargerIdentifiers = v5->_associatedChargerIdentifiers;
    v5->_associatedChargerIdentifiers = v7;
  }

  return v5;
}

- (id)encodeJSON
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  associatedChargerIdentifiers = [(PRPosterAmbientChargerConfiguration *)self associatedChargerIdentifiers];
  allObjects = [associatedChargerIdentifiers allObjects];
  [dictionary bs_setSafeObject:allObjects forKey:@"associatedChargerIdentifiers"];

  attributeType = [(PRPosterAmbientChargerConfiguration *)self attributeType];
  [dictionary bs_setSafeObject:attributeType forKey:@"attributeType"];

  v12 = 0;
  v7 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionary options:0 error:&v12];
  v8 = v12;
  v9 = v8;
  if (v8)
  {
    v10 = PRLogCommon(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)self encodeJSON];
    }
  }

  return v7;
}

+ (id)decodeObjectWithJSON:(id)n
{
  v11 = 0;
  v3 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v11];
  isKindOfClass = v11;
  v5 = isKindOfClass;
  if (v3 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0) && !v5)
  {
    v6 = [v3 objectForKey:@"associatedChargerIdentifiers"];
    v7 = objc_alloc(objc_opt_class());
    v8 = [MEMORY[0x1E695DFD8] setWithArray:v6];
    v9 = [v7 initWithAssociatedChargerIdentifiers:v8];
  }

  else
  {
    v6 = PRLogCommon(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(PRPosterMetadata *)v5 decodeObjectWithJSON:v6];
    }

    v9 = 0;
  }

  return v9;
}

@end