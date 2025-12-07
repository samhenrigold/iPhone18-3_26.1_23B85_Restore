@interface SSAppGridSectionBuilder
+ (BOOL)supportsSection:(id)section queryContext:(id)context;
- (id)buildSection;
@end

@implementation SSAppGridSectionBuilder

+ (BOOL)supportsSection:(id)section queryContext:(id)context
{
  sectionCopy = section;
  if (isMacOS())
  {
    v5 = 0;
  }

  else
  {
    bundleIdentifier = [sectionCopy bundleIdentifier];
    if ([bundleIdentifier isEqualToString:@"com.apple.spotlight.tophits"])
    {
      results = [sectionCopy results];
      firstObject = [results firstObject];
      sectionBundleIdentifier = [firstObject sectionBundleIdentifier];
      v5 = [sectionBundleIdentifier isEqualToString:@"com.apple.application"];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)buildSection
{
  v15 = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = SSAppGridSectionBuilder;
  buildSection = [(SSLegacySectionBuilder *)&v13 buildSection];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  results = [buildSection results];
  v4 = [results countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(results);
        }

        [*(*(&v9 + 1) + 8 * i) setRenderHorizontallyWithOtherResultsInCategory:1];
      }

      v5 = [results countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v5);
  }

  return buildSection;
}

@end