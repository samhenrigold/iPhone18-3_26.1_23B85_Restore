@interface _CDStringTokenizer
+ (BOOL)isEnglishStopWord:(id)word;
+ (id)extractNormalizedKeywords:(id)keywords;
@end

@implementation _CDStringTokenizer

+ (BOOL)isEnglishStopWord:(id)word
{
  v3 = isEnglishStopWord__onceToken;
  wordCopy = word;
  if (v3 != -1)
  {
    +[_CDStringTokenizer isEnglishStopWord:];
  }

  v5 = isEnglishStopWord___stopWordSet;
  lowercaseString = [wordCopy lowercaseString];

  v7 = [v5 containsObject:lowercaseString];
  return v7;
}

+ (id)extractNormalizedKeywords:(id)keywords
{
  v24 = *MEMORY[0x1E69E9840];
  keywordsCopy = keywords;
  if (keywordsCopy)
  {
    punctuationCharacterSet = [MEMORY[0x1E696AB08] punctuationCharacterSet];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v7 = [whitespaceAndNewlineCharacterSet mutableCopy];
    v18 = punctuationCharacterSet;
    [v7 formUnionWithCharacterSet:punctuationCharacterSet];
    lowercaseString = [keywordsCopy lowercaseString];
    v9 = [lowercaseString componentsSeparatedByCharactersInSet:v7];

    v10 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v9, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v19 + 1) + 8 * i);
          if ([v16 length] >= 2 && (objc_msgSend(self, "isEnglishStopWord:", v16) & 1) == 0)
          {
            [v10 addObject:v16];
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E695DFD8] set];
  }

  return v10;
}

@end