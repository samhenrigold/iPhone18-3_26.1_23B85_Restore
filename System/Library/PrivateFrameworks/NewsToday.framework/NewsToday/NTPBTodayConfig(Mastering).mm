@interface NTPBTodayConfig(Mastering)
- (id)_resolveArticle:()Mastering withPaidAccessChecker:heldArticleRecords:;
- (id)_resolveArticles:()Mastering withPaidAccessChecker:heldArticleRecords:;
- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:;
@end

@implementation NTPBTodayConfig(Mastering)

- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:
{
  v57 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:];
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:];
  }

LABEL_6:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [self todayQueueConfigs];
  v35 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v35)
  {
    v34 = *v51;
    do
    {
      v8 = 0;
      do
      {
        if (*v51 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v36 = v8;
        v9 = *(*(&v50 + 1) + 8 * v8);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        todaySectionConfigs = [v9 todaySectionConfigs];
        v10 = [todaySectionConfigs countByEnumeratingWithState:&v46 objects:v55 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v47;
          v37 = *v47;
          do
          {
            v13 = 0;
            v41 = v11;
            do
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(todaySectionConfigs);
              }

              v14 = *(*(&v46 + 1) + 8 * v13);
              sectionType = [v14 sectionType];
              if (sectionType == 5)
              {
                itemsTodaySectionConfig = [v14 itemsTodaySectionConfig];
                v42 = 0u;
                v43 = 0u;
                v44 = 0u;
                v45 = 0u;
                items = [itemsTodaySectionConfig items];
                v26 = [items countByEnumeratingWithState:&v42 objects:v54 count:16];
                if (v26)
                {
                  v27 = v26;
                  v38 = itemsTodaySectionConfig;
                  v39 = v13;
                  v28 = *v43;
                  do
                  {
                    for (i = 0; i != v27; ++i)
                    {
                      if (*v43 != v28)
                      {
                        objc_enumerationMutation(items);
                      }

                      v30 = *(*(&v42 + 1) + 8 * i);
                      article = [v30 article];
                      if (article)
                      {
                        v32 = [self _resolveArticle:article withPaidAccessChecker:v6 heldArticleRecords:v7];
                        [v30 setArticle:v32];
                      }
                    }

                    v27 = [items countByEnumeratingWithState:&v42 objects:v54 count:16];
                  }

                  while (v27);
                  v12 = v37;
                  itemsTodaySectionConfig = v38;
                  v11 = v41;
                  v13 = v39;
                }
              }

              else
              {
                if (sectionType == 4)
                {
                  personalizedTodaySectionConfig = [v14 personalizedTodaySectionConfig];
                  personalizedArticles = [personalizedTodaySectionConfig personalizedArticles];
                  [self _resolveArticles:personalizedArticles withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v24 = v23 = v13;
                  v25 = [v24 mutableCopy];
                  [personalizedTodaySectionConfig setPersonalizedArticles:v25];

                  v13 = v23;
                  items = [personalizedTodaySectionConfig mandatoryArticles];
                  v18 = [self _resolveArticles:items withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v19 = [v18 mutableCopy];
                  itemsTodaySectionConfig = personalizedTodaySectionConfig;
                  [personalizedTodaySectionConfig setMandatoryArticles:v19];
                }

                else
                {
                  if (sectionType != 3)
                  {
                    goto LABEL_33;
                  }

                  articleIDsTodaySectionConfig = [v14 articleIDsTodaySectionConfig];
                  items = [articleIDsTodaySectionConfig articles];
                  v18 = [self _resolveArticles:items withPaidAccessChecker:v6 heldArticleRecords:v7];
                  v19 = [v18 mutableCopy];
                  itemsTodaySectionConfig = articleIDsTodaySectionConfig;
                  [articleIDsTodaySectionConfig setArticles:v19];
                }

                v11 = v41;
              }

LABEL_33:
              ++v13;
            }

            while (v13 != v11);
            v11 = [todaySectionConfigs countByEnumeratingWithState:&v46 objects:v55 count:16];
          }

          while (v11);
        }

        v8 = v36 + 1;
      }

      while (v36 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v35);
  }
}

- (id)_resolveArticle:()Mastering withPaidAccessChecker:heldArticleRecords:
{
  v60 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v56 = a4;
  v57 = a5;
  v8 = v7;
  v9 = NTSharedLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v59 = v8;
    _os_log_impl(&dword_25BF21000, v9, OS_LOG_TYPE_DEBUG, "resolving article %{public}@", buf, 0xCu);
  }

  paidArticle = [v8 paidArticle];
  v11 = v8;
  if (paidArticle)
  {
    v12 = paidArticle;
    v52 = v8;
    while (1)
    {
      v13 = NTSharedLog(paidArticle);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v59 = v12;
        _os_log_impl(&dword_25BF21000, v13, OS_LOG_TYPE_DEBUG, "considering paid article %{public}@", buf, 0xCu);
      }

      articleID = [v12 articleID];
      v15 = [v57 recordWithID:articleID];

      if (v15)
      {
        isPaid = [v15 isPaid];
        isBundlePaid = [v15 isBundlePaid];
        sourceChannelTagID = [v15 sourceChannelTagID];
        v20 = v56;
        v21 = sourceChannelTagID;
        bundleSubscriptionProvider = [v20 bundleSubscriptionProvider];
        purchaseProvider = [v20 purchaseProvider];
        v24 = bundleSubscriptionProvider;
        v25 = purchaseProvider;
        v26 = v21;
        if ((isPaid & 1) == 0 && !isBundlePaid)
        {
          goto LABEL_28;
        }

        v27 = isPaid ^ 1;
        if (!v25)
        {
          v27 = 1;
        }

        if ((v27 & 1) == 0)
        {
          purchasedTagIDs = [v25 purchasedTagIDs];
          v29 = [purchasedTagIDs containsObject:v26];

          if (v29)
          {
LABEL_28:

            v49 = NTSharedLog(v48);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
            {
              articleID2 = [v12 articleID];
              *buf = 138543362;
              v59 = articleID2;
              _os_log_impl(&dword_25BF21000, v49, OS_LOG_TYPE_DEBUG, "user has access to %{public}@", buf, 0xCu);
            }

            v11 = v12;
            v8 = v52;

            break;
          }
        }

        v30 = isBundlePaid ^ 1;
        if (!v24)
        {
          v30 = 1;
        }

        if ((v30 & 1) == 0)
        {
          v31 = v24;
          v32 = v26;
          if (v32 && ([v31 bundleSubscription], v33 = objc_claimAutoreleasedReturnValue(), objc_getAssociatedObject(v33, (v33 + 1)), v54 = v32, v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "unsignedIntegerValue"), v36 = v35, objc_getAssociatedObject(v33, ~v35), v55 = v20, v37 = v31, v38 = objc_claimAutoreleasedReturnValue(), v39 = objc_msgSend(v38, "unsignedIntegerValue") ^ v36, v38, v31 = v37, v20 = v55, v34, v32 = v54, v33, (v39 & 1) != 0))
          {
            bundleSubscription = [v31 bundleSubscription];
            bundleChannelIDs = [bundleSubscription bundleChannelIDs];
            v53 = [bundleChannelIDs containsObject:v54];

            if (v53)
            {
              goto LABEL_28;
            }
          }

          else
          {
          }
        }

        v40 = NTSharedLog(v46);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          articleID3 = [v12 articleID];
          *buf = 138543362;
          v59 = articleID3;
          v42 = v40;
          v43 = "user does not have access to %{public}@";
          goto LABEL_25;
        }
      }

      else
      {
        v40 = NTSharedLog(v16);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
        {
          articleID3 = [v12 articleID];
          *buf = 138543362;
          v59 = articleID3;
          v42 = v40;
          v43 = "did not find record for article %{public}@";
LABEL_25:
          _os_log_impl(&dword_25BF21000, v42, OS_LOG_TYPE_DEBUG, v43, buf, 0xCu);
        }
      }

      paidArticle2 = [v12 paidArticle];

      v12 = paidArticle2;
      if (!paidArticle2)
      {
        v8 = v52;
        v11 = v52;
        break;
      }
    }
  }

  return v11;
}

- (id)_resolveArticles:()Mastering withPaidAccessChecker:heldArticleRecords:
{
  v8 = a4;
  v9 = a5;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __88__NTPBTodayConfig_Mastering___resolveArticles_withPaidAccessChecker_heldArticleRecords___block_invoke;
  v14[3] = &unk_2799834D0;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [a3 fc_arrayByTransformingWithBlock:v14];

  return v12;
}

- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "paidAccessChecker"];
  *buf = 136315906;
  v2 = "[NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:]";
  v3 = 2080;
  v4 = "NTTodayConfig+Mastering.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

- (void)nt_resolveFallbacksWithPaidAccessChecker:()Mastering heldArticleRecords:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "heldArticleRecords"];
  *buf = 136315906;
  v2 = "[NTPBTodayConfig(Mastering) nt_resolveFallbacksWithPaidAccessChecker:heldArticleRecords:]";
  v3 = 2080;
  v4 = "NTTodayConfig+Mastering.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

@end