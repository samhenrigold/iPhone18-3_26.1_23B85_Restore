@interface AMSUIWebFetchTreatmentsAction
+ (NSISO8601DateFormatter)dateFormatter;
+ (id)dictionaryRepresentationForTreatment:(id)treatment;
- (AMSUIWebFetchTreatmentsAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
@end

@implementation AMSUIWebFetchTreatmentsAction

+ (NSISO8601DateFormatter)dateFormatter
{
  v2 = objc_alloc_init(MEMORY[0x1E696AC80]);

  return v2;
}

+ (id)dictionaryRepresentationForTreatment:(id)treatment
{
  v14[3] = *MEMORY[0x1E69E9840];
  treatmentCopy = treatment;
  dateFormatter = [self dateFormatter];
  v13[0] = @"endDate";
  endDate = [treatmentCopy endDate];
  v7 = [dateFormatter stringFromDate:endDate];
  v14[0] = v7;
  v13[1] = @"identifier";
  identifier = [treatmentCopy identifier];
  v14[1] = identifier;
  v13[2] = @"startDate";
  startDate = [treatmentCopy startDate];

  v10 = [dateFormatter stringFromDate:startDate];
  v14[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:3];

  return v11;
}

- (AMSUIWebFetchTreatmentsAction)initWithJSObject:(id)object context:(id)context
{
  v47 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v38.receiver = self;
  v38.super_class = AMSUIWebFetchTreatmentsAction;
  v7 = [(AMSUIWebAction *)&v38 initWithJSObject:objectCopy context:context];
  if (v7)
  {
    v8 = [objectCopy objectForKeyedSubscript:@"areaIds"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    areaIds = v7->_areaIds;
    v7->_areaIds = v9;

    v11 = [objectCopy objectForKeyedSubscript:@"endDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = +[AMSUIWebFetchTreatmentsAction dateFormatter];
    v14 = v13;
    if (v12)
    {
      v15 = [v13 dateFromString:v12];
      endDate = v7->_endDate;
      v7->_endDate = v15;

      if (!v7->_endDate)
      {
        mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!mEMORY[0x1E698C968])
        {
          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v19 = objc_opt_class();
          v20 = AMSLogKey();
          v21 = AMSHashIfNeeded();
          v22 = AMSHashIfNeeded();
          *buf = 138544130;
          v40 = v19;
          v41 = 2114;
          v42 = v20;
          v43 = 2114;
          v44 = v21;
          v45 = 2114;
          v46 = v22;
          _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Wrong '%{public}@' format (%{public}@)", buf, 0x2Au);
        }
      }
    }

    v23 = [objectCopy objectForKeyedSubscript:@"includeExperimentData"];
    if (objc_opt_respondsToSelector())
    {
      v24 = [objectCopy objectForKeyedSubscript:@"includeExperimentData"];
      v7->_includeExperimentData = [v24 BOOLValue];
    }

    else
    {
      v7->_includeExperimentData = 0;
    }

    v25 = [objectCopy objectForKeyedSubscript:@"includePayload"];
    if (objc_opt_respondsToSelector())
    {
      v26 = [objectCopy objectForKeyedSubscript:@"includePayload"];
      v7->_includePayload = [v26 BOOLValue];
    }

    else
    {
      v7->_includePayload = 0;
    }

    v27 = [objectCopy objectForKeyedSubscript:@"startDate"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    if (v28)
    {
      v29 = [v14 dateFromString:v28];
      startDate = v7->_startDate;
      v7->_startDate = v29;

      if (!v7->_startDate)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
        if (!mEMORY[0x1E698C968]2)
        {
          mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
        }

        oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v37 = objc_opt_class();
          v33 = AMSLogKey();
          v34 = AMSHashIfNeeded();
          v35 = AMSHashIfNeeded();
          *buf = 138544130;
          v40 = v37;
          v41 = 2114;
          v42 = v33;
          v43 = 2114;
          v44 = v34;
          v45 = 2114;
          v46 = v35;
          _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Wrong '%{public}@' format (%{public}@)", buf, 0x2Au);
        }
      }
    }
  }

  return v7;
}

- (id)runAction
{
  v80 = *MEMORY[0x1E69E9840];
  v69.receiver = self;
  v69.super_class = AMSUIWebFetchTreatmentsAction;
  runAction = [(AMSUIWebAction *)&v69 runAction];
  areaIds = [(AMSUIWebFetchTreatmentsAction *)self areaIds];
  if (areaIds)
  {
    defaultTreatmentStore = [MEMORY[0x1E698CB68] defaultTreatmentStore];
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:areaIds];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSHashIfNeeded();
      *buf = 138543874;
      v71 = v8;
      v72 = 2114;
      v73 = v9;
      v74 = 2114;
      v75 = v10;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching treatments (areas: %{public}@)", buf, 0x20u);
    }

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([(AMSUIWebFetchTreatmentsAction *)self includeExperimentData])
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]2)
      {
        mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        v16 = AMSHashIfNeeded();
        *buf = 138543874;
        v71 = v14;
        v72 = 2114;
        v73 = v15;
        v74 = 2114;
        v75 = v16;
        _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching experiment data (areas: %{public}@)", buf, 0x20u);
      }

      defaultTreatmentStore2 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
      v18 = [defaultTreatmentStore2 experimentDataForAreas:v5];
      v19 = [v18 thenWithBlock:&__block_literal_global_27];

      [v11 addObject:v19];
    }

    if ([(AMSUIWebFetchTreatmentsAction *)self includePayload])
    {
      mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]3)
      {
        mEMORY[0x1E698C968]3 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject3 = [mEMORY[0x1E698C968]3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v22 = objc_opt_class();
        v23 = AMSLogKey();
        v24 = AMSHashIfNeeded();
        *buf = 138543874;
        v71 = v22;
        v72 = 2114;
        v73 = v23;
        v74 = 2114;
        v75 = v24;
        _os_log_impl(&dword_1BB036000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching payload (areas: %{public}@)", buf, 0x20u);
      }

      defaultTreatmentStore3 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
      v26 = [defaultTreatmentStore3 treatmentsPayloadForAreas:v5];
      v27 = [v26 thenWithBlock:&__block_literal_global_51];

      [v11 addObject:v27];
    }

    startDate = [(AMSUIWebFetchTreatmentsAction *)self startDate];
    endDate = [(AMSUIWebFetchTreatmentsAction *)self endDate];
    v63 = v11;
    if (startDate | endDate)
    {
      v59 = areaIds;
      v60 = +[AMSUIWebFetchTreatmentsAction dateFormatter];
      mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]4)
      {
        mEMORY[0x1E698C968]4 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject4 = [mEMORY[0x1E698C968]4 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v56 = objc_opt_class();
        v57 = AMSLogKey();
        AMSHashIfNeeded();
        v46 = v58 = endDate;
        [v60 stringFromDate:startDate];
        v47 = v62 = startDate;
        v48 = AMSHashIfNeeded();
        v49 = [v60 stringFromDate:v58];
        v50 = AMSHashIfNeeded();
        *buf = 138544386;
        v71 = v56;
        v72 = 2114;
        v73 = v57;
        v74 = 2114;
        v75 = v46;
        v76 = 2114;
        v77 = v48;
        v78 = 2114;
        v79 = v50;
        _os_log_impl(&dword_1BB036000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching treatments (areas: %{public}@, startDate: %{public}@, endDate: %{public}@)", buf, 0x34u);

        startDate = v62;
        endDate = v58;
      }

      defaultTreatmentStore4 = [MEMORY[0x1E698CB68] defaultTreatmentStore];
      v52 = [defaultTreatmentStore4 treatmentsForAreas:v5 startDate:startDate endDate:endDate];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_55;
      v67[3] = &unk_1E7F262A0;
      v67[4] = self;
      v53 = [v52 thenWithBlock:v67];

      v40 = v63;
      [v63 addObject:v53];

      areaIds = v59;
      v36 = defaultTreatmentStore;
      v41 = startDate;
      v37 = v5;
    }

    else
    {
      v61 = startDate;
      v30 = v5;
      mEMORY[0x1E698C968]5 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!mEMORY[0x1E698C968]5)
      {
        mEMORY[0x1E698C968]5 = [MEMORY[0x1E698C968] sharedConfig];
      }

      oSLogObject5 = [mEMORY[0x1E698C968]5 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        v35 = AMSHashIfNeeded();
        *buf = 138543874;
        v71 = v33;
        v72 = 2114;
        v73 = v34;
        v74 = 2114;
        v75 = v35;
        _os_log_impl(&dword_1BB036000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching active treatments (areas: %{public}@)", buf, 0x20u);
      }

      v36 = defaultTreatmentStore;
      v37 = v30;
      v38 = [defaultTreatmentStore activeTreatmentsForAreas:v30];
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_52;
      v68[3] = &unk_1E7F262A0;
      v68[4] = self;
      v39 = [v38 thenWithBlock:v68];

      v40 = v63;
      [v63 addObject:v39];

      v41 = v61;
    }

    v54 = [MEMORY[0x1E698CAD0] promiseWithAll:{v40, v56}];
    v43 = [v54 thenWithBlock:&__block_literal_global_59];

    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_5;
    v66[3] = &unk_1E7F24410;
    v66[4] = self;
    [v43 addErrorBlock:v66];
    v65[0] = MEMORY[0x1E69E9820];
    v65[1] = 3221225472;
    v65[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_64;
    v65[3] = &unk_1E7F261F0;
    v65[4] = self;
    [v43 addSuccessBlock:v65];
  }

  else
  {
    v42 = MEMORY[0x1E698CAD0];
    v36 = AMSError();
    v43 = [v42 promiseWithError:v36];
  }

  return v43;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v8 = @"experimentData";
  v9[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v2 promiseWithResult:v5];

  return v6;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_48(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E698CAD0];
  v8 = @"payload";
  v9[0] = a2;
  v3 = MEMORY[0x1E695DF20];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v2 promiseWithResult:v5];

  return v6;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_52(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2;
  v7[3] = &unk_1E7F26278;
  v7[4] = *(a1 + 32);
  v2 = [a2 ams_compactMapValues:v7];
  v3 = MEMORY[0x1E698CAD0];
  v8 = @"treatments";
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 promiseWithResult:v4];

  return v5;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() dictionaryRepresentationForTreatment:v2];

  return v3;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_55(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2_56;
  v7[3] = &unk_1E7F262C8;
  v7[4] = *(a1 + 32);
  v2 = [a2 ams_compactMapValues:v7];
  v3 = MEMORY[0x1E698CAD0];
  v8 = @"treatmentSets";
  v9[0] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v3 promiseWithResult:v4];

  return v5;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_2_56(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [objc_opt_class() dictionaryRepresentationForTreatment:{*(*(&v11 + 1) + 8 * i), v11}];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

id __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 ams_reduceWithInitialResult:MEMORY[0x1E695E0F8] updateAccumulatingResult:&__block_literal_global_62];
  v3 = [MEMORY[0x1E698CAD0] promiseWithResult:v2];

  return v3;
}

void __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_5(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded();
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failure (error: %{public}@)", &v8, 0x20u);
  }
}

void __42__AMSUIWebFetchTreatmentsAction_runAction__block_invoke_64(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v2;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Success (result: %{public}@)", &v7, 0x20u);
  }
}

@end