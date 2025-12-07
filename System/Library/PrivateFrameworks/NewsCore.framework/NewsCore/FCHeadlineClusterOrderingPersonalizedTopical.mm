@interface FCHeadlineClusterOrderingPersonalizedTopical
- (id)orderTopicsWithClusteredHeadlines:(id)headlines additionalHeadlines:(id)additionalHeadlines subscribedTagIDs:(id)ds scoresByArticleID:(id)d personalizer:(id)personalizer tagNameProvider:(id)provider personalizationTreatment:(id)treatment translationProvider:(id)self0;
@end

@implementation FCHeadlineClusterOrderingPersonalizedTopical

- (id)orderTopicsWithClusteredHeadlines:(id)headlines additionalHeadlines:(id)additionalHeadlines subscribedTagIDs:(id)ds scoresByArticleID:(id)d personalizer:(id)personalizer tagNameProvider:(id)provider personalizationTreatment:(id)treatment translationProvider:(id)self0
{
  v69 = *MEMORY[0x1E69E9840];
  headlinesCopy = headlines;
  additionalHeadlinesCopy = additionalHeadlines;
  dsCopy = ds;
  dCopy = d;
  personalizerCopy = personalizer;
  treatmentCopy = treatment;
  translationProviderCopy = translationProvider;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke;
  aBlock[3] = &unk_1E7C38628;
  v46 = translationProviderCopy;
  v59 = v46;
  v22 = headlinesCopy;
  v60 = v22;
  providerCopy = provider;
  v24 = _Block_copy(aBlock);
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_3;
  v54[3] = &unk_1E7C38678;
  v45 = dCopy;
  v55 = v45;
  v25 = v24;
  v57 = v25;
  v26 = v22;
  v56 = v26;
  v27 = [v26 fc_dictionaryByTransformingValuesWithBlock:v54];
  v28 = MEMORY[0x1E695DEC8];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_280;
  v51[3] = &unk_1E7C386C8;
  v44 = additionalHeadlinesCopy;
  v52 = v44;
  v29 = v25;
  v53 = v29;
  v30 = [v28 fc_array:v51];
  if ((objc_opt_respondsToSelector() & 1) == 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"WARNING: Bad access to personalization treatment from FCHeadlineClusterOrdering. Please file a radar with a sysdiagnose."];
    *buf = 136315906;
    v62 = "[FCHeadlineClusterOrderingPersonalizedTopical orderTopicsWithClusteredHeadlines:additionalHeadlines:subscribedTagIDs:scoresByArticleID:personalizer:tagNameProvider:personalizationTreatment:translationProvider:]";
    v63 = 2080;
    v64 = "FCHeadlineClusterOrdering.m";
    v65 = 1024;
    v66 = 874;
    v67 = 2114;
    v68 = v43;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_287;
  v47[3] = &unk_1E7C38718;
  v48 = personalizerCopy;
  v49 = dsCopy;
  v50 = treatmentCopy;
  v31 = treatmentCopy;
  v32 = dsCopy;
  v33 = personalizerCopy;
  [v31 metaGroupingRelatednessThreshold];
  v35 = v34;
  [v31 metaGroupingRelatednessKWeight];
  v37 = v36;
  [v31 metaGroupingTopicScoreWeight];
  v39 = v38;
  [v31 metaGroupingHighestScoringRelativeScoreMultiplier];
  v41 = FCTopicallyOrderGroups(v27, v30, v47, providerCopy, v35, v37, v39, v40);

  return v41;
}

id __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = [a2 topicIDs];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2;
  v11 = &unk_1E7C38600;
  v12 = *(a1 + 32);
  v13 = *(a1 + 40);
  v5 = [v4 fc_arrayByTransformingWithBlock:&v8];
  v6 = [v3 setWithArray:{v5, v8, v9, v10, v11}];

  return v6;
}

void *__211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 topicTranslationForTagID:v4];
  v6 = [v5 tagID];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v9 = v8;

  v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

id __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_3(id *a1, void *a2)
{
  v4 = MEMORY[0x1E695DFD8];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_4;
  v8[3] = &unk_1E7C38650;
  v9 = a1[4];
  v11 = a1[6];
  v10 = a1[5];
  v5 = [a2 fc_arrayByTransformingWithBlock:v8];
  v6 = [v4 setWithArray:v5];

  return v6;
}

FCTopicalNodeElement *__211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_4(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"score should not be nil."];
    *v21 = 136315906;
    *&v21[4] = "[FCHeadlineClusterOrderingPersonalizedTopical orderTopicsWithClusteredHeadlines:additionalHeadlines:subscribedTagIDs:scoresByArticleID:personalizer:tagNameProvider:personalizationTreatment:translationProvider:]_block_invoke_4";
    *&v21[12] = 2080;
    *&v21[14] = "FCHeadlineClusterOrdering.m";
    v22 = 1024;
    v23 = 851;
    v24 = 2114;
    v25 = v16;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v21, 0x26u);
  }

  v7 = (*(*(a1 + 48) + 16))();
  if (![v7 count] && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v17 = objc_alloc(MEMORY[0x1E696AEC0]);
    v18 = [*(a1 + 40) allKeys];
    v19 = [v3 topicIDs];
    v20 = [v17 initWithFormat:@"Expected to find a grouped topic in the topic ids. Group topics are %@ and topicIDs are %@", v18, v19];
    *v21 = 136315906;
    *&v21[4] = "[FCHeadlineClusterOrderingPersonalizedTopical orderTopicsWithClusteredHeadlines:additionalHeadlines:subscribedTagIDs:scoresByArticleID:personalizer:tagNameProvider:personalizationTreatment:translationProvider:]_block_invoke";
    *&v21[12] = 2080;
    *&v21[14] = "FCHeadlineClusterOrdering.m";
    v22 = 1024;
    v23 = 856;
    v24 = 2114;
    v25 = v20;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v21, 0x26u);
  }

  v8 = [FCTopicalNodeElement alloc];
  v9 = [v3 identifier];
  [v6 doubleValue];
  v11 = v10;
  v12 = v9;
  v13 = v7;
  if (v8)
  {
    *v21 = v8;
    *&v21[8] = FCTopicalNodeElement;
    v14 = objc_msgSendSuper2(v21, sel_init);
    v8 = v14;
    if (v14)
    {
      objc_storeStrong(&v14->_identifier, v9);
      objc_storeStrong(&v8->_topics, v7);
      v8->_score = v11;
    }
  }

  return v8;
}

void __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_280(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_281;
  v6[3] = &unk_1E7C386A0;
  v3 = *(a1 + 32);
  v7 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 fc_arrayByTransformingWithBlock:v6];
  [v4 addObjectsFromArray:v5];
}

void *__211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_281(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  if ([v1 count])
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  v3 = v2;

  return v2;
}

double __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_287(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 allObjects];
  v6 = [v4 scoresForTagIDs:v5];

  if ([v6 count])
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    v17 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_288;
    v10[3] = &unk_1E7C386F0;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = &v14;
    [v6 enumerateKeysAndObjectsUsingBlock:v10];
    v7 = v15[3];
    v8 = v7 / [v6 count];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v8 = 0.0;
  }

  return v8;
}

void __211__FCHeadlineClusterOrderingPersonalizedTopical_orderTopicsWithClusteredHeadlines_additionalHeadlines_subscribedTagIDs_scoresByArticleID_personalizer_tagNameProvider_personalizationTreatment_translationProvider___block_invoke_2_288(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = 1.0;
  if ([*(a1 + 32) containsObject:a2])
  {
    [*(a1 + 40) metaGroupingSubscribedTopicMultiplier];
    v5 = v6;
  }

  [v8 doubleValue];
  *(*(*(a1 + 48) + 8) + 24) = *(*(*(a1 + 48) + 8) + 24) + v7 * v5;
}

@end