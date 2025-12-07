@interface SPUISLegacySectionBuilder
+ (id)compactCardSectionForResult:(id)result;
+ (id)supportedBundleIds;
- (id)buildSection;
@end

@implementation SPUISLegacySectionBuilder

+ (id)supportedBundleIds
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.spotlight.related_search";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)compactCardSectionForResult:(id)result
{
  compactCard = [result compactCard];
  cardSections = [compactCard cardSections];
  firstObject = [cardSections firstObject];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = firstObject;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (id)buildSection
{
  selfCopy = self;
  v73 = *MEMORY[0x277D85DE8];
  section = [(SPUISSectionBuilder *)self section];
  mutableDeepCopy = [section mutableDeepCopy];

  section2 = [(SPUISSectionBuilder *)selfCopy section];
  results = [section2 results];
  v7 = [results copy];
  [mutableDeepCopy setResults:v7];

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  isTopHitSection = [(SPUISSectionBuilder *)selfCopy isTopHitSection];
  v54 = objc_opt_new();
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  results2 = [mutableDeepCopy results];
  v53 = v8;
  v57 = [results2 countByEnumeratingWithState:&v66 objects:v72 count:16];
  if (v57)
  {
    v56 = *v67;
    v51 = selfCopy;
    v52 = mutableDeepCopy;
    v50 = v9;
    v49 = isTopHitSection;
    v48 = results2;
    do
    {
      v12 = 0;
      do
      {
        if (*v67 != v56)
        {
          objc_enumerationMutation(results2);
        }

        v13 = *(*(&v66 + 1) + 8 * v12);
        inlineCard = [v13 inlineCard];
        if (inlineCard)
        {
          v15 = inlineCard;
          v16 = v12;
          buildResult = v13;
        }

        else
        {
          compactCard = [v13 compactCard];

          if (compactCard)
          {
            goto LABEL_10;
          }

          v16 = v12;
          v15 = [SPUISResultBuilder resultBuilderWithResult:v13];
          queryContext = [(SPUISSectionBuilder *)selfCopy queryContext];
          [v15 setQueryContext:queryContext];

          [v15 setIsTopHit:isTopHitSection];
          buildResult = [v15 buildResult];

          if ([v15 supportsClearingBackendData])
          {
            [buildResult clearBackendData];
          }

          if (buildResult)
          {
            [v54 addObject:buildResult];
          }
        }

        v13 = buildResult;
        v12 = v16;
LABEL_10:
        results3 = [mutableDeepCopy results];
        if ((objc_msgSend_count(results3) == 1) & isTopHitSection) != 1 || ([v13 usesCompactDisplay])
        {
LABEL_31:
        }

        else
        {
          shouldUseCompactDisplay = [v13 shouldUseCompactDisplay];

          if ((shouldUseCompactDisplay & 1) == 0)
          {
            v55 = v12;
            inlineCard2 = [v13 inlineCard];
            cardSections = [inlineCard2 cardSections];

            v64 = 0u;
            v65 = 0u;
            v62 = 0u;
            v63 = 0u;
            results3 = cardSections;
            v23 = [results3 countByEnumeratingWithState:&v62 objects:v71 count:16];
            if (!v23)
            {
              goto LABEL_30;
            }

            v24 = v23;
            v25 = *v63;
            while (1)
            {
              for (i = 0; i != v24; ++i)
              {
                if (*v63 != v25)
                {
                  objc_enumerationMutation(results3);
                }

                v27 = *(*(&v62 + 1) + 8 * i);
                backgroundColor = [v27 backgroundColor];
                if (!backgroundColor)
                {
                  contentType = [v13 contentType];
                  v30 = [contentType isEqualToString:@"com.apple.application-bundle"];

                  if (v30)
                  {
                    continue;
                  }

                  backgroundColor = objc_opt_new();
                  relatedAppIdentifier = [v13 relatedAppIdentifier];
                  if (relatedAppIdentifier)
                  {
                    [backgroundColor setApplicationBundleIdentifier:relatedAppIdentifier];
                  }

                  else
                  {
                    applicationBundleIdentifier = [v13 applicationBundleIdentifier];
                    if (applicationBundleIdentifier)
                    {
                      [backgroundColor setApplicationBundleIdentifier:applicationBundleIdentifier];
                    }

                    else
                    {
                      sectionBundleIdentifier = [v13 sectionBundleIdentifier];
                      [backgroundColor setApplicationBundleIdentifier:sectionBundleIdentifier];
                    }
                  }

                  [v27 setBackgroundColor:backgroundColor];
                }
              }

              v24 = [results3 countByEnumeratingWithState:&v62 objects:v71 count:16];
              if (!v24)
              {
LABEL_30:

                selfCopy = v51;
                mutableDeepCopy = v52;
                v8 = v53;
                v9 = v50;
                isTopHitSection = v49;
                results2 = v48;
                v12 = v55;
                goto LABEL_31;
              }
            }
          }
        }

        if (v13)
        {
          [v9 addObject:v13];
        }

        v34 = [objc_opt_class() compactCardSectionForResult:v13];
        v35 = v34;
        if (v34)
        {
          [v34 setSpotlightBackingResult:v13];
          [v8 addObject:v35];
        }

        ++v12;
      }

      while (v12 != v57);
      v37 = [results2 countByEnumeratingWithState:&v66 objects:v72 count:16];
      v57 = v37;
    }

    while (v37);
  }

  [objc_opt_class() disambiguateUIIfNecessary:v8];
  v38 = objc_opt_new();
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v39 = v9;
  v40 = [v39 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v59;
    do
    {
      for (j = 0; j != v41; ++j)
      {
        if (*v59 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v58 + 1) + 8 * j);
        if ([v54 containsObject:v44])
        {
          v45 = [objc_alloc(objc_opt_class()) initWithResult:v44];

          v44 = v45;
        }

        [v38 addObject:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v41);
  }

  [mutableDeepCopy setResults:v38];
  buildButtonItem = [(SPUISSectionBuilder *)selfCopy buildButtonItem];
  [mutableDeepCopy setButton:buildButtonItem];

  return mutableDeepCopy;
}

@end