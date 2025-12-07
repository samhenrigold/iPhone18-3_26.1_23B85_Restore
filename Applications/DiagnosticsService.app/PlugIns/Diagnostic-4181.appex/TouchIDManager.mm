@interface TouchIDManager
+ (id)convertDictionary:(id)dictionary toJSON:(BOOL)n;
+ (id)convertKey:(id)key toJSON:(BOOL)n;
+ (id)runTouchIDDiagnostic:(int)diagnostic options:(id)options;
@end

@implementation TouchIDManager

+ (id)runTouchIDDiagnostic:(int)diagnostic options:(id)options
{
  v4 = *&diagnostic;
  optionsCopy = options;
  v6 = +[NSMutableDictionary dictionary];
  if (optionsCopy)
  {
    v7 = [TouchIDManager convertDictionary:optionsCopy toJSON:0];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  v17 = 0;
  v8 = +[BiometricKit manager];
  v9 = v8;
  if (v8)
  {
    v16 = 0;
    v10 = [v8 diagnostics:v4 withOptions:v7 passed:&v17 withDetails:&v16];
    v11 = v16;
    if (v11)
    {
      v12 = [TouchIDManager convertDictionary:v11 toJSON:1];
      [v6 setObject:v12 forKeyedSubscript:@"data"];
    }

    if (v10)
    {
      v13 = DiagnosticLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000011B0(v10, v13);
      }

      v14 = &off_100004180;
    }

    else if (v17 == 1)
    {
      v14 = &off_100004150;
    }

    else
    {
      v14 = &off_100004168;
    }

    [v6 setObject:v14 forKeyedSubscript:@"testStatus"];
  }

  else
  {
    [v6 setObject:&__NSDictionary0__struct forKeyedSubscript:@"data"];
    [v6 setObject:&off_100004138 forKeyedSubscript:@"testStatus"];
  }

  return v6;
}

+ (id)convertDictionary:(id)dictionary toJSON:(BOOL)n
{
  nCopy = n;
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy mutableCopy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [dictionaryCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [dictionaryCopy objectForKey:v12];
        [v6 removeObjectForKey:v12];
        v14 = [TouchIDManager convertKey:v12 toJSON:nCopy];
        [v6 setObject:v13 forKey:v14];
      }

      v9 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)convertKey:(id)key toJSON:(BOOL)n
{
  nCopy = n;
  keyCopy = key;
  v6 = [keyCopy mutableCopy];
  v7 = [keyCopy characterAtIndex:0];

  if (nCopy)
  {
    if (v7 == 107)
    {
      [v6 deleteCharactersInRange:{0, 1}];
      v8 = [v6 substringWithRange:{0, 1}];
      lowercaseString = [v8 lowercaseString];
      [v6 replaceCharactersInRange:0 withString:{1, lowercaseString}];
    }
  }

  else if (v7 != 107)
  {
    v10 = [v6 substringWithRange:{0, 1}];
    uppercaseString = [v10 uppercaseString];
    [v6 replaceCharactersInRange:0 withString:{1, uppercaseString}];

    [v6 insertString:@"k" atIndex:0];
  }

  return v6;
}

@end