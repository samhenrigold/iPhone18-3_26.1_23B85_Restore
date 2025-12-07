@interface HAHermitNotificationAlgorithms
+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)measurements forDateInterval:(id)interval;
@end

@implementation HAHermitNotificationAlgorithms

+ (HAHypertensivePatternAnalysis)analyzeMeasurements:(id)measurements forDateInterval:(id)interval
{
  v64 = *MEMORY[0x277D85DE8];
  measurementsCopy = measurements;
  intervalCopy = interval;
  __src = 0;
  v54 = 0;
  v55 = 0;
  std::vector<HermitNotification::HSReport>::reserve(&__src, [measurementsCopy count]);
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v6 = measurementsCopy;
  value = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
  v8 = value;
  if (value)
  {
    v9 = *v50;
    do
    {
      v10 = 0;
      do
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v49 + 1) + 8 * v10);
        v12 = hws_get_hermit_log(value);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          [v11 value];
          v28 = v27;
          date = [v11 date];
          *buf = 134545923;
          v61 = v28;
          *v62 = 2114;
          *&v62[2] = date;
          _os_log_debug_impl(&dword_251282000, v12, OS_LOG_TYPE_DEBUG, "%{sensitive}lf on %{public}@", buf, 0x16u);
        }

        date2 = [v11 date];
        [date2 timeIntervalSince1970];
        v15 = v14;

        value = [v11 value];
        v17 = v16;
        v18 = v54;
        if (v54 >= v55)
        {
          v20 = __src;
          v21 = v54 - __src;
          v22 = (v54 - __src) >> 4;
          v23 = v22 + 1;
          if ((v22 + 1) >> 60)
          {
            std::vector<mimosa::OpticalSampleV1>::__throw_length_error[abi:ne200100]();
          }

          v24 = v55 - __src;
          if ((v55 - __src) >> 3 > v23)
          {
            v23 = v24 >> 3;
          }

          if (v24 >= 0x7FFFFFFFFFFFFFF0)
          {
            v25 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v25 = v23;
          }

          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<HermitNotification::HSReport>>(&__src, v25);
          }

          v26 = 16 * v22;
          *v26 = v15;
          *(v26 + 8) = v17;
          v19 = 16 * v22 + 16;
          memcpy(0, v20, v21);
          value = __src;
          __src = 0;
          v54 = v19;
          v55 = 0;
          if (value)
          {
            operator delete(value);
          }
        }

        else
        {
          *v54 = v15;
          *(v18 + 2) = v17;
          v19 = (v18 + 16);
        }

        v54 = v19;
        v10 = v10 + 1;
      }

      while (v8 != v10);
      value = [v6 countByEnumeratingWithState:&v49 objects:v63 count:16];
      v8 = value;
    }

    while (value);
  }

  HermitNotification::Processor::Processor(v48);
  startDate = [intervalCopy startDate];
  [startDate timeIntervalSince1970];
  v32 = v31;

  endDate = [intervalCopy endDate];
  [endDate timeIntervalSince1970];
  v35 = v34;

  v36 = HermitNotification::Processor::process(buf, v32, v35, v48, &__src);
  if (v62[4] == 1)
  {
    v58[0] = @"alert_status";
    v37 = [MEMORY[0x277CCABB0] numberWithInt:*buf];
    v59[0] = v37;
    v58[1] = @"num_scores";
    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*v62];
    v59[1] = v38;
    v58[2] = @"mean_score";
    LODWORD(v39) = v61;
    v40 = [MEMORY[0x277CCABB0] numberWithFloat:v39];
    v59[2] = v40;
    v58[3] = @"valid_score_days";
    v41 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:HIDWORD(v61)];
    v59[3] = v41;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
  }

  else
  {
    v42 = MEMORY[0x277CBEC10];
  }

  v43 = *buf;
  v44 = hws_get_hermit_log(v36);
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    *v56 = 67436801;
    v57 = v43 == 1;
    _os_log_impl(&dword_251282000, v44, OS_LOG_TYPE_DEFAULT, "Algs result: %{sensitive}u", v56, 8u);
  }

  HermitNotification::Processor::~Processor(v48);
  if (__src)
  {
    v54 = __src;
    operator delete(__src);
  }

  v45 = v42;
  v46 = v43 == 1;
  result.var1 = v46;
  result.var0 = v45;
  return result;
}

@end