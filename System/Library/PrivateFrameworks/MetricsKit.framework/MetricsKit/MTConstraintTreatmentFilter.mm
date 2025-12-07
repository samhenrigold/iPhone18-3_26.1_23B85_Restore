@interface MTConstraintTreatmentFilter
- (id)apply:(id)apply;
@end

@implementation MTConstraintTreatmentFilter

- (id)apply:(id)apply
{
  v13[2] = *MEMORY[0x277D85DE8];
  applyCopy = apply;
  metricsKit = [(MTObject *)self metricsKit];
  config = [metricsKit config];
  sources = [config sources];

  if (sources)
  {
    v13[0] = applyCopy;
    v13[1] = sources;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [MTPromise promiseWithAll:v8];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __37__MTConstraintTreatmentFilter_apply___block_invoke;
    v12[3] = &unk_2798CD3E0;
    v12[4] = self;
    v10 = [v9 thenWithBlock:v12];
  }

  else
  {
    v10 = applyCopy;
  }

  return v10;
}

MTPromise *__37__MTConstraintTreatmentFilter_apply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) metricsKit];
  v5 = [v4 system];
  v6 = [v5 queue];

  if (!v6)
  {
    v6 = dispatch_get_global_queue(0, 0);
  }

  v7 = objc_opt_new();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__MTConstraintTreatmentFilter_apply___block_invoke_2;
  block[3] = &unk_2798CDA18;
  v8 = *(a1 + 32);
  v15 = v3;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v10 = v3;
  dispatch_async(v6, block);
  v11 = v17;
  v12 = v9;

  return v9;
}

void __37__MTConstraintTreatmentFilter_apply___block_invoke_2(id *a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v2 = [a1[4] objectAtIndexedSubscript:0];
  v3 = [a1[4] objectAtIndexedSubscript:1];
  v4 = [a1[5] metricsKit];
  v5 = [v4 config];
  v6 = [v5 configValueForKeyPath:@"treatmentProfiles" sources:v3];

  v7 = [a1[5] metricsKit];
  v8 = [v7 config];
  v9 = [v8 configValueForKeyPath:@"defaultTreatmentProfiles" sources:v3];

  if (!v6 || !v9)
  {
    [a1[6] finishWithResult:v2];
    goto LABEL_20;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v20 = MTMetricsKitOSLog(isKindOfClass);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = [a1[5] metricsKit];
      v22 = [v21 topic];
      *buf = 138412290;
      v56 = v22;
      _os_log_impl(&dword_258F4B000, v20, OS_LOG_TYPE_ERROR, "MetricsKit: Configuration for treatment profiles is not valid for topic %@", buf, 0xCu);
    }

    v11 = MTError(303, @"Configuration for treatment profiles is not valid", v23, v24, v25, v26, v27, v28, v49);
    [a1[6] finishWithError:v11];
    goto LABEL_19;
  }

  [v6 objectsForKeys:v9 notFoundMarker:MEMORY[0x277CBEC10]];
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v11 = v54 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  v14 = *v52;
  obj = v11;
  while (2)
  {
    v15 = 0;
    v16 = v2;
    do
    {
      if (*v52 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v17 = [MTTreatmentProfile treatmentProfileWithConfigData:*(*(&v51 + 1) + 8 * v15)];
      v18 = v17;
      if (!v17)
      {
        v29 = MTMetricsKitOSLog(0);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = [a1[5] metricsKit];
          v31 = [v30 topic];
          *buf = 138412290;
          v56 = v31;
          _os_log_impl(&dword_258F4B000, v29, OS_LOG_TYPE_ERROR, "MetricsKit: A treatment profile configuration is not valid for topic %@", buf, 0xCu);
        }

        v38 = MTError(303, @"A treatment profile configuration is not valid", v32, v33, v34, v35, v36, v37, v49);
        goto LABEL_27;
      }

      v2 = [v17 performTreatments:v16];

      if (!v2)
      {
        v39 = MTMetricsKitOSLog(v19);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = [0 objectForKeyedSubscript:@"eventType"];
          v41 = [a1[5] metricsKit];
          v42 = [v41 topic];
          *buf = 138412546;
          v56 = v40;
          v57 = 2112;
          v58 = v42;
          _os_log_impl(&dword_258F4B000, v39, OS_LOG_TYPE_DEBUG, "MetricsKit: Event %@ in topic %@ has been denylisted by one of the configured treatments", buf, 0x16u);
        }

        v38 = MTError(304, @"The event has been denylisted by one of the configured treatments", v43, v44, v45, v46, v47, v48, v49);
        v16 = 0;
LABEL_27:
        v11 = obj;
        [a1[6] finishWithError:v38];

        v2 = v16;
        goto LABEL_19;
      }

      ++v15;
      v16 = v2;
    }

    while (v13 != v15);
    v11 = obj;
    v13 = [obj countByEnumeratingWithState:&v51 objects:v59 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_14:

  [a1[6] finishWithResult:v2];
LABEL_19:

LABEL_20:
}

@end