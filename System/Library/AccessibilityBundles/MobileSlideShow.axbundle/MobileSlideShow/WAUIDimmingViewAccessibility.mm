@interface WAUIDimmingViewAccessibility
- (id)passthroughViews;
@end

@implementation WAUIDimmingViewAccessibility

- (id)passthroughViews
{
  v19 = *MEMORY[0x29EDCA608];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v16.receiver = self;
    v16.super_class = WAUIDimmingViewAccessibility;
    passthroughViews = [(WAUIDimmingViewAccessibility *)&v16 passthroughViews];
    array = [MEMORY[0x29EDB8DE8] array];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = passthroughViews;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v12 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [array addObject:{v10, v12}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = WAUIDimmingViewAccessibility;
    array = [(WAUIDimmingViewAccessibility *)&v17 passthroughViews];
  }

  return array;
}

@end