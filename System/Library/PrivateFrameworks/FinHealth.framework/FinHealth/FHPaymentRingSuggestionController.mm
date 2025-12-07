@interface FHPaymentRingSuggestionController
- (BOOL)_allMandatoryValuesAreSameAmount:(id)amount;
- (BOOL)_fhEqualObjects:(id)objects obj2:(id)obj2;
- (FHPaymentRingSuggestionController)init;
- (id)_calculateThresholdForLastPaymentCategory:(unint64_t)category statementBalance:(id)balance lastPaymentCategoryAmount:(id)amount previousStatementPaymentsSum:(id)sum statementPurchasesSum:(id)purchasesSum;
- (id)_filterSuggestions:(id)suggestions belowThreshold:(id)threshold;
- (id)_suggestedAmountsForPayOffDateForStatementBalance:(id)balance statementPurchasesSum:(id)sum creditUtilization:(id)utilization lastPaymentCategory:(unint64_t)category;
- (id)_zerothOrFirstMonthPaymentRingSuggestionsForList:(id)list;
- (id)generatePaymentRingSuggestion:(id)suggestion;
- (id)generatePaymentRingSuggestionsFromConvertedObjects:(id)objects previousStatementPaymentsSum:(id)sum currentStatementPaymentsSum:(id)paymentsSum statementPurchasesSum:(id)purchasesSum merchantCategoryTransactionSums:(id)sums billPaymentSelectedSuggestedAmountData:(id)data isMonthZero:(BOOL)zero isMonthOne:(BOOL)self0;
- (void)_minimumMerchcantCategoriesAboveMinimumAmount:(id)amount minMerchantCategory1:(int64_t *)category1 minMerchantCategory2:(int64_t *)category2 minMerchantCategorySum1:(id *)sum1 minMerchantCategorySum2:(id *)sum2 merchantCategoryTransactionSums:(id)sums;
- (void)recordPaymentRingAction:(id)action;
@end

@implementation FHPaymentRingSuggestionController

- (FHPaymentRingSuggestionController)init
{
  v6.receiver = self;
  v6.super_class = FHPaymentRingSuggestionController;
  v2 = [(FHPaymentRingSuggestionController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(FHSearchSuggestionController);
    searchController = v2->_searchController;
    v2->_searchController = v3;
  }

  return v2;
}

- (id)generatePaymentRingSuggestionsFromConvertedObjects:(id)objects previousStatementPaymentsSum:(id)sum currentStatementPaymentsSum:(id)paymentsSum statementPurchasesSum:(id)purchasesSum merchantCategoryTransactionSums:(id)sums billPaymentSelectedSuggestedAmountData:(id)data isMonthZero:(BOOL)zero isMonthOne:(BOOL)self0
{
  v21 = *MEMORY[0x277D85DE8];
  v11 = RequestFromPKAccountSummary(objects, sum, paymentsSum, purchasesSum, sums, data, zero, one);
  v12 = [(FHPaymentRingSuggestionController *)self generatePaymentRingSuggestion:v11];
  v13 = ResponseToPKBillPaymentSuggestion(v12);
  v14 = FinHealthLogObject();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v13 description];
    v17 = 136315394;
    v18 = "[FHPaymentRingSuggestionController generatePaymentRingSuggestionsFromConvertedObjects:previousStatementPaymentsSum:currentStatementPaymentsSum:statementPurchasesSum:merchantCategoryTransactionSums:billPaymentSelectedSuggestedAmountData:isMonthZero:isMonthOne:]";
    v19 = 2112;
    v20 = v15;
    _os_log_impl(&dword_24ABD8000, v14, OS_LOG_TYPE_DEBUG, "%s FinHealth final suggestions: %@", &v17, 0x16u);
  }

  return v13;
}

- (id)generatePaymentRingSuggestion:(id)suggestion
{
  v223 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  currentStatement = [suggestionCopy currentStatement];
  remainingMinimumPayment = [currentStatement remainingMinimumPayment];

  currentStatement2 = [suggestionCopy currentStatement];
  remainingStatementBalance = [currentStatement2 remainingStatementBalance];

  currentStatement3 = [suggestionCopy currentStatement];
  currentBalance = [currentStatement3 currentBalance];

  currentStatement4 = [suggestionCopy currentStatement];
  statementBalance = [currentStatement4 statementBalance];

  currentStatement5 = [suggestionCopy currentStatement];
  creditLimit = [currentStatement5 creditLimit];

  currentStatement6 = [suggestionCopy currentStatement];
  openingDate = [currentStatement6 openingDate];

  currentStatement7 = [suggestionCopy currentStatement];
  closingDate = [currentStatement7 closingDate];

  currentStatement8 = [suggestionCopy currentStatement];
  isMonthZero = [currentStatement8 isMonthZero];

  currentStatement9 = [suggestionCopy currentStatement];
  isMonthOne = [currentStatement9 isMonthOne];

  currentStatement10 = [suggestionCopy currentStatement];
  isMonthOfMerge = [currentStatement10 isMonthOfMerge];

  paymentDetails = [suggestionCopy paymentDetails];
  previousSelectedSuggestion = self->_previousSelectedSuggestion;
  self->_previousSelectedSuggestion = paymentDetails;

  v201 = 0;
  v202 = &v201;
  v203 = 0x3032000000;
  v204 = __Block_byref_object_copy_;
  v205 = __Block_byref_object_dispose_;
  v206 = objc_opt_new();
  if (remainingStatementBalance)
  {
    zero = [MEMORY[0x277CCA980] zero];
    v19 = [remainingStatementBalance compare:zero] == 1;
  }

  else
  {
    v19 = 0;
  }

  v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
  zero2 = [MEMORY[0x277CCA980] zero];
  if (statementBalance)
  {
    if (creditLimit)
    {
      zero3 = [MEMORY[0x277CCA980] zero];
      v22 = [creditLimit isEqualToNumber:zero3];

      if ((v22 & 1) == 0)
      {
        v23 = [statementBalance decimalNumberByDividingBy:creditLimit];

        zero2 = v23;
      }
    }
  }

  if (isMonthOfMerge)
  {
    currentStatement11 = [suggestionCopy currentStatement];
    combinedBalance = [currentStatement11 combinedBalance];
    v26 = combinedBalance == 0;

    if (!v26)
    {
      v27 = objc_alloc(MEMORY[0x277D08818]);
      currentStatement12 = [suggestionCopy currentStatement];
      combinedBalance2 = [currentStatement12 combinedBalance];
      v30 = [v27 initWithAmount:combinedBalance2 category:31];

      [v20 addObject:v30];
      goto LABEL_18;
    }
  }

  if (((isMonthZero | isMonthOne) & 1) != 0 || ([suggestionCopy previousStatementPaymentsSum], (v31 = objc_claimAutoreleasedReturnValue()) == 0) || (objc_msgSend(suggestionCopy, "previousStatementPaymentsSum"), v32 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CCA980], "zero"), v33 = objc_claimAutoreleasedReturnValue(), v34 = -[FHPaymentRingSuggestionController _fhEqualObjects:obj2:](self, "_fhEqualObjects:obj2:", v32, v33), v33, v32, v31, v34))
  {
    v35 = FinHealthLogObject();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      v36 = [suggestionCopy description];
      *buf = 136315394;
      *&buf[4] = "[FHPaymentRingSuggestionController generatePaymentRingSuggestion:]";
      *&buf[12] = 2112;
      *&buf[14] = v36;
      _os_log_impl(&dword_24ABD8000, v35, OS_LOG_TYPE_DEBUG, "%s Request %@", buf, 0x16u);
    }

    v37 = [(FHPaymentRingSuggestionController *)self _zerothOrFirstMonthPaymentRingSuggestionsForList:suggestionCopy];
    [v20 addObjectsFromArray:v37];

    goto LABEL_17;
  }

  if ([(FHPaymentRingSuggestionController *)self _allMandatoryValuesAreSameAmount:suggestionCopy])
  {
LABEL_17:
    v30 = 0;
    goto LABEL_18;
  }

  v197 = 0;
  v198 = &v197;
  v199 = 0x2020000000;
  v200 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v220 = __Block_byref_object_copy_;
  v221 = __Block_byref_object_dispose_;
  v222 = 0;
  if (v19)
  {
    v40 = self->_previousSelectedSuggestion;
    v192[0] = MEMORY[0x277D85DD0];
    v192[1] = 3221225472;
    v192[2] = __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke;
    v192[3] = &unk_278FFB4F8;
    v195 = &v197;
    v192[4] = self;
    v193 = suggestionCopy;
    v194 = remainingStatementBalance;
    v196 = buf;
    [(NSArray *)v40 enumerateObjectsUsingBlock:v192];

    v41 = v198[3] == 13;
  }

  else
  {
    v41 = 0;
    v200 = 18;
  }

  self->_isOnPlanCompletion = v41;
  previousStatementPaymentsSum = [suggestionCopy previousStatementPaymentsSum];
  v43 = 0x277CCA000;
  if (previousStatementPaymentsSum)
  {
    isOnPaymentPlan = self->_isOnPaymentPlan;

    if (isOnPaymentPlan)
    {
      v45 = 0;
      v43 = 0x277CCA000;
    }

    else
    {
      v46 = objc_alloc(MEMORY[0x277D08818]);
      previousStatementPaymentsSum2 = [suggestionCopy previousStatementPaymentsSum];
      v45 = [v46 initWithAmount:previousStatementPaymentsSum2 category:2];

      [v20 addObject:v45];
      v43 = 0x277CCA000uLL;
    }
  }

  else
  {
    v45 = 0;
  }

  statementPurchasesSum = [suggestionCopy statementPurchasesSum];
  if (statementPurchasesSum && ([suggestionCopy statementPurchasesSum], v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(v43 + 2432), "zero"), v50 = objc_claimAutoreleasedReturnValue(), v51 = -[FHPaymentRingSuggestionController _fhEqualObjects:obj2:](self, "_fhEqualObjects:obj2:", v49, v50), v50, v49, statementPurchasesSum, !v51))
  {
    statementPurchasesSum2 = [suggestionCopy statementPurchasesSum];
    v52 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:statementPurchasesSum2 category:5];

    [v20 addObject:v52];
  }

  else
  {
    v52 = v45;
  }

  v190 = 0;
  v191 = 0;
  zero4 = [*(v43 + 2432) zero];
  if ([remainingMinimumPayment compare:zero4] != 1)
  {

LABEL_40:
    zero5 = [MEMORY[0x277CCA980] zero];
    if ([remainingStatementBalance compare:zero5] == 1)
    {
      v59 = [remainingStatementBalance compare:currentBalance] == -1;

      v57 = remainingStatementBalance;
      if (v59)
      {
        goto LABEL_45;
      }
    }

    else
    {
    }

    v57 = currentBalance;
    goto LABEL_45;
  }

  v55 = [remainingMinimumPayment compare:remainingStatementBalance] == -1;

  if (!v55)
  {
    goto LABEL_40;
  }

  v56 = [remainingMinimumPayment compare:currentBalance];
  v57 = remainingMinimumPayment;
  if (v56 != -1)
  {
    v57 = currentBalance;
  }

LABEL_45:
  v152 = v57;
  v60 = FinHealthLogObject();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
  {
    *v211 = 134218754;
    v212 = v191;
    v213 = 2048;
    v214 = v190;
    v215 = 2112;
    v216 = 0;
    v217 = 2112;
    v218 = 0;
    _os_log_impl(&dword_24ABD8000, v60, OS_LOG_TYPE_DEBUG, "Printing _merchantCategoryTransactionSums %lu, %lu, %@, %@", v211, 0x2Au);
  }

  v188 = 0;
  v189 = 0;
  merchantCategoryTransactionSums = [suggestionCopy merchantCategoryTransactionSums];
  [(FHPaymentRingSuggestionController *)self _minimumMerchcantCategoriesAboveMinimumAmount:v152 minMerchantCategory1:&v191 minMerchantCategory2:&v190 minMerchantCategorySum1:&v189 minMerchantCategorySum2:&v188 merchantCategoryTransactionSums:merchantCategoryTransactionSums];
  v155 = v189;
  v154 = v188;

  previousStatementPaymentsSum3 = [suggestionCopy previousStatementPaymentsSum];

  if (previousStatementPaymentsSum3)
  {
    if (v155)
    {
      previousStatementPaymentsSum4 = [suggestionCopy previousStatementPaymentsSum];
      v64 = [v155 decimalNumberByAdding:previousStatementPaymentsSum4];

      statementPurchasesSum3 = [suggestionCopy statementPurchasesSum];
      v66 = [v64 compare:statementPurchasesSum3] == -1;

      if (v66)
      {
        v67 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v64 category:3];

        [v67 setMerchantCategory:v191];
        [v20 addObject:v67];
      }

      else
      {
        v67 = v52;
      }
    }

    else
    {
      v67 = v52;
    }

    if (v154)
    {
      previousStatementPaymentsSum5 = [suggestionCopy previousStatementPaymentsSum];
      v69 = [v154 decimalNumberByAdding:previousStatementPaymentsSum5];

      statementPurchasesSum4 = [suggestionCopy statementPurchasesSum];
      v71 = [v69 compare:statementPurchasesSum4] == -1;

      if (v71)
      {
        v52 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v69 category:4];

        [v52 setMerchantCategory:v190];
        [v20 addObject:v52];
      }

      else
      {
        v52 = v67;
      }
    }

    else
    {
      v52 = v67;
    }
  }

  if (statementBalance)
  {
    statementPurchasesSum5 = [suggestionCopy statementPurchasesSum];
    v73 = !statementPurchasesSum5 || zero2 == 0;
    v74 = !v73;

    if (v74)
    {
      statementPurchasesSum6 = [suggestionCopy statementPurchasesSum];
      v76 = [(FHPaymentRingSuggestionController *)self _suggestedAmountsForPayOffDateForStatementBalance:statementBalance statementPurchasesSum:statementPurchasesSum6 creditUtilization:zero2 lastPaymentCategory:v198[3]];

      [v20 addObject:v76];
      v52 = v76;
    }
  }

  v77 = dispatch_semaphore_create(0);
  searchController = self->_searchController;
  v185[0] = MEMORY[0x277D85DD0];
  v185[1] = 3221225472;
  v185[2] = __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke_89;
  v185[3] = &unk_278FFB520;
  v187 = &v201;
  v79 = v77;
  v186 = v79;
  [(FHSearchSuggestionController *)searchController paymentRingSuggestionsFromSearchFeatures:@"Payment Ring" startDate:openingDate endDate:closingDate completion:v185];
  v80 = dispatch_time(0, 1000000000);
  dispatch_semaphore_wait(v79, v80);
  v183 = 0u;
  v184 = 0u;
  v181 = 0u;
  v182 = 0u;
  v81 = v202[5];
  v82 = [v81 countByEnumeratingWithState:&v181 objects:v210 count:16];
  v151 = v79;
  if (v82)
  {
    v83 = *v182;
    do
    {
      for (i = 0; i != v82; ++i)
      {
        if (*v182 != v83)
        {
          objc_enumerationMutation(v81);
        }

        v85 = *(*(&v181 + 1) + 8 * i);
        featureRank = [v85 featureRank];
        featureLabel = [v85 featureLabel];
        v88 = FHPaymentRingSuggestionCategoryFromString();

        if (v88 != 32)
        {
          v89 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:featureRank category:v88];

          [v20 addObject:v89];
          v52 = v89;
        }
      }

      v82 = [v81 countByEnumeratingWithState:&v181 objects:v210 count:16];
    }

    while (v82);
  }

  if (self->_isOnPaymentPlan)
  {
    paymentAmountCategory = [*(*&buf[8] + 40) paymentAmountCategory];
    v91 = 0x277CCA000;
    v92 = paymentAmountCategory;
  }

  else
  {
    v92 = v198[3];
    v91 = 0x277CCA000uLL;
  }

  zero6 = [*(v91 + 2432) zero];
  v179 = 0u;
  v180 = 0u;
  v177 = 0u;
  v178 = 0u;
  paymentDetails2 = [suggestionCopy paymentDetails];
  v94 = [paymentDetails2 countByEnumeratingWithState:&v177 objects:v209 count:16];
  if (v94)
  {
    v95 = *v178;
    while (2)
    {
      for (j = 0; j != v94; ++j)
      {
        if (*v178 != v95)
        {
          objc_enumerationMutation(paymentDetails2);
        }

        v97 = *(*(&v177 + 1) + 8 * j);
        paymentAmountCategory2 = [v97 paymentAmountCategory];
        if (paymentAmountCategory2 == v198[3])
        {
          transactionAmount = [v97 transactionAmount];

          zero6 = transactionAmount;
          goto LABEL_91;
        }
      }

      v94 = [paymentDetails2 countByEnumeratingWithState:&v177 objects:v209 count:16];
      if (v94)
      {
        continue;
      }

      break;
    }
  }

LABEL_91:

  previousStatementPaymentsSum6 = [suggestionCopy previousStatementPaymentsSum];
  statementPurchasesSum7 = [suggestionCopy statementPurchasesSum];
  v156 = [(FHPaymentRingSuggestionController *)self _calculateThresholdForLastPaymentCategory:v92 statementBalance:statementBalance lastPaymentCategoryAmount:zero6 previousStatementPaymentsSum:previousStatementPaymentsSum6 statementPurchasesSum:statementPurchasesSum7];

  v102 = FinHealthLogObject();
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
  {
    *v211 = 138412290;
    v212 = v156;
    _os_log_impl(&dword_24ABD8000, v102, OS_LOG_TYPE_DEBUG, "Calculated Threshold value : %@", v211, 0xCu);
  }

  v103 = [(FHPaymentRingSuggestionController *)self _filterSuggestions:v20 belowThreshold:v156];

  v104 = FinHealthLogObject();
  if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
  {
    previousStatementPaymentsSum6 = [v103 description];
    *v211 = 138412290;
    v212 = previousStatementPaymentsSum6;
    _os_log_impl(&dword_24ABD8000, v104, OS_LOG_TYPE_DEBUG, "FinHealth Suggestions after threshold value : %@", v211, 0xCu);
  }

  if (!statementBalance)
  {
    goto LABEL_108;
  }

  statementPurchasesSum8 = [suggestionCopy statementPurchasesSum];
  if (statementPurchasesSum8)
  {
    statementPurchasesSum9 = [suggestionCopy statementPurchasesSum];
    v107 = [statementBalance compare:statementPurchasesSum9];
    if (!v107 || ([suggestionCopy statementPurchasesSum], previousStatementPaymentsSum6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(statementBalance, "compare:", previousStatementPaymentsSum6) == -1))
    {
      v108 = [creditLimit compare:statementBalance] == 1;
      if (v107)
      {

        if (!v108)
        {
          goto LABEL_106;
        }
      }

      else
      {

        if (!v108)
        {
          goto LABEL_106;
        }
      }

      v109 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
      v110 = [statementBalance decimalNumberByDividingBy:v109];
      v111 = [statementBalance decimalNumberBySubtracting:v110];
      v112 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
      v113 = [statementBalance decimalNumberByDividingBy:v112];
      v114 = [creditLimit decimalNumberBySubtracting:v113];
      v115 = [v111 decimalNumberByDividingBy:v114];

      v116 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.33"];
      v117 = [v115 compare:v116] == -1;

      if (v117)
      {
        v150 = objc_alloc(MEMORY[0x277D08818]);
        v121 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v122 = [statementBalance decimalNumberByDividingBy:v121];
        v123 = [statementBalance decimalNumberBySubtracting:v122];
        v164 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
        v153 = [v123 decimalNumberByDividingBy:v164];
        v124 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v125 = [statementBalance decimalNumberByDividingBy:v124];
        v126 = [v153 decimalNumberByAdding:v125];
        v127 = [v150 initWithAmount:v126 category:23];
      }

      else
      {
        v118 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
        v119 = [v115 compare:v118] == -1;

        v120 = objc_alloc(MEMORY[0x277D08818]);
        v121 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v122 = [statementBalance decimalNumberByDividingBy:v121];
        v123 = [statementBalance decimalNumberBySubtracting:v122];
        if (v119)
        {
          v164 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
          v153 = [v123 decimalNumberByDividingBy:v164];
          v124 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
          v125 = [statementBalance decimalNumberByDividingBy:v124];
          v126 = [v153 decimalNumberByAdding:v125];
          v127 = [v120 initWithAmount:v126 category:24];
        }

        else
        {
          v164 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
          v153 = [v123 decimalNumberByDividingBy:v164];
          v124 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
          v125 = [statementBalance decimalNumberByDividingBy:v124];
          v126 = [v153 decimalNumberByAdding:v125];
          v127 = [v120 initWithAmount:v126 category:25];
        }
      }

      v30 = v127;

      [v103 addObject:v30];
      goto LABEL_109;
    }
  }

LABEL_106:
  if (remainingMinimumPayment && ![(FHPaymentRingSuggestionController *)self _categoryIsPaymentPlan:v198[3]])
  {
    v146 = objc_alloc(MEMORY[0x277D08818]);
    v147 = [statementBalance decimalNumberByAdding:remainingMinimumPayment];
    v148 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
    v149 = [v147 decimalNumberByDividingBy:v148];
    v30 = [v146 initWithAmount:v149 category:29];

    [v103 addObject:v30];
    goto LABEL_109;
  }

LABEL_108:
  v30 = v52;
LABEL_109:
  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v128 = v202[5];
  v129 = [v128 countByEnumeratingWithState:&v173 objects:v208 count:16];
  if (v129)
  {
    v130 = *v174;
    do
    {
      for (k = 0; k != v129; ++k)
      {
        if (*v174 != v130)
        {
          objc_enumerationMutation(v128);
        }

        v132 = *(*(&v173 + 1) + 8 * k);
        featureRank2 = [v132 featureRank];
        featureLabel2 = [v132 featureLabel];
        v135 = FHPaymentRingSuggestionCategoryFromString();

        if (v135 == 32)
        {
          v136 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:featureRank2 category:32];

          [v103 addObject:v136];
          v30 = v136;
        }
      }

      v129 = [v128 countByEnumeratingWithState:&v173 objects:v208 count:16];
    }

    while (v129);
  }

  currentStatementPaymentsSum = [suggestionCopy currentStatementPaymentsSum];

  if (currentStatementPaymentsSum)
  {
    v171 = 0u;
    v172 = 0u;
    v169 = 0u;
    v170 = 0u;
    v138 = v103;
    v139 = [v138 countByEnumeratingWithState:&v169 objects:v207 count:16];
    if (v139)
    {
      v140 = *v170;
      do
      {
        for (m = 0; m != v139; ++m)
        {
          if (*v170 != v140)
          {
            objc_enumerationMutation(v138);
          }

          v142 = *(*(&v169 + 1) + 8 * m);
          amount = [v142 amount];
          currentStatementPaymentsSum2 = [suggestionCopy currentStatementPaymentsSum];
          v145 = [amount decimalNumberBySubtracting:currentStatementPaymentsSum2];

          [v142 setAmount:v145];
        }

        v139 = [v138 countByEnumeratingWithState:&v169 objects:v207 count:16];
      }

      while (v139);
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v197, 8);
  v20 = v103;
LABEL_18:
  v38 = v20;

  _Block_object_dispose(&v201, 8);

  return v38;
}

void __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  *(*(*(a1 + 56) + 8) + 24) = [v9 paymentAmountCategory];
  if ([*(a1 + 32) _categoryIsPaymentPlan:{objc_msgSend(v9, "paymentAmountCategory")}])
  {
    v7 = [*(a1 + 40) previousStatementPaymentsSum];
    v8 = [v7 compare:*(a1 + 48)];

    if (v8 == -1)
    {
      *(*(a1 + 32) + 9) = 1;
      objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
      *a4 = 1;
    }
  }
}

void __67__FHPaymentRingSuggestionController_generatePaymentRingSuggestion___block_invoke_89(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11 = a1;
  [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v3];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = FinHealthLogObject();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315394;
          v17 = "[FHPaymentRingSuggestionController generatePaymentRingSuggestion:]_block_invoke";
          v18 = 2112;
          v19 = v9;
          _os_log_impl(&dword_24ABD8000, v10, OS_LOG_TYPE_DEBUG, "[%s] FinHealth suggestion: %@", buf, 0x16u);
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v20 count:16];
    }

    while (v6);
  }

  dispatch_semaphore_signal(*(v11 + 32));
}

- (void)recordPaymentRingAction:(id)action
{
  v4 = MEMORY[0x277CBEB38];
  actionCopy = action;
  v14 = objc_alloc_init(v4);
  v6 = [actionCopy objectForKey:*MEMORY[0x277D08770]];
  intValue = [v6 intValue];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:intValue + 200];
  [v14 setObject:v8 forKey:*MEMORY[0x277D08740]];

  v9 = [actionCopy objectForKey:*MEMORY[0x277D08760]];
  [v14 setObject:v9 forKey:*MEMORY[0x277D08748]];

  [v14 setObject:&unk_285E21B98 forKey:*MEMORY[0x277D08738]];
  v10 = [actionCopy objectForKey:*MEMORY[0x277D08758]];
  [v14 setObject:v10 forKey:*MEMORY[0x277D08720]];

  v11 = [actionCopy objectForKey:*MEMORY[0x277D08768]];

  [v14 setObject:v11 forKey:*MEMORY[0x277D08730]];
  searchController = self->_searchController;
  v13 = [v14 copy];
  [(FHSearchSuggestionController *)searchController recordUserInteraction:v13];
}

- (id)_zerothOrFirstMonthPaymentRingSuggestionsForList:(id)list
{
  v129 = *MEMORY[0x277D85DE8];
  listCopy = list;
  currentStatement = [listCopy currentStatement];
  creditLimit = [currentStatement creditLimit];
  v7 = creditLimit;
  if (creditLimit)
  {
    zero = creditLimit;
  }

  else
  {
    zero = [MEMORY[0x277CCA980] zero];
  }

  v99 = zero;

  currentStatement2 = [listCopy currentStatement];
  currentBalanceForMonthZero = [currentStatement2 currentBalanceForMonthZero];

  currentStatement3 = [listCopy currentStatement];
  remainingMinimumPayment = [currentStatement3 remainingMinimumPayment];
  v12 = remainingMinimumPayment;
  if (remainingMinimumPayment)
  {
    zero2 = remainingMinimumPayment;
  }

  else
  {
    zero2 = [MEMORY[0x277CCA980] zero];
  }

  v102 = zero2;
  v14 = v99;

  currentStatement4 = [listCopy currentStatement];
  remainingStatementBalance = [currentStatement4 remainingStatementBalance];
  v17 = remainingStatementBalance;
  if (remainingStatementBalance)
  {
    zero3 = remainingStatementBalance;
  }

  else
  {
    zero3 = [MEMORY[0x277CCA980] zero];
  }

  v101 = zero3;

  currentStatement5 = [listCopy currentStatement];
  minimumDue = [currentStatement5 minimumDue];
  v21 = minimumDue;
  if (minimumDue)
  {
    zero4 = minimumDue;
  }

  else
  {
    zero4 = [MEMORY[0x277CCA980] zero];
  }

  v103 = zero4;

  currentStatement6 = [listCopy currentStatement];
  statementBalance = [currentStatement6 statementBalance];
  v25 = statementBalance;
  if (statementBalance)
  {
    zero5 = statementBalance;
  }

  else
  {
    zero5 = [MEMORY[0x277CCA980] zero];
  }

  v104 = zero5;

  currentStatement7 = [listCopy currentStatement];
  isMonthZero = [currentStatement7 isMonthZero];

  currentStatement8 = [listCopy currentStatement];
  LODWORD(v30) = [currentStatement8 isMonthOne];

  v100 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v31 = FinHealthLogObject();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138414082;
    *&buf[4] = v99;
    v115 = 2112;
    v116 = currentBalanceForMonthZero;
    v117 = 2112;
    v118 = v102;
    v119 = 2112;
    v120 = v101;
    v121 = 2112;
    v122 = v103;
    v123 = 2112;
    v124 = v104;
    v125 = 1024;
    v126 = isMonthZero;
    v127 = 1024;
    v128 = v30;
    _os_log_impl(&dword_24ABD8000, v31, OS_LOG_TYPE_DEBUG, "Month-zero values CL, CB, RMP, RSB, MD, SB, isMonthZero, isMonthOne, %@, %@, %@, %@, %@, %@, %d, %d", buf, 0x4Au);
  }

  zero6 = [MEMORY[0x277CCA980] zero];
  v33 = zero6;
  if (currentBalanceForMonthZero && v99)
  {
    v34 = v30;
    zero7 = [MEMORY[0x277CCA980] zero];
    v36 = [v99 isEqualToNumber:zero7];

    if (v36)
    {
      v37 = v33;
    }

    else
    {
      v38 = [currentBalanceForMonthZero decimalNumberByDividingBy:v99];

      v39 = FinHealthLogObject();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v38;
        _os_log_impl(&dword_24ABD8000, v39, OS_LOG_TYPE_DEBUG, "Logging creditUtilizationForMonthZero %@", buf, 0xCu);
      }

      v37 = v38;
    }

    LOBYTE(v30) = v34;
  }

  else
  {
    v37 = zero6;
  }

  zero8 = [MEMORY[0x277CCA980] zero];
  if (currentBalanceForMonthZero && v104)
  {
    v40 = v37;
    zero9 = [MEMORY[0x277CCA980] zero];
    if (([currentBalanceForMonthZero isEqualToNumber:zero9] & 1) == 0)
    {
      zero10 = [MEMORY[0x277CCA980] zero];
      v43 = [v99 isEqualToNumber:zero10];

      if (v43)
      {
LABEL_33:
        v37 = v40;
        goto LABEL_34;
      }

      [v104 decimalNumberByDividingBy:v99];
      zero8 = zero9 = zero8;
    }

    goto LABEL_33;
  }

LABEL_34:
  if ([(FHPaymentRingSuggestionController *)self _allMandatoryValuesAreSameAmount:listCopy])
  {
    goto LABEL_89;
  }

  *buf = 0;
  v111 = 0;
  v112 = 0;
  v110 = 0;
  merchantCategoryTransactionSums = [listCopy merchantCategoryTransactionSums];
  [(FHPaymentRingSuggestionController *)self _minimumMerchcantCategoriesAboveMinimumAmount:v102 minMerchantCategory1:buf minMerchantCategory2:&v112 minMerchantCategorySum1:&v111 minMerchantCategorySum2:&v110 merchantCategoryTransactionSums:merchantCategoryTransactionSums];
  v45 = v111;
  v96 = v110;

  v94 = v45;
  if (!v45)
  {
    v97 = 0;
    v47 = v100;
    goto LABEL_45;
  }

  v46 = [v45 decimalNumberByAdding:{v103, v45}];
  v47 = v100;
  if (isMonthZero)
  {
    goto LABEL_43;
  }

  if ((v30 & 1) != 0 || ([listCopy previousStatementPaymentsSum], (v48 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    if ([v46 compare:v101] != -1)
    {
      goto LABEL_42;
    }

LABEL_43:
    v49 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v46 category:3];
    [v49 setMerchantCategory:*buf];
    v97 = v49;
    [v100 addObject:v49];
    goto LABEL_44;
  }

LABEL_42:
  v97 = 0;
LABEL_44:

LABEL_45:
  if (!v96)
  {
    goto LABEL_53;
  }

  v50 = [v96 decimalNumberByAdding:v103];
  if (isMonthZero)
  {
    goto LABEL_51;
  }

  if ((v30 & 1) != 0 || ([listCopy previousStatementPaymentsSum], (v51 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    currentStatement9 = [listCopy currentStatement];
    [currentStatement9 remainingStatementBalance];
    v30 = v53 = v30;
    v54 = [v50 compare:v30];

    LOBYTE(v30) = v53;
    v47 = v100;

    if (v54 != -1)
    {
      goto LABEL_52;
    }

LABEL_51:
    v55 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:v50 category:4];

    [v55 setMerchantCategory:v112];
    [v47 addObject:v55];
    v97 = v55;
    goto LABEL_52;
  }

LABEL_52:
LABEL_53:
  if (v37)
  {
    v56 = isMonthZero;
  }

  else
  {
    v56 = 0;
  }

  v95 = v37;
  if (currentBalanceForMonthZero && v56)
  {
    v57 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.33"];
    v58 = [v37 compare:v57];

    if (v58 == -1)
    {
      v79 = objc_alloc(MEMORY[0x277D08818]);
      v62 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
      v63 = [currentBalanceForMonthZero decimalNumberByDividingBy:v62];
      v64 = v79;
      v65 = v63;
      v66 = 20;
    }

    else
    {
      v59 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
      v60 = [v37 compare:v59];

      v61 = objc_alloc(MEMORY[0x277D08818]);
      if (v60 == -1)
      {
        v62 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
        v63 = [currentBalanceForMonthZero decimalNumberByDividingBy:v62];
        v64 = v61;
        v65 = v63;
        v66 = 21;
      }

      else
      {
        v62 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
        v63 = [currentBalanceForMonthZero decimalNumberByDividingBy:v62];
        v64 = v61;
        v65 = v63;
        v66 = 22;
      }
    }

    v81 = [v64 initWithAmount:v65 category:{v66, v94}];
  }

  else
  {
    if (zero8)
    {
      v67 = v30;
    }

    else
    {
      v67 = 0;
    }

    if (!v104 || (v67 & 1) == 0)
    {
      previousStatementPaymentsSum = [listCopy previousStatementPaymentsSum];

      if (previousStatementPaymentsSum)
      {
        goto LABEL_77;
      }
    }

    v69 = [MEMORY[0x277CCA980] decimalNumberWithString:{@"0.33", v94}];
    v70 = [zero8 compare:v69];

    if (v70 == -1)
    {
      v80 = objc_alloc(MEMORY[0x277D08818]);
      v74 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
      v75 = [v104 decimalNumberByDividingBy:v74];
      v76 = v80;
      v77 = v75;
      v78 = 26;
    }

    else
    {
      v71 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
      v72 = [zero8 compare:v71];

      v73 = objc_alloc(MEMORY[0x277D08818]);
      if (v72 == -1)
      {
        v74 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
        v75 = [v104 decimalNumberByDividingBy:v74];
        v76 = v73;
        v77 = v75;
        v78 = 27;
      }

      else
      {
        v74 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
        v75 = [v104 decimalNumberByDividingBy:v74];
        v76 = v73;
        v77 = v75;
        v78 = 28;
      }
    }

    v81 = [v76 initWithAmount:v77 category:v78];

    amount = [v81 amount];
    v83 = [amount compare:v101];

    v97 = v81;
    if (v83 != -1)
    {
      goto LABEL_77;
    }
  }

  [v47 addObject:v81];
  v97 = v81;
LABEL_77:
  currentStatementPaymentsSum = [listCopy currentStatementPaymentsSum];
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v85 = v47;
  v86 = [v85 countByEnumeratingWithState:&v106 objects:v113 count:16];
  if (v86)
  {
    v87 = v86;
    v88 = *v107;
    do
    {
      for (i = 0; i != v87; ++i)
      {
        if (*v107 != v88)
        {
          objc_enumerationMutation(v85);
        }

        if (currentStatementPaymentsSum)
        {
          v90 = *(*(&v106 + 1) + 8 * i);
          amount2 = [v90 amount];
          if (!-[FHPaymentRingSuggestionController _categoryIsCurrentBalanceType:](self, "_categoryIsCurrentBalanceType:", [v90 category]))
          {
            v92 = [amount2 decimalNumberBySubtracting:currentStatementPaymentsSum];
            [v90 setAmount:v92];
          }
        }
      }

      v87 = [v85 countByEnumeratingWithState:&v106 objects:v113 count:16];
    }

    while (v87);
  }

  v14 = v99;
  v37 = v95;
LABEL_89:

  return v100;
}

- (BOOL)_allMandatoryValuesAreSameAmount:(id)amount
{
  amountCopy = amount;
  currentStatement = [amountCopy currentStatement];
  currentBalance = [currentStatement currentBalance];

  currentStatement2 = [amountCopy currentStatement];
  remainingStatementBalance = [currentStatement2 remainingStatementBalance];

  currentStatement3 = [amountCopy currentStatement];

  remainingMinimumPayment = [currentStatement3 remainingMinimumPayment];

  zero = [MEMORY[0x277CCA980] zero];
  if (currentBalance && [currentBalance compare:zero] == -1)
  {
    v11 = zero;

    currentBalance = v11;
  }

  if (remainingStatementBalance && [remainingStatementBalance compare:zero] == -1)
  {
    v14 = zero;

    remainingStatementBalance = v14;
    if (!remainingMinimumPayment)
    {
      goto LABEL_15;
    }
  }

  else if (!remainingMinimumPayment)
  {
    goto LABEL_15;
  }

  if ([remainingMinimumPayment compare:zero] == -1)
  {
    v12 = zero;

    remainingMinimumPayment = v12;
  }

  v13 = 0;
  if (currentBalance && remainingStatementBalance && remainingMinimumPayment)
  {
    if ([currentBalance isEqual:remainingStatementBalance])
    {
      v13 = [remainingStatementBalance isEqual:remainingMinimumPayment];
      goto LABEL_16;
    }

LABEL_15:
    v13 = 0;
  }

LABEL_16:

  return v13;
}

- (void)_minimumMerchcantCategoriesAboveMinimumAmount:(id)amount minMerchantCategory1:(int64_t *)category1 minMerchantCategory2:(int64_t *)category2 minMerchantCategorySum1:(id *)sum1 minMerchantCategorySum2:(id *)sum2 merchantCategoryTransactionSums:(id)sums
{
  amountCopy = amount;
  sumsCopy = sums;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  if (amountCopy)
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __205__FHPaymentRingSuggestionController__minimumMerchcantCategoriesAboveMinimumAmount_minMerchantCategory1_minMerchantCategory2_minMerchantCategorySum1_minMerchantCategorySum2_merchantCategoryTransactionSums___block_invoke;
    v15[3] = &unk_278FFB548;
    v16 = amountCopy;
    v17 = &v27;
    v18 = &v37;
    v19 = &v21;
    v20 = &v33;
    [sumsCopy enumerateKeysAndObjectsUsingBlock:v15];
  }

  if (category1)
  {
    *category1 = v38[3];
  }

  if (category2)
  {
    *category2 = v34[3];
  }

  if (sum1)
  {
    *sum1 = v28[5];
  }

  if (sum2)
  {
    *sum2 = v22[5];
  }

  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void __205__FHPaymentRingSuggestionController__minimumMerchcantCategoriesAboveMinimumAmount_minMerchantCategory1_minMerchantCategory2_minMerchantCategorySum1_minMerchantCategorySum2_merchantCategoryTransactionSums___block_invoke(void *a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  if ([v5 compare:a1[4]] != 1)
  {
    goto LABEL_16;
  }

  v6 = *(a1[5] + 8);
  v8 = *(v6 + 40);
  v7 = (v6 + 40);
  if (!v8)
  {
    v14 = 6;
LABEL_15:
    objc_storeStrong(v7, a3);
    *(*(a1[v14] + 8) + 24) = [v15 integerValue];
    goto LABEL_16;
  }

  v9 = a1 + 7;
  v10 = *(a1[7] + 8);
  v11 = *(v10 + 40);
  v7 = (v10 + 40);
  if (!v11)
  {
    v14 = 8;
    goto LABEL_15;
  }

  if ([v5 compare:?] == -1 || objc_msgSend(v5, "compare:", *(*(*v9 + 8) + 40)) == -1)
  {
    v12 = [*(*(a1[5] + 8) + 40) compare:*(*(*v9 + 8) + 40)];
    if (v12 == -1)
    {
      v13 = a1 + 7;
    }

    else
    {
      v13 = a1 + 5;
    }

    if (v12 == -1)
    {
      v14 = 8;
    }

    else
    {
      v14 = 6;
    }

    v7 = (*(*v13 + 8) + 40);
    goto LABEL_15;
  }

LABEL_16:
}

- (id)_suggestedAmountsForPayOffDateForStatementBalance:(id)balance statementPurchasesSum:(id)sum creditUtilization:(id)utilization lastPaymentCategory:(unint64_t)category
{
  balanceCopy = balance;
  sumCopy = sum;
  utilizationCopy = utilization;
  v12 = utilizationCopy;
  v13 = 0;
  if (balanceCopy && sumCopy && utilizationCopy)
  {
    switch(category)
    {
      case 6uLL:
      case 0xEuLL:
      case 0x19uLL:
        v14 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"8"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v14;
        v20 = v18;
        v21 = 7;
        goto LABEL_18;
      case 7uLL:
        v27 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"7"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v27;
        v20 = v18;
        v21 = 8;
        goto LABEL_18;
      case 8uLL:
        v24 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v24;
        v20 = v18;
        v21 = 9;
        goto LABEL_18;
      case 9uLL:
      case 0xFuLL:
      case 0x18uLL:
        v23 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"5"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v23;
        v20 = v18;
        v21 = 10;
        goto LABEL_18;
      case 0xAuLL:
        v26 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"4"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v26;
        v20 = v18;
        v21 = 11;
        goto LABEL_18;
      case 0xBuLL:
        v25 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v25;
        v20 = v18;
        v21 = 12;
        goto LABEL_18;
      case 0xCuLL:
      case 0x10uLL:
      case 0x17uLL:
        v22 = objc_alloc(MEMORY[0x277D08818]);
        v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
        v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"2"];
        v17 = [v15 decimalNumberByDividingBy:v16];
        v18 = [v17 decimalNumberByAdding:sumCopy];
        v19 = v22;
        v20 = v18;
        v21 = 13;
        goto LABEL_18;
      case 0xDuLL:
        v13 = [objc_alloc(MEMORY[0x277D08818]) initWithAmount:balanceCopy category:17];
        break;
      default:
        v28 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.33"];
        v29 = [v12 compare:v28];

        if (v29 == -1)
        {
          v33 = objc_alloc(MEMORY[0x277D08818]);
          v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
          v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"3"];
          v17 = [v15 decimalNumberByDividingBy:v16];
          v18 = [v17 decimalNumberByAdding:sumCopy];
          v19 = v33;
          v20 = v18;
          v21 = 16;
        }

        else
        {
          v30 = [MEMORY[0x277CCA980] decimalNumberWithString:@"0.67"];
          v31 = [v12 compare:v30];

          v32 = objc_alloc(MEMORY[0x277D08818]);
          v15 = [balanceCopy decimalNumberBySubtracting:sumCopy];
          if (v31 == -1)
          {
            v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"6"];
            v17 = [v15 decimalNumberByDividingBy:v16];
            v18 = [v17 decimalNumberByAdding:sumCopy];
            v19 = v32;
            v20 = v18;
            v21 = 15;
          }

          else
          {
            v16 = [MEMORY[0x277CCA980] decimalNumberWithString:@"9"];
            v17 = [v15 decimalNumberByDividingBy:v16];
            v18 = [v17 decimalNumberByAdding:sumCopy];
            v19 = v32;
            v20 = v18;
            v21 = 14;
          }
        }

LABEL_18:
        v13 = [v19 initWithAmount:v20 category:v21];

        break;
    }
  }

  return v13;
}

- (id)_calculateThresholdForLastPaymentCategory:(unint64_t)category statementBalance:(id)balance lastPaymentCategoryAmount:(id)amount previousStatementPaymentsSum:(id)sum statementPurchasesSum:(id)purchasesSum
{
  balanceCopy = balance;
  amountCopy = amount;
  sumCopy = sum;
  purchasesSumCopy = purchasesSum;
  if (sumCopy)
  {
    v15 = sumCopy;
    switch(category)
    {
      case 0uLL:
        break;
      case 6uLL:
      case 0xEuLL:
      case 0x19uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"8";
        goto LABEL_15;
      case 7uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"7";
        goto LABEL_15;
      case 8uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"6";
        goto LABEL_15;
      case 9uLL:
      case 0xFuLL:
      case 0x18uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"5";
        goto LABEL_15;
      case 0xAuLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"4";
        goto LABEL_15;
      case 0xBuLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"3";
        goto LABEL_15;
      case 0xCuLL:
      case 0x10uLL:
      case 0x17uLL:
        v16 = [balanceCopy decimalNumberBySubtracting:purchasesSumCopy];
        v17 = MEMORY[0x277CCA980];
        v18 = @"2";
LABEL_15:
        v21 = [v17 decimalNumberWithString:v18];
        v22 = [v16 decimalNumberByDividingBy:v21];
        v20 = [v22 decimalNumberByAdding:purchasesSumCopy];

        v15 = v16;
        goto LABEL_16;
      case 0xDuLL:
        v19 = balanceCopy;
        goto LABEL_12;
      default:
        if ([amountCopy compare:v15] != 1)
        {
          break;
        }

        v19 = amountCopy;
LABEL_12:
        v20 = v19;
LABEL_16:

        v15 = v20;
        break;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_filterSuggestions:(id)suggestions belowThreshold:(id)threshold
{
  v23 = *MEMORY[0x277D85DE8];
  suggestionsCopy = suggestions;
  thresholdCopy = threshold;
  v7 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = suggestionsCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        amount = [v13 amount];
        if ([amount compare:thresholdCopy] == 1)
        {
        }

        else
        {
          amount2 = [v13 amount];
          v16 = [amount2 compare:thresholdCopy];

          if (v16)
          {
            continue;
          }
        }

        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (BOOL)_fhEqualObjects:(id)objects obj2:(id)obj2
{
  if (objects && obj2)
  {
    return [objects isEqual:obj2];
  }

  else
  {
    return objects == obj2;
  }
}

@end