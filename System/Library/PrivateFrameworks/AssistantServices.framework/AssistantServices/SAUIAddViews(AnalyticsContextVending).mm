@interface SAUIAddViews(AnalyticsContextVending)
- (id)af_dialogIdentifiersForAnalyticsContext;
- (void)af_addEntriesToAnalyticsContext:()AnalyticsContextVending;
@end

@implementation SAUIAddViews(AnalyticsContextVending)

- (id)af_dialogIdentifiersForAnalyticsContext
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  views = [self views];
  v2 = [views countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(views);
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

      v3 = [views countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18.receiver = self;
  v18.super_class = &off_1F05AF988;
  objc_msgSendSuper2(&v18, sel_af_addEntriesToAnalyticsContext_, v4);
  dialogPhase = [self dialogPhase];
  if (dialogPhase)
  {
    [v4 setObject:dialogPhase forKey:@"dialogPhase"];
  }

  af_dialogIdentifiersForAnalyticsContext = [self af_dialogIdentifiersForAnalyticsContext];
  if ([af_dialogIdentifiersForAnalyticsContext count])
  {
    [v4 setObject:af_dialogIdentifiersForAnalyticsContext forKey:@"dialogIdentifiers"];
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  views = [self views];
  v9 = [views countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(views);
        }

        af_analyticsContext = [*(*(&v14 + 1) + 8 * v12) af_analyticsContext];
        if (af_analyticsContext)
        {
          [v7 addObject:af_analyticsContext];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [views countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    [v4 setObject:v7 forKey:@"views"];
  }
}

@end