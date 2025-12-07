@interface ANProcessAudio
+ (AudioComponentDescription)_lookupComponent:(SEL)component;
+ (BOOL)_configureEngine:(id)engine player:(id)player effect:(id)effect sourceFile:(id)file error:(id *)error;
+ (BOOL)_renderAudioTo:(id)to length:(int64_t)length engine:(id)engine error:(id *)error;
+ (BOOL)process:(id)process to:(id)to withOptions:(unint64_t)options error:(id *)error;
+ (id)_ANAudioEffectToName:(unint64_t)name;
+ (id)_lookupTunings:(unint64_t)tunings;
@end

@implementation ANProcessAudio

+ (BOOL)process:(id)process to:(id)to withOptions:(unint64_t)options error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  processCopy = process;
  toCopy = to;
  if (options)
  {
    v11 = [MEMORY[0x277CBEAA8] now];
    v12 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:processCopy error:error];
    if (!v12)
    {
      v38 = ANLogHandleAudioProcessor(0);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *error;
        *buf = 138412802;
        *&buf[4] = &stru_2836DAA20;
        *&buf[12] = 2112;
        *&buf[14] = processCopy;
        v48 = 2112;
        v49 = v39;
        _os_log_impl(&dword_2237C8000, v38, OS_LOG_TYPE_ERROR, "%@Failed to open file %@, %@", buf, 0x20u);
      }

      v37 = 0;
      goto LABEL_33;
    }

    v13 = v12;
    objc_msgSend__lookupComponent_(ANProcessAudio);
    v14 = objc_alloc(MEMORY[0x277CB8460]);
    memset(buf, 0, 20);
    v15 = [v14 initWithAudioComponentDescription:buf];
    if (v15)
    {
      v16 = v15;
      v17 = objc_opt_new();
      v18 = objc_opt_new();
      v19 = [ANProcessAudio _configureEngine:v18 player:v17 effect:v16 sourceFile:v13 error:error];
      if (v19)
      {
        v45 = v17;
        v46 = v11;
        v20 = objc_alloc(MEMORY[0x277CB8398]);
        fileFormat = [v13 fileFormat];
        settings = [fileFormat settings];
        v23 = [v20 initForWriting:toCopy settings:settings error:error];

        v25 = ANLogHandleAudioProcessor(v24);
        v26 = v25;
        if (v23)
        {
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v27 = [v23 length];
            *buf = 138412546;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2048;
            *&buf[14] = v27;
            _os_log_impl(&dword_2237C8000, v26, OS_LOG_TYPE_DEFAULT, "%@Ouput File Frames Before: %lld", buf, 0x16u);
          }

          v28 = ANLogHandleAudioProcessor(+[ANProcessAudio _renderAudioTo:length:engine:error:](ANProcessAudio, "_renderAudioTo:length:engine:error:", v23, [v13 length], v18, error));
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138413058;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2112;
            *&buf[14] = processCopy;
            v48 = 2112;
            v49 = toCopy;
            v50 = 2112;
            v51 = v18;
            _os_log_impl(&dword_2237C8000, v28, OS_LOG_TYPE_DEBUG, "%@Process file: %@ to %@ with engine %@", buf, 0x2Au);
          }

          v30 = ANLogHandleAudioProcessor(v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            date = [MEMORY[0x277CBEAA8] date];
            [date timeIntervalSinceDate:v46];
            *buf = 138412802;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2080;
            *&buf[14] = "+[ANProcessAudio process:to:withOptions:error:]";
            v48 = 2048;
            v49 = v32;
            _os_log_impl(&dword_2237C8000, v30, OS_LOG_TYPE_INFO, "%@%s: took %f", buf, 0x20u);
          }

          [v45 stop];
          [v18 stop];
          [v18 detachNode:v45];
          [v18 detachNode:v16];

          v33 = [objc_alloc(MEMORY[0x277CB8398]) initForReading:toCopy error:error];
          v34 = ANLogHandleAudioProcessor(v33);
          v35 = v34;
          if (v33)
          {
            v11 = v46;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v33 length];
              *buf = 138412546;
              *&buf[4] = &stru_2836DAA20;
              *&buf[12] = 2048;
              *&buf[14] = v36;
              _os_log_impl(&dword_2237C8000, v35, OS_LOG_TYPE_DEFAULT, "%@Ouput File Frames After: %lld", buf, 0x16u);
            }

            v16 = 0;
            v37 = 1;
            goto LABEL_32;
          }

          v11 = v46;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2112;
            *&buf[14] = 0;
            _os_log_impl(&dword_2237C8000, v35, OS_LOG_TYPE_ERROR, "%@Failed to open output file for reading (post-processing) %@", buf, 0x16u);
          }

          v16 = 0;
        }

        else
        {
          v11 = v46;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = &stru_2836DAA20;
            *&buf[12] = 2112;
            *&buf[14] = 0;
            _os_log_impl(&dword_2237C8000, v26, OS_LOG_TYPE_ERROR, "%@Failed to open output file %@", buf, 0x16u);
          }
        }
      }

      else
      {
        v42 = ANLogHandleAudioProcessor(v19);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v43 = *error;
          *buf = 138412546;
          *&buf[4] = &stru_2836DAA20;
          *&buf[12] = 2112;
          *&buf[14] = v43;
          _os_log_impl(&dword_2237C8000, v42, OS_LOG_TYPE_ERROR, "%@Could not configure the engine %@", buf, 0x16u);
        }
      }
    }

    else
    {

      v16 = ANLogHandleAudioProcessor(v40);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v41 = [ANProcessAudio _ANAudioEffectToName:1];
        *buf = 138412546;
        *&buf[4] = &stru_2836DAA20;
        *&buf[12] = 2112;
        *&buf[14] = v41;
        _os_log_impl(&dword_2237C8000, v16, OS_LOG_TYPE_ERROR, "%@Could not find AudioUnit for %@", buf, 0x16u);
      }
    }

    v37 = 0;
LABEL_32:

LABEL_33:
    goto LABEL_34;
  }

  v37 = 0;
LABEL_34:

  return v37;
}

+ (BOOL)_configureEngine:(id)engine player:(id)player effect:(id)effect sourceFile:(id)file error:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  playerCopy = player;
  effectCopy = effect;
  fileCopy = file;
  processingFormat = [fileCopy processingFormat];
  v16 = [engineCopy enableManualRenderingMode:0 format:processingFormat maximumFrameCount:4096 error:error];

  if (v16)
  {
    errorCopy = error;
    v43 = fileCopy;
    [engineCopy attachNode:playerCopy];
    v44 = playerCopy;
    v41 = playerCopy;
    v18 = [ANProcessAudio _lookupTunings:1];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v19 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v46;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v46 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v45 + 1) + 8 * i);
          v24 = [v18 objectForKeyedSubscript:v23];
          [v24 floatValue];
          v26 = v25;
          aUAudioUnit = [effectCopy AUAudioUnit];
          parameterTree = [aUAudioUnit parameterTree];
          v29 = [parameterTree parameterWithAddress:{objc_msgSend(v23, "unsignedIntegerValue")}];
          LODWORD(v30) = v26;
          [v29 setValue:v30];
        }

        v20 = [v18 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v20);
    }

    [engineCopy attachNode:effectCopy];
    fileCopy = v43;
    processingFormat2 = [v43 processingFormat];
    [engineCopy connect:v41 to:effectCopy format:processingFormat2];

    v32 = effectCopy;
    mainMixerNode = [engineCopy mainMixerNode];
    processingFormat3 = [v43 processingFormat];
    [engineCopy connect:v32 to:mainMixerNode format:processingFormat3];

    [v41 scheduleFile:v43 atTime:0 completionHandler:0];
    v35 = [engineCopy startAndReturnError:errorCopy];
    v36 = v35;
    if (v35)
    {
      [v41 play];
    }

    else
    {
      v38 = ANLogHandleAudioProcessor(v35);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = *errorCopy;
        *buf = 138412546;
        v51 = &stru_2836DAA20;
        v52 = 2112;
        v53 = v39;
        _os_log_impl(&dword_2237C8000, v38, OS_LOG_TYPE_ERROR, "%@Could not start the engine %@", buf, 0x16u);
      }
    }

    playerCopy = v44;
  }

  else
  {
    v32 = ANLogHandleAudioProcessor(v17);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v37 = *error;
      *buf = 138412546;
      v51 = &stru_2836DAA20;
      v52 = 2112;
      v53 = v37;
      _os_log_impl(&dword_2237C8000, v32, OS_LOG_TYPE_ERROR, "%@Failed to configure for offline render mode %@", buf, 0x16u);
    }

    v36 = 0;
  }

  return v36;
}

+ (AudioComponentDescription)_lookupComponent:(SEL)component
{
  *&retstr->componentType = 0;
  *&retstr->componentManufacturer = 0;
  retstr->componentFlagsMask = 0;
  if (a4 == 1)
  {
    qmemcpy(retstr, "xfuamndllppa", 12);
  }

  return result;
}

+ (id)_lookupTunings:(unint64_t)tunings
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (tunings == 1)
  {
    v5 = &unk_2836E1E70;
    v6[0] = &unk_2836E1F98;
    v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)_ANAudioEffectToName:(unint64_t)name
{
  v3 = @"N/A";
  if (name == 1)
  {
    v3 = @"AppleAUNormalizer";
  }

  if (name)
  {
    return v3;
  }

  else
  {
    return @"None";
  }
}

+ (BOOL)_renderAudioTo:(id)to length:(int64_t)length engine:(id)engine error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  toCopy = to;
  engineCopy = engine;
  v11 = ANLogHandleAudioProcessor(engineCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v31 = &stru_2836DAA20;
    v32 = 2048;
    lengthCopy = length;
    _os_log_impl(&dword_2237C8000, v11, OS_LOG_TYPE_DEFAULT, "%@Rendering Audio with length: %lld", buf, 0x16u);
  }

  v12 = objc_alloc(MEMORY[0x277CB83C8]);
  manualRenderingFormat = [engineCopy manualRenderingFormat];
  v14 = [v12 initWithPCMFormat:manualRenderingFormat frameCapacity:objc_msgSend(engineCopy, "manualRenderingMaximumFrameCount")];

  v15 = 0;
  while (1)
  {
    if ([engineCopy manualRenderingSampleTime] >= length)
    {
      v22 = 1;
      goto LABEL_17;
    }

    v16 = length - [engineCopy manualRenderingSampleTime];
    frameCapacity = [v14 frameCapacity];
    v18 = frameCapacity >= v16 ? v16 : frameCapacity;
    v29 = v15;
    v19 = [engineCopy renderOffline:v18 toBuffer:v14 error:&v29];
    v20 = v29;

    v22 = v19 != 0;
    if (v19)
    {
      break;
    }

    v28 = v20;
    v23 = [toCopy writeFromBuffer:v14 error:&v28];
    v15 = v28;

    if ((v23 & 1) == 0)
    {
      v25 = ANLogHandleAudioProcessor(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v31 = &stru_2836DAA20;
        v32 = 2112;
        lengthCopy = v15;
        _os_log_impl(&dword_2237C8000, v25, OS_LOG_TYPE_ERROR, "%@error when writing out audio to file: %@", buf, 0x16u);
      }

      v20 = v15;
      goto LABEL_16;
    }
  }

  v25 = ANLogHandleAudioProcessor(v21);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    v31 = &stru_2836DAA20;
    v32 = 2112;
    lengthCopy = v20;
    _os_log_impl(&dword_2237C8000, v25, OS_LOG_TYPE_ERROR, "%@error when rendering status: %@", buf, 0x16u);
  }

LABEL_16:

  v15 = v20;
LABEL_17:

  if (error)
  {
    v26 = v15;
    *error = v15;
  }

  return v22;
}

@end