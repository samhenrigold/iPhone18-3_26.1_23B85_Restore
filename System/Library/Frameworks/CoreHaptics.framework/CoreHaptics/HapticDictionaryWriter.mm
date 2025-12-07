@interface HapticDictionaryWriter
- (id)eventParamsToArray:(id)array;
- (id)eventToDictionary:(id)dictionary embeddedResourceInfo:(id)info;
- (id)paramCurveControlPointsToArray:(id)array;
- (id)paramCurveToDictionary:(id)dictionary;
- (id)paramToDictionary:(id)dictionary;
- (id)patternToDictionary:(id)dictionary events:(id)events parameters:(id)parameters parameterCurves:(id)curves embeddedResourceInfo:(id)info configuration:(id)configuration;
@end

@implementation HapticDictionaryWriter

- (id)patternToDictionary:(id)dictionary events:(id)events parameters:(id)parameters parameterCurves:(id)curves embeddedResourceInfo:(id)info configuration:(id)configuration
{
  v61 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  eventsCopy = events;
  parametersCopy = parameters;
  curvesCopy = curves;
  infoCopy = info;
  configurationCopy = configuration;
  v41 = dictionaryCopy;
  v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v16 setObject:dictionaryCopy forKeyedSubscript:CHHapticPatternKeyVersion];
  if (configurationCopy)
  {
    v17 = [configurationCopy copy];
    [v16 setObject:v17 forKeyedSubscript:CHHapticPatternKeyConfiguration];
  }

  v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v16 setObject:v18 forKeyedSubscript:CHHapticPatternKeyPattern];

  if ([eventsCopy count])
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v19 = eventsCopy;
    v20 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (v20)
    {
      v21 = *v55;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v55 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v54 + 1) + 8 * i);
          v24 = [v16 objectForKeyedSubscript:CHHapticPatternKeyPattern];
          v25 = [(HapticDictionaryWriter *)self eventToDictionary:v23 embeddedResourceInfo:infoCopy];
          [v24 addObject:v25];
        }

        v20 = [v19 countByEnumeratingWithState:&v54 objects:v60 count:16];
      }

      while (v20);
    }
  }

  if ([parametersCopy count])
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v26 = parametersCopy;
    v27 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
    if (v27)
    {
      v28 = *v51;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(v26);
          }

          v30 = *(*(&v50 + 1) + 8 * j);
          v31 = [v16 objectForKeyedSubscript:CHHapticPatternKeyPattern];
          v32 = [(HapticDictionaryWriter *)self paramToDictionary:v30];
          [v31 addObject:v32];
        }

        v27 = [v26 countByEnumeratingWithState:&v50 objects:v59 count:16];
      }

      while (v27);
    }
  }

  if ([curvesCopy count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v33 = curvesCopy;
    v34 = [v33 countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v34)
    {
      v35 = *v47;
      do
      {
        for (k = 0; k != v34; ++k)
        {
          if (*v47 != v35)
          {
            objc_enumerationMutation(v33);
          }

          v37 = *(*(&v46 + 1) + 8 * k);
          v38 = [v16 objectForKeyedSubscript:CHHapticPatternKeyPattern];
          v39 = [(HapticDictionaryWriter *)self paramCurveToDictionary:v37];
          [v38 addObject:v39];
        }

        v34 = [v33 countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v34);
    }
  }

  return v16;
}

- (id)eventToDictionary:(id)dictionary embeddedResourceInfo:(id)info
{
  v37 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  infoCopy = info;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:v9 forKeyedSubscript:CHHapticPatternKeyEvent];

  v10 = [v8 objectForKeyedSubscript:CHHapticPatternKeyEvent];
  type = [dictionaryCopy type];
  v12 = [type isEqualToString:CHHapticEventTypeAudioCustom];

  if (v12)
  {
    if (kHAPIScope)
    {
      v13 = *kHAPIScope;
      if (!v13)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v13 = MEMORY[0x277D86220];
      v14 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v31 = 136315650;
      v32 = "HapticDictionaryWriter.mm";
      v33 = 1024;
      v34 = 74;
      v35 = 2080;
      v36 = "[HapticDictionaryWriter eventToDictionary:embeddedResourceInfo:]";
      _os_log_impl(&dword_21569A000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d %s: ERROR: Cannot export AudioCustom events", &v31, 0x1Cu);
    }

LABEL_9:
    Haptic_RaiseException(&cfstr_Corehapticsope.isa, &cfstr_CannotExportAu.isa, -4806);
  }

  type2 = [dictionaryCopy type];
  v16 = [type2 isEqualToString:CHHapticEventTypeAudioResourceIndex];

  if (v16)
  {
    [v10 setObject:CHHapticEventTypeAudioCustom forKeyedSubscript:CHHapticPatternKeyEventType];
    v17 = [infoCopy objectAtIndexedSubscript:{objc_msgSend(dictionaryCopy, "audioResID")}];
    v18 = [v17 url];
    path = [v18 path];
    [v10 setObject:path forKeyedSubscript:CHHapticPatternKeyEventWaveformPath];

    v20 = [infoCopy objectAtIndexedSubscript:{objc_msgSend(dictionaryCopy, "audioResID")}];
    options = [v20 options];

    if (options)
    {
      v22 = [options objectForKey:CHHapticPatternKeyEventWaveformUseVolumeEnvelope];
      if (([v22 BOOLValue] & 1) == 0)
      {
        [v10 setObject:v22 forKeyedSubscript:CHHapticPatternKeyEventWaveformUseVolumeEnvelope];
      }

      v23 = [options objectForKey:CHHapticPatternKeyEventWaveformLoopEnabled];

      if ([v23 BOOLValue])
      {
        [v10 setObject:v23 forKeyedSubscript:CHHapticPatternKeyEventWaveformLoopEnabled];
      }
    }
  }

  else
  {
    options = [dictionaryCopy type];
    [v10 setObject:options forKeyedSubscript:CHHapticPatternKeyEventType];
  }

  v24 = MEMORY[0x277CCABB0];
  [dictionaryCopy relativeTime];
  v25 = [v24 numberWithDouble:?];
  [v10 setObject:v25 forKeyedSubscript:CHHapticPatternKeyTime];

  v26 = MEMORY[0x277CCABB0];
  [dictionaryCopy duration];
  v27 = [v26 numberWithDouble:?];
  [v10 setObject:v27 forKeyedSubscript:CHHapticPatternKeyEventDuration];

  eventParameters = [dictionaryCopy eventParameters];
  v29 = [(HapticDictionaryWriter *)self eventParamsToArray:eventParameters];
  [v10 setObject:v29 forKeyedSubscript:CHHapticPatternKeyEventParameters];

  return v8;
}

- (id)eventParamsToArray:(id)array
{
  v20 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = arrayCopy;
  v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:{16, arrayCopy}];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
        parameterID = [v7 parameterID];
        [v8 setObject:parameterID forKeyedSubscript:CHHapticPatternKeyParameterID];

        v10 = MEMORY[0x277CCABB0];
        [v7 value];
        v11 = [v10 numberWithFloat:?];
        [v8 setObject:v11 forKeyedSubscript:CHHapticPatternKeyParameterValue];

        [v3 addObject:v8];
      }

      v4 = [obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)paramToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v4 setObject:v5 forKeyedSubscript:CHHapticPatternKeyParameter];

  v6 = [v4 objectForKeyedSubscript:CHHapticPatternKeyParameter];
  parameterID = [dictionaryCopy parameterID];
  [v6 setObject:parameterID forKeyedSubscript:CHHapticPatternKeyParameterID];

  v8 = MEMORY[0x277CCABB0];
  [dictionaryCopy relativeTime];
  v9 = [v8 numberWithDouble:?];
  [v6 setObject:v9 forKeyedSubscript:CHHapticPatternKeyTime];

  v10 = MEMORY[0x277CCABB0];
  [dictionaryCopy value];
  v11 = [v10 numberWithFloat:?];
  [v6 setObject:v11 forKeyedSubscript:CHHapticPatternKeyParameterValue];

  return v4;
}

- (id)paramCurveToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:v6 forKeyedSubscript:CHHapticPatternKeyParameterCurve];

  v7 = [v5 objectForKeyedSubscript:CHHapticPatternKeyParameterCurve];
  parameterID = [dictionaryCopy parameterID];
  [v7 setObject:parameterID forKeyedSubscript:CHHapticPatternKeyParameterID];

  v9 = MEMORY[0x277CCABB0];
  [dictionaryCopy relativeTime];
  v10 = [v9 numberWithDouble:?];
  [v7 setObject:v10 forKeyedSubscript:CHHapticPatternKeyTime];

  controlPoints = [dictionaryCopy controlPoints];
  v12 = [(HapticDictionaryWriter *)self paramCurveControlPointsToArray:controlPoints];
  [v7 setObject:v12 forKeyedSubscript:CHHapticPatternKeyParameterCurveControlPoints];

  return v5;
}

- (id)paramCurveControlPointsToArray:(id)array
{
  v23 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = arrayCopy;
  v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:{16, arrayCopy}];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v20[0] = CHHapticPatternKeyTime;
        v8 = MEMORY[0x277CCABB0];
        [v7 relativeTime];
        v9 = [v8 numberWithDouble:?];
        v20[1] = CHHapticPatternKeyParameterValue;
        v21[0] = v9;
        v10 = MEMORY[0x277CCABB0];
        [v7 value];
        v11 = [v10 numberWithFloat:?];
        v21[1] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

        [v3 addObject:v12];
      }

      v4 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  return v3;
}

@end