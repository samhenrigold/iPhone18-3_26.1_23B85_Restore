@interface ATXTimelineRelevanceAdoption
- (ATXTimelineRelevanceAdoption)init;
- (ATXTimelineRelevanceAdoption)initWithGlobalAdoptionPlist:(id)plist informationStore:(id)store abuseControlConfig:(id)config;
- (BOOL)_hasDiverseSchemaGlobally:(id)globally kind:(id)kind;
- (id)globalDiverseSchemaRawNumber:(id)number kind:(id)kind;
- (unint64_t)adoptionTypeForWidgetBundleId:(id)id kind:(id)kind;
- (void)_updateQuotasDictionary:(id)dictionary forWidgetBundleId:(id)id widgetKind:(id)kind parameterName:(id)name withValue:(int64_t)value;
- (void)_updateQuotasForWidgetBundleId:(id)id widgetKind:(id)kind quotasDictionary:(id)dictionary;
- (void)persistQuotasWithActivity:(id)activity;
- (void)trainWidgetPredictionModelWithActivity:(id)activity;
@end

@implementation ATXTimelineRelevanceAdoption

- (ATXTimelineRelevanceAdoption)init
{
  v3 = [MEMORY[0x277CEB3C0] dictionaryFromLazyPlistForClass:objc_opt_class()];
  mEMORY[0x277CEB5C8] = [MEMORY[0x277CEB5C8] sharedInstance];
  v5 = objc_opt_new();
  v6 = [(ATXTimelineRelevanceAdoption *)self initWithGlobalAdoptionPlist:v3 informationStore:mEMORY[0x277CEB5C8] abuseControlConfig:v5];

  return v6;
}

- (ATXTimelineRelevanceAdoption)initWithGlobalAdoptionPlist:(id)plist informationStore:(id)store abuseControlConfig:(id)config
{
  plistCopy = plist;
  storeCopy = store;
  configCopy = config;
  v19.receiver = self;
  v19.super_class = ATXTimelineRelevanceAdoption;
  v12 = [(ATXTimelineRelevanceAdoption *)&v19 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_globalAdoptionPlist, plist);
    if (configCopy)
    {
      objc_storeStrong(&v13->_abuseControlConfig, config);
      v14 = [[ATXAdoptionTypeToBudgetMapper alloc] initWithAbuseControlConfig:configCopy];
      budgetMapper = v13->_budgetMapper;
      v13->_budgetMapper = v14;
    }

    objc_storeStrong(&v13->_informationStore, store);
    fetchDistinctScoreCountForWidgets = [(ATXInformationStore *)v13->_informationStore fetchDistinctScoreCountForWidgets];
    distinctScoreCounts = v13->_distinctScoreCounts;
    v13->_distinctScoreCounts = fetchDistinctScoreCountForWidgets;
  }

  return v13;
}

- (unint64_t)adoptionTypeForWidgetBundleId:(id)id kind:(id)kind
{
  kindCopy = kind;
  idCopy = id;
  v8 = [(ATXTimelineRelevanceAdoption *)self _hasDiverseSchemaGlobally:idCopy kind:kindCopy];
  v9 = [MEMORY[0x277D42648] tupleWithFirst:idCopy second:kindCopy];

  v10 = [(NSDictionary *)self->_distinctScoreCounts objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10 && [v10 integerValue])
  {
    integerValue = [v11 integerValue];
    v13 = integerValue > 1 || v8;
    if (integerValue <= 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }

    if (!v13)
    {
      v14 = [v11 integerValue] == 1;
    }
  }

  else if (v8)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)_hasDiverseSchemaGlobally:(id)globally kind:(id)kind
{
  v4 = [(ATXTimelineRelevanceAdoption *)self globalDiverseSchemaRawNumber:globally kind:kind];
  v5 = [v4 integerValue] == 1;

  return v5;
}

- (id)globalDiverseSchemaRawNumber:(id)number kind:(id)kind
{
  v4 = 0;
  if (number && kind)
  {
    globalAdoptionPlist = self->_globalAdoptionPlist;
    kindCopy = kind;
    v8 = [(NSDictionary *)globalAdoptionPlist objectForKeyedSubscript:number];
    v9 = [v8 objectForKeyedSubscript:kindCopy];

    if (v9)
    {
      v4 = [v9 objectForKeyedSubscript:@"diverseScores"];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_updateQuotasForWidgetBundleId:(id)id widgetKind:(id)kind quotasDictionary:(id)dictionary
{
  idCopy = id;
  kindCopy = kind;
  dictionaryCopy = dictionary;
  widgetsExcludedFromPersonalizedQuotaUpdate = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig widgetsExcludedFromPersonalizedQuotaUpdate];
  v11 = [widgetsExcludedFromPersonalizedQuotaUpdate containsObject:idCopy];

  if ((v11 & 1) == 0)
  {
    v12 = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig softRotationQuotaForWidgetWithIdentifier:idCopy kind:kindCopy];
    v13 = [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig hardRotationQuotaForWidgetWithIdentifier:idCopy kind:kindCopy];
    [(ATXTimelineAbuseControlConfig *)self->_abuseControlConfig durationLimitForWidgetWithIdentifier:idCopy kind:kindCopy];
    v15 = v14;
    v16 = [(ATXTimelineRelevanceAdoption *)self adoptionTypeForWidgetBundleId:idCopy kind:kindCopy];
    v17 = [(ATXAdoptionTypeToBudgetMapper *)self->_budgetMapper softQuotaForAdoptionType:v16];
    v18 = [(ATXAdoptionTypeToBudgetMapper *)self->_budgetMapper hardQuotaForAdoptionType:v16];
    v19 = [(ATXAdoptionTypeToBudgetMapper *)self->_budgetMapper durationLimitForAdoptionType:v16];
    if (v12 != -1 && v12 < v17)
    {
      [(ATXTimelineRelevanceAdoption *)self _updateQuotasDictionary:dictionaryCopy forWidgetBundleId:idCopy widgetKind:kindCopy parameterName:@"SoftRotationQuota" withValue:v17];
    }

    v20 = v15;
    if (v13 != -1 && v13 < v18)
    {
      [(ATXTimelineRelevanceAdoption *)self _updateQuotasDictionary:dictionaryCopy forWidgetBundleId:idCopy widgetKind:kindCopy parameterName:@"HardRotationQuota" withValue:v18];
    }

    if (v20 != -1 && v19 > v20)
    {
      [(ATXTimelineRelevanceAdoption *)self _updateQuotasDictionary:dictionaryCopy forWidgetBundleId:idCopy widgetKind:kindCopy parameterName:@"Duration" withValue:v19];
    }
  }
}

- (void)_updateQuotasDictionary:(id)dictionary forWidgetBundleId:(id)id widgetKind:(id)kind parameterName:(id)name withValue:(int64_t)value
{
  dictionaryCopy = dictionary;
  idCopy = id;
  kindCopy = kind;
  v13 = kindCopy;
  if (idCopy && kindCopy)
  {
    nameCopy = name;
    v15 = [dictionaryCopy objectForKeyedSubscript:idCopy];

    if (!v15)
    {
      v16 = objc_opt_new();
      [dictionaryCopy setObject:v16 forKeyedSubscript:idCopy];
    }

    v17 = [dictionaryCopy objectForKeyedSubscript:idCopy];
    v18 = [v17 objectForKeyedSubscript:v13];

    if (!v18)
    {
      v19 = objc_opt_new();
      v20 = [dictionaryCopy objectForKeyedSubscript:idCopy];
      [v20 setObject:v19 forKeyedSubscript:v13];
    }

    v21 = [MEMORY[0x277CCABB0] numberWithInteger:value];
    v22 = [dictionaryCopy objectForKeyedSubscript:idCopy];
    v23 = [v22 objectForKeyedSubscript:v13];
    [v23 setObject:v21 forKeyedSubscript:nameCopy];
  }
}

- (void)persistQuotasWithActivity:(id)activity
{
  v38 = *MEMORY[0x277D85DE8];
  activityCopy = activity;
  v6 = activityCopy;
  if (self->_distinctScoreCounts)
  {
    v7 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v8 = self->_distinctScoreCounts;
    v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          first = [v13 first];
          second = [v13 second];
          [(ATXTimelineRelevanceAdoption *)self _updateQuotasForWidgetBundleId:first widgetKind:second quotasDictionary:v7];
        }

        v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }

    didDefer = [v6 didDefer];
    if (didDefer)
    {
      v17 = __atxlog_handle_timeline(didDefer);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2263AA000, v17, OS_LOG_TYPE_DEFAULT, "ATXTimelineRelevanceAdoption: Deferring persisting personalized quotas", buf, 2u);
      }
    }

    else
    {
      v18 = [MEMORY[0x277CEBCB0] appPredictionDirectoryFile:@"ATXTimelineRelevancePersonalizedConfig"];
      v19 = __atxlog_handle_timeline(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v36 = v18;
        _os_log_impl(&dword_2263AA000, v19, OS_LOG_TYPE_INFO, "ATXTimelineRelevanceAdoption: persisting updated quotas at path: %{public}@", buf, 0xCu);
      }

      v20 = objc_autoreleasePoolPush();
      v30 = 0;
      v21 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v30];
      v22 = v30;
      if (!v21)
      {
        [(ATXTimelineRelevanceAdoption *)a2 persistQuotasWithActivity:v18, v22];
      }

      v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_BACKGROUND, 0);
      v25 = dispatch_queue_create("timeline-relevance-budget-update", v24);

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke;
      block[3] = &unk_278596C10;
      v28 = v21;
      v17 = v18;
      v29 = v17;
      v26 = v21;
      dispatch_async(v25, block);

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    v7 = __atxlog_handle_timeline(activityCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ATXTimelineRelevanceAdoption persistQuotasWithActivity:v7];
    }
  }
}

void __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v9 = 0;
  v4 = [v3 writeToFile:v1 options:1073741825 error:&v9];
  v5 = v9;
  v6 = v5;
  if (v4)
  {
    v7 = __atxlog_handle_timeline(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *v2;
      *buf = 138543362;
      v11 = v8;
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_INFO, "Successfully updated budgets at path %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = __atxlog_handle_default(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke_cold_1(v2, v6, v7);
    }
  }
}

- (void)trainWidgetPredictionModelWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = [[ATXWidgetPredictionTrainer alloc] initWithInformationStore:self->_informationStore distinctScoreCounts:self->_distinctScoreCounts];
  [(ATXWidgetPredictionTrainer *)v5 trainWidgetPredictionModelWithActivity:activityCopy];
}

- (void)persistQuotasWithActivity:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a1 object:a2 file:@"ATXTimelineRelevanceAdoption.m" lineNumber:163 description:{@"Archiver error while attempting to persist updated quotas at path %@: %@", a3, a4}];
}

void __58__ATXTimelineRelevanceAdoption_persistQuotasWithActivity___block_invoke_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Could not write updated budgets to path: %{public}@. Error: %{public}@", &v4, 0x16u);
}

@end