@interface PTCinematographyNetwork
+ (BOOL)existsVersionString:(id)string;
+ (NSString)defaultVersionString;
+ (id)defaultVersionStringForDetectionModel:(unint64_t)model;
+ (id)earliestVersionString;
+ (id)firstExistingVersion:(id)version;
+ (id)latestVersionString;
- (BOOL)_allNetworkDetectionsAreStaleAtTime:(id *)time;
- (BOOL)_isNetworkCompatibleDetectionType:(unint64_t)type;
- (BOOL)_loadEspressoNetwork:(id)network;
- (BOOL)_shouldIgnoreNetworkPredictionIndex:(unint64_t)index time:(id *)time;
- (BOOL)_shouldResetDetectionFromType:(unint64_t)type toType:(unint64_t)toType;
- (PTCinematographyNetwork)init;
- (PTCinematographyNetwork)initWithVersionString:(id)string;
- (float)expectedFPS;
- (id)_asCinematographyDictionary;
- (id)_detectionAtNetworkIndex:(unint64_t)index frameDetections:(id)detections;
- (id)_initWithCinematographyDictionary:(id)dictionary;
- (id)_initWithNetwork:(id)network parameters:(id)parameters;
- (id)stepWithFrameDetections:(id)detections;
- (unint64_t)_allocateNetworkDetectionIndex;
- (unint64_t)_getLeastRecentNetworkDetectionIndex;
- (unint64_t)_networkPredictionIndex;
- (void)_debugLogAllNetworkInputs;
- (void)_debugLogNetworkInputs;
- (void)_debugLogNetworkOutputs;
- (void)_forgetNetworkDetectionAtIndex:(unint64_t)index;
- (void)_forgetNetworkDetectionsOlderThan:(id *)than;
- (void)_networkPredictionIndex;
- (void)_setDetection:(id)detection asInputRow:(unint64_t)row time:(id *)time missing:(BOOL)missing;
- (void)_setMissingDetectionAtIndex:(unint64_t)index time:(id *)time;
- (void)_setNetworkDetection:(id)detection atIndex:(unint64_t)index time:(id *)time;
- (void)_setNetworkDetectionsFromFrameDetections:(id)detections;
- (void)_setNetworkInputsFromNetworkDetections;
- (void)_updateLastNetworkPredictionIndex:(unint64_t)index time:(id *)time;
- (void)dealloc;
@end

@implementation PTCinematographyNetwork

+ (NSString)defaultVersionString
{
  v2 = [self firstExistingVersion:&unk_2837F3838];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [&unk_2837F3850 objectAtIndexedSubscript:0];
  }

  v5 = v4;

  return v5;
}

+ (id)defaultVersionStringForDetectionModel:(unint64_t)model
{
  if (model == 1)
  {
    v3 = &unk_2837F3868;
    v4 = 0;
    goto LABEL_5;
  }

  if (model == 2)
  {
    v3 = &unk_2837F3880;
    v4 = 1;
LABEL_5:
    defaultVersionString = [v3 objectAtIndexedSubscript:v4];
    goto LABEL_7;
  }

  defaultVersionString = [self defaultVersionString];
LABEL_7:

  return defaultVersionString;
}

+ (id)firstExistingVersion:(id)version
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  versionCopy = version;
  v5 = [versionCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(versionCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([self existsVersionString:{v9, v14}])
        {
          v12 = v9;
          v11 = versionCopy;
          goto LABEL_13;
        }
      }

      v6 = [versionCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = _PTLogSystem(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[PTCinematographyNetwork firstExistingVersion:];
  }

  v12 = 0;
LABEL_13:

  return v12;
}

+ (BOOL)existsVersionString:(id)string
{
  v4 = MEMORY[0x277CCA8D8];
  stringCopy = string;
  v6 = [v4 bundleForClass:self];
  v7 = PTVersionStringWithComponents(stringCopy, 1);

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"cinematography_models/%@", v7];
  v9 = [v6 URLForResource:@"model.espresso" withExtension:@"net" subdirectory:v8];
  v10 = v9 != 0;

  return v10;
}

- (PTCinematographyNetwork)init
{
  defaultVersionString = [objc_opt_class() defaultVersionString];
  v4 = [(PTCinematographyNetwork *)self initWithVersionString:defaultVersionString];

  return v4;
}

- (PTCinematographyNetwork)initWithVersionString:(id)string
{
  v21 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v7 = PTVersionStringWithComponents(stringCopy, 1);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"cinematography_models/%@", v7];
  v9 = [v6 URLForResource:@"model.espresso" withExtension:@"net" subdirectory:v8];
  if (v9)
  {
    v10 = [v6 URLForResource:@"model.parameters" withExtension:@"json" subdirectory:v8];
    if (!v10)
    {
      v11 = _PTLogSystem(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v20 = v7;
        _os_log_impl(&dword_2243FB000, v11, OS_LOG_TYPE_DEFAULT, "no model parameters json file for version %@", buf, 0xCu);
      }
    }

    v12 = [[PTCinematographyNetworkParameters alloc] initWithURL:v10];
    if (v12)
    {
      v13 = [(PTCinematographyNetwork *)self _initWithNetwork:v9 parameters:v12];
      v14 = v13;
      if (v13)
      {
        v15 = _PTLogSystem(v13);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          [PTCinematographyNetwork initWithVersionString:];
        }

        objc_storeStrong(v14 + 153, string);
      }

      self = v14;
      selfCopy = self;
    }

    else
    {
      v17 = _PTLogSystem(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyNetwork initWithVersionString:];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v10 = _PTLogSystem(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetwork initWithVersionString:];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)_initWithNetwork:(id)network parameters:(id)parameters
{
  v42 = *MEMORY[0x277D85DE8];
  networkCopy = network;
  parametersCopy = parameters;
  v40.receiver = self;
  v40.super_class = PTCinematographyNetwork;
  v8 = [(PTCinematographyNetwork *)&v40 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_params, parameters);
    v10 = [(PTCinematographyNetwork *)v9 _loadEspressoNetwork:networkCopy];
    if (v10)
    {
      v33 = parametersCopy;
      v9->_step_i = -1;
      *&v9->_lastNetworkPredictionIndex = xmmword_2244A52E0;
      v11 = [PTCinematographyDetection alloc];
      v38 = *MEMORY[0x277CC0888];
      v39 = *(MEMORY[0x277CC0888] + 16);
      v12 = [(PTCinematographyDetection *)v11 initWithTime:&v38 rect:*MEMORY[0x277CBF3A0] focusDistance:*(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 0.0];
      zeroDisparityDetection = v9->_zeroDisparityDetection;
      v9->_zeroDisparityDetection = v12;

      [(PTCinematographyDetection *)v9->_zeroDisparityDetection setDetectionType:101];
      [(PTCinematographyDetection *)v9->_zeroDisparityDetection setTrackIdentifier:0x1000000000];
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:v9->_x_in.height];
      networkDetections = v9->_networkDetections;
      v9->_networkDetections = v14;

      indexSet = [MEMORY[0x277CCAB58] indexSet];
      unusedIndexes = v9->_unusedIndexes;
      v9->_unusedIndexes = indexSet;

      array = [MEMORY[0x277CBEB18] array];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      params = [(PTCinematographyNetwork *)v9 params];
      inputSchemas = [params inputSchemas];

      v21 = [inputSchemas countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(inputSchemas);
            }

            v25 = *(*(&v34 + 1) + 8 * i);
            v26 = [PTCinematographyNetworkSignal alloc];
            params2 = [v25 params];
            v28 = [(PTCinematographyNetworkSignal *)v26 initWithModelDictionary:params2];

            [array addObject:v28];
          }

          v22 = [inputSchemas countByEnumeratingWithState:&v34 objects:v41 count:16];
        }

        while (v22);
      }

      v29 = [array copy];
      inputSignals = v9->_inputSignals;
      v9->_inputSignals = v29;

      bzero(v9->_x_in.data, 4 * v9->_x_in.width * v9->_x_in.height);
      bzero(v9->_mask_in.data, 4 * v9->_mask_in.height);
      bzero(v9->_hx_out.data, 4 * v9->_hx_out.width * v9->_hx_out.height);
      bzero(v9->_cx_out.data, 4 * v9->_cx_out.width * v9->_cx_out.height);
      v31 = v9;
      parametersCopy = v33;
    }

    else
    {
      array = _PTLogSystem(v10);
      if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyNetwork _initWithNetwork:parameters:];
      }

      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (void)dealloc
{
  espresso_plan_destroy();
  espresso_context_destroy();
  v3.receiver = self;
  v3.super_class = PTCinematographyNetwork;
  [(PTCinematographyNetwork *)&v3 dealloc];
}

- (float)expectedFPS
{
  params = [(PTCinematographyNetwork *)self params];
  [params expectedFPS];
  v4 = v3;

  return v4;
}

- (id)stepWithFrameDetections:(id)detections
{
  detectionsCopy = detections;
  ++self->_step_i;
  [(PTCinematographyNetwork *)self _setNetworkDetectionsFromFrameDetections:detectionsCopy];
  params = [(PTCinematographyNetwork *)self params];
  if ([params runOnlyWhenDetectorDidRun] && (objc_msgSend(detectionsCopy, "detectorDidRun"), (v6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v6;
    detectorDidRun = [detectionsCopy detectorDidRun];
    bOOLValue = [detectorDidRun BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      lastFocusDetection = [(PTCinematographyNetwork *)self lastFocusDetection];

      v12 = _PTLogSystem(v11);
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (lastFocusDetection)
      {
        if (v13)
        {
          [PTCinematographyNetwork stepWithFrameDetections:];
        }

        lastFocusDetection2 = [(PTCinematographyNetwork *)self lastFocusDetection];
        v15 = [detectionsCopy detectionForTrackIdentifier:{objc_msgSend(lastFocusDetection2, "trackIdentifier")}];
        v16 = v15;
        if (v15)
        {
          lastFocusDetection3 = v15;
        }

        else
        {
          lastFocusDetection3 = [(PTCinematographyNetwork *)self lastFocusDetection];
        }

        autoFocusDetection = lastFocusDetection3;
      }

      else
      {
        if (v13)
        {
          [PTCinematographyNetwork stepWithFrameDetections:];
        }

        autoFocusDetection = [detectionsCopy autoFocusDetection];
        [(PTCinematographyNetwork *)self setLastFocusDetection:autoFocusDetection];
      }

      goto LABEL_27;
    }
  }

  else
  {
  }

  v35 = 0uLL;
  v36 = 0;
  if (detectionsCopy)
  {
    objc_msgSend_presentationTime(detectionsCopy);
  }

  v18 = _PTLogSystem([(PTCinematographyNetwork *)self _setNetworkInputsFromNetworkDetections]);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG);

  if (v19)
  {
    v21 = _PTLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork stepWithFrameDetections:];
    }

    [(PTCinematographyNetwork *)self _debugLogNetworkInputs];
  }

  _networkPredictionIndex = [(PTCinematographyNetwork *)self _networkPredictionIndex];
  v23 = _PTLogSystem(_networkPredictionIndex);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);

  if (v24)
  {
    v26 = _PTLogSystem(v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork stepWithFrameDetections:];
    }

    [(PTCinematographyNetwork *)self _debugLogNetworkOutputs];
  }

  v33 = v35;
  v34 = v36;
  v27 = [(PTCinematographyNetwork *)self _shouldIgnoreNetworkPredictionIndex:_networkPredictionIndex time:&v33];
  if (v27)
  {
    v28 = _PTLogSystem(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [(PTCinematographyNetwork *)self stepWithFrameDetections:_networkPredictionIndex];
    }

    _networkPredictionIndex = 0;
  }

  autoFocusDetection = [(PTCinematographyNetwork *)self _detectionAtNetworkIndex:_networkPredictionIndex frameDetections:detectionsCopy];
  if (!autoFocusDetection)
  {
    autoFocusDetection = [detectionsCopy autoFocusDetection];
  }

  v33 = v35;
  v34 = v36;
  [(PTCinematographyNetwork *)self _updateLastNetworkPredictionIndex:_networkPredictionIndex time:&v33];
LABEL_27:
  params2 = [(PTCinematographyNetwork *)self params];
  runOnlyWhenDetectorDidRun = [params2 runOnlyWhenDetectorDidRun];

  if (runOnlyWhenDetectorDidRun)
  {
    [(PTCinematographyNetwork *)self setLastFocusDetection:autoFocusDetection];
  }

  return autoFocusDetection;
}

- (void)_updateLastNetworkPredictionIndex:(unint64_t)index time:(id *)time
{
  lastNetworkPredictionIndex = [(PTCinematographyNetwork *)self lastNetworkPredictionIndex];
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v9 = [networkDetections objectAtIndexedSubscript:index];
  trackIdentifier = [v9 trackIdentifier];

  lastNetworkPredictionTrackID = [(PTCinematographyNetwork *)self lastNetworkPredictionTrackID];
  if (!lastNetworkPredictionIndex)
  {
    goto LABEL_9;
  }

  v12 = lastNetworkPredictionTrackID;
  if (lastNetworkPredictionTrackID == trackIdentifier)
  {
    goto LABEL_9;
  }

  unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
  if ([unusedIndexes containsIndex:lastNetworkPredictionIndex])
  {
LABEL_8:

    goto LABEL_9;
  }

  networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
  v15 = [networkDetections2 objectAtIndexedSubscript:lastNetworkPredictionIndex];
  if ([v15 trackIdentifier] != v12)
  {

    goto LABEL_8;
  }

  networkDetections3 = [(PTCinematographyNetwork *)self networkDetections];
  v17 = [networkDetections3 objectAtIndexedSubscript:lastNetworkPredictionIndex];
  v18 = v17;
  if (v17)
  {
    objc_msgSend_time(v17);
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v22 = *time;
  v19 = CMTimeCompare(&time1, &v22);

  if (v19 < 0)
  {
    v21 = _PTLogSystem(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork _updateLastNetworkPredictionIndex:lastNetworkPredictionIndex time:?];
    }

    [(PTCinematographyNetwork *)self _forgetNetworkDetectionAtIndex:lastNetworkPredictionIndex];
  }

LABEL_9:
  [(PTCinematographyNetwork *)self setLastNetworkPredictionIndex:index];
  [(PTCinematographyNetwork *)self setLastNetworkPredictionTrackID:trackIdentifier];
}

- (BOOL)_isNetworkCompatibleDetectionType:(unint64_t)type
{
  params = [(PTCinematographyNetwork *)self params];
  supportedDetectionTypes = [params supportedDetectionTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:type];
  v7 = [supportedDetectionTypes containsObject:v6];

  return v7;
}

- (BOOL)_loadEspressoNetwork:(id)network
{
  networkCopy = network;
  context = espresso_create_context();
  self->_context = context;
  if (context)
  {
    plan = espresso_create_plan();
    self->_plan = plan;
    if (plan)
    {
      path = [networkCopy path];
      [path UTF8String];
      v8 = espresso_plan_add_network();

      if (v8)
      {
        v10 = _PTLogSystem(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [PTCinematographyNetwork _loadEspressoNetwork:];
        }
      }

      else
      {
        v11 = espresso_plan_build();
        if (v11)
        {
          v10 = _PTLogSystem(v11);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }

        else
        {
          [@"x" UTF8String];
          v14 = espresso_network_bind_buffer();
          if (v14)
          {
            v15 = _PTLogSystem(v14);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [PTCinematographyNetwork _loadEspressoNetwork:];
            }
          }

          [@"hx_in" UTF8String];
          v16 = espresso_network_bind_buffer();
          if (v16)
          {
            v17 = _PTLogSystem(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
            {
              [PTCinematographyNetwork _loadEspressoNetwork:];
            }
          }

          [@"cx_in" UTF8String];
          v18 = espresso_network_bind_buffer();
          if (v18)
          {
            v19 = _PTLogSystem(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              [PTCinematographyNetwork _loadEspressoNetwork:];
            }
          }

          [@"mask" UTF8String];
          v20 = espresso_network_bind_buffer();
          if (v20)
          {
            v21 = _PTLogSystem(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              [PTCinematographyNetwork _loadEspressoNetwork:];
            }
          }

          [@"hx_out" UTF8String];
          v22 = espresso_network_bind_buffer();
          if (v22)
          {
            v23 = _PTLogSystem(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [PTCinematographyNetwork _loadEspressoNetwork:];
            }
          }

          [@"cx_out" UTF8String];
          v24 = espresso_network_bind_buffer();
          if (v24)
          {
            v25 = _PTLogSystem(v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              [PTCinematographyNetwork _loadEspressoNetwork:];
            }
          }

          [@"pred" UTF8String];
          v26 = espresso_network_bind_buffer();
          if (v26)
          {
            v27 = _PTLogSystem(v26);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              [PTCinematographyNetwork _loadEspressoNetwork:];
            }
          }

          if (self->_x_in.height)
          {
            v12 = 1;
            goto LABEL_14;
          }

          v10 = _PTLogSystem(v26);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            [PTCinematographyNetwork _loadEspressoNetwork:];
          }
        }
      }
    }

    else
    {
      v10 = _PTLogSystem(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyNetwork _loadEspressoNetwork:];
      }
    }
  }

  else
  {
    v10 = _PTLogSystem(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetwork _loadEspressoNetwork:];
    }
  }

  v12 = 0;
LABEL_14:

  return v12;
}

- (BOOL)_shouldIgnoreNetworkPredictionIndex:(unint64_t)index time:(id *)time
{
  if (!index)
  {
    return 0;
  }

  lastNetworkPredictionTrackID = [(PTCinematographyNetwork *)self lastNetworkPredictionTrackID];
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v9 = [networkDetections objectAtIndexedSubscript:index];
  trackIdentifier = [v9 trackIdentifier];

  if (lastNetworkPredictionTrackID == trackIdentifier)
  {
    return 0;
  }

  networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
  v12 = [networkDetections2 objectAtIndexedSubscript:index];
  v13 = v12;
  if (v12)
  {
    objc_msgSend_time(v12);
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  v16 = *time;
  v15 = CMTimeCompare(&time1, &v16);

  if ((v15 & 0x80000000) == 0)
  {
    return 0;
  }

  if (![(PTCinematographyNetwork *)self lastNetworkPredictionIndex])
  {
    return 1;
  }

  time1 = *time;
  return [(PTCinematographyNetwork *)self _allNetworkDetectionsAreStaleAtTime:&time1];
}

- (BOOL)_allNetworkDetectionsAreStaleAtTime:(id *)time
{
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v6 = [networkDetections count];

  if (v6 < 2)
  {
    return 1;
  }

  v7 = 1;
  while (1)
  {
    unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
    v9 = [unusedIndexes containsIndex:v7];

    if ((v9 & 1) == 0)
    {
      networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
      v11 = [networkDetections2 objectAtIndexedSubscript:v7];
      v12 = v11;
      if (v11)
      {
        objc_msgSend_time(v11);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v17 = *time;
      v13 = CMTimeCompare(&time1, &v17);

      if (!v13)
      {
        break;
      }
    }

    ++v7;
    networkDetections3 = [(PTCinematographyNetwork *)self networkDetections];
    v15 = [networkDetections3 count];

    if (v7 >= v15)
    {
      return 1;
    }
  }

  return 0;
}

- (void)_setNetworkDetectionsFromFrameDetections:(id)detections
{
  v43 = *MEMORY[0x277D85DE8];
  detectionsCopy = detections;
  v5 = MEMORY[0x277CBEB58];
  allTrackIdentifiersForCinematicChoice = [detectionsCopy allTrackIdentifiersForCinematicChoice];
  v7 = [v5 setWithArray:allTrackIdentifiersForCinematicChoice];

  memset(&v41, 0, sizeof(v41));
  if (detectionsCopy)
  {
    objc_msgSend_presentationTime(detectionsCopy);
  }

  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v9 = [networkDetections count];

  if (v9)
  {
    v40 = v41;
    [(PTCinematographyNetwork *)self _setMissingDetectionAtIndex:0 time:&v40];
  }

  else
  {
    zeroDisparityDetection = [(PTCinematographyNetwork *)self zeroDisparityDetection];
    v40 = v41;
    [(PTCinematographyNetwork *)self _setNetworkDetection:zeroDisparityDetection atIndex:0 time:&v40];
  }

  [(PTCinematographyNetworkParameters *)self->_params forgetDetectionsAfterSeconds];
  if (v11 > 0.0)
  {
    v12 = v11;
    memset(&v40, 0, sizeof(v40));
    if (detectionsCopy)
    {
      objc_msgSend_presentationTime(detectionsCopy);
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    CMTimeMakeWithSeconds(&rhs, v12, 90000);
    CMTimeSubtract(&v40, &lhs, &rhs);
    lhs = v40;
    [(PTCinematographyNetwork *)self _forgetNetworkDetectionsOlderThan:&lhs];
  }

  networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
  v14 = [networkDetections2 count];

  if (v14 >= 2)
  {
    v15 = 1;
    do
    {
      unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
      v17 = [unusedIndexes containsIndex:v15];

      if ((v17 & 1) == 0)
      {
        networkDetections3 = [(PTCinematographyNetwork *)self networkDetections];
        v19 = [networkDetections3 objectAtIndexedSubscript:v15];
        trackIdentifier = [v19 trackIdentifier];

        v21 = [MEMORY[0x277CCABB0] numberWithInteger:trackIdentifier];
        LODWORD(v19) = [v7 containsObject:v21];

        if (v19)
        {
          v22 = [detectionsCopy detectionForTrackIdentifier:trackIdentifier];
          v40 = v41;
          [(PTCinematographyNetwork *)self _setNetworkDetection:v22 atIndex:v15 time:&v40];
          v23 = [MEMORY[0x277CCABB0] numberWithInteger:trackIdentifier];
          [v7 removeObject:v23];
        }

        else
        {
          v40 = v41;
          [(PTCinematographyNetwork *)self _setMissingDetectionAtIndex:v15 time:&v40];
        }
      }

      ++v15;
      networkDetections4 = [(PTCinematographyNetwork *)self networkDetections];
      v25 = [networkDetections4 count];
    }

    while (v15 < v25);
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v26 = v7;
  v27 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v35;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = PTTrackIDFromNumber(*(*(&v34 + 1) + 8 * i));
        v32 = [detectionsCopy detectionForTrackIdentifier:{v31, v34}];
        if (-[PTCinematographyNetwork _isNetworkCompatibleDetectionType:](self, "_isNetworkCompatibleDetectionType:", [v32 detectionType]))
        {
          _allocateNetworkDetectionIndex = [(PTCinematographyNetwork *)self _allocateNetworkDetectionIndex];
          v40 = v41;
          [(PTCinematographyNetwork *)self _setNetworkDetection:v32 atIndex:_allocateNetworkDetectionIndex time:&v40];
        }
      }

      v28 = [v26 countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v28);
  }
}

- (void)_setNetworkInputsFromNetworkDetections
{
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v4 = [networkDetections count];

  if (v4)
  {
    v5 = 0;
    do
    {
      unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
      if ([unusedIndexes containsIndex:v5])
      {
        v7 = 0.0;
      }

      else
      {
        v7 = 1.0;
      }

      *(self->_mask_in.data + v5) = v7;

      ++v5;
      networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
      v9 = [networkDetections2 count];
    }

    while (v5 < v9);
  }

  memcpy(self->_hx_in.data, self->_hx_out.data, 4 * self->_hx_in.width * self->_hx_in.height);
  data = self->_cx_in.data;
  v11 = self->_cx_out.data;
  v12 = 4 * self->_cx_in.width * self->_cx_in.height;

  memcpy(data, v11, v12);
}

- (unint64_t)_networkPredictionIndex
{
  v3 = espresso_plan_execute_sync();
  height = self->_pred_out.height;
  if (height < 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0;
    data = self->_pred_out.data;
    v7 = *data;
    for (i = 1; i != height; ++i)
    {
      if (v7 < data[i])
      {
        v5 = i;
        v7 = data[i];
      }
    }
  }

  v9 = _PTLogSystem(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _networkPredictionIndex];
  }

  return v5;
}

- (id)_detectionAtNetworkIndex:(unint64_t)index frameDetections:(id)detections
{
  detectionsCopy = detections;
  unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
  v8 = [unusedIndexes containsIndex:index];

  if (v8)
  {
    v10 = _PTLogSystem(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyNetwork _detectionAtNetworkIndex:index frameDetections:?];
    }
  }

  else
  {
    if (!index)
    {
      goto LABEL_10;
    }

    networkDetections = [(PTCinematographyNetwork *)self networkDetections];
    v12 = [networkDetections count];

    if (v12 > index)
    {
      networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
      v14 = [networkDetections2 objectAtIndexedSubscript:index];
      trackIdentifier = [v14 trackIdentifier];

      v16 = [detectionsCopy detectionForTrackIdentifier:trackIdentifier];
      v17 = v16;
      if (v16)
      {
        index = v16;
      }

      else
      {
        networkDetections3 = [(PTCinematographyNetwork *)self networkDetections];
        v20 = [networkDetections3 objectAtIndexedSubscript:index];
        index = [v20 copy];
      }

      goto LABEL_10;
    }
  }

  index = 0;
LABEL_10:

  return index;
}

- (void)_setDetection:(id)detection asInputRow:(unint64_t)row time:(id *)time missing:(BOOL)missing
{
  missingCopy = missing;
  v27 = *MEMORY[0x277D85DE8];
  detectionCopy = detection;
  width = self->_x_in.width;
  v12 = self->_x_in.data + 4 * width * row;
  v13 = [PTCinematographyNetworkPayload alloc];
  v25 = *time;
  v14 = [(PTCinematographyNetworkPayload *)v13 initWithTime:&v25 detection:detectionCopy missing:missingCopy];
  v15 = [[PTCinematographyNetworkFloatOutputStream alloc] initWithDestination:v12 count:width];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  inputSignals = [(PTCinematographyNetwork *)self inputSignals];
  v17 = [inputSignals countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v22;
    do
    {
      v20 = 0;
      do
      {
        if (*v22 != v19)
        {
          objc_enumerationMutation(inputSignals);
        }

        [*(*(&v21 + 1) + 8 * v20++) writePayload:v14 toStream:v15];
      }

      while (v18 != v20);
      v18 = [inputSignals countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v18);
  }
}

- (id)_initWithCinematographyDictionary:(id)dictionary
{
  v56 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"version"];
  v6 = [(PTCinematographyNetwork *)self initWithVersionString:v5];

  if (v6)
  {
    v7 = [dictionaryCopy objectForKeyedSubscript:@"_step_i"];
    v6->_step_i = [v7 integerValue];

    v8 = [dictionaryCopy objectForKeyedSubscript:@"_network_detections"];
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v8, "count")}];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v41 objects:&v45 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v42;
      do
      {
        v14 = 0;
        do
        {
          if (*v42 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v41 + 1) + 8 * v14);
          v16 = [PTCinematographyDetection alloc];
          v17 = [(PTCinematographyDetection *)v16 _initWithCinematographyDictionary:v15, v41];
          [(NSMutableArray *)v9 addObject:v17];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v41 objects:&v45 count:16];
      }

      while (v12);
    }

    networkDetections = v6->_networkDetections;
    v6->_networkDetections = v9;

    v19 = [dictionaryCopy objectForKeyedSubscript:@"_last_focus_detection"];
    if (v19)
    {
      v20 = [[PTCinematographyDetection alloc] _initWithCinematographyDictionary:v19];
      lastFocusDetection = v6->_lastFocusDetection;
      v6->_lastFocusDetection = v20;
    }

    indexSet = [MEMORY[0x277CCAB58] indexSet];
    unusedIndexes = v6->_unusedIndexes;
    v6->_unusedIndexes = indexSet;

    if ([(NSMutableArray *)v6->_networkDetections count]>= 2)
    {
      v24 = 1;
      do
      {
        v25 = [(NSMutableArray *)v6->_networkDetections objectAtIndexedSubscript:v24];
        _isInvalid = [v25 _isInvalid];

        if (_isInvalid)
        {
          [(NSMutableIndexSet *)v6->_unusedIndexes addIndex:v24];
        }

        ++v24;
      }

      while (v24 < [(NSMutableArray *)v6->_networkDetections count]);
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"_hx_out"];
    v28 = *&v6->_hx_out.stride_batch_number;
    v53 = *&v6->_hx_out.stride_height;
    v54 = v28;
    v55 = *&v6->_hx_out.storage_type;
    v29 = *&v6->_hx_out.width;
    v49 = *&v6->_hx_out.stride[2];
    v50 = v29;
    v30 = *&v6->_hx_out.sequence_length;
    v51 = *&v6->_hx_out.channels;
    v52 = v30;
    v31 = *v6->_hx_out.dim;
    v45 = *&v6->_hx_out.data;
    v46 = v31;
    v32 = *v6->_hx_out.stride;
    v47 = *&v6->_hx_out.dim[2];
    v48 = v32;
    SetEspressoArray(&v45, v27);

    v33 = [dictionaryCopy objectForKeyedSubscript:@"_cx_out"];
    v34 = *&v6->_cx_out.stride_batch_number;
    v53 = *&v6->_cx_out.stride_height;
    v54 = v34;
    v55 = *&v6->_cx_out.storage_type;
    v35 = *&v6->_cx_out.width;
    v49 = *&v6->_cx_out.stride[2];
    v50 = v35;
    v36 = *&v6->_cx_out.sequence_length;
    v51 = *&v6->_cx_out.channels;
    v52 = v36;
    v37 = *v6->_cx_out.dim;
    v45 = *&v6->_cx_out.data;
    v46 = v37;
    v38 = *v6->_cx_out.stride;
    v47 = *&v6->_cx_out.dim[2];
    v48 = v38;
    SetEspressoArray(&v45, v33);

    v39 = v6;
  }

  return v6;
}

- (id)_asCinematographyDictionary
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  [v3 setObject:self->_versionString forKeyedSubscript:@"version"];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->_step_i];
  [v3 setObject:v4 forKeyedSubscript:@"_step_i"];

  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(networkDetections, "count")}];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = networkDetections;
  v8 = [v7 countByEnumeratingWithState:&v30 objects:&v34 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v31;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(v7);
        }

        _asCinematographyDictionary = [*(*(&v30 + 1) + 8 * i) _asCinematographyDictionary];
        [v6 addObject:_asCinematographyDictionary];
      }

      v9 = [v7 countByEnumeratingWithState:&v30 objects:&v34 count:16];
    }

    while (v9);
  }

  v13 = [v6 copy];
  [v3 setObject:v13 forKeyedSubscript:@"_network_detections"];

  lastFocusDetection = [(PTCinematographyNetwork *)self lastFocusDetection];
  _asCinematographyDictionary2 = [lastFocusDetection _asCinematographyDictionary];
  [v3 setObject:_asCinematographyDictionary2 forKeyedSubscript:@"_last_focus_detection"];

  v16 = *&self->_hx_out.stride_batch_number;
  v42 = *&self->_hx_out.stride_height;
  v43 = v16;
  v44 = *&self->_hx_out.storage_type;
  v17 = *&self->_hx_out.width;
  v38 = *&self->_hx_out.stride[2];
  v39 = v17;
  v18 = *&self->_hx_out.sequence_length;
  v40 = *&self->_hx_out.channels;
  v41 = v18;
  v19 = *self->_hx_out.dim;
  v34 = *&self->_hx_out.data;
  v35 = v19;
  v20 = *self->_hx_out.stride;
  v36 = *&self->_hx_out.dim[2];
  v37 = v20;
  v21 = CopyEspressoArray(&v34);
  [v3 setObject:v21 forKeyedSubscript:@"_hx_out"];

  v22 = *&self->_cx_out.stride_batch_number;
  v42 = *&self->_cx_out.stride_height;
  v43 = v22;
  v44 = *&self->_cx_out.storage_type;
  v23 = *&self->_cx_out.width;
  v38 = *&self->_cx_out.stride[2];
  v39 = v23;
  v24 = *&self->_cx_out.sequence_length;
  v40 = *&self->_cx_out.channels;
  v41 = v24;
  v25 = *self->_cx_out.dim;
  v34 = *&self->_cx_out.data;
  v35 = v25;
  v26 = *self->_cx_out.stride;
  v36 = *&self->_cx_out.dim[2];
  v37 = v26;
  v27 = CopyEspressoArray(&v34);
  [v3 setObject:v27 forKeyedSubscript:@"_cx_out"];

  v28 = [v3 copy];

  return v28;
}

- (unint64_t)_getLeastRecentNetworkDetectionIndex
{
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  if ([networkDetections count] <= 1)
  {
    [PTCinematographyNetwork _getLeastRecentNetworkDetectionIndex];
  }

  memset(&v23, 0, sizeof(v23));
  networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
  v5 = [networkDetections2 objectAtIndexedSubscript:1];
  v6 = v5;
  if (v5)
  {
    objc_msgSend_time(v5);
  }

  else
  {
    memset(&v23, 0, sizeof(v23));
  }

  networkDetections3 = [(PTCinematographyNetwork *)self networkDetections];
  v8 = [networkDetections3 count];

  if (v8 < 3)
  {
    return 1;
  }

  v9 = 1;
  v10 = 2;
  do
  {
    networkDetections4 = [(PTCinematographyNetwork *)self networkDetections];
    v12 = [networkDetections4 objectAtIndexedSubscript:v10];
    v13 = v12;
    if (v12)
    {
      objc_msgSend_time(v12);
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v21 = v23;
    v14 = CMTimeCompare(&time1, &v21);

    if (v14 < 0)
    {
      networkDetections5 = [(PTCinematographyNetwork *)self networkDetections];
      v16 = [networkDetections5 objectAtIndexedSubscript:v10];
      v17 = v16;
      if (v16)
      {
        objc_msgSend_time(v16);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v23 = time1;

      v9 = v10;
    }

    ++v10;
    networkDetections6 = [(PTCinematographyNetwork *)self networkDetections];
    v19 = [networkDetections6 count];
  }

  while (v10 < v19);
  return v9;
}

- (void)_forgetNetworkDetectionAtIndex:(unint64_t)index
{
  unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
  v6 = [unusedIndexes containsIndex:index];

  if ((v6 & 1) == 0)
  {
    networkDetections = [(PTCinematographyNetwork *)self networkDetections];
    v8 = [networkDetections objectAtIndexedSubscript:index];
    [v8 _setInvalid:1];

    unusedIndexes2 = [(PTCinematographyNetwork *)self unusedIndexes];
    [unusedIndexes2 addIndex:index];
  }
}

- (void)_forgetNetworkDetectionsOlderThan:(id *)than
{
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v6 = [networkDetections count];

  if (v6 >= 2)
  {
    v7 = 1;
    do
    {
      networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
      v9 = [networkDetections2 objectAtIndexedSubscript:v7];
      v10 = v9;
      if (v9)
      {
        objc_msgSend_time(v9);
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      v14 = *than;
      v11 = CMTimeCompare(&time1, &v14);

      if (v11 < 0)
      {
        [(PTCinematographyNetwork *)self _forgetNetworkDetectionAtIndex:v7];
      }

      ++v7;
      networkDetections3 = [(PTCinematographyNetwork *)self networkDetections];
      v13 = [networkDetections3 count];
    }

    while (v7 < v13);
  }
}

- (unint64_t)_allocateNetworkDetectionIndex
{
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  firstIndex = [networkDetections count];

  unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
  v6 = [unusedIndexes count];

  if (v6)
  {
    unusedIndexes2 = [(PTCinematographyNetwork *)self unusedIndexes];
    firstIndex = [unusedIndexes2 firstIndex];
  }

  if (firstIndex < self->_x_in.height)
  {
    return firstIndex;
  }

  return [(PTCinematographyNetwork *)self _getLeastRecentNetworkDetectionIndex];
}

- (void)_setMissingDetectionAtIndex:(unint64_t)index time:(id *)time
{
  if (self->_x_in.height <= index)
  {
    [PTCinematographyNetwork _setMissingDetectionAtIndex:time:];
  }

  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  if ([networkDetections count] <= index)
  {
    [PTCinematographyNetwork _setMissingDetectionAtIndex:time:];
  }

  if (index)
  {
    v9 = _PTLogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PTCinematographyNetwork _setMissingDetectionAtIndex:time:];
    }
  }

  networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
  v11 = [networkDetections2 objectAtIndexedSubscript:index];
  v12 = *&time->var0;
  var3 = time->var3;
  [(PTCinematographyNetwork *)self _setDetection:v11 asInputRow:index time:&v12 missing:1];
}

- (BOOL)_shouldResetDetectionFromType:(unint64_t)type toType:(unint64_t)toType
{
  if (type == 1 && toType == 2)
  {
    return 1;
  }

  return type == 2 && toType == 1;
}

- (void)_setNetworkDetection:(id)detection atIndex:(unint64_t)index time:(id *)time
{
  detectionCopy = detection;
  if (self->_x_in.height <= index)
  {
    [PTCinematographyNetwork _setNetworkDetection:atIndex:time:];
  }

  v9 = detectionCopy;
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  if ([networkDetections count] < index)
  {
    [PTCinematographyNetwork _setNetworkDetection:atIndex:time:];
  }

  v12 = _PTLogSystem(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _setNetworkDetection:atIndex:time:];
  }

  networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
  if ([networkDetections2 count] == index)
  {
    goto LABEL_12;
  }

  unusedIndexes = [(PTCinematographyNetwork *)self unusedIndexes];
  if ([unusedIndexes containsIndex:index])
  {
LABEL_11:

LABEL_12:
    goto LABEL_13;
  }

  networkDetections3 = [(PTCinematographyNetwork *)self networkDetections];
  v16 = [networkDetections3 objectAtIndexedSubscript:index];
  trackIdentifier = [v16 trackIdentifier];
  if (trackIdentifier != [v9 trackIdentifier])
  {

    goto LABEL_11;
  }

  networkDetections4 = [(PTCinematographyNetwork *)self networkDetections];
  v18 = [networkDetections4 objectAtIndexedSubscript:index];
  v19 = -[PTCinematographyNetwork _shouldResetDetectionFromType:toType:](self, "_shouldResetDetectionFromType:toType:", [v18 detectionType], objc_msgSend(v9, "detectionType"));

  if (v19)
  {
LABEL_13:
    unusedIndexes2 = [(PTCinematographyNetwork *)self unusedIndexes];
    [unusedIndexes2 removeIndex:index];

    v24 = *&time->var0;
    var3 = time->var3;
    [(PTCinematographyNetwork *)self _setDetection:v9 asInputRow:index time:&v24 missing:0];
    bzero(self->_hx_out.data + 4 * self->_hx_out.width * index, 4 * self->_hx_out.width);
    bzero(self->_cx_out.data + 4 * self->_cx_out.width * index, 4 * self->_cx_out.width);
    goto LABEL_14;
  }

  v24 = *&time->var0;
  var3 = time->var3;
  [(PTCinematographyNetwork *)self _setDetection:v9 asInputRow:index time:&v24 missing:0];
LABEL_14:
  v21 = [v9 copy];
  networkDetections5 = [(PTCinematographyNetwork *)self networkDetections];
  [networkDetections5 setObject:v21 atIndexedSubscript:index];
}

- (void)_debugLogNetworkInputs
{
  networkDetections = [(PTCinematographyNetwork *)self networkDetections];
  v4 = [networkDetections count];

  if (v4)
  {
    v5 = 0;
    do
    {
      if (*(self->_mask_in.data + v5) == 1.0)
      {
        _DebugLogEspressoBufferRow(&self->_x_in.data, v5);
      }

      ++v5;
      networkDetections2 = [(PTCinematographyNetwork *)self networkDetections];
      v7 = [networkDetections2 count];
    }

    while (v5 < v7);
  }
}

- (void)_debugLogNetworkOutputs
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_debugLogAllNetworkInputs
{
  v3 = _PTLogSystem(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  v4 = _PTLogSystem([(PTCinematographyNetwork *)self _debugLogNetworkInputs]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  if (self->_hx_in.height)
  {
    v6 = 0;
    do
    {
      _DebugLogEspressoBufferRow(&self->_hx_in.data, v6++);
    }

    while (v6 < self->_hx_in.height);
  }

  v7 = _PTLogSystem(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  if (self->_cx_in.height)
  {
    v9 = 0;
    do
    {
      _DebugLogEspressoBufferRow(&self->_cx_in.data, v9++);
    }

    while (v9 < self->_cx_in.height);
  }

  v10 = _PTLogSystem(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PTCinematographyNetwork _debugLogAllNetworkInputs];
  }

  [(PTCinematographyNetwork *)self _debugLogNetworkOutputs];
}

+ (id)earliestVersionString
{
  v2 = [self firstExistingVersion:&unk_2837F3898];
  v3 = v2;
  if (v2)
  {
    firstObject = v2;
  }

  else
  {
    firstObject = [&unk_2837F38B0 firstObject];
  }

  v5 = firstObject;

  return v5;
}

+ (id)latestVersionString
{
  reverseObjectEnumerator = [&unk_2837F38C8 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  v5 = [self firstExistingVersion:allObjects];
  v6 = v5;
  if (v5)
  {
    lastObject = v5;
  }

  else
  {
    lastObject = [&unk_2837F38E0 lastObject];
  }

  v8 = lastObject;

  return v8;
}

+ (void)firstExistingVersion:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithVersionString:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithVersionString:.cold.2()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)initWithVersionString:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_initWithNetwork:parameters:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)stepWithFrameDetections:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)stepWithFrameDetections:(void *)a1 .cold.5(void *a1, uint64_t a2)
{
  v3 = [a1 networkDetections];
  v4 = [v3 objectAtIndexedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
}

- (void)_updateLastNetworkPredictionIndex:(void *)a1 time:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  v3 = [a1 networkDetections];
  v4 = [v3 objectAtIndexedSubscript:a2];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0xCu);
}

- (void)_loadEspressoNetwork:.cold.1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

- (void)_loadEspressoNetwork:.cold.2()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x12u);
}

- (void)_loadEspressoNetwork:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_loadEspressoNetwork:.cold.9()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_networkPredictionIndex
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_detectionAtNetworkIndex:(uint64_t)a1 frameDetections:.cold.1(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

- (void)_setMissingDetectionAtIndex:time:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_setNetworkDetection:atIndex:time:.cold.2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

@end