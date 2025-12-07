@interface _DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor
- (_DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error;
@end

@implementation _DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor

- (_DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor)initWithMetadata:(id)metadata plistParameters:(id)parameters error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  parametersCopy = parameters;
  v51 = metadataCopy;
  v52 = [metadataCopy objectForKeyedSubscript:?];
  v7 = [v52 objectForKeyedSubscript:?];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v67[0] = @"SigmaAfterNormalizing";
  v67[1] = @"LocalEpsilon";
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:2];
  v9 = [v8 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v58;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v58 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v57 + 1) + 8 * i);
        v14 = [v7 objectForKeyedSubscript:v13];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if ((isKindOfClass & 1) == 0)
        {
          v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"Malformed parameter (%@.%@.%@) in metadata, expected numbers.", @"DediscoTaskConfig", @"DPConfig", v13];
          v17 = _DPPrivacyBudgetError(8, v43);

          v44 = +[_DPLog framework];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [_DPSemanticVersion initWithString:v17 error:v44];
          }

          selfCopy4 = self;
          v16 = parametersCopy;
          v31 = v51;
          v18 = v52;
          if (error)
          {
            v45 = v17;
            v42 = 0;
            *error = v17;
          }

          else
          {
            v42 = 0;
          }

          goto LABEL_31;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v57 objects:v68 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = parametersCopy;
  v8 = [_DPBudgetAuditor maxApproximateDPFromPlist:parametersCopy error:error];
  if (v8)
  {
    v17 = [_DPBudgetAuditor targetApproximateDPFromDPConfig:v7 error:error];
    v18 = v52;
    if (v17 && (([v52 objectForKeyedSubscript:?], v19 = objc_claimAutoreleasedReturnValue(), LODWORD(v20) = objc_msgSend(v19, "unsignedIntValue"), v19, v20 <= 1) ? (v20 = 1) : (v20 = v20), objc_msgSend(v7, "objectForKeyedSubscript:", @"SigmaAfterNormalizing"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "doubleValue"), v23 = v22, v21, objc_msgSend(v7, "objectForKeyedSubscript:", @"LocalEpsilon"), v24 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v24, "doubleValue"), v26 = v25, v24, objc_msgSend(parametersCopy, "objectForKeyedSubscript:", @"epsilon"), v27 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v27, "doubleValue"), LODWORD(v24) = +[_DPBudgetAuditor checkMetadataLocalEpsilon:defaultLocalEpsilon:error:](_DPBudgetAuditor, "checkMetadataLocalEpsilon:defaultLocalEpsilon:error:", error, v26, v28), v27, v24))
    {
      v50 = v20;
      v29 = [[_DPSymmetricRAPPORWithOHE alloc] initWithBatchSize:v20 localEpsilon:error error:v26];
      selfCopy4 = self;
      v31 = v51;
      if (v29)
      {
        v32 = [[_DPHistogramWithAggregatorDiscreteGaussian alloc] initWithSigma:v29 rappor:error error:v23];
        if (v32)
        {
          v48 = v29;
          v49 = v32;
          v33 = +[_DPLog framework];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            *buf = 134218496;
            v62 = v23;
            v63 = 2048;
            v64 = v26;
            v65 = 1024;
            v66 = v50;
            _os_log_debug_impl(&dword_22622D000, v33, OS_LOG_TYPE_DEBUG, "Histogram with aggregator discrete Gaussian uses sigma = %f, symmetric RAPPOR local epsilon = %f, min batch size = %d", buf, 0x1Cu);
          }

          v47 = [v51 mutableCopy];
          v34 = [v51 objectForKeyedSubscript:@"DediscoTaskConfig"];
          v35 = [v34 mutableCopy];

          v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v50];
          [v35 setObject:v36 forKeyedSubscript:@"MinBatchSize"];

          v37 = [v7 mutableCopy];
          v38 = MEMORY[0x277CCABB0];
          [(_DPHistogramWithAggregatorDiscreteGaussian *)v49 squaredL2Sensitivity];
          v39 = [v38 numberWithDouble:?];
          [v37 setObject:v39 forKeyedSubscript:@"SquaredL2Sensitivity"];

          [v35 setObject:v37 forKeyedSubscript:@"DPConfig"];
          [v47 setObject:v35 forKeyedSubscript:@"DediscoTaskConfig"];
          v40 = v47;

          v56.receiver = self;
          v56.super_class = _DPHistogramWithAggregatorDiscreteGaussianBudgetAuditor;
          v41 = [(_DPBudgetAuditor *)&v56 initWithMetadata:v40 plistParameters:parametersCopy targetADP:v17 maxADP:v8 analysis:v49 error:error];

          selfCopy4 = v41;
          v32 = v49;
          v31 = v40;
          v42 = selfCopy4;
          v29 = v48;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
      selfCopy4 = self;
      v31 = v51;
    }

LABEL_31:
  }

  else
  {
    v42 = 0;
    v18 = v52;
    selfCopy4 = self;
    v31 = v51;
  }

  return v42;
}

@end