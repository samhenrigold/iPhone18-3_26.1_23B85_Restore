@interface NSArray(Readable)
- (char)_intents_readableTitleWithLocalizer:()Readable metadata:;
- (id)_intents_localizedCopyWithLocalizer:()Readable;
@end

@implementation NSArray(Readable)

- (id)_intents_localizedCopyWithLocalizer:()Readable
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) _intents_localizedCopyWithLocalizer:{v4, v13}];
        [v5 addObject:v11];
      }

      v8 = [selfCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (char)_intents_readableTitleWithLocalizer:()Readable metadata:
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  locale = [v6 locale];
  v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  selfCopy = self;
  v11 = [selfCopy countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(selfCopy);
        }

        v15 = [*(*(&v36 + 1) + 8 * i) _intents_readableTitleWithLocalizer:v6 metadata:v7];
        if ([v15 length])
        {
          [v9 addObject:v15];
        }
      }

      v12 = [selfCopy countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  v16 = [v9 count];
  firstObject = v16;
  if (v16)
  {
    if (v16 == 2)
    {
      v18 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = INLocalizedStringWithLocalizer(@"%@ and %@ (two elements format)", @"%@ and %@", v6);
      lastObject = [v9 objectAtIndex:0];
      v21 = [v9 objectAtIndex:1];
      firstObject = [v18 initWithFormat:v19 locale:locale, lastObject, v21];
    }

    else
    {
      if (v16 == 1)
      {
        firstObject = [v9 firstObject];
        goto LABEL_22;
      }

      v22 = objc_alloc(MEMORY[0x1E696AEC0]);
      v23 = INLocalizedStringWithLocalizer(@"%@, %@ (three or more start format)", @"%@, %@", v6);
      v24 = [v9 objectAtIndex:0];
      v25 = [v9 objectAtIndex:1];
      v26 = [v22 initWithFormat:v23 locale:locale, v24, v25];

      v35 = locale;
      if ((firstObject - 1) < 3)
      {
        v32 = v26;
      }

      else
      {
        v27 = firstObject - 3;
        v28 = 2;
        do
        {
          v29 = objc_alloc(MEMORY[0x1E696AEC0]);
          v30 = INLocalizedStringWithLocalizer(@"%@, %@ (three or more middle format)", @"%@, %@", v6);
          v31 = [v9 objectAtIndex:v28];
          v32 = [v29 initWithFormat:v30 locale:v35, v26, v31];

          ++v28;
          v26 = v32;
          --v27;
        }

        while (v27);
      }

      v33 = objc_alloc(MEMORY[0x1E696AEC0]);
      v19 = INLocalizedStringWithLocalizer(@"%@ and %@ (three or more end format)", @"%@ and %@", v6);
      lastObject = [v9 lastObject];
      locale = v35;
      firstObject = [v33 initWithFormat:v19 locale:v35, v32, lastObject];
    }
  }

LABEL_22:

  return firstObject;
}

@end