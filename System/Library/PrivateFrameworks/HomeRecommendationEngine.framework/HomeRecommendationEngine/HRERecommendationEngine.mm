@interface HRERecommendationEngine
- (HRERecommendationEngine)init;
- (NSArray)templates;
- (id)_sourcesEnabledWithOptions:(unint64_t)options;
- (id)generateRecommendationsForServiceLikeItems:(id)items accessoryTypeGroup:(id)group inHome:(id)home options:(unint64_t)options;
- (void)setTemplates:(id)templates;
@end

@implementation HRERecommendationEngine

- (HRERecommendationEngine)init
{
  v12.receiver = self;
  v12.super_class = HRERecommendationEngine;
  v2 = [(HRERecommendationEngine *)&v12 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(HRERecommendationEngine *)v2 setRecommendationSources:array];

    v4 = +[HRETemplateRecommendationGenerator allAvailableTemplates];
    v5 = [[HRETemplateRecommendationGenerator alloc] initWithTemplates:v4];
    [(HRERecommendationEngine *)v2 setTemplateSource:v5];

    recommendationSources = [(HRERecommendationEngine *)v2 recommendationSources];
    templateSource = [(HRERecommendationEngine *)v2 templateSource];
    [recommendationSources addObject:templateSource];

    recommendationSources2 = [(HRERecommendationEngine *)v2 recommendationSources];
    v9 = objc_alloc_init(HREActionSetDerivingRecommendationGenerator);
    [recommendationSources2 addObject:v9];

    v10 = objc_alloc_init(HRERankConfidenceController);
    [(HRERecommendationEngine *)v2 setRankingController:v10];
  }

  return v2;
}

- (id)generateRecommendationsForServiceLikeItems:(id)items accessoryTypeGroup:(id)group inHome:(id)home options:(unint64_t)options
{
  v45 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  groupCopy = group;
  homeCopy = home;
  v13 = HFLogForCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    name = [homeCopy name];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    *buf = 138413058;
    v38 = name;
    v39 = 2112;
    v40 = uniqueIdentifier;
    v41 = 2048;
    optionsCopy = options;
    v43 = 2112;
    v44 = itemsCopy;
    _os_log_impl(&dword_2543E2000, v13, OS_LOG_TYPE_DEFAULT, "Generating recommendations in home: <%@, %@>, options: %lu, serviceLikeItems: %@", buf, 0x2Au);
  }

  if ([homeCopy hf_currentUserIsRestrictedGuest])
  {
    v16 = HFLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      currentUser = [homeCopy currentUser];
      hf_prettyDescription = [currentUser hf_prettyDescription];
      *buf = 136315394;
      v38 = "[HRERecommendationEngine generateRecommendationsForServiceLikeItems:accessoryTypeGroup:inHome:options:]";
      v39 = 2112;
      v40 = hf_prettyDescription;
      _os_log_impl(&dword_2543E2000, v16, OS_LOG_TYPE_DEFAULT, "(%s) Restricted guest should NOT get any recommendations. currentUser = %@", buf, 0x16u);
    }

    v19 = MEMORY[0x277D2C900];
    v20 = objc_opt_new();
    v21 = [v19 futureWithResult:v20];
  }

  else
  {
    v22 = [(HRERecommendationEngine *)self _sourcesEnabledWithOptions:options];
    recommendationSources = [(HRERecommendationEngine *)self recommendationSources];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke;
    v35[3] = &unk_279777098;
    v36 = v22;
    v20 = v22;
    [recommendationSources na_each:v35];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_6;
    v30[3] = &unk_2797770C0;
    v31 = homeCopy;
    v32 = itemsCopy;
    v33 = groupCopy;
    optionsCopy2 = options;
    v24 = [v20 na_map:v30];
    v25 = [MEMORY[0x277D2C900] combineAllFutures:v24];
    v26 = [v25 flatMap:&__block_literal_global_11];

    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_3;
    v29[3] = &unk_279777108;
    v29[4] = self;
    v21 = [v26 flatMap:v29];
    v27 = [v21 addCompletionBlock:&__block_literal_global_13];
  }

  return v21;
}

void __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = HFLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_2543E2000, v4, OS_LOG_TYPE_DEFAULT, "%@ is disabled", &v5, 0xCu);
    }
  }
}

id __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBEB98] setWithArray:a2];
  v3 = MEMORY[0x277D2C900];
  v4 = [v2 na_setByFlattening];
  v5 = [v3 futureWithResult:v4];

  return v5;
}

id __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D2C900];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 rankingController];
  v6 = [v5 rankRecommendationsFromSet:v4];

  v7 = [v2 futureWithResult:v6];

  return v7;
}

void __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = HFLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_2543E2000, v7, OS_LOG_TYPE_DEFAULT, "Generated recommendations:", &v12, 2u);
    }

    [v4 na_each:&__block_literal_global_17];
    v8 = HFLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    LOWORD(v12) = 0;
    v9 = "Finished generating recommendations";
    v10 = v8;
    v11 = 2;
    goto LABEL_9;
  }

  if (v5)
  {
    v8 = HFLogForCategory();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_10:

      goto LABEL_11;
    }

    v12 = 138412290;
    v13 = v6;
    v9 = "Failed to generate recommendations with error: %@";
    v10 = v8;
    v11 = 12;
LABEL_9:
    _os_log_impl(&dword_2543E2000, v10, OS_LOG_TYPE_DEFAULT, v9, &v12, v11);
    goto LABEL_10;
  }

LABEL_11:
}

void __104__HRERecommendationEngine_generateRecommendationsForServiceLikeItems_accessoryTypeGroup_inHome_options___block_invoke_14(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = HFLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_2543E2000, v3, OS_LOG_TYPE_DEFAULT, "\t\t%@", &v4, 0xCu);
  }
}

- (NSArray)templates
{
  templateSource = [(HRERecommendationEngine *)self templateSource];
  templates = [templateSource templates];

  return templates;
}

- (void)setTemplates:(id)templates
{
  templatesCopy = templates;
  templateSource = [(HRERecommendationEngine *)self templateSource];
  [templateSource setTemplates:templatesCopy];
}

- (id)_sourcesEnabledWithOptions:(unint64_t)options
{
  recommendationSources = [(HRERecommendationEngine *)self recommendationSources];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HRERecommendationEngine__sourcesEnabledWithOptions___block_invoke;
  v7[3] = &__block_descriptor_40_e35_B16__0___HRERecommendationSource__8l;
  v7[4] = options;
  v5 = [recommendationSources na_filter:v7];

  return v5;
}

@end