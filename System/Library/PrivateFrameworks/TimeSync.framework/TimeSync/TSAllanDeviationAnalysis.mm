@interface TSAllanDeviationAnalysis
- (BOOL)exportAnalysisToDirectoryURL:(id)l withFilename:(id)filename fromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (NSArray)adev;
- (TSAllanDeviationAnalysis)initWithTimeErrorValues:(id)values;
- (id)adevFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)_performAnalysisFromWindowSize:(int64_t)size toWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize;
- (void)dealloc;
@end

@implementation TSAllanDeviationAnalysis

- (TSAllanDeviationAnalysis)initWithTimeErrorValues:(id)values
{
  v7.receiver = self;
  v7.super_class = TSAllanDeviationAnalysis;
  v3 = [(TSTimeErrorAnalysis *)&v7 initWithTimeErrorValues:values];
  v4 = v3;
  if (v3)
  {
    v5 = malloc_type_calloc([(TSTimeErrorAnalysis *)v3 numberOfErrors], 8uLL, 0x100004000313F17uLL);
    v4->_adev = v5;
    if (!v5)
    {

      return 0;
    }
  }

  return v4;
}

- (void)_performAnalysisFromWindowSize:(int64_t)size toWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  numberOfErrors = [(TSTimeErrorAnalysis *)self numberOfErrors];
  __B = [(TSTimeErrorAnalysis *)self timeErrors];
  v9 = malloc_type_malloc(8 * numberOfErrors, 0x100004000313F17uLL);
  [(TSTimeErrorAnalysis *)self averagePeriod];
  v11 = v10;
  [(TSTimeErrorAnalysis *)self averagePeriod];
  if (v9)
  {
    windowSizeCopy = windowSize;
    if (size <= windowSize)
    {
      v14 = v11 * v12;
      v15 = &__B[size];
      v16 = 2 * size;
      v17 = numberOfErrors - 2 * size;
      v18 = 2 * stepSize;
      v19 = &__B[2 * size];
      do
      {
        v20 = windowSizeCopy;
        vDSP_vsubD(v15, 1, v19, 1, v9, 1, v17);
        vDSP_vsubD(v15, 1, v9, 1, v9, 1, v17);
        vDSP_vaddD(v9, 1, __B, 1, v9, 1, v17);
        __C = 0.0;
        vDSP_svesqD(v9, 1, &__C, v17);
        windowSizeCopy = v20;
        self->_adev[size] = sqrt(__C / (v14 * (v16 * size) * v17));
        size += stepSize;
        v15 += stepSize;
        v17 -= v18;
        v19 += 2 * stepSize;
        v16 += v18;
      }

      while (size <= v20);
    }
  }

  free(v9);
}

- (NSArray)adev
{
  array = [MEMORY[0x277CBEB18] array];
  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    [(TSTimeErrorAnalysis *)self performAnalysis];
  }

  for (i = [(TSTimeErrorAnalysis *)self lowestWindowSize]; i <= [(TSTimeErrorAnalysis *)self highestWindowSize]; i += [(TSTimeErrorAnalysis *)self calculatedStepSize])
  {
    v5 = [TSADEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v6 = [TSADEVValue initWithObservationInterval:v5 andADEV:"initWithObservationInterval:andADEV:"];
    [array addObject:?];
  }

  return array;
}

- (id)adevFromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  array = [MEMORY[0x277CBEB18] array];
  if (size <= 2)
  {
    size = 2;
  }

  if ([(TSAllanDeviationAnalysis *)self analysisLimit]< windowSize)
  {
    windowSize = [(TSAllanDeviationAnalysis *)self analysisLimit];
  }

  if (![(TSTimeErrorAnalysis *)self calculated])
  {
    selfCopy2 = self;
LABEL_15:
    [TSTimeErrorAnalysis performAnalysisFromStartWindowSize:selfCopy2 toEndWindowSize:"performAnalysisFromStartWindowSize:toEndWindowSize:stepSize:" stepSize:?];
    goto LABEL_16;
  }

  if (size < [(TSTimeErrorAnalysis *)self lowestWindowSize]|| windowSize > [(TSTimeErrorAnalysis *)self highestWindowSize]|| [(TSTimeErrorAnalysis *)self calculatedStepSize]!= stepSize)
  {
    if (size >= [(TSTimeErrorAnalysis *)self lowestWindowSize])
    {
      [(TSTimeErrorAnalysis *)self lowestWindowSize];
    }

    if (windowSize <= [(TSTimeErrorAnalysis *)self highestWindowSize])
    {
      [(TSTimeErrorAnalysis *)self highestWindowSize];
    }

    selfCopy2 = self;
    goto LABEL_15;
  }

LABEL_16:
  while (size <= windowSize)
  {
    v11 = [TSADEVValue alloc];
    [(TSTimeErrorAnalysis *)self averagePeriod];
    v12 = [TSADEVValue initWithObservationInterval:v11 andADEV:"initWithObservationInterval:andADEV:"];
    [array addObject:?];

    size += stepSize;
  }

  return array;
}

- (BOOL)exportAnalysisToDirectoryURL:(id)l withFilename:(id)filename fromStartWindowSize:(int64_t)size toEndWindowSize:(int64_t)windowSize stepSize:(int64_t)stepSize
{
  lCopy = l;
  filenameCopy = filename;
  if ([lCopy isFileURL])
  {
    if (size <= 2)
    {
      size = 2;
    }

    if ([(TSAllanDeviationAnalysis *)self analysisLimit]< windowSize)
    {
      windowSize = [(TSAllanDeviationAnalysis *)self analysisLimit];
    }

    if (![(TSTimeErrorAnalysis *)self calculated]|| size < [(TSTimeErrorAnalysis *)self lowestWindowSize]|| windowSize > [(TSTimeErrorAnalysis *)self highestWindowSize]|| [(TSTimeErrorAnalysis *)self calculatedStepSize]!= stepSize)
    {
      [TSTimeErrorAnalysis performAnalysisFromStartWindowSize:"performAnalysisFromStartWindowSize:toEndWindowSize:stepSize:" toEndWindowSize:? stepSize:?];
    }

    path = [lCopy path];
    v15 = [path stringByAppendingPathComponent:?];

    v16 = fopen([v15 UTF8String], "w");
    v17 = v16 != 0;
    if (v16)
    {
      v18 = v16;
      fwrite("window size,observation interval,adev\n", 0x26uLL, 1uLL, v16);
      for (; size < windowSize; size += stepSize)
      {
        [(TSTimeErrorAnalysis *)self averagePeriod];
        fprintf(v18, "%ld,%.9f,%.18f\n", size, v19 * size / 1000000000.0, self->_adev[size]);
      }

      fclose(v18);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)dealloc
{
  free(self->_adev);
  v3.receiver = self;
  v3.super_class = TSAllanDeviationAnalysis;
  [(TSTimeErrorAnalysis *)&v3 dealloc];
}

@end