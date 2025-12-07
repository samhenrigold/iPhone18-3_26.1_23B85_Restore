@interface UIDictionaryManager
@end

@implementation UIDictionaryManager

uint64_t __56___UIDictionaryManager__downloadDictionaryAssetCatalog___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    NSLog(&cfstr_Uidictionaryma.isa, a2);
  }

  result = *(a1 + 32);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t __59___UIDictionaryManager__allAvailableDefinitionDictionaries__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 definitionLanguage];
  isEqualToString = objc_msgSend_isEqualToString_(v6);

  v8 = [v5 definitionLanguage];
  v9 = objc_msgSend_isEqualToString_(v8);

  if (!isEqualToString || v9)
  {
    if (isEqualToString & 1 | ((v9 & 1) == 0))
    {
      v11 = [v5 localizedLanguageName];
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v12 = &stru_1EFB14550;
      }

      v13 = [v4 localizedLanguageName];
      v10 = [v13 localizedStandardCompare:v12];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = -1;
  }

  return v10;
}

@end