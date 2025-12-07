@interface SVDCapability
- (BOOL)matchesCapabilityDescriptions:(id)descriptions;
- (SVDCapability)initWithCoder:(id)coder;
- (id)key;
@end

@implementation SVDCapability

- (SVDCapability)initWithCoder:(id)coder
{
  v4.receiver = self;
  v4.super_class = SVDCapability;
  return [(SVDCapability *)&v4 init];
}

- (BOOL)matchesCapabilityDescriptions:(id)descriptions
{
  v35 = *MEMORY[0x277D85DE8];
  descriptionsCopy = descriptions;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = descriptionsCopy;
  v5 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    p_cache = SVDCapability.cache;
    do
    {
      v9 = 0;
      v28 = v6;
      do
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * v9);
        v11 = [v10 key];
        valueSet = [v10 valueSet];
        v13 = objc_alloc((p_cache + 56));
        v14 = v13;
        if (valueSet)
        {
          v15 = [v13 initWithKey:v11 valueSet:valueSet];
        }

        else
        {
          [v10 valueRangeLowerBound];
          v16 = v7;
          v17 = v4;
          v19 = v18 = p_cache;
          [v19 doubleValue];
          v21 = v20;
          valueRangeUpperBound = [v10 valueRangeUpperBound];
          [valueRangeUpperBound doubleValue];
          v15 = [v14 initWithKey:v11 lowerbound:v21 upperbound:v23];

          p_cache = v18;
          v4 = v17;
          v7 = v16;
          v6 = v28;
        }

        [v4 addObject:v15];

        ++v9;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v6);
  }

  _swiftBacking = [(SVDCapability *)self _swiftBacking];
  if ([_swiftBacking conformsToProtocol:&unk_287A5C698])
  {
    v25 = [_swiftBacking matchesWithDescriptions:v4];
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)key
{
  _swiftBacking = [(SVDCapability *)self _swiftBacking];
  v3 = [_swiftBacking key];

  return v3;
}

@end