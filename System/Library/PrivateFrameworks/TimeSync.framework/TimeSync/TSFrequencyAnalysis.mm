@interface TSFrequencyAnalysis
- (TSFrequencyAnalysis)initWithTimeErrorValues:(id)values;
@end

@implementation TSFrequencyAnalysis

- (TSFrequencyAnalysis)initWithTimeErrorValues:(id)values
{
  v37 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  v36.receiver = self;
  v36.super_class = TSFrequencyAnalysis;
  v5 = [(TSFrequencyAnalysis *)&v36 init];
  if (v5)
  {
    v6 = [valuesCopy count];
    v7 = v6 - 1;
    if (v6 < 1)
    {

      v5 = 0;
    }

    else
    {
      v8 = v6;
      v9 = malloc_type_calloc(v6, 8uLL, 0x100004000313F17uLL);
      v10 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
      v11 = malloc_type_calloc(v8, 8uLL, 0x100004000313F17uLL);
      v12 = v11;
      if (v11 && v9 && v10)
      {
        v29 = v7;
        v30 = v11;
        v13 = [valuesCopy objectAtIndexedSubscript:?];
        timestamp = [v13 timestamp];

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = valuesCopy;
        v15 = valuesCopy;
        v16 = [v15 countByEnumeratingWithState:? objects:? count:?];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v33;
          do
          {
            for (i = 0; i != v17; i = (i + 1))
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v15);
              }

              v21 = *(*(&v32 + 1) + 8 * i);
              v9[v18] = ([v21 timestamp] - timestamp);
              v10[v18++] = [v21 error];
            }

            v17 = [v15 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v17);
        }

        v12 = v30;
        vDSP_vsubD(v9, 1, v9 + 1, 1, v30, 1, v29);
        vDSP_meanvD(v30, 1, &v5->_averagePeriod, v29);
        averagePeriod = v5->_averagePeriod;
        v5->_averageFrequency = 1000000000.0 / averagePeriod;
        __asm { FMOV            V2.2D, #2.0 }

        _Q2.f64[0] = v29;
        *&v5->_lowestFrequency = vdivq_f64(vdupq_n_s64(0x41CDCD6500000000uLL), vmulq_n_f64(_Q2, averagePeriod));
        valuesCopy = v31;
      }

      else
      {

        v5 = 0;
      }

      free(v9);
      free(v10);
      free(v12);
    }
  }

  return v5;
}

@end