@interface HABloodOxygenCalculator
+ (HABloodOxygenAnalysis)analyzeBloodOxygenFromRawData:(SEL)data withPressureInKilopascals:(id)kilopascals;
+ (id)calculateBloodOxygenFromRawData:(id)data;
- (HABloodOxygenAnalysis)runBloodOxygenAnalysisFromRawData:(SEL)data withPressureInKilopascals:(id)kilopascals;
- (id)calculateBloodOxygenFromRawData:(id)data;
- (void)finalizeAnalytics:(const SCAnalytics *)analytics timestamp:(double)timestamp;
- (void)handleAbort:(unsigned __int8)abort withAnalytics:(const SCAnalytics *)analytics atTimestamp:(double)timestamp;
- (void)handleResult:(const SCResult *)result withAnalytics:(const SCAnalytics *)analytics atTimestamp:(double)timestamp;
@end

@implementation HABloodOxygenCalculator

+ (id)calculateBloodOxygenFromRawData:(id)data
{
  v10 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = ha_diagnostic_log(dataCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136446210;
    v9 = "+[HABloodOxygenCalculator calculateBloodOxygenFromRawData:]";
    _os_log_impl(&dword_251282000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v8, 0xCu);
  }

  v5 = objc_opt_new();
  v6 = [v5 calculateBloodOxygenFromRawData:dataCopy];

  return v6;
}

+ (HABloodOxygenAnalysis)analyzeBloodOxygenFromRawData:(SEL)data withPressureInKilopascals:(id)kilopascals
{
  v16 = *MEMORY[0x277D85DE8];
  kilopascalsCopy = kilopascals;
  v8 = a5;
  v9 = ha_diagnostic_log(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14) = 136446210;
    *(&v14 + 4) = "+[HABloodOxygenCalculator analyzeBloodOxygenFromRawData:withPressureInKilopascals:]";
    _os_log_impl(&dword_251282000, v9, OS_LOG_TYPE_DEFAULT, "%{public}s", &v14, 0xCu);
  }

  v10 = objc_opt_new();
  v11 = v10;
  retstr->measurement = 0;
  *&retstr->background = 0;
  retstr->coreAnalytics = 0;
  if (v10)
  {
    objc_msgSend_runBloodOxygenAnalysisFromRawData_withPressureInKilopascals_(v10);
    v12 = v14;
  }

  else
  {
    v12 = 0;
    *(&v14 + 1) = 0;
    v15 = 0;
  }

  retstr->measurement = v12;
  retstr->background = BYTE8(v14);
  retstr->coreAnalytics = v15;

  return result;
}

- (HABloodOxygenAnalysis)runBloodOxygenAnalysisFromRawData:(SEL)data withPressureInKilopascals:(id)kilopascals
{
  v8 = a5;
  kilopascalsCopy = kilopascals;
  v10 = ha_diagnostic_log(kilopascalsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(HABloodOxygenCalculator *)v8 runBloodOxygenAnalysisFromRawData:v10 withPressureInKilopascals:v11, v12, v13, v14, v15, v16];
  }

  pressure = self->_pressure;
  self->_pressure = v8;
  v18 = v8;

  v19 = [(HABloodOxygenCalculator *)self calculateBloodOxygenFromRawData:kilopascalsCopy];

  measurement = self->_measurement;
  self->_measurement = v19;

  objc_storeStrong(&self->_analysis.measurement, self->_measurement);
  retstr->measurement = self->_analysis.measurement;
  retstr->background = self->_analysis.background;
  v21 = self->_analysis.coreAnalytics;

  retstr->coreAnalytics = v21;
  return result;
}

- (id)calculateBloodOxygenFromRawData:(id)data
{
  v54 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (!ScandiumLibraryCore(0) || (v45 = 0, [dataCopy length] < 2) || (objc_msgSend(dataCopy, "getBytes:range:", &v45, 0, 2), v45 != 5))
  {
    v32 = 0;
    goto LABEL_32;
  }

  memset(v44, 0, sizeof(v44));
  self->_bootTime = 0.0;
  scandiumProcessor = self->_scandiumProcessor;
  self->_scandiumProcessor = 0;

  if ([dataCopy length] >= 3)
  {
    v6 = 0;
    v7 = 2;
    while (1)
    {
      v43 = 0;
      v8 = v7 + 4;
      if (v7 + 4 > [dataCopy length])
      {
        goto LABEL_40;
      }

      [dataCopy getBytes:&v43 range:{v7, 4}];
      v9 = HIWORD(v43);
      v7 = v8 + v9;
      if (v8 + v9 > [dataCopy length])
      {
        goto LABEL_40;
      }

      v10 = [dataCopy subdataWithRange:{v8, v9}];
      v11 = ha_diagnostic_log(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v30 = v43;
        v31 = [v10 length];
        *buf = 67109376;
        *&buf[4] = v30;
        LOWORD(v51) = 2048;
        *(&v51 + 2) = v31;
        _os_log_debug_impl(&dword_251282000, v11, OS_LOG_TYPE_DEBUG, "LP5 ID %u: %zu bytes", buf, 0x12u);
      }

      if (v43 <= 0x112u)
      {
        if (v43 == 205)
        {
          if ([v10 length] != 20)
          {
            goto LABEL_39;
          }

          [v10 getBytes:v44 length:20];
          if (*&v44[8] != 24000000)
          {
            goto LABEL_39;
          }

          self->_bootTime = *&v44[12] + *v44 / -24000000.0;
          self->_ticksPerSecond = 24000000;
        }

        else if (v43 == 214)
        {
          v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v10 encoding:4];

          v6 = v27;
        }
      }

      else if (v43 == 275)
      {
        v28 = self->_scandiumProcessor;
        if (!v28)
        {
          goto LABEL_39;
        }

        v29 = v10;
        -[SCProcessor processPacket:ofLength:](v28, "processPacket:ofLength:", [v10 bytes], objc_msgSend(v10, "length"));
      }

      else if (v43 == 276 || v43 == 284)
      {
        if (self->_scandiumProcessor || !v6 || !*&v44[8])
        {
          goto LABEL_39;
        }

        v46 = 0;
        v47 = &v46;
        v48 = 0x2050000000;
        v19 = getSCProcessorClass_softClass;
        v49 = getSCProcessorClass_softClass;
        if (!getSCProcessorClass_softClass)
        {
          *buf = MEMORY[0x277D85DD0];
          *&v51 = 3221225472;
          *(&v51 + 1) = __getSCProcessorClass_block_invoke;
          v52 = &unk_2796B3C20;
          v53 = &v46;
          __getSCProcessorClass_block_invoke(buf, v12, v13, v14, v15, v16, v17, v18, v42);
          v19 = v47[3];
        }

        v20 = v19;
        _Block_object_dispose(&v46, 8);
        v21 = [v19 alloc];
        v22 = v10;
        bytes = [v10 bytes];
        v24 = [v10 length];
        v42 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_bootTime];
        v25 = [v21 initWithStartPacket:bytes ofLength:v24 delegate:self withSignalQualityMetricsEnabled:1 bypassingAlgorithms:0 forWindbreaker:0 bootDate:? hardwareModel:?];
        v26 = self->_scandiumProcessor;
        self->_scandiumProcessor = v25;

        if (!self->_scandiumProcessor)
        {
LABEL_39:

          goto LABEL_40;
        }
      }

      if (v7 >= [dataCopy length])
      {
        goto LABEL_36;
      }
    }
  }

  v6 = 0;
LABEL_36:
  if (!self->_measurement || !*&v44[8])
  {
LABEL_40:
    v32 = 0;
    goto LABEL_41;
  }

  v34 = MEMORY[0x277CBEAA8];
  p_scandiumProcessor = &self->_scandiumProcessor;
  bootTime = self->_bootTime;
  startTimestamp = [(SCProcessor *)self->_scandiumProcessor startTimestamp];
  LODWORD(v38) = *&v44[8];
  v39 = [v34 dateWithTimeIntervalSinceReferenceDate:bootTime + startTimestamp / v38];
  measurement = self->_measurement;
  p_measurement = &self->_measurement;
  [(HABloodOxygenMeasurement *)measurement setDate:v39];

  [(HABloodOxygenMeasurement *)*p_measurement setBackground:[(SCProcessor *)*p_scandiumProcessor forBackground]];
  v32 = *p_measurement;
LABEL_41:

LABEL_32:

  return v32;
}

- (void)finalizeAnalytics:(const SCAnalytics *)analytics timestamp:(double)timestamp
{
  v51 = *MEMORY[0x277D85DE8];
  p_scandiumProcessor = &self->_scandiumProcessor;
  self->_analysis.background = [(SCProcessor *)self->_scandiumProcessor forBackground];
  if (analytics)
  {
    v8 = [(SCProcessor *)*p_scandiumProcessor dictionaryForAnalytics:analytics sessionDuration:@"notApplicable" systemInterface:timestamp];
    v9 = [v8 mutableCopy];

    if (v9)
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInt:{-[NSNumber intValue](self->_pressure, "intValue")}];
      [v9 setObject:v11 forKeyedSubscript:@"barometricPressure"];

      v13 = ha_diagnostic_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        bootTime = self->_bootTime;
        startTimestamp = [(SCProcessor *)self->_scandiumProcessor startTimestamp];
        ticksPerSecond = self->_ticksPerSecond;
        *buf = 134218752;
        v44 = bootTime;
        v45 = 2048;
        v46 = startTimestamp;
        v47 = 1024;
        v48 = ticksPerSecond;
        v49 = 2048;
        timestampCopy = timestamp;
        _os_log_impl(&dword_251282000, v13, OS_LOG_TYPE_DEFAULT, "bootTime: %f, sessionStartTime %llu, ticksPerSecond: %d, sessionDuration: %f", buf, 0x26u);
      }

      v17 = self->_bootTime;
      startTimestamp2 = [(SCProcessor *)self->_scandiumProcessor startTimestamp];
      LODWORD(v19) = self->_ticksPerSecond;
      v20 = v17 + startTimestamp2 / v19 + timestamp;
      if (!self->_analysis.background)
      {
        v21 = [MEMORY[0x277CCABB0] numberWithLong:llround(v20)];
        [v9 setObject:v21 forKeyedSubscript:@"CFAbsoluteTimeRounded"];
      }

      v22 = MEMORY[0x277CCABB0];
      v23 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:v20];
      v24 = ha_diagnostic_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        [(HABloodOxygenCalculator *)v23 finalizeAnalytics:v24 timestamp:v20];
      }

      v25 = objc_alloc(MEMORY[0x277CBEA80]);
      v26 = [v25 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
      localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
      [v26 setTimeZone:localTimeZone];

      v28 = [v26 component:32 fromDate:v23];
      v29 = [v22 numberWithInteger:v28];
      [v9 setObject:v29 forKeyedSubscript:@"hourOfDay"];

      objc_storeStrong(&self->_analysis.coreAnalytics, v9);
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      LOBYTE(v29) = [mEMORY[0x277D262A0] isHealthDataSubmissionAllowed];

      if ((v29 & 1) == 0)
      {
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v31 = [&unk_286357588 countByEnumeratingWithState:&v38 objects:v42 count:16];
        if (v31)
        {
          v32 = v31;
          v33 = *v39;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v39 != v33)
              {
                objc_enumerationMutation(&unk_286357588);
              }

              v35 = *(*(&v38 + 1) + 8 * i);
              v36 = [v9 objectForKeyedSubscript:v35];

              if (v36)
              {
                [v9 setObject:&unk_2863575A0 forKeyedSubscript:v35];
              }
            }

            v32 = [&unk_286357588 countByEnumeratingWithState:&v38 objects:v42 count:16];
          }

          while (v32);
        }
      }
    }

    else
    {
      v37 = ha_diagnostic_log(v10);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        [(HABloodOxygenCalculator *)analytics finalizeAnalytics:v37 timestamp:?];
      }
    }
  }
}

- (void)handleAbort:(unsigned __int8)abort withAnalytics:(const SCAnalytics *)analytics atTimestamp:(double)timestamp
{
  v8 = ha_diagnostic_log(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [(HABloodOxygenCalculator *)v8 handleAbort:v9 withAnalytics:v10 atTimestamp:v11, v12, v13, v14, v15];
  }

  [(HABloodOxygenCalculator *)self finalizeAnalytics:analytics timestamp:timestamp];
}

- (void)handleResult:(const SCResult *)result withAnalytics:(const SCAnalytics *)analytics atTimestamp:(double)timestamp
{
  v9 = ha_diagnostic_log(self);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(HABloodOxygenCalculator *)v9 handleResult:v10 withAnalytics:v11 atTimestamp:v12, v13, v14, v15, v16];
  }

  v17 = objc_opt_new();
  measurement = self->_measurement;
  self->_measurement = v17;

  *&v19 = result->var0;
  [(HABloodOxygenMeasurement *)self->_measurement setOxygenSaturationPercentage:v19];
  *&v20 = result->var1;
  [(HABloodOxygenMeasurement *)self->_measurement setAverageHeartRate:v20];
  [(HABloodOxygenCalculator *)self finalizeAnalytics:analytics timestamp:timestamp];
}

- (void)runBloodOxygenAnalysisFromRawData:(uint64_t)a3 withPressureInKilopascals:(uint64_t)a4 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_251282000, a2, a3, "pressureInKilopascals: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)finalizeAnalytics:(double)a3 timestamp:.cold.1(uint64_t a1, NSObject *a2, double a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 134218242;
  v4 = a3;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_251282000, a2, OS_LOG_TYPE_DEBUG, "sessionEndTime: %f, sessionEndDate:  %{public}@", &v3, 0x16u);
}

- (void)finalizeAnalytics:(NSObject *)a3 timestamp:.cold.2(uint64_t a1, id *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 208);
  v5 = [*a2 forBackground];
  v6 = "foreground";
  if (v5)
  {
    v6 = "background";
  }

  v7 = 138543618;
  v8 = v4;
  v9 = 2082;
  v10 = v6;
  _os_log_fault_impl(&dword_251282000, a3, OS_LOG_TYPE_FAULT, "coreAnalytics is nil. analytics->is_complete: %{public}@ self.processor.forBackground: %{public}s", &v7, 0x16u);
}

- (void)handleAbort:(uint64_t)a3 withAnalytics:(uint64_t)a4 atTimestamp:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[HABloodOxygenCalculator handleAbort:withAnalytics:atTimestamp:]";
  OUTLINED_FUNCTION_0(&dword_251282000, a1, a3, "%{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)handleResult:(uint64_t)a3 withAnalytics:(uint64_t)a4 atTimestamp:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[HABloodOxygenCalculator handleResult:withAnalytics:atTimestamp:]";
  OUTLINED_FUNCTION_0(&dword_251282000, a1, a3, "%{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end