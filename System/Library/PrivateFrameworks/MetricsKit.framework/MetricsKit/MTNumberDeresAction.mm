@interface MTNumberDeresAction
- (MTNumberDeresAction)initWithField:(id)field configDictionary:(id)dictionary;
- (id)performAction:(id)action context:(id)context;
@end

@implementation MTNumberDeresAction

- (MTNumberDeresAction)initWithField:(id)field configDictionary:(id)dictionary
{
  v25 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v23.receiver = self;
  v23.super_class = MTNumberDeresAction;
  v7 = [(MTTreatmentAction *)&v23 initWithField:field configDictionary:dictionaryCopy];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@"precision"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v8 doubleValue];
      [(MTNumberDeresAction *)v7 setPrecision:?];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"buckets"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
      v9 = v10;
      if (v11)
      {
        v12 = v11;
        v13 = *v20;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v16 = [v15 objectForKeyedSubscript:{@"start", v19}];

              if (v16)
              {
                continue;
              }
            }

            v9 = 0;
            goto LABEL_16;
          }

          v12 = [v10 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }

        v9 = v10;
      }

LABEL_16:

      v17 = [v9 sortedArrayUsingComparator:&__block_literal_global_6];
      [(MTNumberDeresAction *)v7 setBuckets:v17];
    }
  }

  return v7;
}

- (id)performAction:(id)action context:(id)context
{
  v22[1] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = MTNumberDeresAction;
  v5 = [(MTTreatmentAction *)&v20 performAction:action context:context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    buckets = [(MTNumberDeresAction *)self buckets];
    if (![buckets count])
    {
      goto LABEL_12;
    }

    v21 = @"start";
    v22[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v8 = [buckets indexOfObject:v7 inSortedRange:0 options:objc_msgSend(buckets usingComparator:{"count"), 1536, &__block_literal_global_6}];

    if (v8 && v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = [buckets objectAtIndexedSubscript:v8 - 1];
      v10 = [v9 objectForKeyedSubscript:@"value"];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [v9 objectForKeyedSubscript:@"start"];
      }

      v14 = v12;

      v5 = v14;
    }

    v13 = 0;
    if (v8)
    {
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_12:
        if (self->_precision == 0.0)
        {
          v18 = v5;
          v5 = v18;
        }

        else
        {
          [v5 doubleValue];
          v16 = v15;
          [(MTNumberDeresAction *)self precision];
          if (v17 > 0.0)
          {
            v16 = v17 * floor(v16 / v17);
          }

          v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
        }

        v13 = v18;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

@end