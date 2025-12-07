@interface FCTagSubscriptionSorter
- (id)initWithTagRanker:(id *)ranker;
- (id)sortTagSubscriptions:(uint64_t)subscriptions;
@end

@implementation FCTagSubscriptionSorter

- (id)initWithTagRanker:(id *)ranker
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = v4;
  if (ranker)
  {
    if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagRanker != nil"];
      *buf = 136315906;
      v11 = "[FCTagSubscriptionSorter initWithTagRanker:]";
      v12 = 2080;
      v13 = "FCTagSubscriptionSorter.m";
      v14 = 1024;
      v15 = 28;
      v16 = 2114;
      v17 = v8;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v9.receiver = ranker;
    v9.super_class = FCTagSubscriptionSorter;
    v6 = objc_msgSendSuper2(&v9, sel_init);
    ranker = v6;
    if (v6)
    {
      objc_storeStrong(v6 + 1, a2);
    }
  }

  return ranker;
}

- (id)sortTagSubscriptions:(uint64_t)subscriptions
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (subscriptions)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "tagSubscriptions != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCTagSubscriptionSorter sortTagSubscriptions:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCTagSubscriptionSorter.m";
      *&buf[22] = 1024;
      LODWORD(v43[0]) = 40;
      WORD2(v43[0]) = 2114;
      *(v43 + 6) = v28;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = [v4 fc_dictionaryOfSortedObjectsWithKeyBlock:&__block_literal_global_185];
    v6 = [v5 objectForKeyedSubscript:MEMORY[0x1E695E118]];
    v7 = v6;
    v8 = MEMORY[0x1E695E0F0];
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = MEMORY[0x1E695E0F0];
    }

    v31 = v9;

    v10 = [v5 objectForKeyedSubscript:MEMORY[0x1E695E110]];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    v29 = v12;

    v13 = [v31 sortedArrayUsingComparator:&__block_literal_global_8_3];
    v30 = [v4 fc_arrayByTransformingWithBlock:&__block_literal_global_11_4];
    v14 = *(subscriptions + 8);
    v15 = [v14 rankTagIDsDescending:v30];

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__FCTagSubscriptionSorter_sortTagSubscriptions___block_invoke_4;
    aBlock[3] = &unk_1E7C47D88;
    v16 = v15;
    v41 = v16;
    v17 = _Block_copy(aBlock);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v43[0] = 0;
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __48__FCTagSubscriptionSorter_sortTagSubscriptions___block_invoke_5;
    v32[3] = &unk_1E7C47DB0;
    v18 = v16;
    v33 = v18;
    v34 = buf;
    v35 = &v36;
    [v13 enumerateObjectsUsingBlock:v32];
    v19 = v37[3];
    if (v19 >= [v13 count])
    {
      v20 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v20 = [v13 fc_subarrayUpToIndex:v37[3] inclusive:1];
    }

    v21 = v37[3];
    if (v21 >= [v13 count])
    {
      v22 = MEMORY[0x1E695E0F0];
    }

    else
    {
      v22 = [v13 fc_subarrayFromIndex:v37[3] inclusive:0];
    }

    v23 = [v29 sortedArrayUsingComparator:v17];
    v24 = [v20 mutableCopy];
    v25 = [v24 fc_mergeSortedOrderedCollection:v23 usingComparator:v17];
    v26 = [MEMORY[0x1E695DEC8] fc_arrayByAddingObjectsFromArray:v22 toArray:v24];

    _Block_object_dispose(&v36, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

id __48__FCTagSubscriptionSorter_sortTagSubscriptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 order];
  v4 = [v2 numberWithInt:v3 != 0];

  return v4;
}

uint64_t __48__FCTagSubscriptionSorter_sortTagSubscriptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 order];
  v6 = [v4 order];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __48__FCTagSubscriptionSorter_sortTagSubscriptions___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [a2 tagID];
  v9 = [v5 numberWithUnsignedInteger:{objc_msgSend(v6, "indexOfObject:", v8)}];

  v10 = MEMORY[0x1E696AD98];
  v11 = *(a1 + 32);
  v12 = [v7 tagID];

  v13 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "indexOfObject:", v12)}];

  v14 = [v9 compare:v13];
  return v14;
}

void __48__FCTagSubscriptionSorter_sortTagSubscriptions___block_invoke_5(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1[4];
  v8 = [a2 tagID];
  v9 = [v7 indexOfObject:v8];

  v10 = *(a1[5] + 8);
  if (v9 >= *(v10 + 24))
  {
    *(v10 + 24) = v9;
    *(*(a1[6] + 8) + 24) = a3;
  }

  else
  {
    *a4 = 1;
  }
}

@end