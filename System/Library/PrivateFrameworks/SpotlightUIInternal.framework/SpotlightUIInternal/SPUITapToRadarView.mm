@interface SPUITapToRadarView
+ (BOOL)shouldDisplayTapToRadar;
+ (id)generateComponentQueryItems;
+ (void)openTapToRadarWithQuery:(id)query sections:(id)sections rankingDebugLog:(id)log;
- (SPUITapToRadarView)initWithTarget:(id)target action:(SEL)action;
- (void)updateImage;
@end

@implementation SPUITapToRadarView

+ (BOOL)shouldDisplayTapToRadar
{
  if (shouldDisplayTapToRadar_onceToken != -1)
  {
    +[SPUITapToRadarView shouldDisplayTapToRadar];
  }

  return shouldDisplayTapToRadar_shouldDisplayTapToRadar;
}

void __45__SPUITapToRadarView_shouldDisplayTapToRadar__block_invoke()
{
  [@"com.apple.spotlightui" cStringUsingEncoding:1];
  if (os_variant_has_internal_diagnostics())
  {
    v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    shouldDisplayTapToRadar_shouldDisplayTapToRadar = [v0 BOOLForKey:*MEMORY[0x277D4BF40]] ^ 1;
  }

  else
  {
    shouldDisplayTapToRadar_shouldDisplayTapToRadar = 0;
  }
}

- (SPUITapToRadarView)initWithTarget:(id)target action:(SEL)action
{
  v15[1] = *MEMORY[0x277D85DE8];
  targetCopy = target;
  v14.receiver = self;
  v14.super_class = SPUITapToRadarView;
  v7 = [(SPUITapToRadarView *)&v14 init];
  if (v7)
  {
    v8 = objc_opt_new();
    [v8 setProminence:2];
    [v8 setTitle:@"Tap-to-Radar"];
    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76920]];
    [v8 setFont:v9];

    titleLabel = [v8 titleLabel];
    [titleLabel setAdjustsFontForContentSizeCategory:1];

    [v8 setMinimumLayoutSize:{44.0, 44.0}];
    [(SPUITapToRadarView *)v7 setLayoutMargins:16.0, 0.0, 16.0, 0.0];
    [(SPUITapToRadarView *)v7 setLayoutMarginsRelativeArrangement:1];
    [(NUIContainerBoxView *)v7 setHorizontalAlignment:3];
    [v8 addTarget:targetCopy action:action];
    v15[0] = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:1];
    [(SPUITapToRadarView *)v7 setArrangedSubviews:v11];

    [(SPUITapToRadarView *)v7 updateImage];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel_updateImage name:*MEMORY[0x277D76810] object:0];
  }

  return v7;
}

- (void)updateImage
{
  arrangedSubviews = [(SPUITapToRadarView *)self arrangedSubviews];
  firstObject = [arrangedSubviews firstObject];

  v3 = MEMORY[0x277D4C890];
  font = [firstObject font];
  v5 = [v3 uiImageWithSymbolName:@"ant.fill" font:font scale:1];
  [firstObject setImage:v5 forState:0];
}

+ (void)openTapToRadarWithQuery:(id)query sections:(id)sections rankingDebugLog:(id)log
{
  v77 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  sectionsCopy = sections;
  logCopy = log;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Build>"];
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  operatingSystemVersionString = [processInfo operatingSystemVersionString];

  selfCopy = self;
  v61 = operatingSystemVersionString;
  if (operatingSystemVersionString)
  {
    v13 = objc_msgSend(operatingSystemVersionString, "rangeOfString:", @"(Build ");
    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [operatingSystemVersionString substringFromIndex:v13 + v14];
      v16 = [v15 rangeOfString:@""]);
      if (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v15 substringToIndex:v16];

        v15 = v17;
        v10 = v15;
      }
    }
  }

  string = [MEMORY[0x277CCAB68] string];
  v63 = v10;
  [string appendFormat:@"Build: %@\n\n", v10];
  v62 = queryCopy;
  [string appendFormat:@"Query: %@\n\n", queryCopy];
  [string appendString:@"Results:\n"];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = sectionsCopy;
  v19 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v71;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v71 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v70 + 1) + 8 * i);
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        results = [v23 results];
        v25 = [results countByEnumeratingWithState:&v66 objects:v75 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v67;
          do
          {
            for (j = 0; j != v26; ++j)
            {
              if (*v67 != v27)
              {
                objc_enumerationMutation(results);
              }

              v29 = [*(*(&v66 + 1) + 8 * j) debugDescription];
              [string appendString:v29];

              [string appendString:@"\n"];
            }

            v26 = [results countByEnumeratingWithState:&v66 objects:v75 count:16];
          }

          while (v26);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v70 objects:v76 count:16];
    }

    while (v20);
  }

  v30 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v30 setScheme:@"tap-to-radar"];
  v59 = v30;
  [v30 setHost:@"new"];
  v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:8];
  generateComponentQueryItems = [selfCopy generateComponentQueryItems];
  [v31 addObjectsFromArray:generateComponentQueryItems];

  v33 = SSExtensionIdentifiersForSections();
  v34 = MEMORY[0x277CCAD18];
  v58 = v33;
  v57 = [v33 componentsJoinedByString:{@", "}];
  v56 = [v34 queryItemWithName:@"ExtensionIdentifiers" value:v57];
  v74[0] = v56;
  v35 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:@"Other Bug"];
  v74[1] = v35;
  v36 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:@"I Didn't Try"];
  v74[2] = v36;
  v37 = MEMORY[0x277CCAD18];
  v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: ", v63];
  v39 = [v37 queryItemWithName:@"Title" value:v38];
  v74[3] = v39;
  v40 = MEMORY[0x277CCAD18];
  v41 = MEMORY[0x277CCACA8];
  internalReleaseAgreementText = [MEMORY[0x277D65D78] internalReleaseAgreementText];
  v43 = internalReleaseAgreementText;
  v44 = &stru_287C49600;
  if (logCopy)
  {
    v44 = logCopy;
  }

  v45 = [v41 stringWithFormat:@"Summary: \n\n\n*** Note: Debug info contains the titles of items in the UI. Please review for confidential information.  %@ ***\n\n===  DEBUG INFO  ===\n\n%@\n\n%@", internalReleaseAgreementText, string, v44];
  v46 = [v40 queryItemWithName:@"Description" value:v45];
  v74[4] = v46;
  v47 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:5];
  [v31 addObjectsFromArray:v47];

  v48 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  filePathForCapturedScreenshot = [MEMORY[0x277D65D78] filePathForCapturedScreenshot];
  if (filePathForCapturedScreenshot)
  {
    [v48 addObject:filePathForCapturedScreenshot];
  }

  v50 = [v48 componentsJoinedByString:{@", "}];
  v51 = [MEMORY[0x277CCAD18] queryItemWithName:@"Attachments" value:v50];
  [v31 addObject:v51];

  [v59 setQueryItems:v31];
  v52 = MEMORY[0x277D4C898];
  v53 = MEMORY[0x277D4C550];
  v54 = [v59 URL];
  v55 = [v53 punchoutWithURL:v54];
  [v52 openPunchout:v55];
}

+ (id)generateComponentQueryItems
{
  v7[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:@"Spotlight (New Bugs)"];
  v3 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:{@"iOS", v2}];
  v7[1] = v3;
  v4 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:@"312963"];
  v7[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:3];

  return v5;
}

@end