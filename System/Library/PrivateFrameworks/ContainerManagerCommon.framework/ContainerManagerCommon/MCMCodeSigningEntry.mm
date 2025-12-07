@interface MCMCodeSigningEntry
- (BOOL)isEqual:(id)equal;
- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info;
- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info andDataContainerClass:(unint64_t)class;
- (MCMCodeSigningEntry)initWithSerializedDictionary:(id)dictionary;
- (id)description;
- (id)serialize;
- (unint64_t)hash;
- (void)setChildBundleIdentifiers:(id)identifiers;
- (void)setCodeSigningInfo:(id)info;
@end

@implementation MCMCodeSigningEntry

- (void)setChildBundleIdentifiers:(id)identifiers
{
  p_childBundleIdentifiers = &self->_childBundleIdentifiers;

  objc_storeStrong(p_childBundleIdentifiers, identifiers);
}

- (void)setCodeSigningInfo:(id)info
{
  p_codeSigningInfo = &self->_codeSigningInfo;

  objc_storeStrong(p_codeSigningInfo, info);
}

- (id)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__MCMCodeSigningEntry_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __34__MCMCodeSigningEntry_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if ([*(a1 + 32) isInvalid])
  {
    v7 = 89;
  }

  else
  {
    v7 = 78;
  }

  v22 = v7;
  if ([*(a1 + 32) isPlaceholder])
  {
    v8 = 89;
  }

  else
  {
    v8 = 78;
  }

  if ([*(a1 + 32) isAdvanceCopy])
  {
    v9 = 89;
  }

  else
  {
    v9 = 78;
  }

  if ([*(a1 + 32) isRegisteredByCaller])
  {
    v10 = 89;
  }

  else
  {
    v10 = 78;
  }

  if ([*(a1 + 32) isRegisteredByKernel])
  {
    v11 = 89;
  }

  else
  {
    v11 = 78;
  }

  v12 = [*(a1 + 32) dataContainerClass];
  v13 = [*(a1 + 32) childBundleIdentifiers];
  v14 = v13;
  if (v2)
  {
    v15 = [v13 redactedDescription];
    v16 = [*(a1 + 32) codeSigningInfo];
    v17 = [v16 redactedDescription];
    v18 = v4;
    v19 = v17;
    v20 = [v18 stringWithFormat:@"<%@ invalid: %c, placeholder: %c, advanceCopy: %c, regByCaller: %c, regByKernel: %c, dataClass: %llu, childBundles: %@, CSinfo: %@>", v6, v22, v8, v9, v10, v11, v12, v15, v17];
  }

  else
  {
    v15 = [*(a1 + 32) codeSigningInfo];
    v20 = [v4 stringWithFormat:@"<%@ invalid: %c, placeholder: %c, advanceCopy: %c, regByCaller: %c, regByKernel: %c, dataClass: %llu, childBundles: %@, CSinfo: %@>", v6, v22, v8, v9, v10, v11, v12, v14, v15];
  }

  return v20;
}

- (unint64_t)hash
{
  codeSigningInfo = [(MCMCodeSigningEntry *)self codeSigningInfo];
  v4 = [codeSigningInfo hash];
  childBundleIdentifiers = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
  v6 = [childBundleIdentifiers hash];
  if ([(MCMCodeSigningEntry *)self isInvalid])
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  if ([(MCMCodeSigningEntry *)self isPlaceholder])
  {
    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if ([(MCMCodeSigningEntry *)self isRegisteredByCaller])
  {
    v9 = 8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(MCMCodeSigningEntry *)self dataContainerClass]!= 0;
  if ([(MCMCodeSigningEntry *)self isAdvanceCopy])
  {
    v11 = 32;
  }

  else
  {
    v11 = 0;
  }

  if ([(MCMCodeSigningEntry *)self isRegisteredByKernel])
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  return v7 + (v6 ^ v4) + v8 + v9 + 16 * v10 + v11 + v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      codeSigningInfo = [(MCMCodeSigningEntry *)self codeSigningInfo];
      if (codeSigningInfo || ([(MCMCodeSigningEntry *)v6 codeSigningInfo], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        codeSigningInfo2 = [(MCMCodeSigningEntry *)self codeSigningInfo];
        codeSigningInfo3 = [(MCMCodeSigningEntry *)v6 codeSigningInfo];
        v10 = [codeSigningInfo2 isEqualToDictionary:codeSigningInfo3];

        if (codeSigningInfo)
        {

          if (!v10)
          {
            goto LABEL_22;
          }
        }

        else
        {

          if ((v10 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      childBundleIdentifiers = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
      if (childBundleIdentifiers || ([(MCMCodeSigningEntry *)v6 childBundleIdentifiers], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        childBundleIdentifiers2 = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
        childBundleIdentifiers3 = [(MCMCodeSigningEntry *)v6 childBundleIdentifiers];
        v15 = [childBundleIdentifiers2 isEqualToArray:childBundleIdentifiers3];

        if (childBundleIdentifiers)
        {

          if (!v15)
          {
            goto LABEL_22;
          }
        }

        else
        {

          if ((v15 & 1) == 0)
          {
            goto LABEL_22;
          }
        }
      }

      isInvalid = [(MCMCodeSigningEntry *)self isInvalid];
      if (isInvalid == [(MCMCodeSigningEntry *)v6 isInvalid])
      {
        isPlaceholder = [(MCMCodeSigningEntry *)self isPlaceholder];
        if (isPlaceholder == [(MCMCodeSigningEntry *)v6 isPlaceholder])
        {
          isAdvanceCopy = [(MCMCodeSigningEntry *)self isAdvanceCopy];
          if (isAdvanceCopy == [(MCMCodeSigningEntry *)v6 isAdvanceCopy])
          {
            isRegisteredByCaller = [(MCMCodeSigningEntry *)self isRegisteredByCaller];
            if (isRegisteredByCaller == [(MCMCodeSigningEntry *)v6 isRegisteredByCaller])
            {
              isRegisteredByKernel = [(MCMCodeSigningEntry *)self isRegisteredByKernel];
              if (isRegisteredByKernel == [(MCMCodeSigningEntry *)v6 isRegisteredByKernel])
              {
                dataContainerClass = [(MCMCodeSigningEntry *)self dataContainerClass];
                v11 = dataContainerClass == [(MCMCodeSigningEntry *)v6 dataContainerClass];
                goto LABEL_23;
              }
            }
          }
        }
      }

LABEL_22:
      v11 = 0;
LABEL_23:

      goto LABEL_24;
    }

    v11 = 0;
  }

LABEL_24:

  return v11;
}

- (id)serialize
{
  v3 = objc_opt_new();
  codeSigningInfo = [(MCMCodeSigningEntry *)self codeSigningInfo];
  [v3 setObject:codeSigningInfo forKeyedSubscript:@"CodeSigningInfo"];

  childBundleIdentifiers = [(MCMCodeSigningEntry *)self childBundleIdentifiers];
  [v3 setObject:childBundleIdentifiers forKeyedSubscript:@"ChildBundleIds"];

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isInvalid](self, "isInvalid")}];
  [v3 setObject:v6 forKeyedSubscript:@"Invalid"];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isPlaceholder](self, "isPlaceholder")}];
  [v3 setObject:v7 forKeyedSubscript:@"Placeholder"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isAdvanceCopy](self, "isAdvanceCopy")}];
  [v3 setObject:v8 forKeyedSubscript:@"AdvanceCopy"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isRegisteredByCaller](self, "isRegisteredByCaller")}];
  [v3 setObject:v9 forKeyedSubscript:@"RegisteredByCaller"];

  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MCMCodeSigningEntry isRegisteredByKernel](self, "isRegisteredByKernel")}];
  [v3 setObject:v10 forKeyedSubscript:@"RegisteredByKernel"];

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[MCMCodeSigningEntry dataContainerClass](self, "dataContainerClass")}];
  [v3 setObject:v11 forKeyedSubscript:@"DataContainerClass"];

  v12 = [v3 copy];

  return v12;
}

- (MCMCodeSigningEntry)initWithSerializedDictionary:(id)dictionary
{
  v18 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = MCMCodeSigningEntry;
  v5 = [(MCMCodeSigningEntry *)&v17 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"CodeSigningInfo"];
    codeSigningInfo = v5->_codeSigningInfo;
    v5->_codeSigningInfo = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"ChildBundleIds"];
    childBundleIdentifiers = v5->_childBundleIdentifiers;
    v5->_childBundleIdentifiers = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"Invalid"];
    v5->_invalid = [v10 BOOLValue];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"Placeholder"];
    v5->_placeholder = [v11 BOOLValue];

    v12 = [dictionaryCopy objectForKeyedSubscript:@"AdvanceCopy"];
    v5->_advanceCopy = [v12 BOOLValue];

    v13 = [dictionaryCopy objectForKeyedSubscript:@"RegisteredByCaller"];
    v5->_registeredByCaller = [v13 BOOLValue];

    v14 = [dictionaryCopy objectForKeyedSubscript:@"RegisteredByKernel"];
    v5->_registeredByKernel = [v14 BOOLValue];

    v15 = [dictionaryCopy objectForKeyedSubscript:@"DataContainerClass"];
    v5->_dataContainerClass = [v15 unsignedLongLongValue];
  }

  return v5;
}

- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info
{

  return [(MCMCodeSigningEntry *)self initWithCodeSigningInfo:info andDataContainerClass:0];
}

- (MCMCodeSigningEntry)initWithCodeSigningInfo:(id)info andDataContainerClass:(unint64_t)class
{
  v13 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = MCMCodeSigningEntry;
  v8 = [(MCMCodeSigningEntry *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_codeSigningInfo, info);
    childBundleIdentifiers = v9->_childBundleIdentifiers;
    v9->_childBundleIdentifiers = 0;

    v9->_registeredByKernel = 0;
    *&v9->_invalid = 0;
    v9->_dataContainerClass = class;
  }

  return v9;
}

@end