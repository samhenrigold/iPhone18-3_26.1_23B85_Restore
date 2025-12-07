@interface FCTagSubscriptionOrderAssigner
- (FCTagSubscriptionOrderAssigner)init;
- (id)_assignOrderToSubscriptions:(void *)subscriptions withInitialOrder:(uint64_t)order orderSpacing:(uint64_t)spacing;
- (id)assignOrderToTagSubscriptions:(id)subscriptions;
- (void)initWithInitialOrder:(uint64_t)order orderSpacing:;
@end

@implementation FCTagSubscriptionOrderAssigner

- (FCTagSubscriptionOrderAssigner)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCTagSubscriptionOrderAssigner init]";
    v10 = 2080;
    v11 = "FCTagSubscriptionOrderAssigner.m";
    v12 = 1024;
    v13 = 26;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCTagSubscriptionOrderAssigner init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (void)initWithInitialOrder:(uint64_t)order orderSpacing:
{
  if (result)
  {
    v5.receiver = result;
    v5.super_class = FCTagSubscriptionOrderAssigner;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      result[1] = a2;
      result[2] = order;
    }
  }

  return result;
}

- (id)assignOrderToTagSubscriptions:(id)subscriptions
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (subscriptions)
  {
    if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptions != nil"];
      *buf = 136315906;
      v15 = "[FCTagSubscriptionOrderAssigner assignOrderToTagSubscriptions:]";
      v16 = 2080;
      v17 = "FCTagSubscriptionOrderAssigner.m";
      v18 = 1024;
      v19 = 42;
      v20 = 2114;
      v21 = v9;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }

    v5 = objc_opt_new();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__FCTagSubscriptionOrderAssigner_assignOrderToTagSubscriptions___block_invoke_2;
    v10[3] = &unk_1E7C43930;
    v11 = v4;
    subscriptionsCopy = subscriptions;
    v6 = v5;
    v13 = v6;
    [v11 fc_enumerateIslandsOfCommonValuesForKeyBlock:&__block_literal_global_124 withBlock:v10];
    v7 = v13;
    subscriptions = v6;
  }

  return subscriptions;
}

id __64__FCTagSubscriptionOrderAssigner_assignOrderToTagSubscriptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 order];
  v4 = [v2 numberWithInt:v3 == 0];

  return v4;
}

void __64__FCTagSubscriptionOrderAssigner_assignOrderToTagSubscriptions___block_invoke_2(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = a2;
  if ([a3 BOOLValue])
  {
    if (a4)
    {
      v9 = [*(a1 + 32) objectAtIndexedSubscript:a4 - 1];
      v10 = [v9 order];
      v11 = [v10 longLongValue];
    }

    else
    {
      v11 = 0;
    }

    v12 = a4 + a5;
    if (v12 == [*(a1 + 32) count])
    {
      v13 = *(a1 + 40);
      v14 = v31;
      v15 = v14;
      if (a4)
      {
        if (v13)
        {
          if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v27 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptions != nil"];
            *buf = 136315906;
            v33 = "[FCTagSubscriptionOrderAssigner _assignOrderToSubscriptions:inOpenEndRangeWithPreviousValue:]";
            v34 = 2080;
            v35 = "FCTagSubscriptionOrderAssigner.m";
            v36 = 1024;
            v37 = 141;
            v38 = 2114;
            v39 = v27;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v16 = *(v13 + 16);
          v17 = v16 + v11;
LABEL_23:
          v24 = v15;
LABEL_29:
          v26 = [FCTagSubscriptionOrderAssigner _assignOrderToSubscriptions:v24 withInitialOrder:v17 orderSpacing:v16];
LABEL_30:

          [*(a1 + 48) addObjectsFromArray:v26];
          goto LABEL_31;
        }
      }

      else if (v13)
      {
        if (!v14 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptions != nil"];
          *buf = 136315906;
          v33 = "[FCTagSubscriptionOrderAssigner _assignOrderToSubscriptionsInOpenRange:]";
          v34 = 2080;
          v35 = "FCTagSubscriptionOrderAssigner.m";
          v36 = 1024;
          v37 = 158;
          v38 = 2114;
          v39 = v29;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v17 = *(v13 + 8);
        v16 = *(v13 + 16);
        goto LABEL_23;
      }
    }

    else
    {
      v18 = [*(a1 + 32) objectAtIndexedSubscript:v12];
      v19 = [v18 order];
      v20 = [v19 longLongValue];

      v21 = *(a1 + 40);
      v22 = v31;
      v23 = v22;
      if (a4)
      {
        if (v21)
        {
          if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptions != nil"];
            *buf = 136315906;
            v33 = "[FCTagSubscriptionOrderAssigner _assignOrderToSubscriptions:inClosedRangeWithPreviousValue:nextValue:]";
            v34 = 2080;
            v35 = "FCTagSubscriptionOrderAssigner.m";
            v36 = 1024;
            v37 = 106;
            v38 = 2114;
            v39 = v28;
            _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
          }

          v16 = (v20 - v11) / ([v23 count] + 1);
          v17 = v16 + v11;
          v24 = v23;
          goto LABEL_29;
        }
      }

      else if (v21)
      {
        if (!v22 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptions != nil"];
          *buf = 136315906;
          v33 = "[FCTagSubscriptionOrderAssigner _assignOrderToSubscriptions:inOpenStartRangeWithNextValue:]";
          v34 = 2080;
          v35 = "FCTagSubscriptionOrderAssigner.m";
          v36 = 1024;
          v37 = 123;
          v38 = 2114;
          v39 = v30;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
        }

        v25 = *(v21 + 16);
        v17 = v20 - [v23 count] * v25;
        v24 = v23;
        v16 = v25;
        goto LABEL_29;
      }
    }

    v26 = 0;
    goto LABEL_30;
  }

LABEL_31:
}

- (id)_assignOrderToSubscriptions:(void *)subscriptions withInitialOrder:(uint64_t)order orderSpacing:(uint64_t)spacing
{
  v18 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  if (!subscriptionsCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "subscriptions != nil"];
    *buf = 136315906;
    v11 = "[FCTagSubscriptionOrderAssigner _assignOrderToSubscriptions:withInitialOrder:orderSpacing:]";
    v12 = 2080;
    v13 = "FCTagSubscriptionOrderAssigner.m";
    v14 = 1024;
    v15 = 176;
    v16 = 2114;
    v17 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__FCTagSubscriptionOrderAssigner__assignOrderToSubscriptions_withInitialOrder_orderSpacing___block_invoke;
  v9[3] = &__block_descriptor_48_e75____FCReorderableTagSubscription__24__0Q8___FCReorderableTagSubscription__16l;
  v9[4] = order;
  v9[5] = spacing;
  v6 = [subscriptionsCopy fc_arrayByTransformingWithBlockWithIndex:v9];

  return v6;
}

id __92__FCTagSubscriptionOrderAssigner__assignOrderToSubscriptions_withInitialOrder_orderSpacing___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = *(a1 + 32) + *(a1 + 40) * a2;
  v5 = a3;
  v6 = [v3 numberWithLongLong:v4];
  v7 = [v5 copyWithOrder:v6];

  return v7;
}

@end