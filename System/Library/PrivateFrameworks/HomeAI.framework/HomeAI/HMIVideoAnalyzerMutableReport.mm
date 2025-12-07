@interface HMIVideoAnalyzerMutableReport
+ (NSDictionary)systemDeviceInformation;
+ (id)chartSpecWithRange:(CGRect)range colors:(id)colors labels:(id)labels;
+ (id)greedyMatchBetweenPredictionEvents:(id)events truthEvents:(id)truthEvents falsePositiveIndices:(id)indices falseNegativeIndices:(id)negativeIndices eventClass:(Class)class regionOfInterest:(CGRect)interest confidenceThreshold:(float)threshold scoreThreshold:(float)self0 scoreFunction:(id)self1;
+ (void)sihouetteScoreForMatches:(id)matches previousMatches:(id)previousMatches truePositiveScores:(id)scores falsePositiveScores:(id)positiveScores falseNegativeScores:(id)negativeScores;
+ (void)writeImageCropFromFrame:(id)frame events:(id)events outputPath:(id)path source:(id)source;
+ (void)writeJSONChartData:(id)data outputPath:(id)path;
- (HMIVideoAnalyzerMutableReport)initWithCoder:(id)coder;
- (HMIVideoAnalyzerMutableReport)initWithData:(id)data error:(id *)error;
- (HMIVideoAnalyzerMutableReport)initWithName:(id)name;
- (NSData)data;
- (NSSet)eventClasses;
- (id)averagePrecisionForMinPrecision:(float)precision comparator:(id)comparator;
- (id)averagePrecisionWithClassificationTruth:(id)truth minPrecision:(float)precision;
- (id)averagePrecisionWithDetectionTruth:(id)truth minPrecision:(float)precision iouThreshold:(float)threshold videoMetric:(BOOL)metric;
- (id)chartDataWithBaseline:(BOOL)baseline comparator:(id)comparator;
- (id)chartDataWithClassificationTruth:(id)truth isBaseline:(BOOL)baseline;
- (id)chartDataWithDetectionTruth:(id)truth isBaseline:(BOOL)baseline iouThreshold:(float)threshold videoMetric:(BOOL)metric;
- (id)compareWithClassificationTruth:(id)truth eventClass:(Class)class confidenceThreshold:(float)threshold;
- (id)compareWithDetectionTruth:(id)truth eventClass:(Class)class confidenceThreshold:(float)threshold iouThreshold:(float)iouThreshold videoMetric:(BOOL)metric;
- (id)compareWithTrackingTruth:(id)truth eventClass:(Class)class confidenceThreshold:(float)threshold ioaThreshold:(float)ioaThreshold;
- (id)selectFramesWithRecord:(id)record truth:(id)truth frameResults:(id)results;
- (id)truthReportFromLegacyClassificationFormat:(id)format;
- (id)truthReportFromLegacyDetectionFormat:(id)format;
- (void)appendFragmentResult:(id)result forKey:(id)key source:(id)source redactFrames:(BOOL)frames;
- (void)appendFragmentResultsFromReport:(id)report;
- (void)encodeWithCoder:(id)coder;
- (void)writeFragmentFileComparison:(id)comparison eventClass:(Class)class outputPath:(id)path;
- (void)writeHTMLReportComparison:(id)comparison truth:(id)truth eventClass:(Class)class comparisonType:(id)type assetPath:(id)path outputPath:(id)outputPath limit:(unint64_t)limit shuffle:(BOOL)self0;
- (void)writeImageCropForEventClass:(Class)class outputPath:(id)path assetPath:(id)assetPath;
@end

@implementation HMIVideoAnalyzerMutableReport

- (HMIVideoAnalyzerMutableReport)initWithName:(id)name
{
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = HMIVideoAnalyzerMutableReport;
  v5 = [(HMIVideoAnalyzerMutableReport *)&v13 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    name = v5->_name;
    v5->_name = v6;

    v5->_version = 2;
    systemDeviceInformation = [objc_opt_class() systemDeviceInformation];
    deviceInformation = v5->_deviceInformation;
    v5->_deviceInformation = systemDeviceInformation;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessions = v5->_sessions;
    v5->_sessions = dictionary;
  }

  return v5;
}

- (HMIVideoAnalyzerMutableReport)initWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x277CCAAC8];
  dataCopy = data;
  objc_opt_class();
  v7 = [v5 unarchivedObjectOfClass:? fromData:? error:?];

  return v7;
}

- (void)appendFragmentResult:(id)result forKey:(id)key source:(id)source redactFrames:(BOOL)frames
{
  keyCopy = key;
  sourceCopy = source;
  resultCopy = result;
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v12 = [sessions objectForKeyedSubscript:?];

  if (!v12)
  {
    v13 = [[HMIVideoAnalyzerMutableReportSession alloc] initWithSource:?];
    sessions2 = [(HMIVideoAnalyzerMutableReport *)self sessions];
    [sessions2 setObject:? forKeyedSubscript:?];
  }

  sessions3 = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v16 = [sessions3 objectForKeyedSubscript:?];
  [v16 appendFragmentResult:? redactFrames:?];
}

- (void)appendFragmentResultsFromReport:(id)report
{
  reportCopy = report;
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  sessions2 = [reportCopy sessions];

  [sessions addEntriesFromDictionary:?];
}

- (NSSet)eventClasses
{
  v3 = [MEMORY[0x277CBEB58] set];
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v8 = v3;
  v5 = v3;
  [sessions na_each:?];

  v6 = [v5 copy];

  return v6;
}

void __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 fragments];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_2;
  v8 = &unk_2787535A0;
  v9 = *(a1 + 32);
  [v4 na_each:?];
}

void __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 events];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_3;
  v7 = &unk_2787527D0;
  v8 = *(a1 + 32);
  [v3 na_each:?];
}

void __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 allEvents];
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_4;
  v7 = &unk_2787527D0;
  v8 = *(a1 + 32);
  [v3 na_each:?];
}

void *__45__HMIVideoAnalyzerMutableReport_eventClasses__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  objc_opt_class();

  return [v2 addObject:?];
}

- (id)averagePrecisionForMinPrecision:(float)precision comparator:(id)comparator
{
  comparatorCopy = comparator;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = +[HMIVideoAnalyzerEvent eventClassesArray];
  v11 = comparatorCopy;
  v10 = dictionary;
  v7 = comparatorCopy;
  [v6 na_each:?];

  v8 = v10;
  return v10;
}

void __76__HMIVideoAnalyzerMutableReport_averagePrecisionForMinPrecision_comparator___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = 0.0;
  v4 = 1.0;
  v5 = 0.0;
  v6 = 0.0;
  do
  {
    v7 = (*(*(a1 + 40) + 16))(v6);
    [v7 precision];
    if (v8 >= v5)
    {
      [v7 recall];
      if (v9 <= v4)
      {
        [v7 precision];
        if (v10 > *(a1 + 48))
        {
          [v7 recall];
          v12 = (v4 + v11) * 0.5;
          [v7 precision];
          v14 = *(a1 + 48);
          v15 = v13 - fmax(v5, v14);
          v3 = (v12 * v15) / (1.0 - v14) + v3;
        }

        [v7 precision];
        v5 = v16;
        [v7 recall];
        v4 = v17;
      }
    }

    v6 = v6 + 0.01;
  }

  while (v6 <= 1.0);
  v18 = [MEMORY[0x277CCABB0] numberWithFloat:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

- (id)averagePrecisionWithClassificationTruth:(id)truth minPrecision:(float)precision
{
  truthCopy = truth;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __86__HMIVideoAnalyzerMutableReport_averagePrecisionWithClassificationTruth_minPrecision___block_invoke;
  v13 = &unk_278753618;
  selfCopy = self;
  v15 = truthCopy;
  v6 = truthCopy;
  v7 = MEMORY[0x2318CB8E0](&v10);
  selfCopy = [(HMIVideoAnalyzerMutableReport *)self averagePrecisionForMinPrecision:v10 comparator:v11, v12, v13, selfCopy];

  return selfCopy;
}

- (id)averagePrecisionWithDetectionTruth:(id)truth minPrecision:(float)precision iouThreshold:(float)threshold videoMetric:(BOOL)metric
{
  truthCopy = truth;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __106__HMIVideoAnalyzerMutableReport_averagePrecisionWithDetectionTruth_minPrecision_iouThreshold_videoMetric___block_invoke;
  v14[3] = &unk_278753640;
  v14[4] = self;
  v15 = truthCopy;
  thresholdCopy = threshold;
  metricCopy = metric;
  v10 = truthCopy;
  v11 = MEMORY[0x2318CB8E0](v14);
  v12 = [HMIVideoAnalyzerMutableReport averagePrecisionForMinPrecision:"averagePrecisionForMinPrecision:comparator:" comparator:?];

  return v12;
}

- (id)chartDataWithBaseline:(BOOL)baseline comparator:(id)comparator
{
  comparatorCopy = comparator;
  array = [MEMORY[0x277CBEB18] array];
  v6 = 1.0;
  do
  {
    v7 = +[HMIVideoAnalyzerEvent eventClassesArray];
    v8 = comparatorCopy;
    v9 = array;
    [v7 na_each:?];

    v6 = v6 + -0.01;
  }

  while (v6 >= 0.0);

  return v9;
}

void __66__HMIVideoAnalyzerMutableReport_chartDataWithBaseline_comparator___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (*(*(a1 + 40) + 16))(*(a1 + 48));
  [v3 precision];
  if (v4 != 0.0 || ([v3 recall], v5 != 0.0))
  {
    v6 = (*(a1 + 48) * 100.0) % 10;
    v7 = *(a1 + 32);
    v8 = MEMORY[0x277CCABB0];
    [v3 precision];
    v9 = [v8 numberWithFloat:?];
    v10 = MEMORY[0x277CCABB0];
    [v3 recall];
    v11 = [v10 numberWithFloat:?];
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    if (v6)
    {
      v13 = &stru_284057FB8;
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 48)];
    }

    v14 = [HMIVideoAnalyzerEvent shortNameForEventClass:?];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v7 addObject:?];

    if (!v6)
    {
    }
  }
}

- (id)chartDataWithClassificationTruth:(id)truth isBaseline:(BOOL)baseline
{
  truthCopy = truth;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __77__HMIVideoAnalyzerMutableReport_chartDataWithClassificationTruth_isBaseline___block_invoke;
  v13 = &unk_278753618;
  selfCopy = self;
  v15 = truthCopy;
  v6 = truthCopy;
  v7 = MEMORY[0x2318CB8E0](&v10);
  selfCopy = [(HMIVideoAnalyzerMutableReport *)self chartDataWithBaseline:v10 comparator:v11, v12, v13, selfCopy];

  return selfCopy;
}

- (id)chartDataWithDetectionTruth:(id)truth isBaseline:(BOOL)baseline iouThreshold:(float)threshold videoMetric:(BOOL)metric
{
  truthCopy = truth;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __97__HMIVideoAnalyzerMutableReport_chartDataWithDetectionTruth_isBaseline_iouThreshold_videoMetric___block_invoke;
  v14[3] = &unk_278753640;
  v14[4] = self;
  v15 = truthCopy;
  thresholdCopy = threshold;
  metricCopy = metric;
  v10 = truthCopy;
  v11 = MEMORY[0x2318CB8E0](v14);
  v12 = [HMIVideoAnalyzerMutableReport chartDataWithBaseline:"chartDataWithBaseline:comparator:" comparator:?];

  return v12;
}

- (NSData)data
{
  v4 = 0;
  v2 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:? requiringSecureCoding:? error:?];

  return v2;
}

+ (NSDictionary)systemDeviceInformation
{
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithContentsOfFile:?];
  v3 = MGCopyAnswer();
  [v2 setObject:? forKeyedSubscript:?];

  v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:?];
  infoDictionary = [v4 infoDictionary];
  v6 = *MEMORY[0x277CBED58];
  v7 = [infoDictionary objectForKeyedSubscript:?];
  [v2 setObject:? forKeyedSubscript:?];

  v8 = MEMORY[0x277CCABB0];
  HMIIsDebug();
  v9 = [v8 numberWithBool:?];
  [v2 setObject:? forKeyedSubscript:?];

  return v2;
}

- (id)truthReportFromLegacyClassificationFormat:(id)format
{
  formatCopy = format;
  v5 = [[HMIVideoAnalyzerMutableReport alloc] initWithName:?];
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v11 = MEMORY[0x277D85DD0];
  v12 = formatCopy;
  v7 = formatCopy;
  v8 = [sessions na_dictionaryByMappingValues:{v11, 3221225472, __75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke, &unk_2787536D8}];

  sessions2 = [(HMIVideoAnalyzerMutableReport *)v5 sessions];
  [sessions2 addEntriesFromDictionary:?];

  return v5;
}

HMIVideoAnalyzerMutableReportSession *__75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = v6;
  v9 = [v7 na_firstObjectPassingTest:?];
  if (v9)
  {
    v10 = [v8 fragments];
    v11 = [v10 firstObject];

    v31 = [v9 objectForKeyedSubscript:?];
    v30 = [v31 na_map:?];
    v12 = [HMIVideoAnalyzerFragmentResult alloc];
    v13 = [v11 fragment];
    v14 = [MEMORY[0x277CBEB98] setWithArray:?];
    v15 = [v11 configuration];
    [v11 outcome];
    v17 = v16 = v5;
    v18 = v9;
    v19 = [HMIVideoAnalyzerFragmentResult initWithFragment:v12 events:"initWithFragment:events:frameResults:thumbnails:configuration:outcome:" frameResults:? thumbnails:? configuration:? outcome:?];

    v20 = [HMIVideoAnalyzerMutableReportSession alloc];
    v21 = [v8 source];
    v22 = v20;
    v5 = v16;
    v23 = [(HMIVideoAnalyzerMutableReportSession *)v22 initWithSource:?];

    [HMIVideoAnalyzerMutableReportSession appendFragmentResult:v23 redactFrames:"appendFragmentResult:redactFrames:"];
    v9 = v18;
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    v25 = *(a1 + 40);
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      v28 = [v8 source];
      *buf = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = v28;
      _os_log_impl(&dword_22D12F000, v26, OS_LOG_TYPE_ERROR, "%{public}@Cannot find ground truth for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v23 = 0;
  }

  return v23;
}

void *__75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:?];
  v4 = [*(a1 + 32) source];
  v5 = [v3 isEqual:?];

  return v5;
}

void *__75__HMIVideoAnalyzerMutableReport_truthReportFromLegacyClassificationFormat___block_invoke_228(uint64_t a1, uint64_t a2)
{
  v2 = objc_alloc([HMIVideoAnalyzerEvent eventClassForShortName:?]);
  v3 = [HMIConfidence initWithValue:"initWithValue:levelThresholds:" levelThresholds:?];
  v4 = [v2 initWithConfidence:? boundingBox:?];

  return v4;
}

- (id)truthReportFromLegacyDetectionFormat:(id)format
{
  formatCopy = format;
  v5 = [[HMIVideoAnalyzerMutableReport alloc] initWithName:?];
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v11 = MEMORY[0x277D85DD0];
  v12 = formatCopy;
  v7 = formatCopy;
  v8 = [sessions na_dictionaryByMappingValues:{v11, 3221225472, __70__HMIVideoAnalyzerMutableReport_truthReportFromLegacyDetectionFormat___block_invoke, &unk_2787536D8}];

  sessions2 = [(HMIVideoAnalyzerMutableReport *)v5 sessions];
  [sessions2 addEntriesFromDictionary:?];

  return v5;
}

HMIVideoAnalyzerMutableReportSession *__70__HMIVideoAnalyzerMutableReport_truthReportFromLegacyDetectionFormat___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v6 source];
  v9 = [v7 objectForKeyedSubscript:?];

  if (v9)
  {
    v40 = v5;
    v38 = v9;
    v10 = [[HMIVideoAnnotationParser alloc] initWithArray:?];
    v39 = v6;
    v11 = [v6 fragments];
    v12 = [v11 firstObject];

    v37 = v12;
    v13 = [v12 frameResults];
    v14 = [MEMORY[0x277CBEB18] array];
    [v13 count];
    v15 = 0;
    do
    {
      if (v15 >= [v13 count])
      {
        v18 = [HMIVideoFrame alloc];
        v16 = [MEMORY[0x277CBEA90] data];
        if (v10)
        {
          [(uint8_t *)buf lastKnownTimeStamp];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        v17 = [HMIVideoFrame initWithJPEGData:v18 size:"initWithJPEGData:size:presentationTimeStamp:" presentationTimeStamp:?];
      }

      else
      {
        v16 = [v13 objectAtIndexedSubscript:?];
        v17 = [v16 frame];
      }

      v19 = v17;

      if (v19)
      {
        [(uint8_t *)buf presentationTimeStamp];
      }

      else
      {
        memset(buf, 0, sizeof(buf));
      }

      v20 = [(HMIVideoAnnotationParser *)v10 eventsForTimeStamp:?];
      v21 = [HMIVideoAnalyzerFrameResult initWithFrame:"initWithFrame:events:regionOfInterest:" events:? regionOfInterest:?];
      [v14 addObject:?];

      ++v15;
    }

    while ([v13 count] > v15);
    v22 = [(HMIVideoAnnotationParser *)v10 eventsForFragment];
    v23 = [HMIVideoAnalyzerFragmentResult alloc];
    v24 = [v37 fragment];
    v25 = [v37 configuration];
    v26 = [v37 outcome];
    v27 = [HMIVideoAnalyzerFragmentResult initWithFragment:v23 events:"initWithFragment:events:frameResults:thumbnails:configuration:outcome:" frameResults:? thumbnails:? configuration:? outcome:?];

    v28 = [HMIVideoAnalyzerMutableReportSession alloc];
    v6 = v39;
    v29 = [v39 source];
    v30 = [(HMIVideoAnalyzerMutableReportSession *)v28 initWithSource:?];

    [HMIVideoAnalyzerMutableReportSession appendFragmentResult:v30 redactFrames:"appendFragmentResult:redactFrames:"];
    v5 = v40;
    v9 = v38;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    v32 = *(a1 + 40);
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      v35 = [v6 source];
      *buf = 138543618;
      *&buf[4] = v34;
      *&buf[12] = 2112;
      *&buf[14] = v35;
      _os_log_impl(&dword_22D12F000, v33, OS_LOG_TYPE_ERROR, "%{public}@Cannot find ground truth for %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v30 = 0;
  }

  return v30;
}

- (id)compareWithClassificationTruth:(id)truth eventClass:(Class)class confidenceThreshold:(float)threshold
{
  truthCopy = truth;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v21 = MEMORY[0x277D85DD0];
  v25 = array2;
  v22 = truthCopy;
  v23 = array;
  v24 = array3;
  v11 = array2;
  v12 = array3;
  v13 = array;
  v14 = truthCopy;
  [sessions na_each:{v21, 3221225472, __95__HMIVideoAnalyzerMutableReport_compareWithClassificationTruth_eventClass_confidenceThreshold___block_invoke, &unk_278753700}];

  v15 = [HMIVideoAnalyzerMutableReportComparison alloc];
  v16 = [v13 copy];
  v17 = [v12 copy];
  v18 = [v11 copy];
  v19 = [HMIVideoAnalyzerMutableReportComparison initWithTruePositiveKeys:v15 falseNegativeKeys:"initWithTruePositiveKeys:falseNegativeKeys:falsePositiveKeys:groupByKey:" falsePositiveKeys:? groupByKey:?];

  return v19;
}

void __95__HMIVideoAnalyzerMutableReport_compareWithClassificationTruth_eventClass_confidenceThreshold___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 sessions];
  v8 = [v7 objectForKeyedSubscript:?];

  v9 = [v6 fragments];

  v10 = [v9 firstObject];
  v11 = [v10 maxConfidenceEventForEventClass:?];

  v12 = [v11 confidence];
  v13 = [v8 fragments];
  v14 = [v13 firstObject];
  v15 = [v14 maxConfidenceEventForEventClass:?];
  v16 = [v15 confidence];

  [v12 value];
  v18 = v17;
  v19 = *(a1 + 72);
  [v16 value];
  v21 = v20;
  if (v18 >= v19 && v20 > 0.0)
  {
    v22 = *(a1 + 40);
    v23 = [HMIVideoAnalyzerReportRecord alloc];
    v24 = MEMORY[0x277CCABB0];
    [v12 value];
    v25 = [v24 numberWithDouble:?];
    v26 = [HMIVideoAnalyzerReportRecord initWithKey:v23 classificationScore:"initWithKey:classificationScore:"];
    [v22 addObject:?];
  }

  if (v18 < v19 && v21 > 0.0)
  {
    v27 = *(a1 + 48);
    v28 = [HMIVideoAnalyzerReportRecord alloc];
    v29 = MEMORY[0x277CCABB0];
    [v11 boundingBox];
    HMICGRectArea(v30, v31, v32, v33);
    v34 = [v29 numberWithDouble:?];
    v35 = [HMIVideoAnalyzerReportRecord initWithKey:v28 classificationScore:"initWithKey:classificationScore:"];
    [v27 addObject:?];
  }

  if (v18 >= v19 && v21 <= 0.0)
  {
    v36 = *(a1 + 56);
    v37 = [HMIVideoAnalyzerReportRecord alloc];
    v38 = MEMORY[0x277CCABB0];
    [v12 value];
    v39 = [v38 numberWithDouble:?];
    v40 = [HMIVideoAnalyzerReportRecord initWithKey:v37 classificationScore:"initWithKey:classificationScore:"];
    [v36 addObject:?];
  }
}

- (id)compareWithDetectionTruth:(id)truth eventClass:(Class)class confidenceThreshold:(float)threshold iouThreshold:(float)iouThreshold videoMetric:(BOOL)metric
{
  truthCopy = truth;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  if (metric)
  {
    array4 = [MEMORY[0x277CBEB18] array];
    array5 = [MEMORY[0x277CBEB18] array];
    array6 = [MEMORY[0x277CBEB18] array];
  }

  else
  {
    array4 = array;
    array5 = array2;
    array6 = array3;
  }

  v16 = array6;
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v31 = truthCopy;
  v32 = array4;
  v33 = array5;
  v34 = v16;
  v35 = array;
  v36 = array3;
  v37 = array2;
  v18 = array2;
  v19 = array3;
  v20 = array;
  v30 = v16;
  v29 = array5;
  v21 = array4;
  v22 = truthCopy;
  [sessions na_each:?];

  v23 = [HMIVideoAnalyzerMutableReportComparison alloc];
  v24 = [v20 copy];
  v25 = [v19 copy];
  v26 = [v18 copy];
  v27 = [HMIVideoAnalyzerMutableReportComparison initWithTruePositiveKeys:v23 falseNegativeKeys:"initWithTruePositiveKeys:falseNegativeKeys:falsePositiveKeys:groupByKey:" falsePositiveKeys:? groupByKey:?];

  return v27;
}

BOOL __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v8 = a7;
  [a6 boundingBox];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [v8 boundingBox];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  return HMICGRectIntersectionOverUnionWithRespectToROI(v10, v12, v14, v16, v18, v20, v22, v24, a1, a2, a3, a4);
}

void __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = a3;
  v8 = [v6 sessions];
  v9 = [v8 objectForKeyedSubscript:?];

  v10 = [v7 fragments];

  v11 = [v10 firstObject];
  v12 = [v11 frameResults];

  v13 = [v9 fragments];
  v14 = [v13 firstObject];
  v15 = [v14 frameResults];

  v16 = v15;
  v30 = *(a1 + 88);
  v17 = v30;
  v34 = v30;
  v31 = *(a1 + 40);
  v18 = v5;
  v32 = *(a1 + 48);
  v33 = *(a1 + 56);
  [v12 enumerateObjectsUsingBlock:?];
  if (*(a1 + 112) == 1)
  {
    v19 = [v9 fragments];
    v20 = [v19 firstObject];
    v21 = [v20 events];
    v22 = [v21 na_any:?];

    if (v22)
    {
      if ([*(a1 + 40) count])
      {
        v23 = *(a1 + 64);
        v24 = [*(a1 + 40) firstObject];
        [v23 addObject:?];
      }

      if (![*(a1 + 40) count] && objc_msgSend(*(a1 + 56), "count"))
      {
        v25 = *(a1 + 72);
        v26 = [*(a1 + 56) firstObject];
        [v25 addObject:?];
      }

      if ([*(a1 + 40) count] || objc_msgSend(*(a1 + 56), "count"))
      {
        goto LABEL_14;
      }

      v27 = *(a1 + 72);
      v28 = [HMIVideoAnalyzerReportRecord initWithKey:"initWithKey:detectionScores:frameResultIndex:" detectionScores:? frameResultIndex:?];
    }

    else
    {
      if (![*(a1 + 48) count])
      {
LABEL_14:
        [*(a1 + 40) removeAllObjects];
        [*(a1 + 48) removeAllObjects];
        [*(a1 + 56) removeAllObjects];
        goto LABEL_15;
      }

      v27 = *(a1 + 80);
      v28 = [*(a1 + 48) firstObject];
    }

    v29 = v28;
    [v27 addObject:v30];

    goto LABEL_14;
  }

LABEL_15:
}

void __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [v4 events];
  v6 = [v5 allObjects];
  v7 = [v6 na_flatMap:?];

  v8 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v9 = [v8 events];
  v10 = [v9 allObjects];
  v11 = [v10 na_flatMap:?];

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB18] array];
  [v4 regionOfInterest];

  v14 = [HMIVideoAnalyzerMutableReport greedyMatchBetweenPredictionEvents:"greedyMatchBetweenPredictionEvents:truthEvents:falsePositiveIndices:falseNegativeIndices:eventClass:regionOfInterest:confidenceThreshold:scoreThreshold:scoreFunction:" truthEvents:? falsePositiveIndices:? falseNegativeIndices:? eventClass:? regionOfInterest:? confidenceThreshold:? scoreThreshold:? scoreFunction:?];
  v27 = v7;
  v26 = v14;
  v15 = [v14 na_map:?];
  v16 = v27;
  v17 = [v12 na_map:?];
  v18 = v11;
  v19 = [v13 na_map:?];
  if ([v15 count])
  {
    v20 = *(a1 + 40);
    v21 = [HMIVideoAnalyzerReportRecord initWithKey:"initWithKey:detectionScores:frameResultIndex:" detectionScores:? frameResultIndex:?];
    [v20 addObject:?];
  }

  if ([v17 count])
  {
    v22 = *(a1 + 56);
    v23 = [HMIVideoAnalyzerReportRecord initWithKey:"initWithKey:detectionScores:frameResultIndex:" detectionScores:? frameResultIndex:?];
    [v22 addObject:?];
  }

  if ([v19 count])
  {
    v24 = *(a1 + 64);
    v25 = [HMIVideoAnalyzerReportRecord initWithKey:"initWithKey:detectionScores:frameResultIndex:" detectionScores:? frameResultIndex:?];
    [v24 addObject:?];
  }
}

id __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  [a2 unsignedIntegerValue];
  v4 = [v3 objectAtIndexedSubscript:?];
  v5 = [v4 confidence];
  [v5 value];
  v6 = [v2 numberWithDouble:?];

  return v6;
}

id __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  [a2 unsignedIntegerValue];
  v4 = [v3 objectAtIndexedSubscript:?];
  v5 = [v4 confidence];
  [v5 value];
  v6 = [v2 numberWithDouble:?];

  return v6;
}

id __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = *(a1 + 32);
  [a2 unsignedIntegerValue];
  v4 = [v3 objectAtIndexedSubscript:?];
  [v4 boundingBox];
  HMICGRectArea(v5, v6, v7, v8);
  v9 = [v2 numberWithDouble:?];

  return v9;
}

BOOL __115__HMIVideoAnalyzerMutableReport_compareWithDetectionTruth_eventClass_confidenceThreshold_iouThreshold_videoMetric___block_invoke_9(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_class() == *(a1 + 32))
  {
    v5 = [v3 confidence];
    [v5 value];
    v4 = v6 > 0.0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)compareWithTrackingTruth:(id)truth eventClass:(Class)class confidenceThreshold:(float)threshold ioaThreshold:(float)ioaThreshold
{
  truthCopy = truth;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v22 = truthCopy;
  v23 = array;
  v24 = array2;
  v25 = array3;
  v12 = array3;
  v13 = array2;
  v14 = array;
  v15 = truthCopy;
  [sessions na_each:?];

  v16 = [HMIVideoAnalyzerMutableReportComparison alloc];
  v17 = [v14 copy];
  v18 = [v12 copy];
  v19 = [v13 copy];
  v20 = [HMIVideoAnalyzerMutableReportComparison initWithTruePositiveKeys:v16 falseNegativeKeys:"initWithTruePositiveKeys:falseNegativeKeys:falsePositiveKeys:groupByKey:" falsePositiveKeys:? groupByKey:?];

  return v20;
}

float __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, void *a6, void *a7)
{
  v12 = a6;
  v13 = a7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;
  v16 = v15;
  if (!v15)
  {
    goto LABEL_10;
  }

  v17 = [v15 torso];

  if (!v17)
  {
    v19 = [v16 face];

    if (v19)
    {
      v18 = [v16 face];
      goto LABEL_9;
    }

LABEL_10:
    [v12 boundingBox];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;
    [v13 boundingBox];
    HMICGRectIntersectionOverMinAreaWithRespectToROI(v36, v38, v40, v42, v43, v44, v45, v46, a1, a2, a3, a4);
    v34 = v47;
    goto LABEL_11;
  }

  v18 = [v16 torso];
LABEL_9:
  v20 = v18;
  [v18 boundingBox];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [v13 boundingBox];
  HMICGRectIntersectionOverMinAreaWithRespectToROI(v22, v24, v26, v28, v29, v30, v31, v32, a1, a2, a3, a4);
  v34 = v33;

LABEL_11:
  return v34;
}

void __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) sessions];
  v50 = v5;
  v8 = [v7 objectForKeyedSubscript:?];

  v47 = v6;
  v9 = [v6 fragments];
  v10 = [v9 firstObject];
  v11 = [v10 frameResults];

  v46 = v8;
  v12 = [v8 fragments];
  v13 = [v12 firstObject];
  v49 = [v13 frameResults];

  v56 = [MEMORY[0x277CBEB18] array];
  if ([v11 count])
  {
    v14 = 0;
    v55 = MEMORY[0x277CBEC10];
    v48 = v11;
    do
    {
      v15 = [v11 objectAtIndexedSubscript:?];
      v16 = [v15 events];
      v53 = [v16 allObjects];

      v17 = [v49 objectAtIndexedSubscript:?];
      v18 = [v17 events];
      v19 = [v18 allObjects];

      v20 = [MEMORY[0x277CBEB18] array];
      v21 = [MEMORY[0x277CBEB18] array];
      v22 = [v11 objectAtIndexedSubscript:?];
      [v22 regionOfInterest];
      v23 = [HMIVideoAnalyzerMutableReport greedyMatchBetweenPredictionEvents:"greedyMatchBetweenPredictionEvents:truthEvents:falsePositiveIndices:falseNegativeIndices:eventClass:regionOfInterest:confidenceThreshold:scoreThreshold:scoreFunction:" truthEvents:? falsePositiveIndices:? falseNegativeIndices:? eventClass:? regionOfInterest:? confidenceThreshold:? scoreThreshold:? scoreFunction:?];

      v24 = [MEMORY[0x277CBEB38] dictionary];
      v52 = v53;
      v51 = v19;
      v25 = v24;
      v54 = v23;
      [v23 enumerateKeysAndObjectsUsingBlock:?];
      v26 = [MEMORY[0x277CBEB18] array];
      v27 = [MEMORY[0x277CBEB18] array];
      v28 = [MEMORY[0x277CBEB18] array];
      v29 = [v25 copy];
      [HMIVideoAnalyzerMutableReport sihouetteScoreForMatches:"sihouetteScoreForMatches:previousMatches:truePositiveScores:falsePositiveScores:falseNegativeScores:" previousMatches:? truePositiveScores:? falsePositiveScores:? falseNegativeScores:?];

      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [v56 addObject:?];

      if ([v26 count])
      {
        v31 = *(a1 + 40);
        v32 = [HMIVideoAnalyzerReportRecord alloc];
        v33 = [v56 copy];
        v34 = [HMIVideoAnalyzerReportRecord initWithKey:v32 trackingScores:"initWithKey:trackingScores:frameResultIndices:" frameResultIndices:?];
        [v31 addObject:?];
      }

      if ([v27 count])
      {
        v35 = *(a1 + 48);
        v36 = [HMIVideoAnalyzerReportRecord alloc];
        v37 = [v56 copy];
        v38 = [HMIVideoAnalyzerReportRecord initWithKey:v36 trackingScores:"initWithKey:trackingScores:frameResultIndices:" frameResultIndices:?];
        [v35 addObject:?];
      }

      v39 = v56;
      if ([v28 count])
      {
        v40 = *(a1 + 56);
        v41 = [HMIVideoAnalyzerReportRecord alloc];
        v42 = [v56 copy];
        v43 = [HMIVideoAnalyzerReportRecord initWithKey:v41 trackingScores:"initWithKey:trackingScores:frameResultIndices:" frameResultIndices:?];
        [v40 addObject:?];

        v39 = v56;
      }

      if ([v25 count])
      {
        v57 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        v44 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
        [v39 setArray:?];

        v45 = [v25 copy];
        v55 = v45;
      }

      ++v14;
      v11 = v48;
    }

    while (v14 < [v48 count]);
  }

  else
  {
    v55 = MEMORY[0x277CBEC10];
  }
}

void __102__HMIVideoAnalyzerMutableReport_compareWithTrackingTruth_eventClass_confidenceThreshold_ioaThreshold___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [a2 unsignedIntegerValue];
  v7 = [v5 objectAtIndexedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v18 = v8;

  v9 = *(a1 + 40);
  [v6 unsignedIntegerValue];

  v10 = [v9 objectAtIndexedSubscript:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  if (v18)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    v14 = [v18 sessionEntityUUID];
    v15 = [v12 sessionEntityUUID];
    v16 = v15;
    if (v14)
    {
      v17 = v15 == 0;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      [*(a1 + 48) setObject:? forKeyedSubscript:?];
    }
  }
}

- (id)selectFramesWithRecord:(id)record truth:(id)truth frameResults:(id)results
{
  recordCopy = record;
  resultsCopy = results;
  array = [MEMORY[0x277CBEB18] array];
  frameResultIndices = [recordCopy frameResultIndices];
  v10 = [frameResultIndices count];

  if (v10)
  {
    frameResultIndices2 = [recordCopy frameResultIndices];
    v17 = array;
    [frameResultIndices2 na_each:?];

    v12 = v17;
LABEL_5:

    goto LABEL_6;
  }

  if ([resultsCopy count])
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = array;
    [resultsCopy enumerateObjectsUsingBlock:{v15, 3221225472, __75__HMIVideoAnalyzerMutableReport_selectFramesWithRecord_truth_frameResults___block_invoke_2, &unk_278753880}];
    v12 = v16;
    goto LABEL_5;
  }

  [array addObject:?];
LABEL_6:
  v13 = [array copy];

  return v13;
}

void __75__HMIVideoAnalyzerMutableReport_selectFramesWithRecord_truth_frameResults___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  [v1 addObject:?];
}

- (void)writeHTMLReportComparison:(id)comparison truth:(id)truth eventClass:(Class)class comparisonType:(id)type assetPath:(id)path outputPath:(id)outputPath limit:(unint64_t)limit shuffle:(BOOL)self0
{
  comparisonCopy = comparison;
  truthCopy = truth;
  typeCopy = type;
  pathCopy = path;
  outputPathCopy = outputPath;
  truePositiveKeys = [comparisonCopy truePositiveKeys];
  falsePositiveKeys = [comparisonCopy falsePositiveKeys];
  falseNegativeKeys = [comparisonCopy falseNegativeKeys];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v17 = [v16 objectForKeyedSubscript:?];

  v18 = [v17 count];
  if (v18 >= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = v18;
  }

  if (shuffle)
  {
    v20 = [v17 mutableCopy];
    if (limitCopy)
    {
      for (i = 0; i != limitCopy; ++i)
      {
        arc4random_uniform([v17 count]);
        [v20 exchangeObjectAtIndex:? withObjectAtIndex:?];
      }
    }

    v22 = [v20 subarrayWithRange:?];
    v41 = [v22 copy];
  }

  else
  {
    v20 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:? ascending:?];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
    v23 = [v17 sortedArrayUsingDescriptors:?];
    v41 = [v23 subarrayWithRange:?];
  }

  v24 = MEMORY[0x277CCACA8];
  v25 = [HMIVideoAnalyzerEvent shortNameForEventClass:?];
  v40 = typeCopy;
  typeCopy = [v24 stringWithFormat:v25, typeCopy];

  v27 = [MEMORY[0x277CCACA8] stringWithFormat:typeCopy];
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:typeCopy];
  v29 = [outputPathCopy stringByAppendingPathComponent:?];
  v30 = [HMIHTMLReport initWithTitle:"initWithTitle:outputPath:" outputPath:?];
  v31 = MEMORY[0x277CCACA8];
  v32 = [v17 count];
  [comparisonCopy precision];
  v34 = v33;
  [comparisonCopy recall];
  v36 = [v31 stringWithFormat:v32, typeCopy, *&v34, v35];
  [(HMIHTMLReport *)v30 appendText:?];

  v45 = v30;
  v37 = v30;
  v38 = pathCopy;
  v39 = truthCopy;
  [v41 na_each:?];
}

void __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) sessions];
  v5 = [v3 key];
  v6 = [v4 objectForKeyedSubscript:?];

  v7 = [v6 fragments];
  v8 = [v7 firstObject];
  v9 = [v8 frameResults];

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v10 sessions];
    v12 = [v3 key];
    v13 = [v11 objectForKeyedSubscript:?];
    v14 = [v13 fragments];
    v15 = [v14 firstObject];
    v16 = [v15 frameResults];
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  v17 = [*(a1 + 32) selectFramesWithRecord:? truth:? frameResults:?];
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_2;
  v42 = &unk_2787538A8;
  v18 = v9;
  v43 = v18;
  v19 = v16;
  v44 = v19;
  v20 = [v17 na_map:?];
  v21 = *(a1 + 48);
  v22 = [v6 source];
  v23 = [v21 stringByAppendingPathComponent:?];

  v24 = [HMIVideoFragment alloc];
  v25 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  v26 = [(HMIVideoFragment *)v24 initWithData:?];

  v27 = [[HMIVideoFrameGenerator alloc] initWithVideoFragment:?];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_3;
  v33[3] = &unk_2787538F8;
  v34 = v17;
  v35 = v18;
  v36 = v6;
  v37 = v19;
  v38 = *(a1 + 56);
  v28 = v19;
  v29 = v6;
  v30 = v18;
  v31 = v17;
  v32 = MEMORY[0x2318CB8E0](v33);
  [HMIVideoFrameGenerator generateVideoFramesForTimes:v27 completionHandler:"generateVideoFramesForTimes:completionHandler:"];
}

id __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 unsignedIntegerValue];
  if (v4 < [*(a1 + 32) count])
  {
    v5 = MEMORY[0x277CCAE60];
    v6 = *(a1 + 32);
LABEL_5:
    [v3 unsignedIntegerValue];
    v9 = [v6 objectAtIndexedSubscript:?];
    v10 = [v9 frame];
    if (v10)
    {
      [&v13 presentationTimeStamp];
    }

    else
    {
      v13 = 0uLL;
      v14 = 0;
    }

    v11 = [v5 valueWithCMTime:{v13, v14}];

    goto LABEL_10;
  }

  v7 = [v3 unsignedIntegerValue];
  v8 = [*(a1 + 40) count];
  v5 = MEMORY[0x277CCAE60];
  if (v7 < v8)
  {
    v6 = *(a1 + 40);
    goto LABEL_5;
  }

  v11 = [MEMORY[0x277CCAE60] valueWithCMTime:{*MEMORY[0x277CC08F0], *(MEMORY[0x277CC08F0] + 16)}];
LABEL_10:

  return v11;
}

void __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_3(id *a1, void *a2)
{
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_4;
  v13 = &unk_2787538D0;
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = a1[7];
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v14 = v9;
  v15 = v8;
  v16 = a1[8];
  [a2 enumerateObjectsUsingBlock:?];
}

void __126__HMIVideoAnalyzerMutableReport_writeHTMLReportComparison_truth_eventClass_comparisonType_assetPath_outputPath_limit_shuffle___block_invoke_4(id *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [a1[4] objectAtIndexedSubscript:?];
  v6 = [v5 unsignedIntegerValue];

  v7 = [a1[5] count];
  v8 = [HMIVideoAnalyzerFrameResult alloc];
  if (v6 >= v7)
  {
    v9 = [MEMORY[0x277CBEB98] set];
    v12 = [HMIVideoAnalyzerFrameResult initWithFrame:v8 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];
  }

  else
  {
    v9 = [a1[5] objectAtIndexedSubscript:?];
    v10 = [v9 events];
    v11 = [a1[5] objectAtIndexedSubscript:?];
    [v11 regionOfInterest];
    v12 = [HMIVideoAnalyzerFrameResult initWithFrame:v8 events:"initWithFrame:events:regionOfInterest:" regionOfInterest:?];
  }

  v13 = MEMORY[0x277CCACA8];
  v14 = [a1[5] count];
  v15 = [a1[6] source];
  if (v4)
  {
    [&time presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v16 = [v13 stringWithFormat:v6, v14, v15, CMTimeGetSeconds(&time)];

  if (v6 >= [a1[7] count])
  {
    [a1[8] appendFrameResult:? frameTruth:? description:?];
  }

  else
  {
    v17 = [a1[7] objectAtIndexedSubscript:?];
    memset(&time, 0, sizeof(time));
    v18 = [v17 frame];
    if (v18)
    {
      [&time presentationTimeStamp];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v19 = [(HMIVideoAnalyzerFrameResult *)v12 frame];
    if (v19)
    {
      [&v20 presentationTimeStamp];
    }

    else
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
    }

    [a1[8] appendFrameResult:? frameTruth:? description:?];
  }
}

- (void)writeImageCropForEventClass:(Class)class outputPath:(id)path assetPath:(id)assetPath
{
  pathCopy = path;
  assetPathCopy = assetPath;
  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke;
  v16 = &unk_278753A20;
  v18 = assetPathCopy;
  classCopy = class;
  v17 = pathCopy;
  v11 = assetPathCopy;
  v12 = pathCopy;
  [sessions na_each:?];
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [v4 fragments];
  v8 = [v7 firstObject];
  v9 = [v8 frameResults];

  v29 = MEMORY[0x277D85DD0];
  v30 = 3221225472;
  v31 = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_2;
  v32 = &unk_278753968;
  v35 = *(a1 + 48);
  v10 = v5;
  v33 = v10;
  v11 = v6;
  v34 = v11;
  [v9 enumerateObjectsUsingBlock:?];
  v22 = MEMORY[0x277D85DD0];
  v23 = 3221225472;
  v24 = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_7;
  v25 = &unk_2787539B8;
  v12 = v4;
  v26 = v12;
  v13 = v11;
  v27 = v13;
  v28 = *(a1 + 32);
  v14 = MEMORY[0x2318CB8E0](&v22);
  v15 = *(a1 + 40);
  if (v15)
  {
    v16 = [v12 source];
    v17 = [v15 stringByAppendingPathComponent:?];

    v18 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
    v19 = [[HMIVideoFragment alloc] initWithData:?];
    v20 = [[HMIVideoFrameGenerator alloc] initWithVideoFragment:?];
    v21 = [v10 na_map:?];
    [HMIVideoFrameGenerator generateVideoFramesForTimes:v20 completionHandler:"generateVideoFramesForTimes:completionHandler:"];
  }

  else
  {
    v17 = [v10 na_map:{v22, v23, v24, v25, v26, v27}];
    (v14)[2](v14, v17);
  }
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 events];
  v5 = [v4 allObjects];
  v6 = [v5 na_flatMap:?];

  v7 = *(a1 + 48);
  if (v7 == objc_opt_class())
  {
    v8 = [v6 na_filter:?];

    v6 = v8;
  }

  v9 = *(a1 + 48);
  if (v9 == objc_opt_class())
  {
    v10 = [v6 na_filter:?];

    v6 = v10;
  }

  if ([v6 count])
  {
    v11 = *(a1 + 32);
    v12 = [v3 frame];
    [v11 addObject:?];

    [*(a1 + 40) addObject:?];
  }
}

id __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 allEvents];
  v3 = [v2 na_filter:?];

  return v3;
}

BOOL __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = [a2 faceRecognition];
  v3 = v2 != 0;

  return v3;
}

BOOL __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = [a2 torsoRecognition];
  v3 = v2 != 0;

  return v3;
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_7(id *a1, void *a2)
{
  v4 = MEMORY[0x277D85DD0];
  v5 = 3221225472;
  v6 = __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_8;
  v7 = &unk_278753990;
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  [a2 enumerateObjectsUsingBlock:?];
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 source];
  v8 = [v6 stringByDeletingPathExtension];

  v7 = [*(a1 + 40) objectAtIndexedSubscript:?];
  [HMIVideoAnalyzerMutableReport writeImageCropFromFrame:"writeImageCropFromFrame:events:outputPath:source:" events:? outputPath:? source:?];
}

id __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAE60];
  if (a2)
  {
    [v5 presentationTimeStamp];
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  v3 = [v2 valueWithCMTime:?];

  return v3;
}

id __82__HMIVideoAnalyzerMutableReport_writeImageCropForEventClass_outputPath_assetPath___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = 0;
  v2 = [a2 pixelBufferFrameWithError:?];

  return v2;
}

- (void)writeFragmentFileComparison:(id)comparison eventClass:(Class)class outputPath:(id)path
{
  v24 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v18 = @"TP";
  comparisonCopy = comparison;
  truePositiveKeys = [comparisonCopy truePositiveKeys];
  v21 = truePositiveKeys;
  v19 = @"FP";
  falsePositiveKeys = [comparisonCopy falsePositiveKeys];
  v22 = falsePositiveKeys;
  v20 = @"FN";
  falseNegativeKeys = [comparisonCopy falseNegativeKeys];

  v23 = falseNegativeKeys;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v15 = MEMORY[0x277D85DD0];
  v16 = pathCopy;
  classCopy = class;
  v14 = pathCopy;
  [v13 na_each:{v15, 3221225472, __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke, &unk_278753A90, self}];
}

void __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB98];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke_2;
  v20 = &unk_278753A48;
  v21 = *(a1 + 32);
  v6 = a2;
  v7 = [a3 na_map:?];
  v8 = [v5 setWithArray:?];

  v9 = [v8 allObjects];
  v10 = [v9 sortedArrayUsingComparator:?];
  v11 = [v10 componentsJoinedByString:?];

  v12 = MEMORY[0x277CCACA8];
  v13 = [HMIVideoAnalyzerEvent shortNameForEventClass:?];
  v14 = [v12 stringWithFormat:v13, v6];

  v15 = [*(a1 + 40) stringByAppendingPathComponent:?];
  v16 = 0;
  [v11 writeToFile:? atomically:? encoding:? error:?];
}

id __83__HMIVideoAnalyzerMutableReport_writeFragmentFileComparison_eventClass_outputPath___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 sessions];
  v5 = [v3 key];

  v6 = [v4 objectForKeyedSubscript:?];
  v7 = [v6 source];

  return v7;
}

+ (void)writeJSONChartData:(id)data outputPath:(id)path
{
  v5 = MEMORY[0x277CBEB38];
  pathCopy = path;
  dataCopy = data;
  dictionary = [v5 dictionary];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __63__HMIVideoAnalyzerMutableReport_writeJSONChartData_outputPath___block_invoke;
  v20 = &unk_278752CF0;
  v21 = dictionary;
  v9 = dictionary;
  [dataCopy na_each:?];

  v10 = [pathCopy stringByAppendingPathComponent:?];

  v16 = 0;
  v11 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
  v12 = v16;
  v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];
  v15 = v12;
  [v13 writeToFile:? atomically:? encoding:? error:?];
  v14 = v15;
}

void __63__HMIVideoAnalyzerMutableReport_writeJSONChartData_outputPath___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count])
  {
    v4 = [v3 objectForKeyedSubscript:?];
    v5 = [v3 objectForKeyedSubscript:?];
    v6 = [v3 objectForKeyedSubscript:?];
    v7 = [v3 objectForKeyedSubscript:?];
    v8 = [*(a1 + 32) objectForKeyedSubscript:?];

    if (!v8)
    {
      v9 = [MEMORY[0x277CBEB18] array];
      [*(a1 + 32) setObject:? forKeyedSubscript:?];
    }

    v10 = [*(a1 + 32) objectForKeyedSubscript:?];
    v12 = @"precision";
    v13 = @"recall";
    v15 = v5;
    v16 = v6;
    v14 = @"threshold";
    v17 = v7;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v10 addObject:?];
  }
}

+ (id)chartSpecWithRange:(CGRect)range colors:(id)colors labels:(id)labels
{
  height = range.size.height;
  width = range.size.width;
  y = range.origin.y;
  x = range.origin.x;
  colorsCopy = colors;
  labelsCopy = labels;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([colorsCopy count])
  {
    allKeys = [colorsCopy allKeys];
    v14 = [allKeys sortedArrayUsingSelector:?];

    [dictionary setObject:? forKeyedSubscript:?];
    v33 = colorsCopy;
    v15 = [v14 na_map:?];
    [dictionary setObject:? forKeyedSubscript:?];
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  if ([labelsCopy count])
  {
    v17 = [labelsCopy na_map:?];
    v18 = [v17 componentsJoinedByString:?];

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:v18];
    [dictionary2 setObject:? forKeyedSubscript:?];
  }

  v32 = labelsCopy;
  v20 = MEMORY[0x277CCABB0];
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  CGRectGetMinX(v63);
  v50 = [v20 numberWithDouble:?];
  v21 = MEMORY[0x277CCABB0];
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  CGRectGetMaxX(v64);
  v51 = [v21 numberWithDouble:?];
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v22 = MEMORY[0x277CCABB0];
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  CGRectGetMinY(v65);
  v46 = [v22 numberWithDouble:?];
  v23 = MEMORY[0x277CCABB0];
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = height;
  CGRectGetMaxY(v66);
  v47 = [v23 numberWithDouble:?];
  v48 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v56 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  null = [MEMORY[0x277CBEB68] null];
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v24 = MEMORY[0x277CCABB0];
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  CGRectGetMinX(v67);
  v38 = [v24 numberWithDouble:?];
  v25 = MEMORY[0x277CCABB0];
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  CGRectGetMaxX(v68);
  v39 = [v25 numberWithDouble:?];
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v26 = MEMORY[0x277CCABB0];
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  CGRectGetMinY(v69);
  v34 = [v26 numberWithDouble:?];
  v27 = MEMORY[0x277CCABB0];
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = height;
  CGRectGetMaxY(v70);
  v35 = [v27 numberWithDouble:?];
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v61 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  v29 = [MEMORY[0x277CCAAA0] dataWithJSONObject:? options:? error:?];
  v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:? encoding:?];

  return v30;
}

+ (void)writeImageCropFromFrame:(id)frame events:(id)events outputPath:(id)path source:(id)source
{
  frameCopy = frame;
  sourceCopy = source;
  v10 = MEMORY[0x277CBEBC0];
  eventsCopy = events;
  v12 = [v10 fileURLWithPath:?];
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __82__HMIVideoAnalyzerMutableReport_writeImageCropFromFrame_events_outputPath_source___block_invoke;
  v19 = &unk_278753B00;
  v20 = frameCopy;
  v21 = sourceCopy;
  v22 = v12;
  v13 = v12;
  v14 = sourceCopy;
  v15 = frameCopy;
  [eventsCopy enumerateObjectsUsingBlock:?];
}

void __82__HMIVideoAnalyzerMutableReport_writeImageCropFromFrame_events_outputPath_source___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v7)
  {
    [*(a1 + 32) pixelBuffer];
    v11 = [v7 roll];
    v33 = 0;
    v12 = [HMIFaceprinter createFacePixelBufferForFaceEvent:"createFacePixelBufferForFaceEvent:pixelBuffer:roll:error:" pixelBuffer:? roll:? error:?];
    v13 = 0;
  }

  else
  {
    if (v10)
    {
      [*(a1 + 32) pixelBuffer];
      v32 = 0;
      v12 = [HMITorsoprinter createTorsoPixelBufferForTorsoEvent:"createTorsoPixelBufferForTorsoEvent:pixelBuffer:error:" pixelBuffer:? error:?];
    }

    else
    {
      Size = HMICVPixelBufferGetSize([*(a1 + 32) pixelBuffer]);
      v16 = v15;
      [v8 boundingBox];
      HMICGRectPixelFromNormalized(v17, v18, v19, v20, Size, v16);
      CGRectIntegral(v34);
      [*(a1 + 32) pixelBuffer];
      v31 = 0;
      v12 = [HMIVisionUtilities transferPixelBuffer:"transferPixelBuffer:crop:size:pixelFormat:options:error:" crop:? size:? pixelFormat:? options:? error:?];
    }

    v13 = 0;
  }

  v29 = v7;
  CVPixelBufferLockBaseAddress(v12, 1uLL);
  v21 = [objc_alloc(MEMORY[0x277CBF758]) initWithCVPixelBuffer:?];
  CVPixelBufferUnlockBaseAddress(v12, 1uLL);
  CVPixelBufferRelease(v12);
  v22 = v10;
  if (*(a1 + 32))
  {
    [&time presentationTimeStamp];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  v23 = CMTimeGetSeconds(&time) * 1000.0;
  objc_opt_class();
  v24 = [HMIVideoAnalyzerEvent shortNameForEventClass:?];
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:*(a1 + 40), *&v23, v24, a3];
  v26 = [MEMORY[0x277CBEBC0] fileURLWithPath:? relativeToURL:?];
  v27 = [MEMORY[0x277CBF740] contextWithOptions:?];
  [v21 colorSpace];
  [v27 writePNGRepresentationOfImage:? toURL:? format:? colorSpace:? options:? error:?];
  v28 = v13;
}

+ (id)greedyMatchBetweenPredictionEvents:(id)events truthEvents:(id)truthEvents falsePositiveIndices:(id)indices falseNegativeIndices:(id)negativeIndices eventClass:(Class)class regionOfInterest:(CGRect)interest confidenceThreshold:(float)threshold scoreThreshold:(float)self0 scoreFunction:(id)self1
{
  eventsCopy = events;
  truthEventsCopy = truthEvents;
  indicesCopy = indices;
  negativeIndicesCopy = negativeIndices;
  functionCopy = function;
  v38 = indicesCopy;
  [eventsCopy enumerateObjectsUsingBlock:?];
  v37 = negativeIndicesCopy;
  [truthEventsCopy enumerateObjectsUsingBlock:?];
  array = [MEMORY[0x277CBEB18] array];
  v36 = functionCopy;
  v33 = v37;
  v34 = eventsCopy;
  v35 = truthEventsCopy;
  v21 = array;
  v22 = truthEventsCopy;
  v23 = eventsCopy;
  v24 = functionCopy;
  [v38 na_each:?];
  v39 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:? ascending:?];
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v26 = [v21 sortedArrayUsingDescriptors:?];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v27 = dictionary;
  v28 = v38;
  v29 = v33;
  [v26 na_each:?];
  v30 = [v27 copy];

  return v30;
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (objc_opt_isKindOfClass())
  {
    v4 = [v10 confidence];
    [v4 value];
    v6 = v5;
    v7 = *(a1 + 48);

    if (v6 >= v7)
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [v8 addObject:?];
    }
  }
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if (objc_opt_isKindOfClass())
  {
    [v10 boundingBox];
    v12.origin.x = v4;
    v12.origin.y = v5;
    v12.size.width = v6;
    v12.size.height = v7;
    if (CGRectIntersectsRect(*(a1 + 48), v12))
    {
      v8 = *(a1 + 32);
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
      [v8 addObject:?];
    }
  }
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_4;
  v9 = &unk_278753B78;
  v14 = *(a1 + 64);
  v10 = *(a1 + 40);
  v11 = v3;
  v12 = *(a1 + 48);
  v15 = *(a1 + 72);
  v16 = *(a1 + 88);
  v17 = *(a1 + 104);
  v13 = *(a1 + 56);
  v5 = v3;
  [v4 na_each:{v6, 3221225472, __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_4, &unk_278753B78}];
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = *(a1 + 64);
  v4 = *(a1 + 32);
  [*(a1 + 40) unsignedIntegerValue];
  v5 = [v4 objectAtIndexedSubscript:?];
  v6 = *(a1 + 48);
  [v11 unsignedIntegerValue];
  v7 = [v6 objectAtIndexedSubscript:?];
  v8 = (*(v3 + 16))(v3, v5, v7, *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96));

  if (v8 > *(a1 + 104))
  {
    v9 = *(a1 + 56);
    v10 = [HMIVideoAnalyzerReportMatch initWithTruth:"initWithTruth:prediction:score:" prediction:? score:?];
    [v9 addObject:?];
  }
}

void __199__HMIVideoAnalyzerMutableReport_greedyMatchBetweenPredictionEvents_truthEvents_falsePositiveIndices_falseNegativeIndices_eventClass_regionOfInterest_confidenceThreshold_scoreThreshold_scoreFunction___block_invoke_5(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v14 = v3;
  v5 = [v3 truth];
  if ([v4 containsObject:?])
  {
    v6 = a1[5];
    v7 = [v14 prediction];
    LODWORD(v6) = [v6 containsObject:?];

    if (!v6)
    {
      goto LABEL_5;
    }

    v8 = a1[4];
    v9 = [v14 truth];
    [v8 removeObject:?];

    v10 = a1[5];
    v11 = [v14 prediction];
    [v10 removeObject:?];

    v5 = [v14 truth];
    v12 = a1[6];
    v13 = [v14 prediction];
    [v12 setObject:? forKeyedSubscript:?];
  }

LABEL_5:
}

+ (void)sihouetteScoreForMatches:(id)matches previousMatches:(id)previousMatches truePositiveScores:(id)scores falsePositiveScores:(id)positiveScores falseNegativeScores:(id)negativeScores
{
  matchesCopy = matches;
  scoresCopy = scores;
  positiveScoresCopy = positiveScores;
  negativeScoresCopy = negativeScores;
  v19 = MEMORY[0x277D85DD0];
  v20 = matchesCopy;
  v21 = scoresCopy;
  v22 = positiveScoresCopy;
  v23 = negativeScoresCopy;
  v15 = negativeScoresCopy;
  v16 = positiveScoresCopy;
  v17 = scoresCopy;
  v18 = matchesCopy;
  [previousMatches enumerateKeysAndObjectsUsingBlock:{v19, 3221225472, __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke, &unk_278753C18}];
}

void __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke_2;
  v13 = &unk_278753BF0;
  v14 = v6;
  v15 = v5;
  v7 = *(a1 + 32);
  v16 = *(a1 + 40);
  v17 = *(a1 + 48);
  v18 = *(a1 + 56);
  v8 = v5;
  v9 = v6;
  [v7 enumerateKeysAndObjectsUsingBlock:?];
}

void __133__HMIVideoAnalyzerMutableReport_sihouetteScoreForMatches_previousMatches_truePositiveScores_falsePositiveScores_falseNegativeScores___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 boundingBox];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [v6 boundingBox];
  HMICGRectGeneralizedIntersectionOverUnion(v9, v11, v13, v15, v16, v17, v18, v19);
  v20 = [*(a1 + 32) sessionEntityUUID];
  v21 = [v6 sessionEntityUUID];

  v22 = *(a1 + 40);
  if (v20 == v21 && v22 == v7)
  {
    v23 = *(a1 + 48);
    v24 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v23 addObject:?];
  }

  if (v20 == v21 && v22 != v7)
  {
    v25 = *(a1 + 56);
    v26 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v25 addObject:?];
  }

  if (v20 != v21 && v22 == v7)
  {
    v27 = *(a1 + 64);
    v28 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v27 addObject:?];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(HMIVideoAnalyzerMutableReport *)self name];
  v6 = NSStringFromSelector(sel_name);
  [coderCopy encodeObject:? forKey:?];

  [(HMIVideoAnalyzerMutableReport *)self version];
  v7 = NSStringFromSelector(sel_version);
  [coderCopy encodeInteger:? forKey:?];

  deviceInformation = [(HMIVideoAnalyzerMutableReport *)self deviceInformation];
  v9 = NSStringFromSelector(sel_deviceInformation);
  [coderCopy encodeObject:? forKey:?];

  sessions = [(HMIVideoAnalyzerMutableReport *)self sessions];
  v10 = [sessions copy];
  v11 = NSStringFromSelector(sel_sessions);
  [coderCopy encodeObject:? forKey:?];
}

- (HMIVideoAnalyzerMutableReport)initWithCoder:(id)coder
{
  v31 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  objc_opt_class();
  v4 = NSStringFromSelector(sel_name);
  v5 = [coderCopy decodeObjectOfClass:? forKey:?];

  v6 = NSStringFromSelector(sel_version);
  v22 = [coderCopy decodeIntegerForKey:?];

  v7 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = objc_opt_class();
  v30 = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v9 = [v7 setWithArray:?];
  v10 = NSStringFromSelector(sel_deviceInformation);
  v11 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v12 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:? count:?];
  v14 = [v12 setWithArray:?];
  v15 = NSStringFromSelector(sel_sessions);
  v16 = [coderCopy decodeObjectOfClasses:? forKey:?];

  v24.receiver = self;
  v24.super_class = HMIVideoAnalyzerMutableReport;
  v17 = [(HMIVideoAnalyzerMutableReport *)&v24 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_name, v5);
    v18->_version = v22;
    objc_storeStrong(&v18->_deviceInformation, v11);
    v19 = [v16 mutableCopy];
    sessions = v18->_sessions;
    v18->_sessions = v19;
  }

  return v18;
}

@end