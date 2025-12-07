@interface RBCompoundNoneDomainRestriction
+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error;
- (BOOL)allowsContext:(id)context withError:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)_initWithRestrictions:(id)restrictions;
- (id)allEntitlements;
- (id)description;
- (id)dictionaryRepresentation;
@end

@implementation RBCompoundNoneDomainRestriction

- (id)_initWithRestrictions:(id)restrictions
{
  restrictionsCopy = restrictions;
  v10.receiver = self;
  v10.super_class = RBCompoundNoneDomainRestriction;
  _init = [(RBDomainRestriction *)&v10 _init];
  if (_init)
  {
    v6 = [restrictionsCopy copy];
    v7 = _init[1];
    _init[1] = v6;

    v8 = _init;
  }

  return _init;
}

+ (id)domainRestrictionForDictionary:(id)dictionary withError:(id *)error
{
  v27[1] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKey:@"Restrictions"];
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    array = [MEMORY[0x277CBEB18] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [RBDomainRestriction domainRestrictionForDictionary:*(*(&v21 + 1) + 8 * i) withError:error];
          if (!v13)
          {

            v15 = 0;
            goto LABEL_16;
          }

          v14 = v13;
          [array addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v15 = [[RBCompoundNoneDomainRestriction alloc] _initWithRestrictions:array];
  }

  else
  {
    if (!error)
    {
      v15 = 0;
      goto LABEL_17;
    }

    v16 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA470];
    dictionaryCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"RBCompoundNoneDomainRestriction doesn't specify restrictions: %@", dictionaryCopy];
    v27[0] = dictionaryCopy;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    array = [v16 errorWithDomain:@"RBDomainAttributeManagerDataProviderErrorDomain" code:1 userInfo:v18];

    v19 = array;
    v15 = 0;
    *error = array;
  }

LABEL_16:

LABEL_17:

  return v15;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_restrictions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
        [v3 addObject:dictionaryRepresentation];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  v16[0] = @"Class";
  v16[1] = @"Restrictions";
  v17[0] = @"CompoundNone";
  v17[1] = v3;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];

  return v10;
}

- (BOOL)allowsContext:(id)context withError:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v8 = self->_restrictions;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  v10 = v9 == 0;
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = v9;
  v23 = v9 == 0;
  v12 = *v25;
  v10 = 1;
  v13 = 1;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v25 != v12)
      {
        objc_enumerationMutation(v8);
      }

      v15 = *(*(&v24 + 1) + 8 * i);
      v16 = [v15 allowsContext:contextCopy withError:0];
      v10 &= v16 ^ 1;
      if (error && v16)
      {
        if ((v13 & 1) == 0)
        {
          [v7 appendString:@" AND "];
        }

        v17 = [v15 description];
        [v7 appendString:v17];

        v10 = 0;
        v13 = 0;
      }
    }

    v11 = [(NSArray *)v8 countByEnumeratingWithState:&v24 objects:v30 count:16];
  }

  while (v11);

  if (error)
  {
    v18 = v10;
  }

  else
  {
    v18 = 1;
  }

  if ((v18 & 1) == 0)
  {
    [v7 appendString:@""]);
    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277D47098];
    v28 = *MEMORY[0x277CCA470];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not allowed because it has %@", v7];
    v29 = v8;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    *error = [v19 errorWithDomain:v20 code:1 userInfo:v21];

    v10 = v23;
LABEL_18:
  }

  return v10;
}

- (id)allEntitlements
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_restrictions;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        allEntitlements = [*(*(&v12 + 1) + 8 * i) allEntitlements];
        [v3 unionSet:allEntitlements];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    goto LABEL_10;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    goto LABEL_3;
  }

  restrictions = self->_restrictions;
  v8 = equalCopy->_restrictions;
  if (restrictions == v8)
  {
LABEL_10:
    v6 = 1;
    goto LABEL_11;
  }

  if (restrictions)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    v6 = [(NSArray *)restrictions isEqual:?];
    goto LABEL_11;
  }

LABEL_3:
  v6 = 0;
LABEL_11:

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [v3 initWithFormat:@"<%@| %@>", v4, self->_restrictions];

  return v5;
}

@end