@interface ENExposureDetectionSummary
- (ENExposureDetectionSummary)initWithXPCObject:(id)object error:(id *)error;
- (id)description;
- (void)encodeWithXPCObject:(id)object;
@end

@implementation ENExposureDetectionSummary

- (ENExposureDetectionSummary)initWithXPCObject:(id)object error:(id *)error
{
  v35[3] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v33.receiver = self;
  v33.super_class = ENExposureDetectionSummary;
  v7 = [(ENExposureDetectionSummary *)&v33 init];
  if (!v7)
  {
    if (!error)
    {
      goto LABEL_30;
    }

    v24 = ENErrorF(2, "super init failed");
LABEL_29:
    v17 = 0;
    *error = v24;
    goto LABEL_24;
  }

  if (MEMORY[0x2383EE9C0](objectCopy) != MEMORY[0x277D86468])
  {
    if (!error)
    {
      goto LABEL_30;
    }

    v24 = ENErrorF(2, "XPC non-dict");
    goto LABEL_29;
  }

  if (!CUXPCDecodeNSArrayOfInteger())
  {
    goto LABEL_30;
  }

  v27 = 0;
  v8 = CUXPCDecodeSInt64RangedEx();
  if (v8 == 6)
  {
    v7->_daysSinceLastExposure = v27;
  }

  else if (v8 == 5)
  {
    goto LABEL_30;
  }

  v27 = 0;
  v9 = CUXPCDecodeUInt64RangedEx();
  if (v9 == 6)
  {
    v7->_matchedKeyCount = v27;
  }

  else if (v9 == 5)
  {
    goto LABEL_30;
  }

  v27 = 0;
  v10 = CUXPCDecodeUInt64RangedEx();
  if (v10 != 6)
  {
    if (v10 != 5)
    {
      goto LABEL_13;
    }

LABEL_30:
    v17 = 0;
    goto LABEL_24;
  }

  v7->_maximumRiskScore = v27;
LABEL_13:
  if (!CUXPCDecodeDouble() || !CUXPCDecodeDouble())
  {
    goto LABEL_30;
  }

  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = xpc_dictionary_get_array(objectCopy, "daySummaries");
  v13 = v12;
  if (!v12)
  {
    goto LABEL_20;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 3221225472;
  applier[2] = __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke;
  applier[3] = &unk_278A4B1E8;
  applier[4] = v11;
  applier[5] = &v27;
  xpc_array_apply(v12, applier);
  v14 = v28[5];
  if (v14)
  {
    if (error)
    {
      v25 = v14;
      *error = v14;
    }
  }

  else
  {
    v15 = [v11 copy];
    daySummaries = v7->_daySummaries;
    v7->_daySummaries = v15;
  }

  _Block_object_dispose(&v27, 8);

  if (v14)
  {
    v17 = 0;
  }

  else
  {
LABEL_20:
    attenuationDurations = v7->_attenuationDurations;
    if (!attenuationDurations)
    {
      attenuationDurations = MEMORY[0x277CBEBF8];
    }

    v35[0] = attenuationDurations;
    v34[0] = @"attenuationDurations";
    v34[1] = @"maximumRiskScoreFullRange";
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:v7->_maximumRiskScoreFullRange];
    v35[1] = v19;
    v34[2] = @"riskScoreSumFullRange";
    v20 = [MEMORY[0x277CCABB0] numberWithDouble:v7->_riskScoreSumFullRange];
    v35[2] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
    metadata = v7->_metadata;
    v7->_metadata = v21;

    v17 = v7;
  }

LABEL_24:
  return v17;
}

BOOL __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (MEMORY[0x2383EE9C0]() == MEMORY[0x277D86468])
  {
    v5 = [ENExposureDaySummary alloc];
    v6 = *(*(a1 + 40) + 8);
    obj = *(v6 + 40);
    v7 = [(ENExposureDaySummary *)v5 initWithXPCObject:v4 error:&obj];
    objc_storeStrong((v6 + 40), obj);
    v8 = v7 != 0;
    if (v7)
    {
      [*(a1 + 32) addObject:v7];
    }

    else
    {
      __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_2();
    }
  }

  else
  {
    __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_1();
    v8 = 0;
  }

  return v8;
}

- (void)encodeWithXPCObject:(id)object
{
  v23 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  CUXPCEncodeNSArrayOfNSNumber();
  daysSinceLastExposure = self->_daysSinceLastExposure;
  if (daysSinceLastExposure)
  {
    xpc_dictionary_set_int64(objectCopy, "daLE", daysSinceLastExposure);
  }

  matchedKeyCount = self->_matchedKeyCount;
  if (matchedKeyCount)
  {
    xpc_dictionary_set_uint64(objectCopy, "mtKC", matchedKeyCount);
  }

  if (self->_maximumRiskScore)
  {
    xpc_dictionary_set_uint64(objectCopy, "mxRS", self->_maximumRiskScore);
  }

  maximumRiskScoreFullRange = self->_maximumRiskScoreFullRange;
  if (maximumRiskScoreFullRange != 0.0)
  {
    xpc_dictionary_set_double(objectCopy, "mxRSFR", maximumRiskScoreFullRange);
  }

  riskScoreSumFullRange = self->_riskScoreSumFullRange;
  if (riskScoreSumFullRange != 0.0)
  {
    xpc_dictionary_set_double(objectCopy, "rssFR", riskScoreSumFullRange);
  }

  v9 = self->_daySummaries;
  if (v9)
  {
    v10 = xpc_array_create(0, 0);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_daySummaries;
    v12 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v18 + 1) + 8 * i);
          v17 = xpc_dictionary_create(0, 0, 0);
          [v16 encodeWithXPCObject:{v17, v18}];
          xpc_array_set_value(v10, 0xFFFFFFFFFFFFFFFFLL, v17);
        }

        v13 = [(NSArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    xpc_dictionary_set_value(objectCopy, "daySummaries", v10);
  }
}

- (id)description
{
  v19 = 0;
  NSAppendPrintF_safe(&v19, "ENExposureDetectionSummary");
  v3 = v19;
  v4 = self->_attenuationDurations;
  if ([(NSArray *)v4 count])
  {
    v18 = v3;
    NSAppendPrintF(&v18, ", AttnDurs %##@", self->_attenuationDurations);
    v5 = v18;

    v3 = v5;
  }

  v17 = v3;
  NSAppendPrintF_safe(&v17, ", DaysSince %d", self->_daysSinceLastExposure);
  v6 = v17;

  v16 = v6;
  NSAppendPrintF_safe(&v16, ", Matched %llu", self->_matchedKeyCount);
  v7 = v16;

  v15 = v7;
  NSAppendPrintF_safe(&v15, ", MaxScore %d (%f)", self->_maximumRiskScore, self->_maximumRiskScoreFullRange);
  v8 = v15;

  v14 = v8;
  NSAppendPrintF_safe(&v14, ", RiskScoreSum %f", self->_riskScoreSumFullRange);
  v9 = v14;

  v13 = v9;
  NSAppendPrintF_safe(&v13, ", DaySummaries %d", [(NSArray *)self->_daySummaries count]);
  v10 = v13;
  v11 = v13;

  return v10;
}

void __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_1()
{
  ENErrorF(15, "ENDaySummary non-dict");
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

void __54__ENExposureDetectionSummary_initWithXPCObject_error___block_invoke_cold_2()
{
  ENErrorF(12, "ENDaySummary init XPC failed");
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3();
  v1 = *(v0 + 40);
  *(v0 + 40) = v2;
}

@end