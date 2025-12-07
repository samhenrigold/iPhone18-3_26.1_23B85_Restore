@interface HDFakeDataCollector
+ (id)collectedTypes;
- (HDFakeDataCollector)initWithProfile:(id)profile;
- (id)identifierForDataAggregator:(id)aggregator;
- (int64_t)datumCount;
- (void)_lock_addGenerator:(uint64_t)generator;
- (void)_lock_endFaking;
- (void)_lock_generateThrough:(uint64_t)through;
- (void)_lock_setupFakeGeneratorForQuantityType:(void *)type interval:(void *)interval time:(double)time metadata:(double)metadata quantity:;
- (void)_lock_setupGeneratorsForStartTime:(uint64_t)time;
- (void)dealloc;
- (void)generateForConfiguration:(id)configuration from:(id)from to:(id)to;
- (void)registerWithAggregators;
- (void)setConfiguration:(id)configuration;
- (void)unregisterFromAggregators;
@end

@implementation HDFakeDataCollector

- (HDFakeDataCollector)initWithProfile:(id)profile
{
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HDFakeDataCollector;
  v5 = [(HDFakeDataCollector *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v6->_lock._os_unfair_lock_opaque = 0;
    v7 = objc_alloc_init(MEMORY[0x277CCD2A0]);
    state = v6->_state;
    v6->_state = v7;

    v9 = HKCreateSerialDispatchQueue();
    generationQueue = v6->_generationQueue;
    v6->_generationQueue = v9;
  }

  return v6;
}

- (void)dealloc
{
  os_unfair_lock_lock(&self->_lock);
  [(HDFakeDataCollector *)self _lock_endFaking];
  os_unfair_lock_unlock(&self->_lock);
  v3.receiver = self;
  v3.super_class = HDFakeDataCollector;
  [(HDFakeDataCollector *)&v3 dealloc];
}

- (void)_lock_endFaking
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 16));
    v2 = *(self + 48);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v3 = *(self + 48);
      *(self + 48) = 0;
    }
  }
}

- (void)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock(&self->_lock);
  configuration = self->_configuration;
  v6 = configurationCopy;
  if (configuration != configurationCopy)
  {
    if (!configurationCopy || ![(HDFakeDataCollectorConfiguration *)configuration isEqual:configurationCopy])
    {
      objc_storeStrong(&self->_configuration, configuration);
      Current = CFAbsoluteTimeGetCurrent();
      [(HDFakeDataCollector *)self _lock_setupGeneratorsForStartTime:?];
    }

    v6 = self->_configuration;
  }

  if (v6)
  {
    os_unfair_lock_assert_owner(&self->_lock);
    if (!self->_generationSource)
    {
      v8 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_generationQueue);
      generationSource = self->_generationSource;
      self->_generationSource = v8;

      dispatch_source_set_timer(self->_generationSource, 0, 0x98968000uLL, 0x98968000uLL);
      objc_initWeak(&location, self);
      v10 = self->_generationSource;
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __40__HDFakeDataCollector__lock_beginFaking__block_invoke;
      handler[3] = &unk_278616F38;
      objc_copyWeak(&v13, &location);
      dispatch_source_set_event_handler(v10, handler);
      dispatch_resume(self->_generationSource);
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    [(HDFakeDataCollector *)self _lock_endFaking];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_setupGeneratorsForStartTime:(uint64_t)time
{
  v183 = *MEMORY[0x277D85DE8];
  if (!time)
  {
    return;
  }

  os_unfair_lock_assert_owner((time + 16));
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = *(time + 56);
  *(time + 56) = v4;

  activityType = [*(time + 72) activityType];
  v7 = [_HDFakeDataGenerator alloc];
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v126[0] = MEMORY[0x277D85DD0];
  v126[1] = 3221225472;
  v126[2] = __57__HDFakeDataCollector__lock_setupGeneratorsForStartTime___block_invoke;
  v126[3] = &__block_descriptor_40_e56____HDCollectedSensorDatum__32__0__HKQuantityType_8d16d24l;
  v126[4] = activityType;
  v9 = [(_HDFakeDataGenerator *)v7 initWithType:v8 interval:v126 startTime:5.0 generator:a2];
  [(HDFakeDataCollector *)time _lock_addGenerator:v9];

  os_unfair_lock_assert_owner((time + 16));
  v10 = [_HDFakeDataGenerator alloc];
  v11 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  aBlock = MEMORY[0x277D85DD0];
  v128 = 3221225472;
  v129 = __68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke;
  v130 = &__block_descriptor_40_e56____HDCollectedSensorDatum__32__0__HKQuantityType_8d16d24l;
  v131 = activityType;
  v12 = [(_HDFakeDataGenerator *)v10 initWithType:v11 interval:&aBlock startTime:2.56 generator:a2];
  [(HDFakeDataCollector *)time _lock_addGenerator:v12];

  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v156 = @"HKFakedData";
  v164 = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v156 count:1];
  v177 = MEMORY[0x277D85DD0];
  v178 = 3221225472;
  v179 = __68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke_2;
  v180 = &unk_2786216E8;
  v181 = v13;
  v15 = v13;
  [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v15 interval:v14 time:&v177 metadata:2.56 quantity:a2];

  if (activityType > 7)
  {
    if (activityType <= 9)
    {
      speed = [*(time + 72) speed];
      v94 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [speed doubleValueForUnit:v94];
      v96 = v95;

      if (activityType == 8)
      {
        v100 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
        v156 = @"HKFakedData";
        v164 = MEMORY[0x277CBEC38];
        v101 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v156 count:1];
        aBlock = MEMORY[0x277D85DD0];
        v128 = 3221225472;
        v129 = __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke;
        v130 = &unk_2786217B0;
        v131 = v100;
        v132 = v96;
        v102 = v100;
        [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v102 interval:v101 time:&aBlock metadata:3.0 quantity:a2];

        v103 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF0]];

        v143[0] = @"HKFakedData";
        v148 = MEMORY[0x277CBEC38];
        v104 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:v143 count:1];
        v177 = MEMORY[0x277D85DD0];
        v178 = 3221225472;
        v179 = __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke_2;
        v180 = &unk_2786217B0;
        v181 = v103;
        v182 = *&v96;
        v105 = v103;
        [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v105 interval:v104 time:&v177 metadata:3.0 quantity:a2];
      }

      else
      {
        v97 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
        v164 = @"HKFakedData";
        v177 = MEMORY[0x277CBEC38];
        v98 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v177 forKeys:&v164 count:1];
        aBlock = MEMORY[0x277D85DD0];
        v128 = 3221225472;
        v129 = __64__HDFakeDataCollector__lock_setupSkatingSportsGeneratorsAtTime___block_invoke;
        v130 = &unk_2786217B0;
        v131 = v97;
        v132 = v96;
        v99 = v97;
        [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v99 interval:v98 time:&aBlock metadata:3.0 quantity:a2];
      }
    }

    else
    {
      switch(activityType)
      {
        case 10:
          speed2 = [*(time + 72) speed];
          v107 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
          [speed2 doubleValueForUnit:v107];
          v109 = v108;

          v110 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
          v156 = @"HKFakedData";
          v164 = MEMORY[0x277CBEC38];
          v111 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v156 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v128 = 3221225472;
          v129 = __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke;
          v130 = &unk_2786217B0;
          v131 = v110;
          v132 = v109;
          v112 = v110;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v112 interval:v111 time:&aBlock metadata:3.0 quantity:a2];

          v113 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC28]];

          v143[0] = @"HKFakedData";
          v148 = MEMORY[0x277CBEC38];
          v114 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:v143 count:1];
          v177 = MEMORY[0x277D85DD0];
          v178 = 3221225472;
          v179 = __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke_2;
          v180 = &unk_2786217B0;
          v181 = v113;
          v182 = *&v109;
          v115 = v113;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v115 interval:v114 time:&v177 metadata:3.0 quantity:a2];

          break;
        case 11:
          speed3 = [*(time + 72) speed];
          v117 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
          [speed3 doubleValueForUnit:v117];
          v119 = v118;

          v120 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
          v156 = @"HKFakedData";
          v164 = MEMORY[0x277CBEC38];
          v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v164 forKeys:&v156 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v128 = 3221225472;
          v129 = __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke;
          v130 = &unk_2786217B0;
          v131 = v120;
          v132 = v119;
          v122 = v120;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v122 interval:v121 time:&aBlock metadata:3.0 quantity:a2];

          v123 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A8]];

          v143[0] = @"HKFakedData";
          v148 = MEMORY[0x277CBEC38];
          v124 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:v143 count:1];
          v177 = MEMORY[0x277D85DD0];
          v178 = 3221225472;
          v179 = __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke_2;
          v180 = &unk_2786217B0;
          v181 = v123;
          v182 = *&v119;
          v125 = v123;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v125 interval:v124 time:&v177 metadata:3.0 quantity:a2];

          break;
        case 12:
          v35 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
          v164 = @"HKFakedData";
          v177 = MEMORY[0x277CBEC38];
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v177 forKeys:&v164 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v128 = 3221225472;
          v129 = __65__HDFakeDataCollector__lock_setupDownhillSkiingGeneratorsAtTime___block_invoke;
          v130 = &unk_2786216E8;
          v131 = v35;
          v37 = v35;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v37 interval:v36 time:&aBlock metadata:5.0 quantity:a2];

          break;
      }
    }
  }

  else
  {
    if (activityType <= 3)
    {
      if ((activityType - 1) >= 2)
      {
        if (activityType == 3)
        {
          speed4 = [*(time + 72) speed];
          v17 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
          [speed4 doubleValueForUnit:v17];
          v19 = v18;

          v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
          v143[0] = @"HKFakedData";
          v148 = MEMORY[0x277CBEC38];
          v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v148 forKeys:v143 count:1];
          aBlock = MEMORY[0x277D85DD0];
          v128 = 3221225472;
          v129 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke;
          v130 = &unk_2786217B0;
          v131 = v20;
          v132 = v19;
          v22 = v20;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v22 interval:v21 time:&aBlock metadata:2.56 quantity:a2];

          v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];

          v133[0] = @"HKFakedData";
          v138[0] = MEMORY[0x277CBEC38];
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v138 forKeys:v133 count:1];
          v177 = MEMORY[0x277D85DD0];
          v178 = 3221225472;
          v179 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_2;
          v180 = &unk_2786217B0;
          v25 = v23;
          v181 = v25;
          v182 = *&v19;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v25 interval:v24 time:&v177 metadata:2.56 quantity:a2];

          WeakRetained = objc_loadWeakRetained((time + 8));
          daemon = [WeakRetained daemon];
          behavior = [daemon behavior];
          isAppleWatch = [behavior isAppleWatch];

          if (isAppleWatch)
          {
            v30 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C0]];

            v170[0] = @"HKFakedData";
            v172[0] = MEMORY[0x277CBEC38];
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v170 count:1];
            v164 = MEMORY[0x277D85DD0];
            v165 = 3221225472;
            v166 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_3;
            v167 = &unk_2786217B0;
            v168 = v30;
            v169 = 200.0;
            v32 = v30;
            [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v32 interval:v31 time:&v164 metadata:2.56 quantity:a2];

            v33 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];

            v174[0] = @"HKFakedData";
            v176[0] = MEMORY[0x277CBEC38];
            v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v174 count:1];
            v156 = MEMORY[0x277D85DD0];
            v157 = 3221225472;
            v158 = __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_4;
            v159 = &unk_2786217B0;
            v25 = v33;
            v160 = v25;
            v161 = 0x4054000000000000;
            [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v25 interval:v34 time:&v156 metadata:2.56 quantity:a2];
          }
        }

        return;
      }

      goto LABEL_18;
    }

    if (activityType == 4)
    {
LABEL_18:
      os_unfair_lock_assert_owner((time + 16));
      speed5 = [*(time + 72) speed];
      v53 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [speed5 doubleValueForUnit:v53];
      v55 = v54;

      v56 = 1.0;
      if ((activityType - 1) <= 3)
      {
        v56 = dbl_22916D008[activityType - 1];
      }

      speed6 = [*(time + 72) speed];
      v58 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [speed6 doubleValueForUnit:v58];
      v60 = v59;

      v176[0] = 0;
      v176[1] = v176;
      v176[2] = 0x2020000000;
      v176[3] = 0;
      v174[0] = 0;
      v174[1] = v174;
      v174[2] = 0x2020000000;
      v175 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v128 = 3221225472;
      v129 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke;
      v130 = &unk_278621710;
      v131 = v176;
      v132 = v174;
      v61 = _Block_copy(&aBlock);
      v172[0] = MEMORY[0x277D85DD0];
      v172[1] = 3221225472;
      v172[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_2;
      v172[3] = &unk_278621738;
      v62 = v61;
      v173 = v62;
      v63 = _Block_copy(v172);
      v170[0] = MEMORY[0x277D85DD0];
      v170[1] = 3221225472;
      v170[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_3;
      v170[3] = &unk_278621760;
      v64 = v62;
      v171 = v64;
      v65 = _Block_copy(v170);
      v66 = [_HDFakeDataGenerator alloc];
      v67 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
      v68 = v55 * 2.56;
      v177 = MEMORY[0x277D85DD0];
      v178 = 3221225472;
      v179 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_4;
      v180 = &unk_278621788;
      v69 = v65;
      v181 = v69;
      v182 = v68;
      v70 = [(_HDFakeDataGenerator *)v66 initWithType:v67 interval:&v177 startTime:2.56 generator:a2];
      [(HDFakeDataCollector *)time _lock_addGenerator:v70];

      v71 = [_HDFakeDataGenerator alloc];
      v72 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
      v164 = MEMORY[0x277D85DD0];
      v165 = 3221225472;
      v166 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_5;
      v167 = &unk_278621788;
      v73 = v63;
      v168 = v73;
      v169 = v68 / v56;
      v74 = [(_HDFakeDataGenerator *)v71 initWithType:v72 interval:&v164 startTime:2.56 generator:a2];
      [(HDFakeDataCollector *)time _lock_addGenerator:v74];

      if (activityType == 2)
      {
        v75 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC40]];
        v162 = @"HKFakedData";
        v163 = MEMORY[0x277CBEC38];
        v76 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v163 forKeys:&v162 count:1];
        v156 = MEMORY[0x277D85DD0];
        v157 = 3221225472;
        v158 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_6;
        v159 = &unk_2786217B0;
        v77 = v75;
        v160 = v77;
        v161 = v60;
        [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v77 interval:v76 time:&v156 metadata:2.56 quantity:a2];

        v78 = objc_loadWeakRetained((time + 8));
        daemon2 = [v78 daemon];
        behavior2 = [daemon2 behavior];
        isAppleWatch2 = [behavior2 isAppleWatch];

        if (isAppleWatch2)
        {
          v82 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC38]];

          v154 = @"HKFakedData";
          v155 = MEMORY[0x277CBEC38];
          v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v155 forKeys:&v154 count:1];
          v148 = MEMORY[0x277D85DD0];
          v149 = 3221225472;
          v150 = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_7;
          v151 = &unk_2786217B0;
          v84 = v82;
          v152 = v84;
          v153 = 0x4069000000000000;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v84 interval:v83 time:&v148 metadata:2.56 quantity:a2];

          v85 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC48]];

          v146 = @"HKFakedData";
          v147 = MEMORY[0x277CBEC38];
          v86 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
          v143[0] = MEMORY[0x277D85DD0];
          v143[1] = 3221225472;
          v143[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_8;
          v143[3] = &unk_2786217B0;
          v87 = v85;
          v144 = v87;
          v145 = 0x4052800000000000;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v87 interval:v86 time:v143 metadata:2.56 quantity:a2];

          v88 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC30]];

          v141 = @"HKFakedData";
          v142 = MEMORY[0x277CBEC38];
          v89 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v142 forKeys:&v141 count:1];
          v138[0] = MEMORY[0x277D85DD0];
          v138[1] = 3221225472;
          v138[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_9;
          v138[3] = &unk_2786217B0;
          v90 = v88;
          v139 = v90;
          v140 = 0x4069000000000000;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v90 interval:v89 time:v138 metadata:2.56 quantity:a2];

          v91 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC50]];

          v136 = @"HKFakedData";
          v137 = MEMORY[0x277CBEC38];
          v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v137 forKeys:&v136 count:1];
          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_10;
          v133[3] = &unk_2786217B0;
          v77 = v91;
          v134 = v77;
          v135 = 0x4026000000000000;
          [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v77 interval:v92 time:v133 metadata:2.56 quantity:a2];
        }
      }

      _Block_object_dispose(v174, 8);
      _Block_object_dispose(v176, 8);
      return;
    }

    if (activityType == 6)
    {
      v38 = objc_loadWeakRetained((time + 8));
      daemon3 = [v38 daemon];
      behavior3 = [daemon3 behavior];
      isAppleWatch3 = [behavior3 isAppleWatch];

      if (isAppleWatch3)
      {
        v42 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
        v138[0] = @"HKFakedData";
        v143[0] = MEMORY[0x277CBEC38];
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v138 count:1];
        aBlock = MEMORY[0x277D85DD0];
        v128 = 3221225472;
        v129 = __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke;
        v130 = &unk_2786216E8;
        v131 = v42;
        v44 = v42;
        [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v44 interval:v43 time:&aBlock metadata:5.0 quantity:a2];

        v45 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];

        v46 = *MEMORY[0x277CCC518];
        v148 = @"HKFakedData";
        v149 = v46;
        v156 = MEMORY[0x277CBEC38];
        v157 = &unk_283CB24F0;
        v47 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v156 forKeys:&v148 count:2];
        v177 = MEMORY[0x277D85DD0];
        v178 = 3221225472;
        v179 = __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_324;
        v180 = &unk_2786216E8;
        v181 = v45;
        v48 = v45;
        [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v48 interval:v47 time:&v177 metadata:5.0 quantity:a2];

        v49 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];

        v172[0] = @"HKFakedData";
        v133[0] = MEMORY[0x277CBEC38];
        v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v172 count:1];
        v164 = MEMORY[0x277D85DD0];
        v165 = 3221225472;
        v166 = __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_2;
        v167 = &unk_2786216E8;
        v168 = v49;
        v51 = v49;
        [(HDFakeDataCollector *)time _lock_setupFakeGeneratorForQuantityType:v51 interval:v50 time:&v164 metadata:60.0 quantity:a2];
      }
    }
  }
}

- (int64_t)datumCount
{
  os_unfair_lock_lock(&self->_lock);
  datumCount = self->_datumCount;
  os_unfair_lock_unlock(&self->_lock);
  return datumCount;
}

void __40__HDFakeDataCollector__lock_beginFaking__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  Current = CFAbsoluteTimeGetCurrent();
  if (WeakRetained)
  {
    v2 = Current;
    os_unfair_lock_lock(WeakRetained + 4);
    [(HDFakeDataCollector *)WeakRetained _lock_generateThrough:v2];
    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

- (void)generateForConfiguration:(id)configuration from:(id)from to:(id)to
{
  configurationCopy = configuration;
  toCopy = to;
  fromCopy = from;
  os_unfair_lock_lock(&self->_lock);
  [(HDFakeDataCollector *)self _lock_endFaking];
  configuration = self->_configuration;
  self->_configuration = configurationCopy;
  v12 = configurationCopy;

  [fromCopy timeIntervalSinceReferenceDate];
  v14 = v13;

  [(HDFakeDataCollector *)self _lock_setupGeneratorsForStartTime:v14];
  [toCopy timeIntervalSinceReferenceDate];
  v16 = v15;

  [(HDFakeDataCollector *)self _lock_generateThrough:v16];
  v17 = self->_configuration;
  self->_configuration = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_generateThrough:(uint64_t)through
{
  v25 = *MEMORY[0x277D85DE8];
  if (through)
  {
    os_unfair_lock_assert_owner((through + 16));
    while (1)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = *(through + 56);
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (!v5)
      {
        break;
      }

      v6 = v5;
      v7 = 0;
      v8 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [*(through + 56) objectForKeyedSubscript:v10];
          v12 = v11;
          if (v11 && *(v11 + 32) <= a2)
          {
            v13 = (*(*(v11 + 40) + 16))(*(v11 + 8));
            v15 = v12[3];
            v14 = v12[4];
            v12[1] = v14;
            v12[4] = v14 + v15;

            if (v13)
            {
              v16 = [*(through + 24) aggregatorForType:v10];
              v23 = v13;
              v7 = 1;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
              localDevice = [MEMORY[0x277CCD2E8] localDevice];
              [v16 dataCollector:through didCollectSensorData:v17 device:localDevice options:0];

              ++*(through + 64);
            }
          }

          else
          {

            v13 = 0;
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v6);

      if ((v7 & 1) == 0)
      {
        return;
      }
    }
  }
}

- (void)_lock_addGenerator:(uint64_t)generator
{
  v4 = a2;
  os_unfair_lock_assert_owner((generator + 16));
  if (v4)
  {
    v3 = v4[2];
  }

  else
  {
    v3 = 0;
  }

  [*(generator + 56) setObject:v4 forKeyedSubscript:v3];
}

HDQuantityDatum *__57__HDFakeDataCollector__lock_setupGeneratorsForStartTime___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [HDQuantityDatum alloc];
  v8 = [MEMORY[0x277CCAD78] UUID];
  v9 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a4 end:a4];
  v10 = MEMORY[0x277CCD7E8];
  v11 = [MEMORY[0x277CCDAB0] unitFromString:@"count/min"];
  v13 = [v10 quantityWithUnit:v11 doubleValue:(arc4random_uniform(dword_22916D028[*(a1 + 32)]) + dword_22916D05C[v12])];
  v17 = @"HKFakedData";
  v18[0] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15 = [(HDQuantityDatum *)v7 initWithIdentifier:v8 dateInterval:v9 quantity:v13 metadata:v14 resumeContextProvider:0];

  return v15;
}

HDQuantityDatum *__68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [HDQuantityDatum alloc];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a3 end:a4];
  v11 = MEMORY[0x277CCD7E8];
  v12 = [v7 canonicalUnit];

  v13 = *(a1 + 32);
  v14 = 0.0;
  if (v13 <= 0xC)
  {
    if (((1 << v13) & 0x1FC5) != 0)
    {
      v15 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.344 + -0.172;
      v16 = 0.172;
LABEL_4:
      v14 = v15 + v16;
      goto LABEL_5;
    }

    if (v13 == 1)
    {
      v15 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.006 + -0.003;
      v16 = 0.033;
      goto LABEL_4;
    }

    if (v13 == 3)
    {
      v15 = arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.266 + -0.133;
      v16 = 0.133;
      goto LABEL_4;
    }
  }

LABEL_5:
  v17 = [v11 quantityWithUnit:v12 doubleValue:(a4 - a3) * v14];
  v21 = @"HKFakedData";
  v22[0] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
  v19 = [(HDQuantityDatum *)v8 initWithIdentifier:v9 dateInterval:v10 quantity:v17 metadata:v18 resumeContextProvider:0];

  return v19;
}

id __68__HDFakeDataCollector__lock_setupCalorieGeneratorsForActivity_time___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:arc4random_uniform(0xFFFFFFFF) / 4294967300.0 * 0.0 + 0.033];

  return v3;
}

- (void)_lock_setupFakeGeneratorForQuantityType:(void *)type interval:(void *)interval time:(double)time metadata:(double)metadata quantity:
{
  typeCopy = type;
  intervalCopy = interval;
  v13 = a2;
  v14 = [_HDFakeDataGenerator alloc];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __95__HDFakeDataCollector__lock_setupFakeGeneratorForQuantityType_interval_time_metadata_quantity___block_invoke;
  v18[3] = &unk_2786217D8;
  v15 = intervalCopy;
  v20 = v15;
  v16 = typeCopy;
  v19 = v16;
  v17 = [(_HDFakeDataGenerator *)v14 initWithType:v13 interval:v18 startTime:time generator:metadata];

  [(HDFakeDataCollector *)self _lock_addGenerator:v17];
}

uint64_t __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke(uint64_t a1, double a2)
{
  v3 = *(*(a1 + 32) + 8);
  if (*(v3 + 24) != a2)
  {
    *(v3 + 24) = a2;
    *(*(*(a1 + 40) + 8) + 24) = arc4random_uniform(0xFFFFFFFF);
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

HDQuantityDatum *__70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_4(uint64_t a1, void *a2, double a3, double a4)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [HDQuantityDatum alloc];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a3 end:a4];
  v11 = MEMORY[0x277CCD7E8];
  v12 = [v7 canonicalUnit];

  (*(*(a1 + 32) + 16))(a4, *(a1 + 40), *(a1 + 40) * 0.1);
  v13 = [v11 quantityWithUnit:v12 doubleValue:?];
  v17 = @"HKFakedData";
  v18[0] = MEMORY[0x277CBEC38];
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15 = [(HDQuantityDatum *)v8 initWithIdentifier:v9 dateInterval:v10 quantity:v13 metadata:v14 resumeContextProvider:0];

  return v15;
}

HDQuantityDatum *__70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_5(uint64_t a1, void *a2, double a3, double a4)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [HDQuantityDatum alloc];
  v9 = [MEMORY[0x277CCAD78] UUID];
  v10 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a3 end:a4];
  v11 = MEMORY[0x277CCD7E8];
  v12 = [v7 canonicalUnit];

  v13 = (*(*(a1 + 32) + 16))(a4);
  v14 = [v11 quantityWithUnit:v12 doubleValue:(v13 & ~(v13 >> 31))];
  v18 = @"HKFakedData";
  v19[0] = MEMORY[0x277CBEC38];
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
  v16 = [(HDQuantityDatum *)v8 initWithIdentifier:v9 dateInterval:v10 quantity:v14 metadata:v15 resumeContextProvider:0];

  return v16;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_6(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_7(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_8(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_9(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __70__HDFakeDataCollector__lock_setupPedometerGeneratorsForActivity_time___block_invoke_10(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(3u) + 4)];

  return v3;
}

id __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_324(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(7u) + 9)];

  return v3;
}

id __59__HDFakeDataCollector__lock_setupSwimmingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(1u) + 26)];

  return v3;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_3(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.2 - (*(a1 + 40) * 0.2 + *(a1 + 40) * 0.2) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __58__HDFakeDataCollector__lock_setupCyclingGeneratorsAtTime___block_invoke_4(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.25 - (*(a1 + 40) * 0.25 + *(a1 + 40) * 0.25) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __69__HDFakeDataCollector__lock_setupCrossCountrySkiingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __63__HDFakeDataCollector__lock_setupPaddleSportsGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __57__HDFakeDataCollector__lock_setupRowingGeneratorsAtTime___block_invoke_2(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __64__HDFakeDataCollector__lock_setupSkatingSportsGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277CCD7E8];
  v3 = [*(a1 + 32) canonicalUnit];
  v4 = [v2 quantityWithUnit:v3 doubleValue:*(a1 + 40) - (*(a1 + 40) * 0.1 - (*(a1 + 40) * 0.1 + *(a1 + 40) * 0.1) * (arc4random_uniform(0xFFFFFFFF) / 4294967300.0))];

  return v4;
}

id __65__HDFakeDataCollector__lock_setupDownhillSkiingGeneratorsAtTime___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277CCD7E8];
  v2 = [*(a1 + 32) canonicalUnit];
  v3 = [v1 quantityWithUnit:v2 doubleValue:(arc4random_uniform(3u) + 4)];

  return v3;
}

+ (id)collectedTypes
{
  v31[25] = *MEMORY[0x277D85DE8];
  v22 = MEMORY[0x277CBEB98];
  v30 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC70]];
  v31[0] = v30;
  v29 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB40]];
  v31[1] = v29;
  v28 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB10]];
  v31[2] = v28;
  v27 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB18]];
  v31[3] = v27;
  v26 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB38]];
  v31[4] = v26;
  v25 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC78]];
  v31[5] = v25;
  v24 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v31[6] = v24;
  v21 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v31[7] = v21;
  v20 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC960]];
  v31[8] = v20;
  v19 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC40]];
  v31[9] = v19;
  v18 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC38]];
  v31[10] = v18;
  v17 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC48]];
  v31[11] = v17;
  v16 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC30]];
  v31[12] = v16;
  v15 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC50]];
  v31[13] = v15;
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C0]];
  v31[14] = v14;
  v13 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9B0]];
  v31[15] = v13;
  v2 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v31[16] = v2;
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB08]];
  v31[17] = v3;
  v4 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB20]];
  v31[18] = v4;
  v5 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB28]];
  v31[19] = v5;
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB30]];
  v31[20] = v6;
  v7 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCCD0]];
  v31[21] = v7;
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC9A8]];
  v31[22] = v8;
  v9 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCBF0]];
  v31[23] = v9;
  v10 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCC28]];
  v31[24] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:25];
  v23 = [v22 setWithArray:v11];

  return v23;
}

HDQuantityDatum *__95__HDFakeDataCollector__lock_setupFakeGeneratorForQuantityType_interval_time_metadata_quantity___block_invoke(uint64_t a1, double a2, double a3)
{
  v6 = [HDQuantityDatum alloc];
  v7 = [MEMORY[0x277CCAD78] UUID];
  v8 = [MEMORY[0x277CCA970] hk_dateIntervalWithStart:a2 end:a3];
  v9 = (*(*(a1 + 40) + 16))();
  v10 = [(HDQuantityDatum *)v6 initWithIdentifier:v7 dateInterval:v8 quantity:v9 metadata:*(a1 + 32) resumeContextProvider:0];

  return v10;
}

- (id)identifierForDataAggregator:(id)aggregator
{
  v3 = objc_opt_class();

  return NSStringFromClass(v3);
}

- (void)registerWithAggregators
{
  v3 = [HDDataCollectorMultiplexer alloc];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v7 = +[HDFakeDataCollector collectedTypes];
  v8 = [(HDDataCollectorMultiplexer *)v3 initForCollector:self identifier:v5 profile:WeakRetained types:v7];

  os_unfair_lock_lock(&self->_lock);
  multiplexer = self->_multiplexer;
  self->_multiplexer = v8;
  v11 = v8;

  v10 = self->_state;
  os_unfair_lock_unlock(&self->_lock);
  [(HDDataCollectorMultiplexer *)v11 registerForCollectionWithState:v10];
}

- (void)unregisterFromAggregators
{
  os_unfair_lock_lock(&self->_lock);
  [(HDDataCollectorMultiplexer *)self->_multiplexer unregisterForCollection];

  os_unfair_lock_unlock(&self->_lock);
}

@end