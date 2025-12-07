@interface NSString(LDAPExtensions)
- (id)ldapHumanReadableStringFromSearchBase;
- (id)ldapSanitizedAddress;
@end

@implementation NSString(LDAPExtensions)

- (id)ldapHumanReadableStringFromSearchBase
{
  v21 = *MEMORY[0x277D85DE8];
  v1 = [self componentsSeparatedByString:{@", "}];
  v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 rangeOfString:@"=" options:{4, v16}];
        if (v9 == 0x7FFFFFFFFFFFFFFFLL || (v10 = v9 + 1, v9 + 1 >= [v8 length]))
        {
          [v2 addObject:v8];
        }

        else
        {
          v11 = [v8 substringFromIndex:v10];
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v13 = [v11 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          if ([v13 length])
          {
            [v2 addObject:v13];
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v14 = [v2 componentsJoinedByString:{@", "}];

  return v14;
}

- (id)ldapSanitizedAddress
{
  v2 = [self mutableCopy];
  v3 = [self length];
  [v2 replaceOccurrencesOfString:@"$" withString:@"\n" options:0 range:{0, v3}];
  [v2 replaceOccurrencesOfString:@"\\24" withString:@"$" options:0 range:{0, v3}];
  [v2 replaceOccurrencesOfString:@"\\5C" withString:@"\" options:0 range:{0, v3}];

  return v2;
}

@end