@interface TIKeyboardFeatureSpecialization_ain
- (id)findPrefixMatchesFor:(id)for fromIndex:(unint64_t)index usingCompositionMap:(id)map matchesInputAsPrefix:(BOOL)prefix;
- (id)internalStringToExternal:(id)external;
- (id)wordCharacters;
@end

@implementation TIKeyboardFeatureSpecialization_ain

- (id)internalStringToExternal:(id)external
{
  v4 = [external _stringByReplacingCharacter:32 withCharacter:12288];
  v5 = [v4 _stringByReplacingCharacter:45 withCharacter:12540];

  v8.receiver = self;
  v8.super_class = TIKeyboardFeatureSpecialization_ain;
  v6 = [(TIKeyboardFeatureSpecialization *)&v8 internalStringToExternal:v5];

  return v6;
}

- (id)wordCharacters
{
  v3 = [objc_alloc(MEMORY[0x29EDC70E0]) initWithBaseCharacterSet:10];
  nonstopPunctuationCharacters = [(TIKeyboardFeatureSpecialization *)self nonstopPunctuationCharacters];
  [v3 addCharactersInString:nonstopPunctuationCharacters];

  [v3 removeCharactersInString:@"ー"];

  return v3;
}

- (id)findPrefixMatchesFor:(id)for fromIndex:(unint64_t)index usingCompositionMap:(id)map matchesInputAsPrefix:(BOOL)prefix
{
  prefixCopy = prefix;
  forCopy = for;
  mapCopy = map;
  if (![forCopy length] || objc_msgSend(forCopy, "length") <= index)
  {
    v12 = MEMORY[0x29EDB8E90];
    goto LABEL_14;
  }

  v36.receiver = self;
  v36.super_class = TIKeyboardFeatureSpecialization_ain;
  v12 = [(TIKeyboardFeatureSpecialization *)&v36 findPrefixMatchesFor:forCopy fromIndex:index usingCompositionMap:mapCopy matchesInputAsPrefix:prefixCopy];
  if (index)
  {
    v13 = [forCopy characterAtIndex:index];
    v14 = v13;
    if (v13 == 114 || v13 == 104)
    {
      v15 = [forCopy characterAtIndex:index - 1];
      v16 = [MEMORY[0x29EDBA0F8] _stringWithUnichar:v14];
      if (v14 == 114)
      {
        v17 = 0;
        v18 = 0;
        HIDWORD(v23) = v15 - 97;
        LODWORD(v23) = v15 - 97;
        v22 = v23 >> 1;
        if (v22 <= 3)
        {
          if (!v22)
          {
            v17 = @"ㇻ";
            goto LABEL_35;
          }

          if (v22 == 2)
          {
            v17 = @"ㇾ";
            goto LABEL_35;
          }
        }

        else
        {
          switch(v22)
          {
            case 4:
              v17 = @"ㇼ";
              goto LABEL_35;
            case 7:
              v17 = @"ㇿ";
              goto LABEL_35;
            case 10:
              v17 = @"ㇽ";
              goto LABEL_35;
          }
        }
      }

      else if (v14 == 104)
      {
        v17 = 0;
        v18 = 0;
        HIDWORD(v20) = v15 - 97;
        LODWORD(v20) = v15 - 97;
        v19 = v20 >> 1;
        if (v19 <= 3)
        {
          if (!v19)
          {
            v17 = @"ㇵ";
            goto LABEL_35;
          }

          if (v19 == 2)
          {
            v17 = @"ㇸ";
            goto LABEL_35;
          }
        }

        else
        {
          switch(v19)
          {
            case 4:
              v17 = @"ㇶ";
              goto LABEL_35;
            case 7:
              v17 = @"ㇹ";
              goto LABEL_35;
            case 10:
              v17 = @"ㇷ";
LABEL_35:
              v18 = 1;
              break;
          }
        }
      }

      else
      {
        v18 = 0;
        v17 = 0;
      }

      v24 = index + 1;
      v25 = v24 >= [forCopy length] || objc_msgSend(forCopy, "characterAtIndex:", v24) != 106;
      if ((v18 & v25) == 1)
      {
        v26 = [v12 mutableCopy];
        v27 = [v26 count];
        if ([v26 count])
        {
          v34 = v27;
          v35 = v17;
          v28 = 0;
          while (1)
          {
            v29 = [v26 objectAtIndexedSubscript:{v28, v34}];
            v30 = [v29 key];
            v31 = [v30 length];
            v32 = [v16 length];

            if (v31 <= v32)
            {
              break;
            }

            if ([v26 count] <= ++v28)
            {
              v27 = v34;
              v17 = v35;
              goto LABEL_46;
            }
          }

          v27 = v28;
          v17 = v35;
        }

LABEL_46:
        v33 = [MEMORY[0x29EDC7208] itemWithKey:v16 value:v17];
        [v26 insertObject:v33 atIndex:v27];

        v12 = v26;
      }
    }
  }

LABEL_14:

  return v12;
}

@end