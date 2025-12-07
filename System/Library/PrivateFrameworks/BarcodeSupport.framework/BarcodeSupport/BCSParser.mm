@interface BCSParser
+ (id)parseString:(id)string;
@end

@implementation BCSParser

+ (id)parseString:(id)string
{
  v18[9] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  _bcs_trimmedString = [stringCopy _bcs_trimmedString];
  if ([_bcs_trimmedString length])
  {
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v18[5] = objc_opt_class();
    v18[6] = objc_opt_class();
    v18[7] = objc_opt_class();
    v18[8] = objc_opt_class();
    [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:9];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v16 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v13 + 1) + 8 * i) parseString:{_bcs_trimmedString, v13}];
          if (v10)
          {
            v11 = v10;

            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = [[BCSStringData alloc] initWithString:stringCopy];
LABEL_12:
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end