@interface _ANEProgramForEvaluation
+ (id)programWithController:(id)controller intermediateBufferHandle:(unint64_t)handle queueDepth:(char)depth;
+ (id)programWithHandle:(unint64_t)handle intermediateBufferHandle:(unint64_t)bufferHandle queueDepth:(char)depth;
- (BOOL)processInputBuffers:(id)buffers model:(id)model options:(id)options error:(id *)error;
- (BOOL)processOutputSet:(id)set model:(id)model options:(id)options error:(id *)error;
- (BOOL)processRequest:(id)request model:(id)model qos:(unsigned int)qos qIndex:(unint64_t)index modelStringID:(unint64_t)d options:(id)options returnValue:(unsigned int *)value error:(id *)self0;
- (BOOL)processSessionHint:(id)hint options:(id)options report:(id)report error:(id *)error;
- (_ANEProgramForEvaluation)initWithController:(id)controller intermediateBufferHandle:(unint64_t)handle queueDepth:(char)depth;
- (id)description;
- (id)programInferenceOtherErrorForMessage:(ANENotificationMessageStruct *)message model:(id)model methodName:(id)name;
- (void)dealloc;
@end

@implementation _ANEProgramForEvaluation

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { programHandle=%llu : intermediateBufferHandle=%llu : queueDepth=%d }", v5, -[_ANEProgramForEvaluation programHandle](self, "programHandle"), -[_ANEProgramForEvaluation intermediateBufferHandle](self, "intermediateBufferHandle"), -[_ANEProgramForEvaluation queueDepth](self, "queueDepth")];

  return v6;
}

- (void)dealloc
{
  [(_ANEDeviceController *)self->_controller stop];
  controller = self->_controller;
  self->_controller = 0;

  v4.receiver = self;
  v4.super_class = _ANEProgramForEvaluation;
  [(_ANEProgramForEvaluation *)&v4 dealloc];
}

+ (id)programWithHandle:(unint64_t)handle intermediateBufferHandle:(unint64_t)bufferHandle queueDepth:(char)depth
{
  depthCopy = depth;
  v8 = [_ANEDeviceController controllerWithProgramHandle:handle];
  v9 = [[self alloc] initWithController:v8 intermediateBufferHandle:bufferHandle queueDepth:depthCopy];

  return v9;
}

+ (id)programWithController:(id)controller intermediateBufferHandle:(unint64_t)handle queueDepth:(char)depth
{
  depthCopy = depth;
  controllerCopy = controller;
  v9 = [[self alloc] initWithController:controllerCopy intermediateBufferHandle:handle queueDepth:depthCopy];

  return v9;
}

- (_ANEProgramForEvaluation)initWithController:(id)controller intermediateBufferHandle:(unint64_t)handle queueDepth:(char)depth
{
  depthCopy = depth;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = _ANEProgramForEvaluation;
  v10 = [(_ANEProgramForEvaluation *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_controller, controller);
    v11->_programHandle = [controllerCopy programHandle];
    v11->_intermediateBufferHandle = handle;
    v11->_queueDepth = depthCopy;
    v12 = dispatch_semaphore_create(depthCopy);
    requestsInFlight = v11->_requestsInFlight;
    v11->_requestsInFlight = v12;

    v11->_currentAsyncRequestsInFlight = 0;
    [(_ANEDeviceController *)v11->_controller start];
  }

  return v11;
}

- (id)programInferenceOtherErrorForMessage:(ANENotificationMessageStruct *)message model:(id)model methodName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  nameCopy = name;
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: ANEProgramProcessRequestDirect() Failed with status=0x%x : statusType=0x%x", nameCopy, message->var1, message->var0];
  v10 = +[_ANELog common];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    var0 = message->var0;
    var1 = message->var1;
    *buf = 138413058;
    v19 = nameCopy;
    v20 = 1024;
    v21 = var1;
    v22 = 1024;
    v23 = var0;
    v24 = 2112;
    v25 = modelCopy;
    _os_log_error_impl(&dword_1AD246000, v10, OS_LOG_TYPE_ERROR, "%@: ANEProgramProcessRequestDirect() Failed with status=0x%x : statusType=0x%x lModel=%@", buf, 0x22u);
  }

  v11 = message->var1;
  if (v11 == 14)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program not found", v9];
    v13 = [_ANEErrors programInferenceProgramNotFoundForMethod:v12];
    goto LABEL_7;
  }

  if (v11 == 15)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: Program Inference timeout", v9];
    v13 = [_ANEErrors timeoutErrorForMethod:v12];
LABEL_7:
    v14 = v13;

    goto LABEL_9;
  }

  v14 = [_ANEErrors programInferenceOtherErrorForMethod:v9];
LABEL_9:

  return v14;
}

- (BOOL)processRequest:(id)request model:(id)model qos:(unsigned int)qos qIndex:(unint64_t)index modelStringID:(unint64_t)d options:(id)options returnValue:(unsigned int *)value error:(id *)self0
{
  v10 = MEMORY[0x1EEE9AC00](self, a2, request, model, *&qos, index, d, options);
  v12 = v11;
  v130 = v13;
  v15 = v14;
  v133 = v16;
  v18 = v17;
  aSelector = v19;
  v135 = v10;
  v201 = *MEMORY[0x1E69E9840];
  v21 = v20;
  v132 = v18;
  v136 = v12;
  v127 = mach_continuous_time();
  v22 = +[_ANELog common];
  spid = os_signpost_id_generate(v22);

  v167 = 0;
  v168 = &v167;
  v169 = 0x3032000000;
  v170 = __Block_byref_object_copy_;
  v171 = __Block_byref_object_dispose_;
  v172 = 0;
  v163 = 0;
  v164 = &v163;
  v165 = 0x2020000000;
  v166 = 1;
  context = objc_autoreleasePoolPush();
  v137 = v132;
  validate = [v21 validate];
  *(v164 + 24) = validate;
  if ((validate & 1) == 0)
  {
LABEL_12:
    LODWORD(v31) = 0;
    goto LABEL_85;
  }

  v24 = dispatch_time(0, 10000000000);
  completionHandler = [v21 completionHandler];
  if (completionHandler)
  {
    v129 = 0;
  }

  else
  {
    sharedEvents = [v21 sharedEvents];
    v129 = sharedEvents == 0;
  }

  v27 = +[_ANELog common];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    v114 = NSStringFromSelector(aSelector);
    string_id = [v137 string_id];
    unsignedIntegerValue = 138412802;
    v184 = v114;
    v185 = 2048;
    *v186 = string_id;
    *&v186[8] = 1024;
    *&v186[10] = v129;
    _os_log_debug_impl(&dword_1AD246000, v27, OS_LOG_TYPE_DEBUG, "%@ ANEProgramProcessRequestDirect() for lModel.string_id:0x%08llx waitForResults is %d", &unsignedIntegerValue, 0x1Cu);
  }

  if (!v129)
  {
    requestsInFlight = [v135 requestsInFlight];
    v29 = dispatch_semaphore_wait(requestsInFlight, v24) == 0;

    if (!v29)
    {
      v30 = +[_ANELog common];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v118 = NSStringFromSelector(aSelector);
        queueDepth = [v135 queueDepth];
        currentAsyncRequestsInFlight = [v135 currentAsyncRequestsInFlight];
        unsignedIntegerValue = 138413314;
        v184 = v118;
        v185 = 1024;
        *v186 = 15;
        *&v186[4] = 2048;
        *&v186[6] = queueDepth;
        v187 = 2048;
        v188 = currentAsyncRequestsInFlight;
        v189 = 2112;
        v190 = v137;
        _os_log_error_impl(&dword_1AD246000, v30, OS_LOG_TYPE_ERROR, "%@: Async Request could not be queued - timed out ret=0x%xself.queueDepth=%ld : self.currentAsyncRequestsInFlight=%ld lModel=%@", &unsignedIntegerValue, 0x30u);
      }

      goto LABEL_12;
    }

    [v135 setCurrentAsyncRequestsInFlight:{objc_msgSend(v135, "currentAsyncRequestsInFlight") + 1}];
  }

  bzero(&unsignedIntegerValue, 0x3030uLL);
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v32 = [v136 objectForKeyedSubscript:kANEFPerformanceStatsMaskKey[0]];
  v126 = v32;
  if (v32)
  {
    if (([v32 unsignedIntValue] & 4) != 0)
    {
      v157 = 0u;
      v158 = 0u;
      v155 = 0u;
      v156 = 0u;
      perfStatsArray = [v21 perfStatsArray];
      v34 = [perfStatsArray countByEnumeratingWithState:&v155 objects:v182 count:16];
      if (v34)
      {
        v35 = *v156;
        do
        {
          for (i = 0; i != v34; ++i)
          {
            if (*v156 != v35)
            {
              objc_enumerationMutation(perfStatsArray);
            }

            v37 = *(*(&v155 + 1) + 8 * i);
            if ([v37 statType] == 2)
            {
              stats = [v37 stats];
              ioSurface = [stats ioSurface];
            }
          }

          v34 = [perfStatsArray countByEnumeratingWithState:&v155 objects:v182 count:16];
        }

        while (v34);
      }
    }

    LODWORD(v32) = +[_ANEPerformanceStats driverMaskForANEFMask:](_ANEPerformanceStats, "driverMaskForANEFMask:", [v126 unsignedIntValue]);
  }

  v200 = v32;
  *(v160 + 6) = v32;
  inputArray = [v21 inputArray];
  LODWORD(v184) = [inputArray count];

  for (j = 0; ; ++j)
  {
    inputArray2 = [v21 inputArray];
    v42 = [inputArray2 count] > j;

    if (!v42)
    {
      break;
    }

    inputArray3 = [v21 inputArray];
    v44 = [inputArray3 objectAtIndexedSubscript:j];
    v45 = &v184 + 24 * j + 4;
    *v45 = [v44 ioSurface];

    inputIndexArray = [v21 inputIndexArray];
    v47 = [inputIndexArray objectAtIndexedSubscript:j];
    *(v45 + 2) = [v47 unsignedIntegerValue];

    inputArray4 = [v21 inputArray];
    v49 = [inputArray4 objectAtIndexedSubscript:j];
    startOffset = [v49 startOffset];
    *(v45 + 5) = [startOffset unsignedIntegerValue];
  }

  outputArray = [v21 outputArray];
  v191 = [outputArray count];

  for (k = 0; ; ++k)
  {
    outputArray2 = [v21 outputArray];
    v54 = [outputArray2 count] > k;

    if (!v54)
    {
      break;
    }

    outputArray3 = [v21 outputArray];
    v56 = [outputArray3 objectAtIndexedSubscript:k];
    v57 = &v192[3 * k];
    *v57 = [v56 ioSurface];

    outputIndexArray = [v21 outputIndexArray];
    v59 = [outputIndexArray objectAtIndexedSubscript:k];
    *(v57 + 2) = [v59 unsignedIntegerValue];

    outputArray4 = [v21 outputArray];
    v61 = [outputArray4 objectAtIndexedSubscript:k];
    startOffset2 = [v61 startOffset];
    *(v57 + 5) = [startOffset2 unsignedIntegerValue];
  }

  weightsBuffer = [v21 weightsBuffer];
  v64 = weightsBuffer == 0;

  if (!v64)
  {
    weightsBuffer2 = [v21 weightsBuffer];
    ioSurface2 = [weightsBuffer2 ioSurface];
  }

  procedureIndex = [v21 procedureIndex];
  unsignedIntegerValue = [procedureIndex unsignedIntegerValue];

  v192[769] = [v135 programHandle];
  v193 = v15;
  v195 = v133;
  v194 = 0;
  v67 = [v136 objectForKeyedSubscript:kANEFDisableIOFencesUseSharedEventsKey[0]];
  v124 = v67;
  if (v67)
  {
    bOOLValue = [v67 BOOLValue];
    v68 = +[_ANELog common];
    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [v124 BOOLValue];
      [_ANEProgramForEvaluation processRequest:model:qos:qIndex:modelStringID:options:returnValue:error:];
    }
  }

  else
  {
    bOOLValue = 0;
  }

  v69 = [v136 objectForKeyedSubscript:kANEFEnableFWToFWSignal[0]];
  v125 = v69;
  if (v69)
  {
    bOOLValue2 = [v69 BOOLValue];
    v70 = +[_ANELog common];
    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [v125 BOOLValue];
      [_ANEProgramForEvaluation processRequest:model:qos:qIndex:modelStringID:options:returnValue:error:];
    }
  }

  else
  {
    bOOLValue2 = 0;
  }

  for (m = 2; m != 514; m += 8)
  {
    *&v152[m] = 0;
  }

  do
  {
    *&v152[m] = 0;
    m += 8;
  }

  while (m != 1026);
  sharedEvents2 = [v21 sharedEvents];
  v73 = sharedEvents2 == 0;

  if (v73)
  {
    v95 = 0;
  }

  else
  {
    bzero(v152, 0x1008uLL);
    sharedEvents3 = [v21 sharedEvents];
    signalEvents = [sharedEvents3 signalEvents];
    v76 = [signalEvents count];
    v152[1] = v76;
    if (v76)
    {
      v77 = 0;
      v78 = &v154;
      v79 = v76;
      v122 = 134218240;
      do
      {
        v80 = [signalEvents objectAtIndexedSubscript:{v77, v122}];
        sharedEvent = [v80 sharedEvent];
        v82 = *v78;
        *v78 = sharedEvent;

        v78[1] = [v80 value];
        eventType = [v80 eventType];
        if (eventType >= 6)
        {
          v84 = +[_ANELog common];
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            *v179 = v122;
            *&v179[4] = eventType;
            *&v179[12] = 2048;
            *&v179[14] = 0;
            _os_log_error_impl(&dword_1AD246000, v84, OS_LOG_TYPE_ERROR, "Unknown _ANESignalEventType=%lu using (%lu)", v179, 0x16u);
          }

          LODWORD(eventType) = 0;
        }

        *(v78 + 4) = eventType;
        *(v78 + 5) = [v80 symbolIndex];
        v78[3] = [v80 agentMask];

        ++v77;
        v78 += 4;
      }

      while (v79 != v77);
    }

    waitEvents = [sharedEvents3 waitEvents];
    v86 = [waitEvents count];
    v152[0] = v86;
    if (v86)
    {
      v87 = 0;
      v88 = v86;
      v89 = &v153;
      v123 = 134218240;
      do
      {
        v90 = [waitEvents objectAtIndexedSubscript:{v87, v123}];
        sharedEvent2 = [v90 sharedEvent];
        v92 = *(v89 - 1);
        *(v89 - 1) = sharedEvent2;

        *v89 = [v90 value];
        eventType2 = [v90 eventType];
        if (eventType2 >= 3)
        {
          v94 = +[_ANELog common];
          if (os_log_type_enabled(v94, OS_LOG_TYPE_ERROR))
          {
            *v179 = v123;
            *&v179[4] = eventType2;
            *&v179[12] = 2048;
            *&v179[14] = 0;
            _os_log_error_impl(&dword_1AD246000, v94, OS_LOG_TYPE_ERROR, "Unknown _ANEWaitEventType=%lu using (%lu)", v179, 0x16u);
          }

          LODWORD(eventType2) = 0;
        }

        *(v89 + 2) = eventType2;

        ++v87;
        v89 += 4;
      }

      while (v88 != v87);
    }

    v95 = v152;
  }

  completionHandler2 = [v21 completionHandler];
  *(v164 + 24) = 1;
  v121 = completionHandler2;
  kdebug_trace();
  v97 = +[_ANELog common];
  v98 = v97;
  if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v97))
  {
    v99 = MEMORY[0x1B26F37D0](v121);
    *v179 = 67109888;
    *&v179[4] = v133;
    *&v179[8] = 2048;
    *&v179[10] = v21;
    *&v179[18] = 2048;
    *&v179[20] = v130;
    v180 = 2048;
    v181 = v99;
    _os_signpost_emit_with_name_impl(&dword_1AD246000, v98, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_EVAL_DRIVER_REQUEST", "qos:%u r:%p modelStringID:%llu completion:%p", v179, 0x26u);
  }

  *v179 = 0;
  *&v179[8] = v179;
  *&v179[16] = 0x2020000000;
  v179[24] = 0;
  controller = [v135 controller];
  device = [controller device];
  v138[0] = MEMORY[0x1E69E9820];
  v138[1] = 3221225472;
  v138[2] = __100___ANEProgramForEvaluation_processRequest_model_qos_qIndex_modelStringID_options_returnValue_error___block_invoke;
  v138[3] = &unk_1E79BA178;
  v147 = aSelector;
  v150 = v133;
  v143 = &v163;
  v144 = &v167;
  v102 = v137;
  v139 = v102;
  v140 = v135;
  v145 = &v159;
  v141 = v21;
  v148 = v130;
  v103 = v121;
  v149 = spid;
  v151 = v129;
  v142 = v103;
  v146 = v179;
  transactionHandle = [v141 transactionHandle];
  unsignedIntegerValue2 = [transactionHandle unsignedIntegerValue];
  transactionHandle2 = [v141 transactionHandle];
  v107 = v138;
  if (device && *device)
  {
    v108 = (*(*device + 32))(device, &unsignedIntegerValue, v107, v95, v129, unsignedIntegerValue2, transactionHandle2 != 0);
  }

  else
  {
    v108 = 2;
  }

  *value = v108;
  if (*value)
  {
    if ((*(*&v179[8] + 24) & 1) == 0)
    {
      requestsInFlight2 = [v135 requestsInFlight];
      dispatch_semaphore_signal(requestsInFlight2);

      [v135 setCurrentAsyncRequestsInFlight:{objc_msgSend(v135, "currentAsyncRequestsInFlight") - 1}];
    }

    v110 = +[_ANELog common];
    if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
    {
      v116 = NSStringFromSelector(aSelector);
      v117 = *value;
      v173 = 138412802;
      v174 = v116;
      v175 = 1024;
      v176 = v117;
      v177 = 2112;
      v178 = v102;
      _os_log_error_impl(&dword_1AD246000, v110, OS_LOG_TYPE_ERROR, "%@: Could not process request ret=0x%x lModel=%@", &v173, 0x1Cu);
    }
  }

  else if (v129 && (v164[3] & 1) == 0)
  {
    *value = 18;
  }

  _Block_object_dispose(v179, 8);
  for (n = 1018; n != 506; n -= 8)
  {
  }

  do
  {

    n -= 8;
  }

  while (n != -6);

  _Block_object_dispose(&v159, 8);
  LODWORD(v31) = 1;
LABEL_85:

  objc_autoreleasePoolPop(context);
  if (v31)
  {
    if (error)
    {
      *error = v168[5];
    }

    v112 = +[_ANELog common];
    v31 = v112;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v112))
    {
      unsignedIntegerValue = 134349056;
      v184 = v127;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v31, OS_SIGNPOST_EVENT, spid, "_ANEF_MODEL_EVAL", "%{public, signpost.description:begin_time}llu ", &unsignedIntegerValue, 0xCu);
    }

    LOBYTE(v31) = *value == 0;
  }

  _Block_object_dispose(&v163, 8);
  _Block_object_dispose(&v167, 8);

  return v31;
}

- (BOOL)processOutputSet:(id)set model:(id)model options:(id)options error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  setCopy = set;
  modelCopy = model;
  v12 = objc_autoreleasePoolPush();
  v13 = +[_ANELog common];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v20 = NSStringFromSelector(a2);
    *buf = 138412802;
    v29 = v20;
    v30 = 2048;
    *v31 = setCopy;
    *&v31[8] = 2112;
    *&v31[10] = modelCopy;
    _os_log_debug_impl(&dword_1AD246000, v13, OS_LOG_TYPE_DEBUG, "-----> %@: processOutputSet() outputSet=%p lModel=%@ : ", buf, 0x20u);
  }

  procedureIndex = [setCopy procedureIndex];
  setIndex = [setCopy setIndex];
  signalValue = [setCopy signalValue];
  signalNotRequired = [setCopy signalNotRequired];
  BYTE1(signalNotRequired) = [setCopy isOpenLoop];
  controller = [(_ANEProgramForEvaluation *)self controller];
  device = [controller device];
  if (device && *device)
  {
    v16 = (*(*device + 40))(device, &v23);

    if (!v16)
    {
      v17 = 1;
      goto LABEL_11;
    }
  }

  else
  {

    v16 = 2;
  }

  v18 = +[_ANELog common];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v21 = NSStringFromSelector(a2);
    programHandle = [(_ANEProgramForEvaluation *)self programHandle];
    *buf = 138413314;
    v29 = v21;
    v30 = 1024;
    *v31 = v16;
    *&v31[4] = 2112;
    *&v31[6] = modelCopy;
    *&v31[14] = 2048;
    *&v31[16] = programHandle;
    v32 = 2048;
    v33 = signalValue;
    _os_log_error_impl(&dword_1AD246000, v18, OS_LOG_TYPE_ERROR, "%@: Could not process output set enqueue request ret=0x%x lModel=%@ programHandle=%llu signalValue=%llu", buf, 0x30u);
  }

  v17 = 0;
LABEL_11:
  objc_autoreleasePoolPop(v12);
  if (error)
  {
    *error = 0;
  }

  return v17;
}

- (BOOL)processInputBuffers:(id)buffers model:(id)model options:(id)options error:(id *)error
{
  v55[258] = *MEMORY[0x1E69E9840];
  buffersCopy = buffers;
  modelCopy = model;
  optionsCopy = options;
  context = objc_autoreleasePoolPush();
  v9 = +[_ANELog common];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v33 = NSStringFromSelector(a2);
    *v51 = 138412802;
    *&v51[4] = v33;
    *v52 = 2048;
    *&v52[2] = buffersCopy;
    v53 = 2112;
    v54 = modelCopy;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "-----> %@: processInputBuffers() inputBuffers=%p lModel=%@ : ", v51, 0x20u);
  }

  bzero(&v52[4], 0xC08uLL);
  *v51 = [(_ANEProgramForEvaluation *)self programHandle];
  *&v51[8] = [buffersCopy procedureIndex];
  v55[255] = [buffersCopy executionDelay];
  inputBufferInfoIndex = [buffersCopy inputBufferInfoIndex];
  v11 = [inputBufferInfoIndex count] > 0xFF;

  if (v11)
  {
    v12 = +[_ANELog common];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(a2);
      inputBufferInfoIndex2 = [buffersCopy inputBufferInfoIndex];
      *buf = 138412802;
      v46 = v36;
      v47 = 2048;
      *v48 = [inputBufferInfoIndex2 count];
      *&v48[8] = 1024;
      *&v48[10] = 255;
      _os_log_error_impl(&dword_1AD246000, v12, OS_LOG_TYPE_ERROR, "%@: inputBuffers inputBufferInfoIndex=%lu exceeds max=%d", buf, 0x1Cu);
    }
  }

  inputBufferInfoIndex3 = [buffersCopy inputBufferInfoIndex];
  *v52 = [inputBufferInfoIndex3 count];

  for (i = 0; ; ++i)
  {
    inputBufferInfoIndex4 = [buffersCopy inputBufferInfoIndex];
    v16 = [inputBufferInfoIndex4 count] > i;

    if (!v16)
    {
      break;
    }

    inputBufferInfoIndex5 = [buffersCopy inputBufferInfoIndex];
    v18 = [inputBufferInfoIndex5 objectAtIndexedSubscript:i];
    unsignedIntegerValue = [v18 unsignedIntegerValue];
    *&v52[4 * i + 4] = unsignedIntegerValue;

    v20 = +[_ANELog common];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v46 = v21;
      v47 = 1024;
      *v48 = unsignedIntegerValue;
      _os_log_debug_impl(&dword_1AD246000, v20, OS_LOG_TYPE_DEBUG, "-----> %@: processInputBuffers() inputBufferInfoIndex value is %d ", buf, 0x12u);
    }
  }

  for (j = 0; ; ++j)
  {
    inputFreeValue = [buffersCopy inputFreeValue];
    v24 = [inputFreeValue count] > j;

    if (!v24)
    {
      break;
    }

    inputFreeValue2 = [buffersCopy inputFreeValue];
    v26 = [inputFreeValue2 objectAtIndexedSubscript:j];
    v55[j] = [v26 unsignedIntegerValue];
  }

  controller = [(_ANEProgramForEvaluation *)self controller];
  device = [controller device];
  if (device && *device)
  {
    v29 = (*(*device + 48))(device, v51);

    if (!v29)
    {
      v30 = 1;
      goto LABEL_23;
    }
  }

  else
  {

    v29 = 2;
  }

  v31 = +[_ANELog common];
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    v34 = NSStringFromSelector(a2);
    programHandle = [(_ANEProgramForEvaluation *)self programHandle];
    *buf = 138413058;
    v46 = v34;
    v47 = 1024;
    *v48 = v29;
    *&v48[4] = 2112;
    *&v48[6] = modelCopy;
    v49 = 2048;
    v50 = programHandle;
    _os_log_error_impl(&dword_1AD246000, v31, OS_LOG_TYPE_ERROR, "%@: Could not process input ready request ret=0x%x lModel=%@ programHandle=%llu", buf, 0x26u);
  }

  v30 = 0;
LABEL_23:
  objc_autoreleasePoolPop(context);
  if (v39)
  {
    *v39 = 0;
  }

  return v30;
}

- (BOOL)processSessionHint:(id)hint options:(id)options report:(id)report error:(id *)error
{
  v50 = *MEMORY[0x1E69E9840];
  hintCopy = hint;
  optionsCopy = options;
  reportCopy = report;
  v38 = mach_continuous_time();
  v13 = +[_ANELog common];
  v14 = os_signpost_id_generate(v13);

  v15 = +[_ANELog common];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v36 = NSStringFromSelector(a2);
    *v48 = 138412802;
    *&v48[4] = v36;
    *&v48[12] = 2112;
    *&v48[14] = hintCopy;
    *&v48[22] = 2048;
    programHandle = [(_ANEProgramForEvaluation *)self programHandle];
    _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@: %@ - 0x%llx", v48, 0x20u);
  }

  v41 = 0;
  memset(v48, 0, sizeof(v48));
  programHandle2 = [(_ANEProgramForEvaluation *)self programHandle];
  if ([hintCopy isEqualToString:kANEFHintSessionStart])
  {
    v16 = 2;
LABEL_11:
    LODWORD(v41) = v16;
    if (optionsCopy)
    {
      v17 = [optionsCopy objectForKeyedSubscript:kANEFHintEnergyEfficientWorkloadKey];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v19 = [optionsCopy objectForKeyedSubscript:kANEFHintEnergyEfficientWorkloadKey];
        BYTE4(v41) = [v19 BOOLValue];
      }
    }

    kdebug_trace();
    v20 = +[_ANELog common];
    v21 = v20;
    v22 = v14 - 1;
    if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
    {
      *buf = 67109376;
      *v45 = v41;
      *&v45[4] = 2048;
      *&v45[6] = programHandle2;
      _os_signpost_emit_with_name_impl(&dword_1AD246000, v21, OS_SIGNPOST_EVENT, v14, "_ANEF_SEND_SESSION_HINT", " hintParams.hintType:%u hintParams.programHandle:%llu", buf, 0x12u);
    }

    controller = [(_ANEProgramForEvaluation *)self controller];
    device = [controller device];
    if (device && *device)
    {
      v25 = (*(*device + 80))(device, &programHandle2, v48);

      if (!v25)
      {
        v26 = +[_ANELog common];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEProgramForEvaluation processSessionHint:options:report:error:];
        }

        if (reportCopy)
        {
          if (v41 == 5)
          {
            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&v48[16]];
            [reportCopy setObject:v28 forKeyedSubscript:kANEFHintReportSessionStatusKey];
            goto LABEL_45;
          }

          if (v41 == 2)
          {
            v27 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*v48];
            [reportCopy setObject:v27 forKeyedSubscript:kANEFHintReportTotalPagesKey];

            v28 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*&v48[8]];
            [reportCopy setObject:v28 forKeyedSubscript:kANEFHintReportResidentPagesKey];
LABEL_45:
            v30 = 1;
LABEL_32:

            goto LABEL_33;
          }
        }

        v30 = 1;
LABEL_33:
        kdebug_trace();
        v31 = +[_ANELog common];
        v32 = v31;
        if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v31))
        {
          *v42 = 67109376;
          LODWORD(v43[0]) = v41;
          WORD2(v43[0]) = 2048;
          *(v43 + 6) = programHandle2;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v32, OS_SIGNPOST_EVENT, v14, "_ANEF_SEND_SESSION_HINT", " hintParams.hintType:%u hintParams.programHandle:%llu", v42, 0x12u);
        }

        v33 = +[_ANELog common];
        v34 = v33;
        if (v22 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v33))
        {
          *v42 = 134349056;
          v43[0] = v38;
          _os_signpost_emit_with_name_impl(&dword_1AD246000, v34, OS_SIGNPOST_EVENT, v14, "_ANEF_SEND_SESSION_HINT", "%{public, signpost.description:begin_time}llu ", v42, 0xCu);
        }

        goto LABEL_43;
      }
    }

    else
    {

      v25 = 2;
    }

    v29 = +[_ANELog common];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(a2);
      *buf = 138412802;
      *v45 = v37;
      *&v45[8] = 1024;
      *&v45[10] = v41;
      v46 = 1024;
      v47 = v25;
      _os_log_error_impl(&dword_1AD246000, v29, OS_LOG_TYPE_ERROR, "%@: Failed to set session hint %u ret=0x%x", buf, 0x18u);
    }

    v30 = 0;
    if (!error || v25 != 4)
    {
      goto LABEL_33;
    }

    v28 = NSStringFromSelector(a2);
    [_ANEErrors invalidModelErrorForMethod:v28];
    *error = v30 = 0;
    goto LABEL_32;
  }

  if ([hintCopy isEqualToString:kANEFHintSessionStop])
  {
    v16 = 3;
    goto LABEL_11;
  }

  if ([hintCopy isEqualToString:kANEFHintSessionAbort])
  {
    v16 = 4;
    goto LABEL_11;
  }

  if ([hintCopy isEqualToString:kANEFHintSessionInfo])
  {
    v16 = 5;
    goto LABEL_11;
  }

  v34 = +[_ANELog common];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEProgramForEvaluation processSessionHint:options:report:error:];
  }

  v30 = 0;
LABEL_43:

  return v30;
}

- (void)processRequest:model:qos:qIndex:modelStringID:options:returnValue:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_2_1(&dword_1AD246000, "-----> %@: ANEProgramProcessRequestDirect() disableIOFences option not nil value is %d ", v4, v5);
}

- (void)processRequest:model:qos:qIndex:modelStringID:options:returnValue:error:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_2_1(&dword_1AD246000, "-----> %@: ANEProgramProcessRequestDirect() enableFWToFWSignal option not nil value is %d ", v4, v5);
}

- (void)processSessionHint:options:report:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  *v1 = 138412546;
  *(v1 + 4) = v2;
  *(v1 + 12) = 2112;
  *(v1 + 14) = v3;
  _os_log_error_impl(&dword_1AD246000, v5, OS_LOG_TYPE_ERROR, "%@: Unknown hint %@", v4, 0x16u);
}

- (void)processSessionHint:options:report:error:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_2_1(&dword_1AD246000, "%@: Set session hint %u success", v4, v5);
}

@end