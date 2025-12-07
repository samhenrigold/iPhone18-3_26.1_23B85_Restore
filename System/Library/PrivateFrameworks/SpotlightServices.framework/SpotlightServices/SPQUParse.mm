@interface SPQUParse
- (SPQUParse)initWithIntentLabel:(id)label tokenArguments:(id)arguments;
- (SPQUParse)initWithIntentLabel:(id)label tokenArguments:(id)arguments isPQA:(BOOL)a;
- (id)getEncodedData;
@end

@implementation SPQUParse

- (SPQUParse)initWithIntentLabel:(id)label tokenArguments:(id)arguments
{
  labelCopy = label;
  argumentsCopy = arguments;
  v12.receiver = self;
  v12.super_class = SPQUParse;
  v9 = [(SPQUParse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_intentLabel, label);
    objc_storeStrong(&v10->_tokenArguments, arguments);
  }

  return v10;
}

- (SPQUParse)initWithIntentLabel:(id)label tokenArguments:(id)arguments isPQA:(BOOL)a
{
  aCopy = a;
  labelCopy = label;
  argumentsCopy = arguments;
  v16.receiver = self;
  v16.super_class = SPQUParse;
  v11 = [(SPQUParse *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_intentLabel, label);
    objc_storeStrong(&v12->_tokenArguments, arguments);
    v13 = [MEMORY[0x1E696AD98] numberWithBool:aCopy];
    isPQA = v12->_isPQA;
    v12->_isPQA = v13;
  }

  return v12;
}

- (id)getEncodedData
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  [v3 setValue:self->_intentLabel forKey:@"intentLabel"];
  [v3 setValue:self->_isPQA forKey:@"isPQA"];
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_tokenArguments;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (v12)
        {
          getEncodedData = [*(*(&v19 + 1) + 8 * i) getEncodedData];
          [v4 addObject:getEncodedData];

          tokenLabel = [v12 tokenLabel];
          EnumValueFromIntentArgString = getEnumValueFromIntentArgString();

          v9 |= EnumValueFromIntentArgString == 95;
          v8 |= EnumValueFromIntentArgString == 94;
        }
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  v16 = [MEMORY[0x1E696AD98] numberWithBool:v9 & 1];
  [v3 setValue:v16 forKey:@"resolveDatesInPast"];

  v17 = [MEMORY[0x1E696AD98] numberWithBool:v8 & 1];
  [v3 setValue:v17 forKey:@"resolveDatesInFuture"];

  [v3 setValue:v4 forKey:@"arguments"];

  return v3;
}

@end