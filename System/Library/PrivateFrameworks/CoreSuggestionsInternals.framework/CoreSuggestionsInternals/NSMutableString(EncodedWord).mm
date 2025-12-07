@interface NSMutableString(EncodedWord)
- (void)sg_decodeEncodedWords;
@end

@implementation NSMutableString(EncodedWord)

- (void)sg_decodeEncodedWords
{
  v38 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  if ([self length] >= 9)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__NSMutableString_EncodedWord__sg_decodeEncodedWords__block_invoke;
    block[3] = &unk_278955468;
    block[4] = self;
    block[5] = a2;
    selfCopy = self;
    v27 = v4;
    if (sg_decodeEncodedWords__pasOnceToken8 != -1)
    {
      dispatch_once(&sg_decodeEncodedWords__pasOnceToken8, block);
    }

    selfCopy2 = self;
    v26 = sg_decodeEncodedWords__pasExprOnceResult;
    [v26 matchesInString:self options:0 range:{0, objc_msgSend(self, "length")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v25 = v35 = 0u;
    reverseObjectEnumerator = [v25 reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      v28 = reverseObjectEnumerator;
      v29 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
        v10 = 0;
        do
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          range = [*(*(&v32 + 1) + 8 * v10) range];
          v13 = v12;
          v14 = [selfCopy2 substringWithRange:{range, v12}];
          v15 = [v14 dataUsingEncoding:1];

          v16 = [objc_alloc(MEMORY[0x277D070A0]) initWithHeaderData:v15];
          if ([v16 identifyRangeOfEncodedWordAtIndex:0] != 0x7FFFFFFFFFFFFFFFLL)
          {
            stringEncoding = [v16 stringEncoding];

            if (stringEncoding)
            {
              v18 = objc_opt_new();
              if ([v16 decodeEncodedTextToData:v18] && objc_msgSend(v18, "length"))
              {
                v19 = objc_alloc(MEMORY[0x277CCACA8]);
                stringEncoding2 = [v16 stringEncoding];
                v21 = [v19 initWithData:v18 encoding:{objc_msgSend(stringEncoding2, "unsignedIntValue")}];

                if (v21)
                {
                  v22 = v29;
                  selfCopy2 = selfCopy;
                  if (v29 != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    if (sg_decodeEncodedWords__pasOnceToken9 != -1)
                    {
                      dispatch_once(&sg_decodeEncodedWords__pasOnceToken9, &__block_literal_global_11672);
                      v22 = v29;
                    }

                    v30 = v22 - (range + v13);
                    selfCopy2 = selfCopy;
                    v23 = [selfCopy rangeOfCharacterFromSet:sg_decodeEncodedWords__pasExprOnceResult_18 options:2 range:?];
                    v24 = v30;
                    if (v23 != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v24 = 0;
                    }

                    v13 += v24;
                  }

                  [selfCopy2 replaceCharactersInRange:range withString:{v13, v21}];
                  v29 = range;
                }

                else
                {
                  selfCopy2 = selfCopy;
                }

                reverseObjectEnumerator = v28;
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v8);
    }

    v4 = v27;
  }

  objc_autoreleasePoolPop(v4);
}

@end