@interface TRIVersionedNamespace
+ (id)versionedNamespaceWithName:(id)name compatibilityVersion:(unsigned int)version;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToVersionedNamespace:(id)namespace;
- (TRIVersionedNamespace)initWithCoder:(id)coder;
- (TRIVersionedNamespace)initWithName:(id)name compatibilityVersion:(unsigned int)version;
- (id)copyWithReplacementCompatibilityVersion:(unsigned int)version;
- (id)copyWithReplacementName:(id)name;
- (id)description;
- (id)userFacingString;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIVersionedNamespace

- (id)userFacingString
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = [(TRIVersionedNamespace *)self name];
  v5 = [v3 initWithFormat:@"%@.%u", name, -[TRIVersionedNamespace compatibilityVersion](self, "compatibilityVersion")];

  return v5;
}

- (TRIVersionedNamespace)initWithName:(id)name compatibilityVersion:(unsigned int)version
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIVersionedNamespace.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"name != nil"}];
  }

  v13.receiver = self;
  v13.super_class = TRIVersionedNamespace;
  v9 = [(TRIVersionedNamespace *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    v10->_compatibilityVersion = version;
  }

  return v10;
}

+ (id)versionedNamespaceWithName:(id)name compatibilityVersion:(unsigned int)version
{
  v4 = *&version;
  nameCopy = name;
  v7 = [[self alloc] initWithName:nameCopy compatibilityVersion:v4];

  return v7;
}

- (id)copyWithReplacementName:(id)name
{
  nameCopy = name;
  v5 = [objc_alloc(objc_opt_class()) initWithName:nameCopy compatibilityVersion:self->_compatibilityVersion];

  return v5;
}

- (id)copyWithReplacementCompatibilityVersion:(unsigned int)version
{
  v3 = *&version;
  v5 = objc_alloc(objc_opt_class());
  name = self->_name;

  return [v5 initWithName:name compatibilityVersion:v3];
}

- (BOOL)isEqualToVersionedNamespace:(id)namespace
{
  namespaceCopy = namespace;
  v5 = namespaceCopy;
  if (!namespaceCopy || (v6 = self->_name == 0, [namespaceCopy name], v7 = objc_claimAutoreleasedReturnValue(), v8 = v7 != 0, v7, v6 == v8) || (name = self->_name) != 0 && (objc_msgSend(v5, "name"), v10 = objc_claimAutoreleasedReturnValue(), v11 = -[NSString isEqual:](name, "isEqual:", v10), v10, !v11))
  {
    v13 = 0;
  }

  else
  {
    compatibilityVersion = self->_compatibilityVersion;
    v13 = compatibilityVersion == [v5 compatibilityVersion];
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(TRIVersionedNamespace *)self isEqualToVersionedNamespace:v5];
  }

  return v6;
}

- (TRIVersionedNamespace)initWithCoder:(id)coder
{
  v18[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
  if (!v5)
  {
    error = [coderCopy error];

    if (!error)
    {
      v17 = *MEMORY[0x277CCA450];
      v18[0] = @"Retrieved nil serialized value for nonnull TRIVersionedNamespace.name";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 2;
LABEL_9:
      v13 = [v10 initWithDomain:@"TRIVersionedNamespaceOCNTErrorDomain" code:v11 userInfo:v9];
      [coderCopy failWithError:v13];
    }

LABEL_10:
    selfCopy = 0;
    goto LABEL_11;
  }

  v6 = [coderCopy decodeInt64ForKey:@"compatibilityVersion"];
  if (!v6)
  {
    error2 = [coderCopy error];

    if (!error2)
    {
      if ([coderCopy containsValueForKey:@"compatibilityVersion"])
      {
        goto LABEL_3;
      }

      v15 = *MEMORY[0x277CCA450];
      v16 = @"Missing serialized value for TRIVersionedNamespace.compatibilityVersion";
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = 1;
      goto LABEL_9;
    }

    goto LABEL_10;
  }

LABEL_3:
  self = [(TRIVersionedNamespace *)self initWithName:v5 compatibilityVersion:v6];
  selfCopy = self;
LABEL_11:

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = self->_name;
  v6 = coderCopy;
  if (name)
  {
    [coderCopy encodeObject:name forKey:@"name"];
    coderCopy = v6;
  }

  [coderCopy encodeInt64:self->_compatibilityVersion forKey:@"compatibilityVersion"];
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  name = self->_name;
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_compatibilityVersion];
  v6 = [v3 initWithFormat:@"<TRIVersionedNamespace | name:%@ compatibilityVersion:%@>", name, v5];

  return v6;
}

@end