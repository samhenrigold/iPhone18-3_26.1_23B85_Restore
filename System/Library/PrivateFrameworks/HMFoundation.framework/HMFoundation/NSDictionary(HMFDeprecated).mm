@interface NSDictionary(HMFDeprecated)
- (id)arrayOfDateComponentsFromDataForKey:()HMFDeprecated;
- (id)calendarFromDataForKey:()HMFDeprecated;
- (id)dateComponentsForKey:()HMFDeprecated;
- (id)dateComponentsFromDataForKey:()HMFDeprecated;
- (id)errorFromDataForKey:()HMFDeprecated;
- (id)predicateFromDataForKey:()HMFDeprecated;
- (id)secureDescriptionWithIndent:()HMFDeprecated newLine:blacklistedKeys:;
- (id)timeZoneFromDataForKey:()HMFDeprecated;
- (id)uuidFromStringForKey:()HMFDeprecated;
@end

@implementation NSDictionary(HMFDeprecated)

- (id)secureDescriptionWithIndent:()HMFDeprecated newLine:blacklistedKeys:
{
  v44 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  string = [MEMORY[0x277CCAB68] string];
  v10 = @"\n";
  if (!a4)
  {
    v10 = &stru_283EBDA30;
  }

  v11 = v10;
  v31 = v11;
  if (v7)
  {
    [string appendFormat:@"%@%@{\n", v11, v7];
    [(__CFString *)v7 indentationByLevels:1];
  }

  else
  {
    [string appendFormat:@"%@{\n", v11];
    +[HMFStringIndentation indentation];
  }
  v12 = ;
  v32 = v7;
  [self allKeys];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v13 = v41 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v39;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v39 != v16)
        {
          objc_enumerationMutation(v13);
        }

        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v18 = v13;
          goto LABEL_17;
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v18 = [v13 sortedArrayUsingSelector:sel_compare_];
LABEL_17:

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v19 = v18;
  v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v35;
    do
    {
      v23 = 0;
      do
      {
        if (*v35 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v34 + 1) + 8 * v23);
        if (([v8 containsObject:v24] & 1) == 0)
        {
          [string appendFormat:@"%@%@ = ", v12, v24];
          v25 = [self objectForKeyedSubscript:v24];
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            shortDescription = [v25 secureDescriptionWithIndent:v12 newLine:1 blacklistedKeys:v8];
          }

          else if ([v25 conformsToProtocol:&unk_283ED27D0] || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            shortDescription = [v25 shortDescription];
          }

          else
          {
            shortDescription = [v25 description];
          }

          v27 = shortDescription;
          [string appendString:shortDescription];

          [string appendString:{@", \n"}];
        }

        ++v23;
      }

      while (v21 != v23);
      v28 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
      v21 = v28;
    }

    while (v28);
  }

  v29 = &stru_283EBDA30;
  if (v32)
  {
    v29 = v32;
  }

  [string appendFormat:@"%@}", v29];

  return string;
}

- (id)uuidFromStringForKey:()HMFDeprecated
{
  v1 = [self hmf_stringForKey:?];
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)timeZoneFromDataForKey:()HMFDeprecated
{
  v1 = [self hmf_dataForKey:?];
  decodeTimeZone = [v1 decodeTimeZone];

  return decodeTimeZone;
}

- (id)dateComponentsForKey:()HMFDeprecated
{
  v4 = a3;
  v5 = [self hmf_dateComponentsForKey:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [self dateComponentsFromDataForKey:v4];
  }

  v8 = v7;

  return v8;
}

- (id)dateComponentsFromDataForKey:()HMFDeprecated
{
  v1 = [self hmf_dataForKey:?];
  decodeDateComponents = [v1 decodeDateComponents];

  return decodeDateComponents;
}

- (id)errorFromDataForKey:()HMFDeprecated
{
  v1 = [self hmf_dataForKey:?];
  if (v1)
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
    v4 = [v2 deserializeObjectWithData:v1 allowedClasses:v3];

    if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)calendarFromDataForKey:()HMFDeprecated
{
  v1 = [self hmf_dataForKey:?];
  decodeCalendar = [v1 decodeCalendar];

  return decodeCalendar;
}

- (id)predicateFromDataForKey:()HMFDeprecated
{
  v9[2] = *MEMORY[0x277D85DE8];
  v1 = [self hmf_dataForKey:?];
  if (v1)
  {
    v2 = MEMORY[0x277CCAAC8];
    v3 = MEMORY[0x277CBEB98];
    v9[0] = objc_opt_class();
    v9[1] = objc_opt_class();
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
    v5 = [v3 setWithArray:v4];
    v6 = [v2 deserializeObjectWithData:v1 allowedClasses:v5];

    if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)arrayOfDateComponentsFromDataForKey:()HMFDeprecated
{
  v1 = [self hmf_dataForKey:?];
  decodeArrayOfDateComponents = [v1 decodeArrayOfDateComponents];

  return decodeArrayOfDateComponents;
}

@end