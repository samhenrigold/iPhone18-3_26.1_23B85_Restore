@interface SAUIAddDialogs(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAUIAddDialogs(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  dialogs = [self dialogs];
  v2 = [dialogs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(dialogs);
        }

        af_dialogIdentifiersForAnalyticsContext = [*(*(&v10 + 1) + 8 * i) af_dialogIdentifiersForAnalyticsContext];
        if ([af_dialogIdentifiersForAnalyticsContext count])
        {
          if (!v4)
          {
            v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          [v4 addObjectsFromArray:af_dialogIdentifiersForAnalyticsContext];
        }
      }

      v3 = [dialogs countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = [v4 copy];

  return v8;
}

- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = &off_1F05B0980;
  objc_msgSendSuper2(&v17, sel_af_addEntriesToAnalyticsContext_, v4);
  af_dialogIdentifiersForAnalyticsContext = [self af_dialogIdentifiersForAnalyticsContext];
  if ([af_dialogIdentifiersForAnalyticsContext count])
  {
    [v4 setObject:af_dialogIdentifiersForAnalyticsContext forKey:@"dialogIdentifiers"];
  }

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dialogs = [self dialogs];
  v8 = [dialogs countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(dialogs);
        }

        af_analyticsContext = [*(*(&v13 + 1) + 8 * v11) af_analyticsContext];
        if (af_analyticsContext)
        {
          [v6 addObject:af_analyticsContext];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [dialogs countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v9);
  }

  if ([v6 count])
  {
    [v4 setObject:v6 forKey:@"dialogs"];
  }
}

@end