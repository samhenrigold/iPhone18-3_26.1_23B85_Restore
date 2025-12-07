@interface NSDictionary(PrintDebugging)
- (id)_gkDescriptionWithChildren:()PrintDebugging;
@end

@implementation NSDictionary(PrintDebugging)

- (id)_gkDescriptionWithChildren:()PrintDebugging
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel(a3);
  string = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v23 = v4;
  [string appendFormat:@"%@<%@ %p> {\n", v4, v7, self];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  selfCopy = self;
  obj = [self allKeys];
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        v14 = [selfCopy objectForKeyedSubscript:v13];
        v15 = v14;
        if (v14)
        {
          [v14 _gkDescriptionWithChildren:a3 + 1];
          v17 = v16 = string;
          whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
          v19 = [v17 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

          string = v16;
        }

        else
        {
          v19 = @"(null)\n";
        }

        [string appendFormat:@"%@    %@ : %@", v23, v13, v19];
      }

      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  [string appendFormat:@"%@}\n", v23];

  return string;
}

@end