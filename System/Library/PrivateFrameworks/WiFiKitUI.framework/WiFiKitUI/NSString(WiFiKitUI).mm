@interface NSString(WiFiKitUI)
- (BOOL)isEmpty;
- (id)formattedWiFiAddress;
- (id)placeholderStringWithMaxCharacters:()WiFiKitUI;
@end

@implementation NSString(WiFiKitUI)

- (BOOL)isEmpty
{
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v3 = [self stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  v4 = [v3 length] == 0;

  return v4;
}

- (id)formattedWiFiAddress
{
  v23 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v1 = [self componentsSeparatedByString:@":"];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__1;
    v20 = __Block_byref_object_dispose__1;
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __43__NSString_WiFiKitUI__formattedWiFiAddress__block_invoke;
    v15[3] = &unk_279EC5B40;
    v15[4] = &v16;
    [v1 enumerateObjectsUsingBlock:v15];
    firstObject = [v17[5] firstObject];
    [v17[5] removeObjectAtIndex:0];
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v17[5];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v22 count:16];
    if (v4)
    {
      v5 = *v12;
      do
      {
        v6 = 0;
        v7 = firstObject;
        do
        {
          if (*v12 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@":%@", *(*(&v11 + 1) + 8 * v6)];
          firstObject = [v7 stringByAppendingString:v8];

          ++v6;
          v7 = firstObject;
        }

        while (v4 != v6);
        v4 = [v3 countByEnumeratingWithState:&v11 objects:v22 count:16];
      }

      while (v4);
    }

    uppercaseString = [firstObject uppercaseString];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    uppercaseString = 0;
  }

  return uppercaseString;
}

- (id)placeholderStringWithMaxCharacters:()WiFiKitUI
{
  v3 = a3;
  if ([self length] < a3)
  {
    v3 = [self length];
  }

  for (i = [MEMORY[0x277CCAB68] string];
  {
    [i appendFormat:@"%C", 63386];
  }

  return i;
}

@end