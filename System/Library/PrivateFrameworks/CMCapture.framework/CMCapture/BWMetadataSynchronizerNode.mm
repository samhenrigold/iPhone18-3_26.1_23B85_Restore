@interface BWMetadataSynchronizerNode
+ (void)initialize;
- (BWMetadataSynchronizerNode)initWithArraysOfMetadataInputs:(id)inputs propagateSampleBufferAttachmentKeys:(id)keys propagateSampleBufferMetadataDictKeys:(id)dictKeys syncMetadataByPortType:(id)type syncOnlyIfMetadataEnabledForKeys:(id)forKeys;
- (BWMetadataSynchronizerNode)initWithMetadataInputs:(id)inputs propagateSampleBufferAttachmentKeys:(id)keys propagateSampleBufferMetadataDictKeys:(id)dictKeys syncMetadataByPortType:(id)type syncOnlyIfMetadataEnabledForKeys:(id)forKeys;
- (CMTime)_purgeAllPurgeableMetadataBuffers;
- (CMTime)_tryToEmitImageBufferWithAllMetadata:(CMTime *)result;
- (void)_attachedMediaKeysForMetadataInput:(void *)result;
- (void)_printState;
- (void)_purgeAllBuffers;
- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input;
- (void)dealloc;
- (void)didReachEndOfDataForInput:(id)input;
- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key;
- (void)handleDroppedSample:(id)sample forInput:(id)input;
- (void)handleNodeError:(id)error forInput:(id)input;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input;
@end

@implementation BWMetadataSynchronizerNode

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWMetadataSynchronizerNode)initWithArraysOfMetadataInputs:(id)inputs propagateSampleBufferAttachmentKeys:(id)keys propagateSampleBufferMetadataDictKeys:(id)dictKeys syncMetadataByPortType:(id)type syncOnlyIfMetadataEnabledForKeys:(id)forKeys
{
  v42.receiver = self;
  v42.super_class = BWMetadataSynchronizerNode;
  v13 = [(BWNode *)&v42 init];
  if (!v13)
  {
    return v13;
  }

  if (!inputs)
  {
    [BWMetadataSynchronizerNode initWithArraysOfMetadataInputs:propagateSampleBufferAttachmentKeys:propagateSampleBufferMetadataDictKeys:syncMetadataByPortType:syncOnlyIfMetadataEnabledForKeys:];
LABEL_33:

    return 0;
  }

  v13->_syncMetadataByPortType = type;
  v13->_syncOnlyIfMetadataEnabledForKeys = forKeys;
  v13->_propagateSampleBufferAttachmentKeys = keys;
  v13->_propagateSampleBufferMetadataDictKeys = dictKeys;
  v13->_bufferServicingLock._os_unfair_lock_opaque = 0;
  inputsCopy = inputs;
  v14 = [inputs count] + 1;
  v15 = malloc_type_calloc(v14, 0x28uLL, 0x10A0040EE0660CCuLL);
  v13->_inputsStorage = v15;
  if (!v15)
  {
    [BWMetadataSynchronizerNode initWithArraysOfMetadataInputs:propagateSampleBufferAttachmentKeys:propagateSampleBufferMetadataDictKeys:syncMetadataByPortType:syncOnlyIfMetadataEnabledForKeys:];
    goto LABEL_33;
  }

  if (v14)
  {
    v16 = 0;
    allocator = *MEMORY[0x1E695E480];
    v39 = *MEMORY[0x1E6960C80];
    v38 = *(MEMORY[0x1E6960C80] + 16);
    do
    {
      if (v16)
      {
        v19 = -[BWMetadataSynchronizerNode _attachedMediaKeysForMetadataInput:](v13, [inputsCopy objectAtIndexedSubscript:v16 - 1]);
        if (objc_msgSend_isEqualToString_([objc_msgSend(inputsCopy objectAtIndexedSubscript:{v16 - 1), "objectAtIndexedSubscript:", 0}]))
        {
          v20 = 1885564004;
        }

        else
        {
          v20 = 1986618469;
        }

        v18 = 2;
      }

      else
      {
        v17 = objc_alloc(MEMORY[0x1E695DF70]);
        v41 = @"PrimaryFormat";
        v18 = 1;
        v19 = [v17 initWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v41, 1)}];
        v20 = 1986618469;
      }

      v21 = CMSimpleQueueCreate(allocator, v18, &v13->_inputsStorage[v16].var1);
      if (v21)
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58DE78, v21, "<<<< BWMetadataSynchronizerNode >>>>", 0x92, v7, v22, v23, v36);
      }

      v24 = &v13->_inputsStorage[v16];
      *(v24 + 16) = v39;
      *(v24 + 32) = v38;
      v13->_inputsStorage[v16].var0 = v19;
      v25 = [[BWNodeInput alloc] initWithMediaType:v20 node:v13 index:v16];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v25 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v25 primaryMediaConfiguration] setPassthroughMode:1];
      [(BWNodeInputMediaConfiguration *)[(BWNodeInput *)v25 primaryMediaConfiguration] setDelayedBufferCount:v18];
      if (v16)
      {
        v26 = objc_alloc_init(BWNodeInputMediaConfiguration);
        [(BWNodeInputMediaConfiguration *)v26 setPassthroughMode:0];
        [(BWNodeInput *)v25 setUnspecifiedAttachedMediaConfiguration:v26];
        if ([v19 count] >= 2)
        {
          if ([v19 count])
          {
            v27 = 0;
            do
            {
              v28 = objc_alloc_init(BWNodeInputMediaConfiguration);
              [(BWNodeInputMediaConfiguration *)v28 setPassthroughMode:1];
              -[BWNodeInput setMediaConfiguration:forAttachedMediaKey:](v25, "setMediaConfiguration:forAttachedMediaKey:", v28, [v19 objectAtIndexedSubscript:v27++]);
            }

            while ([v19 count] > v27);
          }
        }
      }

      [(BWNode *)v13 addInput:v25];

      ++v16;
    }

    while (v16 != v14);
  }

  v29 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v13];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v29 primaryMediaConfiguration] setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutputMediaConfiguration *)[(BWNodeOutput *)v29 primaryMediaConfiguration] setPassthroughMode:1];
  if (v14 >= 2)
  {
    for (i = 1; i != v14; ++i)
    {
      if ([v13->_inputsStorage[i].var0 count])
      {
        v31 = 0;
        do
        {
          v32 = objc_alloc_init(BWNodeOutputMediaConfiguration);
          [(BWNodeOutputMediaConfiguration *)v32 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
          [(BWNodeOutputMediaConfiguration *)v32 setPassthroughMode:1];
          [(BWNodeOutputMediaConfiguration *)v32 setIndexOfInputWhichDrivesThisOutput:i];
          v33 = [v13->_inputsStorage[i].var0 count];
          v34 = @"PrimaryFormat";
          if (v33 != 1)
          {
            v34 = [v13->_inputsStorage[i].var0 objectAtIndexedSubscript:v31];
          }

          [(BWNodeOutputMediaConfiguration *)v32 setAttachedMediaKeyOfInputWhichDrivesThisOutput:v34];
          -[BWNodeOutput setMediaConfiguration:forAttachedMediaKey:](v29, "setMediaConfiguration:forAttachedMediaKey:", v32, [v13->_inputsStorage[i].var0 objectAtIndexedSubscript:v31++]);
        }

        while ([v13->_inputsStorage[i].var0 count] > v31);
      }
    }
  }

  [(BWNode *)v13 addOutput:v29];

  return v13;
}

- (void)dealloc
{
  if (self->_inputsStorage)
  {
    [(BWMetadataSynchronizerNode *)self _purgeAllBuffers];
    if ([(NSArray *)[(BWNode *)self inputs] count])
    {
      v3 = 0;
      v4 = 0;
      do
      {
        inputsStorage = self->_inputsStorage;
        var1 = inputsStorage[v3].var1;
        if (var1)
        {
          CFRelease(var1);
          inputsStorage = self->_inputsStorage;
        }

        ++v4;
        ++v3;
      }

      while ([(NSArray *)[(BWNode *)self inputs] count]> v4);
    }

    free(self->_inputsStorage);
  }

  v7.receiver = self;
  v7.super_class = BWMetadataSynchronizerNode;
  [(BWNode *)&v7 dealloc];
}

- (void)didSelectFormat:(id)format forInput:(id)input forAttachedMediaKey:(id)key
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  outputs = [(BWNode *)self outputs];
  v9 = [(NSArray *)outputs countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(outputs);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 attachedMediaKeyDrivenByInputAttachedMediaKey:key inputIndex:{objc_msgSend(input, "index")}];
        if (v14)
        {
          v15 = v14;
          if ([v13 passthroughMode])
          {
            v16 = [v13 mediaPropertiesForAttachedMediaKey:v15];
            if (!v16)
            {
              if (objc_msgSend_isEqualToString_(v15))
              {
                v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ output %@ has no media properties for the primary format (provided media key is %@)", self, v13, key];
                objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0]);
              }

              v16 = objc_alloc_init(BWNodeOutputMediaProperties);
              [v13 _setMediaProperties:v16 forAttachedMediaKey:v15];
            }

            [(BWNodeOutputMediaProperties *)v16 setResolvedFormat:format];
          }
        }
      }

      v10 = [(NSArray *)outputs countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)configurationWithID:(int64_t)d updatedFormat:(id)format didBecomeLiveForInput:(id)input
{
  if (![input index])
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    if (![(BWNodeOutput *)self->super._output liveFormat])
    {
      [(BWNodeOutput *)self->super._output makeConfiguredFormatLive];
    }

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (void)didReachEndOfDataForInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  if ([(BWNode *)self allInputsHaveReachedState:0])
  {
    [BWMetadataSynchronizerNode didReachEndOfDataForInput:?];
  }

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleNodeError:(id)error forInput:(id)input
{
  os_unfair_lock_lock(&self->_bufferServicingLock);
  [(BWNodeOutput *)self->super._output emitNodeError:error];

  os_unfair_lock_unlock(&self->_bufferServicingLock);
}

- (void)handleDroppedSample:(id)sample forInput:(id)input
{
  if (![input index])
  {
    os_unfair_lock_lock(&self->_bufferServicingLock);
    [(BWNodeOutput *)self->super._output emitDroppedSample:sample];

    os_unfair_lock_unlock(&self->_bufferServicingLock);
  }
}

- (BWMetadataSynchronizerNode)initWithMetadataInputs:(id)inputs propagateSampleBufferAttachmentKeys:(id)keys propagateSampleBufferMetadataDictKeys:(id)dictKeys syncMetadataByPortType:(id)type syncOnlyIfMetadataEnabledForKeys:(id)forKeys
{
  v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v13)
  {
    v21 = v13;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v22 = OUTLINED_FUNCTION_6_17(v13, v14, v15, v16, v17, v18, v19, v20, keys, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
    if (v22)
    {
      v23 = v22;
      v24 = *v54;
      do
      {
        v25 = 0;
        do
        {
          if (*v54 != v24)
          {
            objc_enumerationMutation(inputs);
          }

          v36 = *(*(&v53 + 1) + 8 * v25);
          v26 = [v21 addObject:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", &v36, 1)}];
          ++v25;
        }

        while (v23 != v25);
        v23 = OUTLINED_FUNCTION_6_17(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52);
      }

      while (v23);
    }

    self = [(BWMetadataSynchronizerNode *)self initWithArraysOfMetadataInputs:v21 propagateSampleBufferAttachmentKeys:v35 propagateSampleBufferMetadataDictKeys:dictKeys syncMetadataByPortType:type syncOnlyIfMetadataEnabledForKeys:forKeys];
  }

  return self;
}

- (void)_attachedMediaKeysForMetadataInput:(void *)result
{
  if (result)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (array)
    {
      v4 = array;
      if ([a2 count])
      {
        v5 = 0;
        do
        {
          isEqualToString = objc_msgSend_isEqualToString_([a2 objectAtIndexedSubscript:v5]);
          v7 = 0x1F219CD50;
          if ((isEqualToString & 1) == 0)
          {
            v8 = objc_msgSend_isEqualToString_([a2 objectAtIndexedSubscript:v5]);
            v7 = 0x1F219CD70;
            if ((v8 & 1) == 0)
            {
              v7 = [a2 objectAtIndexedSubscript:v5];
            }
          }

          [v4 addObject:v7];
          ++v5;
        }

        while ([a2 count] > v5);
      }

      if ([v4 count])
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0();
      FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v9, v10, v11, v12, v13, v14, v15, v16);
      return 0;
    }
  }

  return result;
}

- (void)_purgeAllBuffers
{
  if (result)
  {
    v1 = result;
    result = [objc_msgSend(result "inputs")];
    if (result)
    {
      for (i = 0; i < result; ++i)
      {
        while (1)
        {
          v3 = CMSimpleQueueDequeue(*(v1[21] + 40 * i + 8));
          if (!v3)
          {
            break;
          }

          CFRelease(v3);
        }

        result = [objc_msgSend(v1 "inputs")];
      }
    }
  }

  return result;
}

- (CMTime)_tryToEmitImageBufferWithAllMetadata:(CMTime *)result
{
  v97 = result;
  if (!result)
  {
    return result;
  }

  v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
  v4 = *(result[7].value + 8);
  result = CMSimpleQueueGetHead(v4);
  if (!result)
  {
    return result;
  }

  v5 = result;
  obj = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(-[CMTime inputs](v97, "inputs"), "count")}];
  memset(&v180, 0, sizeof(v180));
  target = v5;
  msn_getOriginalPTSForSampleBuffer(v5, &v180);
  if (CMGetAttachment(v4, @"IsHarvestedStillFrame", 0))
  {
    goto LABEL_77;
  }

  if (*&v97[5].timescale)
  {
    v6 = [CMGetAttachment(v5 *off_1E798A3C8];
    if (![objc_msgSend(*&v97[5].timescale "allKeys")])
    {
LABEL_77:
      v63 = obj;
      [obj addObject:&unk_1F2242A90];
      v64 = [v97->epoch emitSampleBuffer:target];
      result = OUTLINED_FUNCTION_5_22(v64, v65, v66, v67, v68, v69, v70, v71, v83, v85, v87, obj, key, v93, v95, v97, v99, target, v104, *(&v104 + 1), v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137);
      if (result)
      {
        v72 = result;
        v73 = MEMORY[0];
        do
        {
          v74 = 0;
          do
          {
            if (MEMORY[0] != v73)
            {
              objc_enumerationMutation(v63);
            }

            v75 = CMSimpleQueueDequeue(*(*(v98 + v3[977]) + 40 * [*(8 * v74) intValue] + 8));
            if (v75)
            {
              CFRelease(v75);
            }

            v74 = (v74 + 1);
          }

          while (v72 != v74);
          result = OUTLINED_FUNCTION_5_22(v75, v76, v77, v78, v79, v80, v81, v82, v84, v86, v88, obja, keya, v94, v96, v98, v101, targeta, v105, v106, v108, v110, v112, v114, v116, v118, v120, v122, v124, v126, v128, v130, v132, v134, v136, v138);
          v72 = result;
        }

        while (result);
      }

      return result;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = 1;
  if ([-[CMTime inputs](v97 "inputs")] >= 2)
  {
    i = v97;
    while (1)
    {
      Head = CMSimpleQueueGetHead((*(i + v3[977]))[5 * v7 + 1]);
      memset(v163, 0, 24);
      msn_getOriginalPTSForSampleBuffer(Head, v163);
      v178 = 0u;
      v179 = 0u;
      v176 = 0u;
      v177 = 0u;
      v10 = (*(i + v3[977]))[5 * v7];
      v11 = OUTLINED_FUNCTION_11_11();
      if (v11)
      {
        break;
      }

LABEL_23:
      ++v7;
      i = v97;
      if ([-[CMTime inputs](v97 "inputs")] <= v7)
      {
        goto LABEL_26;
      }
    }

    v12 = v11;
    v13 = *v177;
LABEL_12:
    v14 = 0;
    while (1)
    {
      if (*v177 != v13)
      {
        objc_enumerationMutation(v10);
      }

      if ([objc_msgSend(*&v97[5].timescale objectForKeyedSubscript:{v6), "containsObject:", *(*(&v176 + 1) + 8 * v14)}])
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = OUTLINED_FUNCTION_11_11();
        v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
        if (v12)
        {
          goto LABEL_12;
        }

        goto LABEL_23;
      }
    }

    time1 = v163[0];
    time2 = v180;
    if (!CMTimeCompare(&time1, &time2))
    {
      [obj addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v7)}];
      v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
      goto LABEL_23;
    }

    v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
    if (!a2)
    {
      goto LABEL_23;
    }
  }

  i = v97;
LABEL_26:
  v15 = [obj count];
  v16 = [objc_msgSend(i[16] objectForKeyedSubscript:{v6), "count"}];
  result = [objc_msgSend(i "inputs")];
  if (result == v7 || v15 == v16)
  {
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v95 = [obj countByEnumeratingWithState:&v170 objects:v169 count:16];
    if (v95)
    {
      key = *off_1E798A3C8;
      v93 = *v171;
      *&v18 = 136315394;
      v104 = v18;
      do
      {
        v19 = 0;
        do
        {
          if (*v171 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v100 = v19;
          v20 = OUTLINED_FUNCTION_1_26();
          v21 = CMSimpleQueueGetHead(*(v19 + 40 * v20 + 8));
          [*(v19 + 40 * OUTLINED_FUNCTION_1_26()) count];
          v22 = i[5 * OUTLINED_FUNCTION_7_16()];
          v23 = target;
          if (v19 == 1)
          {
            BWSampleBufferSetAttachedMedia(target, [v22 objectAtIndexedSubscript:0], v21);
          }

          else if ([v22 count])
          {
            v24 = 0;
            do
            {
              v25 = [*(v19 + 40 * OUTLINED_FUNCTION_1_26()) objectAtIndexedSubscript:v24];
              if (BWSampleBufferGetAttachedMedia(v21, v25))
              {
                v26 = [i[5 * OUTLINED_FUNCTION_7_16()] objectAtIndexedSubscript:v24];
                BWSampleBufferSetAttachedMedia(target, v26, v19);
              }

              ++v24;
            }

            while ([*(v19 + 40 * OUTLINED_FUNCTION_1_26()) count] > v24);
          }

          v167 = 0u;
          v168 = 0u;
          v165 = 0u;
          v166 = 0u;
          epoch = v97[5].epoch;
          v28 = OUTLINED_FUNCTION_9_8();
          if (v28)
          {
            v29 = v28;
            v30 = *v166;
            do
            {
              for (i = 0; i != v29; i = (i + 1))
              {
                if (*v166 != v30)
                {
                  objc_enumerationMutation(epoch);
                }

                v31 = *(*(&v165 + 1) + 8 * i);
                v32 = CMGetAttachment(v21, v31, 0);
                if (v32)
                {
                  v33 = v32;
                  if (CMGetAttachment(v23, v31, 0))
                  {
                    LODWORD(time2.value) = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    value = time2.value;
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v36 = value;
                    }

                    else
                    {
                      v36 = value & 0xFFFFFFFE;
                    }

                    if (v36)
                    {
                      LODWORD(time1.value) = v104;
                      *(&time1.value + 4) = "[BWMetadataSynchronizerNode _tryToEmitImageBufferWithAllMetadata:]";
                      LOWORD(time1.flags) = 2112;
                      *(&time1.flags + 2) = v31;
                      OUTLINED_FUNCTION_0_24();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_4_21();
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                    v23 = target;
                  }

                  else
                  {
                    CMSetAttachment(v23, v31, v33, 1u);
                  }
                }
              }

              v29 = OUTLINED_FUNCTION_9_8();
            }

            while (v29);
          }

          v37 = CMGetAttachment(v23, key, 0);
          v38 = CMGetAttachment(v21, key, 0);
          v39 = v97[6].value;
          v47 = OUTLINED_FUNCTION_10_11(v38, v40, v41, v42, v43, v44, v45, v46, v83, v85, v87, obj, key, v93, v95, v97, v100, target, v104, *(&v104 + 1), v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
          if (v47)
          {
            v48 = v47;
            i = MEMORY[0];
            do
            {
              for (j = 0; j != v48; ++j)
              {
                if (MEMORY[0] != i)
                {
                  objc_enumerationMutation(v39);
                }

                v50 = *(8 * j);
                v51 = [v38 objectForKeyedSubscript:v50];
                if (v51)
                {
                  v59 = v51;
                  if ([v37 objectForKeyedSubscript:v50])
                  {
                    LODWORD(time2.value) = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v60 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v61 = time2.value;
                    if (os_log_type_enabled(v60, type))
                    {
                      v62 = v61;
                    }

                    else
                    {
                      v62 = v61 & 0xFFFFFFFE;
                    }

                    if (v62)
                    {
                      LODWORD(time1.value) = v104;
                      *(&time1.value + 4) = "[BWMetadataSynchronizerNode _tryToEmitImageBufferWithAllMetadata:]";
                      LOWORD(time1.flags) = 2112;
                      *(&time1.flags + 2) = v50;
                      OUTLINED_FUNCTION_0_24();
                      _os_log_send_and_compose_impl();
                    }

                    OUTLINED_FUNCTION_4_21();
                    v51 = fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  else
                  {
                    v51 = [v37 setObject:v59 forKeyedSubscript:v50];
                  }
                }
              }

              v48 = OUTLINED_FUNCTION_10_11(v51, v52, v53, v54, v55, v56, v57, v58, v83, v85, v87, obj, key, v93, v95, v97, v99, target, v104, *(&v104 + 1), v107, v109, v111, v113, v115, v117, v119, v121, v123, v125, v127, v129, v131, v133, v135, v137, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162);
            }

            while (v48);
          }

          v19 = v99 + 1;
          v3 = &OBJC_IVAR___BWVISProcessorControllerConfiguration__videoStabilizationStrength;
        }

        while (v99 + 1 != v95);
        v95 = [obj countByEnumeratingWithState:&v170 objects:v169 count:16];
      }

      while (v95);
    }

    goto LABEL_77;
  }

  return result;
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)buffer forInput:(id)input
{
  if (BWSampleBufferIsMarkerBuffer(buffer))
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitSampleBuffer:buffer];
  }

  else
  {
    v9 = CMGetAttachment(buffer, *off_1E798A3C8, 0);
    v10 = [v9 objectForKeyedSubscript:*off_1E798B540];
    if (![input index] || (syncMetadataByPortType = self->_syncMetadataByPortType) == 0 || -[NSArray containsObject:](-[NSDictionary allKeys](syncMetadataByPortType, "allKeys"), "containsObject:", v10))
    {
      if (![input index])
      {
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        syncOnlyIfMetadataEnabledForKeys = self->_syncOnlyIfMetadataEnabledForKeys;
        v20 = OUTLINED_FUNCTION_8_16(0, v12, v13, v14, v15, v16, v17, v18, v39, v40, v42, cf, time2.value, *&time2.timescale, time2.epoch, v45, time1.value, *&time1.timescale, time1.epoch, v47, v48.value, *&v48.timescale, v48.epoch, v49.value, *&v49.timescale, v49.epoch);
        if (v20)
        {
          v21 = v20;
          v22 = *v51;
          while (2)
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v51 != v22)
              {
                objc_enumerationMutation(syncOnlyIfMetadataEnabledForKeys);
              }

              v24 = [objc_msgSend(v9 objectForKeyedSubscript:{*(*(&v50 + 1) + 8 * i)), "BOOLValue"}];
              if ((v24 & 1) == 0)
              {
                [(BWNodeOutput *)self->super._output emitSampleBuffer:buffer];
                return;
              }
            }

            v21 = OUTLINED_FUNCTION_8_16(v24, v25, v26, v27, v28, v29, v30, v31, v39, v41, v42, cf, time2.value, *&time2.timescale, time2.epoch, v45, time1.value, *&time1.timescale, time1.epoch, v47, v48.value, *&v48.timescale, v48.epoch, v49.value, *&v49.timescale, v49.epoch);
            if (v21)
            {
              continue;
            }

            break;
          }
        }
      }

      os_unfair_lock_lock(&self->_bufferServicingLock);
      memset(&v49, 0, sizeof(v49));
      msn_getOriginalPTSForSampleBuffer(buffer, &v49);
      v48 = *&v9[40 * OUTLINED_FUNCTION_12_9() + 16];
      time1 = v49;
      time2 = v48;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        v35 = -1;
        do
        {
          ++v35;
        }

        while ([*&v9[40 * OUTLINED_FUNCTION_12_9()] count] > v35);
      }

      else
      {
        *&v9[40 * OUTLINED_FUNCTION_12_9() + 16] = v49;
        v32 = *&v9[40 * OUTLINED_FUNCTION_12_9() + 8];
        Count = CMSimpleQueueGetCount(v32);
        if (Count == CMSimpleQueueGetCapacity(v32))
        {
          if ([input index])
          {
            cf = CMSimpleQueueDequeue(v32);
            v38 = -1;
            do
            {
              ++v38;
            }

            while ([self->_inputsStorage[objc_msgSend(input "index")].var0] > v38);
            if (cf)
            {
              CFRelease(cf);
            }

            [(BWMetadataSynchronizerNode *)self _printState];
          }

          else
          {
            v37 = -1;
            do
            {
              ++v37;
            }

            while ([self->_inputsStorage[objc_msgSend(input "index")].var0] > v37);
            [(BWMetadataSynchronizerNode *)self _tryToEmitImageBufferWithAllMetadata:?];
          }
        }

        if (buffer)
        {
          v34 = CFRetain(buffer);
        }

        else
        {
          v34 = 0;
        }

        v36 = CMSimpleQueueEnqueue(v32, v34);
        if (v36)
        {
          LODWORD(v39) = v36;
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v39, v4, v42, cf, LODWORD(time2.value), *&time2.timescale, time2.epoch, v45);
          if (buffer)
          {
            CFRelease(buffer);
          }
        }

        else
        {
          [(BWMetadataSynchronizerNode *)self _purgeAllPurgeableMetadataBuffers];
          [(BWMetadataSynchronizerNode *)self _tryToEmitImageBufferWithAllMetadata:?];
        }
      }

      os_unfair_lock_unlock(&self->_bufferServicingLock);
    }
  }
}

- (void)_printState
{
  if (result)
  {
    v1 = result;
    string = [MEMORY[0x1E696AD60] string];
    result = [objc_msgSend(v1 "inputs")];
    if (result)
    {
      v3 = 0;
      key = *off_1E798A3C8;
      v11 = *off_1E798B540;
      v4 = 8;
      do
      {
        v5 = OUTLINED_FUNCTION_3_16();
        Head = CMSimpleQueueGetHead(v5);
        v7 = OUTLINED_FUNCTION_3_16();
        Count = CMSimpleQueueGetCount(v7);
        v9 = OUTLINED_FUNCTION_3_16();
        Capacity = CMSimpleQueueGetCapacity(v9);
        [string appendFormat:@" [%d] = {", v3];
        if (Head)
        {
          v13 = CMGetAttachment(Head, key, 0);
          msn_getOriginalPTSForSampleBuffer(Head, &time);
          [string appendFormat:@" %d/%d head: PTS %.4lf %@", Count, Capacity, CMTimeGetSeconds(&time), objc_msgSend(v13, "objectForKeyedSubscript:", v11)];
        }

        [string appendFormat:@"}"];
        ++v3;
        result = [objc_msgSend(v1 "inputs")];
        v4 += 40;
      }

      while (result > v3);
    }
  }

  return result;
}

- (CMTime)_purgeAllPurgeableMetadataBuffers
{
  if (result)
  {
    v1 = result;
    result = CMSimpleQueueGetHead(*(result[7].value + 8));
    if (result)
    {
      memset(&v11, 0, sizeof(v11));
      msn_getOriginalPTSForSampleBuffer(result, &v11);
      result = [-[CMTime inputs](v1 "inputs")];
      if (result >= 2)
      {
        v2 = 0;
        for (i = 1; i < result; ++i)
        {
          v4 = *(v1[7].value + 40 * i + 8);
          for (j = CMSimpleQueueGetHead(v4); j; v2 = 1)
          {
            memset(&v10, 0, sizeof(v10));
            msn_getOriginalPTSForSampleBuffer(j, &v10);
            time1 = v10;
            v8 = v11;
            if ((CMTimeCompare(&time1, &v8) & 0x80000000) == 0)
            {
              break;
            }

            v6 = -1;
            do
            {
              ++v6;
            }

            while ([*(v1[7].value + 40 * i) count] > v6);
            v7 = CMSimpleQueueDequeue(v4);
            if (v7)
            {
              CFRelease(v7);
            }

            j = CMSimpleQueueGetHead(v4);
          }

          result = [-[CMTime inputs](v1 "inputs")];
        }

        if (v2)
        {
          return [(BWMetadataSynchronizerNode *)v1 _printState];
        }
      }
    }
  }

  return result;
}

- (void)didReachEndOfDataForInput:(uint64_t)a1 .cold.1(uint64_t a1)
{
  [(BWMetadataSynchronizerNode *)a1 _tryToEmitImageBufferWithAllMetadata:?];
  [(BWMetadataSynchronizerNode *)a1 _purgeAllBuffers];
  result = [*(a1 + 16) liveFormat];
  if (result)
  {
    v3 = *(a1 + 16);

    return [v3 markEndOfLiveOutput];
  }

  return result;
}

@end