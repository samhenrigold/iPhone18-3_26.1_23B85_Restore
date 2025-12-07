@interface FHInsightsSpendingTrends
+ (id)_defaultQueue;
- (FHInsightsSpendingTrends)initWithWeeklyThreshold:(double)threshold monthlyThreshold:(double)monthlyThreshold merchantCounts:(id)counts;
- (FHInsightsSpendingTrends)trendsWithCompletion:(id)completion;
- (double)_fillFactorWithStartOfPeriodForMostRecentEntryDate:(id)date mostRecentEntryDate:(id)entryDate endOfPeriodForMostRecentEntryDate:(id)recentEntryDate numberOfDaysSinceFirstTransaction:(unint64_t)transaction transactionCount:(unint64_t)count transactionCountForMostRecentPeriod:(unint64_t)period transactionAmountSums:(double)sums transactionAmountSumsForMostRecentPeriod:(double)self0;
- (id)_kendallCoefficientWithIndexedAmountSums:(id)sums;
- (id)_orderedTimeStampAndAmountPair:(id)pair;
- (void)_computeAndStoreTrend:(id)trend indexedAmountSums:(id)sums insightFeatureName:(id)name insightType:(id)type trendWindow:(int64_t)window;
- (void)_computeCategoryAndMerchantTrends;
@end

@implementation FHInsightsSpendingTrends

- (FHInsightsSpendingTrends)initWithWeeklyThreshold:(double)threshold monthlyThreshold:(double)monthlyThreshold merchantCounts:(id)counts
{
  countsCopy = counts;
  v23.receiver = self;
  v23.super_class = FHInsightsSpendingTrends;
  v10 = [(FHInsightsSpendingTrends *)&v23 init];
  if (v10)
  {
    v11 = [MEMORY[0x277D087F8] initWithBuilder:&__block_literal_global];
    v12 = objc_alloc(MEMORY[0x277D087E8]);
    v13 = [v12 initWithEntity:*MEMORY[0x277D087B0] joinClause:v11];
    transactionAndFeauturesEntities = v10->_transactionAndFeauturesEntities;
    v10->_transactionAndFeauturesEntities = v13;

    v15 = objc_alloc(MEMORY[0x277D087E8]);
    v16 = [v15 initWithEntity:*MEMORY[0x277D086F0]];
    insightsDestinationEntity = v10->_insightsDestinationEntity;
    v10->_insightsDestinationEntity = v16;

    _defaultQueue = [objc_opt_class() _defaultQueue];
    insightsProcessingQueue = v10->_insightsProcessingQueue;
    v10->_insightsProcessingQueue = _defaultQueue;

    objc_storeStrong(&v10->_merchantCounts, counts);
    if (fabs(threshold) <= 1.0)
    {
      thresholdCopy = threshold;
    }

    else
    {
      thresholdCopy = *&defaultWeeklyThreshold;
    }

    if (fabs(monthlyThreshold) <= 1.0)
    {
      monthlyThresholdCopy = monthlyThreshold;
    }

    else
    {
      monthlyThresholdCopy = *&defaultMonthlyThreshold;
    }

    v10->_weeklyThreshold = thresholdCopy;
    v10->_monthlyThreshold = monthlyThresholdCopy;
  }

  return v10;
}

- (FHInsightsSpendingTrends)trendsWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  insightsProcessingQueue = self->_insightsProcessingQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__FHInsightsSpendingTrends_trendsWithCompletion___block_invoke;
  v8[3] = &unk_278FFBF40;
  objc_copyWeak(&v10, &location);
  v8[4] = self;
  v9 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(insightsProcessingQueue, v8);

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
  return result;
}

void __49__FHInsightsSpendingTrends_trendsWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    [WeakRetained[2] clearData];
    [*(a1 + 32) _computeCategoryAndMerchantTrends];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)_computeCategoryAndMerchantTrends
{
  v157 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_insightsProcessingQueue);
  v49 = [MEMORY[0x277D087E0] initWithBuilder:&__block_literal_global_109];
  v149 = 0;
  v150 = &v149;
  v151 = 0x3032000000;
  v152 = __Block_byref_object_copy_;
  v153 = __Block_byref_object_dispose_;
  v154 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v143 = 0;
  v144 = &v143;
  v145 = 0x3032000000;
  v146 = __Block_byref_object_copy_;
  v147 = __Block_byref_object_dispose_;
  v148 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v137 = 0;
  v138 = &v137;
  v139 = 0x3032000000;
  v140 = __Block_byref_object_copy_;
  v141 = __Block_byref_object_dispose_;
  v142 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v131 = 0;
  v132 = &v131;
  v133 = 0x3032000000;
  v134 = __Block_byref_object_copy_;
  v135 = __Block_byref_object_dispose_;
  v136 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v125 = 0;
  v126 = &v125;
  v127 = 0x3032000000;
  v128 = __Block_byref_object_copy_;
  v129 = __Block_byref_object_dispose_;
  v130 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = __Block_byref_object_copy_;
  v123 = __Block_byref_object_dispose_;
  v124 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = __Block_byref_object_copy_;
  v117 = __Block_byref_object_dispose_;
  v118 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v107 = 0;
  v108 = &v107;
  v109 = 0x3032000000;
  v110 = __Block_byref_object_copy_;
  v111 = __Block_byref_object_dispose_;
  v112 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v101 = 0;
  v102 = &v101;
  v103 = 0x3032000000;
  v104 = __Block_byref_object_copy_;
  v105 = __Block_byref_object_dispose_;
  v106 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v95 = 0;
  v96 = &v95;
  v97 = 0x3032000000;
  v98 = __Block_byref_object_copy_;
  v99 = __Block_byref_object_dispose_;
  v100 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v91 = 0;
  v92 = &v91;
  v93 = 0x2020000000;
  v94 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x2020000000;
  v90 = 0;
  v83 = 0;
  v84 = &v83;
  v85 = 0x2020000000;
  v86 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x2020000000;
  v82 = 0;
  v75 = 0;
  v76 = &v75;
  v77 = 0x2020000000;
  v78 = 0;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x2020000000;
  distantPast = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v5 = v4;

  v70[3] = v5;
  v69[0] = 0;
  v69[1] = v69;
  v69[2] = 0x2020000000;
  distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast2 timeIntervalSinceReferenceDate];
  v8 = v7;

  v69[3] = v8;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  distantPast3 = [MEMORY[0x277CBEAA8] distantPast];
  [distantPast3 timeIntervalSinceReferenceDate];
  v11 = v10;

  v68 = v11;
  v61 = 0;
  v62 = &v61;
  v63 = 0x2020000000;
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  [distantFuture timeIntervalSinceReferenceDate];
  v14 = v13;

  v64 = v14;
  objc_initWeak(&location, self);
  transactionAndFeauturesEntities = self->_transactionAndFeauturesEntities;
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_122;
  v58[3] = &unk_278FFBF88;
  objc_copyWeak(&v59, &location);
  v16 = *MEMORY[0x277D08750];
  v58[4] = &v61;
  v58[5] = &v65;
  v58[6] = v69;
  v58[7] = &v75;
  v58[8] = &v71;
  v58[9] = &v79;
  v58[10] = &v149;
  v58[11] = &v101;
  v58[12] = v70;
  v58[13] = &v91;
  v58[14] = &v87;
  v58[15] = &v125;
  v58[16] = &v95;
  v58[17] = &v143;
  v58[18] = &v119;
  v58[19] = &v137;
  v58[20] = &v113;
  v58[21] = &v131;
  v58[22] = &v107;
  v58[23] = &v83;
  [(FHDatabaseEntity *)transactionAndFeauturesEntities queryDataWithBlock:v49 logicalOperator:v16 selectFields:&unk_285E24688 usingBlock:v58];
  v17 = [MEMORY[0x277CBEAA8] now];
  v18 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v62[3]];
  v19 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v66[3]];
  v48 = FHDateStartOfWeekOnMonday();
  v47 = FHDateEndOfWeekStartingOnMonday();
  v46 = FHDateStartOfMonth();
  v20 = FHDateEndOfMonth();
  v21 = FHNumberOfDaysBetweenDates();
  if (defaultWeeklyFillFactorStatus)
  {
    v22 = 1;
  }

  else if (FHIsDateBetweenDates() && v84[3] && v76[3])
  {
    [FHInsightsSpendingTrends _fillFactorWithStartOfPeriodForMostRecentEntryDate:"_fillFactorWithStartOfPeriodForMostRecentEntryDate:mostRecentEntryDate:endOfPeriodForMostRecentEntryDate:numberOfDaysSinceFirstTransaction:transactionCount:transactionCountForMostRecentPeriod:transactionAmountSums:transactionAmountSumsForMostRecentPeriod:" mostRecentEntryDate:v48 endOfPeriodForMostRecentEntryDate:v19 numberOfDaysSinceFirstTransaction:v47 transactionCount:v21 transactionCountForMostRecentPeriod:v80[3] transactionAmountSums:v72[3] transactionAmountSumsForMostRecentPeriod:?];
    v24 = v23;
    v22 = v23 >= *MEMORY[0x277D08710];
    v25 = FinHealthLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v156 = v24;
      _os_log_impl(&dword_24ABED000, v25, OS_LOG_TYPE_DEBUG, "weeklyFillFactor: %f", buf, 0xCu);
    }
  }

  else
  {
    v22 = 0;
  }

  if (defaultMonthlyFillFactorStatus)
  {
    v26 = 1;
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (!FHIsDateBetweenDates() || !v84[3] || !v92[3])
  {
    v26 = 0;
    if (!v22)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  [FHInsightsSpendingTrends _fillFactorWithStartOfPeriodForMostRecentEntryDate:"_fillFactorWithStartOfPeriodForMostRecentEntryDate:mostRecentEntryDate:endOfPeriodForMostRecentEntryDate:numberOfDaysSinceFirstTransaction:transactionCount:transactionCountForMostRecentPeriod:transactionAmountSums:transactionAmountSumsForMostRecentPeriod:" mostRecentEntryDate:v46 endOfPeriodForMostRecentEntryDate:v19 numberOfDaysSinceFirstTransaction:v20 transactionCount:v21 transactionCountForMostRecentPeriod:v80[3] transactionAmountSums:v88[3] transactionAmountSumsForMostRecentPeriod:?];
  v28 = v27;
  v26 = v27 >= *MEMORY[0x277D08700];
  v29 = FinHealthLogObject();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v156 = v28;
    _os_log_impl(&dword_24ABED000, v29, OS_LOG_TYPE_DEBUG, "monthlyFillFactor: %f", buf, 0xCu);
  }

  if (v22)
  {
LABEL_21:
    v30 = v150[5];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_130;
    v57[3] = &unk_278FFBFB0;
    v57[4] = self;
    [v30 enumerateKeysAndObjectsUsingBlock:{v57, v46}];
    v31 = v144[5];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_2;
    v56[3] = &unk_278FFBFB0;
    v56[4] = self;
    [v31 enumerateKeysAndObjectsUsingBlock:v56];
    v32 = [v102[5] copy];
    v33 = [(FHInsightsSpendingTrends *)self _orderedTimeStampAndAmountPair:v32];

    firstObject = [v33 firstObject];
    lastObject = [v33 lastObject];
    [(FHInsightsSpendingTrends *)self _computeAndStoreTrend:firstObject indexedAmountSums:lastObject insightFeatureName:@"Overall Spend" insightType:@"FHInsightTypeOverallSpend" trendWindow:1];

    v36 = v138[5];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_3;
    v55[3] = &unk_278FFBFB0;
    v55[4] = self;
    [v36 enumerateKeysAndObjectsUsingBlock:v55];
    v37 = v132[5];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_4;
    v54[3] = &unk_278FFBFB0;
    v54[4] = self;
    [v37 enumerateKeysAndObjectsUsingBlock:v54];
  }

LABEL_22:
  if (v26)
  {
    v38 = v126[5];
    v53[0] = MEMORY[0x277D85DD0];
    v53[1] = 3221225472;
    v53[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_5;
    v53[3] = &unk_278FFBFB0;
    v53[4] = self;
    [v38 enumerateKeysAndObjectsUsingBlock:v53];
    v39 = v120[5];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_6;
    v52[3] = &unk_278FFBFB0;
    v52[4] = self;
    [v39 enumerateKeysAndObjectsUsingBlock:v52];
    v40 = [v96[5] copy];
    v41 = [(FHInsightsSpendingTrends *)self _orderedTimeStampAndAmountPair:v40];

    firstObject2 = [v41 firstObject];
    lastObject2 = [v41 lastObject];
    [(FHInsightsSpendingTrends *)self _computeAndStoreTrend:firstObject2 indexedAmountSums:lastObject2 insightFeatureName:@"Overall Spend" insightType:@"FHInsightTypeOverallSpend" trendWindow:2];

    v44 = v114[5];
    v51[0] = MEMORY[0x277D85DD0];
    v51[1] = 3221225472;
    v51[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_7;
    v51[3] = &unk_278FFBFB0;
    v51[4] = self;
    [v44 enumerateKeysAndObjectsUsingBlock:v51];
    v45 = v108[5];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_8;
    v50[3] = &unk_278FFBFB0;
    v50[4] = self;
    [v45 enumerateKeysAndObjectsUsingBlock:v50];
  }

  objc_destroyWeak(&v59);
  objc_destroyWeak(&location);
  _Block_object_dispose(&v61, 8);
  _Block_object_dispose(&v65, 8);
  _Block_object_dispose(v69, 8);
  _Block_object_dispose(v70, 8);
  _Block_object_dispose(&v71, 8);
  _Block_object_dispose(&v75, 8);
  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v83, 8);
  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v91, 8);
  _Block_object_dispose(&v95, 8);

  _Block_object_dispose(&v101, 8);
  _Block_object_dispose(&v107, 8);

  _Block_object_dispose(&v113, 8);
  _Block_object_dispose(&v119, 8);

  _Block_object_dispose(&v125, 8);
  _Block_object_dispose(&v131, 8);

  _Block_object_dispose(&v137, 8);
  _Block_object_dispose(&v143, 8);

  _Block_object_dispose(&v149, 8);
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke(uint64_t a1, void *a2)
{
  v2 = *MEMORY[0x277D086B8];
  v3 = a2;
  [v3 addIntegerClause:v2 fieldName:@"transactions.t_type" expression:0];
  [v3 addIntegerClause:*MEMORY[0x277D086C0] fieldName:@"transactions.t_status" expression:0];
  [v3 addIntegerClause:*MEMORY[0x277D086C8] fieldName:@"transactions.t_status" expression:1];
  [v3 addIntegerClause:v2 fieldName:@"transactions.a_type" expression:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_122(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v119 = *MEMORY[0x277D85DE8];
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 192));
  if (WeakRetained && (a4 & 1) == 0)
  {
    v8 = [v6 objectAtIndex:1];
    [v8 doubleValue];
    v10 = v9 / 100.0;

    v11 = [v6 objectAtIndex:2];
    [v11 doubleValue];
    v13 = v12;

    v14 = [v6 objectAtIndex:3];
    [v14 integerValue];
    v15 = FHMerchantCategoryToString();

    v16 = [v6 objectAtIndex:4];
    v105 = [v16 stringValue];

    v17 = [v6 objectAtIndex:5];
    v104 = [v17 stringValue];

    v18 = [v6 objectAtIndex:6];
    v19 = [v18 stringValue];

    *(*(*(a1 + 32) + 8) + 24) = fmin(*(*(*(a1 + 32) + 8) + 24), v13);
    *(*(*(a1 + 40) + 8) + 24) = fmax(*(*(*(a1 + 40) + 8) + 24), v13);
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v13];
    v96 = FHDateStartOfWeekOnMonday();
    [v96 timeIntervalSinceReferenceDate];
    v22 = v21;
    v23 = *(*(a1 + 48) + 8);
    v24 = *(v23 + 24);
    if (v22 <= v24)
    {
      if (v22 == v24)
      {
        ++*(*(*(a1 + 56) + 8) + 24);
        *(*(*(a1 + 64) + 8) + 24) = v10 + *(*(*(a1 + 64) + 8) + 24);
      }
    }

    else
    {
      *(v23 + 24) = v22;
      *(*(*(a1 + 56) + 8) + 24) = 1;
      *(*(*(a1 + 64) + 8) + 24) = v10;
    }

    *(*(*(a1 + 72) + 8) + 24) = v10 + *(*(*(a1 + 72) + 8) + 24);
    v108 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v22];
    v25 = [*(*(*(a1 + 80) + 8) + 40) objectForKey:v15];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v28 = v27;

    [v28 setOrAddToDoubleValue:v108 forKey:v10];
    [*(*(*(a1 + 88) + 8) + 40) setOrAddToDoubleValue:v108 forKey:v10];
    v103 = v28;
    [*(*(*(a1 + 80) + 8) + 40) setObject:v28 forKey:v15];
    v29 = FHDateStartOfMonth();
    [v29 timeIntervalSinceReferenceDate];
    v31 = v30;
    v32 = *(*(a1 + 96) + 8);
    v33 = *(v32 + 24);
    v97 = v20;
    v98 = v6;
    v95 = v29;
    if (v31 <= v33)
    {
      if (v31 == v33)
      {
        ++*(*(*(a1 + 104) + 8) + 24);
        *(*(*(a1 + 112) + 8) + 24) = v10 + *(*(*(a1 + 112) + 8) + 24);
      }
    }

    else
    {
      *(v32 + 24) = v31;
      *(*(*(a1 + 104) + 8) + 24) = 1;
      *(*(*(a1 + 112) + 8) + 24) = v10;
    }

    v34 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:v31];
    v35 = [*(*(*(a1 + 120) + 8) + 40) objectForKey:v15];
    v36 = v35;
    if (v35)
    {
      v37 = v35;
    }

    else
    {
      v37 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v38 = v37;

    [v38 setOrAddToDoubleValue:v34 forKey:v10];
    [*(*(*(a1 + 128) + 8) + 40) setOrAddToDoubleValue:v34 forKey:v10];
    [*(*(*(a1 + 120) + 8) + 40) setObject:v38 forKey:v15];
    v39 = [WeakRetained[3] objectForKey:v105];
    v40 = [v39 integerValue];
    v41 = *MEMORY[0x277D086F8];

    if (v40 > v41)
    {
      v42 = [*(*(*(a1 + 136) + 8) + 40) objectForKey:v105];
      v43 = v42;
      v44 = v19;
      if (v42)
      {
        v45 = v42;
      }

      else
      {
        v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v46 = v45;

      [v46 setOrAddToDoubleValue:v108 forKey:v10];
      [*(*(*(a1 + 136) + 8) + 40) setObject:v46 forKey:v105];
      v47 = [*(*(*(a1 + 144) + 8) + 40) objectForKey:v105];
      v48 = v47;
      if (v47)
      {
        v49 = v47;
      }

      else
      {
        v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v50 = v49;

      [v50 setOrAddToDoubleValue:v34 forKey:v10];
      [*(*(*(a1 + 144) + 8) + 40) setObject:v50 forKey:v105];

      v19 = v44;
    }

    v51 = v103;
    v52 = v104;
    v100 = v15;
    v101 = WeakRetained;
    v99 = v19;
    v102 = v38;
    if (v104)
    {
      v94 = [v104 componentsSeparatedByString:*MEMORY[0x277D08790]];
      v53 = [MEMORY[0x277D08888] reconstructAggregateFeaturesWithProcessingWindow:?];
      v54 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF.%K == %@ OR SELF.%K == %@", *MEMORY[0x277D086B0], *MEMORY[0x277D08780], *MEMORY[0x277D086B0], *MEMORY[0x277D08778]];
      v93 = v53;
      v55 = [v53 filteredArrayUsingPredicate:v54];

      if ([v55 count])
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v92 = v55;
        obj = v55;
        v56 = [obj countByEnumeratingWithState:&v113 objects:v118 count:16];
        if (v56)
        {
          v57 = v56;
          v58 = *v114;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v114 != v58)
              {
                objc_enumerationMutation(obj);
              }

              v60 = *(*(&v113 + 1) + 8 * i);
              v61 = *(*(*(a1 + 152) + 8) + 40);
              v62 = [v60 name];
              v63 = [v61 objectForKey:v62];
              v64 = v63;
              if (v63)
              {
                v65 = v63;
              }

              else
              {
                v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v66 = v65;

              [v66 setOrAddToDoubleValue:v108 forKey:v10];
              v67 = *(*(*(a1 + 152) + 8) + 40);
              v68 = [v60 name];
              [v67 setObject:v66 forKey:v68];

              v69 = *(*(*(a1 + 160) + 8) + 40);
              v70 = [v60 name];
              v71 = [v69 objectForKey:v70];
              v72 = v71;
              if (v71)
              {
                v73 = v71;
              }

              else
              {
                v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v74 = v73;

              [v74 setOrAddToDoubleValue:v34 forKey:v10];
              v75 = *(*(*(a1 + 160) + 8) + 40);
              v76 = [v60 name];
              [v75 setObject:v74 forKey:v76];
            }

            v57 = [obj countByEnumeratingWithState:&v113 objects:v118 count:16];
          }

          while (v57);
        }

        v15 = v100;
        WeakRetained = v101;
        v51 = v103;
        v52 = v104;
        v19 = v99;
        v38 = v102;
        v55 = v92;
      }
    }

    if (v19)
    {
      obja = [MEMORY[0x277D08888] reconstructCompoundFeatures:v19];
      v77 = [obja objectForKey:*MEMORY[0x277D08788]];
      v78 = v77;
      if (v77)
      {
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v79 = [v77 countByEnumeratingWithState:&v109 objects:v117 count:16];
        if (v79)
        {
          v80 = v79;
          v81 = *v110;
          do
          {
            for (j = 0; j != v80; ++j)
            {
              if (*v110 != v81)
              {
                objc_enumerationMutation(v78);
              }

              v83 = [*(*(&v109 + 1) + 8 * j) featureLabel];
              v84 = [*(*(*(a1 + 168) + 8) + 40) objectForKey:v83];
              v85 = v84;
              if (v84)
              {
                v86 = v84;
              }

              else
              {
                v86 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v87 = v86;

              [v87 setOrAddToDoubleValue:v108 forKey:v10];
              [*(*(*(a1 + 168) + 8) + 40) setObject:v87 forKey:v83];
              v88 = [*(*(*(a1 + 176) + 8) + 40) objectForKey:v83];
              v89 = v88;
              if (v88)
              {
                v90 = v88;
              }

              else
              {
                v90 = objc_alloc_init(MEMORY[0x277CBEB38]);
              }

              v91 = v90;

              [v91 setOrAddToDoubleValue:v34 forKey:v10];
              [*(*(*(a1 + 176) + 8) + 40) setObject:v91 forKey:v83];
            }

            v80 = [v78 countByEnumeratingWithState:&v109 objects:v117 count:16];
          }

          while (v80);
        }
      }

      v15 = v100;
      WeakRetained = v101;
      v51 = v103;
      v52 = v104;
      v19 = v99;
      v38 = v102;
    }

    ++*(*(*(a1 + 184) + 8) + 24);

    v6 = v98;
  }
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_130(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCategorySpend" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeMerchantSpend" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeAggregateTag" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCompoundTag" trendWindow:1];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCategorySpend" trendWindow:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeMerchantSpend" trendWindow:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeAggregateTag" trendWindow:2];
}

void __61__FHInsightsSpendingTrends__computeCategoryAndMerchantTrends__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 copy];
  v11 = [v5 _orderedTimeStampAndAmountPair:v7];

  v8 = *(a1 + 32);
  v9 = [v11 firstObject];
  v10 = [v11 lastObject];
  [v8 _computeAndStoreTrend:v9 indexedAmountSums:v10 insightFeatureName:v6 insightType:@"FHInsightTypeCompoundTag" trendWindow:2];
}

- (double)_fillFactorWithStartOfPeriodForMostRecentEntryDate:(id)date mostRecentEntryDate:(id)entryDate endOfPeriodForMostRecentEntryDate:(id)recentEntryDate numberOfDaysSinceFirstTransaction:(unint64_t)transaction transactionCount:(unint64_t)count transactionCountForMostRecentPeriod:(unint64_t)period transactionAmountSums:(double)sums transactionAmountSumsForMostRecentPeriod:(double)self0
{
  v25 = *MEMORY[0x277D85DE8];
  recentEntryDateCopy = recentEntryDate;
  dateCopy = date;
  v18 = FHNumberOfDaysBetweenDates();
  v19 = FHNumberOfDaysBetweenDates();

  v20 = (recentPeriod / v18 / ((sums - recentPeriod) / (transaction - v18)) + v18 / v19 + period / v18 / ((count - period) / (transaction - v18))) / 3.0;
  v21 = FinHealthLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v23 = 134217984;
    v24 = v20;
    _os_log_impl(&dword_24ABED000, v21, OS_LOG_TYPE_DEBUG, "fillFactorForPeriod: %f", &v23, 0xCu);
  }

  return v20;
}

- (id)_orderedTimeStampAndAmountPair:(id)pair
{
  v25 = *MEMORY[0x277D85DE8];
  pairCopy = pair;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (pairCopy && [pairCopy count])
  {
    allKeys = [pairCopy allKeys];
    v7 = [allKeys sortedArrayUsingComparator:&__block_literal_global_135];

    if (v7 && [v7 count])
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v20 + 1) + 8 * i);
            [v4 addObject:v13];
            v14 = [pairCopy objectForKey:v13];
            [v5 addObject:v14];
          }

          v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);
      }
    }
  }

  v15 = MEMORY[0x277CBEA60];
  v16 = [v4 copy];
  v17 = [v5 copy];
  v18 = [v15 arrayWithObjects:{v16, v17, 0}];

  return v18;
}

- (void)_computeAndStoreTrend:(id)trend indexedAmountSums:(id)sums insightFeatureName:(id)name insightType:(id)type trendWindow:(int64_t)window
{
  v58 = *MEMORY[0x277D85DE8];
  trendCopy = trend;
  sumsCopy = sums;
  nameCopy = name;
  windowCopy = window;
  typeCopy = type;
  v12 = 48;
  if (window == 1)
  {
    v12 = 40;
  }

  selfCopy = self;
  v13 = *(&self->super.isa + v12);
  v14 = FinHealthLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v55 = v13;
    _os_log_impl(&dword_24ABED000, v14, OS_LOG_TYPE_DEBUG, "threshold: %f", buf, 0xCu);
  }

  v15 = MEMORY[0x277D08718];
  if (window != 1)
  {
    v15 = MEMORY[0x277D08708];
  }

  v16 = *v15;
  v17 = [sumsCopy count];
  v18 = v17 - v16;
  if (v17 >= v16)
  {
    v19 = v17;
    v20 = 0x277CCA000uLL;
    v39 = v16;
    do
    {
      v21 = [sumsCopy subarrayWithRange:{v18, v16}];
      v22 = [trendCopy objectAtIndex:--v19];
      [v22 doubleValue];
      v24 = v23;

      v25 = [MEMORY[0x277D08890] kendallCoefficientWithIndexedAmountSums:v21];
      v26 = [objc_alloc(*(v20 + 2432)) initWithDouble:v13];
      v27 = [v25 greaterThanOrEqual:v26];

      if (v27)
      {
        v28 = 1;
      }

      else
      {
        v29 = [objc_alloc(*(v20 + 2432)) initWithDouble:-v13];
        v30 = [v25 lessThanOrEqual:v29];

        if ((v30 & 1) == 0)
        {
          v31 = FinHealthLogObject();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v55 = *&nameCopy;
            v56 = 2112;
            v57 = typeCopy;
            _os_log_impl(&dword_24ABED000, v31, OS_LOG_TYPE_DEBUG, "No trend detected for %@: %@", buf, 0x16u);
          }

          goto LABEL_15;
        }

        v28 = 2;
      }

      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:{v21, 0}];
      v32 = [MEMORY[0x277CCA9C0] expressionWithFormat:@"average(%@)" argumentArray:v31];
      v33 = [v32 expressionValueWithObject:0 context:0];
      lastObject = [v21 lastObject];
      v35 = MEMORY[0x277D087F0];
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __111__FHInsightsSpendingTrends__computeAndStoreTrend_indexedAmountSums_insightFeatureName_insightType_trendWindow___block_invoke;
      v46[3] = &unk_278FFBFF8;
      v51 = v24;
      v52 = v28;
      v47 = nameCopy;
      v48 = typeCopy;
      v49 = v33;
      v53 = windowCopy;
      v50 = lastObject;
      v36 = lastObject;
      v37 = v33;
      v38 = [v35 initWithBuilder:v46];
      [(FHDatabaseEntity *)selfCopy->_insightsDestinationEntity insertOrUpdate:v38 upsert:0];

      v16 = v39;
      v20 = 0x277CCA000;
LABEL_15:

      --v18;
    }

    while (v19 >= v16);
  }
}

void __111__FHInsightsSpendingTrends__computeAndStoreTrend_indexedAmountSums_insightFeatureName_insightType_trendWindow___block_invoke(double *a1, void *a2)
{
  v3 = a1[8];
  v4 = a2;
  [v4 addDoubleValueForField:@"features_insight_trends.trend_date" fieldValue:v3];
  [v4 addIntegerValueForField:@"features_insight_trends.trend_direction" fieldValue:*(a1 + 9)];
  [v4 addStringValueForField:@"features_insight_trends.trend_feature_name" fieldValue:*(a1 + 4)];
  [v4 addStringValueForField:@"features_insight_trends.trend_feature_type" fieldValue:*(a1 + 5)];
  [v4 addIntegerValueForField:@"features_insight_trends.trend_window" fieldValue:*(a1 + 10)];
  [v4 addNumberValueForField:@"features_insight_trends.trend_average" fieldValue:*(a1 + 6)];
  [v4 addDecimalNumberValueForField:@"features_insight_trends.trend_spend" fieldValue:*(a1 + 7)];
  v5 = @"Downward";
  if (*(a1 + 9) == 1)
  {
    v5 = @"Upward";
  }

  v6 = @"monthly";
  if (*(a1 + 10) == 1)
  {
    v6 = @"weekly";
  }

  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@ trend for feature %@, type %@", v5, v6, *(a1 + 4), *(a1 + 5)];
  [v4 addStringValueForField:@"features_insight_trends.trend_readable_description" fieldValue:v7];
}

- (id)_kendallCoefficientWithIndexedAmountSums:(id)sums
{
  sumsCopy = sums;
  v4 = sumsCopy;
  if (!sumsCopy || [sumsCopy count] < 2)
  {
    goto LABEL_14;
  }

  if ([v4 count] == 1)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v5 = 0;
    do
    {
      for (i = v7; i < [v4 count]; ++i)
      {
        v9 = [v4 objectAtIndex:v7];
        v10 = [v4 objectAtIndex:i];
        v11 = [v9 lessThan:v10];

        if (v11)
        {
          ++v5;
        }

        else
        {
          v12 = [v4 objectAtIndex:v7];
          v13 = [v4 objectAtIndex:i];
          v14 = [v12 greaterThan:v13];

          v6 += v14;
        }
      }

      ++v7;
    }

    while (v7 < [v4 count] - 1);
  }

  if (v6 + v5)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA980]) initWithDouble:(v5 - v6) / (v6 + v5)];
  }

  else
  {
LABEL_14:
    v15 = 0;
  }

  return v15;
}

+ (id)_defaultQueue
{
  if (_defaultQueue_onceToken != -1)
  {
    +[FHInsightsSpendingTrends _defaultQueue];
  }

  v3 = _defaultQueue_defaultQueue;

  return v3;
}

uint64_t __41__FHInsightsSpendingTrends__defaultQueue__block_invoke()
{
  _defaultQueue_defaultQueue = dispatch_queue_create("com.apple.finhealth.insights", 0);

  return MEMORY[0x2821F96F8]();
}

@end