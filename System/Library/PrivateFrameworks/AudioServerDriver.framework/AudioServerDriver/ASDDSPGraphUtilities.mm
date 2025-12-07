@interface ASDDSPGraphUtilities
+ (BOOL)startInjectingBoxes:(id)boxes inGraph:(id)graph error:(id *)error;
+ (BOOL)startRecordingAllBoxesInGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type error:(id *)error;
+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type andMode:(int64_t)mode error:(id *)error;
+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph toDirectory:(id)directory withMode:(int64_t)mode error:(id *)error;
+ (BOOL)stopInjectingBoxesInGraph:(id)graph;
+ (BOOL)stopRecordingBoxesInGraph:(id)graph;
+ (optional<AudioCapturerOptions>)getCapturerOptions:(int64_t)options;
@end

@implementation ASDDSPGraphUtilities

+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph toDirectory:(id)directory withMode:(int64_t)mode error:(id *)error
{
  v55 = *MEMORY[0x277D85DE8];
  boxesCopy = boxes;
  graphCopy = graph;
  directoryCopy = directory;
  v45 = graphCopy;
  [ASDDSPGraphUtilities stopRecordingBoxesInGraph:graphCopy];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  LODWORD(graphCopy) = [defaultManager createDirectoryAtPath:directoryCopy withIntermediateDirectories:1 attributes:0 error:error];

  if (graphCopy)
  {
    v38 = objc_alloc_init(MEMORY[0x277CCA968]);
    [v38 setDateFormat:@"yyyy-MM-dd-HHmmss"];
    date = [MEMORY[0x277CBEAA8] date];
    v43 = [v38 stringFromDate:date];

    v14 = [ASDDSPGraphUtilities getCapturerOptions:mode];
    v16 = v15;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = boxesCopy;
    v17 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (!v17)
    {
      v18 = 1;
LABEL_29:

      goto LABEL_30;
    }

    v41 = *v47;
    v18 = 1;
LABEL_4:
    v39 = v17;
    v19 = 0;
    while (1)
    {
      if (*v47 != v41)
      {
        objc_enumerationMutation(obj);
      }

      v20 = [v45 boxWithName:*(*(&v46 + 1) + 8 * v19)];
      v21 = v20;
      if (v20)
      {
        v22 = [v20 numOutputs] ? objc_msgSend(v21, "numOutputs") : objc_msgSend(v21, "numInputs");
        v23 = v22;
        if (v22 >= 1)
        {
          break;
        }
      }

LABEL_21:

      if (++v19 == v39)
      {
        v17 = [obj countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (!v17)
        {
          goto LABEL_29;
        }

        goto LABEL_4;
      }
    }

    v24 = 0;
    while ((v16 & 1) != 0)
    {
      if ((v14 & 4) != 0)
      {
        v25 = MEMORY[0x277CCACA8];
        name = [v45 name];
        name2 = [v21 name];
        v28 = [v25 stringWithFormat:@"%@/%@_%@_bus%d.caf", directoryCopy, name, name2, v24];

        v29 = [v21 startRecordingPort:v24 toFile:v28 withAudioCapturerOptions:v14];
LABEL_17:
        v18 = v29;
      }

      if (error && (v18 & 1) == 0)
      {
        v52 = *MEMORY[0x277CCA450];
        v33 = MEMORY[0x277CCACA8];
        name3 = [v21 name];
        v35 = [v33 stringWithFormat:@"%@ startRecordingPort was unsuccessful", name3];
        v53 = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v53 forKeys:&v52 count:1];

        *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASDDSPGraphUtilities" code:-1 userInfo:v36];

LABEL_27:
        v18 = 0;
        goto LABEL_30;
      }

      if (v23 == ++v24)
      {
        goto LABEL_21;
      }
    }

    v30 = MEMORY[0x277CCACA8];
    name4 = [v45 name];
    name5 = [v21 name];
    v28 = [v30 stringWithFormat:@"%@/%@_%@_bus%d_%@.caf", directoryCopy, name4, name5, v24, v43];

    v29 = [v21 startRecordingPort:v24 toFile:v28];
    goto LABEL_17;
  }

  v18 = 0;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v51 = directoryCopy;
    _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Failed to create path at: %@ for audio DSP captures.", buf, 0xCu);
    goto LABEL_27;
  }

LABEL_30:

  return v18 & 1;
}

+ (BOOL)startRecordingAllBoxesInGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type error:(id *)error
{
  typeCopy = type;
  errorCopy = error;
  v28 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  streamCopy = stream;
  directoryCopy = directory;
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  boxes = [graphCopy boxes];
  v15 = [boxes countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = *v24;
    do
    {
      v17 = 0;
      do
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(boxes);
        }

        name = [*(*(&v23 + 1) + 8 * v17) name];
        [v13 addObject:name];

        ++v17;
      }

      while (v15 != v17);
      v15 = [boxes countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v15);
  }

  v19 = [self startRecordingBoxes:v13 inGraph:graphCopy fromStream:streamCopy toDirectory:directoryCopy withType:typeCopy error:errorCopy];
  return v19;
}

+ (BOOL)startRecordingBoxes:(id)boxes inGraph:(id)graph fromStream:(id)stream toDirectory:(id)directory withType:(int64_t)type andMode:(int64_t)mode error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  boxesCopy = boxes;
  graphCopy = graph;
  streamCopy = stream;
  directoryCopy = directory;
  if (type == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Start Recording Boxes with AudioDebugTypeReinitializeGraph...", &v23, 2u);
    }

    isRunning = [streamCopy isRunning];
    if (isRunning)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP stream was running, suspend processing to reinitialize graph...", &v23, 2u);
      }

      [streamCopy suspendProcessing];
    }

    initialized = [graphCopy initialized];
    if (initialized)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Uninitializing graph", &v23, 2u);
      }

      [graphCopy uninitialize];
    }

    v19 = [self startRecordingBoxes:boxesCopy inGraph:graphCopy toDirectory:directoryCopy withMode:mode error:error];
    if (initialized)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Reinitializing graph", &v23, 2u);
      }

      if ([graphCopy initialize])
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v23 = 138412290;
          v24 = boxesCopy;
          _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Started recording %@", &v23, 0xCu);
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          +[ASDDSPGraphUtilities startRecordingBoxes:inGraph:fromStream:toDirectory:withType:andMode:error:];
        }

        [ASDDSPGraphUtilities stopRecordingBoxesInGraph:graphCopy];
        if (([graphCopy initialize] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          +[ASDDSPGraphUtilities startRecordingBoxes:inGraph:fromStream:toDirectory:withType:andMode:error:];
        }
      }
    }

    if (isRunning)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DSP stream was running, resume processing after reinitialized graph...", &v23, 2u);
      }

      [streamCopy resumeProcessing];
    }
  }

  else if (type)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ASDDSPGraphUtilities startRecordingBoxes:type inGraph:? fromStream:? toDirectory:? withType:? andMode:? error:?];
    }

    v19 = 0;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Start Recording Boxes with AudioDebugTypeKeepGraphInitialized...", &v23, 2u);
    }

    v19 = [self startRecordingBoxes:boxesCopy inGraph:graphCopy toDirectory:directoryCopy error:error];
  }

  return v19;
}

+ (BOOL)stopRecordingBoxesInGraph:(id)graph
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  boxes = [graph boxes];
  v4 = [boxes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(boxes);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 numOutputs])
        {
          numOutputs = [v7 numOutputs];
        }

        else
        {
          numOutputs = [v7 numInputs];
        }

        v9 = numOutputs;
        if (numOutputs >= 1)
        {
          v10 = 0;
          do
          {
            [v7 stopRecordingPort:v10++];
          }

          while (v9 != v10);
        }
      }

      v4 = [boxes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return 1;
}

+ (BOOL)startInjectingBoxes:(id)boxes inGraph:(id)graph error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  boxesCopy = boxes;
  graphCopy = graph;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = boxesCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
  if (v7)
  {
    v9 = *v30;
    v10 = MEMORY[0x277D86220];
    *&v8 = 136315138;
    v26 = v8;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [*(*(&v29 + 1) + 8 * i) componentsSeparatedByString:{@":", v26}];
        if ([v12 count] >= 3)
        {
          v13 = [v12 objectAtIndexedSubscript:0];
          v14 = [v12 objectAtIndexedSubscript:1];
          intValue = [v14 intValue];

          v16 = [v12 objectAtIndexedSubscript:2];
          if ([v12 count] == 4)
          {
            v17 = [v12 objectAtIndexedSubscript:3];
            bOOLValue = [v17 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            name = [graphCopy name];
            *buf = 138413314;
            v34 = name;
            v35 = 2112;
            v36 = v13;
            v37 = 1024;
            v38 = intValue;
            v39 = 2112;
            v40 = v16;
            v41 = 1024;
            v42 = bOOLValue;
            _os_log_impl(&dword_2415D8000, v10, OS_LOG_TYPE_DEFAULT, "Injecting file to DSP graph: %@, box: %@, bus: %d, filePath: %@, shouldLoop: %d", buf, 0x2Cu);
          }

          v20 = [graphCopy boxWithName:v13];
          v21 = v20;
          if (v20)
          {
            if (([v20 startInjectingPort:intValue toFile:v16 shouldLoop:bOOLValue] & 1) == 0)
            {

              v24 = 0;
              goto LABEL_21;
            }
          }

          else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v22 = v13;
            uTF8String = [v13 UTF8String];
            *buf = v26;
            v34 = uTF8String;
            _os_log_impl(&dword_2415D8000, v10, OS_LOG_TYPE_DEFAULT, "Box %s doesn't exist in graph", buf, 0xCu);
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v29 objects:v43 count:16];
    }

    while (v7);
  }

  v24 = 1;
LABEL_21:

  return v24;
}

+ (BOOL)stopInjectingBoxesInGraph:(id)graph
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  boxes = [graph boxes];
  v4 = [boxes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(boxes);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        if ([v7 numOutputs])
        {
          numOutputs = [v7 numOutputs];
        }

        else
        {
          numOutputs = [v7 numInputs];
        }

        v9 = numOutputs;
        if (numOutputs >= 1)
        {
          v10 = 0;
          do
          {
            [v7 stopInjectingPort:v10++];
          }

          while (v9 != v10);
        }
      }

      v4 = [boxes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return 1;
}

+ (optional<AudioCapturerOptions>)getCapturerOptions:(int64_t)options
{
  if ((options - 1) > 2)
  {
    v4 = 0;
    v3 = 0;
  }

  else
  {
    v3 = qword_241642ED0[options - 1] | 4;
    v4 = 1;
  }

  result.var1 = v4;
  result.var0 = v3;
  return result;
}

+ (void)startRecordingBoxes:(uint64_t)a1 inGraph:fromStream:toDirectory:withType:andMode:error:.cold.3(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = a1;
  _os_log_error_impl(&dword_2415D8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "The ASDDSPGraphAudioDebugType provided: %ld was invalid!", &v1, 0xCu);
}

@end