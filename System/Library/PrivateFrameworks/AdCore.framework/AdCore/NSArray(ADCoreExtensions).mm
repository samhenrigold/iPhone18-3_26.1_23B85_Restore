@interface NSArray(ADCoreExtensions)
- (__CFString)AD_jsonStringWithPrettyPrint:()ADCoreExtensions;
- (id)AD_arrayForJSON;
@end

@implementation NSArray(ADCoreExtensions)

- (id)AD_arrayForJSON
{
  v22 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_29;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v18;
  do
  {
    v8 = 0;
    do
    {
      if (*v18 != v7)
      {
        objc_enumerationMutation(selfCopy);
      }

      v9 = *(*(&v17 + 1) + 8 * v8);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        aD_arrayForJSON = [v9 AD_arrayForJSON];
LABEL_14:
        v11 = aD_arrayForJSON;
        [array addObject:aD_arrayForJSON];

        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        aD_arrayForJSON = [v9 AD_dictionaryForJSON];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        aD_arrayForJSON = [v9 AD_dataStringForJSON];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        aD_arrayForJSON = [v9 absoluteString];
        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_20:
        [array addObject:v9];
        goto LABEL_15;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v9 doubleValue];
        if (fabs(v12) != INFINITY)
        {
          goto LABEL_20;
        }

        selfCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to serialize the following number into JSON. Please file a radar against SearchAds | iOS: %@ (%@). Self: %@", v9, objc_opt_class(), selfCopy];

        [array addObject:@"∞"];
        v6 = selfCopy;
      }

      else
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"WARNING: Unable to serialize the following object into JSON. Please file a radar against SearchAds Framework.\n%@ (%@)", v9, objc_opt_class()];
        _ADLog(@"ToroLogging", v13, 0);
      }

LABEL_15:
      if (v6)
      {
        ADSimulateCrash(2696598945, v6, 0);
      }

      ++v8;
    }

    while (v5 != v8);
    v15 = [selfCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    v5 = v15;
  }

  while (v15);
LABEL_29:

  return array;
}

- (__CFString)AD_jsonStringWithPrettyPrint:()ADCoreExtensions
{
  v4 = a3;
  v5 = MEMORY[0x277CCAAA0];
  aD_arrayForJSON = [self AD_arrayForJSON];
  v15 = 0;
  v7 = [v5 dataWithJSONObject:aD_arrayForJSON options:v4 error:&v15];
  v8 = v15;

  if (v8)
  {
    v9 = MEMORY[0x277CCACA8];
    localizedDescription = [v8 localizedDescription];
    aD_arrayForJSON2 = [self AD_arrayForJSON];
    v12 = [v9 stringWithFormat:@"There was an error serializing the following array into JSON (%@):\n%@", localizedDescription, aD_arrayForJSON2];
    _ADLog(@"ToroLogging", v12, 0);
  }

  if (v7)
  {
    v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v7 encoding:4];
  }

  else
  {
    v13 = @"[]";
  }

  return v13;
}

@end