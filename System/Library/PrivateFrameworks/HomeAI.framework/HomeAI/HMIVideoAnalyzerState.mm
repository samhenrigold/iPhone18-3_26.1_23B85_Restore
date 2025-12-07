@interface HMIVideoAnalyzerState
- (HMIVideoAnalyzerState)initWithConfiguration:(id)configuration dynamicConfiguration:(id)dynamicConfiguration identifier:(id)identifier monitored:(BOOL)monitored analysisFPS:(double)s timeSinceAnalyzerStarted:(double)started timeSinceLastFragmentWasReceived:(double)received bufferFillRatio:(double)self0 bufferSize:(unint64_t)self1 delay:(double)self2 currentPTS:(id *)self3 numDecodedSamples:(unint64_t)self4 numDidAnalyzeFrames:(unint64_t)self5 numDidAnalyzeFragments:(unint64_t)self6 numDidAnalyzePackages:(unint64_t)self7 numDidCreateTimelapseFragments:(unint64_t)self8 averageAnalysisTime:(double)self9 encode:(BOOL)encode encoder:(BOOL)encoder decodeMode:(int64_t)mode;
- (NSArray)tableValues;
- (NSDictionary)JSONObject;
- (void)check;
@end

@implementation HMIVideoAnalyzerState

- (HMIVideoAnalyzerState)initWithConfiguration:(id)configuration dynamicConfiguration:(id)dynamicConfiguration identifier:(id)identifier monitored:(BOOL)monitored analysisFPS:(double)s timeSinceAnalyzerStarted:(double)started timeSinceLastFragmentWasReceived:(double)received bufferFillRatio:(double)self0 bufferSize:(unint64_t)self1 delay:(double)self2 currentPTS:(id *)self3 numDecodedSamples:(unint64_t)self4 numDidAnalyzeFrames:(unint64_t)self5 numDidAnalyzeFragments:(unint64_t)self6 numDidAnalyzePackages:(unint64_t)self7 numDidCreateTimelapseFragments:(unint64_t)self8 averageAnalysisTime:(double)self9 encode:(BOOL)encode encoder:(BOOL)encoder decodeMode:(int64_t)mode
{
  configurationCopy = configuration;
  dynamicConfigurationCopy = dynamicConfiguration;
  identifierCopy = identifier;
  v47.receiver = self;
  v47.super_class = HMIVideoAnalyzerState;
  v38 = [(HMIVideoAnalyzerState *)&v47 init];
  v39 = v38;
  if (v38)
  {
    objc_storeStrong(&v38->_configuration, configuration);
    objc_storeStrong(&v39->_dynamicConfiguration, dynamicConfiguration);
    objc_storeStrong(&v39->_identifier, identifier);
    v39->_monitored = monitored;
    v39->_analysisFPS = s;
    v39->_timeSinceAnalyzerStarted = started;
    v39->_timeSinceLastFragmentWasReceived = received;
    v39->_bufferFillRatio = ratio;
    v39->_bufferSize = size;
    v39->_delay = delay;
    var3 = tS->var3;
    *&v39->_currentPTS.value = *&tS->var0;
    v39->_currentPTS.epoch = var3;
    v39->_numDecodedSamples = samples;
    v39->_numDidAnalyzeFrames = frames;
    v39->_numDidAnalyzeFragments = fragments;
    v39->_numDidAnalyzePackages = packages;
    v39->_numDidCreateTimelapseFragments = timelapseFragments;
    v39->_averageAnalysisTime = time;
    v41 = +[HMIVideoAnalyzerScheduler sharedInstance];
    analyzers = [v41 analyzers];
    v39->_activeAnalyzerCount = [analyzers count];

    v43 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v39->_systemResourceUsageLevel = [v43 usageLevel];

    v44 = +[HMIThermalMonitor sharedInstance];
    v39->_thermalLevel = [v44 thermalLevel];

    v45 = +[HMIVideoAnalyzerScheduler sharedInstance];
    v39->_thermalAndSystemResourceUsageLevelIgnored = [v45 ignoreThermalAndSystemResourceUsageLevel];

    v39->_encode = encode;
    v39->_encoder = encoder;
    v39->_decodeMode = mode;
  }

  return v39;
}

- (NSArray)tableValues
{
  array = [MEMORY[0x277CBEB18] array];
  identifier = [(HMIVideoAnalyzerState *)self identifier];
  v5 = HMIUUIDShortDescription(identifier);
  [array addObject:?];

  v6 = MEMORY[0x277CCACA8];
  configuration = [(HMIVideoAnalyzerState *)self configuration];
  camera = [configuration camera];
  name = [camera name];
  configuration2 = [(HMIVideoAnalyzerState *)self configuration];
  camera2 = [configuration2 camera];
  model = [camera2 model];
  v13 = [v6 stringWithFormat:name, model];
  [array addObject:?];

  v14 = MEMORY[0x277CCACA8];
  monitored = [(HMIVideoAnalyzerState *)self monitored];
  v16 = @"N";
  if (monitored)
  {
    v16 = @"Y";
  }

  v17 = [v14 stringWithFormat:v16];
  [array addObject:?];

  if ([(HMIVideoAnalyzerState *)self decodeMode]<= 2)
  {
    [array addObject:?];
  }

  v18 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self analysisFPS];
  v20 = [v18 stringWithFormat:v19];
  [array addObject:?];

  v21 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self timeSinceAnalyzerStarted];
  v23 = [v21 stringWithFormat:v22];
  [array addObject:?];

  v24 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  v26 = [v24 stringWithFormat:v25];
  [array addObject:?];

  string = [MEMORY[0x277CCAB68] string];
  [(HMIVideoAnalyzerState *)self bufferFillRatio];
  v28 = [&stru_284057FB8 stringByPaddingToLength:? withString:? startingAtIndex:?];
  [string appendFormat:v28];

  v29 = [&stru_284057FB8 stringByPaddingToLength:? withString:? startingAtIndex:?];
  [string appendFormat:v29];

  [string appendFormat:-[HMIVideoAnalyzerState bufferSize](self, "bufferSize") >> 10];
  v66 = string;
  [array addObject:?];
  v30 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self delay];
  v32 = [v30 stringWithFormat:v31];
  [array addObject:?];

  v33 = MEMORY[0x277CCACA8];
  numDecodedSamples = [(HMIVideoAnalyzerState *)self numDecodedSamples];
  [&time currentPTS];
  v35 = [v33 stringWithFormat:numDecodedSamples, CMTimeGetSeconds(&time)];
  [array addObject:?];

  v36 = [MEMORY[0x277CCACA8] stringWithFormat:-[HMIVideoAnalyzerState numDidAnalyzeFrames](self, "numDidAnalyzeFrames"), -[HMIVideoAnalyzerState numDidAnalyzeFragments](self, "numDidAnalyzeFragments")];
  [array addObject:?];

  v37 = [MEMORY[0x277CCACA8] stringWithFormat:self->_numDidAnalyzePackages];
  [array addObject:?];

  v38 = MEMORY[0x277CCACA8];
  [(HMIVideoAnalyzerState *)self averageAnalysisTime];
  v40 = [v38 stringWithFormat:v39];
  [array addObject:?];

  v64 = MEMORY[0x277CCACA8];
  configuration3 = [(HMIVideoAnalyzerState *)self configuration];
  transcode = [configuration3 transcode];
  encode = [(HMIVideoAnalyzerState *)self encode];
  encoder = [(HMIVideoAnalyzerState *)self encoder];
  configuration4 = [(HMIVideoAnalyzerState *)self configuration];
  v45 = HMIFourCCString([configuration4 transcodeCodecType]);
  configuration5 = [(HMIVideoAnalyzerState *)self configuration];
  v47 = @"T";
  if (configuration5)
  {
    v48 = @"t";
    [&v67 timelapseInterval];
    if ((v68 & 0x100000000) != 0)
    {
      v48 = @"T";
    }
  }

  else
  {
    v67 = 0;
    v68 = 0;
    v48 = @"t";
    v69 = 0;
  }

  if (encoder)
  {
    v49 = @"C";
  }

  else
  {
    v49 = @"c";
  }

  if (encode)
  {
    v50 = @"E";
  }

  else
  {
    v50 = @"e";
  }

  if (!transcode)
  {
    v47 = @"t";
  }

  v51 = [v64 stringWithFormat:v47, v50, v49, v45, v48, -[HMIVideoAnalyzerState numDidCreateTimelapseFragments](self, "numDidCreateTimelapseFragments")];
  [array addObject:?];

  dynamicConfiguration = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  v53 = MEMORY[0x277CCACA8];
  recognizeFaces = [dynamicConfiguration recognizeFaces];
  v55 = @"N";
  if (recognizeFaces)
  {
    v55 = @"Y";
  }

  v56 = [v53 stringWithFormat:v55];
  [array addObject:?];

  v57 = MEMORY[0x277CCACA8];
  activityZones = [dynamicConfiguration activityZones];
  v59 = [v57 stringWithFormat:objc_msgSend(activityZones, "count")];
  [array addObject:?];

  string2 = [MEMORY[0x277CCAB68] string];
  [dynamicConfiguration eventTriggers];
  [string2 appendString:?];
  [string2 appendString:?];
  [string2 appendString:?];
  [string2 appendString:?];
  [string2 appendString:?];
  v61 = [MEMORY[0x277CCACA8] stringWithFormat:string2];
  [array addObject:?];

  v62 = [array copy];

  return v62;
}

- (NSDictionary)JSONObject
{
  identifier = [(HMIVideoAnalyzerState *)self identifier];
  uUIDString = [identifier UUIDString];
  v3 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self monitored];
  v48 = [v3 numberWithBool:?];
  v4 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self analysisFPS];
  v43 = [v4 numberWithDouble:?];
  v49 = HMIJSONDecimalNumberForNumber(v43, 3);
  v5 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self timeSinceAnalyzerStarted];
  v42 = [v5 numberWithDouble:?];
  v50 = HMIJSONDecimalNumberForNumber(v42, 3);
  v6 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  v41 = [v6 numberWithDouble:?];
  v51 = HMIJSONDecimalNumberForNumber(v41, 3);
  v7 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self bufferFillRatio];
  v40 = [v7 numberWithDouble:?];
  v52 = HMIJSONDecimalNumberForNumber(v40, 3);
  v8 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self bufferSize];
  v53 = [v8 numberWithUnsignedInteger:?];
  v9 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self delay];
  v39 = [v9 numberWithDouble:?];
  v54 = HMIJSONDecimalNumberForNumber(v39, 3);
  v10 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self numDecodedSamples];
  v55 = [v10 numberWithUnsignedInteger:?];
  v11 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self numDidAnalyzeFrames];
  v56 = [v11 numberWithUnsignedInteger:?];
  v12 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self numDidAnalyzePackages];
  v57 = [v12 numberWithUnsignedInteger:?];
  v13 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self numDidCreateTimelapseFragments];
  v58 = [v13 numberWithUnsignedInteger:?];
  v14 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self averageAnalysisTime];
  v38 = [v14 numberWithDouble:?];
  v59 = HMIJSONDecimalNumberForNumber(v38, 3);
  v60 = HMIVideoAnalyzerDecodeModeAsString([(HMIVideoAnalyzerState *)self decodeMode]);
  v15 = MEMORY[0x277CCABB0];
  configuration = [(HMIVideoAnalyzerState *)self configuration];
  [configuration transcode];
  v61 = [v15 numberWithBool:?];
  configuration2 = [(HMIVideoAnalyzerState *)self configuration];
  v62 = HMIFourCCString([configuration2 transcodeCodecType]);
  v16 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self encode];
  v63 = [v16 numberWithBool:?];
  v17 = MEMORY[0x277CCABB0];
  [(HMIVideoAnalyzerState *)self encoder];
  v64 = [v17 numberWithBool:?];
  v18 = MEMORY[0x277CCABB0];
  dynamicConfiguration = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  [dynamicConfiguration recognizeFaces];
  v65 = [v18 numberWithBool:?];
  v20 = MEMORY[0x277CCABB0];
  dynamicConfiguration2 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  activityZones = [dynamicConfiguration2 activityZones];
  [activityZones count];
  v66 = [v20 numberWithUnsignedInteger:?];
  v23 = MEMORY[0x277CCABB0];
  dynamicConfiguration3 = [(HMIVideoAnalyzerState *)self dynamicConfiguration];
  [dynamicConfiguration3 eventTriggers];
  v67 = [v23 numberWithInteger:?];
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v26 = [v25 mutableCopy];

  configuration3 = [(HMIVideoAnalyzerState *)self configuration];
  camera = [configuration3 camera];

  if (camera)
  {
    configuration4 = [(HMIVideoAnalyzerState *)self configuration];
    camera2 = [configuration4 camera];
    name = [camera2 name];
    configuration5 = [(HMIVideoAnalyzerState *)self configuration];
    camera3 = [configuration5 camera];
    manufacturer = [camera3 manufacturer];
    v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v26 setObject:? forKeyedSubscript:?];
  }

  v34 = [v26 copy];

  return v34;
}

- (void)check
{
  array = [MEMORY[0x277CBEB18] array];
  [(HMIVideoAnalyzerState *)self timeSinceLastFragmentWasReceived];
  if (v3 > 60.0)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:?];
    [array addObject:?];
  }

  if ([array count])
  {
    v5 = [array componentsJoinedByString:?];
    HMISimulateCrash(@"Session Check", v5, 1);
  }
}

@end