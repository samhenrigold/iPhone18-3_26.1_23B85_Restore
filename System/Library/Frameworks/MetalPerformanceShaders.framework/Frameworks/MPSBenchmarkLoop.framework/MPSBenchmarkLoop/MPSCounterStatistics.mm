@interface MPSCounterStatistics
- (BOOL)haveConvergedOn:(unint64_t)on;
- (MPSCounterStatistics)initWithCounters:(id)counters withExtraRequestedCounter:(id)counter forWorkload:(id)workload userSpecifiedIterations:(BOOL)iterations includingBlitSamples:(BOOL)samples;
- (NSArray)getRawData;
- (counterStats_t)getCounterResults;
- (id)getGeneralStatistics;
- (id)initializeWithPassList:(id)list numberOfEncodersInCurrentWorkload:(unint64_t)workload numEncodesPerCommandBuffer:(unint64_t)buffer extraRequestedCounter:(id)counter userSpecifiedIterations:(BOOL)iterations vendor:(unint64_t)vendor useGRC:(BOOL)c;
- (unint64_t)numberOfDispatches;
- (void)addMPSCounterData:(id)data;
- (void)clearStatistics;
- (void)dealloc;
- (void)printCounterResults;
- (void)setNumberOfEncodersInCurrentWorkload:(unint64_t)workload;
- (void)updateStatsForScope:(unint64_t)scope withcurrentSample:(unint64_t *)sample startSample:(unint64_t *)startSample;
@end

@implementation MPSCounterStatistics

- (void)setNumberOfEncodersInCurrentWorkload:(unint64_t)workload
{
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  self->_numberOfEncodersInCurrentWorkload = workload;
  if (numberOfEncodersInCurrentWorkload != workload)
  {

    free(self->_metaDataContainer);
    free(self->_statsContainer);
    self->_metaDataContainer = malloc_type_malloc(88 * self->_numberOfEncodersInCurrentWorkload + 176, 0x1000040931E79F6uLL);
    self->_statsContainer = malloc_type_malloc(88 * self->_numberOfEncodersInCurrentWorkload + 176, 0x1000040931E79F6uLL);
    v5 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = objc_msgSend_initWithCapacity_(v5, v6, self->_numberOfEncodersInCurrentWorkload + 2, v7, v8);
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_initWithCapacity_(v10, v11, self->_numberOfEncodersInCurrentWorkload + 2, v12, v13);
    v15 = objc_alloc(MEMORY[0x277CBEB18]);
    v19 = objc_msgSend_initWithCapacity_(v15, v16, self->_numberOfEncodersInCurrentWorkload + 2, v17, v18);
    self->_cycleCounterStatistics = v9;
    self->_timingCounterStatistics = v14;
    self->_extraCounterStatistics = v19;
    if (self->_numberOfEncodersInCurrentWorkload != -2)
    {
      v20 = v19;
      v21 = 0;
      v22 = 0;
      do
      {
        v23 = &self->_metaDataContainer[v21];
        *&v23->var4 = 0u;
        *&v23->var6 = 0u;
        v23->var10 = 0.0;
        *&v23->var8 = 0u;
        *&v23->var0 = 0u;
        *&v23->var2 = 0u;
        v23->var4 = INFINITY;
        v23->var1 = 1.84467441e19;
        v23->var7 = 1.84467441e19;
        v24 = objc_opt_new();
        objc_msgSend_setObject_atIndexedSubscript_(v9, v25, v24, v22, v26);
        v27 = objc_opt_new();
        objc_msgSend_setObject_atIndexedSubscript_(v14, v28, v27, v22, v29);
        v30 = objc_opt_new();
        objc_msgSend_setObject_atIndexedSubscript_(v20, v31, v30, v22++, v32);
        ++v21;
      }

      while (self->_numberOfEncodersInCurrentWorkload + 2 > v22);
    }
  }
}

- (MPSCounterStatistics)initWithCounters:(id)counters withExtraRequestedCounter:(id)counter forWorkload:(id)workload userSpecifiedIterations:(BOOL)iterations includingBlitSamples:(BOOL)samples
{
  samplesCopy = samples;
  iterationsCopy = iterations;
  v15.receiver = self;
  v15.super_class = MPSCounterStatistics;
  v12 = [(MPSCounterStatistics *)&v15 init];
  if (objc_msgSend_countEncodersInWorkload_withExtraRequestedCounter_forStatistics_userSpecifiedIterations_includingBlitSamples_(counters, v13, workload, counter, v12, iterationsCopy, samplesCopy))
  {
    NSLog(&cfstr_Mpscounterstat.isa);

    return 0;
  }

  return v12;
}

- (id)initializeWithPassList:(id)list numberOfEncodersInCurrentWorkload:(unint64_t)workload numEncodesPerCommandBuffer:(unint64_t)buffer extraRequestedCounter:(id)counter userSpecifiedIterations:(BOOL)iterations vendor:(unint64_t)vendor useGRC:(BOOL)c
{
  v81.receiver = self;
  v81.super_class = MPSCounterStatistics;
  v15 = [(MPSCounterStatistics *)&v81 init];
  *(v15 + 1) = objc_alloc_init(MEMORY[0x277CBEB18]);
  *(v15 + 2) = workload;
  *(v15 + 3) = list;
  *(v15 + 10) = 0;
  *(v15 + 20) = vendor;
  *(v15 + 18) = buffer;
  if (!c)
  {
    if (counter)
    {
      counterCopy = counter;
    }

    else
    {
      counterCopy = @"MTLStatVertexCost";
    }

    *(v15 + 11) = counterCopy;
  }

  v17 = workload + 2;
  *(v15 + 12) = malloc_type_malloc(88 * (workload + 2), 0x1000040931E79F6uLL);
  *(v15 + 13) = malloc_type_malloc(88 * (workload + 2), 0x1000040931E79F6uLL);
  v18 = objc_alloc_init(GeneralStatistics);
  v19 = MEMORY[0x277CBEBF8];
  *(v15 + 14) = v18;
  *(v15 + 15) = v19;
  *(v15 + 16) = v19;
  *(v15 + 17) = v19;
  if (workload != -2)
  {
    v20 = 0;
    do
    {
      v21 = *(v15 + 12) + v20;
      *(v21 + 32) = 0u;
      *(v21 + 48) = 0u;
      *(v21 + 80) = 0;
      *(v21 + 64) = 0u;
      *v21 = 0u;
      *(v21 + 16) = 0u;
      *(v21 + 32) = 0x7FF0000000000000;
      *(v21 + 8) = 0x43F0000000000000;
      *(v21 + 56) = 0x43F0000000000000;
      v22 = *(v15 + 15);
      v23 = objc_opt_new();
      *(v15 + 15) = objc_msgSend_arrayByAddingObject_(v22, v24, v23, v25, v26);
      v27 = *(v15 + 16);
      v28 = objc_opt_new();
      *(v15 + 16) = objc_msgSend_arrayByAddingObject_(v27, v29, v28, v30, v31);
      v32 = *(v15 + 17);
      v33 = objc_opt_new();
      *(v15 + 17) = objc_msgSend_arrayByAddingObject_(v32, v34, v33, v35, v36);
      v20 += 88;
      --v17;
    }

    while (v17);
    v19 = *(v15 + 15);
  }

  v37 = v19;
  v38 = *(v15 + 16);
  v39 = *(v15 + 17);
  if (!iterations)
  {
    v43 = objc_msgSend_objectAtIndexedSubscript_(*(v15 + 15), v40, workload + 1, v41, v42);
    objc_msgSend_ignoreNextNValues_(v43, v44, 5, v45, v46);
    v50 = objc_msgSend_objectAtIndexedSubscript_(*(v15 + 16), v47, workload + 1, v48, v49);
    objc_msgSend_ignoreNextNValues_(v50, v51, 5, v52, v53);
    v57 = objc_msgSend_objectAtIndexedSubscript_(*(v15 + 17), v54, workload + 1, v55, v56);
    objc_msgSend_ignoreNextNValues_(v57, v58, 5, v59, v60);
  }

  if (c)
  {
    *(v15 + 2) = vdupq_n_s64(1uLL);
    *(v15 + 3) = xmmword_239916E20;
    *(v15 + 8) = 2;
    v61 = 4;
  }

  else
  {
    *(v15 + 4) = objc_msgSend_indexOfObject_(*(v15 + 3), v40, @"MTLStatCommandBufferIndex", v41, v42);
    *(v15 + 5) = objc_msgSend_indexOfObject_(*(v15 + 3), v62, @"MTLStatEncoderIndex", v63, v64);
    *(v15 + 6) = objc_msgSend_indexOfObject_(*(v15 + 3), v65, @"MTLStatCommandIndex", v66, v67);
    *(v15 + 7) = objc_msgSend_indexOfObject_(*(v15 + 3), v68, @"MTLStat_nSec", v69, v70);
    v74 = *(v15 + 3);
    v75 = *(v15 + 20) - 1;
    if (v75 > 2)
    {
      v76 = objc_msgSend_indexOfObject_(v74, v71, @"MTLStatTotalGPUCycles", v72, v73);
    }

    else
    {
      v76 = objc_msgSend_indexOfObject_(v74, v71, off_278AA8A80[v75], v72, v73);
    }

    *(v15 + 8) = v76;
    v61 = objc_msgSend_indexOfObject_(*(v15 + 3), v77, *(v15 + 11), v78, v79);
  }

  *(v15 + 9) = v61;
  *(v15 + 19) = dispatch_semaphore_create(1);
  *(v15 + 22) = 0;
  *(v15 + 23) = 0;
  *(v15 + 21) = 0;
  *(v15 + 12) = xmmword_239916E30;
  *(v15 + 13) = xmmword_239916E30;
  *(v15 + 14) = xmmword_239916E30;
  *(v15 + 240) = 0;
  return v15;
}

- (void)clearStatistics
{
  self->_rawData = objc_alloc_init(MEMORY[0x277CBEB18]);
  self->_iterationsDone = 0;

  self->_generalContainer = objc_alloc_init(GeneralStatistics);
  if (self->_numberOfEncodersInCurrentWorkload == -2)
  {
    self->_workloadEncodersCyclesTaken = 0.0;
    self->_workloadEncodersTimeTaken = 0.0;
    self->_workloadEncodersExtraTaken = 0.0;
    *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
    *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
    *&self->_workloadEncodersExtraMin = xmmword_239916E30;
    self->_workloadEcoderRunningStatsValid = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = &self->_metaDataContainer[v6];
      *&v8->var4 = 0uLL;
      *&v8->var6 = 0uLL;
      v8->var10 = 0.0;
      *&v8->var8 = 0uLL;
      *&v8->var0 = 0uLL;
      *&v8->var2 = 0uLL;
      v8->var4 = INFINITY;
      v8->var1 = 1.84467441e19;
      v8->var7 = 1.84467441e19;
      ++v7;
      numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
      ++v6;
    }

    while (numberOfEncodersInCurrentWorkload + 2 > v7);
    self->_workloadEncodersCyclesTaken = 0.0;
    self->_workloadEncodersTimeTaken = 0.0;
    self->_workloadEncodersExtraTaken = 0.0;
    *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
    *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
    *&self->_workloadEncodersExtraMin = xmmword_239916E30;
    self->_workloadEcoderRunningStatsValid = 0;
    if (numberOfEncodersInCurrentWorkload != -2)
    {
      v10 = 0;
      do
      {
        v11 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v3, v10, v4, v5);
        objc_msgSend_reset(v11, v12, v13, v14, v15);
        v19 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v16, v10, v17, v18);
        objc_msgSend_reset(v19, v20, v21, v22, v23);
        v27 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v24, v10, v25, v26);
        objc_msgSend_reset(v27, v28, v29, v30, v31);
        ++v10;
      }

      while (self->_numberOfEncodersInCurrentWorkload + 2 > v10);
    }
  }
}

- (NSArray)getRawData
{
  v3 = objc_alloc(MEMORY[0x277CBEA60]);
  v7 = objc_msgSend_initWithArray_(v3, v4, self->_rawData, v5, v6);

  return v7;
}

- (void)addMPSCounterData:(id)data
{
  dispatch_semaphore_wait(self->_updateStatisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  objc_msgSend_addObject_(self->_rawData, v5, data, v6, v7);
  v12 = objc_msgSend_rawData(data, v8, v9, v10, v11);
  v17 = objc_msgSend_bytes(v12, v13, v14, v15, v16);
  v22 = v17;
  if (v17[self->_encoderOffset] % self->_numberOfEncodersInCurrentWorkload)
  {
    v23 = objc_msgSend_count(self->_passList, v18, v19, v20, v21);
    v28 = objc_msgSend_numberOfSamples(data, v24, v25, v26, v27);
    if (!v28)
    {
      goto LABEL_7;
    }
  }

  else
  {
    self->_workloadFirstSample = v17;
    self->_previousEncoderStartSample = v17;
    self->_previousSample = v17;
    self->_workloadEncodersTimeTaken = 0.0;
    self->_workloadEncodersExtraTaken = 0.0;
    self->_workloadEncodersCyclesTaken = 0.0;
    *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
    *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
    *&self->_workloadEncodersExtraMin = xmmword_239916E30;
    self->_workloadEcoderRunningStatsValid = 1;
    v23 = objc_msgSend_count(self->_passList, v18, v19, v20, v21);
    v28 = objc_msgSend_numberOfSamples(data, v30, v31, v32, v33);
    if (!v28)
    {
LABEL_7:
      v35 = v22;
      goto LABEL_8;
    }
  }

  if (v22[self->_commandOffset])
  {
    self->_previousSample = v22;
    v34 = v28 - 1;
    if (v28 == 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    self->_previousEncoderStartSample = v22;
    self->_previousSample = v22;
    v34 = v28 - 1;
    if (v28 == 1)
    {
      goto LABEL_7;
    }
  }

  v38 = v23;
  do
  {
    v35 = &v22[v38];
    if (!v22[self->_commandOffset + v38])
    {
      objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v29, 0, v22, self->_previousEncoderStartSample);
      if (!(v22[self->_encoderOffset + v38] % self->_numberOfEncodersInCurrentWorkload))
      {
        ++self->_iterationsDone;
        objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v29, 1, v22, self->_workloadFirstSample);
        self->_workloadFirstSample = v35;
      }

      self->_previousEncoderStartSample = v35;
    }

    self->_previousSample = v35;
    v22 = (v22 + v38 * 8);
    --v34;
  }

  while (v34);
LABEL_8:
  objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v29, 0, v35, self->_previousEncoderStartSample);
  if (!((v35[self->_encoderOffset] + 1) % self->_numberOfEncodersInCurrentWorkload))
  {
    ++self->_iterationsDone;
    objc_msgSend_updateStatsForScope_withcurrentSample_startSample_(self, v36, 1, v35, self->_workloadFirstSample);
  }

  updateStatisticsSemaphore = self->_updateStatisticsSemaphore;

  dispatch_semaphore_signal(updateStatisticsSemaphore);
}

- (void)updateStatsForScope:(unint64_t)scope withcurrentSample:(unint64_t *)sample startSample:(unint64_t *)startSample
{
  if (scope == 1)
  {
    numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
    cyclesOffset = self->_cyclesOffset;
    v9 = sample[cyclesOffset];
    workloadEncodersCyclesMin = startSample[cyclesOffset];
    v11 = v9 - workloadEncodersCyclesMin;
    if (v9 < workloadEncodersCyclesMin)
    {
      goto LABEL_6;
    }
  }

  else
  {
    numberOfEncodersInCurrentWorkload = startSample[self->_encoderOffset] % self->_numberOfEncodersInCurrentWorkload;
    cyclesOffset = self->_cyclesOffset;
    v12 = sample[cyclesOffset];
    workloadEncodersCyclesMin = startSample[cyclesOffset];
    v11 = v12 - workloadEncodersCyclesMin;
    if (v12 < workloadEncodersCyclesMin)
    {
LABEL_6:
      self->_workloadEcoderRunningStatsValid = 0;
      return;
    }
  }

  timeOffset = self->_timeOffset;
  v14 = *&sample[timeOffset];
  v15 = *&startSample[timeOffset];
  if (*&v14 < *&v15)
  {
    goto LABEL_6;
  }

  if (!self->_timeStampSampleDouble)
  {
    *&v5 = self->_timeStampScaleFactor * (*&v14 - *&v15);
    v95 = v5;
    if (scope != 1)
    {
      goto LABEL_9;
    }

LABEL_19:
    if (self->_workloadEcoderRunningStatsValid)
    {
      p_workloadEncodersCyclesTaken = &self->_workloadEncodersCyclesTaken;
      v24 = numberOfEncodersInCurrentWorkload + 1;
      v25 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload + 1];
      var2 = v25->var2;
      v25->var3 = self->_workloadEncodersCyclesTaken + v25->var3;
      var1 = v25->var1;
      v28 = var2 + self->_workloadEncodersCyclesTaken * self->_workloadEncodersCyclesTaken;
      ++v25->var0;
      v25->var2 = v28;
      v25->var1 = fmin(self->_workloadEncodersCyclesTaken, var1);
      encoderCoalescing = self->_encoderCoalescing;
      v30 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, a2, numberOfEncodersInCurrentWorkload + 1, sample, startSample);
      v35 = *p_workloadEncodersCyclesTaken;
      if (encoderCoalescing)
      {
        objc_msgSend_addSumOfNValues_n_(v30, v31, self->_numEncodesPerCommandBuffer, v33, v34, v35);
      }

      else
      {
        objc_msgSend_addValue_(v30, v31, v32, v33, v34, v35);
      }

      v39 = &self->_metaDataContainer[v24];
      var5 = v39->var5;
      v39->var6 = self->_workloadEncodersTimeTaken + v39->var6;
      var4 = v39->var4;
      v39->var5 = var5 + self->_workloadEncodersTimeTaken * self->_workloadEncodersTimeTaken;
      v39->var4 = fmin(self->_workloadEncodersTimeTaken, var4);
      v42 = self->_encoderCoalescing;
      v43 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v36, numberOfEncodersInCurrentWorkload + 1, v37, v38, v95);
      workloadEncodersTimeTaken = self->_workloadEncodersTimeTaken;
      if (v42)
      {
        objc_msgSend_addSumOfNValues_n_(v43, v44, self->_numEncodesPerCommandBuffer, v46, v47, workloadEncodersTimeTaken);
      }

      else
      {
        objc_msgSend_addValue_(v43, v44, v45, v46, v47, workloadEncodersTimeTaken);
      }

      v52 = &self->_metaDataContainer[v24];
      var9 = v52->var9;
      v52->var10 = self->_workloadEncodersExtraTaken + v52->var10;
      v52->var9 = var9 + self->_workloadEncodersExtraTaken * self->_workloadEncodersExtraTaken;
      var8 = v52->var8;
      v52->var7 = fmin(self->_workloadEncodersExtraTaken, v52->var7);
      v52->var8 = fmax(self->_workloadEncodersExtraTaken, var8);
      v55 = self->_encoderCoalescing;
      v56 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v49, numberOfEncodersInCurrentWorkload + 1, v50, v51);
      workloadEncodersExtraTaken = self->_workloadEncodersExtraTaken;
      if (v55)
      {
        objc_msgSend_addSumOfNValues_n_(v56, v57, self->_numEncodesPerCommandBuffer, v59, v60, workloadEncodersExtraTaken);
      }

      else
      {
        objc_msgSend_addValue_(v56, v57, v58, v59, v60, workloadEncodersExtraTaken);
      }

      *p_workloadEncodersCyclesTaken = 0.0;
      self->_workloadEncodersTimeTaken = 0.0;
      self->_workloadEncodersExtraTaken = 0.0;
      *&self->_workloadEncodersCyclesMin = xmmword_239916E30;
      *&self->_workloadEncodersTimestampMin = xmmword_239916E30;
      *&self->_workloadEncodersExtraMin = xmmword_239916E30;
      self->_workloadEcoderRunningStatsValid = 1;
    }

    goto LABEL_30;
  }

  *&v5 = (v14 - v15) * self->_timeStampScaleFactor;
  v95 = v5;
  if (scope == 1)
  {
    goto LABEL_19;
  }

LABEL_9:
  workloadEncodersCyclesMax = self->_workloadEncodersCyclesMax;
  if (self->_workloadEncodersCyclesMin < workloadEncodersCyclesMin)
  {
    workloadEncodersCyclesMin = self->_workloadEncodersCyclesMin;
  }

  *&v17.f64[1] = v5;
  v17.f64[0] = v11;
  *&self->_workloadEncodersCyclesTaken = vaddq_f64(*&self->_workloadEncodersCyclesTaken, v17);
  v18 = self->_workloadEncodersExtraTaken + 0.0;
  self->_workloadEncodersCyclesMin = workloadEncodersCyclesMin;
  v19 = sample[cyclesOffset];
  if (workloadEncodersCyclesMax > v19)
  {
    v19 = workloadEncodersCyclesMax;
  }

  self->_workloadEncodersCyclesMax = v19;
  workloadEncodersTimestampMin = startSample[timeOffset];
  workloadEncodersTimestampMax = self->_workloadEncodersTimestampMax;
  if (self->_workloadEncodersTimestampMin < workloadEncodersTimestampMin)
  {
    workloadEncodersTimestampMin = self->_workloadEncodersTimestampMin;
  }

  self->_workloadEncodersTimestampMin = workloadEncodersTimestampMin;
  v22 = sample[timeOffset];
  self->_workloadEncodersExtraTaken = v18;
  if (workloadEncodersTimestampMax > v22)
  {
    v22 = workloadEncodersTimestampMax;
  }

  self->_workloadEncodersTimestampMax = v22;
  self->_workloadEncodersExtraMin = 0;
  self->_workloadEncodersExtraMax = 0;
LABEL_30:
  v62 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload];
  v63 = v62->var3 + v11;
  v64 = v62->var1;
  v65 = v62->var2 + (v11 * v11);
  ++v62->var0;
  v62->var2 = v65;
  v62->var3 = v63;
  v62->var1 = fmin(v11, v64);
  v66 = self->_encoderCoalescing;
  v67 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, a2, numberOfEncodersInCurrentWorkload, sample, startSample, v95);
  if (v66)
  {
    objc_msgSend_addSumOfNValues_n_(v67, v68, self->_numEncodesPerCommandBuffer, v70, v71, v11);
  }

  else
  {
    objc_msgSend_addValue_(v67, v68, v69, v70, v71, v11);
  }

  v75.f64[0] = v96 * v96;
  v76 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload];
  v75.f64[1] = v96;
  *&v76->var5 = vaddq_f64(v75, *&v76->var5);
  v76->var4 = fmin(v96, v76->var4);
  v77 = self->_encoderCoalescing;
  v78 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v72, numberOfEncodersInCurrentWorkload, v73, v74);
  if (v77)
  {
    objc_msgSend_addSumOfNValues_n_(v78, v79, self->_numEncodesPerCommandBuffer, v81, v82, v96);
  }

  else
  {
    objc_msgSend_addValue_(v78, v79, v80, v81, v82, v96);
  }

  v86 = &self->_metaDataContainer[numberOfEncodersInCurrentWorkload];
  *&v86->var9 = vaddq_f64(*&v86->var9, 0);
  v87 = fmax(v86->var8, 0.0);
  v86->var7 = fmin(v86->var7, 0.0);
  v86->var8 = v87;
  v88 = self->_encoderCoalescing;
  v89 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v83, numberOfEncodersInCurrentWorkload, v84, v85);
  if (v88)
  {
    numEncodesPerCommandBuffer = self->_numEncodesPerCommandBuffer;

    objc_msgSend_addSumOfNValues_n_(v89, v90, numEncodesPerCommandBuffer, v92, v93, 0.0);
  }

  else
  {

    objc_msgSend_addValue_(v89, v90, v91, v92, v93, 0.0);
  }
}

- (counterStats_t)getCounterResults
{
  dispatch_semaphore_wait(self->_updateStatisticsSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  metaDataContainer = self->_metaDataContainer;
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  if (!objc_msgSend_count(self->_rawData, v5, v6, v7, v8))
  {
LABEL_9:
    v103 = 0;
    goto LABEL_10;
  }

  v12 = numberOfEncodersInCurrentWorkload + 2;
  if (numberOfEncodersInCurrentWorkload != -2)
  {
    v13 = 0;
    p_var5 = &self->_statsContainer->var5;
    do
    {
      *(p_var5 - 1) = 0u;
      *(p_var5 - 3) = 0u;
      *(p_var5 + 3) = 0u;
      p_var5[5] = 0.0;
      *(p_var5 + 1) = 0u;
      *(p_var5 - 5) = 0u;
      *p_var5 = INFINITY;
      *(p_var5 - 3) = NAN;
      p_var5[3] = NAN;
      v15 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v9, v13, v10, v11);
      *(p_var5 - 5) = objc_msgSend_numberOfSamples(v15, v16, v17, v18, v19);
      var0 = metaDataContainer->var0;
      ++metaDataContainer;
      if (!var0)
      {
        goto LABEL_9;
      }

      v24 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v20, v13, v21, v22);
      objc_msgSend_mean(v24, v25, v26, v27, v28);
      *(p_var5 - 4) = v29;
      v33 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v30, v13, v31, v32);
      objc_msgSend_min(v33, v34, v35, v36, v37);
      *(p_var5 - 3) = v38;
      v42 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v39, v13, v40, v41);
      objc_msgSend_standardDeviationOfMean(v42, v43, v44, v45, v46);
      *(p_var5 - 2) = v47;
      v51 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v48, v13, v49, v50);
      objc_msgSend_mean(v51, v52, v53, v54, v55);
      *(p_var5 - 1) = v56;
      v60 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v57, v13, v58, v59);
      objc_msgSend_min(v60, v61, v62, v63, v64);
      *p_var5 = v65;
      v69 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v66, v13, v67, v68);
      objc_msgSend_standardDeviationOfMean(v69, v70, v71, v72, v73);
      *(p_var5 + 1) = v74;
      v78 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v75, v13, v76, v77);
      objc_msgSend_mean(v78, v79, v80, v81, v82);
      *(p_var5 + 2) = v83;
      v87 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v84, v13, v85, v86);
      objc_msgSend_min(v87, v88, v89, v90, v91);
      *(p_var5 + 3) = v92;
      v96 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v93, v13, v94, v95);
      objc_msgSend_standardDeviationOfMean(v96, v97, v98, v99, v100);
      *(p_var5 + 5) = v101;
      ++v13;
      p_var5 += 11;
    }

    while (v12 != v13);
  }

  if (self->_vendor == 3)
  {
    NSLog(&cfstr_NvidiaResetsTh.isa);
  }

  v102 = 88 * v12;
  v103 = malloc_type_malloc(v102, 0x1000040931E79F6uLL);
  memcpy(v103, self->_statsContainer, v102);
LABEL_10:
  dispatch_semaphore_signal(self->_updateStatisticsSemaphore);
  return v103;
}

- (id)getGeneralStatistics
{
  v2 = self->_generalContainer;

  return v2;
}

- (BOOL)haveConvergedOn:(unint64_t)on
{
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  if (on == 2)
  {
    v7 = 136;
  }

  else if (on == 1)
  {
    v7 = 128;
  }

  else
  {
    if (on)
    {
      return 0;
    }

    if (self->_vendor == 3)
    {
      selfCopy = self;
      off_2814650E0("NVIDIA resets their cycle counter every encoder so total cycles are not trustworthy", a2);
      self = selfCopy;
    }

    v7 = 120;
  }

  v8 = objc_msgSend_objectAtIndexedSubscript_(*(&self->super.isa + v7), a2, numberOfEncodersInCurrentWorkload + 1, v3, v4);

  return objc_msgSend_hasConverged(v8, v9, v10, v11, v12);
}

- (void)printCounterResults
{
  off_2814650E0("\nCounter Statistics Collected\n", a2);
  numberOfEncodersInCurrentWorkload = self->_numberOfEncodersInCurrentWorkload;
  if (numberOfEncodersInCurrentWorkload)
  {
    v6 = 0;
    selfCopy = self;
    for (i = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v3, 0, v4, v5); ; i = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v3, v6, v4, v5))
    {
      objc_msgSend_mean(i, v8, v9, v10, v11);
      v33 = v32;
      v37 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v34, v6, v35, v36);
      objc_msgSend_mean(v37, v38, v39, v40, v41);
      v43 = v42;
      v47 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v44, v6, v45, v46);
      objc_msgSend_mean(v47, v48, v49, v50, v51);
      off_2814650E0("==============================================================================\n");
      if (self->_useInterposer)
      {
        v56 = objc_msgSend_allEncoders(self->_infoCapture, v52, v53, v54, v55);
        v60 = objc_msgSend_objectAtIndexedSubscript_(v56, v57, v6, v58, v59);
        v65 = objc_msgSend_encoderLabel(v60, v61, v62, v63, v64);
        v70 = objc_msgSend_UTF8String(v65, v66, v67, v68, v69);
        printf("encoderName: %s\n", v70);
        v75 = objc_msgSend_allEncoders(self->_infoCapture, v71, v72, v73, v74);
        v79 = objc_msgSend_objectAtIndexedSubscript_(v75, v76, v6, v77, v78);
        v84 = objc_msgSend_dispatches(v79, v80, v81, v82, v83);
        if (objc_msgSend_count(v84, v85, v86, v87, v88))
        {
          v93 = 0;
          do
          {
            v120 = objc_msgSend_allEncoders(self->_infoCapture, v89, v90, v91, v92);
            v121 = v6;
            v125 = objc_msgSend_objectAtIndexedSubscript_(v120, v122, v6, v123, v124);
            v130 = objc_msgSend_dispatches(v125, v126, v127, v128, v129);
            v134 = objc_msgSend_objectAtIndexedSubscript_(v130, v131, v93, v132, v133);
            v139 = objc_msgSend_computePipelineStateLabel(v134, v135, v136, v137, v138);
            v144 = objc_msgSend_UTF8String(v139, v140, v141, v142, v143);
            printf("\tdispatch %lu : computePipelineStateLabel: %s\n", v93, v144);
            if (v134)
            {
              objc_msgSend_threadgroupsPerGrid(v134, v145, v146, v147, v148);
              v97 = v344;
              objc_msgSend_threadgroupsPerGrid(v134, v149, v150, v151, v152);
              v96 = v343;
              objc_msgSend_threadgroupsPerGrid(v134, v153, v154, v155, v156);
              v98 = v342;
              objc_msgSend_threadsPerThreadgroup(v134, v157, v158, v159, v160);
              v95 = v341;
              objc_msgSend_threadsPerThreadgroup(v134, v161, v162, v163, v164);
              v99 = v340;
              objc_msgSend_threadsPerThreadgroup(v134, v165, v166, v167, v168);
              v94 = v339;
              objc_msgSend_threadsPerThreadgroup(v134, v169, v170, v171, v172);
              objc_msgSend_threadsPerThreadgroup(v134, v173, v174, v175, v176);
              objc_msgSend_threadsPerThreadgroup(v134, v177, v178, v179, v180);
              v100 = v337 * v338 * v336;
            }

            else
            {
              v94 = 0;
              v95 = 0;
              v96 = 0;
              v97 = 0;
              v98 = 0;
              v99 = 0;
              v100 = 0;
              v344 = 0;
              v343 = 0;
              v342 = 0;
              v341 = 0;
              v340 = 0;
              v339 = 0;
              v338 = 0;
              v337 = 0;
              v336 = 0;
            }

            v101 = objc_msgSend_threadsgroupMemoryLength(v134, v145, v146, v147, v148);
            printf("\tthreadgroupsPerGrid {%lu x %lu x %lu} threadsPerThreadgroup {%lu x %lu x %lu} totalThreads: %lu threadgroupMemoryLength: %lu\n", v97, v96, v98, v95, v99, v94, v100, v101);
            ++v93;
            self = selfCopy;
            v106 = objc_msgSend_allEncoders(selfCopy->_infoCapture, v102, v103, v104, v105);
            v6 = v121;
            v110 = objc_msgSend_objectAtIndexedSubscript_(v106, v107, v121, v108, v109);
            v115 = objc_msgSend_dispatches(v110, v111, v112, v113, v114);
          }

          while (v93 < objc_msgSend_count(v115, v116, v117, v118, v119));
        }
      }

      off_2814650E0("encoder: %lu cycle count: %f\n", v6, v43);
      v12 = off_2814650E0;
      v16 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v13, v6, v14, v15);
      objc_msgSend_standardDeviationOfMean(v16, v17, v18, v19, v20);
      v12("encoder: %lu cycle count standard deviation: %f\n", v6, v21 + v21);
      off_2814650E0("encoder: %lu time: %f ms\n", v6, v33 * 1000.0);
      v22 = off_2814650E0;
      v26 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v23, v6, v24, v25);
      objc_msgSend_standardDeviationOfMean(v26, v27, v28, v29, v30);
      v22("encoder: %lu time standard deviation: %f ms\n", v6, v31 + v31);
      off_2814650E0("Mean frequency %f GHz\n", v43 / v33 * 0.000000001);
      off_2814650E0("==============================================================================\n");
      if (++v6 == numberOfEncodersInCurrentWorkload)
      {
        break;
      }
    }
  }

  v181 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v3, numberOfEncodersInCurrentWorkload, v4, v5);
  objc_msgSend_mean(v181, v182, v183, v184, v185);
  v187 = v186;
  v191 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v188, numberOfEncodersInCurrentWorkload, v189, v190);
  objc_msgSend_mean(v191, v192, v193, v194, v195);
  v197 = v196;
  v201 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v198, numberOfEncodersInCurrentWorkload, v199, v200);
  objc_msgSend_mean(v201, v202, v203, v204, v205);
  if (self->_vendor == 3)
  {
    NSLog(&cfstr_NvidiaResetsTh.isa);
  }

  off_2814650E0("==============================================================================\n");
  v206 = off_2814650E0;
  v210 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v207, numberOfEncodersInCurrentWorkload, v208, v209);
  v215 = objc_msgSend_numberOfSamples(v210, v211, v212, v213, v214);
  v206("outer iterations : %lu inner iterations : %lu\n", v215 / self->_numEncodesPerCommandBuffer, self->_numEncodesPerCommandBuffer);
  off_2814650E0("Workload total with overhead cycle count: %f\n", v197);
  v216 = off_2814650E0;
  v220 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v217, numberOfEncodersInCurrentWorkload, v218, v219);
  objc_msgSend_standardDeviationOfMean(v220, v221, v222, v223, v224);
  v216("Workload total with overhead cycle count standard deviation: %f\n", v225 + v225);
  off_2814650E0("Workload total with overhead time: %f ms\n", v187 * 1000.0);
  v226 = off_2814650E0;
  v230 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v227, numberOfEncodersInCurrentWorkload, v228, v229);
  objc_msgSend_standardDeviationOfMean(v230, v231, v232, v233, v234);
  v226("Workload total with overhead time standard deviation: %f ms\n", v235 + v235);
  off_2814650E0("Mean frequency %f GHz\n", v197 / v187 * 0.000000001);
  off_2814650E0("==============================================================================\n\n");
  v239 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v236, numberOfEncodersInCurrentWorkload + 1, v237, v238);
  objc_msgSend_mean(v239, v240, v241, v242, v243);
  v245 = v244;
  v249 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v246, numberOfEncodersInCurrentWorkload + 1, v247, v248);
  objc_msgSend_mean(v249, v250, v251, v252, v253);
  v255 = v254;
  v259 = objc_msgSend_objectAtIndexedSubscript_(self->_extraCounterStatistics, v256, numberOfEncodersInCurrentWorkload + 1, v257, v258);
  objc_msgSend_mean(v259, v260, v261, v262, v263);
  off_2814650E0("Workload total Without overhead cycle count: %f\n", v255);
  v264 = off_2814650E0;
  v268 = objc_msgSend_objectAtIndexedSubscript_(self->_cycleCounterStatistics, v265, numberOfEncodersInCurrentWorkload + 1, v266, v267);
  objc_msgSend_standardDeviationOfMean(v268, v269, v270, v271, v272);
  v264("Workload total Without overhead cycle count standard deviation: %f\n", v273 + v273);
  off_2814650E0("Workload total Without overhead time: %f ms\n", v245 * 1000.0);
  v274 = off_2814650E0;
  v278 = objc_msgSend_objectAtIndexedSubscript_(self->_timingCounterStatistics, v275, numberOfEncodersInCurrentWorkload + 1, v276, v277);
  objc_msgSend_standardDeviationOfMean(v278, v279, v280, v281, v282);
  v274("Workload total Without overhead time standard deviation: %f ms\n", v283 + v283);
  off_2814650E0("Mean frequency %f GHz\n", v255 / v245 * 0.000000001);
  off_2814650E0("==============================================================================\n\n");
  v284 = off_2814650E0;
  inited = objc_msgSend_InitTime(self->_generalContainer, v285, v286, v287, v288);
  objc_msgSend_mean(inited, v290, v291, v292, v293);
  v295 = v294 * 1000.0;
  v300 = objc_msgSend_EncodeTime(self->_generalContainer, v296, v297, v298, v299);
  objc_msgSend_mean(v300, v301, v302, v303, v304);
  v306 = v305 * 1000.0;
  v311 = objc_msgSend_QueueTime(self->_generalContainer, v307, v308, v309, v310);
  objc_msgSend_mean(v311, v312, v313, v314, v315);
  v317 = v316 * 1000.0;
  v322 = objc_msgSend_WallClockTime(self->_generalContainer, v318, v319, v320, v321);
  objc_msgSend_mean(v322, v323, v324, v325, v326);
  v284("Counter Overhead involved :\n\nMean Init Time  : %f ms\nMean Encode Time: %f ms\nMean Queue Time: %f ms\nMean WallClock Time: %f ms\n", v295, v306, v317, v327 * 1000.0);
  if (self->_useInterposer)
  {
    v332 = off_2814650E0;
    v333 = objc_msgSend_numberOfDispatches(self->_infoCapture, v328, v329, v330, v331);
    v332("\nTotal number of dispatches = %lu\n", v333);
  }

  off_2814650E0("==============================================================================\n\n");
}

- (unint64_t)numberOfDispatches
{
  if (self->_useInterposer)
  {
    return objc_msgSend_numberOfDispatches(self->_infoCapture, a2, v2, v3, v4);
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  updateStatisticsSemaphore = self->_updateStatisticsSemaphore;
  if (updateStatisticsSemaphore)
  {
    dispatch_release(updateStatisticsSemaphore);
  }

  free(self->_metaDataContainer);

  free(self->_statsContainer);
  v4.receiver = self;
  v4.super_class = MPSCounterStatistics;
  [(MPSCounterStatistics *)&v4 dealloc];
}

@end