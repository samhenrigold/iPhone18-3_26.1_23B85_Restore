@interface BRLTUnicodePrintPreprocessor
- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges;
@end

@implementation BRLTUnicodePrintPreprocessor

- (id)preprocessPrintString:(id)string withLocationMap:(id *)map isEightDot:(BOOL)dot textFormattingRanges:(id)ranges
{
  v54 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v8 = stringCopy;
  if (stringCopy)
  {
    v9 = [stringCopy length];
    string = [MEMORY[0x277CCAB68] string];
    if (map)
    {
      v10 = [MEMORY[0x277CBEB28] dataWithLength:0];
    }

    else
    {
      v10 = 0;
    }

    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    allKeys = [&unk_2854025F8 allKeys];
    v12 = [allKeys countByEnumeratingWithState:&v48 objects:v53 count:16];
    mapCopy = map;
    if (v12)
    {
      v13 = v12;
      v14 = *v49;
      v15 = &stru_2853FD1A8;
      do
      {
        v16 = 0;
        v17 = v15;
        do
        {
          if (*v49 != v14)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = [(__CFString *)v17 stringByAppendingString:*(*(&v48 + 1) + 8 * v16)];

          ++v16;
          v17 = v15;
        }

        while (v13 != v16);
        v13 = [allKeys countByEnumeratingWithState:&v48 objects:v53 count:16];
      }

      while (v13);
    }

    else
    {
      v15 = &stru_2853FD1A8;
    }

    v41 = v9;

    v18 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:v15];
    v45 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v43 = v8;
    v19 = v8;
    v46 = v18;
    v44 = v19;
    v20 = 0;
    if ([v19 rangeOfCharacterFromSet:v18] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = v19;
      do
      {
        v22 = [v21 rangeOfCharacterFromSet:v46];
        v23 = v22;
        v25 = v24;
        if (v22)
        {
          if (v22 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = v21;
            break;
          }

          v26 = string;
          v27 = v10;
          v28 = [v44 substringWithRange:{v20, v23}];
          [v26 appendString:v28];

          v29 = v20;
          v30 = v23;
          do
          {
            v52 = v29;
            [v27 appendBytes:&v52 length:8];
            ++v29;
            --v30;
          }

          while (v30);
        }

        v31 = [v21 substringWithRange:{v23, v25}];
        v32 = [&unk_2854025F8 objectForKey:v31];
        v33 = [v45 localizedStringForKey:v32 value:&stru_2853FD1A8 table:@"CharacterReplacements"];

        if ([v33 length])
        {
          v34 = 0;
          do
          {
            v52 = v23 + v20;
            [v10 appendBytes:&v52 length:8];
            ++v34;
          }

          while (v34 < [v33 length]);
        }

        [string appendString:v33];
        v35 = v23 + v25;
        v19 = [v21 substringFromIndex:v23 + v25];

        v20 += v35;
        v21 = v19;
      }

      while (v23 != 0x7FFFFFFFFFFFFFFFLL);
    }

    if (v41 > v20)
    {
      v36 = string;
      v37 = v10;
      v38 = [v44 substringWithRange:{v20, v41 - v20}];
      [v36 appendString:v38];

      do
      {
        v52 = v20;
        [v37 appendBytes:&v52 length:8];
        ++v20;
      }

      while (v41 != v20);
    }

    if (mapCopy)
    {
      v39 = v10;
      *mapCopy = v10;
    }

    v8 = v43;
  }

  else
  {
    string = 0;
  }

  return string;
}

@end