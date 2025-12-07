@interface SYDStoreConfiguration
- (BOOL)isEqual:(id)equal;
- (SYDStoreConfiguration)init;
- (SYDStoreConfiguration)initWithCoder:(id)coder;
- (SYDStoreConfiguration)initWithStoreID:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SYDStoreConfiguration

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  storeID = [(SYDStoreConfiguration *)self storeID];
  v7 = [v3 stringWithFormat:@"<%@: %p storeID=%@", v5, self, storeID];;

  entitlementOverrides = [(SYDStoreConfiguration *)self entitlementOverrides];

  if (entitlementOverrides)
  {
    entitlementOverrides2 = [(SYDStoreConfiguration *)self entitlementOverrides];
    [v7 appendFormat:@" entitlementOverrides=%@", entitlementOverrides2];
  }

  [v7 appendString:@">"];

  return v7;
}

- (SYDStoreConfiguration)initWithStoreID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    [(SYDStoreConfiguration *)self initWithStoreID:a2];
  }

  v13.receiver = self;
  v13.super_class = SYDStoreConfiguration;
  v7 = [(SYDStoreConfiguration *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_storeID, d);
    processInfo = [MEMORY[0x1E696AE30] processInfo];
    processName = [processInfo processName];
    processName = v8->_processName;
    v8->_processName = processName;
  }

  return v8;
}

- (SYDStoreConfiguration)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(sel_initWithStoreID_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"SYDStoreConfiguration.m" lineNumber:40 description:{@"Use -[%@ %@]", v6, v7}];

  return 0;
}

- (unint64_t)hash
{
  storeID = [(SYDStoreConfiguration *)self storeID];
  v4 = [storeID hash];
  processName = [(SYDStoreConfiguration *)self processName];
  v6 = [processName hash] ^ v4;

  entitlementOverrides = [(SYDStoreConfiguration *)self entitlementOverrides];

  if (entitlementOverrides)
  {
    entitlementOverrides2 = [(SYDStoreConfiguration *)self entitlementOverrides];
    v6 ^= [entitlementOverrides2 hash];
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    storeID = [v5 storeID];
    storeID2 = [(SYDStoreConfiguration *)self storeID];
    v8 = [storeID isEqual:storeID2];

    if (v8 && ([v5 processName], v9 = objc_claimAutoreleasedReturnValue(), -[SYDStoreConfiguration processName](self, "processName"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v9, "isEqual:", v10), v10, v9, v11) && (objc_msgSend(v5, "entitlementOverrides"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), -[SYDStoreConfiguration entitlementOverrides](self, "entitlementOverrides"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v12, v13 == v15))
    {
      entitlementOverrides = [v5 entitlementOverrides];
      if (entitlementOverrides)
      {
        v17 = entitlementOverrides;
        entitlementOverrides2 = [(SYDStoreConfiguration *)self entitlementOverrides];
        if (entitlementOverrides2)
        {
          v19 = entitlementOverrides2;
          entitlementOverrides3 = [v5 entitlementOverrides];
          entitlementOverrides4 = [(SYDStoreConfiguration *)self entitlementOverrides];
          v22 = [entitlementOverrides3 isEqual:entitlementOverrides4];
        }

        else
        {
          v22 = 1;
        }
      }

      else
      {
        v22 = 1;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SYDStoreConfiguration alloc];
  storeID = [(SYDStoreConfiguration *)self storeID];
  v6 = [storeID copy];
  v7 = [(SYDStoreConfiguration *)v4 initWithStoreID:v6];

  processName = [(SYDStoreConfiguration *)self processName];
  v9 = [processName copy];
  [(SYDStoreConfiguration *)v7 setProcessName:v9];

  entitlementOverrides = [(SYDStoreConfiguration *)self entitlementOverrides];
  v11 = [entitlementOverrides copy];
  [(SYDStoreConfiguration *)v7 setEntitlementOverrides:v11];

  return v7;
}

- (SYDStoreConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SYDStoreConfiguration;
  v5 = [(SYDStoreConfiguration *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    storeID = v5->_storeID;
    v5->_storeID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"n"];
    processName = v5->_processName;
    v5->_processName = v8;

    v10 = MEMORY[0x1E695DFD8];
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v10 setWithObjects:{v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"e"];
    entitlementOverrides = v5->_entitlementOverrides;
    v5->_entitlementOverrides = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  storeID = self->_storeID;
  coderCopy = coder;
  [coderCopy encodeObject:storeID forKey:@"s"];
  [coderCopy encodeObject:self->_processName forKey:@"n"];
  [coderCopy encodeObject:self->_entitlementOverrides forKey:@"e"];
}

- (void)initWithStoreID:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v6 handleFailureInMethod:a2 object:a1 file:@"SYDStoreConfiguration.m" lineNumber:29 description:{@"Must specify a non-nil storeID when initializing %@", v5}];
}

@end