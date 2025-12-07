@interface WLKUpNextDelta
+ (id)useWidgetImagesIfAvailable:(id)available;
- (BOOL)isExpired;
- (NSArray)additions;
- (NSArray)removals;
- (WLKUpNextDelta)initWithCoder:(id)coder;
- (WLKUpNextDelta)initWithDictionary:(id)dictionary;
- (id)_deltaByMergingItemsFromDelta:(id)delta;
- (id)dataByMergingWith:(id)with;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WLKUpNextDelta

- (WLKUpNextDelta)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = WLKUpNextDelta;
  v5 = [(WLKUpNextDelta *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy copy];
    backingDictionary = v5->_backingDictionary;
    v5->_backingDictionary = v6;

    v24 = dictionaryCopy;
    v8 = [dictionaryCopy wlk_arrayForKey:@"upNextChanges"];
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        v14 = 0;
        do
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [WLKUpNextDelta useWidgetImagesIfAvailable:*(*(&v25 + 1) + 8 * v14)];
          v16 = [[WLKDeltaContinuationMetadata alloc] initWithDictionary:v15 context:0];
          if (v16)
          {
            [v9 addObject:v16];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
    items = v5->_items;
    v5->_items = v17;

    dictionaryCopy = v24;
    v19 = [v24 wlk_dateFromMillisecondsSince1970ForKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v19;

    v21 = [v24 wlk_dateFromMillisecondsSince1970ForKey:@"expiresAt"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v21;
  }

  return v5;
}

- (NSArray)removals
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deltaType = %d", 1];
  v4 = [(NSArray *)self->_items filteredArrayUsingPredicate:v3];

  return v4;
}

- (NSArray)additions
{
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"deltaType = %d", 2];
  v4 = [(NSArray *)self->_items filteredArrayUsingPredicate:v3];

  return v4;
}

- (BOOL)isExpired
{
  date = [MEMORY[0x277CBEAA8] date];
  LOBYTE(self) = [date compare:self->_expirationDate] == 1;

  return self;
}

- (id)dataByMergingWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = [(WLKUpNextDelta *)self _deltaByMergingItemsFromDelta:withCopy];
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"class must conform to <WLKMergingCoding>"];
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (id)_deltaByMergingItemsFromDelta:(id)delta
{
  v42 = *MEMORY[0x277D85DE8];
  deltaCopy = delta;
  v5 = [(NSArray *)self->_items mutableCopy];
  if (!v5)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  additions = [deltaCopy additions];
  v7 = [additions countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(additions);
        }

        [WLKContinuationMetadataBase add:*(*(&v35 + 1) + 8 * i) toCollection:v5];
      }

      v8 = [additions countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  removals = [deltaCopy removals];
  v12 = [removals countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v32;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(removals);
        }

        [WLKContinuationMetadataBase remove:*(*(&v31 + 1) + 8 * j) fromCollection:v5];
      }

      v13 = [removals countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v13);
  }

  v16 = [(NSDictionary *)self->_backingDictionary mutableCopy];
  v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = v5;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        dictionary = [*(*(&v27 + 1) + 8 * k) dictionary];
        if (dictionary)
        {
          [v17 addObject:dictionary];
        }
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v39 count:16];
    }

    while (v20);
  }

  v24 = [v17 copy];
  [v16 setObject:v24 forKeyedSubscript:@"upNextChanges"];

  v25 = [[WLKUpNextDelta alloc] initWithDictionary:v16];

  return v25;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = WLKUpNextDelta;
  v4 = [(WLKUpNextDelta *)&v9 description];
  v5 = [(NSArray *)self->_items count];
  expirationDate = [(WLKUpNextDelta *)self expirationDate];
  v7 = [v3 stringWithFormat:@"%@ items:%lu expires:%@", v4, v5, expirationDate];

  return v7;
}

- (WLKUpNextDelta)initWithCoder:(id)coder
{
  coderCopy = coder;
  allowsKeyedCoding = [coderCopy allowsKeyedCoding];
  if (allowsKeyedCoding)
  {
    v6 = WLKPlistClasses(allowsKeyedCoding);
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"upNextDelta"];

    self = [(WLKUpNextDelta *)self initWithDictionary:v7];
    selfCopy = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if (([coderCopy allowsKeyedCoding] & 1) == 0)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The coder must allow keyed coding."];
  }

  [coderCopy encodeObject:self->_backingDictionary forKey:@"upNextDelta"];
}

+ (id)useWidgetImagesIfAvailable:(id)available
{
  availableCopy = available;
  v4 = [availableCopy wlk_dictionaryForKey:@"widgetImages"];
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:availableCopy];
    [v5 setValue:v4 forKey:@"images"];
    [v5 removeObjectForKey:@"widgetImages"];
    v6 = [v5 copy];
  }

  else
  {
    v6 = availableCopy;
  }

  return v6;
}

@end