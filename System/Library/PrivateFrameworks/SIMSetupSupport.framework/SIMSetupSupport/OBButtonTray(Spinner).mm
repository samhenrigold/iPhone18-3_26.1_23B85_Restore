@interface OBButtonTray(Spinner)
- (id)_hide;
- (uint64_t)_containsButton:()Spinner;
- (uint64_t)_containsSSOBBoldTrayButton;
- (void)_show:()Spinner;
@end

@implementation OBButtonTray(Spinner)

- (id)_hide
{
  buttons = [self buttons];
  v3 = [buttons copy];

  [self removeAllButtons];

  return v3;
}

- (void)_show:()Spinner
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [self addButton:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (uint64_t)_containsSSOBBoldTrayButton
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  buttons = [self buttons];
  v2 = [buttons countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = *v7;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v7 != v3)
        {
          objc_enumerationMutation(buttons);
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 1;
          goto LABEL_11;
        }
      }

      v2 = [buttons countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v2;
}

- (uint64_t)_containsButton:()Spinner
{
  v4 = a3;
  buttons = [self buttons];
  v6 = [buttons containsObject:v4];

  return v6;
}

@end