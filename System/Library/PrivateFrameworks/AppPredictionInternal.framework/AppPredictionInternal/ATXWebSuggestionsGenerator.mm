@interface ATXWebSuggestionsGenerator
- (ATXWebSuggestionsGenerator)init;
- (id)dedupedUrlsFromUrls:(id)urls limit:(unint64_t)limit;
- (id)rootUrlFromUrl:(id)url;
- (id)urlToDatesGivenWebpageHistory:(id)history;
- (id)webpageHistory;
- (id)webpageTitlesAndSubtitlesGivenWebpageHistory:(id)history;
- (id)websitePredictionsForAllContexts;
- (id)websitePredictionsForContextType:(id)type limit:(unint64_t)limit;
- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)string contextType:(id)type;
- (void)refreshWebsitePredictions;
@end

@implementation ATXWebSuggestionsGenerator

- (ATXWebSuggestionsGenerator)init
{
  v6.receiver = self;
  v6.super_class = ATXWebSuggestionsGenerator;
  v2 = [(ATXWebSuggestionsGenerator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    cache = v2->_cache;
    v2->_cache = v3;
  }

  return v2;
}

- (void)refreshWebsitePredictions
{
  v54 = *MEMORY[0x277D85DE8];
  webpageHistory = [(ATXWebSuggestionsGenerator *)self webpageHistory];
  v23 = [(ATXWebSuggestionsGenerator *)self urlToDatesGivenWebpageHistory:webpageHistory];
  if ([v23 count])
  {
    v21 = objc_alloc_init(ATXContextHeuristicsBiomeStream);
    v51[0] = 0;
    v51[1] = v51;
    v51[2] = 0x2020000000;
    v51[3] = 0;
    v45 = 0;
    v46 = &v45;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__24;
    v49 = __Block_byref_object_dispose__24;
    v50 = objc_opt_new();
    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = __Block_byref_object_copy__24;
    v43[4] = __Block_byref_object_dispose__24;
    v44 = objc_opt_new();
    v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
    [v2 timeIntervalSinceReferenceDate];
    v3 = [(ATXContextHeuristicsBiomeStream *)v21 publisherFromStartTime:?];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __55__ATXWebSuggestionsGenerator_refreshWebsitePredictions__block_invoke_2;
    v37[3] = &unk_2785997A0;
    v38 = v23;
    selfCopy = self;
    v40 = v51;
    v41 = v43;
    v42 = &v45;
    v4 = [v3 sinkWithCompletion:&__block_literal_global_52 shouldContinue:v37];

    v27 = objc_opt_new();
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v46[5];
    v5 = [obj countByEnumeratingWithState:&v33 objects:v53 count:16];
    if (v5)
    {
      v26 = *v34;
      do
      {
        v28 = v5;
        for (i = 0; i != v28; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v33 + 1) + 8 * i);
          v8 = objc_opt_new();
          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v9 = [v46[5] objectForKeyedSubscript:v7];
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v52 count:16];
          if (v10)
          {
            v11 = *v30;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v30 != v11)
                {
                  objc_enumerationMutation(v9);
                }

                v13 = *(*(&v29 + 1) + 8 * j);
                v14 = [v46[5] objectForKeyedSubscript:{v7, v21}];
                v15 = [v14 countForObject:v13];

                if (v15 >= 5)
                {
                  do
                  {
                    [v8 addObject:v13];
                    --v15;
                  }

                  while (v15);
                }
              }

              v10 = [v9 countByEnumeratingWithState:&v29 objects:v52 count:16];
            }

            while (v10);
          }

          [v27 setObject:v8 forKeyedSubscript:v7];
        }

        v5 = [obj countByEnumeratingWithState:&v33 objects:v53 count:16];
      }

      while (v5);
    }

    cache = self->_cache;
    v17 = [v27 copy];
    [(ATXVerticalModelsCache *)cache writeWebsiteSuggestionsCache:v17];

    v18 = self->_cache;
    v19 = [(ATXWebSuggestionsGenerator *)self webpageTitlesAndSubtitlesGivenWebpageHistory:webpageHistory];
    [(ATXVerticalModelsCache *)v18 writeWebsiteTitlesAndSubtitlesCache:v19];

    _Block_object_dispose(v43, 8);
    _Block_object_dispose(&v45, 8);

    _Block_object_dispose(v51, 8);
  }

  else
  {
    v20 = MEMORY[0x277CBEC10];
    [(ATXVerticalModelsCache *)self->_cache writeWebsiteSuggestionsCache:MEMORY[0x277CBEC10]];
    [(ATXVerticalModelsCache *)self->_cache writeWebsiteTitlesAndSubtitlesCache:v20];
  }
}

uint64_t __55__ATXWebSuggestionsGenerator_refreshWebsitePredictions__block_invoke_2(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 contextType];

  if (v5)
  {
    v34 = v5;
    v35 = v3;
    v6 = MEMORY[0x277CBEAA8];
    [v3 timestamp];
    v7 = [v6 dateWithTimeIntervalSinceReferenceDate:?];
    v8 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    v9 = [v8 allKeys];
    v10 = [v9 objectAtIndexedSubscript:0];

    v11 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
    v12 = [v11 objectForKeyedSubscript:v10];

    v36 = v7;
    if ([v12 compare:v7] == -1)
    {
      while (1)
      {
        v37 = v12;
        v16 = [*(a1 + 40) rootUrlFromUrl:v10];
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v17 = *(*(*(a1 + 56) + 8) + 40);
        v18 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v39;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v39 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v38 + 1) + 8 * i);
              v23 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v22];

              if (!v23)
              {
                v24 = objc_opt_new();
                [*(*(*(a1 + 64) + 8) + 40) setObject:v24 forKeyedSubscript:v22];
              }

              v25 = [*(*(*(a1 + 64) + 8) + 40) objectForKeyedSubscript:v22];
              if (v10 && ([v16 isEqual:v10] & 1) == 0)
              {
                [v25 addObject:v10];
                [v25 addObject:v10];
              }

              if (v16)
              {
                [v25 addObject:v16];
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v19);
        }

        v26 = ++*(*(*(a1 + 48) + 8) + 24);
        if (v26 == [*(a1 + 32) count])
        {
          break;
        }

        v27 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
        v28 = [v27 allKeys];
        v14 = [v28 objectAtIndexedSubscript:0];

        v29 = [*(a1 + 32) objectAtIndexedSubscript:*(*(*(a1 + 48) + 8) + 24)];
        v13 = [v29 objectForKeyedSubscript:v14];

        v10 = v14;
        v12 = v13;
        if ([v13 compare:v7] != -1)
        {
          goto LABEL_21;
        }
      }

      v15 = 0;
      v5 = v34;
      v3 = v35;
      v13 = v37;
    }

    else
    {
      v13 = v12;
      v14 = v10;
LABEL_21:
      v3 = v35;
      v30 = [v35 eventBody];
      v31 = [v30 isStart];

      v32 = *(*(*(a1 + 56) + 8) + 40);
      if (v31)
      {
        v5 = v34;
        [v32 addObject:v34];
      }

      else
      {
        v5 = v34;
        if ([v32 containsObject:v34])
        {
          [*(*(*(a1 + 56) + 8) + 40) removeObject:v34];
        }
      }

      v15 = 1;
      v10 = v14;
    }
  }

  else
  {
    v15 = 1;
  }

  return v15;
}

- (id)websitePredictionsForAllContexts
{
  fetchWebsiteSuggestionsCache = [(ATXVerticalModelsCache *)self->_cache fetchWebsiteSuggestionsCache];
  if (![fetchWebsiteSuggestionsCache count])
  {
    [(ATXWebSuggestionsGenerator *)self refreshWebsitePredictions];
    fetchWebsiteSuggestionsCache2 = [(ATXVerticalModelsCache *)self->_cache fetchWebsiteSuggestionsCache];

    fetchWebsiteSuggestionsCache = fetchWebsiteSuggestionsCache2;
  }

  return fetchWebsiteSuggestionsCache;
}

- (id)websitePredictionsForContextType:(id)type limit:(unint64_t)limit
{
  typeCopy = type;
  websitePredictionsForAllContexts = [(ATXWebSuggestionsGenerator *)self websitePredictionsForAllContexts];
  v8 = [websitePredictionsForAllContexts objectForKeyedSubscript:typeCopy];

  if (v8)
  {
    allObjects = [v8 allObjects];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __69__ATXWebSuggestionsGenerator_websitePredictionsForContextType_limit___block_invoke;
    v13[3] = &unk_278597CB8;
    v14 = v8;
    v10 = [allObjects sortedArrayUsingComparator:v13];

    v11 = [(ATXWebSuggestionsGenerator *)self dedupedUrlsFromUrls:v10 limit:limit];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  return v11;
}

uint64_t __69__ATXWebSuggestionsGenerator_websitePredictionsForContextType_limit___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 > v8)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)overwriteWebsitePredictionsCacheWithWebsiteString:(id)string contextType:(id)type
{
  v14[1] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  typeCopy = type;
  [(ATXWebSuggestionsGenerator *)self refreshWebsitePredictions];
  v8 = objc_opt_new();
  v9 = [MEMORY[0x277CBEBC0] URLWithString:stringCopy];
  v10 = 10;
  do
  {
    [v8 addObject:v9];
    --v10;
  }

  while (v10);
  cache = self->_cache;
  v13 = typeCopy;
  v14[0] = v8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  [(ATXVerticalModelsCache *)cache writeWebsiteSuggestionsCache:v12];
}

- (id)urlToDatesGivenWebpageHistory:(id)history
{
  v25 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v4 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = historyCopy;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        action = [v10 action];
        userActivity = [action userActivity];

        dateInterval = [v10 dateInterval];
        startDate = [dateInterval startDate];

        webpageURL = [userActivity webpageURL];
        v16 = webpageURL;
        if (startDate)
        {
          v17 = webpageURL == 0;
        }

        else
        {
          v17 = 1;
        }

        if (!v17)
        {
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObject:startDate forKey:webpageURL];
          [v4 addObject:v18];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)webpageHistory
{
  v2 = objc_alloc_init(MEMORY[0x277CEB918]);
  v3 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-2419200.0];
  v4 = [MEMORY[0x277CBEAA8] now];
  v5 = [v2 getActivityIntentEventsBetweenStartDate:v3 endDate:v4 bundleIdFilter:@"com.apple.mobilesafari"];

  return v5;
}

- (id)rootUrlFromUrl:(id)url
{
  v3 = MEMORY[0x277CCACE0];
  urlCopy = url;
  v5 = objc_alloc_init(v3);
  scheme = [urlCopy scheme];
  [v5 setScheme:scheme];

  host = [urlCopy host];

  [v5 setHost:host];
  v8 = [v5 URL];

  return v8;
}

- (id)dedupedUrlsFromUrls:(id)urls limit:(unint64_t)limit
{
  v24 = *MEMORY[0x277D85DE8];
  urlsCopy = urls;
  v18 = objc_opt_new();
  v7 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = urlsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v20;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v20 != v12)
      {
        objc_enumerationMutation(v8);
      }

      if (v11 == limit)
      {
        break;
      }

      v14 = *(*(&v19 + 1) + 8 * v13);
      v15 = [(ATXWebSuggestionsGenerator *)self rootUrlFromUrl:v14];
      if (v15 && ([v7 containsObject:v15] & 1) == 0)
      {
        [v7 addObject:v15];
        [v18 addObject:v14];
        ++v11;
      }

      if (v10 == ++v13)
      {
        v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v16 = [v18 copy];

  return v16;
}

- (id)webpageTitlesAndSubtitlesGivenWebpageHistory:(id)history
{
  v27 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v4 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = historyCopy;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        action = [*(*(&v21 + 1) + 8 * i) action];
        userActivity = [action userActivity];
        webpageURL = [userActivity webpageURL];

        actionTitle = [action actionTitle];
        actionSubtitle = [action actionSubtitle];
        v15 = actionSubtitle;
        if (webpageURL)
        {
          v16 = actionTitle == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16 && actionSubtitle != 0)
        {
          v25[0] = actionTitle;
          v25[1] = actionSubtitle;
          v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
          [v4 setObject:v18 forKeyedSubscript:webpageURL];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);
  }

  v19 = [v4 copy];

  return v19;
}

@end