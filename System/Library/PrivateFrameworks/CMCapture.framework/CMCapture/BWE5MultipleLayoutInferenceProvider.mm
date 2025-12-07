@interface BWE5MultipleLayoutInferenceProvider
+ (void)initialize;
- (BOOL)_bindE5Port:(__CVBuffer *)port toPixelBuffer:;
- (BWE5MultipleLayoutInferenceProvider)initWithType:(int)type networkURL:(id)l networkConfigurationsByLayout:(id)layout defaultLayout:(unsigned int)defaultLayout executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons allowedCompressionDirection:(unsigned int)self0 updateMetadataWithCropRect:(BOOL)self1;
- (__CVBuffer)_createAndRotatedOnDemandPixelBufferWithPixelBuffer:(int)buffer rotationDegrees:;
- (id)bindEspressoInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count;
- (id)bindEspressoInput:(id)input fromMetadataUsingKeys:(id)keys;
- (id)bindEspressoOutput:(id)output asAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count;
- (id)bindEspressoOutput:(id)output asConsolidatedMetadataUsingKeys:(id)keys;
- (id)bindEspressoOutput:(id)output asMetadataUsingKey:(id)key;
- (id)bindEspressoOutput:(id)output asMetadataUsingKeys:(id)keys;
- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key;
- (id)newStorage;
- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler;
- (int)prewarmUsingLimitedMemory:(BOOL)memory;
- (int)prewarmUsingLimitedMemory:(BOOL)memory sharedE5ANEMemoryProvider:(id)provider;
- (int)reconcileWithPlaceholderProvider:(id)provider;
- (uint64_t)_anePriorityForSchedulerPriority:(uint64_t)result;
- (uint64_t)_applyRotationOnPixelBuffer:(__CVBuffer *)buffer dstPixelBuffer:(int)pixelBuffer rotationDegrees:;
- (uint64_t)_exifOrientationWithStorage:(uint64_t)result;
- (uint64_t)_prepareWithSharedANEMemoryProvider:(uint64_t)pixelRotationSessionOut;
- (void)dealloc;
- (void)setCustomInferenceIdentifier:(id)identifier;
- (void)setPropagatable:(id)propagatable;
@end

@implementation BWE5MultipleLayoutInferenceProvider

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWE5MultipleLayoutInferenceProvider)initWithType:(int)type networkURL:(id)l networkConfigurationsByLayout:(id)layout defaultLayout:(unsigned int)defaultLayout executionTarget:(int)target schedulerPriority:(unsigned int)priority preventionReasons:(id)reasons allowedCompressionDirection:(unsigned int)self0 updateMetadataWithCropRect:(BOOL)self1
{
  v11 = *&priority;
  v21.receiver = self;
  v21.super_class = BWE5MultipleLayoutInferenceProvider;
  v17 = [(BWE5MultipleLayoutInferenceProvider *)&v21 init];
  v18 = v17;
  if (v17)
  {
    v17->_type = type;
    v17->_executionTarget = target;
    v17->_networkURL = [l copy];
    v18->_networkConfigurationsByLayout = [layout copy];
    v18->_defaultLayout = defaultLayout;
    v18->_anePriority = [(BWE5MultipleLayoutInferenceProvider *)v18 _anePriorityForSchedulerPriority:v11];
    v18->_preventionReasons = [reasons copy];
    v18->_allowedCompressionDirection = 0;
    v18->_updateMetadataWithCropRect = rect;
    v18->_bindingNamesByRequirement = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18->_inputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18->_outputVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18->_cloneVideoRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18->_inputMetadataRequirements = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v18->_operationsByNetworkLayout[0] = 0;
    v18->_operationsByNetworkLayout[1] = 0;
    v18->_outputMetadataRequirements = v20;
    v18->_sharedResourceType = 1;
    objc_storeWeak(&v18->_sharedResourcePreparatory, v18);
  }

  return v18;
}

- (void)dealloc
{
  VTPixelRotationSessionInvalidate(self->_rotationSession);
  rotationSession = self->_rotationSession;
  if (rotationSession)
  {
    CFRelease(rotationSession);
  }

  e5rt_execution_stream_release();
  if (self->_operationsByNetworkLayout[0])
  {
    e5rt_execution_stream_operation_release();
    self->_operationsByNetworkLayout[0] = 0;
  }

  if (self->_operationsByNetworkLayout[1])
  {
    e5rt_execution_stream_operation_release();
    self->_operationsByNetworkLayout[1] = 0;
  }

  v4.receiver = self;
  v4.super_class = BWE5MultipleLayoutInferenceProvider;
  [(BWE5MultipleLayoutInferenceProvider *)&v4 dealloc];
}

- (id)newStorage
{
  array = [MEMORY[0x1E695DF70] array];
  [array addObjectsFromArray:self->_inputMetadataRequirements];
  [array addObjectsFromArray:self->_outputMetadataRequirements];
  v4 = [BWE5InferenceStorage alloc];
  bindingNamesByRequirement = self->_bindingNamesByRequirement;
  inputVideoRequirements = self->_inputVideoRequirements;
  outputVideoRequirements = self->_outputVideoRequirements;

  return [(BWE5InferenceStorage *)v4 initWithBindingNameByRequirement:bindingNamesByRequirement requirementsNeedingPixelBuffers:inputVideoRequirements requirementsNeedingPixelBufferPools:outputVideoRequirements requirementsNeedingTensors:array];
}

- (void)setPropagatable:(id)propagatable
{
  propagator = self->_propagator;
  if (propagator != propagatable)
  {

    self->_propagator = propagatable;
  }
}

- (void)setCustomInferenceIdentifier:(id)identifier
{
  customInferenceIdentifier = self->_customInferenceIdentifier;
  if (customInferenceIdentifier != identifier)
  {

    self->_customInferenceIdentifier = identifier;
  }
}

- (id)bindEspressoInput:(id)input fromAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count
{
  v8 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:key videoFormat:format count:count];
  [(NSMutableArray *)self->_inputVideoRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:input forKeyedSubscript:v8];

  return v8;
}

- (id)bindEspressoInput:(id)input fromMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_inputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:input forKeyedSubscript:v6];

  return v6;
}

- (id)bindEspressoOutput:(id)output asAttachedMediaUsingKey:(id)key withVideoFormat:(id)format count:(unint64_t)count
{
  v8 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:key videoFormat:format count:count];
  [(NSMutableArray *)self->_outputVideoRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v8];

  return v8;
}

- (id)bindOutputByCloningInputRequirement:(id)requirement toAttachedMediaUsingKey:(id)key
{
  v5 = [[BWInferenceCloneVideoRequirement alloc] initWithAttachedMediaKey:key sourceVideoRequirement:requirement];
  [(NSMutableArray *)self->_cloneVideoRequirements addObject:v5];

  return v5;
}

- (id)bindEspressoOutput:(id)output asMetadataUsingKey:(id)key
{
  v7 = [BWInferenceMetadataRequirement alloc];
  keyCopy = key;
  v8 = -[BWInferenceMetadataRequirement initWithMetadataKeys:mappingOption:](v7, "initWithMetadataKeys:mappingOption:", [MEMORY[0x1E695DEC8] arrayWithObjects:&keyCopy count:1], 1);
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v8];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v8];
  return v8;
}

- (id)bindEspressoOutput:(id)output asMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v6];

  return v6;
}

- (id)bindEspressoOutput:(id)output asConsolidatedMetadataUsingKeys:(id)keys
{
  v6 = [[BWInferenceMetadataRequirement alloc] initWithMetadataKeys:keys mappingOption:2];
  [(NSMutableArray *)self->_outputMetadataRequirements addObject:v6];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement setObject:output forKeyedSubscript:v6];

  return v6;
}

- (uint64_t)_anePriorityForSchedulerPriority:(uint64_t)result
{
  if (result)
  {
    MachThreadPriorityValue = FigThreadGetMachThreadPriorityValue();
    if (MachThreadPriorityValue >= FigThreadGetMachThreadPriorityValue())
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (BOOL)_bindE5Port:(__CVBuffer *)port toPixelBuffer:
{
  if (result)
  {
    result = 0;
    if (!e5rt_io_port_is_tensor())
    {
      CVPixelBufferGetIOSurface(port);
      if (!e5rt_surface_object_create_from_iosurface() && !e5rt_io_port_bind_surface_object() && !e5rt_surface_object_release())
      {
        return 1;
      }
    }
  }

  return result;
}

- (uint64_t)_prepareWithSharedANEMemoryProvider:(uint64_t)pixelRotationSessionOut
{
  if (!pixelRotationSessionOut)
  {
    return 0;
  }

  if (!*(pixelRotationSessionOut + 56))
  {
    *(pixelRotationSessionOut + 56) = [[BWInferenceSampleBufferPropagator alloc] initWithVideoRequirements:*(pixelRotationSessionOut + 96) cloneRequirements:*(pixelRotationSessionOut + 104) metadataRequirements:*(pixelRotationSessionOut + 120) updateMetadataWithCropRect:*(pixelRotationSessionOut + 72)];
  }

  if (!*(pixelRotationSessionOut + 152))
  {
    VTPixelRotationSessionCreate(*MEMORY[0x1E695E480], (pixelRotationSessionOut + 152));
    VTSessionSetProperty(*(pixelRotationSessionOut + 152), *MEMORY[0x1E6983D68], MEMORY[0x1E695E118]);
  }

  if (!*(pixelRotationSessionOut + 160))
  {
    if (*MEMORY[0x1E695FF58] == 1)
    {
      type = [pixelRotationSessionOut type];
      OUTLINED_FUNCTION_2_38(0x485u, v5, type);
    }

    BWInferenceTypeDescription(*(pixelRotationSessionOut + 184));
    mach_absolute_time();
    [*(pixelRotationSessionOut + 16) fileSystemRepresentation];
    [objc_msgSend(*(pixelRotationSessionOut + 24) objectForKeyedSubscript:{&unk_1F2243210), "UTF8String"}];
    if (e5rt_precompiled_compute_op_create_options_create() || ([objc_msgSend(*(pixelRotationSessionOut + 24) objectForKeyedSubscript:{&unk_1F2243228), "UTF8String"}], e5rt_precompiled_compute_op_create_options_create()))
    {
      v7 = 4294935594;
      goto LABEL_59;
    }

    [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"BWInference type %d_4_3", *(pixelRotationSessionOut + 184)), "UTF8String"];
    options_set_operation_name = e5rt_precompiled_compute_op_create_options_set_operation_name();
    if (!options_set_operation_name)
    {
      [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"BWInference type %d_3_4", *(pixelRotationSessionOut + 184)), "UTF8String"];
      options_set_operation_name = e5rt_precompiled_compute_op_create_options_set_operation_name();
      if (!options_set_operation_name)
      {
        if ([+[BWMemoryPool poolIdentifier] sharedMemoryPool]
        {
          if (e5rt_precompiled_compute_op_create_options_set_iosurface_memory_pool_id() || e5rt_precompiled_compute_op_create_options_set_iosurface_memory_pool_id())
          {
            v7 = 4294935586;
LABEL_59:
            v12 = 1;
            goto LABEL_49;
          }
        }

        else
        {
          OUTLINED_FUNCTION_6_24();
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, v17))
          {
            v9 = v18;
          }

          else
          {
            v9 = v18 & 0xFFFFFFFE;
          }

          if (v9)
          {
            OUTLINED_FUNCTION_5();
            _os_log_send_and_compose_impl();
          }

          OUTLINED_FUNCTION_8_20();
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v16 = 0;
        if (a2 && (v16 = [a2 fetchANEMemoryProviderForNetwork:{objc_msgSend(*(pixelRotationSessionOut + 16), "path")}]) != 0)
        {
          if (e5rt_precompiled_compute_op_create_options_set_custom_ane_memory_provider() || e5rt_precompiled_compute_op_create_options_set_custom_ane_memory_provider())
          {
            goto LABEL_58;
          }

          v10 = 1;
        }

        else
        {
          v10 = 0;
        }

        options_set_operation_name = e5rt_execution_stream_operation_create_resource_sharing_precompiled_compute_operations_with_multiple_options();
        if (!options_set_operation_name)
        {
          options_set_operation_name = e5rt_precompiled_compute_op_create_options_release();
          if (!options_set_operation_name)
          {
            options_set_operation_name = e5rt_precompiled_compute_op_create_options_release();
            if (!options_set_operation_name)
            {
              if (a2)
              {
                v11 = v10;
              }

              else
              {
                v11 = 1;
              }

              if (v11)
              {
LABEL_39:
                v12 = e5rt_execution_stream_create();
                v7 = 0;
                if (v12 || !dword_1EB58E5A0)
                {
                  goto LABEL_49;
                }

                OUTLINED_FUNCTION_6_24();
                v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                if (os_log_type_enabled(v13, v17))
                {
                  v14 = v18;
                }

                else
                {
                  v14 = v18 & 0xFFFFFFFE;
                }

                if (v14)
                {
                  mach_absolute_time();
                  FigHostTimeToNanoseconds();
                  OUTLINED_FUNCTION_5();
                  _os_log_send_and_compose_impl();
                }

                OUTLINED_FUNCTION_8_20();
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                goto LABEL_47;
              }

              if (!e5rt_ane_memory_provider_create())
              {
                if ([a2 registerANEMemoryProvider:v16 forNetwork:{objc_msgSend(*(pixelRotationSessionOut + 16), "path")}])
                {
                  e5rt_ane_memory_provider_release();
                }

                goto LABEL_39;
              }

LABEL_58:
              OUTLINED_FUNCTION_0();
              FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)");
              v7 = 0;
              goto LABEL_59;
            }
          }
        }
      }
    }

    v12 = options_set_operation_name;
    goto LABEL_48;
  }

LABEL_47:
  v12 = 0;
LABEL_48:
  v7 = 0;
LABEL_49:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    [pixelRotationSessionOut type];
    OUTLINED_FUNCTION_7_22(0x485u);
    kdebug_trace();
  }

  if (a2)
  {
    [a2 completeANEMemoryProviderCreationForNetwork:objc_msgSend(*(pixelRotationSessionOut + 16) wasSuccessful:{"path"), v12 == 0}];
  }

  if (v12)
  {
    e5rt_get_last_error_message();
    e5rt_execution_stream_release();
    return 4294935586;
  }

  return v7;
}

- (uint64_t)_applyRotationOnPixelBuffer:(__CVBuffer *)buffer dstPixelBuffer:(int)pixelBuffer rotationDegrees:
{
  if (!self)
  {
    return 0;
  }

  v7 = *(self + 152);
  v8 = *MEMORY[0x1E6983D98];
  v9 = FigCaptureVTRotationFromDegrees(pixelBuffer);
  VTSessionSetProperty(v7, v8, v9);
  v10 = VTPixelRotationSessionRotateImage(*(self + 152), a2, buffer);
  if (v10)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v12, v13, v14, v15, v16, v17, v18, v19);
  }

  return v10;
}

- (__CVBuffer)_createAndRotatedOnDemandPixelBufferWithPixelBuffer:(int)buffer rotationDegrees:
{
  if (!self)
  {
    return 0;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (buffer != 180 && buffer)
  {
    v8 = __ROR8__(Width | (Height << 32), 32);
  }

  else
  {
    v8 = Width | (Height << 32);
  }

  v9 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:v8 pixelFormat:CVPixelBufferGetPixelFormatType(pixelBuffer) name:@"OnDemandRotatedPixelBufferForE5MultipleLayoutInferenceProvider" memoryPool:+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool")), "newPixelBuffer"];
  [(BWE5MultipleLayoutInferenceProvider *)self _applyRotationOnPixelBuffer:v9 dstPixelBuffer:buffer rotationDegrees:?];
  return v9;
}

- (uint64_t)_exifOrientationWithStorage:(uint64_t)result
{
  if (result)
  {
    v3 = [objc_msgSend(a2 "inputSampleBufferAttachments")];
    if (!v3)
    {
      v3 = [objc_msgSend(objc_msgSend(a2 "inputSampleBufferAttachments")];
    }

    v4 = 0;
    return FigCaptureRotationDegreesAndMirroringFromExifOrientation([v3 intValue], &v4);
  }

  return result;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory sharedE5ANEMemoryProvider:(id)provider
{
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    OUTLINED_FUNCTION_2_38(0x495u, a2, memory);
  }

  v7 = [(BWE5MultipleLayoutInferenceProvider *)self _prepareWithSharedANEMemoryProvider:provider];
  if (*v6 == 1)
  {
    kdebug_trace();
  }

  return v7;
}

- (int)prewarmUsingLimitedMemory:(BOOL)memory
{
  if ([(BWE5MultipleLayoutInferenceProvider *)self prewarmingSharedResourceType]== 1)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    BWInferenceTypeDescription([(BWE5MultipleLayoutInferenceProvider *)self type]);
    v5 = _os_log_send_and_compose_impl();
    FigCapturePleaseFileRadar(11, v5, 0, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Inference/Espresso/E5/BWE5MultipleLayoutInferenceProvider.m", 448, @"LastShownDate:BWE5MultipleLayoutInferenceProvider.m:448", @"LastShownBuild:BWE5MultipleLayoutInferenceProvider.m:448", 0);
    free(v5);
  }

  return [(BWE5MultipleLayoutInferenceProvider *)self _prepareWithSharedANEMemoryProvider:?];
}

- (int)reconcileWithPlaceholderProvider:(id)provider
{
  type = self->_type;
  if (type != [provider type])
  {
    return -31783;
  }

  [provider customInferenceIdentifier];
  v6 = OUTLINED_FUNCTION_8();
  if (!objc_msgSend_isEqualToString_(v6))
  {
    return -31783;
  }

  [(NSMutableArray *)self->_inputVideoRequirements removeAllObjects];
  [provider inputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_inputMetadataRequirements removeAllObjects];
  [provider inputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputVideoRequirements removeAllObjects];
  [provider outputVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_outputMetadataRequirements removeAllObjects];
  [provider outputMetadataRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableArray *)self->_cloneVideoRequirements removeAllObjects];
  [provider cloneVideoRequirements];
  [OUTLINED_FUNCTION_8() addObjectsFromArray:?];
  [(NSMutableDictionary *)self->_bindingNamesByRequirement removeAllObjects];
  if (provider)
  {
    v7 = *(provider + 10);
  }

  else
  {
    v7 = 0;
  }

  [(NSMutableDictionary *)self->_bindingNamesByRequirement addEntriesFromDictionary:v7];
  -[BWE5MultipleLayoutInferenceProvider setPropagatable:](self, "setPropagatable:", [provider propagatable]);
  return 0;
}

- (int)executeOnSampleBuffer:(opaqueCMSampleBuffer *)buffer usingStorage:(id)storage withExecutionTime:(id *)time completionHandler:(id)handler
{
  selfCopy = self;
  v10 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    v11 = [(BWE5MultipleLayoutInferenceProvider *)self type:buffer];
    OUTLINED_FUNCTION_2_38(0x48Du, v12, v11);
  }

  v13 = [(BWE5MultipleLayoutInferenceProvider *)selfCopy _exifOrientationWithStorage:storage];
  v110 = selfCopy;
  if ([(NSMutableArray *)selfCopy->_inputVideoRequirements count]!= 1 || [(NSMutableArray *)selfCopy->_outputVideoRequirements count]!= 1 || [(NSMutableArray *)selfCopy->_outputMetadataRequirements count])
  {
    v91 = 0;
    v79 = 0;
    v21 = 0;
    v16 = 0;
    v35 = 0;
    goto LABEL_62;
  }

  handlerCopy = handler;
  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  obj = selfCopy->_inputVideoRequirements;
  v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v216 objects:v215 count:16];
  v107 = v13;
  if (!v14)
  {
    v16 = 0;
    v21 = 0;
    goto LABEL_24;
  }

  v15 = v14;
  v100 = v6;
  v16 = 0;
  v17 = *v217;
  do
  {
    v18 = 0;
    do
    {
      if (*v217 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v216 + 1) + 8 * v18);
      v20 = [OUTLINED_FUNCTION_4_31() pixelBufferForRequirement:?];
      v21 = v20;
      if (!v20)
      {
LABEL_45:
        v91 = 0;
        v79 = 0;
        v35 = 4294935584;
        selfCopy = v110;
        goto LABEL_61;
      }

      v16 = v20;
      if (v13)
      {
        v16 = [(BWE5MultipleLayoutInferenceProvider *)v110 _createAndRotatedOnDemandPixelBufferWithPixelBuffer:v20 rotationDegrees:v13];
        if (!v16)
        {
          OUTLINED_FUNCTION_0();
          FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v81, v84, handlerCopy, v90, v94, v97, v6, obj);
          v79 = 0;
          v80 = 0;
          goto LABEL_42;
        }
      }

      CVPixelBufferGetWidth(v16);
      CVPixelBufferGetHeight(v16);
      v22 = [OUTLINED_FUNCTION_4_31() bindingNameForRequirement:?];
      if (!v22)
      {
        goto LABEL_45;
      }

      v214 = 0;
      [v22 UTF8String];
      if (e5rt_execution_stream_operation_retain_input_port())
      {
LABEL_46:
        e5rt_get_last_error_message();
        v91 = 0;
        v36 = 0;
        v79 = 0;
        if (v19)
        {
          goto LABEL_47;
        }

        goto LABEL_55;
      }

      if (![(BWE5MultipleLayoutInferenceProvider *)v110 _bindE5Port:v214 toPixelBuffer:v16])
      {
        v79 = 0;
        v80 = 0;
        selfCopy = v110;
        v13 = v107;
LABEL_49:
        v91 = v80;
        if (selfCopy->_executionTarget == 3 && e5rt_execution_stream_set_ane_execution_priority() || e5rt_execution_stream_encode_operation() || e5rt_execution_stream_execute_sync() || (!v13 || ![(BWE5MultipleLayoutInferenceProvider *)selfCopy _applyRotationOnPixelBuffer:v79 dstPixelBuffer:v80 rotationDegrees:360 - v13]) && e5rt_execution_stream_reset())
        {
          goto LABEL_55;
        }

        v35 = 0;
LABEL_61:
        handler = handlerCopy;
        v10 = MEMORY[0x1E695FF58];
        goto LABEL_62;
      }

      if (e5rt_io_port_release())
      {
        goto LABEL_46;
      }

      ++v18;
      v13 = v107;
    }

    while (v15 != v18);
    v23 = [(NSMutableArray *)obj countByEnumeratingWithState:&v216 objects:v215 count:16];
    v15 = v23;
  }

  while (v23);
LABEL_24:
  v212 = 0u;
  v213 = 0u;
  v210 = 0u;
  v211 = 0u;
  selfCopy = v110;
  v94 = *(v110 + 96);
  obja = [v94 countByEnumeratingWithState:&v210 objects:v209 count:16];
  v79 = 0;
  v80 = 0;
  if (!obja)
  {
    goto LABEL_49;
  }

  v97 = (v110 + 128);
  v100 = *v211;
LABEL_26:
  v24 = 0;
  while (2)
  {
    if (*v211 != v100)
    {
      objc_enumerationMutation(v94);
    }

    v25 = *(*(&v210 + 1) + 8 * v24);
    v26 = [OUTLINED_FUNCTION_4_31() bindingNameForRequirement:?];
    if (!v26)
    {
      v91 = v80;
      goto LABEL_44;
    }

    v27 = v26;
    v80 = [OUTLINED_FUNCTION_4_31() pixelBufferForRequirement:?];
    if (!v80)
    {
      v80 = [objc_msgSend(OUTLINED_FUNCTION_4_31() "pixelBufferPoolForRequirement:"newPixelBuffer"")];
      [storage setPixelBuffer:v80 forRequirement:v25];
      if (v80)
      {
        CFRelease(v80);
        goto LABEL_33;
      }

      v91 = 0;
LABEL_44:
      v35 = 4294935579;
      goto LABEL_56;
    }

LABEL_33:
    v214 = 0;
    [v27 UTF8String];
    if (!e5rt_execution_stream_operation_retain_output_port())
    {
      v79 = v80;
      v13 = v107;
      if (v107)
      {
        Width = CVPixelBufferGetWidth(v80);
        v29 = Width | (CVPixelBufferGetHeight(v80) << 32);
        v30 = __ROR8__(v29, 32);
        if (v107 != 180)
        {
          v29 = v30;
        }

        v31 = v80;
        PixelFormatType = CVPixelBufferGetPixelFormatType(v80);
        v33 = +[BWMemoryPool sharedMemoryPool];
        v13 = v107;
        v34 = PixelFormatType;
        v80 = v31;
        v79 = [+[BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:pixelFormat:name:memoryPool:](BWOnDemandPixelBufferAllocator onDemandAllocatorWithDimensions:v29 pixelFormat:v34 name:@"outputPixelBuffer" memoryPool:v33), "newPixelBuffer"];
      }

      if (![(BWE5MultipleLayoutInferenceProvider *)v110 _bindE5Port:v214 toPixelBuffer:v79])
      {
        goto LABEL_42;
      }

      if (!e5rt_io_port_release())
      {
        if (obja != ++v24)
        {
          continue;
        }

        obja = [v94 countByEnumeratingWithState:&v210 objects:v209 count:16];
        if (obja)
        {
          goto LABEL_26;
        }

LABEL_42:
        selfCopy = v110;
        goto LABEL_49;
      }
    }

    break;
  }

  v91 = v80;
  e5rt_get_last_error_message();
  v36 = v79;
  if (!v25)
  {
    goto LABEL_55;
  }

LABEL_47:
  [OUTLINED_FUNCTION_4_31() bindingNameForRequirement:?];
  v79 = v36;
LABEL_55:
  e5rt_get_last_error_message();
  v35 = 4294935586;
LABEL_56:
  handler = handlerCopy;
  v10 = MEMORY[0x1E695FF58];
  selfCopy = v110;
LABEL_62:
  if (*v10 == 1)
  {
    [(BWE5MultipleLayoutInferenceProvider *)selfCopy type];
    OUTLINED_FUNCTION_7_22(0x48Du);
    kdebug_trace();
  }

  v37 = (*(handler + 2))(handler, v35, selfCopy);
  inputVideoRequirements = selfCopy->_inputVideoRequirements;
  v46 = OUTLINED_FUNCTION_10_15(v37, v39, v40, v41, v42, v43, v44, v45, v81, v84, handlerCopy, v91, v94, v97, v100, v35, v79, v110, v113, v116, v119, v122, v125, v128, v131, v134, v137, v140, v143, v146, v149, v152, v155, v158, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207);
  if (v46)
  {
    v54 = v46;
    v55 = MEMORY[0];
    do
    {
      v56 = 0;
      do
      {
        if (MEMORY[0] != v55)
        {
          objc_enumerationMutation(inputVideoRequirements);
        }

        [objc_msgSend(storage bindingNameForRequirement:{*(8 * v56)), "UTF8String"}];
        e5rt_execution_stream_operation_retain_input_port();
        e5rt_io_port_bind_surface_object();
        v57 = e5rt_io_port_release();
        ++v56;
      }

      while (v54 != v56);
      v46 = OUTLINED_FUNCTION_10_15(v57, v58, v59, v60, v61, v62, v63, v64, v82, v85, v88, v92, v95, v98, v101, objb, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208);
      v54 = v46;
    }

    while (v46);
  }

  v65 = *(v111 + 96);
  v66 = OUTLINED_FUNCTION_9_15(v46, v47, v48, v49, v50, v51, v52, v53, v82, v85, v88, v92, v95, v98, v101, objb, v108, v111, v114, v117, v120, v123, v126, v129, v132, v135, v138, v141, v144, v147, v150, v153, v156, v159);
  if (v66)
  {
    v67 = v66;
    v68 = MEMORY[0];
    do
    {
      for (i = 0; i != v67; ++i)
      {
        if (MEMORY[0] != v68)
        {
          objc_enumerationMutation(v65);
        }

        [objc_msgSend(storage bindingNameForRequirement:{*(8 * i)), "UTF8String"}];
        e5rt_execution_stream_operation_retain_output_port();
        e5rt_io_port_bind_surface_object();
        v70 = e5rt_io_port_release();
      }

      v67 = OUTLINED_FUNCTION_9_15(v70, v71, v72, v73, v74, v75, v76, v77, v83, v86, v89, v93, v96, v99, v102, objc, v109, v112, v115, v118, v121, v124, v127, v130, v133, v136, v139, v142, v145, v148, v151, v154, v157, v160);
    }

    while (v67);
  }

  if (v16 != v21 && v16)
  {
    CFRelease(v16);
  }

  if (v109 != v93 && v109)
  {
    CFRelease(v109);
  }

  return objc;
}

@end