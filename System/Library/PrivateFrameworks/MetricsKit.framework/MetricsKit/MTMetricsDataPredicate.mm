@interface MTMetricsDataPredicate
+ (id)predicateWithConfigData:(id)data;
+ (id)predicateWithType:(id)type argument:(id)argument;
- (BOOL)evaluateWithMetricsData:(id)data;
- (MTMetricsDataPredicate)initWithConfigDictionary:(id)dictionary;
- (MTMetricsDataPredicate)initWithFormat:(id)format;
@end

@implementation MTMetricsDataPredicate

+ (id)predicateWithType:(id)type argument:(id)argument
{
  typeCopy = type;
  argumentCopy = argument;
  if ([typeCopy isEqualToString:@"valueMatches"])
  {
    v7 = MEMORY[0x277CCAC30];
    v12 = argumentCopy;
    v8 = @"self in %@";
LABEL_3:
    v9 = [v7 predicateWithFormat:v8, v12];
    goto LABEL_8;
  }

  if ([typeCopy isEqualToString:@"nonEmpty"])
  {
    bOOLValue = [argumentCopy BOOLValue];
    v7 = MEMORY[0x277CCAC30];
    if (bOOLValue)
    {
      v8 = @"self != nil && self != ''";
    }

    else
    {
      v8 = @"self == nil || self == ''";
    }

    goto LABEL_3;
  }

  v9 = 0;
LABEL_8:

  return v9;
}

+ (id)predicateWithConfigData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[MTMetricsDataPredicate alloc] initWithConfigDictionary:dataCopy];
LABEL_5:
    v5 = v4;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [[MTMetricsDataPredicate alloc] initWithFormat:dataCopy];
    goto LABEL_5;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (MTMetricsDataPredicate)initWithFormat:(id)format
{
  v13[1] = *MEMORY[0x277D85DE8];
  formatCopy = format;
  v10.receiver = self;
  v10.super_class = MTMetricsDataPredicate;
  v5 = [(MTMetricsDataPredicate *)&v10 init];
  if (v5)
  {
    v12 = @"_";
    v6 = [MEMORY[0x277CCAC30] predicateWithFormat:formatCopy];
    v11 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1];
    v13[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [(MTMetricsDataPredicate *)v5 setFieldPredicates:v8];
  }

  return v5;
}

- (MTMetricsDataPredicate)initWithConfigDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = MTMetricsDataPredicate;
  v5 = [(MTMetricsDataPredicate *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(dictionaryCopy, "count")}];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __51__MTMetricsDataPredicate_initWithConfigDictionary___block_invoke;
    v10[3] = &unk_2798CD0B8;
    v11 = v6;
    v7 = v6;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v10];
    v8 = [v7 copy];
    [(MTMetricsDataPredicate *)v5 setFieldPredicates:v8];
  }

  return v5;
}

void __51__MTMetricsDataPredicate_initWithConfigDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = MEMORY[0x277CBEB18];
    v8 = v6;
    v9 = [v7 arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__MTMetricsDataPredicate_initWithConfigDictionary___block_invoke_2;
    v12[3] = &unk_2798CD0B8;
    v13 = v9;
    v10 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v12];

    v11 = [v10 copy];
LABEL_5:

    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [MEMORY[0x277CCAC30] predicateWithFormat:v6];
    v14[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
    goto LABEL_5;
  }

  v11 = 0;
LABEL_7:
  if ([v11 count])
  {
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v5];
  }
}

uint64_t __51__MTMetricsDataPredicate_initWithConfigDictionary___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [MTMetricsDataPredicate predicateWithType:a2 argument:a3];
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (BOOL)evaluateWithMetricsData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  fieldPredicates = [(MTMetricsDataPredicate *)self fieldPredicates];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__MTMetricsDataPredicate_evaluateWithMetricsData___block_invoke;
  v8[3] = &unk_2798CD0E0;
  v6 = dataCopy;
  v9 = v6;
  v10 = &v11;
  [fieldPredicates enumerateKeysAndObjectsUsingBlock:v8];

  LOBYTE(fieldPredicates) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return fieldPredicates;
}

void __50__MTMetricsDataPredicate_evaluateWithMetricsData___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if ([v7 isEqualToString:@"_"])
  {
    v9 = *(a1 + 32);
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = 0;
      *a4 = 1;
    }

    v9 = [*(a1 + 32) objectForKeyedSubscript:v7];
  }

  v10 = v9;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        *(*(*(a1 + 40) + 8) + 24) &= [*(*(&v16 + 1) + 8 * i) evaluateWithObject:{v10, v16}];
        if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
        {
          *a4 = 1;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v13);
  }
}

@end