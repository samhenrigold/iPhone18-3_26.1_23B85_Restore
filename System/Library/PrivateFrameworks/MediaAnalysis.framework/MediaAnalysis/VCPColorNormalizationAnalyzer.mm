@interface VCPColorNormalizationAnalyzer
- (VCPColorNormalizationAnalyzer)init;
- (int)analyzeCGImage:(CGImage *)image results:(id *)results;
@end

@implementation VCPColorNormalizationAnalyzer

- (VCPColorNormalizationAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = VCPColorNormalizationAnalyzer;
  v2 = [(VCPColorNormalizationAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = [VCPObjectPool objectPoolWithAllocator:&__block_literal_global_39];
    sessionPool = v2->_sessionPool;
    v2->_sessionPool = v3;
  }

  return v2;
}

id __37__VCPColorNormalizationAnalyzer_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E6984688]);

  return v0;
}

- (int)analyzeCGImage:(CGImage *)image results:(id *)results
{
  v54 = *MEMORY[0x1E69E9840];
  *results = 0;
  getObject = [(VCPObjectPool *)self->_sessionPool getObject];
  v6 = objc_alloc(MEMORY[0x1E69845B8]);
  object = [getObject object];
  v8 = [v6 initWithCGImage:image options:MEMORY[0x1E695E0F8] session:object];

  v35 = v8;
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E69843E0]);
    v10 = v9;
    if (v9)
    {
      v42 = 0;
      v11 = [v9 setRevision:3737841664 error:&v42];
      v12 = v42;
      if (v11)
      {
        [v10 setMetalContextPriority:1];
        v13 = [v10 setPreferBackgroundProcessing:1];
        v34 = v10;
        if (DeviceHasANE(v13, v14))
        {
          defaultANEDevice = [MEMORY[0x1E6984608] defaultANEDevice];
          [v10 setProcessingDevice:defaultANEDevice];
        }

        v49 = v10;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
        v41 = v12;
        v17 = [v35 performRequests:v16 error:&v41];
        v33 = v41;

        if (v17)
        {
          results = [v10 results];
          if ([results count])
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v20 = [results objectAtIndexedSubscript:0];
            adjustmentKeys = [v20 adjustmentKeys];

            v22 = [adjustmentKeys countByEnumeratingWithState:&v37 objects:v48 count:16];
            if (v22)
            {
              v23 = *v38;
              do
              {
                for (i = 0; i != v22; ++i)
                {
                  if (*v38 != v23)
                  {
                    objc_enumerationMutation(adjustmentKeys);
                  }

                  v25 = *(*(&v37 + 1) + 8 * i);
                  v26 = [results objectAtIndexedSubscript:{0, v33}];
                  v27 = [v26 adjustmentValuesForKey:v25];
                  [dictionary setObject:v27 forKeyedSubscript:v25];
                }

                v22 = [adjustmentKeys countByEnumeratingWithState:&v37 objects:v48 count:16];
              }

              while (v22);
            }

            v28 = MEMORY[0x1CCA954E0](dictionary, 0);
            v46 = @"ColorNormalizationResults";
            v43 = @"colorNormalizationData";
            v44 = v28;
            v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
            v45 = v29;
            v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v45 count:1];
            v47 = v30;
            *results = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];

            v31 = 0;
          }

          else
          {
            v31 = -18;
          }
        }

        else
        {
          if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VNGeneratePhotosAdjustmentsRequest failed", buf, 2u);
          }

          v31 = -18;
        }

        v12 = v33;
        v10 = v34;
        goto LABEL_32;
      }

      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v51 = 3737841664;
        v52 = 2112;
        v53 = v12;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to set VNGeneratePhotosAdjustmentsRequest::setRevision %lu: %@", buf, 0x16u);
      }
    }

    else
    {
      if (MediaAnalysisLogLevel() >= 3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_1C9B70000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Failed to create VNGeneratePhotosAdjustmentsRequest", buf, 2u);
      }

      v12 = 0;
    }

    v31 = -18;
LABEL_32:

    goto LABEL_33;
  }

  v31 = -108;
LABEL_33:

  return v31;
}

@end