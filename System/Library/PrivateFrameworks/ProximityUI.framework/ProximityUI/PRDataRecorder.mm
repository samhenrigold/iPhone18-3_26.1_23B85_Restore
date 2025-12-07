@interface PRDataRecorder
+ (id)generateFilename;
+ (id)generateTemporaryDirectoryURL;
- (PRDataRecorder)init;
- (id)stopAndSave;
- (id)writeToURL;
- (void)discardSensorData;
- (void)recordCustomData:(id)data forKey:(id)key;
- (void)recordEstimatorInput:(id)input;
- (void)recordPoseMeasurement:(id)measurement;
- (void)recordProximityMeasurement:(id)measurement;
- (void)recordRangeEstimate:(id)estimate;
- (void)recordTargetEstimates:(id)estimates;
- (void)recordTargetMovingStateChanged:(BOOL)changed atTime:(double)time;
- (void)writeSensorDataToURL:(id)l;
@end

@implementation PRDataRecorder

+ (id)generateFilename
{
  date = [MEMORY[0x277CBEAA8] date];
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"dd-MM-yyyy-HH-mm-ss"];
  v4 = [v3 stringFromDate:date];

  return v4;
}

+ (id)generateTemporaryDirectoryURL
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = 0;
  v3 = [defaultManager URLForDirectory:9 inDomain:1 appropriateForURL:0 create:1 error:&v5];

  return v3;
}

- (PRDataRecorder)init
{
  v9.receiver = self;
  v9.super_class = PRDataRecorder;
  v2 = [(PRDataRecorder *)&v9 init];
  if (v2)
  {
    array = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setMeasurements:array];

    array2 = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setEstimatorInput:array2];

    array3 = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setEstimatorOutput:array3];

    array4 = [MEMORY[0x277CBEB18] array];
    [(PRDataRecorder *)v2 setRangeEstimatorOutput:array4];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(PRDataRecorder *)v2 setCustomData:dictionary];
  }

  return v2;
}

- (void)discardSensorData
{
  measurements = [(PRDataRecorder *)self measurements];
  [measurements removeAllObjects];

  estimatorInput = [(PRDataRecorder *)self estimatorInput];
  [estimatorInput removeAllObjects];

  estimatorOutput = [(PRDataRecorder *)self estimatorOutput];
  [estimatorOutput removeAllObjects];

  rangeEstimatorOutput = [(PRDataRecorder *)self rangeEstimatorOutput];
  [rangeEstimatorOutput removeAllObjects];

  customData = [(PRDataRecorder *)self customData];
  [customData removeAllObjects];
}

- (void)recordProximityMeasurement:(id)measurement
{
  v18[4] = *MEMORY[0x277D85DE8];
  v18[0] = @"proximity";
  v17[0] = @"type";
  v17[1] = @"range";
  v4 = MEMORY[0x277CCABB0];
  measurementCopy = measurement;
  [measurementCopy range_m];
  *&v6 = v6;
  v7 = [v4 numberWithFloat:v6];
  v18[1] = v7;
  v17[2] = @"rangeUncertainty";
  v8 = MEMORY[0x277CCABB0];
  [measurementCopy range_unc_m];
  *&v9 = v9;
  v10 = [v8 numberWithFloat:v9];
  v18[2] = v10;
  v17[3] = @"time";
  v11 = MEMORY[0x277CCABB0];
  [measurementCopy mach_absolute_time_sec];
  v13 = v12;

  v14 = [v11 numberWithDouble:v13];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];

  measurements = [(PRDataRecorder *)self measurements];
  [measurements addObject:v15];
}

- (void)recordPoseMeasurement:(id)measurement
{
  v19[3] = *MEMORY[0x277D85DE8];
  measurementCopy = measurement;
  [measurementCopy pose];
  v17[0] = v5;
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v9 = [MEMORY[0x277CBEA90] dataWithBytes:v17 length:64];
  v19[0] = @"pose";
  v18[0] = @"type";
  v18[1] = @"data";
  v10 = [v9 base64EncodedStringWithOptions:0];
  v19[1] = v10;
  v18[2] = @"time";
  v11 = MEMORY[0x277CCABB0];
  [measurementCopy timestamp];
  v13 = v12;

  v14 = [v11 numberWithDouble:v13];
  v19[2] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

  measurements = [(PRDataRecorder *)self measurements];
  [measurements addObject:v15];
}

- (void)recordEstimatorInput:(id)input
{
  v51[8] = *MEMORY[0x277D85DE8];
  v50[0] = @"time";
  v3 = MEMORY[0x277CCABB0];
  inputCopy = input;
  [inputCopy timestamp];
  v46 = [v3 numberWithDouble:?];
  v51[0] = v46;
  v50[1] = @"prior_time";
  v5 = MEMORY[0x277CCABB0];
  [inputCopy priorTimestamp];
  v45 = [v5 numberWithDouble:?];
  v51[1] = v45;
  v50[2] = @"subsequent_time";
  v6 = MEMORY[0x277CCABB0];
  [inputCopy subsequentTimestamp];
  v44 = [v6 numberWithDouble:?];
  v51[2] = v44;
  v50[3] = @"quat";
  v7 = MEMORY[0x277CCABB0];
  [inputCopy rotation];
  v43 = [v7 numberWithFloat:?];
  v49[0] = v43;
  v8 = MEMORY[0x277CCABB0];
  [inputCopy rotation];
  LODWORD(v9) = HIDWORD(v9);
  v42 = [v8 numberWithFloat:v9];
  v49[1] = v42;
  v10 = MEMORY[0x277CCABB0];
  [inputCopy rotation];
  LODWORD(v12) = v11;
  v41 = [v10 numberWithFloat:v12];
  v49[2] = v41;
  v13 = MEMORY[0x277CCABB0];
  [inputCopy rotation];
  LODWORD(v15) = v14;
  v40 = [v13 numberWithFloat:v15];
  v49[3] = v40;
  v39 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:4];
  v51[3] = v39;
  v50[4] = @"trans";
  v16 = MEMORY[0x277CCABB0];
  [inputCopy translation];
  v38 = [v16 numberWithFloat:?];
  v48[0] = v38;
  v17 = MEMORY[0x277CCABB0];
  [inputCopy translation];
  LODWORD(v18) = HIDWORD(v18);
  v19 = [v17 numberWithFloat:v18];
  v48[1] = v19;
  v20 = MEMORY[0x277CCABB0];
  [inputCopy translation];
  LODWORD(v22) = v21;
  v23 = [v20 numberWithFloat:v22];
  v48[2] = v23;
  v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  v51[4] = v24;
  v50[5] = @"range";
  v25 = MEMORY[0x277CCABB0];
  proximity = [inputCopy proximity];
  [proximity range_m];
  *&v27 = v27;
  v28 = [v25 numberWithFloat:v27];
  v51[5] = v28;
  v50[6] = @"rangeUncertainty";
  v29 = MEMORY[0x277CCABB0];
  proximity2 = [inputCopy proximity];
  [proximity2 range_unc_m];
  *&v31 = v31;
  v32 = [v29 numberWithFloat:v31];
  v51[6] = v32;
  v50[7] = @"antenna";
  v33 = MEMORY[0x277CCABB0];
  proximity3 = [inputCopy proximity];

  v35 = [v33 numberWithInteger:{objc_msgSend(proximity3, "antenna_type")}];
  v51[7] = v35;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:8];

  estimatorInput = [(PRDataRecorder *)self estimatorInput];
  [estimatorInput addObject:v36];
}

- (void)recordTargetEstimates:(id)estimates
{
  v40 = *MEMORY[0x277D85DE8];
  estimatesCopy = estimates;
  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = estimatesCopy;
  v31 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
  if (v31)
  {
    v29 = *v33;
    do
    {
      v4 = 0;
      do
      {
        if (*v33 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v32 + 1) + 8 * v4);
        v37[0] = @"target";
        v6 = MEMORY[0x277CCABB0];
        [v5 vector];
        v7 = [v6 numberWithFloat:?];
        v36[0] = v7;
        v8 = MEMORY[0x277CCABB0];
        [v5 vector];
        LODWORD(v9) = HIDWORD(v9);
        v10 = [v8 numberWithFloat:v9];
        v36[1] = v10;
        v11 = MEMORY[0x277CCABB0];
        [v5 vector];
        LODWORD(v13) = v12;
        v14 = [v11 numberWithFloat:v13];
        v36[2] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
        v38[0] = v15;
        v37[1] = @"uncertainty";
        v16 = MEMORY[0x277CCABB0];
        [v5 uncertainty];
        v18 = [v16 numberWithDouble:v17];
        v38[1] = v18;
        v37[2] = @"weight";
        v19 = MEMORY[0x277CCABB0];
        [v5 weight];
        v21 = [v19 numberWithDouble:v20];
        v38[2] = v21;
        v37[3] = @"time";
        v22 = MEMORY[0x277CCABB0];
        [v5 timestamp];
        v23 = [v22 numberWithDouble:?];
        v38[3] = v23;
        v37[4] = @"verticalState";
        v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v5, "verticalState")}];
        v38[4] = v24;
        v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];

        [array addObject:v25];
        ++v4;
      }

      while (v31 != v4);
      v31 = [obj countByEnumeratingWithState:&v32 objects:v39 count:16];
    }

    while (v31);
  }

  estimatorOutput = [(PRDataRecorder *)self estimatorOutput];
  [estimatorOutput addObject:array];
}

- (void)recordRangeEstimate:(id)estimate
{
  v14[3] = *MEMORY[0x277D85DE8];
  v14[0] = @"range";
  v13[0] = @"type";
  v13[1] = @"range";
  v4 = MEMORY[0x277CCABB0];
  estimateCopy = estimate;
  [estimateCopy range];
  v6 = [v4 numberWithFloat:?];
  v14[1] = v6;
  v13[2] = @"time";
  v7 = MEMORY[0x277CCABB0];
  [estimateCopy timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v14[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];

  rangeEstimatorOutput = [(PRDataRecorder *)self rangeEstimatorOutput];
  [rangeEstimatorOutput addObject:v11];
}

- (void)recordTargetMovingStateChanged:(BOOL)changed atTime:(double)time
{
  changedCopy = changed;
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"time";
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v10[1] = @"moving";
  v11[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithBool:changedCopy];
  v11[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];

  estimatorInput = [(PRDataRecorder *)self estimatorInput];
  [estimatorInput addObject:v8];
}

- (void)recordCustomData:(id)data forKey:(id)key
{
  keyCopy = key;
  dataCopy = data;
  customData = [(PRDataRecorder *)self customData];
  [customData setObject:dataCopy forKey:keyCopy];
}

- (void)writeSensorDataToURL:(id)l
{
  v4 = MEMORY[0x277CBEB78];
  lCopy = l;
  v12 = [[v4 alloc] initWithURL:lCopy append:0];

  [v12 open];
  customData = [(PRDataRecorder *)self customData];
  v7 = [customData mutableCopy];

  measurements = [(PRDataRecorder *)self measurements];
  [v7 setObject:measurements forKey:@"measurements"];

  estimatorInput = [(PRDataRecorder *)self estimatorInput];
  [v7 setObject:estimatorInput forKey:@"estimator_input"];

  estimatorOutput = [(PRDataRecorder *)self estimatorOutput];
  [v7 setObject:estimatorOutput forKey:@"estimator_output"];

  rangeEstimatorOutput = [(PRDataRecorder *)self rangeEstimatorOutput];
  [v7 setObject:rangeEstimatorOutput forKey:@"range_estimator_output"];

  [MEMORY[0x277CCAAA0] writeJSONObject:v7 toStream:v12 options:1 error:0];
  [v12 close];
}

- (id)stopAndSave
{
  writeToURL = [(PRDataRecorder *)self writeToURL];
  [(PRDataRecorder *)self stopAndDiscard];

  return writeToURL;
}

- (id)writeToURL
{
  v3 = +[PRDataRecorder generateFilename];
  v4 = +[PRDataRecorder generateTemporaryDirectoryURL];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.json", v3];
  v6 = [v4 URLByAppendingPathComponent:v5];
  [(PRDataRecorder *)self writeSensorDataToURL:v6];

  v7 = [v4 URLByAppendingPathComponent:v3];

  return v7;
}

@end