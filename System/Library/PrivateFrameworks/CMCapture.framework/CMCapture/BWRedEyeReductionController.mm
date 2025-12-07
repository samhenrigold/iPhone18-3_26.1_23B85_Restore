@interface BWRedEyeReductionController
+ (id)_newRedEyeRepairSessionWithMetalCommandQueue:(uint64_t)queue;
+ (void)initialize;
+ (void)prewarm;
- (BOOL)_receivedRequiredFramesForRequest:(uint64_t)request;
- (BWRedEyeReductionController)initWithConfiguration:(id)configuration;
- (id)_clearRequest:(id *)result;
- (id)_processRedEyeReductionWhenNecessaryForRequest:(int)request skipProcessing:;
- (id)_serviceRequests;
- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate;
- (uint64_t)_configureRedEyeReductionSessionWithConfiguration:(void *)configuration;
- (void)_propagateSensorInterfaceRawFromAuxImage:(uint64_t)image toPrimaryImage:(const void *)primaryImage;
- (void)_requestForInput:(uint64_t)input;
- (void)cancelProcessing;
- (void)dealloc;
- (void)didReceiveAllFramesForInput:(id)input;
- (void)didReceiveFrameForInput:(id)input;
@end

@implementation BWRedEyeReductionController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWRedEyeReductionController)initWithConfiguration:(id)configuration
{
  v7.receiver = self;
  v7.super_class = BWRedEyeReductionController;
  v4 = [(BWRedEyeReductionController *)&v7 init];
  v5 = v4;
  if (v4 && [(BWRedEyeReductionController *)v4 _configureRedEyeReductionSessionWithConfiguration:configuration])
  {

    return 0;
  }

  return v5;
}

+ (id)_newRedEyeRepairSessionWithMetalCommandQueue:(uint64_t)queue
{
  objc_opt_self();
  v3 = MEMORY[0x1E695F620];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:{*MEMORY[0x1E695F920], *MEMORY[0x1E695F870]}];
  v5 = *MEMORY[0x1E695F7F0];
  v12[0] = v4;
  v12[1] = MEMORY[0x1E695E110];
  v11[1] = v5;
  v11[2] = @"kCIContextIOSurfaceMemoryPoolID";
  v12[2] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{-[BWMemoryPool poolIdentifier](+[BWMemoryPool sharedMemoryPool](BWMemoryPool, "sharedMemoryPool"), "poolIdentifier")}];
  v6 = [v3 contextWithMTLCommandQueue:a2 options:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, v11, 3)}];
  if (v6)
  {
    v7 = v6;
    v8 = objc_alloc_init(MEMORY[0x1E695F640]);
    v9 = v8;
    if (v8)
    {
      [v8 setContext:v7];
    }

    else
    {
      +[BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:];
    }
  }

  else
  {
    +[BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:];
    return 0;
  }

  return v9;
}

- (void)dealloc
{
  outputFormatDescription = self->_outputFormatDescription;
  if (outputFormatDescription)
  {
    CFRelease(outputFormatDescription);
  }

  v4.receiver = self;
  v4.super_class = BWRedEyeReductionController;
  [(BWStillImageProcessorController *)&v4 dealloc];
}

- (int)enqueueInputForProcessing:(id)processing delegate:(id)delegate
{
  v7 = [[BWRedEyeReductionRequest alloc] initWithInput:processing delegate:delegate];
  [(BWRedEyeReductionRequest *)v7 setMode:0];
  [processing setInputDelegate:self];
  [processing setProcessorControllerDelegate:delegate];
  [(NSMutableArray *)self->_requestQueue addObject:v7];

  [(BWRedEyeReductionController *)&self->super.super.isa _serviceRequests];
  return 0;
}

- (void)cancelProcessing
{
  for (i = self->_requestQueue; [(NSMutableArray *)i count]; i = self->_requestQueue)
  {
    [(BWRedEyeReductionController *)&self->super.super.isa _processRedEyeReductionWhenNecessaryForRequest:1 skipProcessing:?];
  }
}

+ (void)prewarm
{
  metalDevice = [MEMORY[0x1E6991778] metalDevice];
  if (!metalDevice)
  {
    +[BWRedEyeReductionController prewarm];
LABEL_11:
    v5 = 0;
    v6 = 0;
    goto LABEL_6;
  }

  newCommandQueue = [metalDevice newCommandQueue];
  if (!newCommandQueue)
  {
    +[BWRedEyeReductionController prewarm];
    goto LABEL_11;
  }

  v6 = newCommandQueue;
  v4 = [BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:newCommandQueue];
  v5 = v4;
  if (v4)
  {
    if (([v4 prewarm] & 1) == 0)
    {
      +[BWRedEyeReductionController prewarm];
    }
  }

  else
  {
    +[BWRedEyeReductionController prewarm];
  }

LABEL_6:
}

- (void)didReceiveFrameForInput:(id)input
{
  v5 = [(BWRedEyeReductionController *)self _requestForInput:input, input, v3];
  if (self && v5 && v5 == [(NSMutableArray *)self->_requestQueue firstObject])
  {

    [(BWRedEyeReductionController *)&self->super.super.isa _serviceRequests];
  }
}

- (uint64_t)_configureRedEyeReductionSessionWithConfiguration:(void *)configuration
{
  if (!configuration)
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(objc_msgSend(a2, "sensorConfigurationsByPortType"), "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  sensorConfigurationsByPortType = [a2 sensorConfigurationsByPortType];
  v6 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v23 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(sensorConfigurationsByPortType);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ((objc_msgSend_isEqualToString_(v10) & 1) == 0)
        {
          [v4 setObject:objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(a2 forKeyedSubscript:{"sensorConfigurationsByPortType"), "objectForKeyedSubscript:", v10), "sensorIDDictionary"), "objectForKeyedSubscript:", @"RedEyeReductionParameters", v10}];
          if (![v4 objectForKeyedSubscript:v10])
          {
            v13 = 4294954516;
            goto LABEL_15;
          }
        }
      }

      v7 = [sensorConfigurationsByPortType countByEnumeratingWithState:&v23 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  configuration[8] = v4;
  v11 = +[BWRedEyeReductionController _newRedEyeRepairSessionWithMetalCommandQueue:](BWRedEyeReductionController, [a2 metalCommandQueue]);
  configuration[9] = v11;
  if (!v11)
  {
    OUTLINED_FUNCTION_2_25();
    v19 = 4294954510;
    v20 = 273;
LABEL_21:
    v13 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, v19, "<<<< BWRedEyeReductionController >>>>", v20, v16, v17, v18, v21);
    goto LABEL_15;
  }

  if (([v11 prepareRepair] & 1) == 0)
  {
    OUTLINED_FUNCTION_2_25();
    v19 = 4294954516;
    v20 = 276;
    goto LABEL_21;
  }

  v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
  configuration[11] = v12;
  if (!v12)
  {
    OUTLINED_FUNCTION_2_25();
    v19 = 4294954510;
    v20 = 279;
    goto LABEL_21;
  }

  v13 = 0;
LABEL_15:

  return v13;
}

- (id)_serviceRequests
{
  if (result)
  {
    v1 = result;
    result = [result[11] firstObject];
    if (result)
    {
      v2 = result;
      do
      {
        if (![objc_msgSend(v2 "input")])
        {
          result = [objc_msgSend(v2 "input")];
          if (!result)
          {
            break;
          }
        }

        v3 = OUTLINED_FUNCTION_3_19();
        [(BWRedEyeReductionController *)v3 _processRedEyeReductionWhenNecessaryForRequest:v4 skipProcessing:0];
        result = [v1[11] firstObject];
        v5 = result == v2;
        v2 = result;
      }

      while (!v5);
    }
  }

  return result;
}

- (id)_processRedEyeReductionWhenNecessaryForRequest:(int)request skipProcessing:
{
  if (result)
  {
    v6 = result;
    input = [a2 input];
    primaryImage = [input primaryImage];
    v9 = *off_1E798A3C8;
    v10 = CMGetAttachment(primaryImage, *off_1E798A3C8, 0);
    auxImage = [input auxImage];
    if (request)
    {
LABEL_26:
      v34 = 0;
LABEL_27:
      v35 = 1;
      goto LABEL_28;
    }

    v12 = auxImage;
    if (primaryImage && ![a2 mode])
    {
      v64 = v12;
      ImageBuffer = CMSampleBufferGetImageBuffer(primaryImage);
      v13 = [v10 objectForKeyedSubscript:*off_1E798B540];
      if (v13)
      {
        v14 = v13;
        v15 = [v10 objectForKeyedSubscript:*off_1E798A5B0];
        if (v15)
        {
          v60 = v15;
          v61 = v9;
          v16 = [v10 objectForKeyedSubscript:*off_1E798B510];
          if (v16)
          {
            v17 = v16;
            v59 = primaryImage;
            v18 = [objc_msgSend(input "captureSettings")];
            ModelSpecificName = FigCaptureGetModelSpecificName(v18, v19);
            if (ModelSpecificName)
            {
              v23 = ModelSpecificName;
              requestCopy = request;
              v58 = v10;
              v24 = [v6[8] objectForKeyedSubscript:v14];
              if (v24)
              {
                v67 = v14;
                v68 = v24;
                v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
              }

              else
              {
                v25 = 0;
              }

              faceObservations = [input faceObservations];
              v27 = MEMORY[0x1E695DF20];
              v28 = [MEMORY[0x1E696AD98] numberWithBool:(v18 >> 5) & 1];
              if ([v6[9] setPrimary:ImageBuffer observations:faceObservations metadata:{objc_msgSend(v27, "dictionaryWithObjectsAndKeys:", v28, *MEMORY[0x1E695F5F0], v60, *MEMORY[0x1E695F5D0], v14, *MEMORY[0x1E695F5E0], v17, *MEMORY[0x1E695F5D8], v23, *MEMORY[0x1E695F5C8], v25, *MEMORY[0x1E695F5E8], 0)}])
              {
                v29 = 2;
              }

              else
              {
                v29 = 1;
              }

              [a2 setMode:v29];
              v10 = v58;
              primaryImage = v59;
              v9 = v61;
              request = requestCopy;
              v12 = v64;
              if (dword_1EB58E000)
              {
                v66 = 0;
                v65 = 0;
                os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
                request = requestCopy;
                v12 = v64;
              }

              goto LABEL_17;
            }

            v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EB58DFF8, 0xFFFFCE14, "<<<< BWRedEyeReductionController >>>>", 0x1F0, v3, v21, v22, v56);
            v35 = 1;
            primaryImage = v59;
          }

          else
          {
            OUTLINED_FUNCTION_1_30();
            v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v52, 0xFFFFCE14, "<<<< BWRedEyeReductionController >>>>", 0x1EC, v53, v54, v55, v56);
            v35 = 1;
          }

          v9 = v61;
          goto LABEL_28;
        }

        OUTLINED_FUNCTION_1_30();
        v51 = 490;
      }

      else
      {
        OUTLINED_FUNCTION_1_30();
        v51 = 488;
      }

      v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v47, 0xFFFFCE14, "<<<< BWRedEyeReductionController >>>>", v51, v48, v49, v50, v56);
      goto LABEL_27;
    }

LABEL_17:
    v31 = OUTLINED_FUNCTION_3_19();
    if ([(BWRedEyeReductionController *)v31 _receivedRequiredFramesForRequest:v32])
    {
      mode = [a2 mode];
      if (mode == 1)
      {
        if ([input requiresSensorInterfaceRawPropagation])
        {
          [BWRedEyeReductionController _propagateSensorInterfaceRawFromAuxImage:v6 toPrimaryImage:v12];
        }
      }

      else if (mode == 2)
      {
        if ([input requiresSensorInterfaceRawPropagation])
        {
          [BWRedEyeReductionController _propagateSensorInterfaceRawFromAuxImage:v6 toPrimaryImage:v12];
        }

        if ([v6[9] repairPrimaryWithSecondary:CMSampleBufferGetImageBuffer(v12)])
        {
          v34 = 0;
          v35 = 3;
        }

        else
        {
          OUTLINED_FUNCTION_1_30();
          v34 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v43, 0xFFFFCE14, "<<<< BWRedEyeReductionController >>>>", 0x22D, v44, v45, v46, v56);
          v35 = 2;
        }

LABEL_28:
        v36 = OUTLINED_FUNCTION_3_19();
        if (![(BWRedEyeReductionController *)v36 _receivedRequiredFramesForRequest:v37]&& !v34 && !request)
        {
          result = [a2 mode];
          if (result == 2)
          {
            return [objc_msgSend(a2 "delegate")];
          }

          return result;
        }

        if (v34)
        {
          if (!primaryImage)
          {
            goto LABEL_40;
          }
        }

        else if (!primaryImage || (request & 1) == 0)
        {
LABEL_40:
          if (((primaryImage == 0) & request) != 0)
          {
            v38 = 4294954516;
          }

          else
          {
            v38 = v34;
          }

          v39 = 17;
          goto LABEL_44;
        }

        v38 = 0;
        v39 = 18;
LABEL_44:
        v40 = [v10 mutableCopy];
        [v40 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v35), *off_1E798A828}];
        CMSetAttachment(primaryImage, v9, v40, 1u);

        [objc_msgSend(a2 "delegate")];
        v41 = OUTLINED_FUNCTION_3_19();
        return [(BWRedEyeReductionController *)v41 _clearRequest:v42];
      }
    }

    goto LABEL_26;
  }

  return result;
}

- (void)_requestForInput:(uint64_t)input
{
  if (!self)
  {
    return 0;
  }

  if (!a2)
  {
    OUTLINED_FUNCTION_0();
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v16, v17, v18, v19, v20, v21, v22, v23);
    return 0;
  }

  v5 = *(self + 88);
  v6 = OUTLINED_FUNCTION_4_23(self, a2, input, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = MEMORY[0];
LABEL_5:
  v9 = 0;
  while (1)
  {
    if (MEMORY[0] != v8)
    {
      objc_enumerationMutation(v5);
    }

    v10 = *(8 * v9);
    input = [v10 input];
    if (input == a2)
    {
      return v10;
    }

    if (v7 == ++v9)
    {
      v7 = OUTLINED_FUNCTION_4_23(input, v12, v13, v14);
      if (v7)
      {
        goto LABEL_5;
      }

      return 0;
    }
  }
}

- (void)didReceiveAllFramesForInput:(id)input
{
  v6 = [(BWRedEyeReductionController *)self _requestForInput:input, input, v3];
  if (![input primaryImage] || !objc_msgSend(input, "auxImage") && objc_msgSend(v6, "mode") != 1)
  {
    [(BWRedEyeReductionController *)&self->super.super.isa _processRedEyeReductionWhenNecessaryForRequest:v6 skipProcessing:1];
  }

  processorControllerDelegate = [input processorControllerDelegate];

  [processorControllerDelegate processorController:self didFinishProcessingInput:input err:0];
}

- (id)_clearRequest:(id *)result
{
  if (result)
  {
    v3 = result;
    result = [result[11] containsObject:a2];
    if (result)
    {
      if (([objc_msgSend(objc_msgSend(objc_msgSend(a2 "input")] & 8) != 0 && objc_msgSend(a2, "mode") == 1)
      {
        [v3 didReceiveAllFramesForInput:{objc_msgSend(a2, "input")}];
      }

      v4 = v3[11];

      return [v4 removeObject:a2];
    }
  }

  return result;
}

- (BOOL)_receivedRequiredFramesForRequest:(uint64_t)request
{
  if (!request)
  {
    return 0;
  }

  input = [a2 input];
  mode = [a2 mode];
  if (mode != 2)
  {
    if (mode == 1)
    {
      if (![input requiresSensorInterfaceRawPropagation])
      {
        return 1;
      }
    }

    else if (mode)
    {
      return v5;
    }
  }

  return [input primaryImage] && objc_msgSend(input, "auxImage") != 0;
}

- (void)_propagateSensorInterfaceRawFromAuxImage:(uint64_t)image toPrimaryImage:(const void *)primaryImage
{
  if (image && BWSampleBufferGetAttachedMedia(primaryImage, 0x1F21AAAF0))
  {
    v2 = OUTLINED_FUNCTION_3_19();

    BWSampleBufferSetAttachedMedia(v2, v3, v4);
  }
}

@end