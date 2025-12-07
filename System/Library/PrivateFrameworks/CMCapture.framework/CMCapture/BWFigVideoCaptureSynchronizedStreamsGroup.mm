@interface BWFigVideoCaptureSynchronizedStreamsGroup
+ (void)initialize;
- (BWFigVideoCaptureSynchronizedStreamsGroup)initWithSynchronizedStreamsGroup:(id)group activeStreams:(id)streams readOnly:(BOOL)only baseZoomFactorOverrides:(id)overrides clientBaseZoomFactorsByPortType:(id)type error:(int *)error;
- (int)setCameraControlsStatisticsMasterStream:(id)stream;
- (int)setMasterStream:(id)stream allStreams:(id)streams;
- (uint64_t)_computeBaseZoomFactorsWithOverrides:(void *)overrides clientBaseZoomFactorsByPortType:;
- (uint64_t)_getViewAndPoseMatrices;
- (uint64_t)_worldPortType;
- (unsigned)minimumMasterToSlaveFrameRateRatio;
- (void)_slaveConfigurationForStream:(void *)result;
- (void)dealloc;
- (void)setBaseZoomFactorsByPortType:(id)type;
- (void)setMaximumNumberOfEnabledSlaveTimeMachines:(int)machines;
- (void)setMaximumNumberOfSlaveStreamsWithFrameProcessingEnabled:(int)enabled;
- (void)setMaximumNumberOfSlaveStreamsWithoutFrameSkipping:(int)skipping;
- (void)setMinimumMasterToSlaveFrameRateRatio:(unsigned int)ratio;
@end

@implementation BWFigVideoCaptureSynchronizedStreamsGroup

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFigVideoCaptureSynchronizedStreamsGroup;
  [(BWFigVideoCaptureSynchronizedStreamsGroup *)&v3 dealloc];
}

- (unsigned)minimumMasterToSlaveFrameRateRatio
{
  v2 = [(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup getProperty:*off_1E798CCD0 error:0];

  return [v2 intValue];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWFigVideoCaptureSynchronizedStreamsGroup)initWithSynchronizedStreamsGroup:(id)group activeStreams:(id)streams readOnly:(BOOL)only baseZoomFactorOverrides:(id)overrides clientBaseZoomFactorsByPortType:(id)type error:(int *)error
{
  v38[0] = 0;
  if (![streams count])
  {
    [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    goto LABEL_33;
  }

  v37.receiver = self;
  v37.super_class = BWFigVideoCaptureSynchronizedStreamsGroup;
  self = [(BWFigVideoCaptureSynchronizedStreamsGroup *)&v37 init];
  if (!self)
  {
    return self;
  }

  groupCopy = group;
  errorCopy = error;
  typeCopy = type;
  self->_activeStreams = streams;
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v15 = streams != 0;
  v35 = 0u;
  v36 = 0u;
  v16 = [streams countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    v19 = *off_1E798BD38;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(streams);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        [array addObject:{objc_msgSend(v21, "portType", errorCopy, typeCopy)}];
        v15 &= [objc_msgSend(v21 "supportedProperties")] != 0;
      }

      v17 = [streams countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v17);
  }

  self->_activePortTypes = [array copy];
  v22 = groupCopy;
  self->_synchronizedStreamsGroup = v22;
  if (v22)
  {
    self->_readOnly = only;
    if (!only && (v38[0] = [(BWFigCaptureSynchronizedStreamsGroup *)v22 setActiveStreams:streams]) != 0)
    {
      [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    }

    else if ((v15 & 1) != 0 || (v38[0] = [(BWFigVideoCaptureSynchronizedStreamsGroup *)self _getViewAndPoseMatrices]) == 0)
    {
      if ([(NSArray *)self->_activeStreams count]< 2 || (v38[0] = [(BWFigVideoCaptureSynchronizedStreamsGroup *)self _computeBaseZoomFactorsWithOverrides:overrides clientBaseZoomFactorsByPortType:typeCopy]) == 0)
      {
        if (![(NSArray *)self->_activePortTypes containsObject:*off_1E798A0E8])
        {
          v23 = [(NSDictionary *)[(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup supportedProperties] objectForKeyedSubscript:*off_1E798CCA0];
          self->_masterConfigurationSupported = v23 != 0;
          if (v23)
          {
            v24 = [(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup getProperty:*off_1E798CCA8 error:v38];
            if (v38[0])
            {
              [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:? activeStreams:? readOnly:? baseZoomFactorOverrides:? clientBaseZoomFactorsByPortType:? error:?];
              goto LABEL_32;
            }

            if (self->_masterConfigurationSupported)
            {
              v25 = [v24 containsObject:*off_1E798CC58];
            }

            else
            {
              v25 = 0;
            }

            self->_atomicMasterSlaveReconfigurationSupported = v25;
          }
        }

        *&self->_maximumNumberOfSlaveStreamsWithoutFrameSkipping = -1;
        self->_maximumNumberOfEnabledSlaveTimeMachines = -1;
        return self;
      }

      [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    }

    else
    {
      [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:activeStreams:readOnly:baseZoomFactorOverrides:clientBaseZoomFactorsByPortType:error:];
    }
  }

  else
  {
    [BWFigVideoCaptureSynchronizedStreamsGroup initWithSynchronizedStreamsGroup:v38 activeStreams:? readOnly:? baseZoomFactorOverrides:? clientBaseZoomFactorsByPortType:? error:?];
  }

LABEL_32:
  error = v28;
LABEL_33:

  self = 0;
  if (error)
  {
    *error = v38[0];
  }

  return self;
}

- (void)setBaseZoomFactorsByPortType:(id)type
{
  v5 = [(NSDictionary *)self->_baseZoomFactorsByPortType mutableCopy];
  [v5 addEntriesFromDictionary:type];

  self->_baseZoomFactorsByPortType = [v5 copy];
}

- (void)setMinimumMasterToSlaveFrameRateRatio:(unsigned int)ratio
{
  if (!self->_readOnly)
  {
    synchronizedStreamsGroup = self->_synchronizedStreamsGroup;
    v5 = *off_1E798CCD0;
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&ratio];

    [(BWFigCaptureSynchronizedStreamsGroup *)synchronizedStreamsGroup setProperty:v5 value:v6];
  }
}

- (void)setMaximumNumberOfSlaveStreamsWithoutFrameSkipping:(int)skipping
{
  if (!self->_readOnly)
  {
    v3 = *&skipping;
    if ([(BWFigVideoCaptureSynchronizedStreamsGroup *)self maximumNumberOfSlaveStreamsWithoutFrameSkippingSupported])
    {
      if (self->_maximumNumberOfSlaveStreamsWithoutFrameSkipping != v3 && !-[BWFigCaptureSynchronizedStreamsGroup setProperty:value:](self->_synchronizedStreamsGroup, "setProperty:value:", *off_1E798CCC0, [MEMORY[0x1E696AD98] numberWithInt:v3]))
      {
        self->_maximumNumberOfSlaveStreamsWithoutFrameSkipping = v3;
      }
    }
  }
}

- (void)setMaximumNumberOfSlaveStreamsWithFrameProcessingEnabled:(int)enabled
{
  if (!self->_readOnly)
  {
    v3 = *&enabled;
    if ([(BWFigVideoCaptureSynchronizedStreamsGroup *)self maximumNumberOfSlaveStreamsWithFrameProcessingEnabledSupported])
    {
      if (self->_maximumNumberOfSlaveStreamsWithFrameProcessingEnabled != v3 && !-[BWFigCaptureSynchronizedStreamsGroup setProperty:value:](self->_synchronizedStreamsGroup, "setProperty:value:", *off_1E798CCB8, [MEMORY[0x1E696AD98] numberWithInt:v3]))
      {
        self->_maximumNumberOfSlaveStreamsWithFrameProcessingEnabled = v3;
      }
    }
  }
}

- (void)setMaximumNumberOfEnabledSlaveTimeMachines:(int)machines
{
  if (!self->_readOnly && self->_atomicMasterSlaveReconfigurationSupported)
  {
    v4 = *&machines;
    supportedProperties = [(BWFigCaptureSynchronizedStreamsGroup *)self->_synchronizedStreamsGroup supportedProperties];
    v6 = *off_1E798CCB0;
    if ([(NSDictionary *)supportedProperties objectForKeyedSubscript:*off_1E798CCB0])
    {
      if (self->_maximumNumberOfEnabledSlaveTimeMachines != v4 && !-[BWFigCaptureSynchronizedStreamsGroup setProperty:value:](self->_synchronizedStreamsGroup, "setProperty:value:", v6, [MEMORY[0x1E696AD98] numberWithInt:v4]))
      {
        self->_maximumNumberOfEnabledSlaveTimeMachines = v4;
      }
    }
  }
}

- (uint64_t)_getViewAndPoseMatrices
{
  if (!result)
  {
    return result;
  }

  v2 = result;
  v30[0] = 0;
  _worldPortType = [(BWFigVideoCaptureSynchronizedStreamsGroup *)result _worldPortType];
  memset(v29, 0, sizeof(v29));
  v28 = 0u;
  v27 = 1065353216;
  v29[0] = 1065353216;
  v29[5] = 1065353216;
  v3 = [MEMORY[0x1E695DEF0] dataWithBytes:&v27 length:48];
  v17 = [*(v2 + 8) getProperty:*off_1E798CC98 error:v30];
  if (v30[0])
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v30[0], v1, v14, v15, v17, _worldPortType, v19, obj);
    goto LABEL_26;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = v2;
  obja = *(v2 + 24);
  v6 = [obja countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (!v6)
  {
    goto LABEL_21;
  }

  v7 = v6;
  v8 = *v24;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v24 != v8)
      {
        objc_enumerationMutation(obja);
      }

      v10 = *(*(&v23 + 1) + 8 * i);
      v11 = v3;
      if ((objc_msgSend_isEqualToString_(v10) & 1) == 0)
      {
        v11 = v3;
        if (objc_msgSend_isEqualToString_(v10))
        {
          goto LABEL_15;
        }

        v11 = v3;
        if (objc_msgSend_isEqualToString_(v10))
        {
          goto LABEL_15;
        }

        if (![objc_msgSend(v17 "allKeys")])
        {
          v11 = [objc_msgSend(v17 objectForKeyedSubscript:{_worldPortType), "objectForKeyedSubscript:", v10}];
LABEL_15:
          [dictionary setObject:0 forKeyedSubscript:v10];
          if (v11)
          {
            goto LABEL_19;
          }

          goto LABEL_16;
        }

        v11 = [objc_msgSend(v17 objectForKeyedSubscript:{v10), "objectForKeyedSubscript:", _worldPortType}];
      }

      [dictionary setObject:v11 forKeyedSubscript:v10];
LABEL_16:
      if ([v11 length] == 48)
      {
        v11 = BWInvertRowMajorViewMatrixData(v11);
      }

      else
      {
        v11 = 0;
      }

LABEL_19:
      [dictionary2 setObject:v11 forKeyedSubscript:v10];
    }

    v7 = [obja countByEnumeratingWithState:&v23 objects:v22 count:16];
  }

  while (v7);
LABEL_21:
  v12 = [dictionary count];
  if (v12)
  {
    v12 = [dictionary copy];
  }

  *(v16 + 32) = v12;
  v13 = [dictionary2 count];
  if (v13)
  {
    v13 = [dictionary2 copy];
  }

  *(v16 + 40) = v13;
LABEL_26:
  if (v30[0] == -12782)
  {
    return 0;
  }

  else
  {
    return v30[0];
  }
}

- (uint64_t)_computeBaseZoomFactorsWithOverrides:(void *)overrides clientBaseZoomFactorsByPortType:
{
  if (result)
  {
    v6 = result;
    v56[0] = 0;
    v7 = [objc_msgSend(*(result + 8) getProperty:*off_1E798CC90 error:{v56), "mutableCopy"}];
    v8 = v7;
    if (v56[0])
    {
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v56[0], v3, v37[0], v37[1], v38, v39, v40, v41);
    }

    else
    {
      v9 = [v7 copy];
      v6[8] = v9;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v55 = 0u;
      v10 = v6[3];
      v12 = OUTLINED_FUNCTION_1_0(v9, v11, &v52, v51);
      if (v12)
      {
        v14 = v12;
        v15 = *v53;
        v16 = 3.4028e38;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v53 != v15)
            {
              objc_enumerationMutation(v10);
            }

            v18 = *(*(&v52 + 1) + 8 * i);
            v19 = [objc_msgSend(v8 "allKeys")];
            if (v19)
            {
              v19 = [objc_msgSend(v8 objectForKeyedSubscript:{v18), "floatValue"}];
              if (v16 >= v21)
              {
                v19 = [objc_msgSend(v8 objectForKeyedSubscript:{v18), "floatValue"}];
                v16 = v22;
              }
            }
          }

          v14 = OUTLINED_FUNCTION_1_0(v19, v20, &v52, v51);
        }

        while (v14);
      }

      else
      {
        v16 = 3.4028e38;
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v23 = v6[2];
      v24 = OUTLINED_FUNCTION_1_0(0, v13, &v47, v46);
      if (v24)
      {
        v25 = v24;
        v26 = *v48;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v23);
            }

            [objc_msgSend(v8 objectForKeyedSubscript:{objc_msgSend(*(*(&v47 + 1) + 8 * j), "portType")), "floatValue"}];
            if (*&v28 == 0.0)
            {
              *&v28 = 1.0;
            }

            *&v28 = *&v28 / v16;
            [MEMORY[0x1E696AD98] numberWithFloat:v28];
            v29 = [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
          }

          v25 = OUTLINED_FUNCTION_1_0(v29, v30, &v47, v46);
        }

        while (v25);
      }

      if (overrides)
      {
        overridesCopy = overrides;
      }

      else
      {
        overridesCopy = v8;
      }

      v6[7] = [overridesCopy copy];
      if (a2)
      {
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        allKeys = [a2 allKeys];
        v33 = [allKeys countByEnumeratingWithState:&v42 objects:v37 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v43;
          do
          {
            for (k = 0; k != v34; ++k)
            {
              if (*v43 != v35)
              {
                objc_enumerationMutation(allKeys);
              }

              [a2 objectForKeyedSubscript:*(*(&v42 + 1) + 8 * k)];
              [OUTLINED_FUNCTION_17() setObject:? forKeyedSubscript:?];
            }

            v34 = [allKeys countByEnumeratingWithState:&v42 objects:v37 count:16];
          }

          while (v34);
        }
      }

      v6[6] = [v8 copy];
    }

    return v56[0];
  }

  return result;
}

- (int)setMasterStream:(id)stream allStreams:(id)streams
{
  if (!self->_readOnly)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v112 = 0u;
    v16 = OUTLINED_FUNCTION_3_25(dictionary, v9, v10, v11, v12, v13, v14, v15, v45, v47, v49, v51, v53, v55, v57, v59, v61, v4, v64, v66, v68, v70, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
    if (v16)
    {
      v24 = v16;
      v25 = *v110;
      do
      {
        v26 = 0;
        do
        {
          if (*v110 != v25)
          {
            objc_enumerationMutation(streams);
          }

          v27 = *(*(&v109 + 1) + 8 * v26);
          if (v27 != stream)
          {
            v16 = [dictionary setObject:-[BWFigVideoCaptureSynchronizedStreamsGroup _slaveConfigurationForStream:](self forKeyedSubscript:{*(*(&v109 + 1) + 8 * v26)), objc_msgSend(v27, "portType")}];
          }

          ++v26;
        }

        while (v24 != v26);
        v16 = OUTLINED_FUNCTION_3_25(v16, v17, v18, v19, v20, v21, v22, v23, v46, v48, v50, v52, v54, v56, v58, v60, v62, v63, v65, v67, v69, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, *(&v91 + 1), v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108);
        v24 = v16;
      }

      while (v16);
    }

    if (self->_currentMasterStream == stream && ([dictionary isEqualToDictionary:self->_currentSlaveConfigurationsByPortType] & 1) != 0)
    {
      return 0;
    }

    if (dword_1EB58E180)
    {
      HIDWORD(v93) = 0;
      BYTE3(v93) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (self->_atomicMasterSlaveReconfigurationSupported)
    {
      [stream stream];
      v29 = [OUTLINED_FUNCTION_17() setMasterStream:? slaveConfigurationsByPortType:?];
      if (v29)
      {
        v30 = v29;
        OUTLINED_FUNCTION_1_5();
        FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46);
        return v30;
      }

LABEL_29:

      self->_currentMasterStream = stream;
      v30 = 0;
      self->_currentSlaveConfigurationsByPortType = dictionary;
      return v30;
    }

    streamsCopy = streams;
    v32 = dictionary;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v33 = streamsCopy;
    v34 = [streamsCopy countByEnumeratingWithState:&v88 objects:&v72 count:16];
    if (v34)
    {
      v36 = v34;
      v37 = *v89;
      v38 = *off_1E798C1D0;
LABEL_20:
      v39 = 0;
      while (1)
      {
        if (*v89 != v37)
        {
          objc_enumerationMutation(v33);
        }

        v40 = *(*(&v88 + 1) + 8 * v39);
        if (v40 != stream)
        {
          v34 = [objc_msgSend(v40 "stream")];
          if (v34)
          {
            break;
          }
        }

        if (v36 == ++v39)
        {
          v34 = OUTLINED_FUNCTION_1_0(v34, v35, &v88, &v72);
          v36 = v34;
          if (v34)
          {
            goto LABEL_20;
          }

          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      dictionary = v32;
      if (!self->_masterConfigurationSupported)
      {
        goto LABEL_29;
      }

      [stream stream];
      LODWORD(v34) = [OUTLINED_FUNCTION_17() setMasterStream:? slaveConfigurationsByPortType:?];
      if (!v34)
      {
        goto LABEL_29;
      }
    }

    v30 = v34;
    OUTLINED_FUNCTION_1_5();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v46);
    return v30;
  }

  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v4, v49, v51, v53, v55, v57, v59);
  v44 = qword_1EB58E178;

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v44, 0xFFFFCE12, "<<<< BWFigVideoCaptureSynchronizedStreamsGroup >>>>", 0xC3, v4, v42, v43, v114);
}

- (void)_slaveConfigurationForStream:(void *)result
{
  if (result)
  {
    if ([a2 streamingRequiredWhenConfiguredAsSlave])
    {
      visionDataRequiredWhenConfiguredAsSlave = 1;
    }

    else
    {
      visionDataRequiredWhenConfiguredAsSlave = [a2 visionDataRequiredWhenConfiguredAsSlave];
    }

    firmwareTimeMachineEnabledWhenConfiguredAsSlave = [a2 firmwareTimeMachineEnabledWhenConfiguredAsSlave];
    masterToSlaveFrameRateRatio = [a2 masterToSlaveFrameRateRatio];
    v7[0] = [MEMORY[0x1E696AD98] numberWithBool:{visionDataRequiredWhenConfiguredAsSlave, *off_1E798C730}];
    v6[1] = *off_1E798C728;
    v7[1] = [MEMORY[0x1E696AD98] numberWithInt:masterToSlaveFrameRateRatio];
    v6[2] = *off_1E798C720;
    v7[2] = [MEMORY[0x1E696AD98] numberWithInt:masterToSlaveFrameRateRatio > 1];
    v6[3] = *off_1E798C738;
    v7[3] = [MEMORY[0x1E696AD98] numberWithBool:firmwareTimeMachineEnabledWhenConfiguredAsSlave];
    return [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:v6 count:4];
  }

  return result;
}

- (int)setCameraControlsStatisticsMasterStream:(id)stream
{
  if (self->_statsMasterHasBeenSet && self->_cameraControlsStatisticsMasterStream == stream)
  {
    return 0;
  }

  if (self->_readOnly)
  {
    v9 = qword_1EB58E178;
    v10 = v5;
    v11 = 246;
  }

  else
  {
    if (self->_masterConfigurationSupported)
    {
      result = -[BWFigCaptureSynchronizedStreamsGroup setCameraControlsMasterStream:](self->_synchronizedStreamsGroup, "setCameraControlsMasterStream:", [stream stream]);
      if (!result)
      {
        self->_cameraControlsStatisticsMasterStream = stream;
        self->_statsMasterHasBeenSet = 1;
      }

      return result;
    }

    v9 = qword_1EB58E178;
    v10 = v5;
    v11 = 247;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v9, 0xFFFFCE12, "<<<< BWFigVideoCaptureSynchronizedStreamsGroup >>>>", v11, v10, v3, v4, v13);
}

- (uint64_t)_worldPortType
{
  if (!self)
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  streams = [*(self + 8) streams];
  v2 = [streams countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v14;
    v5 = *off_1E798A0E0;
    v6 = *off_1E798A0F8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(streams);
        }

        if ([objc_msgSend(*(*(&v13 + 1) + 8 * i) "portType")])
        {
          return *off_1E798A0C0;
        }

        if (FigCFEqual())
        {
          return v5;
        }

        if (FigCFEqual())
        {
          return v6;
        }
      }

      v3 = [streams countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  FrameworkRadarComponent = FigCaptureGetFrameworkRadarComponent();
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  v10 = _os_log_send_and_compose_impl();
  FigCapturePleaseFileRadar(FrameworkRadarComponent, v10, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Utilities/BWFigVideoCaptureSynchronizedStreamsGroup.m", 402, @"LastShownDate:BWFigVideoCaptureSynchronizedStreamsGroup.m:402", @"LastShownBuild:BWFigVideoCaptureSynchronizedStreamsGroup.m:402", 0);
  free(v10);
  return *off_1E798A0E0;
}

@end