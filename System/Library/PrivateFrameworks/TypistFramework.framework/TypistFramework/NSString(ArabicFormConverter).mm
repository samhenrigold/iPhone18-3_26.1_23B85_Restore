@interface NSString(ArabicFormConverter)
+ (id)arabicCharacterFormMap;
+ (id)arabicDiacriticCharacterSet;
+ (id)arabicFinalFormsCharacterSet;
+ (id)arabicNonPresentationFormCharacterSet;
+ (id)combinedArabicCharacterFormMap;
- (id)stringByConvertingArabicCharactersToPresentationForms;
@end

@implementation NSString(ArabicFormConverter)

+ (id)combinedArabicCharacterFormMap
{
  if (combinedArabicCharacterFormMap_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) combinedArabicCharacterFormMap];
  }

  v2 = combinedArabicCharacterFormMap_combinedArabicCharacterFormMap;

  return v2;
}

+ (id)arabicNonPresentationFormCharacterSet
{
  if (arabicNonPresentationFormCharacterSet_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicNonPresentationFormCharacterSet];
  }

  v2 = arabicNonPresentationFormCharacterSet_arabicNonPresentationFormCharacterSet;

  return v2;
}

+ (id)arabicCharacterFormMap
{
  if (arabicCharacterFormMap_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicCharacterFormMap];
  }

  v2 = arabicCharacterFormMap_arabicCharacterFormMap;

  return v2;
}

+ (id)arabicDiacriticCharacterSet
{
  if (arabicDiacriticCharacterSet_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicDiacriticCharacterSet];
  }

  v2 = arabicDiacriticCharacterSet_arabicDiacriticCharacterSet;

  return v2;
}

+ (id)arabicFinalFormsCharacterSet
{
  if (arabicFinalFormsCharacterSet_onceToken != -1)
  {
    +[NSString(ArabicFormConverter) arabicFinalFormsCharacterSet];
  }

  v2 = arabicFinalFormsCharacterSet_arabicFinalFormsCharacterSet;

  return v2;
}

- (id)stringByConvertingArabicCharactersToPresentationForms
{
  v3 = objc_opt_new();
  arabicCharacterFormMap = [MEMORY[0x277CCACA8] arabicCharacterFormMap];
  combinedArabicCharacterFormMap = [MEMORY[0x277CCACA8] combinedArabicCharacterFormMap];
  arabicDiacriticCharacterSet = [MEMORY[0x277CCACA8] arabicDiacriticCharacterSet];
  if ([self length])
  {
    v5 = 0;
    v6 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v7 = [self characterAtIndex:v5];
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v7];
      v9 = [arabicCharacterFormMap objectForKey:v8];

      if (v9)
      {
        break;
      }

      [v3 appendFormat:@"%C", v7];
LABEL_39:

      if (++v5 >= [self length])
      {
        goto LABEL_42;
      }
    }

    v10 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v9;
      v12 = [self characterAtIndex:v6];
      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v12];
      v14 = [arabicCharacterFormMap objectForKeyedSubscript:v13];

      if (!v14 || ([v14 arabicCharacterValue] & 0xFFFF0000) == 0 && (objc_msgSend(v14, "arabicCharacterValue") & 0xFFFF00000000) == 0)
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
      }

      v10 = v6;
      v9 = v11;
    }

    v6 = v5 + 1;
    v15 = v5 + 1;
    if (v5 + 1 < [self length])
    {
      v15 = v5 + 1;
      do
      {
        if (![arabicDiacriticCharacterSet characterIsMember:{objc_msgSend(self, "characterAtIndex:", v15)}])
        {
          break;
        }

        ++v15;
      }

      while (v15 < [self length]);
    }

    if (v15 < [self length])
    {
      v29 = v7;
      v30 = v9;
      v16 = v3;
      v17 = [self characterAtIndex:v15];
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
      v19 = [arabicCharacterFormMap objectForKeyedSubscript:v18];

      if (!v17)
      {
        v3 = v16;
LABEL_28:
        v9 = v30;
LABEL_29:

LABEL_30:
        arabicCharacterValue = [v9 arabicCharacterValue];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && v17 && (arabicCharacterValue & 0xFFFF00000000) != 0)
        {
          v26 = HIDWORD(arabicCharacterValue);
        }

        else if (v10 == 0x7FFFFFFFFFFFFFFFLL || (v26 = HIWORD(arabicCharacterValue)) == 0)
        {
          v26 = arabicCharacterValue >> 16;
          if ((v17 & ((arabicCharacterValue & 0xFFFF0000) != 0)) == 0)
          {
            LOWORD(v26) = arabicCharacterValue;
          }
        }

        [v3 appendFormat:@"%C", v26];
        v6 = v5;
        goto LABEL_39;
      }

      v3 = v16;
      if (([v19 arabicCharacterValue] & 0xFFFF00000000) == 0)
      {
        arabicCharacterValue2 = [v19 arabicCharacterValue];
        if (v17 != 1600 && !HIWORD(arabicCharacterValue2))
        {
          LODWORD(v17) = 0;
          goto LABEL_28;
        }
      }

      v9 = v30;
      if (v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"%C%C", v29, v17];
        v20 = [combinedArabicCharacterFormMap objectForKey:v19];
        if (v20)
        {
          v21 = v20;
          arabicCharacterValue3 = [v20 arabicCharacterValue];
          v23 = HIWORD(arabicCharacterValue3);
          if (v10 == 0x7FFFFFFFFFFFFFFFLL)
          {
            LOWORD(v23) = arabicCharacterValue3;
          }

          [v3 appendFormat:@"%C", v23];

          ++v5;
          goto LABEL_39;
        }

        LODWORD(v17) = 1;
        goto LABEL_29;
      }
    }

    LODWORD(v17) = 0;
    goto LABEL_30;
  }

LABEL_42:

  return v3;
}

@end