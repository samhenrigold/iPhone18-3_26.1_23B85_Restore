@interface FCFeedTransformationUnconsumedOnly
- (FCFeedTransformationUnconsumedOnly)init;
- (FCFeedTransformationUnconsumedOnly)initWithFilterMethod:(unint64_t)method consumedArticleItems:(id)items minimumTimeSinceFirstConsumedToFilter:(double)filter filterDate:(id)date articleIDProvider:(id)provider dateOfArticleIDConsumptionProvider:(id)consumptionProvider maxVersionConsumedProvider:(id)consumedProvider dateOfMaxVersionConsumptionProvider:(id)self0;
- (id)transformFeedItems:(id)items;
@end

@implementation FCFeedTransformationUnconsumedOnly

- (FCFeedTransformationUnconsumedOnly)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCFeedTransformationUnconsumedOnly init]";
    v10 = 2080;
    v11 = "FCFeedTransformationUnconsumedOnly.m";
    v12 = 1024;
    v13 = 24;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCFeedTransformationUnconsumedOnly init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCFeedTransformationUnconsumedOnly)initWithFilterMethod:(unint64_t)method consumedArticleItems:(id)items minimumTimeSinceFirstConsumedToFilter:(double)filter filterDate:(id)date articleIDProvider:(id)provider dateOfArticleIDConsumptionProvider:(id)consumptionProvider maxVersionConsumedProvider:(id)consumedProvider dateOfMaxVersionConsumptionProvider:(id)self0
{
  v63 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dateCopy = date;
  providerCopy = provider;
  consumptionProviderCopy = consumptionProvider;
  consumedProviderCopy = consumedProvider;
  versionConsumptionProviderCopy = versionConsumptionProvider;
  v45 = itemsCopy;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v34 = consumedProviderCopy;
    v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "consumedArticleItems"];
    *buf = 136315906;
    v56 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v57 = 2080;
    v58 = "FCFeedTransformationUnconsumedOnly.m";
    v59 = 1024;
    v60 = 36;
    v61 = 2114;
    v62 = v35;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    consumedProviderCopy = v34;
    if (dateCopy)
    {
      goto LABEL_6;
    }
  }

  else if (dateCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v36 = consumedProviderCopy;
    v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "filterDate"];
    *buf = 136315906;
    v56 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v57 = 2080;
    v58 = "FCFeedTransformationUnconsumedOnly.m";
    v59 = 1024;
    v60 = 37;
    v61 = 2114;
    v62 = v37;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    consumedProviderCopy = v36;
  }

LABEL_6:
  if (!providerCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v38 = consumedProviderCopy;
    v39 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "articleIDProvider"];
    *buf = 136315906;
    v56 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v57 = 2080;
    v58 = "FCFeedTransformationUnconsumedOnly.m";
    v59 = 1024;
    v60 = 38;
    v61 = 2114;
    v62 = v39;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    consumedProviderCopy = v38;
    if (consumptionProviderCopy)
    {
      goto LABEL_11;
    }
  }

  else if (consumptionProviderCopy)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v40 = consumedProviderCopy;
    v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateOfArticleIDConsumptionProvider"];
    *buf = 136315906;
    v56 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v57 = 2080;
    v58 = "FCFeedTransformationUnconsumedOnly.m";
    v59 = 1024;
    v60 = 39;
    v61 = 2114;
    v62 = v41;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    consumedProviderCopy = v40;
  }

LABEL_11:
  if (!consumedProviderCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "maxVersionConsumedProvider"];
    *buf = 136315906;
    v56 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v57 = 2080;
    v58 = "FCFeedTransformationUnconsumedOnly.m";
    v59 = 1024;
    v60 = 40;
    v61 = 2114;
    v62 = v42;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    consumedProviderCopy = 0;
    if (versionConsumptionProviderCopy)
    {
      goto LABEL_16;
    }
  }

  else if (versionConsumptionProviderCopy)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v43 = consumedProviderCopy;
    v44 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dateOfMaxVersionConsumptionProvider"];
    *buf = 136315906;
    v56 = "[FCFeedTransformationUnconsumedOnly initWithFilterMethod:consumedArticleItems:minimumTimeSinceFirstConsumedToFilter:filterDate:articleIDProvider:dateOfArticleIDConsumptionProvider:maxVersionConsumedProvider:dateOfMaxVersionConsumptionProvider:]";
    v57 = 2080;
    v58 = "FCFeedTransformationUnconsumedOnly.m";
    v59 = 1024;
    v60 = 41;
    v61 = 2114;
    v62 = v44;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    consumedProviderCopy = v43;
  }

LABEL_16:
  v54.receiver = self;
  v54.super_class = FCFeedTransformationUnconsumedOnly;
  v23 = [(FCFeedTransformationUnconsumedOnly *)&v54 init];
  if (v23)
  {
    if (method == 2)
    {
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_3;
      aBlock[3] = &unk_1E7C46600;
      v24 = consumedProviderCopy;
      v53 = consumedProviderCopy;
      v25 = _Block_copy(aBlock);
      v26 = _Block_copy(versionConsumptionProviderCopy);
    }

    else
    {
      v24 = consumedProviderCopy;
      if (method == 1)
      {
        v26 = _Block_copy(consumptionProviderCopy);
        v25 = &__block_literal_global_17_2;
      }

      else
      {
        if (method)
        {
          v25 = 0;
        }

        else
        {
          v25 = &__block_literal_global_164;
        }

        v26 = 0;
      }
    }

    v27 = [v45 fc_dictionaryWithKeyBlock:providerCopy];
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_4;
    v46[3] = &unk_1E7C46628;
    v47 = v27;
    v49 = v25;
    v48 = dateCopy;
    v50 = v26;
    filterCopy = filter;
    v28 = v26;
    v29 = v25;
    v30 = v27;
    v31 = [FCFeedTransformationBlockFilter blockFilterWithPredicate:v46];
    innerFilter = v23->_innerFilter;
    v23->_innerFilter = v31;

    consumedProviderCopy = v24;
  }

  return v23;
}

BOOL __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  v6 = a2;
  v7 = v5(v4, a3);
  v8 = [v6 publisherArticleVersion];

  return v7 >= v8;
}

BOOL __245__FCFeedTransformationUnconsumedOnly_initWithFilterMethod_consumedArticleItems_minimumTimeSinceFirstConsumedToFilter_filterDate_articleIDProvider_dateOfArticleIDConsumptionProvider_maxVersionConsumedProvider_dateOfMaxVersionConsumptionProvider___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 articleID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6 && (*(*(a1 + 48) + 16))())
  {
    v7 = *(a1 + 40);
    v8 = (*(*(a1 + 56) + 16))();
    [v7 timeIntervalSinceDate:v8];
    v10 = v9;

    v11 = v10 < *(a1 + 64);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)transformFeedItems:(id)items
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItems"];
    *buf = 136315906;
    v10 = "[FCFeedTransformationUnconsumedOnly transformFeedItems:]";
    v11 = 2080;
    v12 = "FCFeedTransformationUnconsumedOnly.m";
    v13 = 1024;
    v14 = 112;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  innerFilter = [(FCFeedTransformationUnconsumedOnly *)self innerFilter];
  v6 = [innerFilter transformFeedItems:itemsCopy];

  return v6;
}

@end