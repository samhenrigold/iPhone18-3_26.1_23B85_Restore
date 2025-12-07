@interface SPCalculatorQuery
- (SPCalculatorQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context;
- (void)start;
@end

@implementation SPCalculatorQuery

- (SPCalculatorQuery)initWithUserQuery:(id)query queryGroupId:(unint64_t)id options:(unint64_t)options queryContext:(id)context
{
  v12.receiver = self;
  v12.super_class = SPCalculatorQuery;
  v6 = [(SPKQuery *)&v12 initWithUserQuery:query queryGroupId:id options:0 queryContext:context];
  if (v6)
  {
    v7 = qos_class_self();
    v8 = dispatch_get_global_queue(v7, 2uLL);
    v9 = dispatch_queue_create_with_target_V2("Calculator", 0, v8);
    queue = v6->_queue;
    v6->_queue = v9;
  }

  return v6;
}

- (void)start
{
  v19.receiver = self;
  v19.super_class = SPCalculatorQuery;
  [(SPKQuery *)&v19 start];
  if (![(SPKQuery *)self sendEmptyResponseIfNecessaryForSourceKind:4])
  {
    userQueryString = [(SPKQuery *)self userQueryString];
    queryContext = [(SPKQuery *)self queryContext];
    delegate = [(SPKQuery *)self delegate];
    queryIdent = [delegate queryIdent];
    clientBundleID = [delegate clientBundleID];
    v8 = [objc_alloc(MEMORY[0x277D4C658]) initWithInput:userQueryString triggerEvent:objc_msgSend(queryContext indexType:"whyQuery") queryId:{2, queryIdent}];
    mEMORY[0x277D4BEC0] = [MEMORY[0x277D4BEC0] sharedProxy];
    [mEMORY[0x277D4BEC0] sendFeedbackType:5 feedback:v8 queryId:queryIdent clientID:clientBundleID];

    queue = self->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__SPCalculatorQuery_start__block_invoke;
    block[3] = &unk_279CFE038;
    block[4] = self;
    v15 = userQueryString;
    v17 = clientBundleID;
    v18 = queryIdent;
    v16 = v8;
    v11 = clientBundleID;
    v12 = v8;
    v13 = userQueryString;
    dispatch_async(queue, block);
  }
}

void __26__SPCalculatorQuery_start__block_invoke(uint64_t a1)
{
  v26[7] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  [v2 setUsesGroupingSeparator:1];
  [v2 setMaximumIntegerDigits:20];
  [v2 setMaximumFractionDigits:10];
  [v2 setNumberStyle:1];
  v3 = MEMORY[0x277CBEC38];
  v4 = *MEMORY[0x277CF70E8];
  v25[0] = *MEMORY[0x277CF70C0];
  v25[1] = v4;
  v26[0] = MEMORY[0x277CBEC38];
  v26[1] = v2;
  v25[2] = *MEMORY[0x277CF70B0];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:enableConversion];
  v26[2] = v5;
  v6 = *MEMORY[0x277CF70D0];
  v25[3] = *MEMORY[0x277CF70C8];
  v25[4] = v6;
  v26[3] = v3;
  v26[4] = v3;
  v7 = *MEMORY[0x277CF70B8];
  v25[5] = *MEMORY[0x277CF70D8];
  v25[6] = v7;
  v26[5] = v3;
  v26[6] = v3;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:7];

  v9 = (a1 + 32);
  objc_initWeak(&location, *(a1 + 32));
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __26__SPCalculatorQuery_start__block_invoke_2;
  v20[3] = &unk_279CFE010;
  objc_copyWeak(v23, &location);
  v19 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v23[1] = *(a1 + 64);
  v13 = v12;
  *&v14 = v11;
  *(&v14 + 1) = v13;
  v21 = v19;
  v22 = v14;
  v15 = MEMORY[0x26D67F7A0](v20);
  v16 = MEMORY[0x277CF70F0];
  v17 = [*v9 userQueryString];
  v18 = [v16 evaluate:v17 options:v8 resultHandler:v15];

  objc_destroyWeak(v23);
  objc_destroyWeak(&location);
}

void __26__SPCalculatorQuery_start__block_invoke_2(uint64_t a1, void *a2)
{
  v53[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (WeakRetained)
  {
    v5 = [v3 formattedResult];
    if ([v5 length])
    {
      v6 = [v3 isTrivial];

      if ((v6 & 1) == 0)
      {
        v7 = objc_alloc_init(MEMORY[0x277CCABB8]);
        v8 = [MEMORY[0x277CBEAF8] systemLocale];
        [v7 setLocale:v8];

        [v7 setNumberStyle:1];
        [v7 setMaximumFractionDigits:10];
        v9 = [v3 formattedResult];
        v10 = [v7 numberFromString:v9];

        v11 = [v7 numberFromString:*(a1 + 40)];
        v12 = [v3 formattedResult];
        if ([v12 isEqualToString:*(a1 + 40)] & 1) != 0 || (objc_msgSend(v10, "isEqual:", v11))
        {

LABEL_7:
          v13 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 32) sourceKind:"queryGroupId") error:{4, 0}];
          v14 = [WeakRetained responseHandler];
          (v14)[2](v14, v13);

LABEL_8:
LABEL_11:

          goto LABEL_12;
        }

        v16 = [*(a1 + 40) length];

        if (v16 < 2)
        {
          goto LABEL_7;
        }

        v17 = [v3 unitType];
        v18 = [v3 conversions];
        v50 = v10;
        if ([v18 count])
        {
        }

        else
        {
          v19 = [v3 inputValueAndUnit];

          if (!v19)
          {
            v21 = 1;
            goto LABEL_18;
          }
        }

        v20 = objc_opt_new();
        [v20 setNumberStyle:1];
        [v20 setUsesGroupingSeparator:1];
        [v20 setMaximumFractionDigits:2];
        [v3 setNumberFormatter:v20];

        v21 = 0;
LABEL_18:
        v22 = objc_opt_new();
        [v22 beginDictionary];
        v23 = [v3 formattedExpression];
        [v22 encodeObject:v23 withKey:@"SSAttributeCalculatorInput"];

        v24 = [v3 formattedResult];
        v51 = v22;
        [v22 encodeObject:v24 withKey:@"SSAttributeCalculatorOutput"];

        if (v21)
        {
          v25 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v22 encodeObject:v25 withKey:@"SSAttributeIsCalculation"];
        }

        LODWORD(v47) = v21;
        if (v17 == 16)
        {
          v26 = [MEMORY[0x277CCABB0] numberWithBool:1];
          [v22 encodeObject:v26 withKey:@"SSAttributeIsCurrencyConversion"];
        }

        [v22 endDictionary];
        v27 = objc_alloc_init(MEMORY[0x277D4BE90]);
        v28 = [*(a1 + 32) queryContext];
        v29 = [v28 getTrimmedSearchString];
        v30 = [@"calculation-" stringByAppendingString:v29];
        [v27 setIdentifier:v30];

        v31 = [*(a1 + 32) queryContext];
        [v27 setQueryId:{objc_msgSend(v31, "queryIdent")}];

        [v27 setUserInput:*(a1 + 40)];
        [v27 setPlacement:3];
        [v27 setScore:{9, 0}];
        v32 = [v22 data];
        v33 = [v32 copy];
        [v27 setAttributeData:v33];

        [v27 setSectionBundleIdentifier:*MEMORY[0x277D65A10]];
        v34 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v35 = v34;
        if (v48)
        {
          v36 = [v34 localizedStringForKey:@"CALCULATION_SECTION_TITLE" value:&stru_287C35638 table:@"SpotlightServices"];
          [v27 setSectionHeader:v36];

          v37 = SSSetTopHitWithReasonString();
          v38 = @"com.apple.calculation";
        }

        else
        {
          v39 = [v34 localizedStringForKey:@"CONVERSION_SECTION_TITLE" value:&stru_287C35638 table:@"SpotlightServices"];
          [v27 setSectionHeader:v39];

          v37 = SSSetTopHitWithReasonString();
          v38 = @"com.apple.conversion";
        }

        [v27 setTopHit:v37];
        v40 = objc_alloc_init(MEMORY[0x277D65848]);
        [v40 setBundleIdentifier:v38];
        v41 = [v27 sectionHeader];
        [v40 setTitle:v41];

        v53[0] = v27;
        v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v53 count:1];
        [v40 setResults:v42];

        v52 = v40;
        v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
        v43 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 32) sourceKind:"queryGroupId") sections:{4, v49}];
        [v43 setTopHitIsIn:1];
        v44 = [WeakRetained responseHandler];
        (v44)[2](v44, v43);

        v45 = [objc_alloc(MEMORY[0x277D4C348]) initWithStartSearch:*(a1 + 48)];
        v46 = [MEMORY[0x277D4BEC0] sharedProxy];
        [v46 sendFeedbackType:6 feedback:v45 queryId:*(a1 + 72) clientID:*(a1 + 56)];

        v10 = v50;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v7 = [objc_alloc(MEMORY[0x277D65860]) initWithQueryID:objc_msgSend(*(a1 + 32) sourceKind:"queryGroupId") error:{4, 0}];
    v15 = [WeakRetained responseHandler];
    (v15)[2](v15, v7);

    goto LABEL_11;
  }

LABEL_12:
}

@end