@interface NWPVarBandit
- (BOOL)selectModel:(unint64_t)model;
- (BOOL)setInitialValue:(id)value;
- (BOOL)setReward:(float)reward onValue:(id)value forPredictionGenerationId:(id)id;
- (id)_epsilongreedy_predictValueGivenContext:(id)context;
- (id)_ucb_predictValueGivenContext:(id)context;
- (id)initInNumRangeFrom:(id)from to:(id)to stride:(float)stride withLabel:(id)label;
- (id)initInValueSpace:(id)space withLabel:(id)label;
- (id)predictValueGivenContext:(id)context generationId:(id *)id;
- (void)_defaultModelInit;
@end

@implementation NWPVarBandit

- (void)_defaultModelInit
{
  v6[8] = *MEMORY[0x277D85DE8];
  [(NWPVar *)self setModel:1];
  v5[0] = @"analytics";
  v5[1] = @"kEpsilonValue";
  v6[0] = MEMORY[0x277CBEC28];
  v6[1] = &unk_284788300;
  v5[2] = @"kEpsilonDecayRate";
  v5[3] = @"kEpsilonLastRewards";
  v6[2] = &unk_284788320;
  v6[3] = &unk_284788320;
  v5[4] = @"kEpsilonDecayedMinimumValue";
  v5[5] = @"kEpsilonResetAt";
  v6[4] = &unk_284788320;
  v6[5] = &unk_284788320;
  v5[6] = @"kUCBConfidenceValue";
  v5[7] = @"kUCBResetAt";
  v6[6] = &unk_284788310;
  v6[7] = &unk_284788320;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:8];
  [(NWPVar *)self setHyperParams:v3];

  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [(NWPVarBandit *)self setLastSampleRewards:v4];
}

- (id)initInValueSpace:(id)space withLabel:(id)label
{
  v7.receiver = self;
  v7.super_class = NWPVarBandit;
  v4 = [(NWPVar *)&v7 initInValueSpace:space withLabel:label];
  v5 = v4;
  if (v4)
  {
    [v4 _defaultModelInit];
  }

  return v5;
}

- (id)initInNumRangeFrom:(id)from to:(id)to stride:(float)stride withLabel:(id)label
{
  fromCopy = from;
  toCopy = to;
  labelCopy = label;
  selfCopy = 0;
  if (fromCopy && toCopy)
  {
    [fromCopy floatValue];
    v15 = v14;
    [toCopy floatValue];
    if (v15 > v16 || ((v17 = v16, v18 = v16 - v15, stride >= 0.01) ? (v19 = v18 < stride) : (v19 = 1), v19))
    {
      selfCopy = 0;
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
      do
      {
        *&v21 = v15;
        v22 = [MEMORY[0x277CCABB0] numberWithFloat:v21];
        v23 = _numToInternalKey(v22);
        [v20 addObject:v23];

        v15 = v15 + stride;
      }

      while (v15 <= v17);
      v27.receiver = self;
      v27.super_class = NWPVarBandit;
      v24 = [(NWPVar *)&v27 initInValueSpace:v20 withLabel:labelCopy];
      v25 = v24;
      if (v24)
      {
        [v24 setUseScalarRange:1];
        [v25 _defaultModelInit];
      }

      self = v25;

      selfCopy = self;
    }
  }

  return selfCopy;
}

- (BOOL)setInitialValue:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (!valueCopy)
  {
    goto LABEL_14;
  }

  if (![(NWPVar *)self useScalarRange])
  {
    allState = [(NWPVar *)self allState];
    v14 = [allState objectForKeyedSubscript:valueCopy];

    if (v14)
    {
      [(NWPVar *)self setFirstValue:valueCopy];
      v9 = 1;
      goto LABEL_15;
    }

    v16 = nwpvarLogHandle(v15);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v19 = 134218242;
    selfCopy3 = self;
    v21 = 2112;
    v22 = valueCopy;
    v17 = "(%p) failure to set initial value: %@, out of range";
    goto LABEL_12;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v16 = nwpvarLogHandle(isKindOfClass);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_13:

LABEL_14:
      v9 = 0;
      goto LABEL_15;
    }

    v19 = 134218242;
    selfCopy3 = self;
    v21 = 2112;
    v22 = valueCopy;
    v17 = "(%p) failure to set initial value: %@, expected numerical type";
LABEL_12:
    _os_log_impl(&dword_2324A0000, v16, OS_LOG_TYPE_ERROR, v17, &v19, 0x16u);
    goto LABEL_13;
  }

  v6 = _numToInternalKey(valueCopy);
  allState2 = [(NWPVar *)self allState];
  v8 = [allState2 objectForKeyedSubscript:v6];
  v9 = v8 != 0;

  if (v8)
  {
    v11 = MEMORY[0x277CCABB0];
    [v6 floatValue];
    v12 = [v11 numberWithFloat:?];
    [(NWPVar *)self setFirstValue:v12];
  }

  else
  {
    v12 = nwpvarLogHandle(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = 134218242;
      selfCopy3 = self;
      v21 = 2112;
      v22 = valueCopy;
      _os_log_impl(&dword_2324A0000, v12, OS_LOG_TYPE_ERROR, "(%p) failure to set initial value: %@, out of numerical range", &v19, 0x16u);
    }
  }

LABEL_15:
  return v9;
}

- (BOOL)selectModel:(unint64_t)model
{
  v3 = model - 1;
  if (model - 1 <= 1)
  {
    [(NWPVar *)self setModel:?];
  }

  return v3 < 2;
}

- (id)_epsilongreedy_predictValueGivenContext:(id)context
{
  v62 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(NWPVarValue_Record);
  hyperParams = [(NWPVar *)self hyperParams];
  v6 = [hyperParams objectForKeyedSubscript:@"kEpsilonResetAt"];
  unsignedIntegerValue = [v6 unsignedIntegerValue];

  if (unsignedIntegerValue && [(NWPVar *)self pullCount]>= unsignedIntegerValue)
  {
    [(NWPVar *)self _setToCleanSlate];
  }

  hyperParams2 = [(NWPVar *)self hyperParams];
  v9 = [hyperParams2 objectForKeyedSubscript:@"kEpsilonValue"];
  [v9 floatValue];
  v11 = v10;

  hyperParams3 = [(NWPVar *)self hyperParams];
  v13 = [hyperParams3 objectForKeyedSubscript:@"kEpsilonDecayRate"];
  [v13 floatValue];
  v15 = v14;

  v16 = vcvts_n_f32_u32(arc4random(), 0x20uLL);
  if (v15 > 0.0)
  {
    v11 = v11 / (([(NWPVar *)self pullCount]* v15) + 1.0);
    hyperParams4 = [(NWPVar *)self hyperParams];
    v18 = [hyperParams4 objectForKeyedSubscript:@"kEpsilonDecayedMinimumValue"];
    [v18 floatValue];
    if (v11 <= v19)
    {
      hyperParams5 = [(NWPVar *)self hyperParams];
      v21 = [hyperParams5 objectForKeyedSubscript:@"kEpsilonDecayedMinimumValue"];
      [v21 floatValue];
      v11 = v22;
    }
  }

  if (v16 <= v11)
  {
    referenceValues = [(NWPVar *)self referenceValues];
    v38 = arc4random_uniform([referenceValues count]);

    referenceValues2 = [(NWPVar *)self referenceValues];
    [referenceValues2 objectAtIndexedSubscript:v38];
    v34 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    nwpvarLogHandle([(NWPVarValue_Record *)v4 setInfo:2]);
    *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *buf = 134218754;
      selfCopy5 = self;
      v52 = 2048;
      v53 = v16;
      v54 = 2048;
      v55 = v11;
      v56 = 2112;
      v57 = *&v34;
      _os_log_impl(&dword_2324A0000, v24, OS_LOG_TYPE_INFO, "(%p) prediction detail, exploring, rand (%f) vs. epsilon (%f), returning: %@", buf, 0x2Au);
    }
  }

  else
  {
    allState = [(NWPVar *)self allState];
    [allState keysSortedByValueUsingComparator:&__block_literal_global_320];
    *&v24 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

    v26 = nwpvarLogHandle(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      selfCopy5 = self;
      v52 = 2112;
      v53 = *&v24;
      _os_log_impl(&dword_2324A0000, v26, OS_LOG_TYPE_DEBUG, "(%p) prediction detail, exploiting, all: %@", buf, 0x16u);
    }

    v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
    allState2 = [(NWPVar *)self allState];
    v29 = [v24 objectAtIndexedSubscript:0];
    v30 = [allState2 objectForKeyedSubscript:v29];
    [v30 sampleRewardMean];
    v32 = v31;

    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __56__NWPVarBandit__epsilongreedy_predictValueGivenContext___block_invoke_321;
    v46[3] = &unk_2789869E0;
    v33 = v27;
    v47 = v33;
    selfCopy3 = self;
    v49 = v32;
    [v24 enumerateObjectsUsingBlock:v46];
    [v33 objectAtIndexedSubscript:{arc4random_uniform(objc_msgSend(v33, "count"))}];
    v34 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    v35 = nwpvarLogHandle([(NWPVarValue_Record *)v4 setInfo:1]);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = [v33 count];
      *buf = 134219266;
      selfCopy5 = self;
      v52 = 2048;
      v53 = v16;
      v54 = 2048;
      v55 = v11;
      v56 = 2048;
      v57 = v36;
      v58 = 2112;
      v59 = v34;
      v60 = 2112;
      v61 = v33;
      _os_log_impl(&dword_2324A0000, v35, OS_LOG_TYPE_INFO, "(%p) prediction detail, exploiting, rand (%f) vs. epsilon (%f), leaders count: %lu, returning: %@, leaders: %@", buf, 0x3Eu);
    }
  }

  v41 = nwpvarLogHandle(v40);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy5 = self;
    v52 = 2112;
    v53 = v34;
    _os_log_impl(&dword_2324A0000, v41, OS_LOG_TYPE_INFO, "(%p) prediction: %@", buf, 0x16u);
  }

  if ([(NWPVar *)self useScalarRange])
  {
    v42 = _numToInternalKey(*&v34);
    [(NWPVarValue_Record *)v4 setValue:v42];
  }

  else
  {
    [(NWPVarValue_Record *)v4 setValue:*&v34];
  }

  *&v43 = v11;
  v44 = [MEMORY[0x277CCABB0] numberWithFloat:v43];
  [(NWPVarValue_Record *)v4 setEffective_epsilon:v44];

  return v4;
}

uint64_t __56__NWPVarBandit__epsilongreedy_predictValueGivenContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  [v4 sampleRewardMean];
  v7 = v6;
  [v5 sampleRewardMean];
  if (v7 <= v8)
  {
    [v4 sampleRewardMean];
    v11 = v10;
    [v5 sampleRewardMean];
    v9 = v11 < v12;
  }

  else
  {
    v9 = -1;
  }

  return v9;
}

void __56__NWPVarBandit__epsilongreedy_predictValueGivenContext___block_invoke_321(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v11 = v7;
  if (a3)
  {
    v8 = [*(a1 + 40) allState];
    v9 = [v8 objectForKeyedSubscript:v11];

    [v9 sampleRewardMean];
    if (vabdd_f64(v10, *(a1 + 48)) >= 0.000000001)
    {
      *a4 = 1;
    }

    else
    {
      [*(a1 + 32) addObject:v11];
    }
  }

  else
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (id)_ucb_predictValueGivenContext:(id)context
{
  v41 = *MEMORY[0x277D85DE8];
  v31 = objc_alloc_init(NWPVarValue_Record);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  hyperParams = [(NWPVar *)self hyperParams];
  v6 = [hyperParams objectForKeyedSubscript:@"kUCBConfidenceValue"];
  [v6 floatValue];
  v8 = v7;

  hyperParams2 = [(NWPVar *)self hyperParams];
  v10 = [hyperParams2 objectForKeyedSubscript:@"kUCBResetAt"];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  if (unsignedIntegerValue && [(NWPVar *)self pullCount]>= unsignedIntegerValue)
  {
    [(NWPVar *)self _setToCleanSlate];
  }

  v12 = log(([(NWPVar *)self pullCount]+ 1));
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  allState = [(NWPVar *)self allState];
  v14 = [allState countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = v12;
    v17 = *v33;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v17)
        {
          objc_enumerationMutation(allState);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        allState2 = [(NWPVar *)self allState];
        v21 = [allState2 objectForKeyedSubscript:v19];

        v22 = MEMORY[0x277CCABB0];
        [v21 sampleRewardMean];
        v24 = [v22 numberWithDouble:{v23 + v8 * sqrt((v16 / objc_msgSend(v21, "armPullCount")))}];
        [v4 setObject:v24 forKeyedSubscript:v19];
      }

      v15 = [allState countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v15);
  }

  v25 = [v4 keysSortedByValueUsingComparator:&__block_literal_global_324];
  v26 = [v25 objectAtIndexedSubscript:0];
  v27 = nwpvarLogHandle(v26);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    selfCopy = self;
    v38 = 2112;
    v39 = v26;
    _os_log_impl(&dword_2324A0000, v27, OS_LOG_TYPE_INFO, "(%p) prediction: %@", buf, 0x16u);
  }

  if ([(NWPVar *)self useScalarRange])
  {
    v28 = _numToInternalKey(v26);
    v29 = v31;
    [(NWPVarValue_Record *)v31 setValue:v28];
  }

  else
  {
    v29 = v31;
    [(NWPVarValue_Record *)v31 setValue:v26];
  }

  return v29;
}

- (id)predictValueGivenContext:(id)context generationId:(id *)id
{
  v28 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_alloc_init(NWPVarValue_Record);
  [(NWPVar *)self setLogicalClock:[(NWPVar *)self logicalClock]+ 1];
  firstValue = [(NWPVar *)self firstValue];

  if (!firstValue)
  {
    if ([(NWPVar *)self model]== 2)
    {
      [(NWPVarBandit *)self _ucb_predictValueGivenContext:contextCopy];
    }

    else
    {
      [(NWPVarBandit *)self _epsilongreedy_predictValueGivenContext:contextCopy];
    }
    v18 = ;

    useScalarRange = [(NWPVar *)self useScalarRange];
    value = [(NWPVarValue_Record *)v18 value];
    firstValue2 = value;
    if (useScalarRange)
    {
      v21 = MEMORY[0x277CCABB0];
      [value floatValue];
      v22 = [v21 numberWithFloat:?];

      firstValue2 = v22;
    }

    v7 = v18;
    if (id)
    {
      goto LABEL_10;
    }

LABEL_17:
    value2 = [(NWPVarValue_Record *)v7 value];
    [(NWPVar *)self setExpectingRewardOn:value2];
    goto LABEL_18;
  }

  firstValue2 = [(NWPVar *)self firstValue];
  if ([(NWPVar *)self useScalarRange])
  {
    v10 = _numToInternalKey(firstValue2);
    [(NWPVarValue_Record *)v7 setValue:v10];
  }

  else
  {
    [(NWPVarValue_Record *)v7 setValue:firstValue2];
  }

  [(NWPVarValue_Record *)v7 setInfo:4];
  v11 = [MEMORY[0x277CCABB0] numberWithFloat:0.0];
  [(NWPVarValue_Record *)v7 setEffective_epsilon:v11];

  v12 = nwpvarLogHandle([(NWPVar *)self setFirstValue:0]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v24 = 134218242;
    selfCopy = self;
    v26 = 2112;
    v27 = firstValue2;
    _os_log_impl(&dword_2324A0000, v12, OS_LOG_TYPE_INFO, "(%p) prediction from initial value: %@", &v24, 0x16u);
  }

  if (!id)
  {
    goto LABEL_17;
  }

LABEL_10:
  value2 = [MEMORY[0x277CCAD78] UUID];
  uuidCache = [(NWPVarBandit *)self uuidCache];

  if (!uuidCache)
  {
    v15 = [[SFCache alloc] initWithPolicy:0];
    [(NWPVarBandit *)self setUuidCache:v15];
  }

  uuidCache2 = [(NWPVarBandit *)self uuidCache];
  [uuidCache2 addEntry:v7 forKey:value2];

  v17 = value2;
  *id = value2;
LABEL_18:

  return firstValue2;
}

- (BOOL)setReward:(float)reward onValue:(id)value forPredictionGenerationId:(id)id
{
  v86 = *MEMORY[0x277D85DE8];
  v8 = COERCE_DOUBLE(value);
  v9 = COERCE_DOUBLE(id);
  useScalarRange = [(NWPVar *)self useScalarRange];
  if (useScalarRange)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      nwpvarLogHandle(isKindOfClass);
      *&v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      *buf = 134218498;
      selfCopy9 = self;
      v78 = 2048;
      rewardCopy2 = reward;
      v80 = 2112;
      armPullCount2 = *&v8;
      v26 = "(%p) setting reward: %f for invalid value type: %@, failed";
      goto LABEL_16;
    }

    v12 = _numToInternalKey(*&v8);

    v8 = *&v12;
  }

  if (v8 == 0.0 || (-[NWPVar allState](self, "allState"), v13 = objc_claimAutoreleasedReturnValue(), [v13 objectForKeyedSubscript:*&v8], v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    nwpvarLogHandle(useScalarRange);
    *&v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134218498;
    selfCopy9 = self;
    v78 = 2048;
    rewardCopy2 = reward;
    v80 = 2112;
    armPullCount2 = *&v8;
    v26 = "(%p) setting reward: %f for invalid value: %@, failed";
LABEL_16:
    v27 = v16;
    v28 = 32;
LABEL_17:
    _os_log_impl(&dword_2324A0000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
    goto LABEL_18;
  }

  if (v9 != 0.0)
  {
    objc_opt_class();
    v15 = objc_opt_isKindOfClass();
    if (v15)
    {
      *&v16 = COERCE_DOUBLE(*&v9);
      uuidCache = [(NWPVarBandit *)self uuidCache];

      if (uuidCache)
      {
        uuidCache2 = [(NWPVarBandit *)self uuidCache];
        v20 = [uuidCache2 entryForKey:v16];

        if (v20)
        {
          value = [v20 value];
          v23 = [value isEqual:*&v8];

          if (v23)
          {
            uuidCache3 = [(NWPVarBandit *)self uuidCache];
            [uuidCache3 removeObjectForKey:v16];

            goto LABEL_25;
          }

          v63 = nwpvarLogHandle(v24);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            [v20 value];
            v64 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
            *buf = 134218498;
            selfCopy9 = self;
            v78 = 2112;
            rewardCopy2 = v64;
            v80 = 2112;
            armPullCount2 = *&v8;
            _os_log_impl(&dword_2324A0000, v63, OS_LOG_TYPE_ERROR, "(%p) supplied uuid was minted for a different value %@ (which is not %@)", buf, 0x20u);
          }

          goto LABEL_53;
        }

        v20 = nwpvarLogHandle(v21);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          selfCopy9 = self;
          v78 = 2112;
          rewardCopy2 = *&v16;
          v62 = "(%p) supplied uuid has already been used or expired %@";
          goto LABEL_49;
        }
      }

      else
      {
        v20 = nwpvarLogHandle(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 134218242;
          selfCopy9 = self;
          v78 = 2112;
          rewardCopy2 = *&v16;
          v62 = "(%p) supplied uuid didn't come from us %@";
LABEL_49:
          _os_log_impl(&dword_2324A0000, v20, OS_LOG_TYPE_ERROR, v62, buf, 0x16u);
        }
      }

LABEL_53:

      goto LABEL_18;
    }

    nwpvarLogHandle(v15);
    *&v16 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      selfCopy9 = self;
      v78 = 2112;
      rewardCopy2 = v9;
      v26 = "(%p) supplied uuid is not the expected type %@";
      v27 = v16;
      v28 = 22;
      goto LABEL_17;
    }

LABEL_18:
    v29 = 0;
    goto LABEL_19;
  }

  expectingRewardOn = [(NWPVar *)self expectingRewardOn];
  v32 = [*&v8 isEqual:expectingRewardOn];

  if (v32)
  {
    [(NWPVar *)self setExpectingRewardOn:0];
    v20 = 0;
    v33 = 1;
    goto LABEL_26;
  }

  v20 = 0;
LABEL_25:
  v33 = 0;
LABEL_26:
  allState = [(NWPVar *)self allState];
  v35 = [allState objectForKeyedSubscript:*&v8];

  v36 = v35;
  objc_sync_enter(v36);
  v75 = (*&v9 != 0) | v33;
  if (v75 == 1)
  {
    [(NWPVar *)self setPullCount:[(NWPVar *)self pullCount]+ 1];
    v37 = nwpvarLogHandle([v36 setArmPullCount:{objc_msgSend(v36, "armPullCount") + 1}]);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *&v38 = COERCE_DOUBLE([(NWPVar *)self pullCount]);
    armPullCount = [v36 armPullCount];
    armObservedCount = [v36 armObservedCount];
    v41 = "weak";
    *buf = 134219010;
    selfCopy9 = self;
    if (v9 != 0.0)
    {
      v41 = "strong";
    }

    v78 = 2048;
    rewardCopy2 = *&v38;
    v80 = 2048;
    armPullCount2 = armPullCount;
    v82 = 2048;
    armObservedCount2 = armObservedCount;
    v84 = 2080;
    v85 = v41;
    v42 = "(%p) incrementing pulls to %lu, arm pulls to %llu, arm observed %llu, %s prediction nexus";
    v43 = v37;
    v44 = 52;
  }

  else
  {
    v37 = nwpvarLogHandle([v36 setArmObservedCount:{objc_msgSend(v36, "armObservedCount") + 1}]);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    *buf = 134218752;
    selfCopy9 = self;
    v78 = 2048;
    rewardCopy2 = COERCE_DOUBLE([(NWPVar *)self pullCount]);
    v80 = 2048;
    armPullCount2 = [v36 armPullCount];
    v82 = 2048;
    armObservedCount2 = [v36 armObservedCount];
    v42 = "(%p) not incrementing pulls %lu, arm pulls %llu, arm observed up to %llu, no prediction nexus";
    v43 = v37;
    v44 = 42;
  }

  _os_log_impl(&dword_2324A0000, v43, OS_LOG_TYPE_INFO, v42, buf, v44);
LABEL_34:

  [v36 sampleRewardMean];
  [v36 setSampleRewardMean:{v45 + (reward - v45) * (1.0 / (objc_msgSend(v36, "armObservedCount") + objc_msgSend(v36, "armPullCount")))}];
  [v36 sampleRewardSum];
  [v36 setSampleRewardSum:v46 + reward];
  [v36 sampleRewardSumSquares];
  [v36 setSampleRewardSumSquares:reward * reward + v47];
  hyperParams = [(NWPVar *)self hyperParams];
  v49 = [hyperParams objectForKeyedSubscript:@"kEpsilonLastRewards"];
  intValue = [v49 intValue];

  if (intValue)
  {
    lastSampleRewards = [(NWPVarBandit *)self lastSampleRewards];
    v52 = [lastSampleRewards objectForKeyedSubscript:*&v8];

    if (!v52)
    {
      v52 = objc_alloc_init(MEMORY[0x277CBEB18]);
      lastSampleRewards2 = [(NWPVarBandit *)self lastSampleRewards];
      [lastSampleRewards2 setObject:v52 forKeyedSubscript:*&v8];
    }

    *&v53 = reward;
    v55 = [MEMORY[0x277CCABB0] numberWithFloat:v53];
    [v52 addObject:v55];

    if ([v52 count] > intValue)
    {
      [v52 removeObjectAtIndex:0];
    }
  }

  telemetryReporter = [(NWPVar *)self telemetryReporter];
  if (!telemetryReporter)
  {
    goto LABEL_60;
  }

  exportLabel = [(NWPVar *)self exportLabel];
  if (!exportLabel)
  {
    goto LABEL_59;
  }

  hyperParams2 = [(NWPVar *)self hyperParams];
  v59 = [hyperParams2 objectForKeyedSubscript:@"analytics"];
  bOOLValue = [v59 BOOLValue];

  if (bOOLValue)
  {
    if (v75)
    {
      info = [v20 info];
    }

    else
    {
      info = 3;
    }

    effective_epsilon = [v20 effective_epsilon];
    v66 = effective_epsilon;
    if (effective_epsilon)
    {
      telemetryReporter = effective_epsilon;
    }

    else
    {
      hyperParams3 = [(NWPVar *)self hyperParams];
      telemetryReporter = [hyperParams3 objectForKeyedSubscript:@"kEpsilonValue"];
    }

    telemetryReporter2 = [(NWPVar *)self telemetryReporter];
    (telemetryReporter2)[2](telemetryReporter2, self, telemetryReporter, *&v8, info, reward);

LABEL_59:
  }

LABEL_60:
  objc_sync_exit(v36);

  v70 = nwpvarLogHandle(v69);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
  {
    armPullCount3 = [v36 armPullCount];
    [v36 sampleRewardMean];
    v73 = v72;
    [v36 sampleRewardSum];
    *buf = 134219010;
    selfCopy9 = self;
    v78 = 2112;
    rewardCopy2 = v8;
    v80 = 2048;
    armPullCount2 = armPullCount3;
    v82 = 2048;
    armObservedCount2 = v73;
    v84 = 2048;
    v85 = v74;
    _os_log_impl(&dword_2324A0000, v70, OS_LOG_TYPE_INFO, "(%p) setting reward detail for %@: pulls=%llu, sampleRewardMean=%f, sampleRewardSum=%f", buf, 0x34u);
  }

  v29 = 1;
  v16 = v20;
LABEL_19:

  return v29;
}

@end