@interface BCSURLPatternController
- (BCSURLPatternController)initWithCacheManager:(id)manager metricFactory:(id)factory;
- (id)mostExplicitMatchingResultFromResults:(id)results;
- (void)matchPatternForURL:(id)l forClientBundleID:(id)d completion:(id)completion;
@end

@implementation BCSURLPatternController

- (BCSURLPatternController)initWithCacheManager:(id)manager metricFactory:(id)factory
{
  managerCopy = manager;
  factoryCopy = factory;
  v12.receiver = self;
  v12.super_class = BCSURLPatternController;
  v9 = [(BCSURLPatternController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cacheManager, manager);
    objc_storeStrong(&v10->_metricFactory, factory);
  }

  return v10;
}

- (void)matchPatternForURL:(id)l forClientBundleID:(id)d completion:(id)completion
{
  v74 = *MEMORY[0x277D85DE8];
  lCopy = l;
  completionCopy = completion;
  v9 = ABSLogCommon();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v73 = "[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]";
    _os_log_impl(&dword_242072000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  if (completionCopy)
  {
    cachedPatternMatchingResult = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    if ([cachedPatternMatchingResult isExpired])
    {

      goto LABEL_12;
    }

    cachedPatternMatchingResult2 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    originalURL = [cachedPatternMatchingResult2 originalURL];
    v14 = [lCopy isEqual:originalURL];

    if (!v14)
    {
LABEL_12:
      host = [lCopy host];
      v11 = [BCSDomainItemIdentifier identifierWithType:3 domain:host];

      cacheManager = [(BCSURLPatternController *)self cacheManager];
      v25 = [cacheManager domainItemMatching:v11];

      if (!v25)
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0);
LABEL_42:

        goto LABEL_43;
      }

      selfCopy = self;
      domainBundleIDPatterns = [v25 domainBundleIDPatterns];
      v56 = objc_alloc_init(BCSURLPatternMatcher);
      if (![(BCSURLPatternMatcher *)v56 isValidDomainForURL:lCopy domainBundleIDPatterns:domainBundleIDPatterns])
      {
        (*(completionCopy + 2))(completionCopy, 0, 0, 0, 0, 0);
LABEL_41:

        goto LABEL_42;
      }

      v48 = v11;
      v49 = completionCopy;
      v27 = lCopy;
      array = [MEMORY[0x277CBEB18] array];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v47 = domainBundleIDPatterns;
      obj = [domainBundleIDPatterns bundleIdPatterns];
      v53 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
      if (v53)
      {
        v52 = *v63;
        do
        {
          v28 = 0;
          do
          {
            if (*v63 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v54 = v28;
            v29 = *(*(&v62 + 1) + 8 * v28);
            v58 = 0u;
            v59 = 0u;
            v60 = 0u;
            v61 = 0u;
            urlPatterns = [v29 urlPatterns];
            v31 = [urlPatterns countByEnumeratingWithState:&v58 objects:v68 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v59;
              do
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v59 != v33)
                  {
                    objc_enumerationMutation(urlPatterns);
                  }

                  v35 = *(*(&v58 + 1) + 8 * i);
                  bundleId = [v29 bundleId];
                  v37 = v25;
                  expirationDate = [v25 expirationDate];
                  v57 = 0;
                  v39 = [(BCSURLPatternMatcher *)v56 matchPattern:v35 withURL:v27 forBundleID:bundleId expirationDate:expirationDate error:&v57];

                  extractedURL = [v39 extractedURL];

                  if (extractedURL)
                  {
                    [array addObject:v39];
                  }

                  v25 = v37;
                }

                v32 = [urlPatterns countByEnumeratingWithState:&v58 objects:v68 count:16];
              }

              while (v32);
            }

            v28 = v54 + 1;
          }

          while (v54 + 1 != v53);
          v53 = [obj countByEnumeratingWithState:&v62 objects:v69 count:16];
        }

        while (v53);
      }

      if (![array count])
      {
        completionCopy = v49;
        (*(v49 + 2))(v49, 0, 0, 0, 0, 0);
        lCopy = v27;
LABEL_40:
        domainBundleIDPatterns = v47;

        v11 = v48;
        goto LABEL_41;
      }

      v41 = [(BCSURLPatternController *)selfCopy mostExplicitMatchingResultFromResults:array];
      lCopy = v27;
      completionCopy = v49;
      if (v41)
      {
        [(BCSURLPatternController *)selfCopy setCachedPatternMatchingResult:v41];
        if (MEMORY[0x245D06CC0]("[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]"))
        {
          v66 = @"BCSBusinessQueryServicePatternMatchingResult";
          v42 = [v41 debugDescription];
          v67 = v42;
          bundleID2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v67 forKeys:&v66 count:1];

          bundleID = [v41 bundleID];
          cachedPatternMatchingResult3 = [(BCSURLPatternController *)selfCopy cachedPatternMatchingResult];
          extractedURL2 = [cachedPatternMatchingResult3 extractedURL];
          (*(v49 + 2))(v49, 1, bundleID, extractedURL2, bundleID2, 0);

LABEL_39:
          goto LABEL_40;
        }
      }

      else
      {
        MEMORY[0x245D06CC0]("[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]");
      }

      bundleID2 = [v41 bundleID];
      bundleID = [(BCSURLPatternController *)selfCopy cachedPatternMatchingResult];
      cachedPatternMatchingResult3 = [bundleID extractedURL];
      (*(v49 + 2))(v49, 1, bundleID2, cachedPatternMatchingResult3, 0, 0);
      goto LABEL_39;
    }

    v15 = ABSLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v73 = "[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]";
      _os_log_impl(&dword_242072000, v15, OS_LOG_TYPE_DEFAULT, "%s Found matched pattern result in memory cache", buf, 0xCu);
    }

    v70 = @"BCSBusinessQueryServicePatternMatchingResult";
    cachedPatternMatchingResult4 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    v17 = [cachedPatternMatchingResult4 debugDescription];
    v18 = [v17 stringByAppendingString:@"\nFrom Memory Cache: YES"];
    v71 = v18;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];

    cachedPatternMatchingResult5 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    bundleID3 = [cachedPatternMatchingResult5 bundleID];
    cachedPatternMatchingResult6 = [(BCSURLPatternController *)self cachedPatternMatchingResult];
    extractedURL3 = [cachedPatternMatchingResult6 extractedURL];
    (*(completionCopy + 2))(completionCopy, 1, bundleID3, extractedURL3, v11, 0);
  }

  else
  {
    v11 = ABSLogCommon();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v73 = "[BCSURLPatternController matchPatternForURL:forClientBundleID:completion:]";
      _os_log_impl(&dword_242072000, v11, OS_LOG_TYPE_DEFAULT, "%s Nil completion passed. Do nothing.", buf, 0xCu);
    }
  }

LABEL_43:
}

- (id)mostExplicitMatchingResultFromResults:(id)results
{
  v23 = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  if ([resultsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = resultsCopy;
    v4 = resultsCopy;
    v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = 0;
      v9 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v4);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = 1000000 * [v11 totalConsecutivePrefixMatches];
          v13 = v12 + 1000 * [v11 totalExactMatches];
          v14 = v13 + [v11 totalAnyMatches];
          if (v14 >= v7)
          {
            v15 = v11;

            v7 = v14;
            v8 = v15;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0;
    }

    resultsCopy = v17;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end