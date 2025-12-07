@interface FCAdStatusCondition
+ (id)adStatusConditionsFromConditionsArray:(id)array;
- (FCAdStatusCondition)initWithStatusConditionType:(unint64_t)type identifier:(id)identifier;
@end

@implementation FCAdStatusCondition

- (FCAdStatusCondition)initWithStatusConditionType:(unint64_t)type identifier:(id)identifier
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = FCAdStatusCondition;
  v8 = [(FCAdStatusCondition *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_type = type;
  }

  return v9;
}

+ (id)adStatusConditionsFromConditionsArray:(id)array
{
  v27 = *MEMORY[0x1E69E9840];
  arrayCopy = array;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v4 = arrayCopy;
  v5 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"statusConditionType";
    v8 = *v23;
    v9 = 0x1E695D000uLL;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        v12 = [v11 objectForKey:v7];
        v13 = [v11 objectForKey:@"identifier"];
        if (v12)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (v13)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v14 = v7;
                v15 = v9;
                v16 = v4;
                v17 = adStatusConditionTypeForType(v12);
                v18 = [[FCAdStatusCondition alloc] initWithStatusConditionType:v17 identifier:v13];
                v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v17];
                [dictionary setObject:v18 forKey:v19];

                v4 = v16;
                v9 = v15;
                v7 = v14;
              }
            }
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  return dictionary;
}

@end