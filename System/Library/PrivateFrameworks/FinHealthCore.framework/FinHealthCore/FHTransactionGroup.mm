@interface FHTransactionGroup
+ (id)deleteInsightsForGroupIds:(id)ids;
+ (id)deleteOutdatedEntityGroupsAndInsights;
+ (void)_updateStateForTransactionsWithIds:(id)ids;
- (FHTransactionGroup)initWithCoder:(id)coder;
- (FHTransactionGroup)initWithGroupIdentifier:(id)identifier transactionIds:(id)ids groupingMethod:(unint64_t)method creditDebitType:(unint64_t)type category:(id)category;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FHTransactionGroup

- (FHTransactionGroup)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = FHTransactionGroup;
  v5 = [(FHTransactionGroup *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"groupIdentifier"];
    groupIdentifier = v5->_groupIdentifier;
    v5->_groupIdentifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"transactionIds"];
    transactionIds = v5->_transactionIds;
    v5->_transactionIds = v11;

    v5->_groupingMethod = [coderCopy decodeIntegerForKey:@"groupingMethod"];
    v5->_creditDebitType = [coderCopy decodeIntegerForKey:@"creditDebitType"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"category"];
    category = v5->_category;
    v5->_category = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  groupIdentifier = self->_groupIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:groupIdentifier forKey:@"groupIdentifier"];
  [coderCopy encodeObject:self->_transactionIds forKey:@"transactionIds"];
  [coderCopy encodeInteger:self->_groupingMethod forKey:@"groupingMethod"];
  [coderCopy encodeInteger:self->_creditDebitType forKey:@"creditDebitType"];
  [coderCopy encodeObject:self->_category forKey:@"category"];
}

- (FHTransactionGroup)initWithGroupIdentifier:(id)identifier transactionIds:(id)ids groupingMethod:(unint64_t)method creditDebitType:(unint64_t)type category:(id)category
{
  identifierCopy = identifier;
  idsCopy = ids;
  categoryCopy = category;
  v19.receiver = self;
  v19.super_class = FHTransactionGroup;
  v16 = [(FHTransactionGroup *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_groupIdentifier, identifier);
    objc_storeStrong(&v17->_transactionIds, ids);
    v17->_groupingMethod = method;
    v17->_creditDebitType = type;
    objc_storeStrong(&v17->_category, category);
  }

  return v17;
}

+ (id)deleteOutdatedEntityGroupsAndInsights
{
  v32[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__3;
  v28 = __Block_byref_object_dispose__3;
  v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__3;
  v22 = __Block_byref_object_dispose__3;
  v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = [FHDatabaseJoinClauseFromBuilder initWithBuilder:&__block_literal_global_5];
  v5 = [[FHDatabaseEntity alloc] initWithEntity:@"transactions" joinClause:v4];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.t_identifier", @"transactions"];
  v32[0] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.t_fh_internal_state", @"transactions"];
  v32[1] = v7;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.t_identifier", @"fh_grouping"];
  v32[2] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.group_id", @"fh_grouping"];
  v32[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:4];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __59__FHTransactionGroup_deleteOutdatedEntityGroupsAndInsights__block_invoke_2;
  v17[3] = &unk_2785CC6A8;
  v17[4] = &v24;
  v17[5] = &v18;
  [(FHDatabaseEntity *)v5 queryDataWithBlock:0 logicalOperator:@"AND" selectFields:v10 usingBlock:v17];

  if ([v25[5] count])
  {
    v11 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = v25[5];
      *buf = 138412290;
      v31 = v12;
      _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_INFO, "Deleting outdated groups: %@", buf, 0xCu);
    }

    v13 = [v25[5] copy];
    v14 = [self deleteInsightsForGroupIds:v13];

    v3 = v14;
  }

  v15 = [v19[5] copy];
  [self _updateStateForTransactionsWithIds:v15];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v3;
}

void __59__FHTransactionGroup_deleteOutdatedEntityGroupsAndInsights__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 stringAtIndex:0];
  v5 = [v3 intAtIndex:1];
  v6 = [v3 stringAtIndex:2];
  v7 = [v3 stringAtIndex:3];

  if (v4 && ![v4 isEqualToString:&stru_283A7B918])
  {
    if (v5 == 7)
    {
      if (v7 && [v7 length])
      {
        v11 = FinHealthLogObject(@"FinHealthCore");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v12 = 138412546;
          v13 = v7;
          v14 = 2112;
          v15 = v6;
          _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_DEBUG, "Recomputing group %@ -- Transaction %@ was updated", &v12, 0x16u);
        }

        [*(*(*(a1 + 32) + 8) + 40) addObject:v7];
      }

      v9 = 40;
      v10 = v4;
      goto LABEL_15;
    }
  }

  else if (v7 && [v7 length])
  {
    v8 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v12 = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_226DD4000, v8, OS_LOG_TYPE_DEBUG, "Recomputing group %@ -- Transaction %@ was deleted", &v12, 0x16u);
    }

    v9 = 32;
    v10 = v7;
LABEL_15:
    [*(*(*(a1 + v9) + 8) + 40) addObject:v10];
  }
}

+ (id)deleteInsightsForGroupIds:(id)ids
{
  v53 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v34 = [[FHDatabaseEntity alloc] initWithEntity:?];
  v30 = [[FHDatabaseEntity alloc] initWithEntity:?];
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v32 setObject:idsCopy forKey:@"ENTITY-GROUPS"];
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  obj = idsCopy;
  v35 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
  if (v35)
  {
    v33 = *v41;
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v41 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v40 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v39[0] = MEMORY[0x277D85DD0];
        v39[1] = 3221225472;
        v39[2] = __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke;
        v39[3] = &unk_2785CB058;
        v39[4] = v5;
        v6 = [FHDatabaseClauseFromBuilder initWithBuilder:v39];
        v7 = [(FHDatabaseEntity *)v34 clearDataWithClauseBuilder:v6];
        v8 = FinHealthLogObject(@"FinHealthCore");
        v9 = v8;
        if (v7)
        {
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            goto LABEL_12;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v5;
          v10 = v9;
          v11 = OS_LOG_TYPE_INFO;
          v12 = "Group: %@ deleted from FinHealthDB";
        }

        else
        {
          if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_12;
          }

          LODWORD(buf) = 138412290;
          *(&buf + 4) = v5;
          v10 = v9;
          v11 = OS_LOG_TYPE_ERROR;
          v12 = "Failed to delete group: %@ from FinHealthDB";
        }

        _os_log_impl(&dword_226DD4000, v10, v11, v12, &buf, 0xCu);
LABEL_12:

        v13 = [FHDatabaseJoinClauseFromBuilder initWithBuilder:&__block_literal_global_146];
        v14 = [[FHDatabaseEntity alloc] initWithEntity:@"fh_grouping" joinClause:v13];
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_2;
        v38[3] = &unk_2785CB058;
        v38[4] = v5;
        v15 = [FHDatabaseClauseFromBuilder initWithBuilder:v38];
        *&buf = 0;
        *(&buf + 1) = &buf;
        v48 = 0x3032000000;
        v49 = __Block_byref_object_copy__3;
        v50 = __Block_byref_object_dispose__3;
        v51 = 0;
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.predicted_score", @"features_predicted_realtime"];
        v46 = v16;
        v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_3;
        v37[3] = &unk_2785CB080;
        v37[4] = &buf;
        [(FHDatabaseEntity *)v14 queryDataWithBlock:v15 logicalOperator:@"AND" selectFields:v17 usingBlock:v37];

        if (!*(*(&buf + 1) + 40))
        {
          goto LABEL_25;
        }

        if (v7 && [(FHDatabaseEntity *)v30 clearDataWithClauseBuilder:v15])
        {
          v18 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            goto LABEL_20;
          }

          *v44 = 138412290;
          v45 = v5;
          v19 = v18;
          v20 = OS_LOG_TYPE_INFO;
          v21 = "Income predictions for group: %@ deleted from FinHealthDB";
        }

        else
        {
          v18 = FinHealthLogObject(@"FinHealthCore");
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_20;
          }

          *v44 = 138412290;
          v45 = v5;
          v19 = v18;
          v20 = OS_LOG_TYPE_ERROR;
          v21 = "Failed to delete income predictions associated with group: %@ from FinHealthDB";
        }

        _os_log_impl(&dword_226DD4000, v19, v20, v21, v44, 0xCu);
LABEL_20:

        [*(*(&buf + 1) + 40) doubleValue];
        if (v22 > 0.8)
        {
          v23 = [v32 objectForKey:@"INCOME-INSIGHTS"];
          v24 = v23;
          if (v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = [MEMORY[0x277CBEB98] set];
          }

          v26 = v25;

          v27 = [v26 setByAddingObject:v5];
          [v32 setObject:v27 forKey:@"INCOME-INSIGHTS"];
        }

LABEL_25:
        _Block_object_dispose(&buf, 8);

        objc_autoreleasePoolPop(context);
      }

      v35 = [obj countByEnumeratingWithState:&v40 objects:v52 count:16];
    }

    while (v35);
  }

  v28 = [v32 copy];

  return v28;
}

void __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%@.%@", @"fh_grouping", @"group_id"];
  [v4 addStringClause:@"==" fieldName:v5 expression:*(a1 + 32)];
}

void __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"%@.%@", @"features_predicted_realtime", @"identifier"];
  [v4 addStringClause:@"==" fieldName:v5 expression:*(a1 + 32)];

  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.feature_name", @"features_predicted_realtime"];
  [v4 addStringClause:@"==" fieldName:v6 expression:@"GhentClassificationModel"];
}

uint64_t __48__FHTransactionGroup_deleteInsightsForGroupIds___block_invoke_3(uint64_t a1, void *a2)
{
  *(*(*(a1 + 32) + 8) + 40) = [a2 decimalNumberAtIndex:0];

  return MEMORY[0x2821F96F8]();
}

+ (void)_updateStateForTransactionsWithIds:(id)ids
{
  v15 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  v4 = [[FHDatabaseManager alloc] init:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = idsCopy;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 updateStateForTransaction:*(*(&v10 + 1) + 8 * v9++) newState:{2, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end