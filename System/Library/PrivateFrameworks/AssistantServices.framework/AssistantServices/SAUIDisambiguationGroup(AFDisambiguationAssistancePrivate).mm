@interface SAUIDisambiguationGroup(AFDisambiguationAssistancePrivate)
- (id)af_assistedSelectionItem;
- (id)af_disambiguationIdentifier;
- (id)af_indexIdentifierForItem:()AFDisambiguationAssistancePrivate;
- (id)af_itemForIndexIdentifier:()AFDisambiguationAssistancePrivate;
- (void)af_setDisambiguationInfo:()AFDisambiguationAssistancePrivate;
@end

@implementation SAUIDisambiguationGroup(AFDisambiguationAssistancePrivate)

- (id)af_assistedSelectionItem
{
  v1 = _af_AssistedSelectionItem(self);
  v2 = +[AFAnalytics sharedAnalytics];
  v3 = v2;
  if (v1)
  {
    v4 = &unk_1F056F518;
  }

  else
  {
    v4 = 0;
  }

  [v2 logEventWithType:1925 context:v4];

  return v1;
}

- (void)af_setDisambiguationInfo:()AFDisambiguationAssistancePrivate
{
  selfCopy = self;
  v5 = a3;
  objc_setAssociatedObject(selfCopy, "DisambiguationInfoKey", v5, 1);
  v7 = objc_alloc_init(AFDisambiguationStore);
  af_disambiguationIdentifier = [selfCopy af_disambiguationIdentifier];

  [(AFDisambiguationStore *)v7 saveInfo:v5 forIdentifier:af_disambiguationIdentifier];
}

- (id)af_itemForIndexIdentifier:()AFDisambiguationAssistancePrivate
{
  v4 = a3;
  v5 = [v4 rangeOfString:@"."];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = v5;
    v9 = v6;
    v10 = [v4 substringToIndex:v5];
    integerValue = [v10 integerValue];
    disambiguationLists = [self disambiguationLists];
    v13 = [disambiguationLists count];
    v14 = v13;
    if (integerValue)
    {
      if (integerValue >= v13)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
      if (!objc_msgSend_isEqualToString_(v4) || v14 <= 0)
      {
LABEL_11:
        v16 = [v4 substringFromIndex:v8 + v9];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v7 = 0;
        }

        else
        {
          v17 = [disambiguationLists objectAtIndexedSubscript:v15];
          v7 = [v17 af_itemForIndexIdentifier:v16];
        }

        goto LABEL_15;
      }
    }

    if (integerValue >= 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = integerValue;
    }

    goto LABEL_11;
  }

  v7 = 0;
LABEL_15:

  return v7;
}

- (id)af_indexIdentifierForItem:()AFDisambiguationAssistancePrivate
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  disambiguationLists = [self disambiguationLists];
  v6 = [disambiguationLists countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    while (2)
    {
      v10 = 0;
      v11 = v8;
      v8 += v7;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(disambiguationLists);
        }

        v12 = [*(*(&v16 + 1) + 8 * v10) af_indexIdentifierForItem:v4];
        if (v12)
        {
          v14 = v12;

          if (v11 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = 0;
          }

          else
          {
            v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lu.%@", v11, v14];
          }

          goto LABEL_13;
        }

        ++v11;
        ++v10;
      }

      while (v7 != v10);
      v7 = [disambiguationLists countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
  v14 = 0;
LABEL_13:

  return v13;
}

- (id)af_disambiguationIdentifier
{
  v15 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA1_Init(&c);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  disambiguationLists = [self disambiguationLists];
  v3 = [disambiguationLists countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(disambiguationLists);
        }

        _UpdateSha1WithDisambiguationList(&c, *(*(&v9 + 1) + 8 * i));
      }

      v4 = [disambiguationLists countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:20];
  CC_SHA1_Final([v7 mutableBytes], &c);

  return v7;
}

@end