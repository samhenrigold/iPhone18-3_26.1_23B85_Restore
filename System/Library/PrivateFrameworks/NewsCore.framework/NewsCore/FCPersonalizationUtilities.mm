@interface FCPersonalizationUtilities
+ (id)diversifyItems:(id)items withPreselectedItems:(id)preselectedItems limit:(unint64_t)limit similarityStartExpectation:(double)expectation similarityEndExpectation:(double)endExpectation publisherDiversificationSlope:(double)slope publisherDiversificationYIntercept:(double)intercept;
@end

@implementation FCPersonalizationUtilities

+ (id)diversifyItems:(id)items withPreselectedItems:(id)preselectedItems limit:(unint64_t)limit similarityStartExpectation:(double)expectation similarityEndExpectation:(double)endExpectation publisherDiversificationSlope:(double)slope publisherDiversificationYIntercept:(double)intercept
{
  v51 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  preselectedItemsCopy = preselectedItems;
  v17 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v26 = MEMORY[0x1E696AD98];
    v27 = v17;
    v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
    v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:limit];
    *buf = 138412546;
    v48 = v28;
    v49 = 2112;
    v50 = v29;
    _os_log_debug_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEBUG, "Diversifying set of %@ items down to %@", buf, 0x16u);

    if (limit)
    {
      goto LABEL_3;
    }
  }

  else if (limit)
  {
LABEL_3:
    if ([itemsCopy count] <= limit)
    {
      v42 = MEMORY[0x1E69E9820];
      v43 = 3221225472;
      v44 = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_2;
      v45 = &unk_1E7C3B578;
      v46 = itemsCopy;
      v22 = v46;
      v25 = v22;
    }

    else
    {
      limit = [itemsCopy fc_subarrayWithMaxCount:10 * limit];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_4;
      aBlock[3] = &unk_1E7C3B5E8;
      v41 = &__block_literal_global_8;
      v19 = _Block_copy(aBlock);
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_6;
      v39[3] = &__block_descriptor_48_e8_Q16__0Q8l;
      *&v39[4] = slope;
      *&v39[5] = intercept;
      v20 = _Block_copy(v39);
      v21 = MEMORY[0x1E695DEC8];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_7;
      v31[3] = &unk_1E7C3B6C8;
      v32 = preselectedItemsCopy;
      v33 = limit;
      v35 = v19;
      limitCopy = limit;
      expectationCopy = expectation;
      endExpectationCopy = endExpectation;
      v34 = v20;
      v22 = limit;
      v23 = v20;
      v24 = v19;
      v25 = [v21 fc_array:v31];
    }

    goto LABEL_9;
  }

  v25 = MEMORY[0x1E695E0F0];
LABEL_9:

  return v25;
}

double __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 fc_setByIntersectingSet:v4];
  v7 = [v6 count];

  v8 = [v5 fc_setByUnioningSet:v4];

  v9 = [v8 count];
  if (v9)
  {
    return v7 / v9;
  }

  else
  {
    return 1.0;
  }
}

double __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_5;
  v16 = &unk_1E7C3B5C0;
  v6 = *(a1 + 32);
  v17 = v5;
  v18 = v6;
  v7 = v5;
  v8 = [a3 fc_arrayByTransformingWithBlock:&v13];
  v9 = [v8 valueForKeyPath:{@"@max.self", v13, v14, v15, v16}];
  [v9 doubleValue];
  v11 = v10;

  return v11;
}

id __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = MEMORY[0x1E695DFD8];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = a2;
  v7 = [v5 topicIDs];
  v8 = [v3 setWithArray:v7];
  v9 = MEMORY[0x1E695DFD8];
  v10 = [v6 topicIDs];

  v11 = [v9 setWithArray:v10];
  (*(v4 + 16))(v4, v8, v11);
  v12 = [v2 numberWithDouble:?];

  return v12;
}

void __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_7(uint64_t a1, void *a2)
{
  v79 = *MEMORY[0x1E69E9840];
  v39 = a2;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__23;
  v71 = __Block_byref_object_dispose__23;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__23;
  v65 = __Block_byref_object_dispose__23;
  v66 = objc_opt_new();
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  [v62[5] addObjectsFromArray:v3];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_18;
  aBlock[3] = &unk_1E7C3B630;
  v60 = &v61;
  v59 = *(a1 + 32);
  v4 = _Block_copy(aBlock);
  v5 = [v62[5] count];
  v6 = *(a1 + 40);
  if (v5)
  {
    v7 = [v6 mutableCopy];
    v8 = v68[5];
    v68[5] = v7;
  }

  else
  {
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_2_20;
    v57[3] = &unk_1E7C3B658;
    v57[4] = &v61;
    v57[5] = &v67;
    [v6 fc_subarrayWithCount:1 result:v57];
  }

  *&v9 = 136315906;
  v38 = v9;
  while (v4[2](v4) < *(a1 + 64))
  {
    v10 = *(a1 + 72);
    v11 = *(a1 + 80);
    v12 = [v62[5] count];
    v13 = *(a1 + 64);
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 bundleIdentifier];
    v16 = v10 + (v11 - v10) * ((v12 + -1.0) / v13);
    if ([v15 isEqualToString:@"com.apple.news.widget"])
    {
      v17 = NewsCoreUserDefaults();
      v18 = [v17 BOOLForKey:@"widget_for_you_topic_diversification_disabled"];

      if (v18)
      {
        v19 = FCPersonalizationLog;
        if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Disabling topic diversification due to internal settings override", buf, 2u);
        }

        v16 = 1.79769313e308;
      }
    }

    else
    {
    }

    v20 = (*(*(a1 + 48) + 16))(*(a1 + 48), [v62[5] count] + 1);
    v21 = v4[2](v4);
    v22 = FCPersonalizationLog;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v21];
      if (v21 <= 1)
      {
        v30 = &stru_1F2DC7DC0;
      }

      else
      {
        v30 = @"s";
      }

      v31 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
      v32 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
      *buf = 138413058;
      v74 = v29;
      v75 = 2112;
      v76 = v30;
      v77 = 2112;
      *v78 = v31;
      *&v78[8] = 2112;
      *&v78[10] = v32;
      _os_log_debug_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEBUG, "%@ item%@ chosen so far, our similarity threshold is %@ and our unique publisher requirement is %@", buf, 0x2Au);
    }

    v53 = 0;
    v54 = &v53;
    v55 = 0x2020000000;
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0x7FFFFFFFFFFFFFFFLL;
    v48[0] = 0;
    v48[1] = v48;
    v48[2] = 0x2020000000;
    v48[3] = 0x7FEFFFFFFFFFFFFFLL;
    v23 = v68[5];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_32;
    v40[3] = &unk_1E7C3B6A0;
    v41 = *(a1 + 56);
    v42 = &v61;
    v43 = v48;
    v44 = &v49;
    v47 = v16;
    v45 = &v53;
    v46 = v20;
    [v23 enumerateObjectsUsingBlock:v40];
    v24 = v54[3];
    if (v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = v50[3];
      v54[3] = v24;
      if (v24 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v25 = MEMORY[0x1E69E9C10];
        v26 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Didn't find a candidate, this should be impossible"];
          *buf = v38;
          v74 = "+[FCPersonalizationUtilities diversifyItems:withPreselectedItems:limit:similarityStartExpectation:similarityEndExpectation:publisherDiversificationSlope:publisherDiversificationYIntercept:]_block_invoke";
          v75 = 2080;
          v76 = "FCPersonalizationUtilities.m";
          v77 = 1024;
          *v78 = 236;
          *&v78[4] = 2114;
          *&v78[6] = v36;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

          v25 = MEMORY[0x1E69E9C10];
        }

        v24 = v54[3];
      }
    }

    v27 = [v68[5] objectAtIndex:v24];
    [v68[5] removeObjectAtIndex:v54[3]];
    [v62[5] addObject:v27];
    v28 = FCPersonalizationLog;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v54[3]];
      v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v4[2](v4)];
      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v68[5], "count")}];
      *buf = 138412802;
      v74 = v33;
      v75 = 2112;
      v76 = v34;
      v77 = 2112;
      *v78 = v35;
      _os_log_debug_impl(&dword_1B63EF000, v28, OS_LOG_TYPE_DEBUG, "Candidate added from index %@, we have now chosen %@ candidates and have %@ remaining in our candidate pool", buf, 0x20u);
    }

    _Block_object_dispose(v48, 8);
    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(&v53, 8);
  }

  v37 = [v62[5] fc_subarrayFromIndex:objc_msgSend(*(a1 + 32) inclusive:{"count"), 1}];
  [v39 addObjectsFromArray:v37];

  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v67, 8);
}

void __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_2_20(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  [v5 addObjectsFromArray:a2];
  v7 = [v6 mutableCopy];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void __189__FCPersonalizationUtilities_diversifyItems_withPreselectedItems_limit_similarityStartExpectation_similarityEndExpectation_publisherDiversificationSlope_publisherDiversificationYIntercept___block_invoke_32(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = *(v7 + 16);
  v10 = a2;
  v11 = v9(v7, v10, v8);
  v12 = FCPersonalizationLog;
  if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
  {
    v32 = MEMORY[0x1E696AD98];
    v33 = v12;
    v34 = [v32 numberWithDouble:v11];
    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v43 = 138412546;
    v44 = v34;
    v45 = 2112;
    v46 = v35;
    _os_log_debug_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEBUG, "Found similarity value of %@ for candidate at index %@", &v43, 0x16u);
  }

  v13 = *(*(a1 + 48) + 8);
  if (v11 < *(v13 + 24))
  {
    v14 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v36 = MEMORY[0x1E696AD98];
      v37 = v14;
      v38 = [v36 numberWithDouble:v11];
      v43 = 138412290;
      v44 = v38;
      _os_log_debug_impl(&dword_1B63EF000, v37, OS_LOG_TYPE_DEBUG, "Similarity value %@ is our new lowest similarity value we have found so far", &v43, 0xCu);

      v13 = *(*(a1 + 48) + 8);
    }

    *(v13 + 24) = v11;
    *(*(*(a1 + 56) + 8) + 24) = a3;
  }

  v15 = [*(*(*(a1 + 40) + 8) + 40) fc_arrayByTransformingWithBlock:&__block_literal_global_36];
  v16 = [v10 publisherID];

  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"unknown+publisher+id";
  }

  v18 = [v15 arrayByAddingObject:v17];
  v19 = [v18 fc_uniqueCount];

  if (v19 >= *(a1 + 72))
  {
    v25 = *(a1 + 80);
    v26 = FCPersonalizationLog;
    v27 = os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG);
    if (v11 <= v25)
    {
      if (v27)
      {
        v39 = MEMORY[0x1E696AD98];
        v40 = v26;
        v41 = [v39 numberWithDouble:v11];
        v42 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80)];
        v43 = 138412546;
        v44 = v41;
        v45 = 2112;
        v46 = v42;
        _os_log_debug_impl(&dword_1B63EF000, v40, OS_LOG_TYPE_DEBUG, "Similarity value %@ satisified our threshold of %@ and has been chosen", &v43, 0x16u);
      }

      *(*(*(a1 + 64) + 8) + 24) = a3;
      *a4 = 1;
    }

    else if (v27)
    {
      v28 = MEMORY[0x1E696AD98];
      v29 = v26;
      v30 = [v28 numberWithDouble:v11];
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:*(a1 + 80)];
      v43 = 138412546;
      v44 = v30;
      v45 = 2112;
      v46 = v31;
      _os_log_debug_impl(&dword_1B63EF000, v29, OS_LOG_TYPE_DEBUG, "Similarity value %@ did not satisify our threshold of %@ and has not been chosen", &v43, 0x16u);
    }
  }

  else
  {
    v20 = FCPersonalizationLog;
    if (os_log_type_enabled(FCPersonalizationLog, OS_LOG_TYPE_DEBUG))
    {
      v21 = MEMORY[0x1E696AD98];
      v22 = v20;
      v23 = [v21 numberWithUnsignedInteger:v19];
      v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 72)];
      v43 = 138412546;
      v44 = v23;
      v45 = 2112;
      v46 = v24;
      _os_log_debug_impl(&dword_1B63EF000, v22, OS_LOG_TYPE_DEBUG, "If we chose this item our unique publisher count would be %@ which doesn't satisfy our requirement of %@", &v43, 0x16u);
    }
  }
}

@end