@interface SPUISBrowseSectionBuilder
+ (id)_sectionResultForResults:(id)results style:(int)style sectionTitle:(id)title sectionIdentifier:(id)identifier;
+ (id)resultCardForResult:(id)result;
+ (id)sectionWithTitle:(id)title identifier:(id)identifier style:(int)style results:(id)results;
+ (void)_fillSection:(id)section withListResults:(id)results;
@end

@implementation SPUISBrowseSectionBuilder

+ (id)_sectionResultForResults:(id)results style:(int)style sectionTitle:(id)title sectionIdentifier:(id)identifier
{
  v37 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  titleCopy = title;
  identifierCopy = identifier;
  if ([self useWiderBrowseView])
  {
    v13 = 7;
  }

  else
  {
    v13 = 5;
  }

  if (style == 2)
  {
    v14 = objc_opt_new();
  }

  else if (style == 1)
  {
    v14 = objc_opt_new();
    [v14 setNumberOfColumns:v13];
    [v14 setInitiallyVisibleCardSectionCount:v13];
  }

  else if (style)
  {
    v14 = 0;
  }

  else
  {
    v14 = objc_opt_new();
    [v14 setNumberOfColumns:v13];
  }

  v15 = objc_opt_new();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v16 = resultsCopy;
  v17 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v32;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v32 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [self _resultCardSectionForResult:{*(*(&v31 + 1) + 8 * i), v31}];
        if (v21)
        {
          [v15 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v18);
  }

  v22 = objc_opt_new();
  [v22 setCardSections:v15];
  [v22 setCollectionStyle:v14];
  v23 = [MEMORY[0x277D4C598] textWithString:titleCopy];
  objc_msgSend_setTitle_(v22);

  cardSections = [v22 cardSections];
  v25 = objc_msgSend_count(cardSections);

  if (v25)
  {
    v26 = objc_alloc_init(MEMORY[0x277D65850]);
    v27 = objc_opt_new();
    [v26 setInlineCard:v27];

    v35 = v22;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    inlineCard = [v26 inlineCard];
    [inlineCard setCardSections:v28];

    [v26 setSectionBundleIdentifier:identifierCopy];
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

+ (void)_fillSection:(id)section withListResults:(id)results
{
  v20 = *MEMORY[0x277D85DE8];
  sectionCopy = section;
  resultsCopy = results;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [resultsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        bundleIdentifier = [sectionCopy bundleIdentifier];
        v14 = [self _configureResultForAppList:v12 sectionBundleIdentifier:bundleIdentifier];

        if (v14)
        {
          [sectionCopy addResults:v14];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [resultsCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  [sectionCopy setMaxInitiallyVisibleResults:-1];
}

+ (id)sectionWithTitle:(id)title identifier:(id)identifier style:(int)style results:(id)results
{
  v7 = *&style;
  titleCopy = title;
  identifierCopy = identifier;
  resultsCopy = results;
  v13 = objc_opt_new();
  [v13 setGroupName:titleCopy];
  objc_msgSend_setTitle_(v13);
  [v13 setIdentifier:identifierCopy];
  [v13 setDomain:12];
  if (v7 >= 3)
  {
    if (v7 == 3)
    {
      [self _fillSection:v13 withListResults:resultsCopy];
    }
  }

  else
  {
    v14 = [self _sectionResultForResults:resultsCopy style:v7 sectionTitle:titleCopy sectionIdentifier:identifierCopy];
    if (v14)
    {
      [v13 addResults:v14];
    }
  }

  if ([v13 resultsCount])
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)resultCardForResult:(id)result
{
  v3 = [SPUISResultBuilder resultBuilderWithResult:result];
  [v3 setIsForBrowseMode:1];
  buildDetailedRowCardSection = [v3 buildDetailedRowCardSection];

  return buildDetailedRowCardSection;
}

@end