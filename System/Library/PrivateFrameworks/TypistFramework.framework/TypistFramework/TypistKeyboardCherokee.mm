@interface TypistKeyboardCherokee
- (TypistKeyboardCherokee)initWithCoder:(id)coder;
- (id)addAccentKeyAction:(id)action;
- (id)generateBaseKeyMap:(id)map;
- (id)generateKeyplaneSwitchTable:(id)table;
- (id)getPostfixKey:(id)key;
- (id)init:(id)init options:(id)options;
- (id)setupKeyboardInfo:(id)info options:(id)options;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TypistKeyboardCherokee

- (id)init:(id)init options:(id)options
{
  v5.receiver = self;
  v5.super_class = TypistKeyboardCherokee;
  return [(TypistKeyboard *)&v5 init:init options:options locale:@"chr"];
}

- (id)setupKeyboardInfo:(id)info options:(id)options
{
  v9.receiver = self;
  v9.super_class = TypistKeyboardCherokee;
  v5 = [(TypistKeyboard *)&v9 setupKeyboardInfo:info options:options];
  if (!v5)
  {
    [(TypistKeyboardCherokee *)self setVowelKeyMap:&unk_28802A500];
    keyPlanes = [(TypistKeyboard *)self keyPlanes];
    v7 = [(TypistKeyboardCherokee *)self generateBaseKeyMap:keyPlanes];
    [(TypistKeyboardCherokee *)self setBaseCharacters:v7];
  }

  return v5;
}

- (id)generateKeyplaneSwitchTable:(id)table
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = TypistKeyboardCherokee;
  v3 = [(TypistKeyboard *)&v15 generateKeyplaneSwitchTable:table];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [v3 allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 containsString:@"shift"])
        {
          [v3 removeObjectForKey:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)getPostfixKey:(id)key
{
  keyCopy = key;
  baseCharacters = [(TypistKeyboardCherokee *)self baseCharacters];
  v6 = [baseCharacters objectForKeyedSubscript:keyCopy];

  if (v6)
  {
    baseCharacters2 = [(TypistKeyboardCherokee *)self baseCharacters];
    v8 = [baseCharacters2 objectForKeyedSubscript:keyCopy];
  }

  else
  {
    v8 = keyCopy;
  }

  return v8;
}

- (id)generateBaseKeyMap:(id)map
{
  v36 = *MEMORY[0x277D85DE8];
  mapCopy = map;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = mapCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v22 = *v31;
    v23 = v5;
    do
    {
      v9 = 0;
      v24 = v7;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [v5 objectForKeyedSubscript:{*(*(&v30 + 1) + 8 * v9), v22, v23}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = v10;
          v11 = v10;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v12 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v27;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v27 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v26 + 1) + 8 * i);
                v17 = [v11 objectForKeyedSubscript:v16];
                v18 = [v17 objectForKeyedSubscript:@"basekey"];

                if (v18)
                {
                  v19 = [v11 objectForKeyedSubscript:v16];
                  v20 = [v19 objectForKeyedSubscript:@"basekey"];

                  [dictionary setObject:v20 forKeyedSubscript:v16];
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v26 objects:v34 count:16];
            }

            while (v13);
          }

          v8 = v22;
          v5 = v23;
          v7 = v24;
          v10 = v25;
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [v5 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v7);
  }

  return dictionary;
}

- (id)addAccentKeyAction:(id)action
{
  v15[1] = *MEMORY[0x277D85DE8];
  actionCopy = action;
  vowelKeyMap = [(TypistKeyboardCherokee *)self vowelKeyMap];
  v6 = [vowelKeyMap objectForKeyedSubscript:actionCopy];

  if (v6)
  {
    keyPlanes = [(TypistKeyboard *)self keyPlanes];
    defaultPlaneName = [(TypistKeyboard *)self defaultPlaneName];
    v9 = [keyPlanes objectForKeyedSubscript:defaultPlaneName];
    vowelKeyMap2 = [(TypistKeyboardCherokee *)self vowelKeyMap];
    v11 = [vowelKeyMap2 objectForKeyedSubscript:actionCopy];
    v12 = [v9 objectForKeyedSubscript:v11];
    v15[0] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TypistKeyboardCherokee)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TypistKeyboardCherokee;
  v5 = [(TypistKeyboard *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vowelKeyMap"];
    vowelKeyMap = v5->_vowelKeyMap;
    v5->_vowelKeyMap = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = TypistKeyboardCherokee;
  [(TypistKeyboard *)&v6 encodeWithCoder:coderCopy];
  vowelKeyMap = self->_vowelKeyMap;
  if (vowelKeyMap)
  {
    [coderCopy encodeObject:vowelKeyMap forKey:@"vowelKeyMap"];
  }
}

@end