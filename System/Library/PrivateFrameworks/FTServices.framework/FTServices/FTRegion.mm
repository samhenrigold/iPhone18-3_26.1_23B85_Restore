@interface FTRegion
- (FTRegion)regionWithID:(id)d;
- (id)_initWithDictionary:(id)dictionary;
- (id)description;
- (void)dealloc;
@end

@implementation FTRegion

- (id)_initWithDictionary:(id)dictionary
{
  v23 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = FTRegion;
  v6 = [(FTRegion *)&v21 init];
  p_isa = &v6->super.isa;
  if (v6)
  {
    objc_storeStrong(&v6->_dictionary, dictionary);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = [p_isa[1] objectForKey:{@"subregions", 0}];
    v10 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        v13 = 0;
        do
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [[FTRegion alloc] _initWithDictionary:*(*(&v17 + 1) + 8 * v13)];
          v15 = v14;
          if (v14)
          {
            [v14 _setParentRegion:p_isa];
            [v8 addObject:v15];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v17 objects:v22 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      objc_storeStrong(p_isa + 2, v8);
    }
  }

  return p_isa;
}

- (void)dealloc
{
  [(NSArray *)self->_subRegions makeObjectsPerformSelector:sel__setParentRegion_ withObject:0];
  v3.receiver = self;
  v3.super_class = FTRegion;
  [(FTRegion *)&v3 dealloc];
}

- (FTRegion)regionWithID:(id)d
{
  dCopy = d;
  regionID = [(FTRegion *)self regionID];
  v6 = [regionID isEqualToString:dCopy];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    subRegions = [(FTRegion *)self subRegions];
    selfCopy = sub_1959554C8(dCopy, subRegions);
  }

  return selfCopy;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  label = [(FTRegion *)self label];
  isoCode = [(FTRegion *)self isoCode];
  basePhoneNumber = [(FTRegion *)self basePhoneNumber];
  regionID = [(FTRegion *)self regionID];
  v8 = [v3 stringWithFormat:@"[FTRegion] Label: %@   ISO: %@    BaseNumber: %@  Region ID: %@", label, isoCode, basePhoneNumber, regionID];

  return v8;
}

@end