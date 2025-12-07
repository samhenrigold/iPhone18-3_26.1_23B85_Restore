@interface FHInsightsFetcher
+ (id)sharedInstance;
- (id)_init;
- (id)retrieveInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window;
- (id)retrieveSpendInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window sourceId:(id)id accountType:(int64_t)type;
- (id)totalSpendAmountBetweenDates:(id)dates endDate:(id)date sourceId:(id)id accountType:(int64_t)type;
@end

@implementation FHInsightsFetcher

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FHInsightsFetcher sharedInstance];
  }

  v3 = sharedInstance_insightsFetcher;

  return v3;
}

uint64_t __35__FHInsightsFetcher_sharedInstance__block_invoke()
{
  sharedInstance_insightsFetcher = [[FHInsightsFetcher alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = FHInsightsFetcher;
  v2 = [(FHInsightsFetcher *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA988] decimalNumberHandlerWithRoundingMode:0 scale:2 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:0];
    roundingBehavior = v2->_roundingBehavior;
    v2->_roundingBehavior = v3;
  }

  return v2;
}

- (id)totalSpendAmountBetweenDates:(id)dates endDate:(id)date sourceId:(id)id accountType:(int64_t)type
{
  datesCopy = dates;
  dateCopy = date;
  idCopy = id;
  v12 = objc_opt_new();
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__0;
  v43 = __Block_byref_object_dispose__0;
  v44 = objc_opt_new();
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v13 = objc_alloc(MEMORY[0x277D087E8]);
  v14 = [v13 initWithEntity:*MEMORY[0x277D087B0]];
  fieldsInOrder = [v14 fieldsInOrder];
  v16 = MEMORY[0x277D087E0];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke;
  v30[3] = &unk_278FFC0F0;
  v17 = datesCopy;
  v31 = v17;
  v18 = dateCopy;
  v32 = v18;
  v19 = idCopy;
  v33 = v19;
  typeCopy = type;
  v20 = [v16 initWithBuilder:v30];
  v21 = *MEMORY[0x277D08750];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke_2;
  v29[3] = &unk_278FFC118;
  v29[4] = &v35;
  v29[5] = &v39;
  [v14 queryDataWithBlock:v20 logicalOperator:v21 selectFields:fieldsInOrder usingBlock:v29];
  v22 = MEMORY[0x277CCA980];
  v23 = [MEMORY[0x277CCABB0] numberWithDouble:v36[3]];
  v24 = v23;
  if (v23)
  {
    objc_msgSend_decimalValue(v23);
  }

  else
  {
    v27[0] = 0;
    v27[1] = 0;
    v28 = 0;
  }

  v25 = [v22 decimalNumberWithDecimal:v27];
  [v12 setValue:v25 forKey:@"overallSpending"];

  [v12 setValue:v40[5] forKey:@"categorySpending"];
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);

  return v12;
}

void __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke(void *a1, void *a2)
{
  v5 = a2;
  [v5 addDateClause:*MEMORY[0x277D086C0] fieldName:@"transactions.t_date" expression:a1[4]];
  [v5 addDateClause:*MEMORY[0x277D086C8] fieldName:@"transactions.t_date" expression:a1[5]];
  [v5 addIntegerClause:*MEMORY[0x277D086D0] fieldName:@"transactions.t_fh_internal_state" expression:6];
  v3 = a1[7];
  if (a1[6])
  {
    if (v3 != 2)
    {
      v4 = v5;
      if (v3 != 4)
      {
        goto LABEL_8;
      }

      [v5 addStringClause:*MEMORY[0x277D086B8] fieldName:@"transactions.t_source_identifier" expression:?];
      goto LABEL_7;
    }
  }

  else
  {
    v4 = v5;
    if (v3 != 2)
    {
      goto LABEL_8;
    }
  }

  [v5 addIntegerClause:*MEMORY[0x277D086B8] fieldName:@"transactions.a_type" expression:2];
LABEL_7:
  v4 = v5;
LABEL_8:
}

void __79__FHInsightsFetcher_totalSpendAmountBetweenDates_endDate_sourceId_accountType___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [v14 signedIntegerAtIndex:17];
  v4 = [v14 signedIntegerAtIndex:13];
  if (v3 == 13 || !v3)
  {
    v5 = MEMORY[0x277CCA980];
    v6 = [v14 objectAtIndex:9];
    v7 = [v6 stringValue];
    v8 = [v5 decimalNumberWithString:v7];

    if (v4 <= 8 && ((1 << v4) & 0x103) != 0)
    {
      v9 = *(*(*(a1 + 32) + 8) + 24);
      v10 = [v14 objectAtIndex:9];
      [v10 doubleValue];
      *(*(*(a1 + 32) + 8) + 24) = v9 + v11;

      v12 = *(*(*(a1 + 40) + 8) + 40);
      v13 = [v14 objectAtIndex:27];
      [v12 setOrAddToDecimalValue:v8 forKey:v13];
    }
  }
}

- (id)retrieveSpendInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window sourceId:(id)id accountType:(int64_t)type
{
  v108 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  idCopy = id;
  v15 = FinHealthLogObject();
  v16 = FinHealthLogObject();
  ptr = self;
  v17 = os_signpost_id_make_with_pointer(v16, self);

  if (v17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24ABED000, v15, OS_SIGNPOST_INTERVAL_BEGIN, v17, "insight:retriveSpendingInsights", "", buf, 2u);
  }

  v18 = FinHealthLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24ABED000, v18, OS_LOG_TYPE_INFO, "BEGIN insight:retriveSpendingInsights", buf, 2u);
  }

  v91 = objc_alloc_init(FHOverallSpendInsight);
  v95 = objc_opt_new();
  v19 = +[FHInsightsFetcher sharedInstance];
  v20 = [v19 totalSpendAmountBetweenDates:dateCopy endDate:endDateCopy sourceId:idCopy accountType:type];

  v21 = [v20 objectForKey:@"overallSpending"];
  [v21 doubleValue];
  v23 = v22;

  v89 = v20;
  v24 = [v20 objectForKey:@"categorySpending"];
  v96 = objc_opt_new();
  v25 = [MEMORY[0x277CBEAA8] now];
  v26 = FHIsDateBetweenDates();

  if (v26)
  {
    v27 = [MEMORY[0x277CBEAA8] now];
    v28 = FHNumberOfDaysBetweenDates();
  }

  else
  {
    v28 = FHNumberOfDaysBetweenDates();
  }

  v90 = idCopy;
  switch(window)
  {
    case 3:
      v29 = FHStartOfLastYear();
      break;
    case 2:
      v30 = FHDateStartOfLastMonth();
      if (v28 == FHNumberOfDaysInMonthForDate() || v28 >= FHNumberOfDaysInMonthForDate())
      {
        FHNumberOfDaysInMonthForDate();
      }

      goto LABEL_19;
    case 1:
      v29 = FHDateFromNumberOfDays();
      break;
    default:
      v36 = 0.0;
      v40 = 3.40282347e38;
      v38 = v23;
      goto LABEL_24;
  }

  v30 = v29;
LABEL_19:
  v31 = FHDateFromNumberOfDays();
  v32 = +[FHInsightsFetcher sharedInstance];
  v33 = [v32 totalSpendAmountBetweenDates:v30 endDate:v31 sourceId:idCopy accountType:type];

  v34 = [v33 objectForKey:@"overallSpending"];
  [v34 doubleValue];
  v36 = v35;

  v37 = [v33 objectForKey:@"categorySpending"];

  v38 = v23 - v36;
  v39 = fabs(v23 - v36) / v36 * 100.0;
  if (v36 == 0.0)
  {
    v40 = 3.40282347e38;
  }

  else
  {
    v40 = v39;
  }

  v96 = v37;
LABEL_24:
  v41 = 2;
  if (v38 >= 0.0)
  {
    v41 = 1;
  }

  if (v38 == 0.0)
  {
    v42 = 0;
  }

  else
  {
    v42 = v41;
  }

  [(FHFeatureInsight *)v91 setDirection:v42];
  [(FHFeatureInsight *)v91 setType:@"FHInsightTypeOverallSpend"];
  v43 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v23 / 100.0];
  v44 = [v43 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v91 setSpendAmount:v44];

  v45 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v36 / 100.0];
  v46 = [v45 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v91 setAverageAmount:v46];

  v47 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v38 / 100.0];
  v48 = [v47 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v91 setSpendingInsightAmount:v48];

  v49 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v40];
  v50 = [v49 decimalNumberByRoundingAccordingToBehavior:self->_roundingBehavior];
  [(FHFeatureInsight *)v91 setSpendingInsightPercentageValue:v50];

  [(FHFeatureInsight *)v91 setStartDate:dateCopy];
  [(FHFeatureInsight *)v91 setEndDate:endDateCopy];
  windowCopy = window;
  [(FHFeatureInsight *)v91 setWindow:window];
  [(FHFeatureInsight *)v91 setCurrencyCode:@"USD"];
  [v95 addObject:v91];
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  obj = v24;
  v98 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
  if (v98)
  {
    v92 = *v103;
    v93 = endDateCopy;
    do
    {
      for (i = 0; i != v98; ++i)
      {
        v52 = 0x277CCA000uLL;
        if (*v103 != v92)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v102 + 1) + 8 * i);
        v54 = objc_alloc_init(FHCategorySpendInsight);
        zero = [MEMORY[0x277CCA980] zero];
        zero2 = [MEMORY[0x277CCA980] zero];
        v101 = [obj objectForKeyedSubscript:v53];
        v57 = [v96 objectForKey:v53];

        if (v57)
        {
          v58 = [v96 objectForKeyedSubscript:v53];

          zero = v58;
        }

        v59 = [v101 decimalNumberBySubtracting:zero];
        v60 = [v59 decimalNumberByRoundingAccordingToBehavior:ptr->_roundingBehavior];

        zero3 = [MEMORY[0x277CCA980] zero];
        v62 = [zero compare:zero3];

        if (!v62)
        {
          [(FHFeatureInsight *)v54 setDirection:1];
          zero5 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:3.40282347e38];
LABEL_42:
          v67 = zero5;
          [(FHFeatureInsight *)v54 setSpendingInsightPercentageValue:zero5];
          goto LABEL_44;
        }

        zero4 = [MEMORY[0x277CCA980] zero];
        v64 = [v60 compare:zero4];

        if (!v64)
        {
          [(FHFeatureInsight *)v54 setDirection:0];
          zero5 = [MEMORY[0x277CCA980] zero];
          goto LABEL_42;
        }

        zero6 = [MEMORY[0x277CCA980] zero];
        v66 = [v60 compare:zero6];

        if (v66 == 1)
        {
          [(FHFeatureInsight *)v54 setDirection:1];
          v67 = [v60 decimalNumberByDividingBy:zero];
          v68 = [MEMORY[0x277CCA980] decimalNumberWithString:@"100"];
          v69 = [v67 decimalNumberByMultiplyingBy:v68];
          v70 = [v69 decimalNumberByRoundingAccordingToBehavior:ptr->_roundingBehavior];
          [(FHFeatureInsight *)v54 setSpendingInsightPercentageValue:v70];

          v52 = 0x277CCA000;
        }

        else
        {
          [(FHFeatureInsight *)v54 setDirection:2];
          v67 = [zero decimalNumberBySubtracting:v101];
          v72 = [v67 decimalNumberByDividingBy:zero];
          v73 = [MEMORY[0x277CCA980] decimalNumberWithString:@"100"];
          v74 = [v72 decimalNumberByMultiplyingBy:v73];
          v75 = [v74 decimalNumberByRoundingAccordingToBehavior:ptr->_roundingBehavior];
          [(FHFeatureInsight *)v54 setSpendingInsightPercentageValue:v75];

          v52 = 0x277CCA000uLL;
        }

LABEL_44:

        [(FHFeatureInsight *)v54 setType:@"FHInsightTypeCategorySpend"];
        defaultDatabaseAmountMultiplier = [*(v52 + 2432) defaultDatabaseAmountMultiplier];
        [v101 decimalNumberByDividingBy:defaultDatabaseAmountMultiplier];
        v78 = v77 = v52;
        [(FHFeatureInsight *)v54 setSpendAmount:v78];

        defaultDatabaseAmountMultiplier2 = [*(v77 + 2432) defaultDatabaseAmountMultiplier];
        v80 = [zero decimalNumberByDividingBy:defaultDatabaseAmountMultiplier2];
        [(FHFeatureInsight *)v54 setAverageAmount:v80];

        defaultDatabaseAmountMultiplier3 = [*(v77 + 2432) defaultDatabaseAmountMultiplier];
        v82 = [v60 decimalNumberByDividingBy:defaultDatabaseAmountMultiplier3];
        [(FHFeatureInsight *)v54 setSpendingInsightAmount:v82];

        [(FHFeatureInsight *)v54 setStartDate:dateCopy];
        endDateCopy = v93;
        [(FHFeatureInsight *)v54 setEndDate:v93];
        [(FHFeatureInsight *)v54 setWindow:windowCopy];
        [(FHFeatureInsight *)v54 setCurrencyCode:@"USD"];
        -[FHCategorySpendInsight setMerchantCategory:](v54, "setMerchantCategory:", [v53 intValue]);
        [v95 addObject:v54];
      }

      v98 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
    }

    while (v98);
  }

  v83 = FinHealthLogObject();
  v84 = FinHealthLogObject();
  v85 = os_signpost_id_make_with_pointer(v84, ptr);

  if (v85 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v83))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_24ABED000, v83, OS_SIGNPOST_INTERVAL_END, v85, "insight:retriveSpendingInsights", "", buf, 2u);
  }

  v86 = FinHealthLogObject();
  if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_24ABED000, v86, OS_LOG_TYPE_INFO, "END insight:retriveSpendingInsights", buf, 2u);
  }

  v87 = [v95 copy];

  return v87;
}

- (id)retrieveInsightsWithStartDate:(id)date endDate:(id)endDate insightTypeItems:(id)items trendWindow:(int64_t)window
{
  v46 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  itemsCopy = items;
  v13 = objc_alloc(MEMORY[0x277D087E8]);
  v14 = [v13 initWithEntity:*MEMORY[0x277D086F0]];
  fieldsInOrder = [v14 fieldsInOrder];
  v16 = [fieldsInOrder subarrayWithRange:{1, objc_msgSend(fieldsInOrder, "count") - 1}];
  v17 = MEMORY[0x277D087E0];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke;
  v38[3] = &unk_278FFC140;
  v18 = dateCopy;
  v39 = v18;
  v19 = endDateCopy;
  v40 = v19;
  v20 = [v17 initWithBuilder:v38];
  v21 = FinHealthLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v20;
    _os_log_impl(&dword_24ABED000, v21, OS_LOG_TYPE_DEBUG, "databaseClauses: %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = objc_opt_new();
  objc_initWeak(&location, self);
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_119;
  v33[3] = &unk_278FFC168;
  objc_copyWeak(v36, &location);
  v22 = *MEMORY[0x277D08750];
  v36[1] = window;
  v23 = itemsCopy;
  v34 = v23;
  p_buf = &buf;
  [v14 queryDataWithBlock:v20 logicalOperator:v22 selectFields:v16 usingBlock:v33];
  v24 = *(*(&buf + 1) + 40);
  v28 = MEMORY[0x277D85DD0];
  v29 = 3221225472;
  v30 = __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_2;
  v31 = &unk_278FFC190;
  v25 = v23;
  v32 = v25;
  [v24 sortUsingComparator:&v28];
  v26 = [*(*(&buf + 1) + 40) copy];

  objc_destroyWeak(v36);
  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);

  return v26;
}

void __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x277D086C0];
  v4 = *(a1 + 32);
  v5 = a2;
  [v5 addDateClause:v3 fieldName:@"features_insight_trends.trend_date" expression:v4];
  [v5 addDateClause:*MEMORY[0x277D086C8] fieldName:@"features_insight_trends.trend_date" expression:*(a1 + 40)];
}

void __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_119(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v35 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (a4 & 1) == 0)
  {
    v7 = [v35 objectAtIndex:0];
    [v7 doubleValue];
    v9 = v8;

    v10 = [v35 objectAtIndex:1];
    v11 = [v10 intValue];

    v12 = [v35 objectAtIndex:5];
    v13 = [v12 intValue];

    v14 = [v35 objectAtIndex:4];
    [v14 doubleValue];
    v16 = v15;

    v17 = [v35 objectAtIndex:6];
    [v17 doubleValue];
    v19 = v18;

    v20 = [v35 objectAtIndex:2];
    v21 = [v20 stringValue];

    v22 = [v35 objectAtIndex:3];
    v23 = [v22 stringValue];

    if (*(a1 + 56) != v13 || ![*(a1 + 32) containsObject:v23])
    {
      goto LABEL_13;
    }

    v24 = v11;
    if ([v23 isEqualToString:@"FHInsightTypeCategorySpend"])
    {
      v25 = objc_alloc_init(FHCategorySpendInsight);
      [(FHFeatureInsight *)v25 setType:@"FHInsightTypeCategorySpend"];
      [(FHFeatureInsight *)v25 setDetectionType:2];
      [(FHFeatureInsight *)v25 setDirection:v24];
      [(FHCategorySpendInsight *)v25 setMerchantCategory:FHMerchantCategoryFromString()];
    }

    else if ([v23 isEqualToString:@"FHInsightTypeOverallSpend"])
    {
      v25 = objc_alloc_init(FHOverallSpendInsight);
      [(FHFeatureInsight *)v25 setType:@"FHInsightTypeOverallSpend"];
      [(FHFeatureInsight *)v25 setDetectionType:2];
      [(FHFeatureInsight *)v25 setDirection:v24];
    }

    else
    {
      if (![v23 isEqualToString:@"FHInsightTypeMerchantSpend"])
      {
        if (([v23 isEqualToString:@"FHInsightTypeAggregateTag"] & 1) == 0 && !objc_msgSend(v23, "isEqualToString:", @"FHInsightTypeCompoundTag"))
        {
          goto LABEL_13;
        }

        v25 = objc_alloc_init(FHSearchTagSpendInsight);
        [(FHFeatureInsight *)v25 setDetectionType:2];
        [(FHFeatureInsight *)v25 setDirection:v24];
        [(FHFeatureInsight *)v25 setWindow:v13];
        v30 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
        [(FHFeatureInsight *)v25 setStartDate:v30];

        v31 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
        [(FHFeatureInsight *)v25 setEndDate:v31];

        v32 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v16];
        [(FHFeatureInsight *)v25 setSpendAmount:v32];

        v33 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v19];
        [(FHFeatureInsight *)v25 setAverageAmount:v33];

        [(FHFeatureInsight *)v25 setCurrencyCode:@"USD"];
        if ([v23 isEqualToString:@"FHInsightTypeAggregateTag"])
        {
          v34 = @"FHInsightTypeAggregateTag";
        }

        else
        {
          v34 = @"FHInsightTypeCompoundTag";
        }

        [(FHFeatureInsight *)v25 setType:v34];
LABEL_12:
        [*(*(*(a1 + 40) + 8) + 40) addObject:v25];

LABEL_13:
        goto LABEL_14;
      }

      v25 = objc_alloc_init(FHMerchantSpendInsight);
      [(FHFeatureInsight *)v25 setType:@"FHInsightTypeMerchantSpend"];
      [(FHFeatureInsight *)v25 setDetectionType:2];
      [(FHFeatureInsight *)v25 setDirection:v24];
      [(FHCategorySpendInsight *)v25 setMerchantName:v21];
    }

    [(FHFeatureInsight *)v25 setWindow:v13];
    v26 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
    [(FHFeatureInsight *)v25 setStartDate:v26];

    v27 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v9];
    [(FHFeatureInsight *)v25 setEndDate:v27];

    v28 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v16];
    [(FHFeatureInsight *)v25 setSpendAmount:v28];

    v29 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v19];
    [(FHFeatureInsight *)v25 setAverageAmount:v29];

    [(FHFeatureInsight *)v25 setCurrencyCode:@"USD"];
    goto LABEL_12;
  }

LABEL_14:
}

uint64_t __88__FHInsightsFetcher_retrieveInsightsWithStartDate_endDate_insightTypeItems_trendWindow___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 type];
  v9 = [v7 indexOfObject:v8];

  v10 = *(a1 + 32);
  v11 = [v6 type];
  v12 = [v10 indexOfObject:v11];

  if (v9 != 0x7FFFFFFFFFFFFFFFLL && v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v9 != v12)
    {
      v14 = v9 > v12;
      goto LABEL_14;
    }

    v15 = [v5 type];
    if ([v15 isEqualToString:@"FHInsightTypeCategorySpend"])
    {
      v16 = [v6 type];
      v17 = [v16 isEqualToString:@"FHInsightTypeCategorySpend"];

      if (v17)
      {
        v18 = [v5 merchantCategory];
        v14 = v18 <= [v6 merchantCategory];
        goto LABEL_14;
      }
    }

    else
    {
    }

    v19 = [v5 spendAmount];
    v20 = [v6 spendAmount];
    v14 = [v19 compare:v20];

    goto LABEL_14;
  }

  v14 = 0;
LABEL_14:

  return v14;
}

@end