@interface SPUISSuggestionSectionBuilder
+ (id)supportedBundleIds;
- (id)buildSection;
@end

@implementation SPUISSuggestionSectionBuilder

+ (id)supportedBundleIds
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.searchd.suggestions";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)buildSection
{
  v19 = *MEMORY[0x277D85DE8];
  v17.receiver = self;
  v17.super_class = SPUISSuggestionSectionBuilder;
  buildSection = [(SPUISLegacySectionBuilder *)&v17 buildSection];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  results = [buildSection results];
  v4 = [results countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(results);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        [v8 setUsesCompactDisplay:1];
        [v8 setShouldUseCompactDisplay:1];
        compactCard = [v8 compactCard];
        cardSections = [compactCard cardSections];
        firstObject = [cardSections firstObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [firstObject setShouldUseCompactDisplay:1];
        }
      }

      v5 = [results countByEnumeratingWithState:&v13 objects:v18 count:16];
    }

    while (v5);
  }

  return buildSection;
}

@end