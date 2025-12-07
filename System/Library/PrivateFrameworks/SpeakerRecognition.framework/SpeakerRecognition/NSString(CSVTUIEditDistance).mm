@interface NSString(CSVTUIEditDistance)
- (BOOL)_matchesRegularExpression:()CSVTUIEditDistance;
- (id)_firstMatchesForRegularExpression:()CSVTUIEditDistance;
- (id)_firstMatchesForRegularExpressions:()CSVTUIEditDistance;
- (id)_stringByFixingNamePattern:()CSVTUIEditDistance;
- (id)_stringByStrippingLeadingNoise:()CSVTUIEditDistance;
- (id)_stringByStrippingNoiseLeadingNoise:()CSVTUIEditDistance TrailingNoise:;
- (id)_stringByStrippingTrailingNoise:()CSVTUIEditDistance;
- (uint64_t)_caseInsensitiveHasMatchInEnumeration:()CSVTUIEditDistance;
@end

@implementation NSString(CSVTUIEditDistance)

- (id)_firstMatchesForRegularExpression:()CSVTUIEditDistance
{
  v12 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v12];
  array = 0;
  if (!v12)
  {
    v6 = [v4 firstMatchInString:self options:0 range:{0, objc_msgSend(self, "length")}];
    if (v6)
    {
      array = [MEMORY[0x277CBEB18] array];
      if ([v6 numberOfRanges])
      {
        v7 = 0;
        do
        {
          if ([v6 rangeAtIndex:v7] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [array addObject:&stru_283923FC0];
          }

          else
          {
            v8 = [v6 rangeAtIndex:v7];
            v10 = [self substringWithRange:{v8, v9}];
            [array addObject:v10];
          }

          ++v7;
        }

        while (v7 < [v6 numberOfRanges]);
      }
    }

    else
    {
      array = 0;
    }
  }

  return array;
}

- (id)_firstMatchesForRegularExpressions:()CSVTUIEditDistance
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [self _firstMatchesForRegularExpression:{*(*(&v12 + 1) + 8 * i), v12}];
        if (v9)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (uint64_t)_caseInsensitiveHasMatchInEnumeration:()CSVTUIEditDistance
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v9 stringValue];
        }

        else
        {
          [v9 description];
        }
        v10 = ;
        lowercaseString = [v10 lowercaseString];
        lowercaseString2 = [self lowercaseString];
        v13 = [lowercaseString isEqualToString:lowercaseString2];

        if (v13)
        {
          v14 = 1;
          goto LABEL_14;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_14:

  return v14;
}

- (BOOL)_matchesRegularExpression:()CSVTUIEditDistance
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v7];
  if (v7)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v4 numberOfMatchesInString:self options:0 range:{0, objc_msgSend(self, "length")}] != 0;
  }

  return v5;
}

- (id)_stringByStrippingNoiseLeadingNoise:()CSVTUIEditDistance TrailingNoise:
{
  v6 = a4;
  v7 = [self _stringByStrippingLeadingNoise:a3];
  v8 = [v7 _stringByStrippingTrailingNoise:v6];

  return v8;
}

- (id)_stringByStrippingTrailingNoise:()CSVTUIEditDistance
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v7];
  v5 = [self mutableCopy];
  [v4 replaceMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), &stru_283923FC0}];

  return v5;
}

- (id)_stringByStrippingLeadingNoise:()CSVTUIEditDistance
{
  v7 = 0;
  v4 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:a3 options:1 error:&v7];
  v5 = [self mutableCopy];
  [v4 replaceMatchesInString:v5 options:0 range:0 withTemplate:{objc_msgSend(v5, "length"), &stru_283923FC0}];

  return v5;
}

- (id)_stringByFixingNamePattern:()CSVTUIEditDistance
{
  v4 = a3;
  lowercaseString = [self lowercaseString];
  v6 = [lowercaseString hasPrefix:v4];

  if (v6)
  {
    selfCopy = [self substringFromIndex:{objc_msgSend(v4, "length")}];
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  return v8;
}

@end