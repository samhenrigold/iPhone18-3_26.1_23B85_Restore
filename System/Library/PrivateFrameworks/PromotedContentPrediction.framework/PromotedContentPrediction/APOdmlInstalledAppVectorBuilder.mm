@interface APOdmlInstalledAppVectorBuilder
- (APOdmlInstalledAppVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual;
- (id)_installedStoreAppEnumerator;
- (id)eventsBetween:(id)between and:(id)and;
- (id)retrieveFilteredEvents:(id)events;
- (void)buildBundleIDtoAdamIDCache:(id)cache;
@end

@implementation APOdmlInstalledAppVectorBuilder

- (APOdmlInstalledAppVectorBuilder)initWithVersion:(id)version lookbackPeriod:(id)period maxQueryElements:(id)elements task:(id)task exponentialDecayConstant:(id)constant weightByDuration:(id)duration isCounterfactual:(BOOL)counterfactual
{
  v14.receiver = self;
  v14.super_class = APOdmlInstalledAppVectorBuilder;
  v9 = [(APOdmlVectorBuilder *)&v14 initWithVersion:version lookbackPeriod:period maxQueryElements:elements task:task exponentialDecayConstant:constant weightByDuration:duration isCounterfactual:counterfactual];
  if (v9)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    bundleIDtoAppInfo = v9->_bundleIDtoAppInfo;
    v9->_bundleIDtoAppInfo = dictionary;
  }

  return v9;
}

- (id)eventsBetween:(id)between and:(id)and
{
  v31 = *MEMORY[0x277D85DE8];
  betweenCopy = between;
  andCopy = and;
  v6 = [MEMORY[0x277CBEB58] set];
  context = objc_autoreleasePoolPush();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  _installedStoreAppEnumerator = [(APOdmlInstalledAppVectorBuilder *)self _installedStoreAppEnumerator];
  v8 = [_installedStoreAppEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(_installedStoreAppEnumerator);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        bundleIdentifier = [v12 bundleIdentifier];

        if (bundleIdentifier)
        {
          iTunesMetadata = [v12 iTunesMetadata];
          storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

          v16 = [APOdmlAppInfo alloc];
          bundleIdentifier2 = [v12 bundleIdentifier];
          v18 = [(APOdmlAppInfo *)v16 initWithBundleID:bundleIdentifier2 adamID:storeItemIdentifier];

          [v6 addObject:v18];
          bundleIDtoAppInfo = [(APOdmlInstalledAppVectorBuilder *)self bundleIDtoAppInfo];
          bundleIdentifier3 = [v12 bundleIdentifier];
          [bundleIDtoAppInfo setObject:v18 forKeyedSubscript:bundleIdentifier3];
        }
      }

      v9 = [_installedStoreAppEnumerator countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  objc_autoreleasePoolPop(context);
  allObjects = [v6 allObjects];

  return allObjects;
}

- (void)buildBundleIDtoAdamIDCache:(id)cache
{
  v18 = *MEMORY[0x277D85DE8];
  cacheCopy = cache;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [cacheCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(cacheCopy);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        bundleID = [v9 bundleID];
        adamIDtoBundleID = [(APOdmlVectorBuilder *)self adamIDtoBundleID];
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v9, "adamID")}];
        [adamIDtoBundleID setObject:bundleID forKeyedSubscript:v12];
      }

      v6 = [cacheCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (id)retrieveFilteredEvents:(id)events
{
  v24 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  bundleIDtoAppInfo = [(APOdmlInstalledAppVectorBuilder *)self bundleIDtoAppInfo];
  v6 = [bundleIDtoAppInfo objectForKeyedSubscript:eventsCopy];

  if (v6)
  {
    v21 = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v21 count:1];
  }

  else
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    events = [(APOdmlVectorBuilder *)self events];
    v9 = [events countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(events);
          }

          v13 = *(*(&v17 + 1) + 8 * i);
          bundleID = [v13 bundleID];
          v15 = [bundleID isEqualToString:eventsCopy];

          if (v15)
          {
            v22 = v13;
            v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];

            goto LABEL_13;
          }
        }

        v10 = [events countByEnumeratingWithState:&v17 objects:v23 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = 0;
  }

LABEL_13:

  return v7;
}

- (id)_installedStoreAppEnumerator
{
  v2 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  [v2 setFilter:&unk_287367620];

  return v2;
}

@end