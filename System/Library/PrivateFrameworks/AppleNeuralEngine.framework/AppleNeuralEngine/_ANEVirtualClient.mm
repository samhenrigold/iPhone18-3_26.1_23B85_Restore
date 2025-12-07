@interface _ANEVirtualClient
+ (BOOL)setCodeSigningIdentity:(__CFDictionary *)identity;
+ (BOOL)shouldUsePrecompiledPath:(id)path options:(id)options shouldUseChunking:(BOOL *)chunking chunkingThreshold:(unint64_t)threshold;
+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length error:(id *)a5;
+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length errorCode:(int64_t)code error:(id *)a6;
+ (__CFDictionary)getCFDictionaryFromIOSurface:(__IOSurface *)surface dataLength:(unint64_t)length;
+ (__IOSurface)copyLLIRBundleToIOSurface:(id)surface writtenDataSize:(unint64_t *)size;
+ (__IOSurface)createIOSurface:(unint64_t)surface ioSID:(unsigned int *)d;
+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (id)dictionaryGetNSStringForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (id)getCodeSigningIdentity;
+ (id)getDictionaryWithJSONEncodingFromIOSurface:(__IOSurface *)surface withArchivedDataSize:(unint64_t)size;
+ (id)getObjectFromIOSurface:(__IOSurface *)surface classType:(Class)type length:(unint64_t)length;
+ (id)sharedConnection;
+ (id)updatePerformanceStats:(__IOSurface *)stats performanceStatsLength:(unint64_t)length perfStatsRawIOSurfaceRef:(__IOSurface *)ref performanceStatsRawLength:(unint64_t)rawLength hwExecutionTime:(unint64_t)time;
+ (int64_t)dictionaryGetInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (unsigned)dictionaryGetUInt32ForKey:(__CFDictionary *)key key:(__CFString *)a4;
+ (void)copyDictionaryDataToStruct:(VirtANEModel *)struct dictionary:(__CFDictionary *)dictionary;
+ (void)freeModelFileIOSurfaces:(__CFArray *)surfaces;
+ (void)getCodeSigningIdentity;
+ (void)printIOSurfaceDataInBytes:(__IOSurface *)bytes;
+ (void)printStruct:(VirtANEModel *)struct;
- (BOOL)beginRealTimeTask;
- (BOOL)callIOUserClient:(unsigned int)client inParams:(VirtANEModel *)params outParams:(VirtANEModel *)outParams;
- (BOOL)compileModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)compiledModelExistsFor:(id)for;
- (BOOL)compiledModelExistsMatchingHash:(id)hash;
- (BOOL)copyAllModelFiles:(id)files dictionary:(__CFDictionary *)dictionary ioSurfaceRefs:(__CFArray *)refs;
- (BOOL)copyFilesInDirectoryToIOSurfaces:(id)surfaces ioSurfaceRefs:(__CFArray *)refs ioSurfaceSizes:(id)sizes fileNames:(id)names;
- (BOOL)doEvaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error;
- (BOOL)doEvaluateWithModelLegacy:(id)legacy options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error;
- (BOOL)doMapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error;
- (BOOL)echo:(id)echo;
- (BOOL)endRealTimeTask;
- (BOOL)evaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos error:(id *)error;
- (BOOL)loadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)error;
- (BOOL)loadModelNewInstanceLegacy:(id)legacy options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)error;
- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error;
- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error;
- (BOOL)transferFileToHostWithPath:(id)path withChunkSize:(unsigned int)size withUUID:(id)d withModelInputPath:(id)inputPath overWriteFileNameWith:(id)with;
- (BOOL)unloadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error;
- (BOOL)updateError:(VMData *)error error:(id *)a4;
- (BOOL)validateEnvironmentForPrecompiledBinarySupport;
- (BuildVersionInfo)exchangeBuildVersionInfo;
- (DeviceExtendedInfo)getDeviceInfo;
- (_ANEVirtualClient)initWithSingletonAccess;
- (__CFDictionary)callIOUserClientWithDictionary:(unsigned int)dictionary inDictionary:(__CFDictionary *)inDictionary error:(id *)error;
- (__CFDictionary)validateNetworkCreate:(unint64_t)create uuid:(id)uuid function:(id)function directoryPath:(id)path scratchPadPath:(id)padPath milTextData:(id)data;
- (__CFDictionary)validateNetworkCreateMLIR:(unint64_t)r validation_params:(__CFDictionary *)validation_params;
- (__IOSurface)copyDictionaryToIOSurface:(id)surface copiedDataSize:(unint64_t *)size createdIOSID:(unsigned int *)d;
- (__IOSurface)copyToIOSurface:(char *)surface size:(unint64_t)size ioSID:(unsigned int *)d;
- (__IOSurface)copyToIOSurface:(id)surface length:(unint64_t)length ioSID:(unsigned int *)d;
- (id)aneArchitectureTypeStr;
- (id)doJsonParsingMatchWeightName:(id)name;
- (id)getModelAttribute:(VMData *)attribute;
- (id)hostBuildVersionStr;
- (id)parallelDecompressedData:(id)data;
- (id)readWeightFilename:(id)filename;
- (id)updatePerformanceStats:(VMData *)stats;
- (int64_t)aneBoardtype;
- (unint64_t)getValidateNetworkVersion;
- (unint64_t)negotiatedCapabilityMask;
- (unint64_t)outputDictIOSurfaceSize;
- (void)checkKernReturnValue:(int)value selector:(unsigned int)selector outParams:(VirtANEModel *)params;
- (void)copyErrorValue:(VMData *)value;
- (void)copyErrorValue:(__CFDictionary *)value vmData:(VMData *)data;
- (void)copyModel:(id)model options:(id)options vmData:(VMData *)data;
- (void)copyModelMetaData:(id)data options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)vmData;
- (void)copyModelOptionFiles:(id)files options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data;
- (void)copyModelOptionFiles:(id)files options:(id)options vmData:(VMData *)data;
- (void)copyOptions:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data;
- (void)copyOptions:(id)options vmData:(VMData *)data;
- (void)dealloc;
- (void)exchangeBuildVersionInfo;
- (void)getDeviceInfo;
- (void)initWithSingletonAccess;
- (void)purgeCompiledModel:(id)model;
- (void)purgeCompiledModelMatchingHash:(id)hash;
- (void)releaseIOSurfaces:(VMData *)surfaces;
- (void)sendGuestBuildVersion;
@end

@implementation _ANEVirtualClient

+ (id)sharedConnection
{
  if (+[_ANEVirtualClient sharedConnection]::onceToken != -1)
  {
    +[_ANEVirtualClient sharedConnection];
  }

  v3 = +[_ANEVirtualClient sharedConnection]::client;

  return v3;
}

- (_ANEVirtualClient)initWithSingletonAccess
{
  v22 = *MEMORY[0x1E69E9840];
  v21.receiver = self;
  v21.super_class = _ANEVirtualClient;
  v3 = [(_ANEVirtualClient *)&v21 init];
  if (!v3)
  {
    goto LABEL_32;
  }

  v4 = +[_ANELog framework];
  v5 = gLogger;
  gLogger = v4;

  if (!+[_ANEDeviceInfo isVirtualMachine])
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient initWithSingletonAccess];
    }

    goto LABEL_8;
  }

  v6 = dispatch_queue_create("com.apple.ane.avc", 0);
  queue = v3->_queue;
  v3->_queue = v6;

  v3->_connect = 0;
  existing = 0;
  v8 = IOServiceMatching("AppleVirtIONeuralEngineDevice");
  if (!IOServiceGetMatchingServices(*MEMORY[0x1E696CD60], v8, &existing))
  {
    if (!existing)
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient initWithSingletonAccess];
      }

      goto LABEL_8;
    }

    v10 = 0;
    v11 = MEMORY[0x1E69E9A60];
    while (1)
    {
      v12 = IOIteratorNext(existing);
      if (!v12)
      {
        break;
      }

      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [(_ANEVirtualClient *)&v18 initWithSingletonAccess];
      }

      if (IOServiceOpen(v12, *v11, 0, &v3->_connect))
      {
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient initWithSingletonAccess];
        }

        v10 = 1;
        break;
      }

      v10 = 1;
      IOObjectRelease(v12);
    }

    IOObjectRelease(existing);
    v13 = os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG);
    if ((v10 & 1) == 0)
    {
      if (v13)
      {
        [_ANEVirtualClient initWithSingletonAccess];
      }

      goto LABEL_8;
    }

    if (v13)
    {
      [_ANEVirtualClient initWithSingletonAccess];
    }

    output = 0;
    outputCnt = 1;
    if (IOConnectCallScalarMethod(v3->_connect, 0, 0, 0, &output, &outputCnt))
    {
      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient initWithSingletonAccess];
      }

      goto LABEL_8;
    }

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient initWithSingletonAccess];
    }

LABEL_32:
    objc_msgSend_exchangeBuildVersionInfo(v3);
    v9 = v3;
    goto LABEL_33;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient initWithSingletonAccess];
  }

LABEL_8:
  v9 = 0;
LABEL_33:

  return v9;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _ANEVirtualClient;
  [(_ANEVirtualClient *)&v2 dealloc];
}

- (BOOL)doEvaluateWithModelLegacy:(id)legacy options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error
{
  v379 = *MEMORY[0x1E69E9840];
  legacyCopy = legacy;
  optionsCopy = options;
  requestCopy = request;
  eventCopy = event;
  bzero(v295, 0x1728uLL);
  v234 = requestCopy;
  selfCopy = self;
  v232 = optionsCopy;
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    v230 = legacyCopy;
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
    }

    v321[0] = 0;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v24 = *MEMORY[0x1E695E480];
    v25 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    modelURL = [v230 modelURL];

    if (modelURL)
    {
      [(_ANEVirtualClient *)self copyAllModelFiles:v230 dictionary:Mutable ioSurfaceRefs:v25];
    }

    v228 = v25;
    [(_ANEVirtualClient *)self copyModelMetaData:v230 options:v232 dictionary:Mutable vmData:v295];
    [(_ANEVirtualClient *)self copyOptions:v232 dictionary:Mutable vmData:v295];
    [(_ANEVirtualClient *)self copyErrorValue:Mutable vmData:v295];
    valuePtr = 0;
    v290 = 0u;
    v291 = 0u;
    v292 = 0u;
    v293 = 0u;
    inputArray = [requestCopy inputArray];
    v28 = [inputArray countByEnumeratingWithState:&v290 objects:v378 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v291;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v291 != v30)
          {
            objc_enumerationMutation(inputArray);
          }

          ID = IOSurfaceGetID([*(*(&v290 + 1) + 8 * i) ioSurface]);
          v33 = valuePtr;
          v307[valuePtr] = ID;
          v34 = CFStringCreateWithFormat(0, 0, @"inputArray%d", v33);
          v35 = CFNumberCreate(v24, kCFNumberSInt32Type, &v307[valuePtr]);
          CFDictionarySetValue(Mutable, v34, v35);
          CFRelease(v35);
          CFRelease(v34);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
          }

          ++valuePtr;
        }

        v29 = [inputArray countByEnumeratingWithState:&v290 objects:v378 count:16];
      }

      while (v29);
    }

    v36 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"inputArrayCount", v36);
    CFRelease(v36);
    valuePtr = 0;
    v286 = 0u;
    v287 = 0u;
    v288 = 0u;
    v289 = 0u;
    obja = [v234 inputIndexArray];
    v37 = [obja countByEnumeratingWithState:&v286 objects:v375 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v287;
      do
      {
        for (j = 0; j != v38; ++j)
        {
          if (*v287 != v39)
          {
            objc_enumerationMutation(obja);
          }

          v41 = *(*(&v286 + 1) + 8 * j);
          unsignedIntValue = [v41 unsignedIntValue];
          v43 = valuePtr;
          v307[valuePtr + 64] = unsignedIntValue;
          v44 = CFStringCreateWithFormat(0, 0, @"inputIndexArray%d", v43);
          v45 = CFNumberCreate(v24, kCFNumberSInt32Type, &v307[valuePtr + 64]);
          CFDictionarySetValue(Mutable, v44, v45);
          CFRelease(v45);
          CFRelease(v44);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v374 options:v41 request:? qos:? completionEvent:? error:?];
          }

          ++valuePtr;
        }

        v38 = [obja countByEnumeratingWithState:&v286 objects:v375 count:16];
      }

      while (v38);
    }

    v46 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"inputIndexArrayCount", v46);
    CFRelease(v46);
    valuePtr = 0;
    v282 = 0u;
    v283 = 0u;
    v284 = 0u;
    v285 = 0u;
    outputArray = [v234 outputArray];
    v48 = [outputArray countByEnumeratingWithState:&v282 objects:v373 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v283;
      do
      {
        for (k = 0; k != v49; ++k)
        {
          if (*v283 != v50)
          {
            objc_enumerationMutation(outputArray);
          }

          v52 = IOSurfaceGetID([*(*(&v282 + 1) + 8 * k) ioSurface]);
          v53 = valuePtr;
          v307[valuePtr + 128] = v52;
          v54 = CFStringCreateWithFormat(0, 0, @"outputArray%d", v53);
          v55 = CFNumberCreate(v24, kCFNumberSInt32Type, &v307[valuePtr + 128]);
          CFDictionarySetValue(Mutable, v54, v55);
          CFRelease(v55);
          CFRelease(v54);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
          }

          ++valuePtr;
        }

        v49 = [outputArray countByEnumeratingWithState:&v282 objects:v373 count:16];
      }

      while (v49);
    }

    v56 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"outputArrayCount", v56);
    CFRelease(v56);
    valuePtr = 0;
    v278 = 0u;
    v279 = 0u;
    v280 = 0u;
    v281 = 0u;
    objb = [v234 outputIndexArray];
    v57 = [objb countByEnumeratingWithState:&v278 objects:v370 count:16];
    if (v57)
    {
      v58 = v57;
      v59 = *v279;
      do
      {
        for (m = 0; m != v58; ++m)
        {
          if (*v279 != v59)
          {
            objc_enumerationMutation(objb);
          }

          v61 = *(*(&v278 + 1) + 8 * m);
          unsignedIntValue2 = [v61 unsignedIntValue];
          v63 = valuePtr;
          v307[valuePtr + 192] = unsignedIntValue2;
          v64 = CFStringCreateWithFormat(0, 0, @"outputIndexArray%d", v63);
          v65 = CFNumberCreate(v24, kCFNumberSInt32Type, &v307[valuePtr + 192]);
          CFDictionarySetValue(Mutable, v64, v65);
          CFRelease(v65);
          CFRelease(v64);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v61 options:? request:? qos:? completionEvent:? error:?];
          }

          ++valuePtr;
        }

        v58 = [objb countByEnumeratingWithState:&v278 objects:v370 count:16];
      }

      while (v58);
    }

    v66 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"outputIndexArrayCount", v66);
    CFRelease(v66);
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v234 options:? request:? qos:? completionEvent:? error:?];
    }

    weightsBuffer = [v234 weightsBuffer];
    ioSurface = [weightsBuffer ioSurface];

    if (ioSurface)
    {
      weightsBuffer2 = [v234 weightsBuffer];
      v308 = IOSurfaceGetID([weightsBuffer2 ioSurface]);

      v70 = CFNumberCreate(v24, kCFNumberSInt32Type, &v308);
      CFDictionarySetValue(Mutable, @"ioSIDWeightsBufferIndex", v70);
      CFRelease(v70);
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
      }
    }

    else
    {
      v308 = 0;
    }

    procedureIndex = [v234 procedureIndex];
    unsignedLongLongValue = [procedureIndex unsignedLongLongValue];

    v79 = CFNumberCreate(v24, kCFNumberSInt64Type, &unsignedLongLongValue);
    CFDictionarySetValue(Mutable, @"procedureIndex", v79);
    CFRelease(v79);
    transactionHandle = [v234 transactionHandle];
    v310[0] = [transactionHandle unsignedLongLongValue];

    v81 = CFNumberCreate(v24, kCFNumberSInt64Type, v310);
    CFDictionarySetValue(Mutable, @"transactionHandle", v81);
    CFRelease(v81);
    valuePtr = 0;
    v274 = 0u;
    v275 = 0u;
    v276 = 0u;
    v277 = 0u;
    objc = [v234 perfStatsArray];
    v82 = [objc countByEnumeratingWithState:&v274 objects:v367 count:16];
    if (v82)
    {
      v83 = v82;
      v84 = *v275;
      do
      {
        for (n = 0; n != v83; ++n)
        {
          if (*v275 != v84)
          {
            objc_enumerationMutation(objc);
          }

          v86 = *(*(&v274 + 1) + 8 * n);
          stats = [v86 stats];
          v88 = IOSurfaceGetID([stats ioSurface]);
          *(&v310[1] + valuePtr) = v88;

          v89 = CFStringCreateWithFormat(0, 0, @"ioSIDPerfStats%d", valuePtr);
          v90 = CFNumberCreate(v24, kCFNumberSInt32Type, &v310[1] + 4 * valuePtr);
          CFDictionarySetValue(Mutable, v89, v90);
          CFRelease(v90);
          CFRelease(v89);
          statType = [v86 statType];
          v92 = valuePtr;
          *(&v310[33] + valuePtr) = statType;
          v93 = CFStringCreateWithFormat(0, 0, @"perfStatsType%d", v92);
          v94 = CFNumberCreate(v24, kCFNumberSInt32Type, &v310[33] + 4 * valuePtr);
          CFDictionarySetValue(Mutable, v93, v94);
          CFRelease(v94);
          CFRelease(v93);
          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
          }

          if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
          }

          ++valuePtr;
        }

        v83 = [objc countByEnumeratingWithState:&v274 objects:v367 count:16];
      }

      while (v83);
    }

    v95 = CFNumberCreate(v24, kCFNumberSInt32Type, &valuePtr);
    CFDictionarySetValue(Mutable, @"perfStatsCount", v95);
    CFRelease(v95);
    v317 = 0;
    v318 = 0;
    v319 = 0;
    v96 = MEMORY[0x1E695DF20];
    v97 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4096];
    v98 = [v96 dictionaryWithObjectsAndKeys:{v97, *MEMORY[0x1E696CE30], 0}];

    v99 = IOSurfaceCreate(v98);
    buffer = v99;
    if (!v99)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      legacyCopy = v230;
      v163 = v232;
      v164 = eventCopy;
      v165 = v234;
      goto LABEL_199;
    }

    v318 = IOSurfaceGetID(v99);
    v100 = CFNumberCreate(v24, kCFNumberSInt32Type, &v318);
    CFDictionarySetValue(Mutable, @"ioSIDPerformanceStatsIndex", v100);
    CFRelease(v100);
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
    }

    sharedEvents = [v234 sharedEvents];

    if (sharedEvents)
    {
      bzero(&v335, 0x1460uLL);
      sharedEvents2 = [v234 sharedEvents];
      signalEvents = [sharedEvents2 signalEvents];
      v336 = [signalEvents count];

      if (v336)
      {
        v104 = CFStringCreateWithFormat(0, 0, @"signalEventsCount");
        v105 = CFNumberCreate(v24, kCFNumberSInt64Type, &v336);
        CFDictionarySetValue(Mutable, v104, v105);
        CFRelease(v105);
        CFRelease(v104);
      }

      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      v272 = 0u;
      v273 = 0u;
      v270 = 0u;
      v271 = 0u;
      sharedEvents3 = [v234 sharedEvents];
      signalEvents2 = [sharedEvents3 signalEvents];

      v236 = signalEvents2;
      objd = [signalEvents2 countByEnumeratingWithState:&v270 objects:v334 count:16];
      if (objd)
      {
        v108 = 0;
        v238 = *v271;
        do
        {
          for (ii = 0; ii != objd; ++ii)
          {
            if (*v271 != v238)
            {
              objc_enumerationMutation(v236);
            }

            v110 = *(*(&v270 + 1) + 8 * ii);
            sharedEvent = [v110 sharedEvent];
            v112 = &v358[5 * v108];
            *v112 = [sharedEvent eventPort];

            *(v112 + 1) = [v110 eventType];
            v113 = v112 + 4;
            v112[1] = [v110 value];
            v114 = v112 + 1;
            *(v112 + 4) = [v110 symbolIndex];
            v115 = v112 + 2;
            v112[3] = [v110 agentMask];
            v116 = v112 + 3;
            *(v112 + 32) = 0;
            if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
            {
              v127 = NSStringFromSelector(a2);
              v128 = *v112;
              v129 = v112[1];
              v328 = 138412802;
              v329 = v127;
              v330 = 1024;
              v331 = v128;
              v332 = 2048;
              v333 = v129;
              _os_log_debug_impl(&dword_1AD246000, 0, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient signal events port is %#x and value is %llu\n", &v328, 0x1Cu);
            }

            v117 = CFStringCreateWithFormat(0, 0, @"signalEvents%dport", v108);
            v118 = CFNumberCreate(v24, kCFNumberSInt32Type, v112);
            CFDictionarySetValue(Mutable, v117, v118);
            CFRelease(v118);
            CFRelease(v117);
            v119 = CFStringCreateWithFormat(0, 0, @"signalEvents%dtype", v108);
            v120 = CFNumberCreate(v24, kCFNumberSInt32Type, v113);
            CFDictionarySetValue(Mutable, v119, v120);
            CFRelease(v120);
            CFRelease(v119);
            v121 = CFStringCreateWithFormat(0, 0, @"signalEvents%dValue", v108);
            v122 = CFNumberCreate(v24, kCFNumberSInt64Type, v114);
            CFDictionarySetValue(Mutable, v121, v122);
            CFRelease(v122);
            CFRelease(v121);
            v123 = CFStringCreateWithFormat(0, 0, @"signalEvents%dSymbolIndex", v108);
            v124 = CFNumberCreate(v24, kCFNumberSInt32Type, v115);
            CFDictionarySetValue(Mutable, v123, v124);
            CFRelease(v124);
            CFRelease(v123);
            v125 = CFStringCreateWithFormat(0, 0, @"signalEvents%dAgentMask", v108);
            v126 = CFNumberCreate(v24, kCFNumberSInt64Type, v116);
            CFDictionarySetValue(Mutable, v125, v126);
            CFRelease(v126);
            CFRelease(v125);
            v108 = (v108 + 1);
          }

          objd = [v236 countByEnumeratingWithState:&v270 objects:v334 count:16];
        }

        while (objd);
      }

      if (eventCopy)
      {
        signalEvents3 = [eventCopy signalEvents];
        v131 = [signalEvents3 count];

        if (v131 != 2 && os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
        }

        v132 = 0;
        v133 = 1;
        while (1)
        {
          v134 = v133;
          signalEvents4 = [eventCopy signalEvents];
          v136 = [signalEvents4 objectAtIndexedSubscript:v132];
          value = [v136 value];

          signalEvents5 = [eventCopy signalEvents];
          v139 = [signalEvents5 objectAtIndexedSubscript:v132];
          sharedEvent2 = [v139 sharedEvent];
          eventPort = [sharedEvent2 eventPort];
          if (value == 4097)
          {
            v359[0] = eventPort;

            signalEvents6 = [eventCopy signalEvents];
            v143 = [signalEvents6 objectAtIndexedSubscript:v132];
            v359[1] = [v143 eventType];

            signalEvents7 = [eventCopy signalEvents];
            v145 = [signalEvents7 objectAtIndexedSubscript:v132];
            value2 = [v145 value];

            signalEvents8 = [eventCopy signalEvents];
            v147 = [signalEvents8 objectAtIndexedSubscript:v132];
            symbolIndex = [v147 symbolIndex];

            v362 = 0;
            if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
            {
              v148 = NSStringFromSelector(a2);
              v328 = 138412802;
              v329 = v148;
              v330 = 1024;
              v331 = v359[0];
              v332 = 2048;
              v333 = value2;
              v149 = "%@: ANEVirtualClient success completionEvent signal events port is %#x and value is %llu\n";
LABEL_111:
              _os_log_debug_impl(&dword_1AD246000, 0, OS_LOG_TYPE_DEBUG, v149, &v328, 0x1Cu);
            }
          }

          else
          {
            v363[0] = eventPort;

            signalEvents9 = [eventCopy signalEvents];
            v151 = [signalEvents9 objectAtIndexedSubscript:v132];
            v363[1] = [v151 eventType];

            signalEvents10 = [eventCopy signalEvents];
            v153 = [signalEvents10 objectAtIndexedSubscript:v132];
            value3 = [v153 value];

            signalEvents11 = [eventCopy signalEvents];
            v155 = [signalEvents11 objectAtIndexedSubscript:v132];
            symbolIndex2 = [v155 symbolIndex];

            v366 = 0;
            if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
            {
              v148 = NSStringFromSelector(a2);
              v328 = 138412802;
              v329 = v148;
              v330 = 1024;
              v331 = v363[0];
              v332 = 2048;
              v333 = value3;
              v149 = "%@: ANEVirtualClient error completionEvent signal events port is %#x and value is %llu\n";
              goto LABEL_111;
            }
          }

          v133 = 0;
          v132 = 1;
          if ((v134 & 1) == 0)
          {
            v196 = CFStringCreateWithFormat(0, 0, @"successEventport");
            v197 = CFNumberCreate(v24, kCFNumberSInt32Type, v359);
            CFDictionarySetValue(Mutable, v196, v197);
            CFRelease(v197);
            CFRelease(v196);
            v198 = CFStringCreateWithFormat(0, 0, @"errorEventport");
            v199 = CFNumberCreate(v24, kCFNumberSInt32Type, v363);
            CFDictionarySetValue(Mutable, v198, v199);
            CFRelease(v199);
            CFRelease(v198);
            break;
          }
        }
      }

      sharedEvents4 = [v234 sharedEvents];
      waitEvents = [sharedEvents4 waitEvents];
      v335 = [waitEvents count];

      v202 = v335 != 0;
      if (v335)
      {
        v203 = CFStringCreateWithFormat(0, 0, @"waitEventsCount");
        v204 = CFNumberCreate(v24, kCFNumberSInt64Type, &v335);
        CFDictionarySetValue(Mutable, v203, v204);
        CFRelease(v204);
        CFRelease(v203);
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
        }
      }

      v237 = v202;
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      v268 = 0u;
      v269 = 0u;
      v266 = 0u;
      v267 = 0u;
      sharedEvents5 = [v234 sharedEvents];
      waitEvents2 = [sharedEvents5 waitEvents];

      v239 = waitEvents2;
      v207 = [waitEvents2 countByEnumeratingWithState:&v266 objects:v327 count:16];
      if (v207)
      {
        v208 = v207;
        v209 = 0;
        obje = *v267;
        do
        {
          for (jj = 0; jj != v208; ++jj)
          {
            if (*v267 != obje)
            {
              objc_enumerationMutation(v239);
            }

            v211 = *(*(&v266 + 1) + 8 * jj);
            sharedEvent3 = [v211 sharedEvent];
            v213 = &v337 + 10 * v209;
            *v213 = [sharedEvent3 eventPort];

            v213[1] = [v211 eventType];
            v214 = v213 + 1;
            *(v213 + 1) = [v211 value];
            v215 = v213 + 2;
            v213[4] = 0;
            *(v213 + 3) = 0;
            *(v213 + 32) = 0;
            v216 = CFStringCreateWithFormat(0, 0, @"waitEvents%dport", v209);
            v217 = CFNumberCreate(v24, kCFNumberSInt32Type, v213);
            CFDictionarySetValue(Mutable, v216, v217);
            CFRelease(v217);
            CFRelease(v216);
            v218 = CFStringCreateWithFormat(0, 0, @"waitEvents%dtype", v209);
            v219 = CFNumberCreate(v24, kCFNumberSInt32Type, v214);
            CFDictionarySetValue(Mutable, v218, v219);
            CFRelease(v219);
            CFRelease(v218);
            v220 = CFStringCreateWithFormat(0, 0, @"waitEvents%dValue", v209);
            v221 = CFNumberCreate(v24, kCFNumberSInt64Type, v215);
            CFDictionarySetValue(Mutable, v220, v221);
            CFRelease(v221);
            CFRelease(v220);
            v209 = (v209 + 1);
          }

          v208 = [v239 countByEnumeratingWithState:&v266 objects:v327 count:16];
        }

        while (v208);
      }

      v222 = v237;
    }

    else
    {
      v222 = 0;
    }

    v193 = selfCopy;
    errorCopy2 = error;
    v223 = [(_ANEVirtualClient *)selfCopy callIOUserClientWithDictionary:4 inDictionary:Mutable error:error];
    CFRelease(Mutable);
    legacyCopy = v230;
    modelURL2 = [v230 modelURL];

    v163 = v232;
    v164 = eventCopy;
    if (modelURL2)
    {
      [_ANEVirtualClient freeModelFileIOSurfaces:v228];
      CFRelease(v228);
    }

    v225 = os_log_type_enabled(0, OS_LOG_TYPE_DEBUG);
    if (v223)
    {
      if (v225)
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      [_ANEVirtualClient copyDictionaryDataToStruct:&v320 dictionary:v223];
      v195 = v321[0] == 1;
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      v165 = v234;
      goto LABEL_196;
    }

    if (v225)
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
    }

    v165 = v234;
    if (v222)
    {
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
      }

      v195 = 1;
      goto LABEL_196;
    }

    [(_ANEVirtualClient *)selfCopy releaseIOSurfaces:v295];
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
    }

LABEL_199:
    v195 = 0;
    goto LABEL_200;
  }

  [(_ANEVirtualClient *)self copyModel:legacyCopy options:optionsCopy vmData:v295];
  [(_ANEVirtualClient *)self copyErrorValue:v295];
  obj = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:0];
  v296 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", obj, [obj length], v306);
  string_id = [legacyCopy string_id];
  programHandle = [legacyCopy programHandle];
  intermediateBufferHandle = [legacyCopy intermediateBufferHandle];
  queueDepth = [legacyCopy queueDepth];
  perfStatsMask = [legacyCopy perfStatsMask];
  qosCopy = qos;
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v335) = 67112192;
    HIDWORD(v335) = v298[4];
    LOWORD(v336) = 1024;
    *(&v336 + 2) = v298[5];
    HIWORD(v336) = 1024;
    v337 = v298[6];
    v338 = 1024;
    v339 = v298[7];
    v340 = 2048;
    v341 = string_id;
    v342 = 2048;
    v343 = programHandle;
    v344 = 2048;
    v345 = intermediateBufferHandle;
    v346 = 1024;
    v347 = queueDepth;
    v348 = 1024;
    v349 = v303;
    v350 = 1024;
    v351 = perfStatsMask;
    v352 = 1024;
    v353 = qosCopy;
    v354 = 1024;
    v355 = v306[0];
    v356 = 1024;
    v357 = v316;
    _os_log_debug_impl(&dword_1AD246000, 0, OS_LOG_TYPE_DEBUG, "ANEVirtualClient Evaluate: virtualANEModel.ioSIDModelNet=%u virtualANEModel.ioSIDModelShape=%u virtualANEModel.ioSIDModelWeight=%u virtualANEModel.ioSIDKey=%u virtualANEModel.string_id=%lld virtualANEModel.programHandle=%lld virtualANEModel.intermediateBufferHandle=%lld virtualANEModel.queueDepth=%d virtualANEModel.ioSIDModelAttributes=%u virtualANEModel.perfStatsMask=%u virtualANEModel.qos=%u virtualANEModel.ioSIDOptions=%u virtualANEModel.ioSIDErrorValue=%u", &v335, 0x5Cu);
  }

  v264 = 0u;
  v265 = 0u;
  v262 = 0u;
  v263 = 0u;
  inputArray2 = [requestCopy inputArray];
  v17 = [inputArray2 countByEnumeratingWithState:&v262 objects:v326 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = 0;
    v20 = *v263;
    do
    {
      for (kk = 0; kk != v18; ++kk)
      {
        if (*v263 != v20)
        {
          objc_enumerationMutation(inputArray2);
        }

        v22 = IOSurfaceGetID([*(*(&v262 + 1) + 8 * kk) ioSurface]);
        v307[v19] = v22;
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v22 options:v369 request:? qos:? completionEvent:? error:?];
        }

        ++v19;
      }

      v18 = [inputArray2 countByEnumeratingWithState:&v262 objects:v326 count:16];
    }

    while (v18);
  }

  else
  {
    v19 = 0;
  }

  v312 = v19;
  v258 = 0u;
  v259 = 0u;
  v260 = 0u;
  v261 = 0u;
  inputIndexArray = [v234 inputIndexArray];
  v72 = [inputIndexArray countByEnumeratingWithState:&v258 objects:v325 count:16];
  if (v72)
  {
    v73 = v72;
    v74 = 0;
    v75 = *v259;
    do
    {
      for (mm = 0; mm != v73; ++mm)
      {
        if (*v259 != v75)
        {
          objc_enumerationMutation(inputIndexArray);
        }

        v77 = *(*(&v258 + 1) + 8 * mm);
        v307[v74 + 64] = [v77 unsignedIntValue];
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v77 options:? request:? qos:? completionEvent:? error:?];
        }

        ++v74;
      }

      v73 = [inputIndexArray countByEnumeratingWithState:&v258 objects:v325 count:16];
    }

    while (v73);
  }

  else
  {
    v74 = 0;
  }

  v313 = v74;
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  outputArray2 = [v234 outputArray];
  v157 = [outputArray2 countByEnumeratingWithState:&v254 objects:v324 count:16];
  if (v157)
  {
    v158 = v157;
    v159 = 0;
    v160 = *v255;
    do
    {
      for (nn = 0; nn != v158; ++nn)
      {
        if (*v255 != v160)
        {
          objc_enumerationMutation(outputArray2);
        }

        v162 = IOSurfaceGetID([*(*(&v254 + 1) + 8 * nn) ioSurface]);
        v307[v159 + 128] = v162;
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v162 options:&v377 request:? qos:? completionEvent:? error:?];
        }

        ++v159;
      }

      v158 = [outputArray2 countByEnumeratingWithState:&v254 objects:v324 count:16];
    }

    while (v158);
  }

  else
  {
    v159 = 0;
  }

  v314 = v159;
  v250 = 0u;
  v251 = 0u;
  v252 = 0u;
  v253 = 0u;
  outputIndexArray = [v234 outputIndexArray];
  v167 = [outputIndexArray countByEnumeratingWithState:&v250 objects:v323 count:16];
  if (v167)
  {
    v168 = v167;
    v169 = 0;
    v170 = *v251;
    do
    {
      for (i1 = 0; i1 != v168; ++i1)
      {
        if (*v251 != v170)
        {
          objc_enumerationMutation(outputIndexArray);
        }

        v172 = *(*(&v250 + 1) + 8 * i1);
        v307[v169 + 192] = [v172 unsignedIntValue];
        if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
        {
          [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v172 options:? request:? qos:? completionEvent:? error:?];
        }

        ++v169;
      }

      v168 = [outputIndexArray countByEnumeratingWithState:&v250 objects:v323 count:16];
    }

    while (v168);
  }

  else
  {
    v169 = 0;
  }

  v315 = v169;
  v165 = v234;
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v234 options:? request:? qos:? completionEvent:? error:?];
  }

  weightsBuffer3 = [v234 weightsBuffer];
  ioSurface2 = [weightsBuffer3 ioSurface];

  if (ioSurface2)
  {
    weightsBuffer4 = [v234 weightsBuffer];
    v176 = IOSurfaceGetID([weightsBuffer4 ioSurface]);

    v308 = v176;
    if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
    }
  }

  else
  {
    v308 = 0;
  }

  procedureIndex2 = [v234 procedureIndex];
  unsignedLongLongValue = [procedureIndex2 unsignedLongLongValue];

  transactionHandle2 = [v234 transactionHandle];
  v310[0] = [transactionHandle2 unsignedLongLongValue];

  v248 = 0u;
  v249 = 0u;
  v246 = 0u;
  v247 = 0u;
  perfStatsArray = [v234 perfStatsArray];
  v180 = [perfStatsArray countByEnumeratingWithState:&v246 objects:v322 count:16];
  if (!v180)
  {

LABEL_158:
    v311 = 0;
    goto LABEL_159;
  }

  v181 = v180;
  v182 = 0;
  v183 = *v247;
  do
  {
    v184 = 0;
    v185 = v182;
    do
    {
      if (*v247 != v183)
      {
        objc_enumerationMutation(perfStatsArray);
      }

      v186 = *(*(&v246 + 1) + 8 * v184);
      stats2 = [v186 stats];
      v188 = IOSurfaceGetID([stats2 ioSurface]);

      *(&v310[1] + v185) = v188;
      v182 = v185 + 1;
      *(&v310[33] + v185) = [v186 statType];
      v311 = v185 + 1;
      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v188 options:v372 request:? qos:? completionEvent:? error:?];
      }

      if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:v374 options:v186 request:? qos:? completionEvent:? error:?];
      }

      ++v184;
      ++v185;
    }

    while (v181 != v184);
    v181 = [perfStatsArray countByEnumeratingWithState:&v246 objects:v322 count:16];
  }

  while (v181);

  v165 = v234;
  if (!v182)
  {
    goto LABEL_158;
  }

LABEL_159:
  v317 = 0;
  v318 = 0;
  v319 = 0;
  v189 = MEMORY[0x1E695DF20];
  v190 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4096];
  v191 = [v189 dictionaryWithObjectsAndKeys:{v190, *MEMORY[0x1E696CE30], 0}];

  v192 = IOSurfaceCreate(v191);
  buffer = v192;
  v163 = optionsCopy;
  v164 = eventCopy;
  v193 = selfCopy;
  errorCopy2 = error;
  if (!v192)
  {
    if (os_log_type_enabled(0, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
    }

    goto LABEL_199;
  }

  IOSurfaceLock(v192, 0, 0);
  v318 = IOSurfaceGetID(buffer);
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:a2 options:? request:? qos:? completionEvent:? error:?];
  }

  IOSurfaceUnlock(buffer, 0, 0);

  [v165 sharedEvents];
  if (os_log_type_enabled(0, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient(Private) doEvaluateWithModelLegacy:options:request:qos:completionEvent:error:];
  }

  v195 = [(_ANEVirtualClient *)selfCopy callIOUserClient:4 inParams:v298 outParams:&v320];

LABEL_196:
  [(_ANEVirtualClient *)v193 updateError:v295 error:errorCopy2];
  v226 = [(_ANEVirtualClient *)v193 updatePerformanceStats:v295];
  [v165 setPerfStats:v226];

  [(_ANEVirtualClient *)v193 releaseIOSurfaces:v295];
LABEL_200:

  return v195;
}

- (BOOL)compileModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v53[9] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v11 = gLogger;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v43, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) == 0)
  {
    [(_ANEVirtualClient *)self copyModel:modelCopy options:optionsCopy vmData:v43];
    [(_ANEVirtualClient *)self copyOptions:optionsCopy vmData:v43];
    [(_ANEVirtualClient *)self copyModelOptionFiles:modelCopy options:optionsCopy vmData:v43];
    [(_ANEVirtualClient *)self copyErrorValue:v43];
    v46[0] = qos;
    [(_ANEVirtualClient *)self callIOUserClient:1 inParams:&v45 outParams:&v47];
    v12 = 0;
LABEL_11:
    if (v48)
    {
      v18 = [_ANEVirtualClient dictionaryGetNSStringForKey:v12 key:@"modelCacheURLIdentifier"];
      if (v18)
      {
        [modelCopy setCacheURLIdentifier:v18];
      }

      v19 = [(_ANEVirtualClient *)self getModelAttribute:v43];
      [modelCopy updateModelAttributes:v19 state:2];
      v20 = gLogger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compileModel:options:qos:error:];
      }
    }

    if (error && v50)
    {
      IOSurfaceLock(buffer, 0, 0);
      BaseAddress = IOSurfaceGetBaseAddress(buffer);
      v22 = objc_alloc(MEMORY[0x1E695DEF0]);
      v39 = [v22 initWithBytes:BaseAddress length:v50];
      v23 = MEMORY[0x1E695DFD8];
      v53[0] = objc_opt_class();
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:1];
      v37 = [v23 setWithArray:v24];

      v42 = 0;
      v25 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v39 error:&v42];
      v26 = v42;
      if (v26)
      {
        v27 = gLogger;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient compileModel:options:qos:error:];
        }
      }

      v28 = [v25 decodeObjectOfClasses:v37 forKey:{*MEMORY[0x1E696A508], v37}];
      IOSurfaceUnlock(buffer, 0, 0);
      v29 = MEMORY[0x1E696ABC0];
      v30 = +[_ANEStrings errorDomainVirtIO];
      v31 = v49;
      v51 = *MEMORY[0x1E696A578];
      v52 = v28;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v33 = [v29 errorWithDomain:v30 code:v31 userInfo:v32];

      v34 = v33;
      *error = v33;
    }

    [(_ANEVirtualClient *)self updateError:v43 error:error];
    [(_ANEVirtualClient *)self releaseIOSurfaces:v43];
    if (v12)
    {
      CFRelease(v12);
    }

    v35 = v48 != 0;
    goto LABEL_27;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  v48 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = *MEMORY[0x1E695E480];
  v15 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  [(_ANEVirtualClient *)self copyAllModelFiles:modelCopy dictionary:Mutable ioSurfaceRefs:v15];
  [(_ANEVirtualClient *)self copyModelMetaData:modelCopy options:optionsCopy dictionary:Mutable vmData:v43];
  [(_ANEVirtualClient *)self copyOptions:optionsCopy dictionary:Mutable vmData:v43];
  [(_ANEVirtualClient *)self copyModelOptionFiles:modelCopy options:optionsCopy dictionary:Mutable vmData:v43];
  [(_ANEVirtualClient *)self copyErrorValue:Mutable vmData:v43];
  v46[0] = qos;
  v16 = CFNumberCreate(v14, kCFNumberSInt32Type, v46);
  CFDictionarySetValue(Mutable, @"qos", v16);
  CFRelease(v16);
  [_ANEVirtualClient setCodeSigningIdentity:Mutable];
  [(_ANEVirtualClient *)self printDictionary:Mutable];
  v12 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:1 inDictionary:Mutable error:error];
  CFRelease(Mutable);
  [(_ANEVirtualClient *)self printDictionary:v12];
  [_ANEVirtualClient freeModelFileIOSurfaces:v15];
  CFRelease(v15);
  if (v12)
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient compileModel:options:qos:error:];
    }

    [_ANEVirtualClient copyDictionaryDataToStruct:&v47 dictionary:v12];
    goto LABEL_11;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v43];
  v35 = 0;
LABEL_27:

  return v35;
}

+ (void)printStruct:(VirtANEModel *)struct
{
  if (struct)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      +[_ANEVirtualClient printStruct:];
    }
  }
}

- (BOOL)transferFileToHostWithPath:(id)path withChunkSize:(unsigned int)size withUUID:(id)d withModelInputPath:(id)inputPath overWriteFileNameWith:(id)with
{
  v97 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  inputPathCopy = inputPath;
  withCopy = with;
  v77 = 0;
  v78 = &v77;
  v79 = 0x4012000000;
  v80 = __Block_byref_object_copy__2;
  v81 = __Block_byref_object_dispose__2;
  v82 = &unk_1AD2A047D;
  v83 = 0;
  v84 = 0;
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = __112___ANEVirtualClient_transferFileToHostWithPath_withChunkSize_withUUID_withModelInputPath_overWriteFileNameWith___block_invoke;
  v76[3] = &unk_1E79BA3B8;
  v76[4] = &v77;
  v15 = MEMORY[0x1B26F37D0](v76);
  if (!size)
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_11;
  }

  if (!pathCopy || ![pathCopy length])
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

LABEL_11:

LABEL_18:
    v20 = 0;
    goto LABEL_19;
  }

  v75 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v17 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v75];

  if ((v17 & 1) == 0)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_17;
  }

  if (v75 == 1)
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

LABEL_17:

    goto LABEL_18;
  }

  v96 = 0;
  memset(v95, 0, sizeof(v95));
  inputStruct = 0u;
  v94 = 0u;
  v22 = +[_ANEStrings hwxExtension];
  v23 = [pathCopy hasSuffix:v22];

  if (v23)
  {
    v24 = 1;
  }

  else
  {
    v25 = +[_ANEStrings binExtension];
    v26 = [pathCopy hasSuffix:v25];

    if (!v26)
    {
      v95[0] = 0;
      goto LABEL_26;
    }

    v24 = 2;
  }

  v95[0] = v24;
LABEL_26:
  lastPathComponent = [pathCopy lastPathComponent];
  if (withCopy && [withCopy length])
  {
    v28 = withCopy;

    lastPathComponent = v28;
  }

  else if (!lastPathComponent)
  {
    goto LABEL_34;
  }

  if (![lastPathComponent length])
  {
LABEL_34:
    v29 = gLogger;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      v30 = v29;
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      goto LABEL_36;
    }

LABEL_44:
    v20 = 0;
    goto LABEL_69;
  }

  if (([lastPathComponent lengthOfBytesUsingEncoding:4] + 1) >= 0x101)
  {
    v29 = gLogger;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      v30 = v29;
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
LABEL_36:
      v20 = 0;
      v29 = v30;
      goto LABEL_69;
    }

    goto LABEL_44;
  }

  if (([lastPathComponent getCString:&v95[1] maxLength:256 encoding:4] & 1) == 0)
  {
    v29 = gLogger;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      v30 = v29;
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      goto LABEL_36;
    }

    goto LABEL_44;
  }

  v68 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:pathCopy];
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v74 = 0;
  v67 = [defaultManager2 attributesOfItemAtPath:pathCopy error:&v74];
  v69 = v74;

  if (v69)
  {
    v32 = gLogger;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    v20 = 0;
    goto LABEL_68;
  }

  fileSize = [v67 fileSize];
  v33 = gLogger;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v59 = NSStringFromSelector(a2);
    *buf = 138413058;
    v86 = v59;
    v87 = 2048;
    *v88 = fileSize;
    *&v88[8] = 1024;
    *&v88[10] = size;
    v89 = 2112;
    *v90 = pathCopy;
    _os_log_debug_impl(&dword_1AD246000, v33, OS_LOG_TYPE_DEBUG, "%@: Begin file transfer to host with fileSize=%llu chunkSize=%u at path=%@", buf, 0x26u);
  }

  v34 = +[_ANEVirtualClient getCodeSigningIdentity];
  v35 = v34;
  v62 = v34;
  if (!v34)
  {
    v36 = gLogger;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_66;
  }

  if (([v34 lengthOfBytesUsingEncoding:4]+ 1) >= 0x81)
  {
    v36 = gLogger;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

LABEL_66:

    v20 = 0;
    goto LABEL_67;
  }

  if (([v35 getCString:&v95[257] maxLength:128 encoding:4]& 1) == 0)
  {
    v36 = gLogger;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
    }

    goto LABEL_66;
  }

  if (inputPathCopy && [inputPathCopy length])
  {
    v37 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:pathCopy requiringSecureCoding:1 error:0];
    v38 = v37;
    if (!v37)
    {
      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }

    v39 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v37, [v37 length], &inputStruct + 8);
    v78[6] = v39;
    *(&v94 + 1) = [v38 length];
  }

  if (v95[0] == 2)
  {
    if (!dCopy)
    {
      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }

    if (([dCopy lengthOfBytesUsingEncoding:4] + 1) >= 0x26)
    {
      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }

    if (([dCopy getCString:&v95[385] maxLength:37 encoding:4] & 1) == 0)
    {
      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
      }

      goto LABEL_66;
    }
  }

  else
  {
    v95[385] = 0;
  }

  v60 = 0;
  v61 = 0;
  v20 = 1;
  while (fileSize > v61)
  {
    context = objc_autoreleasePoolPush();
    v40 = gLogger;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v66 = v40;
      v52 = NSStringFromSelector(a2);
      *buf = 138413314;
      v86 = v52;
      v87 = 1024;
      *v88 = v60;
      *&v88[4] = 2048;
      *&v88[6] = fileSize;
      v89 = 1024;
      *v90 = size;
      *&v90[4] = 2112;
      *&v90[6] = pathCopy;
      _os_log_debug_impl(&dword_1AD246000, v66, OS_LOG_TYPE_DEBUG, "%@: Transferring chunkSeq=%d to host with fileSize=%llu chunkSize=%u at path=%@", buf, 0x2Cu);

      v40 = v66;
    }

    if (fileSize - v61 >= size)
    {
      sizeCopy = size;
    }

    else
    {
      sizeCopy = fileSize - v61;
    }

    v42 = [v68 readDataOfLength:sizeCopy];
    v43 = v42;
    v65 = v42;
    if (!v42)
    {
      v48 = gLogger;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v53 = NSStringFromSelector(a2);
        *buf = 138413314;
        v86 = v53;
        v87 = 1024;
        *v88 = v60;
        *&v88[4] = 2048;
        *&v88[6] = fileSize;
        v89 = 1024;
        *v90 = size;
        *&v90[4] = 2112;
        *&v90[6] = pathCopy;
        _os_log_error_impl(&dword_1AD246000, v48, OS_LOG_TYPE_ERROR, "%@: ERROR failed to get segment=%d for fileSize=%llu chunkSize=%u at path=%@", buf, 0x2Cu);
      }

      goto LABEL_90;
    }

    v44 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v42, [v42 length], &inputStruct + 4);
    v78[7] = v44;
    if (v44)
    {
      LODWORD(inputStruct) = v60;
      *&v94 = [v43 length];
      outputStruct = 0;
      outputStructCnt = 1;
      v45 = IOConnectCallMethod(self->_connect, 0x16u, 0, 0, &inputStruct, 0x1C8uLL, 0, 0, &outputStruct, &outputStructCnt);
      if (v45)
      {
        v46 = v45;
        v47 = gLogger;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          v54 = NSStringFromSelector(a2);
          *buf = 138412546;
          v86 = v54;
          v87 = 1024;
          *v88 = v46;
          _os_log_error_impl(&dword_1AD246000, v47, OS_LOG_TYPE_ERROR, "%@: ERROR kernel call failed with ret=0x%x", buf, 0x12u);
        }

        goto LABEL_90;
      }

      if (outputStruct)
      {
        v51 = v78[7];
        if (v51)
        {
          CFRelease(v51);
          v78[7] = 0;
        }

        *&v94 = 0;
        DWORD1(inputStruct) = 0;
        v61 += [v43 length];
        ++v60;
        v50 = 1;
        goto LABEL_91;
      }

      v49 = gLogger;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v57 = NSStringFromSelector(a2);
        v58 = [v65 length];
        *buf = 138413570;
        v86 = v57;
        v87 = 1024;
        *v88 = v60;
        *&v88[4] = 2048;
        *&v88[6] = fileSize;
        v89 = 1024;
        *v90 = size;
        *&v90[4] = 2048;
        *&v90[6] = v58;
        v91 = 2112;
        v92 = pathCopy;
        _os_log_error_impl(&dword_1AD246000, v49, OS_LOG_TYPE_ERROR, "%@: ERROR failed to transfer segment=%d for fileSize=%llu chunkSize=%u chunkDataLength=%llu at path=%@", buf, 0x36u);
      }
    }

    else
    {
      v49 = gLogger;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v55 = NSStringFromSelector(a2);
        v56 = [v65 length];
        *buf = 138413570;
        v86 = v55;
        v87 = 1024;
        *v88 = v60;
        *&v88[4] = 2048;
        *&v88[6] = fileSize;
        v89 = 1024;
        *v90 = size;
        *&v90[4] = 2048;
        *&v90[6] = v56;
        v91 = 2112;
        v92 = pathCopy;
        _os_log_error_impl(&dword_1AD246000, v49, OS_LOG_TYPE_ERROR, "%@: ERROR failed to write segment=%d to IOSurface for fileSize=%llu chunkSize=%u chunkDataLength=%llu at path=%@", buf, 0x36u);
      }
    }

LABEL_90:
    v20 = 0;
    v50 = 0;
LABEL_91:

    objc_autoreleasePoolPop(context);
    if ((v50 & 1) == 0)
    {
      break;
    }
  }

  v15[2](v15);
LABEL_67:
  v32 = v62;
LABEL_68:

  v29 = v68;
LABEL_69:

LABEL_19:
  _Block_object_dispose(&v77, 8);

  return v20 & 1;
}

- (BOOL)loadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v6 = (MEMORY[0x1EEE9AC00])(self, a2, model, options, *&qos, error);
  v57 = v7;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = v6;
  v74 = *MEMORY[0x1E69E9840];
  v16 = v15;
  v58 = v11;
  v17 = gLogger;
  v18 = v17;
  if (!v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(v13);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    goto LABEL_12;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(v13);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient loadModel:options:qos:error:];
  }

  bzero(v66, 0x1728uLL);
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (([v14 negotiatedCapabilityMask] & 4) == 0)
  {
    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v54 = NSStringFromSelector(v13);
      buf = 138412802;
      v61 = v54;
      v62 = 1024;
      negotiatedDataInterfaceVersion = [v14 negotiatedDataInterfaceVersion];
      v64 = 2048;
      negotiatedCapabilityMask = [v14 negotiatedCapabilityMask];
      _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: Host too old, model load not supported, negotiatedDataInterfaceVersion=0x%x negotiatedCapabilityMask=0x%llx", &buf, 0x1Cu);
    }

    if (v57)
    {
      v21 = NSStringFromSelector(v13);
      *v57 = [_ANEErrors hostTooOld:v21];
    }

    goto LABEL_12;
  }

  v59 = 0;
  if ([_ANEVirtualClient shouldUsePrecompiledPath:v16 options:v58 shouldUseChunking:&v59 chunkingThreshold:209715200]&& v59 == 1)
  {
    if ([v14 negotiatedDataInterfaceVersion] <= 0x20405)
    {
      v24 = gLogger;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(v13);
        objc_claimAutoreleasedReturnValue();
        [v14 negotiatedDataInterfaceVersion];
        [_ANEVirtualClient loadModel:options:qos:error:];
      }

      if (v57)
      {
        v25 = NSStringFromSelector(v13);
        *v57 = [_ANEErrors guestToHostInterfaceTooOld:v25];
      }

      goto LABEL_12;
    }

    modelURL = [v16 modelURL];
    path = [modelURL path];

    if (([v14 transferFileToHostWithPath:path withChunkSize:209715200 withUUID:0 withModelInputPath:path overWriteFileNameWith:0] & 1) == 0)
    {
      v52 = gLogger;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(v13);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient loadModel:options:qos:error:];
      }

      if (v57)
      {
        v53 = NSStringFromSelector(v13);
        *v57 = [_ANEErrors virtualizationDataError:v53];
      }

      goto LABEL_12;
    }

    v48 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:1];
    [(__CFDictionary *)Mutable setObject:v48 forKey:@"fileDataAlreadySent"];

    lastPathComponent = [path lastPathComponent];
    [(__CFDictionary *)Mutable setObject:lastPathComponent forKey:@"genericFileName"];

    v26 = 1;
  }

  else
  {
    v26 = 0;
  }

  v69 = 0;
  v27 = *MEMORY[0x1E695E480];
  v28 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if ((v26 & 1) == 0)
  {
    modelURL2 = [v16 modelURL];
    v30 = modelURL2 == 0;

    if (!v30 && ([v14 copyAllModelFiles:v16 dictionary:Mutable ioSurfaceRefs:v28] & 1) == 0)
    {
      CFRelease(Mutable);
      CFRelease(v28);
LABEL_12:
      v22 = 0;
      goto LABEL_13;
    }
  }

  getCacheURLIdentifier = [v16 getCacheURLIdentifier];
  v32 = getCacheURLIdentifier == 0;

  if (!v32)
  {
    cacheURLIdentifier = [v16 cacheURLIdentifier];

    v34 = gLogger;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(v13);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    CFDictionarySetValue(Mutable, @"modelCacheURLIdentifier", cacheURLIdentifier);
  }

  [v14 copyModelMetaData:v16 options:v58 dictionary:Mutable vmData:v66];
  [v14 copyOptions:v58 dictionary:Mutable vmData:v66];
  [v14 copyModelOptionFiles:v16 options:v58 dictionary:Mutable vmData:v66];
  [v14 copyErrorValue:Mutable vmData:v66];
  v67[0] = v9;
  v35 = CFNumberCreate(v27, kCFNumberSInt32Type, v67);
  CFDictionarySetValue(Mutable, @"qos", v35);
  CFRelease(v35);
  getCacheURLIdentifier2 = [v16 getCacheURLIdentifier];
  LODWORD(v35) = getCacheURLIdentifier2 == 0;

  if (v35)
  {
    operator new();
  }

  [_ANEVirtualClient setCodeSigningIdentity:Mutable];
  [v14 printDictionary:Mutable];
  v37 = [v14 callIOUserClientWithDictionary:2 inDictionary:Mutable error:v57];
  CFRelease(Mutable);
  [v14 printDictionary:v37];
  modelURL3 = [v16 modelURL];
  v39 = modelURL3 == 0;

  if (!v39)
  {
    [_ANEVirtualClient freeModelFileIOSurfaces:v28];
    CFRelease(v28);
  }

  if (!v37)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    [v14 releaseIOSurfaces:v66];
    goto LABEL_12;
  }

  v40 = gLogger;
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(v13);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient loadModel:options:qos:error:];
  }

  [_ANEVirtualClient copyDictionaryDataToStruct:&v68 dictionary:v37];
  v55 = [v14 getModelAttribute:v66];
  if (v69)
  {
    v41 = [_ANEVirtualClient dictionaryGetNSStringForKey:v37 key:@"modelCacheURLIdentifier"];
    if (v41)
    {
      [v16 setCacheURLIdentifier:v41];
    }

    [v16 updateModelAttributes:v55 state:v73 programHandle:v70 intermediateBufferHandle:v71 queueDepth:{v72, v55}];
    v42 = [_ANEProgramForEvaluation programWithHandle:v70 intermediateBufferHandle:v71 queueDepth:v72];
    [v16 setProgram:v42];

    v43 = [_ANEDeviceController controllerWithProgramHandle:v70];
    v44 = [_ANEProgramIOSurfacesMapper mapperWithController:v43];
    [v16 setMapper:v44];

    v50 = gLogger;
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(v13);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }
  }

  else
  {
    v45 = gLogger;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(v13);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    [v16 updateModelAttributes:v55 state:5];
  }

  [v14 updateError:v66 error:{v57, v55}];
  [v14 releaseIOSurfaces:v66];
  CFRelease(v37);
  v51 = gLogger;
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(v13);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient loadModel:options:qos:error:];
  }

  v22 = v69 != 0;
LABEL_13:

  return v22;
}

- (BOOL)loadModelNewInstance:(id)instance options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)error
{
  v161 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  optionsCopy = options;
  paramsCopy = params;
  v107 = paramsCopy;
  v108 = instanceCopy;
  if (instanceCopy)
  {
    if (paramsCopy)
    {
      v106 = [optionsCopy objectForKeyedSubscript:kANEFBaseModelIdentifierKey[0]];
      if (v106)
      {
        if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]<= 0x20405)
        {
          v11 = [(_ANEVirtualClient *)self loadModelNewInstanceLegacy:instanceCopy options:optionsCopy modelInstParams:v107 qos:qos error:error];
LABEL_177:

          goto LABEL_178;
        }

        getCacheURLIdentifier = [instanceCopy getCacheURLIdentifier];

        v17 = gLogger;
        v18 = v17;
        if (getCacheURLIdentifier)
        {
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
          }

          uUID = [instanceCopy UUID];
          v20 = uUID == 0;

          if (v20)
          {
            [MEMORY[0x1E696AFB0] UUID];
          }

          else
          {
            [instanceCopy UUID];
          }
          v21 = ;
          uUIDString = [v21 UUIDString];

          v22 = gLogger;
          v23 = v22;
          if (!uUIDString)
          {
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
            }

            if (error)
            {
              v25 = NSStringFromSelector(a2);
              [_ANEErrors dataNotFoundForMethod:v25];
              *error = v11 = 0;
              goto LABEL_175;
            }

            v11 = 0;
LABEL_176:

            goto LABEL_177;
          }

          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v80 = NSStringFromSelector(a2);
            procedureArray = [v107 procedureArray];
            *buf = 138412546;
            *&buf[4] = v80;
            *&buf[12] = 2048;
            *&buf[14] = [procedureArray count];
            _os_log_debug_impl(&dword_1AD246000, v23, OS_LOG_TYPE_DEBUG, "%@: Procedures to load=%lu", buf, 0x16u);
          }

          v123 = objc_alloc_init(MEMORY[0x1E695DF70]);
          v143 = 0u;
          v144 = 0u;
          v141 = 0u;
          v142 = 0u;
          obj = [v107 procedureArray];
          v24 = [obj countByEnumeratingWithState:&v141 objects:v160 count:16];
          if (!v24)
          {

            v25 = 0;
            goto LABEL_105;
          }

          v122 = 0;
          v117 = 0;
          v25 = 0;
          v120 = 1;
          v112 = *v142;
          v118 = *MEMORY[0x1E696A3B8];
LABEL_36:
          v116 = 0;
          v113 = v24;
          while (1)
          {
            if (*v142 != v112)
            {
              objc_enumerationMutation(obj);
            }

            v26 = *(*(&v141 + 1) + 8 * v116);
            v137 = 0u;
            v138 = 0u;
            v139 = 0u;
            v140 = 0u;
            weightArray = [v26 weightArray];
            v27 = [weightArray countByEnumeratingWithState:&v137 objects:v159 count:16];
            if (v27)
            {
              break;
            }

LABEL_95:

            ++v117;
            if (++v116 == v113)
            {
              v24 = [obj countByEnumeratingWithState:&v141 objects:v160 count:16];
              if (!v24)
              {

                if ((v120 & 1) == 0)
                {
                  if (error)
                  {
                    v64 = v25;
                    v11 = 0;
                    *error = v25;
                  }

                  else
                  {
                    v11 = 0;
                  }

LABEL_174:

LABEL_175:
                  goto LABEL_176;
                }

LABEL_105:
                v127 = 0;
                v128 = &v127;
                v129 = 0x5812000000;
                v130 = __Block_byref_object_copy__47;
                v131 = __Block_byref_object_dispose__48;
                v132 = &unk_1AD2A047D;
                v133 = 0u;
                v134 = 0u;
                v135 = 0;
                v126[0] = MEMORY[0x1E69E9820];
                v126[1] = 3221225472;
                v126[2] = __76___ANEVirtualClient_loadModelNewInstance_options_modelInstParams_qos_error___block_invoke;
                v126[3] = &unk_1E79BA3B8;
                v126[4] = &v127;
                v65 = MEMORY[0x1B26F37D0](v126);
                v158 = 0;
                memset(v157, 0, sizeof(v157));
                memset(v156, 0, sizeof(v156));
                v155 = 0u;
                memset(buf, 0, sizeof(buf));
                if (([uUIDString lengthOfBytesUsingEncoding:4] + 1) >= 0x26)
                {
                  v66 = gLogger;
                  if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    v67 = v66;
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                    goto LABEL_126;
                  }

LABEL_141:
                  v11 = 0;
LABEL_173:

                  _Block_object_dispose(&v127, 8);
                  goto LABEL_174;
                }

                if (([uUIDString getCString:v157 maxLength:37 encoding:4] & 1) == 0)
                {
                  v66 = gLogger;
                  if (!os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_141;
                  }

                  NSStringFromSelector(a2);
                  objc_claimAutoreleasedReturnValue();
                  v67 = v66;
                  [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
LABEL_126:
                  v11 = 0;
                  v66 = v67;
                  goto LABEL_173;
                }

                *&buf[20] = qos;
                getCacheURLIdentifier2 = [v108 getCacheURLIdentifier];
                v69 = [getCacheURLIdentifier2 dataUsingEncoding:4];

                if (!v69)
                {
                  v82 = gLogger;
                  if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                  }

                  if (error)
                  {
                    v75 = NSStringFromSelector(a2);
                    [_ANEErrors dataNotFoundForMethod:v75];
                    *error = v11 = 0;
                    goto LABEL_171;
                  }

                  v11 = 0;
LABEL_172:
                  v66 = v69;
                  goto LABEL_173;
                }

                v70 = [(_ANEVirtualClient *)self copyToIOSurface:v69 length:[v69 length] ioSID:&buf[4]];
                v128[7] = v70;
                if (v70 && *&buf[4])
                {
                  *&buf[32] = [v69 length];
                  v71 = [(_ANEVirtualClient *)self copyDictionaryToIOSurface:optionsCopy copiedDataSize:&buf[40] createdIOSID:&buf[8]];
                  v128[8] = v71;
                  if (v71 && *&buf[8])
                  {
                    v72 = [_ANEVirtualClient createIOSurface:256 ioSID:buf | 0xC];
                    v128[9] = v72;
                    *&v155 = 256;
                    v73 = [_ANEVirtualClient createIOSurface:0x100000 ioSID:&buf[16]];
                    v128[10] = v73;
                    *(&v155 + 1) = 0x100000;
                    v125 = 0;
                    v74 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v107 requiringSecureCoding:1 error:&v125];
                    v75 = v125;
                    if (v74)
                    {
                      v76 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v74, [v74 length], buf);
                      v128[6] = v76;
                      if (v76 && *buf)
                      {
                        *&buf[24] = [v74 length];
                        v77 = +[_ANEVirtualClient getCodeSigningIdentity];
                        v78 = v77;
                        if (!v77)
                        {
                          v89 = gLogger;
                          if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                          {
                            NSStringFromSelector(a2);
                            objc_claimAutoreleasedReturnValue();
                            [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
                          }

                          if (error)
                          {
                            v90 = NSStringFromSelector(a2);
                            *error = [_ANEErrors dataNotFoundForMethod:v90];
                          }

                          goto LABEL_168;
                        }

                        if (([v77 lengthOfBytesUsingEncoding:4] + 1) >= 0x81)
                        {
                          v79 = gLogger;
                          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
                          {
                            NSStringFromSelector(a2);
                            objc_claimAutoreleasedReturnValue();
                            [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
                          }

                          if (error)
                          {
                            goto LABEL_167;
                          }

                          goto LABEL_168;
                        }

                        if ([v78 getCString:v156 maxLength:128 encoding:4])
                        {
                          v152 = 0u;
                          v153 = 0u;
                          outputStruct = 0u;
                          v124 = 48;
                          v91 = IOConnectCallMethod(self->_connect, 0x17u, 0, 0, buf, 0xE8uLL, 0, 0, &outputStruct, &v124);
                          if (v91)
                          {
                            v92 = gLogger;
                            if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
                            {
                              NSStringFromSelector(a2);
                              objc_claimAutoreleasedReturnValue();
                              [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                            }

                            if (!error)
                            {
                              goto LABEL_168;
                            }

                            v93 = NSStringFromSelector(a2);
                            v94 = [_ANEErrors virtualizationKernelError:v93 kernelErrorCode:v91];
LABEL_186:
                            v11 = 0;
                            *error = v94;
                          }

                          else
                          {
                            if ((outputStruct & 1) == 0)
                            {
                              if (!error)
                              {
                                goto LABEL_168;
                              }

                              v93 = NSStringFromSelector(a2);
                              v94 = [_ANEErrors virtualizationHostError:v93];
                              goto LABEL_186;
                            }

                            v93 = [_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:v128[10] withArchivedDataSize:*(&v153 + 1)];
                            if (v93)
                            {
                              v65[2](v65);
                              [v108 updateModelAttributes:v93 state:HIDWORD(v152) programHandle:*(&outputStruct + 1) intermediateBufferHandle:v152 queueDepth:SBYTE8(v152)];
                              v99 = [_ANEProgramForEvaluation programWithHandle:*(&outputStruct + 1) intermediateBufferHandle:v152 queueDepth:SBYTE8(v152)];
                              [v108 setProgram:v99];

                              v100 = [_ANEDeviceController controllerWithProgramHandle:*(&outputStruct + 1)];
                              v101 = [_ANEProgramIOSurfacesMapper mapperWithController:v100];
                              [v108 setMapper:v101];

                              v102 = gLogger;
                              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
                              {
                                v104 = NSStringFromSelector(a2);
                                *v145 = 138412802;
                                v146 = v104;
                                v147 = 1024;
                                v148 = outputStruct;
                                v149 = 2112;
                                v150 = v108;
                                _os_log_debug_impl(&dword_1AD246000, v102, OS_LOG_TYPE_DEBUG, "%@: END loadModelNewInstance success=%d updatedModel=%@", v145, 0x1Cu);
                              }

                              v11 = outputStruct;
                            }

                            else
                            {
                              v103 = gLogger;
                              if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
                              {
                                NSStringFromSelector(a2);
                                objc_claimAutoreleasedReturnValue();
                                [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                              }

                              v11 = outputStruct;
                            }
                          }
                        }

                        else
                        {
                          v96 = gLogger;
                          if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                          {
                            NSStringFromSelector(a2);
                            objc_claimAutoreleasedReturnValue();
                            [_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:];
                          }

                          if (error)
                          {
LABEL_167:
                            v97 = NSStringFromSelector(a2);
                            *error = [_ANEErrors virtualizationDataError:v97];
                          }

LABEL_168:
                          v11 = 0;
                        }

LABEL_170:
LABEL_171:

                        goto LABEL_172;
                      }

                      v88 = gLogger;
                      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
                      {
                        NSStringFromSelector(a2);
                        objc_claimAutoreleasedReturnValue();
                        [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                      }

                      if (error)
                      {
LABEL_162:
                        v95 = NSStringFromSelector(a2);
                        *error = [_ANEErrors dataNotFoundForMethod:v95];
                      }
                    }

                    else
                    {
                      v86 = gLogger;
                      if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
                      {
                        NSStringFromSelector(a2);
                        objc_claimAutoreleasedReturnValue();
                        [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                      }

                      if (error)
                      {
                        if (!v75)
                        {
                          goto LABEL_162;
                        }

                        v87 = v75;
                        *error = v75;
                      }
                    }

                    v65[2](v65);
                    v11 = 0;
                    goto LABEL_170;
                  }

                  v84 = gLogger;
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                  }

                  if (error)
                  {
LABEL_139:
                    v85 = NSStringFromSelector(a2);
                    *error = [_ANEErrors dataNotFoundForMethod:v85];
                  }
                }

                else
                {
                  v83 = gLogger;
                  if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
                  {
                    NSStringFromSelector(a2);
                    objc_claimAutoreleasedReturnValue();
                    [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
                  }

                  if (error)
                  {
                    goto LABEL_139;
                  }
                }

                v66 = v69;
                v65[2](v65);
                goto LABEL_141;
              }

              goto LABEL_36;
            }
          }

          v28 = *v138;
LABEL_41:
          v29 = 0;
          while (1)
          {
            if (*v138 != v28)
            {
              objc_enumerationMutation(weightArray);
            }

            v30 = *(*(&v137 + 1) + 8 * v29);
            v31 = objc_autoreleasePoolPush();
            weightURL = [v30 weightURL];
            path = [weightURL path];

            if ([v123 containsObject:path])
            {
              v34 = gLogger;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v48 = NSStringFromSelector(a2);
                *buf = 138413058;
                *&buf[4] = v48;
                *&buf[12] = 1024;
                *&buf[14] = v117;
                *&buf[18] = 1024;
                *&buf[20] = v122;
                *&buf[24] = 2112;
                *&buf[26] = path;
                _os_log_debug_impl(&dword_1AD246000, v34, OS_LOG_TYPE_DEBUG, "%@: For procedure=%u weight=%u weight file already transferred at path=%@", buf, 0x22u);
              }

              v35 = 5;
              goto LABEL_71;
            }

            defaultManager = [MEMORY[0x1E696AC08] defaultManager];
            v136 = v25;
            v34 = [defaultManager attributesOfItemAtPath:path error:&v136];
            v37 = v136;

            if (v34)
            {
              if (!v37)
              {
                break;
              }
            }

            v43 = gLogger;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v54 = NSStringFromSelector(a2);
              *buf = 138412802;
              *&buf[4] = v54;
              *&buf[12] = 2112;
              *&buf[14] = v37;
              *&buf[22] = 2112;
              *&buf[24] = path;
              _os_log_error_impl(&dword_1AD246000, v43, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, error=%@ trying to get attributes of weight file at path=%@!", buf, 0x20u);
            }

            if (!v37)
            {
              v39 = NSStringFromSelector(a2);
              v25 = [_ANEErrors dataNotFoundForMethod:v39];
LABEL_69:
              v120 = 0;
              v35 = 4;
LABEL_70:

              goto LABEL_71;
            }

            v120 = 0;
            v35 = 4;
            v25 = v37;
LABEL_71:

            objc_autoreleasePoolPop(v31);
            if (v35 != 5)
            {
              if (v35)
              {
                goto LABEL_95;
              }

              ++v122;
            }

            if (v27 == ++v29)
            {
              v63 = [weightArray countByEnumeratingWithState:&v137 objects:v159 count:16];
              v27 = v63;
              if (!v63)
              {
                goto LABEL_95;
              }

              goto LABEL_41;
            }
          }

          v38 = [v34 objectForKeyedSubscript:v118];
          v39 = v38;
          if (v38 && [v38 unsignedLongLongValue])
          {
            v40 = gLogger;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              v56 = NSStringFromSelector(a2);
              *buf = 138413314;
              *&buf[4] = v56;
              *&buf[12] = 1024;
              *&buf[14] = v117;
              *&buf[18] = 1024;
              *&buf[20] = v122;
              *&buf[24] = 2112;
              *&buf[26] = v39;
              *&buf[34] = 2112;
              *&buf[36] = path;
              _os_log_debug_impl(&dword_1AD246000, v40, OS_LOG_TYPE_DEBUG, "%@: For procedure=%u transferring weight=%u transferring weight file with size=%@ at path=%@", buf, 0x2Cu);
            }

            v41 = [path rangeOfString:@".asset"];
            if (v41 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v42 = gLogger;
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                v58 = NSStringFromSelector(a2);
                *buf = 138412546;
                *&buf[4] = v58;
                *&buf[12] = 2112;
                *&buf[14] = path;
                _os_log_debug_impl(&dword_1AD246000, v42, OS_LOG_TYPE_DEBUG, "%@: using weightFile only, could not find .asset directory in path=%@!", buf, 0x16u);
              }

              if (-[_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:](self, "transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:", path, [v39 unsignedIntValue], uUIDString, 0, 0))
              {
                goto LABEL_58;
              }

              v50 = gLogger;
              if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
              {
                v60 = NSStringFromSelector(a2);
                *buf = 138412546;
                *&buf[4] = v60;
                *&buf[12] = 2112;
                *&buf[14] = path;
                _os_log_error_impl(&dword_1AD246000, v50, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not transfer file at path=%@!", buf, 0x16u);
              }

              v45 = NSStringFromSelector(a2);
              v46 = [_ANEErrors virtualizationDataError:v45];
              goto LABEL_66;
            }

            v47 = [path rangeOfString:@"/" options:4 range:{0, v41}];
            if (v47 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v49 = [path substringFromIndex:v47 + 1];
              v45 = v49;
              if (v49 && [v49 length])
              {
                if (-[_ANEVirtualClient transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:](self, "transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:", path, [v39 unsignedIntValue], uUIDString, 0, v45))
                {

LABEL_58:
                  [v123 addObject:path];
                  v25 = 0;
                  v35 = 0;
                  goto LABEL_70;
                }

                v57 = gLogger;
                if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                {
                  v62 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  *&buf[4] = v62;
                  *&buf[12] = 2112;
                  *&buf[14] = path;
                  _os_log_error_impl(&dword_1AD246000, v57, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not transfer file at path=%@!", buf, 0x16u);
                }

                v52 = NSStringFromSelector(a2);
                v53 = [_ANEErrors virtualizationDataError:v52];
              }

              else
              {
                v51 = gLogger;
                if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
                {
                  v61 = NSStringFromSelector(a2);
                  *buf = 138412546;
                  *&buf[4] = v61;
                  *&buf[12] = 2112;
                  *&buf[14] = path;
                  _os_log_error_impl(&dword_1AD246000, v51, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, get overWriteFileName from path=%@!", buf, 0x16u);
                }

                v52 = NSStringFromSelector(a2);
                v53 = [_ANEErrors dataNotFoundForMethod:v52];
              }

              v25 = v53;

LABEL_67:
              goto LABEL_69;
            }

            v44 = gLogger;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v59 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v59;
              *&buf[12] = 2112;
              *&buf[14] = path;
              _os_log_error_impl(&dword_1AD246000, v44, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not get complete name of .asset directory in path=%@!", buf, 0x16u);
            }
          }

          else
          {
            v44 = gLogger;
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              v55 = NSStringFromSelector(a2);
              *buf = 138412546;
              *&buf[4] = v55;
              *&buf[12] = 2112;
              *&buf[14] = path;
              _os_log_error_impl(&dword_1AD246000, v44, OS_LOG_TYPE_ERROR, "%@: ERROR loadModelNewInstance failed, could not get fileSize for file at path=%@!", buf, 0x16u);
            }
          }

          v45 = NSStringFromSelector(a2);
          v46 = [_ANEErrors dataNotFoundForMethod:v45];
LABEL_66:
          v25 = v46;
          goto LABEL_67;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
        }

        if (error)
        {
          uUIDString = NSStringFromSelector(a2);
          v15 = [_ANEErrors dataNotFoundForMethod:?];
          goto LABEL_28;
        }
      }

      else
      {
        v14 = gLogger;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
        }

        if (error)
        {
          uUIDString = NSStringFromSelector(a2);
          v15 = [_ANEErrors baseModelIdentifierNotFoundForNewInstanceMethod:?];
LABEL_28:
          v11 = 0;
          *error = v15;
          goto LABEL_176;
        }
      }

      v11 = 0;
      goto LABEL_177;
    }

    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModelNewInstance:options:modelInstParams:qos:error:];
    }

    if (error)
    {
LABEL_13:
      v106 = NSStringFromSelector(a2);
      [_ANEErrors invalidModelInstanceErrorForMethod:?];
      *error = v11 = 0;
      goto LABEL_177;
    }
  }

  else
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    if (error)
    {
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_178:

  return v11;
}

- (BOOL)loadModelNewInstanceLegacy:(id)legacy options:(id)options modelInstParams:(id)params qos:(unsigned int)qos error:(id *)error
{
  v7 = (MEMORY[0x1EEE9AC00])(self, a2, legacy, options, params, *&qos, error);
  v38 = v9;
  aSelector = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = v7;
  v56 = *MEMORY[0x1E69E9840];
  v43 = v17;
  v41 = v15;
  v42 = v13;
  LODWORD(v15) = [v16 negotiatedDataInterfaceVersion];
  v18 = gLogger;
  v19 = v18;
  if (v15 >> 10 <= 0x80)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModelNewInstanceLegacy:options:modelInstParams:qos:error:];
    }

LABEL_5:
    v20 = 0;
    goto LABEL_26;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v36 = NSStringFromSelector(aSelector);
    *v44 = 138412802;
    v45 = v36;
    v46 = 2112;
    v47 = v43;
    v48 = 2112;
    v49 = v41;
    _os_log_debug_impl(&dword_1AD246000, v19, OS_LOG_TYPE_DEBUG, "%@:ANEVirtualClient loadModelNewInstance Model=%@ options=%@\n", v44, 0x20u);
  }

  bzero(v44, 0x1728uLL);
  if (([v16 negotiatedCapabilityMask] & 4) != 0)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient loadModelNewInstanceLegacy:options:modelInstParams:qos:error:];
    }

    v51 = 0;
    theDict = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v26 = *MEMORY[0x1E695E480];
    cf = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    modelURL = [v43 modelURL];
    v28 = modelURL == 0;

    if (v28 || ([v16 copyAllModelFiles:v43 dictionary:theDict ioSurfaceRefs:cf] & 1) != 0)
    {
      getCacheURLIdentifier = [v43 getCacheURLIdentifier];
      v30 = getCacheURLIdentifier == 0;

      if (!v30)
      {
        cacheURLIdentifier = [v43 cacheURLIdentifier];

        v32 = gLogger;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(aSelector);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient loadModel:options:qos:error:];
        }

        CFDictionarySetValue(theDict, @"modelCacheURLIdentifier", cacheURLIdentifier);
      }

      [v16 copyModelMetaData:v43 options:v41 dictionary:theDict vmData:v44];
      [v16 copyOptions:v41 dictionary:theDict vmData:v44];
      [v16 copyModelOptionFiles:v43 options:v41 dictionary:theDict vmData:v44];
      [v16 copyErrorValue:theDict vmData:v44];
      v50[0] = v11;
      v33 = CFNumberCreate(v26, kCFNumberSInt32Type, v50);
      CFDictionarySetValue(theDict, @"qos", v33);
      CFRelease(v33);
      operator new();
    }

    CFRelease(theDict);
    CFRelease(cf);
    goto LABEL_5;
  }

  v21 = [v16 getModelAttribute:v44];
  if (v51)
  {
    [v43 updateModelAttributes:v21 state:v55 programHandle:v52 intermediateBufferHandle:v53 queueDepth:v54];
    v22 = [_ANEProgramForEvaluation programWithHandle:v52 intermediateBufferHandle:v53 queueDepth:v54];
    [v43 setProgram:v22];

    v23 = [_ANEDeviceController controllerWithProgramHandle:v52];
    v24 = [_ANEProgramIOSurfacesMapper mapperWithController:v23];
    [v43 setMapper:v24];

    v25 = gLogger;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }
  }

  else
  {
    v34 = gLogger;
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(aSelector);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    [v43 updateModelAttributes:v21 state:5];
  }

  [v16 updateError:v44 error:v38];
  [v16 releaseIOSurfaces:v44];
  v20 = v51 != 0;

LABEL_26:
  return v20;
}

- (BOOL)unloadModel:(id)model options:(id)options qos:(unsigned int)qos error:(id *)error
{
  v96 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v10 = gLogger;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v43 = NSStringFromSelector(a2);
    *buf = 138413058;
    v74 = v43;
    v75 = 2112;
    v76 = modelCopy;
    v77 = 2112;
    v78 = optionsCopy;
    LOWORD(v79) = 1024;
    *(&v79 + 2) = qos;
    _os_log_debug_impl(&dword_1AD246000, v10, OS_LOG_TYPE_DEBUG, "%@: Model=%@ options=%@ qos=%d\n", buf, 0x26u);
  }

  bzero(buf, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) == 0)
  {
    [(_ANEVirtualClient *)self copyErrorValue:buf];
    v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:0];
    v12 = MEMORY[0x1E696ACC8];
    v13 = [modelCopy key];
    v14 = [v13 length];
    if (v14)
    {
      path = [modelCopy key];
      modelURL = path;
    }

    else
    {
      modelURL = [modelCopy modelURL];
      path = [modelURL path];
    }

    v27 = [v12 archivedDataWithRootObject:path requiringSecureCoding:1 error:0];
    if (!v14)
    {
    }

    v79 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v11, [v11 length], v93);
    v80 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v27, [v27 length], v84);
    v82 = 0;
    v83 = 0;
    string_id = [modelCopy string_id];
    programHandle = [modelCopy programHandle];
    intermediateBufferHandle = [modelCopy intermediateBufferHandle];
    v89[0] = [modelCopy queueDepth];
    v90 = 0;
    perfStatsMask = [modelCopy perfStatsMask];
    qosCopy2 = qos;
    v28 = gLogger;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      *v47 = 67112192;
      v48 = v82;
      v49 = 1024;
      v50 = HIDWORD(v82);
      v51 = 1024;
      v52 = v83;
      v53 = 1024;
      v54 = v84[0];
      v55 = 2048;
      v56 = string_id;
      v57 = 2048;
      v58 = programHandle;
      v59 = 2048;
      v60 = intermediateBufferHandle;
      v61 = 1024;
      v62 = v89[0];
      v63 = 1024;
      v64 = v90;
      v65 = 1024;
      v66 = perfStatsMask;
      v67 = 1024;
      v68 = qosCopy2;
      v69 = 1024;
      v70 = v93[0];
      v71 = 1024;
      v72 = v93[413];
      _os_log_debug_impl(&dword_1AD246000, v28, OS_LOG_TYPE_DEBUG, "ANEVirtualClient virtualANEModel.ioSIDModelNet=%u virtualANEModel.ioSIDModelShape=%u virtualANEModel.ioSIDModelWeight=%u virtualANEModel.ioSIDKey=%u virtualANEModel.string_id=%lld virtualANEModel.programHandle=%lld virtualANEModel.intermediateBufferHandle=%lld virtualANEModel.queueDepth=%d virtualANEModel.ioSIDModelAttributes=%u virtualANEModel.perfStatsMask=%u virtualANEModel.qos=%u virtualANEModel.ioSIDOptions=%u virtualANEModel.ioSIDErrorValue=%u", v47, 0x5Cu);
    }

    v29 = [(_ANEVirtualClient *)self callIOUserClient:3 inParams:&v81 outParams:&v94];
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient unloadModel:options:qos:error:];
    }

LABEL_31:
    [(_ANEVirtualClient *)self updateError:buf error:error];
    [(_ANEVirtualClient *)self releaseIOSurfaces:buf];
    goto LABEL_32;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient unloadModel:options:qos:error:];
  }

  v95 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  [(_ANEVirtualClient *)self copyModelMetaData:modelCopy options:MEMORY[0x1E695E0F8] dictionary:Mutable vmData:buf];
  getCacheURLIdentifier = [modelCopy getCacheURLIdentifier];
  v19 = getCacheURLIdentifier == 0;

  if (!v19)
  {
    cacheURLIdentifier = [modelCopy cacheURLIdentifier];

    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient loadModel:options:qos:error:];
    }

    CFDictionarySetValue(Mutable, @"modelCacheURLIdentifier", cacheURLIdentifier);
  }

  [(_ANEVirtualClient *)self copyErrorValue:Mutable vmData:buf];
  [(_ANEVirtualClient *)self copyOptions:optionsCopy dictionary:Mutable vmData:buf];
  v22 = MEMORY[0x1E696ACC8];
  v23 = [modelCopy key];
  v24 = [v23 length];
  if (v24)
  {
    path2 = [modelCopy key];
    modelURL2 = path2;
  }

  else
  {
    modelURL2 = [modelCopy modelURL];
    path2 = [modelURL2 path];
  }

  v11 = [v22 archivedDataWithRootObject:path2 requiringSecureCoding:1 error:0];
  if (!v24)
  {
  }

  v80 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v11, [v11 length], v84);
  v30 = *MEMORY[0x1E695E480];
  v31 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v84);
  CFDictionarySetValue(Mutable, @"ioSIDKey", v31);
  CFRelease(v31);
  v85[0] = [v11 length];
  v32 = CFNumberCreate(v30, kCFNumberSInt64Type, v85);
  CFDictionarySetValue(Mutable, @"keyLength", v32);
  CFRelease(v32);
  string_id = [modelCopy string_id];
  v33 = CFNumberCreate(v30, kCFNumberSInt64Type, &string_id);
  CFDictionarySetValue(Mutable, @"string_id", v33);
  CFRelease(v33);
  programHandle = [modelCopy programHandle];
  v34 = CFNumberCreate(v30, kCFNumberSInt64Type, &programHandle);
  CFDictionarySetValue(Mutable, @"programHandle", v34);
  CFRelease(v34);
  intermediateBufferHandle = [modelCopy intermediateBufferHandle];
  v35 = CFNumberCreate(v30, kCFNumberSInt64Type, &intermediateBufferHandle);
  CFDictionarySetValue(Mutable, @"intermediateBufferHandle", v35);
  CFRelease(v35);
  v89[0] = [modelCopy queueDepth];
  v36 = CFNumberCreate(v30, kCFNumberSInt8Type, v89);
  CFDictionarySetValue(Mutable, @"queueDepth", v36);
  CFRelease(v36);
  perfStatsMask = [modelCopy perfStatsMask];
  v37 = CFNumberCreate(v30, kCFNumberSInt32Type, &perfStatsMask);
  CFDictionarySetValue(Mutable, @"perfStatsMask", v37);
  CFRelease(v37);
  qosCopy2 = qos;
  v38 = CFNumberCreate(v30, kCFNumberSInt32Type, &qosCopy2);
  CFDictionarySetValue(Mutable, @"qos", v38);
  CFRelease(v38);
  [(_ANEVirtualClient *)self printDictionary:Mutable];
  v39 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:3 inDictionary:Mutable error:error];
  CFRelease(Mutable);
  [(_ANEVirtualClient *)self printDictionary:v39];
  if (v39)
  {
    v40 = gLogger;
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient unloadModel:options:qos:error:];
    }

    [_ANEVirtualClient copyDictionaryDataToStruct:&v94 dictionary:v39];
    v29 = v95 == 1;
    v41 = gLogger;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient unloadModel:options:qos:error:];
    }

    CFRelease(v39);
    goto LABEL_31;
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualClient unloadModel:options:qos:error:];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:buf];

  v29 = 0;
LABEL_32:

  return v29;
}

- (BOOL)evaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos error:(id *)error
{
  v69 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  requestCopy = request;
  v16 = requestCopy;
  v58 = 0;
  v59 = &v58;
  v60 = 0x2020000000;
  v61 = 0;
  if (!modelCopy)
  {
    goto LABEL_15;
  }

  completionHandler = [requestCopy completionHandler];
  v18 = completionHandler == 0;

  if (!v18)
  {
    v36 = dispatch_queue_create("com.apple.ane.vmclient-async", 0);
    if (v36)
    {
      v37 = [objc_alloc(MEMORY[0x1E696CE08]) initWithDispatchQueue:v36];
      if (!v37 && os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient evaluateWithModel:options:request:qos:error:];
      }

      v19 = objc_opt_new();
      v34 = [_ANESharedSignalEvent signalEventWithValue:4097 symbolIndex:0 eventType:0 sharedEvent:v19, v19];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke;
      v55[3] = &unk_1E79BA3E0;
      v56 = v19;
      v20 = v16;
      v57 = v20;
      v33 = v56;
      [v56 notifyListener:v37 atValue:4097 block:v55];
      v21 = objc_opt_new();
      v35 = [_ANESharedSignalEvent signalEventWithValue:1 symbolIndex:0 eventType:0 sharedEvent:v21];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_82;
      v52[3] = &unk_1E79BA3E0;
      v22 = v21;
      v53 = v22;
      v23 = v20;
      v54 = v23;
      [v22 notifyListener:v37 atValue:1 block:v52];
      v24 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134218498;
        v64 = v34;
        v65 = 2048;
        v66 = v35;
        v67 = 2112;
        v68 = modelCopy;
        _os_log_debug_impl(&dword_1AD246000, v24, OS_LOG_TYPE_DEBUG, "[_ANEVirtualClient] completionEvent success event %p error event %p for model %@\n", buf, 0x20u);
      }

      v62[0] = v34;
      v62[1] = v35;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
      v26 = [_ANESharedEvents sharedEventsWithSignalEvents:v25 waitEvents:MEMORY[0x1E695E0F0]];

      queue = [(_ANEVirtualClient *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_90;
      block[3] = &unk_1E79BA408;
      v50 = &v58;
      block[4] = self;
      v46 = modelCopy;
      v47 = optionsCopy;
      qosCopy = qos;
      v48 = v23;
      v49 = v26;
      v28 = v26;
      dispatch_sync(queue, block);

      *(v59 + 24) = 1;
      goto LABEL_11;
    }

    v31 = gLogger;
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient evaluateWithModel:options:request:qos:error:];
    }

LABEL_15:
    v30 = 0;
    goto LABEL_16;
  }

  queue2 = [(_ANEVirtualClient *)self queue];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __65___ANEVirtualClient_evaluateWithModel_options_request_qos_error___block_invoke_2;
  v38[3] = &unk_1E79BA430;
  v42 = &v58;
  v38[4] = self;
  v39 = modelCopy;
  v40 = optionsCopy;
  qosCopy2 = qos;
  v41 = v16;
  errorCopy = error;
  dispatch_sync(queue2, v38);

LABEL_11:
  v30 = *(v59 + 24);
LABEL_16:
  _Block_object_dispose(&v58, 8);

  return v30 & 1;
}

- (BOOL)doEvaluateWithModel:(id)model options:(id)options request:(id)request qos:(unsigned int)qos completionEvent:(id)event error:(id *)error
{
  v255 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  requestCopy = request;
  eventCopy = event;
  bzero(&programHandle, 0x1AC0uLL);
  v216 = 0u;
  v217 = 0u;
  v214 = 0u;
  outputStruct = 0u;
  v207 = 0;
  v208 = &v207;
  v209 = 0x5012000000;
  v210 = __Block_byref_object_copy__91;
  v211 = __Block_byref_object_dispose__92;
  v212 = &unk_1AD2A047D;
  v213 = 0u;
  v206[0] = MEMORY[0x1E69E9820];
  v206[1] = 3221225472;
  v206[2] = __83___ANEVirtualClient_doEvaluateWithModel_options_request_qos_completionEvent_error___block_invoke;
  v206[3] = &unk_1E79BA3B8;
  v206[4] = &v207;
  v168 = MEMORY[0x1B26F37D0](v206);
  programHandle = [modelCopy programHandle];
  qosCopy = qos;
  if (optionsCopy)
  {
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:optionsCopy requiringSecureCoding:1 error:0];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 length];
      v221[1] = v14;
      if (v14)
      {
        v15 = [(_ANEVirtualClient *)self copyToIOSurface:v13 length:v14 ioSID:&v219];
        v208[8] = v15;

        goto LABEL_5;
      }

      v52 = gLogger;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
      }
    }

    else
    {
      v52 = gLogger;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
      }
    }

LABEL_128:
    v144 = 0;
    goto LABEL_129;
  }

LABEL_5:
  v204 = 0u;
  v205 = 0u;
  v202 = 0u;
  v203 = 0u;
  inputArray = [requestCopy inputArray];
  v17 = [inputArray countByEnumeratingWithState:&v202 objects:v254 count:16];
  v18 = 0;
  if (v17)
  {
    v19 = *v203;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v203 != v19)
        {
          objc_enumerationMutation(inputArray);
        }

        ID = IOSurfaceGetID([*(*(&v202 + 1) + 8 * i) ioSurface]);
        v230[v18] = ID;
        v22 = gLogger;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v23 = NSStringFromSelector(a2);
          v246 = 138412546;
          v247 = v23;
          v248 = 1024;
          *v249 = ID;
          _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "%@: request.inputArray ioSID: %u", &v246, 0x12u);
        }

        ++v18;
      }

      v17 = [inputArray countByEnumeratingWithState:&v202 objects:v254 count:16];
    }

    while (v17);
  }

  v223 = v18;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  v201 = 0u;
  inputIndexArray = [requestCopy inputIndexArray];
  v25 = 0;
  v26 = [inputIndexArray countByEnumeratingWithState:&v198 objects:v253 count:16];
  if (v26)
  {
    v27 = *v199;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v199 != v27)
        {
          objc_enumerationMutation(inputIndexArray);
        }

        v29 = *(*(&v198 + 1) + 8 * j);
        v230[v25 + 64] = [v29 unsignedIntValue];
        v30 = gLogger;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          v31 = NSStringFromSelector(a2);
          unsignedLongLongValue = [v29 unsignedLongLongValue];
          v246 = 138412546;
          v247 = v31;
          v248 = 2048;
          *v249 = unsignedLongLongValue;
          _os_log_debug_impl(&dword_1AD246000, v30, OS_LOG_TYPE_DEBUG, "%@: request.inputIndexArray : %llu", &v246, 0x16u);
        }

        ++v25;
      }

      v26 = [inputIndexArray countByEnumeratingWithState:&v198 objects:v253 count:16];
    }

    while (v26);
  }

  v224 = v25;
  v194 = 0u;
  v195 = 0u;
  v196 = 0u;
  v197 = 0u;
  outputArray = [requestCopy outputArray];
  v34 = 0;
  v35 = [outputArray countByEnumeratingWithState:&v194 objects:v252 count:16];
  if (v35)
  {
    v36 = *v195;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v195 != v36)
        {
          objc_enumerationMutation(outputArray);
        }

        v38 = IOSurfaceGetID([*(*(&v194 + 1) + 8 * k) ioSurface]);
        v230[v34 + 128] = v38;
        v39 = gLogger;
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          v40 = NSStringFromSelector(a2);
          v246 = 138412546;
          v247 = v40;
          v248 = 1024;
          *v249 = v38;
          _os_log_debug_impl(&dword_1AD246000, v39, OS_LOG_TYPE_DEBUG, "%@: request.outputArray ioSID: %u", &v246, 0x12u);
        }

        ++v34;
      }

      v35 = [outputArray countByEnumeratingWithState:&v194 objects:v252 count:16];
    }

    while (v35);
  }

  v225 = v34;
  v190 = 0u;
  v191 = 0u;
  v192 = 0u;
  v193 = 0u;
  outputIndexArray = [requestCopy outputIndexArray];
  v42 = 0;
  v43 = [outputIndexArray countByEnumeratingWithState:&v190 objects:v251 count:16];
  if (v43)
  {
    v44 = *v191;
    do
    {
      for (m = 0; m != v43; ++m)
      {
        if (*v191 != v44)
        {
          objc_enumerationMutation(outputIndexArray);
        }

        v46 = *(*(&v190 + 1) + 8 * m);
        v230[v42 + 192] = [v46 unsignedIntValue];
        v47 = gLogger;
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = NSStringFromSelector(a2);
          unsignedLongLongValue2 = [v46 unsignedLongLongValue];
          v246 = 138412546;
          v247 = v48;
          v248 = 2048;
          *v249 = unsignedLongLongValue2;
          _os_log_debug_impl(&dword_1AD246000, v47, OS_LOG_TYPE_DEBUG, "%@: request.outputIndexArray : %llu", &v246, 0x16u);
        }

        ++v42;
      }

      v43 = [outputIndexArray countByEnumeratingWithState:&v190 objects:v251 count:16];
    }

    while (v43);
  }

  v226 = v42;
  weightsBuffer = [requestCopy weightsBuffer];
  if ([weightsBuffer ioSurface])
  {
    weightsBuffer2 = [requestCopy weightsBuffer];
    HIDWORD(v219) = IOSurfaceGetID([weightsBuffer2 ioSurface]);
  }

  else
  {
    HIDWORD(v219) = 0;
  }

  v53 = gLogger;
  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
  {
    v54 = NSStringFromSelector(a2);
    [_ANEVirtualClient doEvaluateWithModel:v54 options:? request:? qos:? completionEvent:? error:?];
  }

  procedureIndex = [requestCopy procedureIndex];
  unsignedLongLongValue3 = [procedureIndex unsignedLongLongValue];

  transactionHandle = [requestCopy transactionHandle];
  unsignedLongLongValue4 = [transactionHandle unsignedLongLongValue];

  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  obj = [requestCopy perfStatsArray];
  v57 = 0;
  v58 = [obj countByEnumeratingWithState:&v186 objects:v250 count:16];
  if (v58)
  {
    v59 = *v187;
    do
    {
      for (n = 0; n != v58; ++n)
      {
        if (*v187 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = *(*(&v186 + 1) + 8 * n);
        stats = [v61 stats];
        v63 = IOSurfaceGetID([stats ioSurface]);

        v230[v57 + 256] = v63;
        v230[v57 + 320] = [v61 statType];
        v64 = gLogger;
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
        {
          v65 = NSStringFromSelector(a2);
          statType = [v61 statType];
          v246 = 138412802;
          v247 = v65;
          v248 = 1024;
          *v249 = v63;
          *&v249[4] = 2048;
          *&v249[6] = statType;
          _os_log_debug_impl(&dword_1AD246000, v64, OS_LOG_TYPE_DEBUG, "%@: ioSIDPerStats ioSID: %u statsType : %ld", &v246, 0x1Cu);
        }

        ++v57;
      }

      v58 = [obj countByEnumeratingWithState:&v186 objects:v250 count:16];
    }

    while (v58);
  }

  v227 = v57;
  v67 = [_ANEVirtualClient createIOSurface:4096 ioSID:&v220];
  v208[6] = v67;
  if (!v67)
  {
    v142 = gLogger;
    if (os_log_type_enabled(v142, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
    }

    goto LABEL_128;
  }

  v68 = [_ANEVirtualClient createIOSurface:4096 ioSID:&v220 + 4];
  v208[9] = v68;
  if (!v68)
  {
    v69 = gLogger;
    if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
    {
      v70 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v70 options:? request:? qos:? completionEvent:? error:?];
    }
  }

  sharedEvents = [requestCopy sharedEvents];
  v72 = sharedEvents == 0;

  if (!v72)
  {
    sharedEvents2 = [requestCopy sharedEvents];
    signalEvents = [sharedEvents2 signalEvents];
    v232 = [signalEvents count];

    v184 = 0u;
    v185 = 0u;
    v182 = 0u;
    v183 = 0u;
    sharedEvents3 = [requestCopy sharedEvents];
    signalEvents2 = [sharedEvents3 signalEvents];

    v77 = [signalEvents2 countByEnumeratingWithState:&v182 objects:v245 count:16];
    if (v77)
    {
      v78 = 0;
      v79 = *v183;
      do
      {
        for (ii = 0; ii != v77; ++ii)
        {
          if (*v183 != v79)
          {
            objc_enumerationMutation(signalEvents2);
          }

          v81 = *(*(&v182 + 1) + 8 * ii);
          sharedEvent = [v81 sharedEvent];
          v83 = &v233[5 * v78 + 320];
          *v83 = [sharedEvent eventPort];

          *(v83 + 1) = [v81 eventType];
          v83[1] = [v81 value];
          *(v83 + 4) = [v81 symbolIndex];
          v83[3] = [v81 agentMask];
          *(v83 + 32) = 0;
          v84 = gLogger;
          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
          {
            v85 = NSStringFromSelector(a2);
            v86 = *v83;
            v87 = v83[1];
            v246 = 138412802;
            v247 = v85;
            v248 = 1024;
            *v249 = v86;
            *&v249[4] = 2048;
            *&v249[6] = v87;
            _os_log_debug_impl(&dword_1AD246000, v84, OS_LOG_TYPE_DEBUG, "%@: signal events port is %#x and value is %llu\n", &v246, 0x1Cu);
          }

          ++v78;
        }

        v77 = [signalEvents2 countByEnumeratingWithState:&v182 objects:v245 count:16];
      }

      while (v77);
    }

    if (eventCopy)
    {
      signalEvents3 = [eventCopy signalEvents];
      v89 = [signalEvents3 count] == 2;

      if (!v89)
      {
        v90 = gLogger;
        if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
        {
          v91 = NSStringFromSelector(a2);
          [_ANEVirtualClient doEvaluateWithModel:v91 options:? request:? qos:? completionEvent:? error:?];
        }
      }

      v92 = 0;
      v93 = 1;
      do
      {
        v94 = v93;
        signalEvents4 = [eventCopy signalEvents];
        v96 = [signalEvents4 objectAtIndexedSubscript:v92];
        v97 = [v96 value] == 4097;

        if (v97)
        {
          signalEvents5 = [eventCopy signalEvents];
          v99 = [signalEvents5 objectAtIndexedSubscript:v92];
          sharedEvent2 = [v99 sharedEvent];
          eventPort = [sharedEvent2 eventPort];

          signalEvents6 = [eventCopy signalEvents];
          v102 = [signalEvents6 objectAtIndexedSubscript:v92];
          eventType = [v102 eventType];

          signalEvents7 = [eventCopy signalEvents];
          v104 = [signalEvents7 objectAtIndexedSubscript:v92];
          value = [v104 value];

          signalEvents8 = [eventCopy signalEvents];
          v106 = [signalEvents8 objectAtIndexedSubscript:v92];
          symbolIndex = [v106 symbolIndex];

          v238 = 0;
          v107 = gLogger;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
          {
            v108 = NSStringFromSelector(a2);
            v246 = 138412802;
            v247 = v108;
            v248 = 1024;
            *v249 = eventPort;
            *&v249[4] = 2048;
            *&v249[6] = value;
            _os_log_debug_impl(&dword_1AD246000, v107, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient success completionEvent signal events port is %#x and value is %llu\n", &v246, 0x1Cu);
          }
        }

        else
        {
          signalEvents9 = [eventCopy signalEvents];
          v110 = [signalEvents9 objectAtIndexedSubscript:v92];
          sharedEvent3 = [v110 sharedEvent];
          eventPort2 = [sharedEvent3 eventPort];

          signalEvents10 = [eventCopy signalEvents];
          v113 = [signalEvents10 objectAtIndexedSubscript:v92];
          eventType2 = [v113 eventType];

          signalEvents11 = [eventCopy signalEvents];
          v115 = [signalEvents11 objectAtIndexedSubscript:v92];
          value2 = [v115 value];

          signalEvents12 = [eventCopy signalEvents];
          v117 = [signalEvents12 objectAtIndexedSubscript:v92];
          symbolIndex2 = [v117 symbolIndex];

          v243 = 0;
          v107 = gLogger;
          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
          {
            v118 = NSStringFromSelector(a2);
            v246 = 138412802;
            v247 = v118;
            v248 = 1024;
            *v249 = eventPort2;
            *&v249[4] = 2048;
            *&v249[6] = value2;
            _os_log_debug_impl(&dword_1AD246000, v107, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient error completionEvent signal events port is %#x and value is %llu\n", &v246, 0x1Cu);
          }
        }

        v93 = 0;
        v92 = 1;
      }

      while ((v94 & 1) != 0);
    }

    sharedEvents4 = [requestCopy sharedEvents];
    waitEvents = [sharedEvents4 waitEvents];
    v231 = [waitEvents count];

    if (v231)
    {
      v121 = gLogger;
      if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
      {
        v122 = NSStringFromSelector(a2);
        [_ANEVirtualClient doEvaluateWithModel:v122 options:? request:? qos:? completionEvent:? error:?];
      }
    }

    v123 = gLogger;
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEBUG))
    {
      v124 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v124 options:? request:? qos:? completionEvent:? error:?];
    }

    v180 = 0u;
    v181 = 0u;
    v178 = 0u;
    v179 = 0u;
    sharedEvents5 = [requestCopy sharedEvents];
    waitEvents2 = [sharedEvents5 waitEvents];

    v127 = [waitEvents2 countByEnumeratingWithState:&v178 objects:v244 count:16];
    if (v127)
    {
      v128 = 0;
      v129 = *v179;
      do
      {
        for (jj = 0; jj != v127; ++jj)
        {
          if (*v179 != v129)
          {
            objc_enumerationMutation(waitEvents2);
          }

          v131 = *(*(&v178 + 1) + 8 * jj);
          sharedEvent4 = [v131 sharedEvent];
          v133 = &v233[5 * v128];
          *v133 = [sharedEvent4 eventPort];

          *(v133 + 1) = [v131 eventType];
          v133[1] = [v131 value];
          *(v133 + 4) = 0;
          v133[3] = 0;
          *(v133 + 32) = 0;
          ++v128;
        }

        v127 = [waitEvents2 countByEnumeratingWithState:&v178 objects:v244 count:16];
      }

      while (v127);
    }
  }

  v134 = [_ANEVirtualClient createIOSurface:256 ioSID:v221];
  v208[7] = v134;
  if (!v134)
  {
    v135 = gLogger;
    if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
    {
      v136 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v136 options:? request:? qos:? completionEvent:? error:?];
    }
  }

  inputStruct[0] = &programHandle;
  inputStruct[1] = 6848;
  v176 = 48;
  v137 = IOConnectCallMethod(self->_connect, 0x13u, 0, 0, inputStruct, 0x10uLL, 0, 0, &outputStruct, &v176);
  if (v137)
  {
    v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Kernel call failed with error=0x%x", v137];
    v139 = [_ANEErrors programInferenceOtherErrorForMethod:v137];
    v140 = gLogger;
    if (os_log_type_enabled(v140, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
    }

    if (error)
    {
      v141 = v139;
      *error = v139;
    }

    v168[2]();

LABEL_127:
    goto LABEL_128;
  }

  if ((outputStruct & 1) == 0)
  {
    v145 = v208[7];
    v175 = 0;
    v146 = [_ANEVirtualClient updateError:v145 errorLength:v216 errorCode:*(&outputStruct + 1) error:&v175];
    v139 = v175;
    if (!v146)
    {
      v147 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Inferences failed with unknown host error"];
      v148 = [_ANEErrors programInferenceOtherErrorForMethod:v147];

      v139 = v148;
    }

    v149 = gLogger;
    if (os_log_type_enabled(v149, OS_LOG_TYPE_ERROR))
    {
      v150 = NSStringFromSelector(a2);
      [_ANEVirtualClient doEvaluateWithModel:v150 options:? request:? qos:? completionEvent:? error:?];
    }

    if (error)
    {
      v151 = v139;
      *error = v139;
    }

    v152 = +[_ANEStrings vm_debugDumpBootArg];
    v153 = [_ANEDeviceInfo isBoolBootArgSetTrue:v152];

    if (v153)
    {
      v154 = NSTemporaryDirectory();
      v155 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v155 setDateFormat:@"yyyyMMdd_HHmmss"];
      date = [MEMORY[0x1E695DF00] date];
      v157 = [v155 stringFromDate:date];

      v158 = [v154 stringByAppendingPathComponent:@"model_dump.txt"];
      v157 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@.txt", v158, v157];

      v160 = [modelCopy description];
      [v160 writeToFile:v157 atomically:1 encoding:4 error:0];
      v161 = [v154 stringByAppendingPathComponent:@"request_dump.txt"];
      v1572 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@_%@.txt", v161, v157];

      v163 = [requestCopy description];
      [v163 writeToFile:v1572 atomically:1 encoding:4 error:0];

      v164 = gLogger;
      if (os_log_type_enabled(v164, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient doEvaluateWithModel:options:request:qos:completionEvent:error:];
      }
    }

    v168[2]();
    goto LABEL_127;
  }

  v143 = [_ANEVirtualClient updatePerformanceStats:v208[6] performanceStatsLength:v217 perfStatsRawIOSurfaceRef:v208[9] performanceStatsRawLength:*(&v217 + 1) hwExecutionTime:*(&v216 + 1)];
  [requestCopy setPerfStats:v143];

  v168[2]();
  v144 = 1;
LABEL_129:

  _Block_object_dispose(&v207, 8);
  return v144;
}

- (BOOL)compiledModelExistsFor:(id)for
{
  v26[344] = *MEMORY[0x1E69E9840];
  forCopy = for;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v23, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    modelURL = [forCopy modelURL];
    v11 = modelURL == 0;

    if (!v11)
    {
      [(_ANEVirtualClient *)self copyAllModelFiles:forCopy dictionary:Mutable ioSurfaceRefs:v9];
      [(_ANEVirtualClient *)self copyModelMetaData:forCopy options:MEMORY[0x1E695E0F8] dictionary:Mutable vmData:v23];
    }

    getCacheURLIdentifier = [forCopy getCacheURLIdentifier];
    v13 = getCacheURLIdentifier == 0;

    if (!v13)
    {
      cacheURLIdentifier = [forCopy cacheURLIdentifier];

      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient loadModel:options:qos:error:];
      }

      CFDictionarySetValue(Mutable, @"modelCacheURLIdentifier", cacheURLIdentifier);
    }

    [_ANEVirtualClient setCodeSigningIdentity:Mutable];
    [(_ANEVirtualClient *)self printDictionary:Mutable];
    v16 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:5 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    [(_ANEVirtualClient *)self printDictionary:v16];
    modelURL2 = [forCopy modelURL];
    v18 = modelURL2 == 0;

    if (!v18)
    {
      [_ANEVirtualClient freeModelFileIOSurfaces:v9];
      CFRelease(v9);
    }

    if (v16)
    {
      v19 = gLogger;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compiledModelExistsFor:];
      }

      [_ANEVirtualClient copyDictionaryDataToStruct:&v25 dictionary:v16];
      v7 = v26[0] == 1;
      if (v26[0] == 1)
      {
        v20 = [_ANEVirtualClient dictionaryGetNSStringForKey:v16 key:@"modelCacheURLIdentifier"];
        if (v20)
        {
          [forCopy setCacheURLIdentifier:v20];
        }
      }

      v21 = gLogger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compiledModelExistsFor:];
      }

      CFRelease(v16);
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient compiledModelExistsFor:];
      }

      v7 = 0;
    }
  }

  else
  {
    [(_ANEVirtualClient *)self copyModel:forCopy options:MEMORY[0x1E695E0F8] vmData:v23];
    v7 = [(_ANEVirtualClient *)self callIOUserClient:5 inParams:&v24 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v23];

  return v7;
}

- (void)purgeCompiledModel:(id)model
{
  v20[671] = *MEMORY[0x1E69E9840];
  modelCopy = model;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v19, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v8 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    modelURL = [modelCopy modelURL];
    v10 = modelURL == 0;

    if (!v10)
    {
      [(_ANEVirtualClient *)self copyAllModelFiles:modelCopy dictionary:Mutable ioSurfaceRefs:v8];
    }

    [(_ANEVirtualClient *)self copyModelMetaData:modelCopy options:MEMORY[0x1E695E0F8] dictionary:Mutable vmData:v19];
    getCacheURLIdentifier = [modelCopy getCacheURLIdentifier];
    v12 = getCacheURLIdentifier == 0;

    if (!v12)
    {
      cacheURLIdentifier = [modelCopy cacheURLIdentifier];

      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient loadModel:options:qos:error:];
      }

      CFDictionarySetValue(Mutable, @"modelCacheURLIdentifier", cacheURLIdentifier);
    }

    [_ANEVirtualClient setCodeSigningIdentity:Mutable];
    [(_ANEVirtualClient *)self printDictionary:Mutable];
    v15 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:6 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    [(_ANEVirtualClient *)self printDictionary:v15];
    modelURL2 = [modelCopy modelURL];
    v17 = modelURL2 == 0;

    if (!v17)
    {
      [_ANEVirtualClient freeModelFileIOSurfaces:v8];
      CFRelease(v8);
    }

    if (v15)
    {
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient purgeCompiledModel:];
      }

      CFRelease(v15);
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient purgeCompiledModel:];
    }
  }

  else
  {
    [(_ANEVirtualClient *)self copyModel:modelCopy options:MEMORY[0x1E695E0F8] vmData:v19];
    [(_ANEVirtualClient *)self callIOUserClient:6 inParams:v20 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v19];
}

- (BOOL)compiledModelExistsMatchingHash:(id)hash
{
  v33 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compiledModelExistsMatchingHash:];
  }

  bzero(v22, 0x1728uLL);
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:hashCopy requiringSecureCoding:1 error:0];
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v22[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v24);
    v11 = *MEMORY[0x1E695E480];
    v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v24);
    CFDictionarySetValue(Mutable, @"ioSIDHashString", v12);
    CFRelease(v12);
    v25[0] = [v7 length];
    v13 = CFNumberCreate(v11, kCFNumberSInt64Type, v25);
    CFDictionarySetValue(Mutable, @"hashStringLength", v13);
    CFRelease(v13);
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v20 = NSStringFromSelector(a2);
      v21 = [v7 length];
      *buf = 138412802;
      v28 = v20;
      v29 = 2048;
      v30 = v21;
      v31 = 2112;
      v32 = hashCopy;
      _os_log_debug_impl(&dword_1AD246000, v14, OS_LOG_TYPE_DEBUG, "%@:ANEVirtualClient length=%lu hashString=%@ \n", buf, 0x20u);
    }

    v15 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:7 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    if (v15)
    {
      [_ANEVirtualClient copyDictionaryDataToStruct:v26 dictionary:v15];
      v9 = v26[1] == 1;
      v16 = gLogger;
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient compiledModelExistsMatchingHash:];
      }

      CFRelease(v15);
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient compiledModelExistsMatchingHash:];
      }

      v9 = 0;
    }
  }

  else
  {
    v22[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v24);
    v25[0] = [v7 length];
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [v7 length];
      *buf = 138412802;
      v28 = v18;
      v29 = 2048;
      v30 = v19;
      v31 = 2112;
      v32 = hashCopy;
      _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "%@:ANEVirtualClient length=%lu hashString=%@ \n", buf, 0x20u);
    }

    v9 = [(_ANEVirtualClient *)self callIOUserClient:7 inParams:&v23 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v22];

  return v9;
}

- (void)purgeCompiledModelMatchingHash:(id)hash
{
  v26 = *MEMORY[0x1E69E9840];
  hashCopy = hash;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  bzero(v16, 0x1728uLL);
  v7 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:hashCopy requiringSecureCoding:1 error:0];
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v18);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v18);
    CFDictionarySetValue(Mutable, @"ioSIDHashString", v11);
    CFRelease(v11);
    v19[0] = [v7 length];
    v12 = CFNumberCreate(v10, kCFNumberSInt64Type, v19);
    CFDictionarySetValue(Mutable, @"hashStringLength", v12);
    CFRelease(v12);
    v13 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:8 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    if (v13)
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient purgeCompiledModelMatchingHash:];
      }

      CFRelease(v13);
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient purgeCompiledModelMatchingHash:];
    }
  }

  else
  {
    v16[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v18);
    v19[0] = [v7 length];
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = NSStringFromSelector(a2);
      v15 = [v7 length];
      *buf = 138412802;
      v21 = v14;
      v22 = 2048;
      v23 = v15;
      v24 = 2112;
      v25 = hashCopy;
      _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "%@:ANEVirtualClient length=%lu hashString=%@ \n", buf, 0x20u);
    }

    [(_ANEVirtualClient *)self callIOUserClient:8 inParams:&v17 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v16];
}

- (BOOL)beginRealTimeTask
{
  v4 = gLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  return [(_ANEVirtualClient *)self callIOUserClient:9 inParams:0 outParams:0];
}

- (BOOL)endRealTimeTask
{
  v4 = gLogger;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  return [(_ANEVirtualClient *)self callIOUserClient:10 inParams:0 outParams:0];
}

- (BOOL)echo:(id)echo
{
  v20[339] = *MEMORY[0x1E69E9840];
  echoCopy = echo;
  v6 = gLogger;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient compileModel:options:qos:error:];
  }

  v7 = [echoCopy dataUsingEncoding:4];
  bzero(v16, 0x1728uLL);
  if (([(_ANEVirtualClient *)self negotiatedCapabilityMask]& 4) != 0)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v18);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, v18);
    CFDictionarySetValue(Mutable, @"ioSIDHashString", v11);
    CFRelease(v11);
    v19[0] = [v7 length];
    v12 = CFNumberCreate(v10, kCFNumberSInt64Type, v19);
    CFDictionarySetValue(Mutable, @"hashStringLength", v12);
    CFRelease(v12);
    v13 = [(_ANEVirtualClient *)self callIOUserClientWithDictionary:11 inDictionary:Mutable error:0];
    CFRelease(Mutable);
    if (v13)
    {
      [_ANEVirtualClient copyDictionaryDataToStruct:v20 dictionary:v13];
      v8 = v20[1] == 1;
      v14 = gLogger;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient echo:];
      }

      CFRelease(v13);
    }

    else
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient echo:];
      }

      v8 = 0;
    }
  }

  else
  {
    v16[0] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], v18);
    v19[0] = [v7 length];
    v8 = [(_ANEVirtualClient *)self callIOUserClient:11 inParams:&v17 outParams:0];
  }

  [(_ANEVirtualClient *)self releaseIOSurfaces:v16];

  return v8;
}

- (DeviceExtendedInfo)getDeviceInfo
{
  v21 = *MEMORY[0x1E69E9840];
  *&retstr->var4[4] = 0u;
  *&retstr->var4[20] = 0u;
  *&retstr->var0.var2 = 0u;
  *&retstr->var1 = 0u;
  *&retstr->var0.var0 = 0u;
  v12 = 80;
  v5 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0x12u, 0, 0, 0, 0, 0, 0, retstr, &v12);
  v6 = gLogger;
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient getDeviceInfo];
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = NSStringFromSelector(a3);
    var3 = retstr->var0.var3;
    var2 = retstr->var0.var2;
    *buf = 138413058;
    v14 = v8;
    v15 = 1024;
    v16 = 18;
    v17 = 1024;
    v18 = var3;
    v19 = 2048;
    v20 = var2;
    _os_log_impl(&dword_1AD246000, v7, OS_LOG_TYPE_INFO, "%@: ANEVirtualClient Successfully called method %d with result=%d %llx.\n", buf, 0x22u);
  }

  return result;
}

- (int64_t)aneBoardtype
{
  v4 = *MEMORY[0x1E69E9840];
  objc_msgSend_getDeviceInfo(self, a2);
  return v3;
}

- (id)aneArchitectureTypeStr
{
  *&v5[36] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  objc_msgSend_getDeviceInfo(self, a2);
  v3 = [v2 stringWithUTF8String:v5];

  return v3;
}

- (unint64_t)getValidateNetworkVersion
{
  v4 = *MEMORY[0x1E69E9840];
  objc_msgSend_exchangeBuildVersionInfo(self, a2);
  return v3;
}

- (BOOL)validateEnvironmentForPrecompiledBinarySupport
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = +[_ANEDeviceInfo isInternalBuild];
  isInternalBuild = [(_ANEVirtualClient *)self isInternalBuild];
  negotiatedDataInterfaceVersion = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
  negotiatedCapabilityMask = [(_ANEVirtualClient *)self negotiatedCapabilityMask];
  v8 = +[_ANEStrings vm_allowPrecompiledBinaryBootArg];
  v9 = [_ANEDeviceInfo isBootArgPresent:v8];

  if (v9)
  {
    v10 = +[_ANEStrings vm_allowPrecompiledBinaryBootArg];
    v11 = [_ANEDeviceInfo isBoolBootArgSetTrue:v10];
  }

  else
  {
    v11 = 1;
  }

  v12 = negotiatedCapabilityMask & 2;
  v13 = v4 && isInternalBuild;
  if (negotiatedDataInterfaceVersion <= 0x20401)
  {
    v13 = 0;
  }

  if ((negotiatedCapabilityMask & 2) == 0)
  {
    v13 = 0;
  }

  v14 = v13 && v11;
  if (!v13 || !v11)
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      v18 = 138413570;
      v19 = v17;
      v20 = 1024;
      v21 = v4;
      v22 = 1024;
      v23 = isInternalBuild;
      v24 = 1024;
      v25 = negotiatedDataInterfaceVersion > 0x20401;
      v26 = 1024;
      v27 = v12 >> 1;
      v28 = 1024;
      v29 = v11;
      _os_log_error_impl(&dword_1AD246000, v15, OS_LOG_TYPE_ERROR, "%@: ERROR : conditions for precompiled binary support not met! isGuestInternalBuild=%d isHostInternalBuild=%d minimumInterfaceRequirementsMet=%d minimumCapabilityRequirementsMet=%d isPrecompiledBinaryBootArgSet=%d", &v18, 0x2Au);
    }
  }

  return v14;
}

- (__CFDictionary)validateNetworkCreateMLIR:(unint64_t)r validation_params:(__CFDictionary *)validation_params
{
  v30 = *MEMORY[0x1E69E9840];
  if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]> 0x20403)
  {
    inputStruct = 0u;
    v23 = 0u;
    outputStruct = 0;
    v21 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x4012000000;
    v25 = __Block_byref_object_copy__120;
    v26 = __Block_byref_object_dispose__121;
    v27 = &unk_1AD2A047D;
    v28 = 0;
    v29 = 0;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __65___ANEVirtualClient_validateNetworkCreateMLIR_validation_params___block_invoke;
    v19[3] = &unk_1E79BA3B8;
    v19[4] = buf;
    v11 = MEMORY[0x1B26F37D0](v19);
    v12 = [(_ANEVirtualClient *)self copyDictionaryToIOSurface:validation_params copiedDataSize:&v23 createdIOSID:&inputStruct + 8];
    *(*&buf[8] + 48) = v12;
    if (v12 && v23)
    {
      v13 = [_ANEVirtualClient createIOSurface:512 ioSID:&inputStruct | 0xC];
      *(*&buf[8] + 56) = v13;
      if (v13)
      {
        *(&v23 + 1) = 512;
        *&inputStruct = r;
        v18 = 16;
        if (IOConnectCallMethod(self->_connect, 0x15u, 0, 0, &inputStruct, 0x20uLL, 0, 0, &outputStruct, &v18))
        {
          v14 = gLogger;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }

LABEL_12:
          v11[2](v11);
LABEL_18:
          v10 = 0;
LABEL_19:

          _Block_object_dispose(buf, 8);
          return v10;
        }

        if (outputStruct)
        {
          if (v21)
          {
LABEL_28:
            if (outputStruct == 1 && v21)
            {
              v10 = [_ANEVirtualClient getCFDictionaryFromIOSurface:*(*&buf[8] + 56) dataLength:?];
              v11[2](v11);
              goto LABEL_19;
            }

            goto LABEL_12;
          }

          v17 = gLogger;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }
        }

        else
        {
          v17 = gLogger;
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }
        }

        goto LABEL_28;
      }

      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
      }
    }

    else
    {
      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
      }
    }

    v11[2](v11);
    goto LABEL_18;
  }

  v8 = gLogger;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    *&buf[4] = v9;
    *&buf[12] = 1024;
    *&buf[14] = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
    _os_log_impl(&dword_1AD246000, v8, OS_LOG_TYPE_INFO, "%@: Host too old to support validateNetworkCreateMLIR. NegotiatedDataInterfaceVersion=%u", buf, 0x12u);
  }

  return 0;
}

- (__CFDictionary)validateNetworkCreate:(unint64_t)create uuid:(id)uuid function:(id)function directoryPath:(id)path scratchPadPath:(id)padPath milTextData:(id)data
{
  v61 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  functionCopy = function;
  pathCopy = path;
  padPathCopy = padPath;
  dataCopy = data;
  if (dataCopy || [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]< 0x20401)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    aSelector = a2;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    bzero(v54, 0x7F0uLL);
    inputStruct = create;
    if (dataCopy)
    {
      cf = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", dataCopy, [dataCopy length], v60);
      v21 = [dataCopy length];
    }

    else
    {
      v21 = 0;
      cf = 0;
    }

    *&v60[4] = v21;
    v22 = uuidCopy;
    v23 = [uuidCopy cStringUsingEncoding:4];
    v24 = strlen(v23);
    memcpy(v54, v23, v24);
    v25 = functionCopy;
    v26 = [functionCopy cStringUsingEncoding:4];
    v27 = strlen(v26);
    memcpy(&v55, v26, v27);
    v28 = padPathCopy;
    v29 = [padPathCopy cStringUsingEncoding:4];
    v30 = strlen(v29);
    memcpy(v56, v29, v30);
    if (![(_ANEVirtualClient *)self copyFilesInDirectoryToIOSurfaces:pathCopy ioSurfaceRefs:Mutable ioSurfaceSizes:array fileNames:array2])
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
      }

      v18 = 0;
      goto LABEL_29;
    }

    v59 = [array count];
    if (v59)
    {
      v31 = 0;
      v32 = 744;
      do
      {
        v33 = [array objectAtIndexedSubscript:v31];
        v58[v31] = [v33 unsignedLongLongValue];

        ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v31);
        v56[v31 + 65] = IOSurfaceGetID(ValueAtIndex);
        v35 = [array2 objectAtIndexedSubscript:v31];
        v36 = v35;
        strlcpy(&v54[v32 - 8], [v35 UTF8String], 0x28uLL);

        ++v31;
        v32 += 40;
      }

      while (v31 < v59);
    }

    v37 = MEMORY[0x1E695DF20];
    v38 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:10485760];
    v39 = [v37 dictionaryWithObjectsAndKeys:{v38, *MEMORY[0x1E696CE30], 0}];

    v40 = IOSurfaceCreate(v39);
    v41 = v40;
    if (v40)
    {
      v56[64] = IOSurfaceGetID(v40);
      v57 = 10485760;
      output = 0;
      outputCnt = 1;
      v42 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0x11u, 0, 0, &inputStruct, 0x7F8uLL, &output, &outputCnt, 0, 0);
      if (cf)
      {
        CFRelease(cf);
      }

      [_ANEVirtualClient freeModelFileIOSurfaces:Mutable];
      if (!v42)
      {
        v18 = [_ANEVirtualClient getCFDictionaryFromIOSurface:v41 dataLength:output];
        CFRelease(v41);
        goto LABEL_28;
      }

      v43 = gLogger;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(aSelector);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
      }
    }

    else
    {
      v44 = gLogger;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(aSelector);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
      }
    }

    v18 = 0;
LABEL_28:

LABEL_29:
    goto LABEL_30;
  }

  array = gLogger;
  if (os_log_type_enabled(array, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
    [_ANEVirtualClient validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:];
  }

  v18 = 0;
LABEL_30:

  return v18;
}

- (void)sendGuestBuildVersion
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 1024;
  *(v3 + 14) = 14;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (BuildVersionInfo)exchangeBuildVersionInfo
{
  v26 = *MEMORY[0x1E69E9840];
  *&retstr->var7[11] = 0u;
  *&retstr->var7[13] = 0u;
  *&retstr->var7[7] = 0u;
  *&retstr->var7[9] = 0u;
  *&retstr->var7[3] = 0u;
  *&retstr->var7[5] = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var7[1] = 0u;
  *&retstr->var3[16] = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  *retstr->var3 = 0u;
  v6 = +[_ANEDeviceInfo productName];
  v7 = v6;
  if (!v6 || [v6 isEqualToString:&stru_1F224D6A0])
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient exchangeBuildVersionInfo];
    }

    v7 = 0;
  }

  v9 = +[_ANEDeviceInfo buildVersion];
  v10 = v9;
  if (!v9 || [v9 isEqualToString:&stru_1F224D6A0])
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient exchangeBuildVersionInfo];
    }

    v10 = 0;
    goto LABEL_11;
  }

  if (!v7)
  {
LABEL_11:
    v12 = @"UnknownBuild";
    goto LABEL_12;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v7, v10];
LABEL_12:
  v13 = v12;
  uTF8String = [(__CFString *)v12 UTF8String];
  v15 = strlen(uTF8String);
  v21 = 192;
  v16 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0xFu, 0, 0, uTF8String, v15 + 1, 0, 0, retstr, &v21);
  v17 = gLogger;
  v18 = v17;
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a3);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient exchangeBuildVersionInfo];
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = NSStringFromSelector(a3);
    *buf = 138412546;
    v23 = v19;
    v24 = 1024;
    v25 = 15;
    _os_log_impl(&dword_1AD246000, v18, OS_LOG_TYPE_INFO, "%@: ANEVirtualClient Successfully called method %d", buf, 0x12u);
  }

  return result;
}

- (unint64_t)negotiatedCapabilityMask
{
  v4 = *MEMORY[0x1E69E9840];
  objc_msgSend_exchangeBuildVersionInfo(self, a2);
  return v3;
}

- (id)hostBuildVersionStr
{
  v5[22] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AEC0];
  objc_msgSend_exchangeBuildVersionInfo(self, a2);
  v3 = [v2 stringWithUTF8String:v5];

  return v3;
}

- (unint64_t)outputDictIOSurfaceSize
{
  v4 = *MEMORY[0x1E69E9840];
  objc_msgSend_exchangeBuildVersionInfo(self, a2);
  return v3;
}

- (BOOL)mapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error
{
  modelCopy = model;
  requestCopy = request;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (modelCopy)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient mapIOSurfacesWithModel:request:cacheInference:error:];
    }

    completionHandler = [requestCopy completionHandler];

    [(_ANEVirtualClient *)self queue];
    if (completionHandler)
      v13 = {;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __73___ANEVirtualClient_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke;
      block[3] = &unk_1E79BA458;
      v26[1] = &v28;
      block[4] = self;
      v14 = &v25;
      v25 = modelCopy;
      v15 = v26;
      v26[0] = requestCopy;
      inferenceCopy = inference;
      dispatch_sync(v13, block);

      *(v29 + 24) = 1;
    }

    else
      v17 = {;
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __73___ANEVirtualClient_mapIOSurfacesWithModel_request_cacheInference_error___block_invoke_2;
      v20[3] = &unk_1E79BA480;
      v22[1] = &v28;
      v20[4] = self;
      v14 = &v21;
      v21 = modelCopy;
      v15 = v22;
      v18 = requestCopy;
      inferenceCopy2 = inference;
      v22[0] = v18;
      v22[2] = error;
      dispatch_sync(v17, v20);
    }

    v16 = *(v29 + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v28, 8);

  return v16 & 1;
}

- (BOOL)doMapIOSurfacesWithModel:(id)model request:(id)request cacheInference:(BOOL)inference error:(id *)error
{
  v150 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  requestCopy = request;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
  }

  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
  }

  bzero(v100, 0x1728uLL);
  [(_ANEVirtualClient *)self copyModel:modelCopy options:MEMORY[0x1E695E0F8] vmData:v100];
  [(_ANEVirtualClient *)self copyErrorValue:v100];
  string_id = [modelCopy string_id];
  programHandle = [modelCopy programHandle];
  intermediateBufferHandle = [modelCopy intermediateBufferHandle];
  queueDepth = [modelCopy queueDepth];
  perfStatsMask = [modelCopy perfStatsMask];
  inferenceCopy = inference;
  v8 = gLogger;
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67112192;
    *v133 = v102[4];
    *&v133[4] = 1024;
    *&v133[6] = v102[5];
    LOWORD(v134) = 1024;
    *(&v134 + 2) = v102[6];
    HIWORD(v134) = 1024;
    *v135 = v102[7];
    *&v135[4] = 2048;
    *&v135[6] = string_id;
    *&v135[14] = 2048;
    *&v135[16] = programHandle;
    v136 = 2048;
    v137 = intermediateBufferHandle;
    v138 = 1024;
    v139 = queueDepth;
    v140 = 1024;
    v141 = v108;
    v142 = 1024;
    v143 = perfStatsMask;
    v144 = 1024;
    v145 = v110;
    v146 = 1024;
    v147 = v111;
    v148 = 1024;
    v149 = v122;
    _os_log_debug_impl(&dword_1AD246000, v8, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel: virtualANEModel.ioSIDModelNet=%u virtualANEModel.ioSIDModelShape=%u virtualANEModel.ioSIDModelWeight=%u virtualANEModel.ioSIDKey=%u virtualANEModel.string_id=%lld virtualANEModel.programHandle=%lld virtualANEModel.intermediateBufferHandle=%lld virtualANEModel.queueDepth=%d virtualANEModel.ioSIDModelAttributes=%u virtualANEModel.perfStatsMask=%u virtualANEModel.qos=%u virtualANEModel.ioSIDOptions=%u virtualANEModel.ioSIDErrorValue=%u", buf, 0x5Cu);
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  inputArray = [requestCopy inputArray];
  v10 = [inputArray countByEnumeratingWithState:&v96 objects:v131 count:16];
  v11 = 0;
  if (v10)
  {
    v12 = *v97;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v97 != v12)
        {
          objc_enumerationMutation(inputArray);
        }

        ID = IOSurfaceGetID([*(*(&v96 + 1) + 8 * i) ioSurface]);
        v112[v11] = ID;
        v15 = gLogger;
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v133 = ID;
          _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request1 ioSID: %u", buf, 8u);
        }

        ++v11;
      }

      v10 = [inputArray countByEnumeratingWithState:&v96 objects:v131 count:16];
    }

    while (v10);
  }

  v118 = v11;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  inputIndexArray = [requestCopy inputIndexArray];
  v17 = [inputIndexArray countByEnumeratingWithState:&v92 objects:v130 count:16];
  v18 = 0;
  if (v17)
  {
    v19 = *v93;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v93 != v19)
        {
          objc_enumerationMutation(inputIndexArray);
        }

        v21 = *(*(&v92 + 1) + 8 * j);
        v112[v18 + 64] = [v21 unsignedIntValue];
        v22 = gLogger;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          unsignedLongLongValue = [v21 unsignedLongLongValue];
          *buf = 134217984;
          *v133 = unsignedLongLongValue;
          _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request2 ioSID: %llu", buf, 0xCu);
        }

        ++v18;
      }

      v17 = [inputIndexArray countByEnumeratingWithState:&v92 objects:v130 count:16];
    }

    while (v17);
  }

  v119 = v18;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  outputArray = [requestCopy outputArray];
  v25 = 0;
  v26 = [outputArray countByEnumeratingWithState:&v88 objects:v129 count:16];
  if (v26)
  {
    v27 = *v89;
    do
    {
      for (k = 0; k != v26; ++k)
      {
        if (*v89 != v27)
        {
          objc_enumerationMutation(outputArray);
        }

        v29 = IOSurfaceGetID([*(*(&v88 + 1) + 8 * k) ioSurface]);
        v112[v25 + 128] = v29;
        v30 = gLogger;
        if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          *v133 = v29;
          _os_log_debug_impl(&dword_1AD246000, v30, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request3 ioSID: %u", buf, 8u);
        }

        ++v25;
      }

      v26 = [outputArray countByEnumeratingWithState:&v88 objects:v129 count:16];
    }

    while (v26);
  }

  v120 = v25;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  outputIndexArray = [requestCopy outputIndexArray];
  v32 = 0;
  v33 = [outputIndexArray countByEnumeratingWithState:&v84 objects:v128 count:16];
  if (v33)
  {
    v34 = *v85;
    do
    {
      for (m = 0; m != v33; ++m)
      {
        if (*v85 != v34)
        {
          objc_enumerationMutation(outputIndexArray);
        }

        v36 = *(*(&v84 + 1) + 8 * m);
        v112[v32 + 192] = [v36 unsignedIntValue];
        v37 = gLogger;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          unsignedLongLongValue2 = [v36 unsignedLongLongValue];
          *buf = 134217984;
          *v133 = unsignedLongLongValue2;
          _os_log_debug_impl(&dword_1AD246000, v37, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request4 ioSID: %llu", buf, 0xCu);
        }

        ++v32;
      }

      v33 = [outputIndexArray countByEnumeratingWithState:&v84 objects:v128 count:16];
    }

    while (v33);
  }

  v121 = v32;
  v39 = gLogger;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    inputArray2 = [requestCopy inputArray];
    v67 = [inputArray2 count];
    inputIndexArray2 = [requestCopy inputIndexArray];
    v69 = [inputIndexArray2 count];
    outputArray2 = [requestCopy outputArray];
    v71 = [outputArray2 count];
    outputIndexArray2 = [requestCopy outputIndexArray];
    v73 = [outputIndexArray2 count];
    *buf = 134218752;
    *v133 = v67;
    *&v133[8] = 2048;
    v134 = v69;
    *v135 = 2048;
    *&v135[2] = v71;
    *&v135[10] = 2048;
    *&v135[12] = v73;
    _os_log_debug_impl(&dword_1AD246000, v39, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel: request.inputArray %lu request.inputIndexArray %lu request.outputArray %lu request.outputIndexArray %lu", buf, 0x2Au);
  }

  weightsBuffer = [requestCopy weightsBuffer];
  v41 = [weightsBuffer ioSurface] == 0;

  if (v41)
  {
    v113 = 0;
  }

  else
  {
    weightsBuffer2 = [requestCopy weightsBuffer];
    v43 = IOSurfaceGetID([weightsBuffer2 ioSurface]);

    v113 = v43;
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }
  }

  procedureIndex = [requestCopy procedureIndex];
  unsignedLongLongValue3 = [procedureIndex unsignedLongLongValue];

  transactionHandle = [requestCopy transactionHandle];
  unsignedLongLongValue4 = [transactionHandle unsignedLongLongValue];

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  obj = [requestCopy perfStatsArray];
  v46 = [obj countByEnumeratingWithState:&v80 objects:v127 count:16];
  if (!v46)
  {

LABEL_65:
    v117 = 0;
    goto LABEL_66;
  }

  v47 = 0;
  v48 = *v81;
  do
  {
    v49 = 0;
    v50 = v47;
    do
    {
      if (*v81 != v48)
      {
        objc_enumerationMutation(obj);
      }

      v51 = *(*(&v80 + 1) + 8 * v49);
      stats = [v51 stats];
      v53 = IOSurfaceGetID([stats ioSurface]);

      v116[v50] = v53;
      v47 = v50 + 1;
      v116[v50 + 64] = [v51 statType];
      v117 = v50 + 1;
      v54 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v133 = v53;
        _os_log_debug_impl(&dword_1AD246000, v54, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request6 ioSID: %u", buf, 8u);
      }

      v55 = gLogger;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
      {
        statType = [v51 statType];
        *buf = 134217984;
        *v133 = statType;
        _os_log_debug_impl(&dword_1AD246000, v55, OS_LOG_TYPE_DEBUG, "ANEVirtualClient mapIOSurfacesWithModel request7 ioSID: %ld", buf, 0xCu);
      }

      ++v49;
      ++v50;
    }

    while (v46 != v49);
    v46 = [obj countByEnumeratingWithState:&v80 objects:v127 count:16];
  }

  while (v46);

  if (!v47)
  {
    goto LABEL_65;
  }

LABEL_66:
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v57 = MEMORY[0x1E695DF20];
  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:4096];
  v59 = [v57 dictionaryWithObjectsAndKeys:{v58, *MEMORY[0x1E696CE30], 0}];

  v60 = IOSurfaceCreate(v59);
  buffer = v60;
  if (v60)
  {
    IOSurfaceLock(v60, 0, 0);
    v124 = IOSurfaceGetID(buffer);
    v61 = gLogger;
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }

    IOSurfaceUnlock(buffer, 0, 0);
    [requestCopy sharedEvents];

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }

    v62 = [(_ANEVirtualClient *)self callIOUserClient:13 inParams:v102 outParams:&v126];
    [(_ANEVirtualClient *)self updateError:v100 error:error];
    v63 = [(_ANEVirtualClient *)self updatePerformanceStats:v100];
    [requestCopy setPerfStats:v63];

    [(_ANEVirtualClient *)self releaseIOSurfaces:v100];
  }

  else
  {
    v64 = gLogger;
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doMapIOSurfacesWithModel:request:cacheInference:error:];
    }

    v62 = 0;
  }

  return v62;
}

- (BOOL)sessionHintWithModel:(id)model hint:(id)hint options:(id)options report:(id)report error:(id *)error
{
  v66 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  hintCopy = hint;
  optionsCopy = options;
  reportCopy = report;
  if (hintCopy)
  {
    if ([modelCopy programHandle])
    {
      if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]<= 0x20402)
      {
        v17 = gLogger;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = NSStringFromSelector(a2);
          *buf = 138412546;
          *&buf[4] = v18;
          *&buf[12] = 1024;
          *&buf[14] = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
          _os_log_impl(&dword_1AD246000, v17, OS_LOG_TYPE_INFO, "%@: Host too old to support sending sessionHint. NegotiatedDataInterfaceVersion=%u", buf, 0x12u);
        }

LABEL_16:
        LOBYTE(error) = 1;
        goto LABEL_58;
      }

      v65 = 0;
      memset(v64, 0, sizeof(v64));
      memset(buf, 0, sizeof(buf));
      outputStruct = 0;
      v55 = 0;
      v56 = 0;
      v45 = 0;
      v46 = &v45;
      v47 = 0x4812000000;
      v48 = __Block_byref_object_copy__129;
      v49 = __Block_byref_object_dispose__130;
      v50 = &unk_1AD2A047D;
      v52 = 0;
      v53 = 0;
      v51 = 0;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __68___ANEVirtualClient_sessionHintWithModel_hint_options_report_error___block_invoke;
      v44[3] = &unk_1E79BA3B8;
      v44[4] = &v45;
      v42 = MEMORY[0x1B26F37D0](v44);
      *buf = [modelCopy programHandle];
      *&buf[8] = [modelCopy intermediateBufferHandle];
      buf[16] = [modelCopy queueDepth];
      v23 = hintCopy;
      strcpy(&v64[1] + 8, [hintCopy UTF8String]);
      if (optionsCopy)
      {
        v24 = [(_ANEVirtualClient *)self copyDictionaryToIOSurface:optionsCopy copiedDataSize:v64 createdIOSID:&buf[20]];
        v46[6] = v24;
        if (!v24)
        {
          v31 = gLogger;
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
          }

          if (!error)
          {
            goto LABEL_57;
          }

          v32 = NSStringFromSelector(a2);
          *error = [_ANEErrors virtualizationDataError:v32];

          goto LABEL_56;
        }
      }

      if (reportCopy)
      {
        v25 = [_ANEVirtualClient createIOSurface:512 ioSID:&buf[24]];
        v46[7] = v25;
        if (!v25)
        {
          v33 = gLogger;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
          }

          if (!error)
          {
            goto LABEL_48;
          }

          v34 = NSStringFromSelector(a2);
          v35 = [_ANEErrors virtualizationDataError:v34];
LABEL_47:
          *error = v35;

LABEL_48:
          v42[2]();
LABEL_56:
          LOBYTE(error) = 0;
LABEL_57:

          _Block_object_dispose(&v45, 8);
          goto LABEL_58;
        }

        DWORD2(v64[0]) = 512;
      }

      if (!error)
      {
        goto LABEL_25;
      }

      v26 = [_ANEVirtualClient createIOSurface:256 ioSID:&buf[28]];
      v46[8] = v26;
      if (v26)
      {
        *&v64[1] = 256;
LABEL_25:
        v43 = 24;
        v27 = IOConnectCallMethod(self->_connect, 0x14u, 0, 0, buf, 0x138uLL, 0, 0, &outputStruct, &v43);
        if (v27)
        {
          v28 = gLogger;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient validateNetworkCreateMLIR:validation_params:];
          }

          if (error)
          {
            v29 = NSStringFromSelector(a2);
            *error = [_ANEErrors virtualizationKernelError:v29 kernelErrorCode:v27];

LABEL_55:
            v42[2]();
            goto LABEL_56;
          }

          if ((outputStruct & 1) == 0)
          {
            goto LABEL_55;
          }
        }

        else if ((outputStruct & 1) == 0)
        {
          if (error)
          {
            [_ANEVirtualClient updateError:v46[8] errorLength:v55 error:error];
          }

          goto LABEL_55;
        }

        if (reportCopy)
        {
          v37 = [_ANEVirtualClient getCFDictionaryFromIOSurface:v46[7] dataLength:v56];
          v38 = gLogger;
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
          {
            v41 = NSStringFromSelector(a2);
            *v57 = 138412802;
            v58 = v41;
            v59 = 2048;
            v60 = v56;
            v61 = 2112;
            v62 = v37;
            _os_log_debug_impl(&dword_1AD246000, v38, OS_LOG_TYPE_DEBUG, "%@: ERROR : reportDataSize=%llu report=%@", v57, 0x20u);
          }

          if ([v37 count])
          {
            [reportCopy addEntriesFromDictionary:v37];
          }

          else
          {
            v40 = gLogger;
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
            }
          }
        }

        v42[2]();
        LOBYTE(error) = 1;
        goto LABEL_57;
      }

      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
      }

      v34 = NSStringFromSelector(a2);
      v35 = [_ANEErrors virtualizationDataError:v34];
      goto LABEL_47;
    }

    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
    }

    if ([hintCopy isEqualToString:kANEFHintSessionInfo])
    {
      if (reportCopy)
      {
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:1];
        [reportCopy setObject:v22 forKeyedSubscript:kANEFHintReportSessionStatusKey];
      }

      goto LABEL_16;
    }

    if (!error)
    {
      goto LABEL_58;
    }

    v30 = NSStringFromSelector(a2);
    *error = [_ANEErrors invalidModelErrorForMethod:v30];

LABEL_32:
    LOBYTE(error) = 0;
    goto LABEL_58;
  }

  v19 = gLogger;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient sessionHintWithModel:hint:options:report:error:];
  }

  if (error)
  {
    v20 = NSStringFromSelector(a2);
    *error = [_ANEErrors badArgumentForMethod:v20];

    goto LABEL_32;
  }

LABEL_58:

  return error;
}

+ (__IOSurface)createIOSurface:(unint64_t)surface ioSID:(unsigned int *)d
{
  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:surface];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x1E696CE30], 0}];

  v8 = IOSurfaceCreate(v7);
  v9 = v8;
  if (d && v8)
  {
    IOSurfaceLock(v8, 0, 0);
    *d = IOSurfaceGetID(v9);
    IOSurfaceUnlock(v9, 0, 0);
  }

  return v9;
}

- (void)copyModel:(id)model options:(id)options vmData:(VMData *)data
{
  v118 = *MEMORY[0x1E69E9840];
  modelCopy = model;
  optionsCopy = options;
  v106 = modelCopy;
  if (data)
  {
    modelURL = [modelCopy modelURL];
    path = [modelURL path];
    lastPathComponent = [path lastPathComponent];

    v92 = lastPathComponent;
    v108 = [lastPathComponent componentsSeparatedByString:@"."];
    lastObject = [v108 lastObject];
    modelURL2 = [v106 modelURL];
    path2 = [modelURL2 path];

    if ([lastObject isEqual:@"hwx"])
    {
      v12 = gLogger;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient copyModel:options:vmData:];
      }

      lastPathComponent2 = [path2 lastPathComponent];
      v14 = [path2 stringByReplacingOccurrencesOfString:lastPathComponent2 withString:&stru_1F224D6A0];

      v15 = gLogger;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient copyModel:options:vmData:];
      }

      path2 = v14;
    }

    v16 = gLogger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModel:options:vmData:];
    }

    v17 = path2;
    if ([lastObject isEqual:@"net"])
    {
      v18 = objc_opt_new();
      for (i = 0; i < [v108 count] - 1; ++i)
      {
        v20 = [v108 objectAtIndexedSubscript:i];
        [v18 appendString:v20];

        [v18 appendString:@"."];
      }

      if ([v18 length])
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@net", v18];
        v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@shape", v18];
        v95 = [(_ANEVirtualClient *)self readWeightFilename:path2];
        v86 = v23;
        v88 = v24;
        lastPathComponent3 = [path2 lastPathComponent];
        v26 = [path2 stringByReplacingOccurrencesOfString:lastPathComponent3 withString:&stru_1F224D6A0];

        if (v95)
        {
          v27 = gLogger;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            [_ANEVirtualClient copyModel:options:vmData:];
          }

          v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v26, v95];
          defaultManager = [MEMORY[0x1E696AC08] defaultManager];
          v30 = [defaultManager attributesOfItemAtPath:v28 error:0];

          fileType = [v30 fileType];
          LODWORD(defaultManager) = fileType == *MEMORY[0x1E696A3F0];

          if (defaultManager)
          {
            v32 = gLogger;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [_ANEVirtualClient copyModel:options:vmData:];
            }

            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            v34 = [defaultManager2 destinationOfSymbolicLinkAtPath:v28 error:0];

            lastPathComponent4 = [v34 lastPathComponent];

            v95 = lastPathComponent4;
          }
        }

        else
        {
          v95 = @"model.espresso.weights";
        }

        v36 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v86 requiringSecureCoding:1 error:0];
        v37 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v88 requiringSecureCoding:1 error:0];
        v38 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v95 requiringSecureCoding:1 error:0];
        data->var12 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v36, [v36 length], &data->var17.var54);
        data->var13 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v37, [v37 length], &data->var17.var56);
        data->var14 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v38, [v38 length], &data->var17.var58);
        data->var17.var55 = [v36 length];
        data->var17.var57 = [v37 length];
        data->var17.var59 = [v38 length];
        lastPathComponent5 = [path2 lastPathComponent];
        v40 = [path2 stringByReplacingOccurrencesOfString:lastPathComponent5 withString:&stru_1F224D6A0];

        v41 = gLogger;
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v75 = NSStringFromSelector(a2);
          *buf = 138413314;
          *v111 = v75;
          *&v111[8] = 2112;
          *v112 = v40;
          *&v112[8] = 2112;
          v113 = v86;
          v114 = 2112;
          v115 = v88;
          v116 = 2112;
          v117 = v95;
          _os_log_debug_impl(&dword_1AD246000, v41, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient: .net filepath=%@ : netname=%@ : shapename=%@ : weightname=%@ ", buf, 0x34u);
        }

        path2 = v40;
      }

      else
      {
        v86 = @"model.espresso.net";
        v88 = @"model.espresso.shape";
        v95 = @"model.espresso.weights";
      }

      v17 = path2;
      v21 = v86;
      v22 = v88;
    }

    else
    {
      v21 = @"model.espresso.net";
      v22 = @"model.espresso.shape";
      v95 = @"model.espresso.weights";
    }

    v105 = v17;
    v87 = v21;
    v89 = v22;
    v79 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v17, v21];
    v78 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v17, v22];
    v77 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v17, v95];
    v76 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/net.plist", v17];
    v42 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v79];
    v90 = v42;
    v102 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v78];
    v101 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v77];
    v99 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v76];
    v43 = MEMORY[0x1E696ACC8];
    v44 = [v106 key];
    v45 = [v44 length];
    if (v45)
    {
      v46 = [v106 key];
    }

    else
    {
      v46 = v105;
    }

    v100 = [v43 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:0];
    if (v45)
    {
    }

    v47 = MEMORY[0x1E696ACC8];
    modelAttributes = [v106 modelAttributes];
    v93 = [v47 archivedDataWithRootObject:modelAttributes requiringSecureCoding:1 error:0];

    v49 = MEMORY[0x1E696ACC8];
    modelURL3 = [v106 modelURL];
    path3 = [modelURL3 path];
    v52 = [v49 archivedDataWithRootObject:path3 requiringSecureCoding:1 error:0];

    data->var19 = 0;
    v91 = v52;
    data->var0 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v42, [v42 length], &data->var17.var2);
    data->var1 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v102, [v102 length], &data->var17.var3);
    data->var2 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v101, [v101 length], &data->var17.var4);
    data->var8 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v99, [v99 length], &data->var17.var28);
    data->var6 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v100, [v100 length], &data->var17.var5);
    data->var7 = [(_ANEVirtualClient *)self copyToIOSurface:v93 length:0x100000 ioSID:&data->var17.var19];
    data->var11 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v52, [v52 length], &data->var17.var52);
    data->var17.var61 = 0;
    data->var17.var6 = [v42 length];
    data->var17.var7 = [v102 length];
    data->var17.var8 = [v101 length];
    data->var17.var9 = [v100 length];
    data->var17.var20 = [v93 length];
    data->var17.var14 = [v106 string_id];
    data->var17.var15 = [v106 programHandle];
    data->var17.var16 = [v106 intermediateBufferHandle];
    data->var17.var17 = [v106 queueDepth];
    data->var17.var21 = [v106 perfStatsMask];
    data->var17.var29 = [v99 length];
    data->var17.var53 = [v52 length];
    v109 = [optionsCopy objectForKey:kANEFEspressoFileResourcesKey[0]];
    if ([v109 count])
    {
      v53 = 0;
      v103 = 0;
      v54 = 0;
      var16 = data->var16;
      var12 = data->var17.var12;
      var15 = data->var15;
      var10 = data->var17.var10;
      var11 = data->var17.var11;
      var13 = data->var17.var13;
      while (v53 < [v109 count])
      {
        v55 = [v109 objectAtIndexedSubscript:v53];

        v56 = gLogger;
        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
        {
          v68 = NSStringFromSelector(a2);
          *buf = 138412546;
          *v111 = v68;
          *&v111[8] = 2112;
          *v112 = v55;
          _os_log_debug_impl(&dword_1AD246000, v56, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient: %@ \n", buf, 0x16u);
        }

        v57 = [v55 componentsSeparatedByString:@"."];
        lastObject2 = [v57 lastObject];
        if (([lastObject2 isEqual:@"net"] & 1) == 0 && (objc_msgSend(lastObject2, "isEqual:", @"shape") & 1) == 0 && (objc_msgSend(lastObject2, "isEqual:", @"weights") & 1) == 0)
        {
          v59 = v103;
          if (v103 >= 32)
          {
            v60 = gLogger;
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              v73 = NSStringFromSelector(a2);
              v74 = [v109 count];
              *buf = 138412802;
              *v111 = v73;
              *&v111[8] = 2048;
              *v112 = v74;
              *&v112[8] = 1024;
              LODWORD(v113) = 32;
              _os_log_error_impl(&dword_1AD246000, v60, OS_LOG_TYPE_ERROR, "%@: ANEVirtualClient: %lu execeed max number of reference expresso files %d \n", buf, 0x1Cu);
            }

            v59 = v103;
          }

          v98 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v55 requiringSecureCoding:1 error:0];
          v61 = v59;
          var16[v59] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v98, [v98 length], &var12[v59]);
          var13[v59] = [v98 length];
          v62 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            v69 = var12[v59];
            v70 = var13[v59];
            *buf = 67109632;
            *v111 = v59;
            *&v111[4] = 1024;
            *&v111[6] = v69;
            *v112 = 2048;
            *&v112[2] = v70;
            _os_log_debug_impl(&dword_1AD246000, v62, OS_LOG_TYPE_DEBUG, "ioSModelEspressoRefFileName[%d] surface ID: %d length: %llu\n", buf, 0x18u);
          }

          v63 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", v105, v55];
          v64 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *v111 = v63;
            _os_log_debug_impl(&dword_1AD246000, v64, OS_LOG_TYPE_DEBUG, " fileEspresso %@\n", buf, 0xCu);
          }

          v65 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v63];
          v66 = &var10[v59];
          var15[v59] = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v65, [v65 length], v66);
          var11[v59] = [v65 length];
          v67 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            v71 = *v66;
            v72 = var11[v61];
            *buf = 67109632;
            *v111 = v103;
            *&v111[4] = 1024;
            *&v111[6] = v71;
            *v112 = 2048;
            *&v112[2] = v72;
            _os_log_debug_impl(&dword_1AD246000, v67, OS_LOG_TYPE_DEBUG, "ioSIDModelEspressoRefFile[%d] surface ID: %d length: %llu\n", buf, 0x18u);
          }

          v42 = v90;
          v52 = v91;

          ++v103;
        }

        ++v53;
        v54 = v55;
      }
    }
  }

  else
  {
    v92 = gLogger;
    if (os_log_type_enabled(v92, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModel:options:vmData:];
    }
  }
}

- (BOOL)copyFilesInDirectoryToIOSurfaces:(id)surfaces ioSurfaceRefs:(__CFArray *)refs ioSurfaceSizes:(id)sizes fileNames:(id)names
{
  v69 = *MEMORY[0x1E69E9840];
  surfacesCopy = surfaces;
  sizesCopy = sizes;
  namesCopy = names;
  v52 = surfacesCopy;
  if ([surfacesCopy hasSuffix:@"/"])
  {
    v9 = [surfacesCopy substringToIndex:{objc_msgSend(surfacesCopy, "length") - 1}];

    v52 = v9;
  }

  [MEMORY[0x1E696AC08] defaultManager];
  v51 = v61 = 0;
  [v51 fileExistsAtPath:v52 isDirectory:&v61];
  if ((v61 & 1) == 0)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:];
    }

    v40 = 0;
    goto LABEL_61;
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v60 = 0;
  v44 = [defaultManager contentsOfDirectoryAtPath:v52 error:&v60];
  v48 = v60;

  if (v48 || !v44)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:];
    }

LABEL_55:
    v40 = 0;
    goto LABEL_60;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v44;
  v11 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
  if (!v11)
  {

    v48 = 0;
    goto LABEL_57;
  }

  v12 = 0;
  v48 = 0;
  v50 = 1;
  v13 = *v57;
  do
  {
    v14 = 0;
    do
    {
      if (*v57 != v13)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(*(&v56 + 1) + 8 * v14);
      v16 = objc_autoreleasePoolPush();
      if (v12 < 0x20)
      {
        v19 = [v52 stringByAppendingPathComponent:v15];
        v55 = 0;
        if ([v51 fileExistsAtPath:v19 isDirectory:&v55])
        {
          v20 = gLogger;
          if (v55 == 1)
          {
            if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v63 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
              v64 = 2112;
              v65 = v19;
              v21 = v20;
              v22 = "%s: Sub-directory found at location=%@ cannot be traversed (unsupported), SKIPPING";
              v23 = 22;
              goto LABEL_43;
            }

            goto LABEL_20;
          }

          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315394;
            v63 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
            v64 = 2112;
            v65 = v19;
            _os_log_debug_impl(&dword_1AD246000, v20, OS_LOG_TYPE_DEBUG, "%s: Copying %@", buf, 0x16u);
          }

          v25 = objc_alloc(MEMORY[0x1E695DEF0]);
          v54 = 0;
          v26 = [v25 initWithContentsOfFile:v19 options:0 error:&v54];
          v48 = v54;
          if (v26)
          {
            v53 = 0;
            v27 = [v26 length];
            v28 = [(_ANEVirtualClient *)self copyToIOSurface:v26 length:v27 ioSID:&v53];
            if (v28)
            {
              if (v53)
              {
                CFArrayAppendValue(refs, v28);
                v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
                [sizesCopy addObject:v29];

                [namesCopy addObject:v15];
                CFRelease(v28);
                v18 = 0;
                ++v12;
                goto LABEL_36;
              }

              v35 = gLogger;
              if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v63 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
                v64 = 2112;
                v65 = v19;
                v31 = v35;
                v32 = "%s: FAILED to get IOSID for %@";
LABEL_33:
                v33 = 22;
LABEL_34:
                _os_log_error_impl(&dword_1AD246000, v31, OS_LOG_TYPE_ERROR, v32, buf, v33);
              }
            }

            else
            {
              v34 = gLogger;
              if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v63 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
                v64 = 2112;
                v65 = v19;
                v31 = v34;
                v32 = "%s: FAILED to write data to IOSurface for %@";
                goto LABEL_33;
              }
            }
          }

          else
          {
            v30 = gLogger;
            if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315650;
              v63 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
              v64 = 2112;
              v65 = v19;
              v66 = 2112;
              v67 = v48;
              v31 = v30;
              v32 = "%s: Could not extract data from %@ with error %@, copy FAILED";
              v33 = 32;
              goto LABEL_34;
            }
          }

          v50 = 0;
          v18 = 2;
LABEL_36:
        }

        else
        {
          v24 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v63 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
            v64 = 2112;
            v65 = v15;
            v66 = 2112;
            v67 = v19;
            v21 = v24;
            v22 = "%s: file=%@ does not exists at location=%@, SKIPPING";
            v23 = 32;
LABEL_43:
            _os_log_error_impl(&dword_1AD246000, v21, OS_LOG_TYPE_ERROR, v22, buf, v23);
          }

LABEL_20:
          v18 = 3;
        }

        goto LABEL_38;
      }

      v17 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v63 = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
        v64 = 1024;
        LODWORD(v65) = 32;
        _os_log_error_impl(&dword_1AD246000, v17, OS_LOG_TYPE_ERROR, "%s: max file count reached %d, copy FAILED", buf, 0x12u);
      }

      v50 = 0;
      v18 = 2;
LABEL_38:
      objc_autoreleasePoolPop(v16);
      if (v18 != 3 && v18)
      {
        goto LABEL_45;
      }

      ++v14;
    }

    while (v11 != v14);
    v36 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    v11 = v36;
  }

  while (v36);
LABEL_45:

  if ((v50 & 1) == 0)
  {
    Count = CFArrayGetCount(refs);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(refs, i);
        CFRelease(ValueAtIndex);
      }
    }

    goto LABEL_55;
  }

LABEL_57:
  v41 = gLogger;
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
  {
    -[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:].cold.2(buf, [namesCopy count]);
  }

  v40 = 1;
LABEL_60:

LABEL_61:
  return v40;
}

- (BOOL)copyAllModelFiles:(id)files dictionary:(__CFDictionary *)dictionary ioSurfaceRefs:(__CFArray *)refs
{
  v104 = *MEMORY[0x1E69E9840];
  filesCopy = files;
  if (!filesCopy || !dictionary || !refs)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

    v77 = 0;
    goto LABEL_112;
  }

  modelURL = [filesCopy modelURL];
  path = [modelURL path];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  validateEnvironmentForPrecompiledBinarySupport = [(_ANEVirtualClient *)self validateEnvironmentForPrecompiledBinarySupport];
  if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
  {
    [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
  }

  v97 = 0;
  v6 = &stru_1F224D6A0;
  [defaultManager fileExistsAtPath:path isDirectory:&v97];
  if (v97)
  {
    goto LABEL_7;
  }

  v55 = [path componentsSeparatedByString:@"/"];
  lastObject = [v55 lastObject];
  v57 = [lastObject componentsSeparatedByString:@"."];
  lastObject2 = [v57 lastObject];
  v59 = [lastObject2 isEqual:@"hwx"] ^ 1 | validateEnvironmentForPrecompiledBinarySupport;
  if (v59)
  {
    v60 = [path containsString:@"/System"];
    if (v60)
    {
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
      }

      obja = [v55 lastObject];
      v61 = [obja componentsSeparatedByString:@"."];
      v62 = [v61 mutableCopy];
      [v62 removeLastObject];
      v6 = [v62 componentsJoinedByString:@"."];
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
      {
        [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
      }
    }

    v80 = v6;
    v63 = [v55 mutableCopy];
    [v63 removeLastObject];
    v64 = [v63 componentsJoinedByString:@"/"];

    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

    path = v64;
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

    v60 = 0;
    v80 = &stru_1F224D6A0;
  }

  if ((v59 & 1) == 0)
  {
LABEL_109:
    v77 = 0;
    goto LABEL_110;
  }

  v6 = v80;
  if (!v60)
  {
LABEL_7:
    v82 = 0;
    goto LABEL_8;
  }

  if (![(__CFString *)v80 length])
  {
    if (!os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      v77 = 0;
      goto LABEL_111;
    }

    [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    goto LABEL_109;
  }

  v82 = 1;
LABEL_8:
  v80 = v6;
  defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
  v96 = 0;
  v73 = [defaultManager2 contentsOfDirectoryAtPath:path error:&v96];
  v72 = v96;

  if (v72 || !v73)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
    }

LABEL_91:
    v77 = 0;
    goto LABEL_106;
  }

  v95 = 0;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v73;
  v8 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
  if (!v8)
  {
    v77 = 1;
    goto LABEL_100;
  }

  v77 = 1;
  v9 = *v92;
  allocator = *MEMORY[0x1E695E480];
  while (2)
  {
    v10 = 0;
    do
    {
      if (*v92 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v91 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      if (v95 < 0x20)
      {
        if (v82 && ![v11 containsString:v80])
        {
          v14 = 3;
          goto LABEL_41;
        }

        v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", path, v11];
        v16 = [v11 componentsSeparatedByString:@"."];
        lastObject3 = [v16 lastObject];
        if (!(validateEnvironmentForPrecompiledBinarySupport | (([lastObject3 isEqual:@"hwx"] & 1) == 0)))
        {
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            [_ANEVirtualClient copyAllModelFiles:v90 dictionary:? ioSurfaceRefs:?];
          }

          goto LABEL_39;
        }

        v18 = +[_ANEStrings llirBundleExtension];
        v19 = [v11 hasSuffix:v18];

        if (v19)
        {
          if ([(_ANEVirtualClient *)self negotiatedDataInterfaceVersion]> 0x20404)
          {
            *buf = 0;
            v24 = [_ANEVirtualClient copyLLIRBundleToIOSurface:v15 writtenDataSize:buf];
            if (v24 && *buf)
            {
              CFArrayAppendValue(refs, v24);
              v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:IOSurfaceGetID(v24)];
              [(__CFDictionary *)dictionary setObject:v25 forKey:@"ioSIDLLIRBundle"];

              v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:*buf];
              [(__CFDictionary *)dictionary setObject:v26 forKey:@"llirDataSize"];
              v14 = 3;
            }

            else
            {
              v26 = gLogger;
              if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
              {
                NSStringFromSelector(a2);
                objc_claimAutoreleasedReturnValue();
                [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
              }

              v14 = 2;
            }

            goto LABEL_40;
          }

          v20 = gLogger;
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v51 = NSStringFromSelector(a2);
            negotiatedDataInterfaceVersion = [(_ANEVirtualClient *)self negotiatedDataInterfaceVersion];
            *buf = 138412546;
            *&buf[4] = v51;
            v99 = 1024;
            *v100 = negotiatedDataInterfaceVersion;
            _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: LLIR bundle not supported negotiatedInterfaceVersion=0x%x", buf, 0x12u);
          }

          goto LABEL_39;
        }

        v88 = 0;
        if (([defaultManager fileExistsAtPath:v15 isDirectory:&v88] & 1) == 0)
        {
          v27 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            *&buf[4] = v11;
            v99 = 2112;
            *v100 = v15;
            _os_log_error_impl(&dword_1AD246000, v27, OS_LOG_TYPE_ERROR, "copyAllModelFiles file=%@ does not exist at location=%@, SKIPPING\n", buf, 0x16u);
          }

          goto LABEL_39;
        }

        v21 = v88;
        v22 = gLogger;
        v23 = os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG);
        if (v21 == 1)
        {
          if (v23)
          {
            *buf = 138412290;
            *&buf[4] = v15;
            _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "copyAllModelFiles Sub-directory traversal unsupported, SKIPPING %@", buf, 0xCu);
          }

LABEL_39:
          v14 = 3;
LABEL_40:

          goto LABEL_41;
        }

        if (v23)
        {
          *buf = 138412802;
          *&buf[4] = v11;
          v99 = 2112;
          *v100 = path;
          *&v100[8] = 2112;
          *&v100[10] = v15;
          _os_log_debug_impl(&dword_1AD246000, v22, OS_LOG_TYPE_DEBUG, "copyAllModelFiles file=%@ directoryPath=%@ fullFilePath=%@", buf, 0x20u);
        }

        v28 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v15];
        v29 = v28;
        if (!v28)
        {
          v33 = gLogger;
          if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            *&buf[4] = v11;
            _os_log_debug_impl(&dword_1AD246000, v33, OS_LOG_TYPE_DEBUG, "copyAllModelFiles could not get data for file=%@, SKIPPING", buf, 0xCu);
          }

          v14 = 3;
          goto LABEL_70;
        }

        valuePtr = 0;
        v30 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v28, [v28 length], &valuePtr);
        if (v30)
        {
          if (valuePtr)
          {
            CFArrayAppendValue(refs, v30);
            if ([lastObject3 isEqual:@"hwx"])
            {
              v31 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
              CFDictionarySetValue(dictionary, @"ioSIDModelHWX", v31);
              CFRelease(v31);
              CFDictionarySetValue(dictionary, @"hwxFileName", v11);
              *buf = [v29 length];
              v32 = CFNumberCreate(allocator, kCFNumberSInt64Type, buf);
              CFDictionarySetValue(dictionary, @"modelHWXLength", v32);
              CFRelease(v32);
              v14 = 0;
            }

            else
            {
              v68 = v29;
              v69 = v95;
              v38 = CFStringCreateWithFormat(0, 0, @"fileIOSID%u", v95);
              v39 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
              CFDictionarySetValue(dictionary, v38, v39);
              CFRelease(v39);
              CFRelease(v38);
              v40 = CFStringCreateWithFormat(0, 0, @"fileName%u", v69);
              CFDictionarySetValue(dictionary, v40, v11);
              CFRelease(v40);
              v41 = CFStringCreateWithFormat(0, 0, @"fileLength%u", v69);
              v86 = [v68 length];
              v42 = CFNumberCreate(allocator, kCFNumberSInt64Type, &v86);
              CFDictionarySetValue(dictionary, v41, v42);
              CFRelease(v42);
              CFRelease(v41);
              defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
              v44 = [defaultManager3 attributesOfItemAtPath:v15 error:0];
              fileModificationDate = [v44 fileModificationDate];

              v46 = fileModificationDate;
              if (fileModificationDate)
              {
                v47 = MEMORY[0x1E696AD98];
                [fileModificationDate timeIntervalSince1970];
                v67 = [v47 numberWithDouble:?];
                stringValue = [v67 stringValue];
                v49 = CFStringCreateWithFormat(0, 0, @"FileLastModificationTimeStamp%u", v69);
                CFDictionarySetValue(dictionary, v49, stringValue);
                CFRelease(v49);
                v50 = gLogger;
                if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315650;
                  *&buf[4] = "[_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:]";
                  v99 = 1024;
                  *v100 = v69;
                  *&v100[4] = 2112;
                  *&v100[6] = stringValue;
                  _os_log_debug_impl(&dword_1AD246000, v50, OS_LOG_TYPE_DEBUG, "%s fileCounter:%u lastModificationTimeStampString:%@", buf, 0x1Cu);
                }

                v46 = fileModificationDate;
              }

              else
              {
                v53 = gLogger;
                if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315394;
                  *&buf[4] = "[_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:]";
                  v99 = 2112;
                  *v100 = v15;
                  _os_log_error_impl(&dword_1AD246000, v53, OS_LOG_TYPE_ERROR, "%s lastModificationDate not available for %@", buf, 0x16u);
                }
              }

              v95 = v69 + 1;

              v14 = 0;
              v29 = v68;
            }

            goto LABEL_70;
          }

          v37 = gLogger;
          if (!os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
LABEL_62:
            v77 = 0;
            v14 = 2;
LABEL_70:

            goto LABEL_40;
          }

          *buf = 138412290;
          *&buf[4] = v11;
          v35 = v37;
          v36 = "copyAllModelFiles failed to IOSurfaceID for file=%@\n";
        }

        else
        {
          v34 = gLogger;
          if (!os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          *buf = 138412290;
          *&buf[4] = v11;
          v35 = v34;
          v36 = "copyAllModelFiles failed to write file data to IOSurface for file=%@\n";
        }

        _os_log_error_impl(&dword_1AD246000, v35, OS_LOG_TYPE_ERROR, v36, buf, 0xCu);
        goto LABEL_62;
      }

      v13 = gLogger;
      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        [_ANEVirtualClient copyAllModelFiles:v101 dictionary:&v102 ioSurfaceRefs:v13];
      }

      v14 = 1;
LABEL_41:
      objc_autoreleasePoolPop(v12);
      if (v14 != 3 && v14)
      {

        if (v14 == 2)
        {
          goto LABEL_101;
        }

        goto LABEL_91;
      }

      ++v10;
    }

    while (v8 != v10);
    v54 = [obj countByEnumeratingWithState:&v91 objects:v103 count:16];
    v8 = v54;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_100:

LABEL_101:
  if ((v77 & 1) != 0 && v95)
  {
    v65 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &v95);
    CFDictionarySetValue(dictionary, @"numModelFiles", v65);
    CFRelease(v65);
    v77 = 1;
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    [_ANEVirtualClient copyAllModelFiles:dictionary:ioSurfaceRefs:];
  }

LABEL_106:

LABEL_110:
  v6 = v80;
LABEL_111:

LABEL_112:
  return v77 & 1;
}

+ (__IOSurface)copyLLIRBundleToIOSurface:(id)surface writtenDataSize:(unint64_t *)size
{
  v34[3] = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  if (surfaceCopy)
  {
    if (size)
    {
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      if (!defaultManager)
      {
        data = gLogger;
        if (os_log_type_enabled(data, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
        }

        v17 = 0;
        goto LABEL_44;
      }

      data = [MEMORY[0x1E695DF88] data];
      if (data)
      {
        v9 = [defaultManager fileExistsAtPath:surfaceCopy];
        if ((([surfaceCopy length] != 0) & v9) != 0)
        {
          lastPathComponent = [surfaceCopy lastPathComponent];
          v10 = [lastPathComponent dataUsingEncoding:4];
          v26 = v10;
          v31 = [v10 length];
          if (v31)
          {
            [data appendBytes:&v31 length:4];
            [data appendData:v10];
            v28 = [defaultManager enumeratorAtPath:surfaceCopy];
            for (i = 0; ; i = nextObject)
            {
              nextObject = [v28 nextObject];

              if (!nextObject)
              {
                break;
              }

              v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@/%@", surfaceCopy, nextObject];
              v30 = 0;
              if ([defaultManager fileExistsAtPath:v13 isDirectory:&v30])
              {
                if (v30 == 1)
                {
                  v29 = [nextObject length];
                  [data appendBytes:&v29 length:4];
                  v14 = [nextObject dataUsingEncoding:4];
                  [data appendData:v14];

                  v34[0] = 0;
                  [data appendBytes:v34 length:8];
                }

                else
                {
                  v15 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v13];
                  if (!v15)
                  {
                    v24 = gLogger;
                    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                    {
                      NSStringFromSelector(a2);
                      objc_claimAutoreleasedReturnValue();
                      +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
                    }

                    goto LABEL_40;
                  }

                  v29 = [nextObject length];
                  [data appendBytes:&v29 length:4];
                  v16 = [nextObject dataUsingEncoding:4];
                  [data appendData:v16];

                  v34[0] = [v15 length];
                  [data appendBytes:v34 length:8];
                  [data appendData:v15];
                }
              }
            }

            v32 = *MEMORY[0x1E696CE30];
            v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NSObject length](data, "length")}];
            v33 = v18;
            v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];

            v19 = IOSurfaceCreate(v13);
            v17 = v19;
            if (v19)
            {
              AllocSize = IOSurfaceGetAllocSize(v19);
              if (AllocSize >= [data length])
              {
                IOSurfaceLock(v17, 0, 0);
                BaseAddress = IOSurfaceGetBaseAddress(v17);
                v23 = data;
                memcpy(BaseAddress, [data bytes], [data length]);
                IOSurfaceUnlock(v17, 0, 0);
                *size = [data length];
                goto LABEL_41;
              }
            }

            v21 = gLogger;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              [data length];
              +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
            }

LABEL_40:
            v17 = 0;
LABEL_41:
          }

          else
          {
            v28 = gLogger;
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
            }

            v17 = 0;
          }

          goto LABEL_43;
        }

        lastPathComponent = gLogger;
        if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
        }
      }

      else
      {
        lastPathComponent = gLogger;
        if (os_log_type_enabled(lastPathComponent, OS_LOG_TYPE_ERROR))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
        }
      }

      v17 = 0;
LABEL_43:

LABEL_44:
      goto LABEL_45;
    }

    defaultManager = gLogger;
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
    }
  }

  else
  {
    defaultManager = gLogger;
    if (os_log_type_enabled(defaultManager, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient copyLLIRBundleToIOSurface:writtenDataSize:];
    }
  }

  v17 = 0;
LABEL_45:

  return v17;
}

+ (void)freeModelFileIOSurfaces:(__CFArray *)surfaces
{
  Count = CFArrayGetCount(surfaces);
  if (Count >= 1)
  {
    v5 = Count;
    for (i = 0; i != v5; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(surfaces, i);
      CFRelease(ValueAtIndex);
    }
  }
}

- (void)copyModelMetaData:(id)data options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)vmData
{
  v59 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  optionsCopy = options;
  if (vmData)
  {
    uUID = [dataCopy UUID];

    if (uUID)
    {
      [dataCopy UUID];
    }

    else
    {
      [MEMORY[0x1E696AFB0] UUID];
    }
    v13 = ;
    uUIDString = [v13 UUIDString];

    [(__CFDictionary *)dictionary setValue:uUIDString forKey:@"uuid"];
    v14 = [dataCopy key];
    v15 = [v14 length];

    v16 = MEMORY[0x1E695E480];
    if (v15)
    {
      v17 = MEMORY[0x1E696ACC8];
      v18 = [dataCopy key];
      v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];

      vmData->var6 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v19, [v19 length], &vmData->var17.var5);
      v20 = *v16;
      v21 = CFNumberCreate(*v16, kCFNumberSInt32Type, &vmData->var17.var5);
      CFDictionarySetValue(dictionary, @"ioSIDKey", v21);
      CFRelease(v21);
      vmData->var17.var9 = [v19 length];
      v22 = CFNumberCreate(v20, kCFNumberSInt64Type, &vmData->var17.var9);
      CFDictionarySetValue(dictionary, @"keyLength", v22);
      CFRelease(v22);
    }

    v23 = MEMORY[0x1E696ACC8];
    modelAttributes = [dataCopy modelAttributes];
    v25 = [v23 archivedDataWithRootObject:modelAttributes requiringSecureCoding:1 error:0];
    aSelector = a2;

    v53 = v25;
    vmData->var7 = [(_ANEVirtualClient *)self copyToIOSurface:v25 length:0x100000 ioSID:&vmData->var17.var19];
    v26 = *v16;
    v27 = CFNumberCreate(*v16, kCFNumberSInt32Type, &vmData->var17.var19);
    CFDictionarySetValue(dictionary, @"ioSIDModelAttributes", v27);
    CFRelease(v27);
    vmData->var17.var20 = [v25 length];
    v28 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var20);
    CFDictionarySetValue(dictionary, @"modelAttributeLength", v28);
    CFRelease(v28);
    v29 = MEMORY[0x1E696ACC8];
    modelURL = [dataCopy modelURL];
    path = [modelURL path];
    v32 = [v29 archivedDataWithRootObject:path requiringSecureCoding:1 error:0];

    vmData->var11 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v32, [v32 length], &vmData->var17.var52);
    v33 = CFNumberCreate(v26, kCFNumberSInt32Type, &vmData->var17.var52);
    CFDictionarySetValue(dictionary, @"ioSIDModelInputPath", v33);
    CFRelease(v33);
    vmData->var17.var53 = [v32 length];
    v34 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var53);
    CFDictionarySetValue(dictionary, @"modelInputPathLength", v34);
    CFRelease(v34);
    sourceURL = [dataCopy sourceURL];

    if (sourceURL)
    {
      v36 = gLogger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
      {
        v37 = NSStringFromSelector(aSelector);
        sourceURL2 = [dataCopy sourceURL];
        [_ANEVirtualClient copyModelMetaData:v37 options:sourceURL2 dictionary:v58 vmData:?];
      }

      v39 = MEMORY[0x1E696ACC8];
      sourceURL3 = [dataCopy sourceURL];
      path2 = [sourceURL3 path];
      v42 = [v39 archivedDataWithRootObject:path2 requiringSecureCoding:1 error:0];

      valuePtr = 0;
      vmData->var20 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v42, [v42 length], &valuePtr);
      v43 = CFNumberCreate(v26, kCFNumberSInt32Type, &valuePtr);
      CFDictionarySetValue(dictionary, @"ioSIDModelSourceURLPath", v43);
      CFRelease(v43);
      identifierSource = [v42 length];
      v44 = gLogger;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(aSelector);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient copyModelMetaData:options:dictionary:vmData:];
      }

      v45 = CFNumberCreate(v26, kCFNumberSInt64Type, &identifierSource);
      CFDictionarySetValue(dictionary, @"sourceURLPathLength", v45);
      CFRelease(v45);
    }

    identifierSource = [dataCopy identifierSource];
    v46 = CFNumberCreate(v26, kCFNumberSInt64Type, &identifierSource);
    CFDictionarySetValue(dictionary, @"modelCacheURLIdentifierSource", v46);
    CFRelease(v46);
    vmData->var17.var14 = [dataCopy string_id];
    v47 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var14);
    CFDictionarySetValue(dictionary, @"string_id", v47);
    CFRelease(v47);
    vmData->var17.var15 = [dataCopy programHandle];
    v48 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var15);
    CFDictionarySetValue(dictionary, @"programHandle", v48);
    CFRelease(v48);
    vmData->var17.var16 = [dataCopy intermediateBufferHandle];
    v49 = CFNumberCreate(v26, kCFNumberSInt64Type, &vmData->var17.var16);
    CFDictionarySetValue(dictionary, @"intermediateBufferHandle", v49);
    CFRelease(v49);
    vmData->var17.var17 = [dataCopy queueDepth];
    v50 = CFNumberCreate(v26, kCFNumberSInt8Type, &vmData->var17.var17);
    CFDictionarySetValue(dictionary, @"queueDepth", v50);
    CFRelease(v50);
    vmData->var17.var21 = [dataCopy perfStatsMask];
    v51 = CFNumberCreate(v26, kCFNumberSInt32Type, &vmData->var17.var21);
    CFDictionarySetValue(dictionary, @"perfStatsMask", v51);
    CFRelease(v51);
  }

  else
  {
    uUIDString = gLogger;
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModel:options:vmData:];
    }
  }
}

- (id)readWeightFilename:(id)filename
{
  filenameCopy = filename;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:filenameCopy];
  if (v6)
  {
    v7 = [(_ANEVirtualClient *)self doJsonParsingMatchWeightName:v6];
    if (v7)
    {
      v8 = gLogger;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient readWeightFilename:];
      }
    }

    else
    {
      v10 = [(_ANEVirtualClient *)self parallelDecompressedData:v6];
      v11 = [(_ANEVirtualClient *)self doJsonParsingMatchWeightName:v10];

      v7 = v11;
    }
  }

  else
  {
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient readWeightFilename:];
    }

    v7 = @"model.espresso.weights";
  }

  return v7;
}

- (id)doJsonParsingMatchWeightName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:nameCopy options:0 error:0];
  if (!v5)
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doJsonParsingMatchWeightName:];
    }

    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doJsonParsingMatchWeightName:];
    }

    goto LABEL_12;
  }

  v6 = [v5 objectForKeyedSubscript:@"storage"];
  v7 = gLogger;
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (!v6)
  {
    if (v8)
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient doJsonParsingMatchWeightName:];
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  if (v8)
  {
    NSStringFromSelector(a2);
    objc_claimAutoreleasedReturnValue();
    [_ANEVirtualClient doJsonParsingMatchWeightName:];
  }

LABEL_13:

  return v6;
}

- (id)parallelDecompressedData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = dataCopy;
  if (!dataCopy || [dataCopy length] < 0x1D || (v6 = objc_msgSend(v5, "bytes"), v7 = v6, *v6 != 112) || v6[1] != 98 || v6[2] != 122)
  {
    v9 = 0;
    goto LABEL_11;
  }

  v8 = v6[3];
  if (v8 <= 0x77)
  {
    if (v8 == 52)
    {
      v11 = COMPRESSION_LZ4;
      goto LABEL_23;
    }

    if (v8 == 101)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v8 == 122)
  {
    v11 = COMPRESSION_ZLIB;
    goto LABEL_23;
  }

  if (v8 != 120)
  {
LABEL_17:
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient parallelDecompressedData:];
    }

LABEL_20:
    v11 = COMPRESSION_LZFSE;
    goto LABEL_23;
  }

  v11 = COMPRESSION_LZMA;
LABEL_23:
  v13 = bswap64(*(v7 + 12));
  if (v13 >= 0x80000001)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient parallelDecompressedData:];
    }
  }

  v9 = [MEMORY[0x1E695DF88] dataWithLength:v13];
  v15 = v9;
  mutableBytes = [v9 mutableBytes];
  v17 = [v9 length];
  v18 = v5;
  v19 = compression_decode_buffer(mutableBytes, v17, ([v5 bytes] + 28), objc_msgSend(v5, "length") - 28, 0, v11);
  if (v19 != [v9 length])
  {
    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = NSStringFromSelector(a2);
      v22 = 138412802;
      v23 = v21;
      v24 = 2048;
      v25 = v19;
      v26 = 2048;
      v27 = [v9 length];
      _os_log_error_impl(&dword_1AD246000, v20, OS_LOG_TYPE_ERROR, "%@: Mismatching decompression size %zu %zu ", &v22, 0x20u);
    }
  }

LABEL_11:

  return v9;
}

- (void)copyOptions:(id)options vmData:(VMData *)data
{
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:options requiringSecureCoding:1 error:0];
  if (v6)
  {
    v7 = v6;
    data->var17.var24 = [v6 length];
    data->var4 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v7, [v7 length], &data->var17.var23);
    v6 = v7;
  }

  else
  {
    data->var17.var23 = 0;
    data->var17.var24 = 0;
  }
}

- (void)copyOptions:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data
{
  optionsCopy = options;
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  v9 = v8;
  if (v8)
  {
    data->var17.var24 = [v8 length];
    data->var4 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v9, [v9 length], &data->var17.var23);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &data->var17.var23);
    CFDictionarySetValue(dictionary, @"ioSIDOptions", v11);
    CFRelease(v11);
  }

  else
  {
    data->var17.var23 = 0;
    data->var17.var24 = 0;
    v10 = *MEMORY[0x1E695E480];
  }

  v12 = CFNumberCreate(v10, kCFNumberSInt64Type, &data->var17.var24);
  CFDictionarySetValue(dictionary, @"optionsLength", v12);
  CFRelease(v12);
}

- (void)copyModelOptionFiles:(id)files options:(id)options vmData:(VMData *)data
{
  filesCopy = files;
  optionsCopy = options;
  v11 = optionsCopy;
  if (optionsCopy)
  {
    v12 = [optionsCopy objectForKeyedSubscript:kANEFCompilerOptionsFilenameKey[0]];
    if (v12)
    {
      v13 = objc_alloc(MEMORY[0x1E696AEC0]);
      modelURL = [filesCopy modelURL];
      path = [modelURL path];
      v16 = [v13 initWithFormat:@"%@/%@", path, v12];

      v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v16];
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [v17 length];
        [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
      }

      data->var17.var27 = [v17 length];
      data->var3 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v17, [v17 length], &data->var17.var26);
    }

    else
    {
      data->var17.var26 = 0;
      data->var17.var27 = 0;
    }
  }

  else
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
    }

    data->var17.var26 = 0;
  }
}

- (void)copyModelOptionFiles:(id)files options:(id)options dictionary:(__CFDictionary *)dictionary vmData:(VMData *)data
{
  filesCopy = files;
  optionsCopy = options;
  v13 = optionsCopy;
  if (optionsCopy)
  {
    v14 = [optionsCopy objectForKeyedSubscript:kANEFCompilerOptionsFilenameKey[0]];
    if (v14)
    {
      v15 = objc_alloc(MEMORY[0x1E696AEC0]);
      modelURL = [filesCopy modelURL];
      path = [modelURL path];
      v18 = [v15 initWithFormat:@"%@/%@", path, v14];

      v19 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:v18];
      v20 = gLogger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [v19 length];
        [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
      }

      data->var17.var27 = [v19 length];
      data->var3 = -[_ANEVirtualClient copyToIOSurface:length:ioSID:](self, "copyToIOSurface:length:ioSID:", v19, [v19 length], &data->var17.var26);
      v21 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &data->var17.var26);
      CFDictionarySetValue(dictionary, @"ioSIDCompilerOptionFile", v21);
      CFRelease(v21);
    }

    else
    {
      data->var17.var26 = 0;
      data->var17.var27 = 0;
    }
  }

  else
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyModelOptionFiles:options:vmData:];
    }

    data->var17.var26 = 0;
    data->var17.var27 = 0;
  }

  v23 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &data->var17.var27);
  CFDictionarySetValue(dictionary, @"compilerOptionFileLength", v23);
  CFRelease(v23);
}

- (void)copyErrorValue:(VMData *)value
{
  *&value->var17.var46 = 0u;
  v5 = MEMORY[0x1E695DF20];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:256];
  v7 = [v5 dictionaryWithObjectsAndKeys:{v6, *MEMORY[0x1E696CE30], 0}];

  v8 = IOSurfaceCreate(v7);
  value->var9 = v8;
  if (v8)
  {
    IOSurfaceLock(v8, 0, 0);
    value->var17.var48 = IOSurfaceGetID(value->var9);
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }

    IOSurfaceUnlock(value->var9, 0, 0);
  }

  else
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }
  }
}

- (void)copyErrorValue:(__CFDictionary *)value vmData:(VMData *)data
{
  *&data->var17.var46 = 0u;
  v7 = MEMORY[0x1E695DF20];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:256];
  v9 = [v7 dictionaryWithObjectsAndKeys:{v8, *MEMORY[0x1E696CE30], 0}];

  v10 = IOSurfaceCreate(v9);
  data->var9 = v10;
  if (v10)
  {
    IOSurfaceLock(v10, 0, 0);
    data->var17.var48 = IOSurfaceGetID(data->var9);
    v11 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &data->var17.var48);
    CFDictionarySetValue(value, @"ioSIDErrorValue", v11);
    CFRelease(v11);
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }

    IOSurfaceUnlock(data->var9, 0, 0);
  }

  else
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }
  }
}

- (__IOSurface)copyToIOSurface:(id)surface length:(unint64_t)length ioSID:(unsigned int *)d
{
  v29 = *MEMORY[0x1E69E9840];
  surfaceCopy = surface;
  if (!d)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:length:ioSID:];
    }

    goto LABEL_11;
  }

  if (!length)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:length:ioSID:];
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:length];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x1E696CE30], 0}];

  v12 = IOSurfaceCreate(v11);
  v13 = v12;
  if (v12)
  {
    IOSurfaceLock(v12, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v13);
    memcpy(BaseAddress, [surfaceCopy bytes], objc_msgSend(surfaceCopy, "length"));
    *d = IOSurfaceGetID(v13);
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(a2);
      v19 = [surfaceCopy length];
      v20 = *d;
      *buf = 138413058;
      v22 = v18;
      v23 = 2048;
      v24 = v19;
      v25 = 2048;
      lengthCopy = length;
      v27 = 1024;
      v28 = v20;
      _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient data in bytes %lu IOSurfaceLength %lu IOSID: %u\n", buf, 0x26u);
    }

    IOSurfaceUnlock(v13, 0, 0);
  }

  else
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:length:ioSID:];
    }
  }

LABEL_12:

  return v13;
}

- (__IOSurface)copyToIOSurface:(char *)surface size:(unint64_t)size ioSID:(unsigned int *)d
{
  v26 = *MEMORY[0x1E69E9840];
  if (!d)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:size:ioSID:];
    }

    goto LABEL_11;
  }

  if (!size)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyToIOSurface:size:ioSID:];
    }

LABEL_11:
    v13 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:size];
  v11 = [v9 dictionaryWithObjectsAndKeys:{v10, *MEMORY[0x1E696CE30], 0}];

  v12 = IOSurfaceCreate(v11);
  v13 = v12;
  if (v12)
  {
    IOSurfaceLock(v12, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(v13);
    memcpy(BaseAddress, surface, size);
    *d = IOSurfaceGetID(v13);
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v18 = NSStringFromSelector(a2);
      v19 = *d;
      *buf = 138412802;
      v21 = v18;
      v22 = 2048;
      sizeCopy = size;
      v24 = 1024;
      v25 = v19;
      _os_log_debug_impl(&dword_1AD246000, v15, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient data in bytes length %lu IOSID: %u\n", buf, 0x1Cu);
    }

    IOSurfaceUnlock(v13, 0, 0);
  }

  else
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyErrorValue:];
    }
  }

LABEL_12:

  return v13;
}

+ (void)printIOSurfaceDataInBytes:(__IOSurface *)bytes
{
  v18 = *MEMORY[0x1E69E9840];
  if (bytes)
  {
    IOSurfaceLock(bytes, 0, 0);
    AllocSize = IOSurfaceGetAllocSize(bytes);
    BaseAddress = IOSurfaceGetBaseAddress(bytes);
    if (AllocSize)
    {
      v7 = BaseAddress;
      for (i = 0; i != AllocSize; ++i)
      {
        v9 = gLogger;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = NSStringFromSelector(a2);
          v11 = v7[i];
          *buf = 138412802;
          v13 = v10;
          v14 = 2048;
          v15 = i;
          v16 = 1024;
          v17 = v11;
          _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "%@ ANEVirtualClient byte[%llu]=0x%x\n", buf, 0x1Cu);
        }
      }
    }

    IOSurfaceUnlock(bytes, 0, 0);
  }

  else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
  {
    +[_ANEVirtualClient printIOSurfaceDataInBytes:];
  }
}

+ (id)getDictionaryWithJSONEncodingFromIOSurface:(__IOSurface *)surface withArchivedDataSize:(unint64_t)size
{
  v25 = *MEMORY[0x1E69E9840];
  if (!surface)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:];
    }

    goto LABEL_9;
  }

  if (!size)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:];
    }

LABEL_9:

LABEL_16:
    v12 = 0;
    goto LABEL_21;
  }

  IOSurfaceLock(surface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (!BaseAddress)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:];
    }

    IOSurfaceUnlock(surface, 0, 0);
    goto LABEL_16;
  }

  v8 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:size];
  v18 = 0;
  v9 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v8 options:1 error:&v18];
  v10 = v18;
  v11 = v10;
  if (!v9 || v10)
  {
    v15 = gLogger;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(a2);
      *buf = 138412802;
      v20 = v17;
      v21 = 2048;
      sizeCopy = size;
      v23 = 2112;
      v24 = v11;
      _os_log_error_impl(&dword_1AD246000, v15, OS_LOG_TYPE_ERROR, "%@: ERROR : failed to extract archived dictionary with archivedDataSize=%llu err=%@!", buf, 0x20u);
    }

    IOSurfaceUnlock(surface, 0, 0);
    v12 = 0;
  }

  else
  {
    IOSurfaceUnlock(surface, 0, 0);
    v12 = v9;
  }

LABEL_21:

  return v12;
}

- (id)getModelAttribute:(VMData *)attribute
{
  v20 = *MEMORY[0x1E69E9840];
  IOSurfaceLock(attribute->var7, 0, 0);
  v5 = MEMORY[0x1E695E0F8];
  BaseAddress = IOSurfaceGetBaseAddress(attribute->var7);
  if (BaseAddress)
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:attribute->var18.var20];
    v13 = 0;
    v5 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:1 error:&v13];
    v8 = v13;
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient getModelAttribute:];
    }

    if (!attribute->var7 && os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient getModelAttribute:];
    }

    v8 = 0;
  }

  v9 = gLogger;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v11 = NSStringFromSelector(a2);
    var20 = attribute->var18.var20;
    *buf = 138412802;
    v15 = v11;
    v16 = 2048;
    v17 = var20;
    v18 = 2112;
    v19 = v5;
    _os_log_debug_impl(&dword_1AD246000, v9, OS_LOG_TYPE_DEBUG, "%@: ANEVirtualClient Model Attribute Length %llu Model Attribute value %@\n", buf, 0x20u);
  }

  IOSurfaceUnlock(attribute->var7, 0, 0);

  return v5;
}

- (BOOL)callIOUserClient:(unsigned int)client inParams:(VirtANEModel *)params outParams:(VirtANEModel *)outParams
{
  v6 = *&client;
  if (outParams)
  {
    outputStruct = outParams;
  }

  else
  {
    outputStruct = &v13;
  }

  v12 = 2640;
  connect = [(_ANEVirtualClient *)self connect];
  if (params)
  {
    v10 = 2640;
  }

  else
  {
    v10 = 0;
  }

  [(_ANEVirtualClient *)self checkKernReturnValue:IOConnectCallMethod(connect selector:v6 outParams:0, 0, params, v10, 0, 0, outputStruct, &v12), v6, outputStruct];
  return outputStruct->var1 != 0;
}

+ (id)getObjectFromIOSurface:(__IOSurface *)surface classType:(Class)type length:(unint64_t)length
{
  v17[4] = *MEMORY[0x1E69E9840];
  if (!surface)
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    goto LABEL_16;
  }

  lengthCopy = length;
  if (!length)
  {
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    goto LABEL_16;
  }

  IOSurfaceLock(surface, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (!BaseAddress)
  {
    IOSurfaceUnlock(surface, 0, 0);
    v10 = gLogger;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

LABEL_16:
    v14 = 0;
    goto LABEL_23;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:lengthCopy];
  IOSurfaceUnlock(surface, 0, 0);
  if (!v10)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    v14 = 0;
    goto LABEL_22;
  }

  v17[0] = 0;
  v11 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v10 error:v17];
  v12 = v17[0];
  if (v12)
  {
    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }

    v14 = 0;
  }

  else
  {
    v15 = [MEMORY[0x1E695DFD8] setWithObject:type];
    v14 = [v11 decodeObjectOfClasses:v15 forKey:*MEMORY[0x1E696A508]];

    if (v14)
    {
      goto LABEL_21;
    }

    v13 = gLogger;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getObjectFromIOSurface:classType:length:];
    }
  }

LABEL_21:
LABEL_22:

LABEL_23:

  return v14;
}

+ (unsigned)dictionaryGetUInt32ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
    LODWORD(Value) = valuePtr;
  }

  return Value;
}

+ (unint64_t)dictionaryGetUInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  result = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

+ (int64_t)dictionaryGetInt64ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  result = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

+ (char)dictionaryGetInt8ForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(key, a4);
  valuePtr = 0;
  if (!Value)
  {
    return 0;
  }

  CFNumberGetValue(Value, kCFNumberSInt8Type, &valuePtr);
  return valuePtr;
}

+ (id)dictionaryGetNSStringForKey:(__CFDictionary *)key key:(__CFString *)a4
{
  Value = CFDictionaryGetValue(key, a4);
  v5 = Value;
  if (Value)
  {
    v6 = Value;
  }

  return v5;
}

+ (__CFDictionary)getCFDictionaryFromIOSurface:(__IOSurface *)surface dataLength:(unint64_t)length
{
  if (!surface)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }

    return 0;
  }

  IOSurfaceLock(surface, 0, 0);
  v6 = operator new[](length, MEMORY[0x1E69E5398]);
  v7 = v6;
  if (length && !v6)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }

    return 0;
  }

  BaseAddress = IOSurfaceGetBaseAddress(surface);
  if (BaseAddress)
  {
    memcpy(v7, BaseAddress, length);
    IOSurfaceUnlock(surface, 0, 0);
    v10 = *MEMORY[0x1E695E480];
    v11 = CFDataCreate(*MEMORY[0x1E695E480], v7, length);
    if (v11)
    {
      v8 = CFPropertyListCreateWithData(v10, v11, 0, 0, 0);
      CFRelease(v11);
      if (v8)
      {
        goto LABEL_20;
      }

      if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
      {
        +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
      }
    }

    else if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }
  }

  else
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      +[_ANEVirtualClient getCFDictionaryFromIOSurface:dataLength:];
    }

    IOSurfaceUnlock(surface, 0, 0);
  }

  v8 = 0;
LABEL_20:
  if (v7)
  {
    MEMORY[0x1B26F3360](v7, 0x1000C4077774924);
  }

  return v8;
}

+ (void)copyDictionaryDataToStruct:(VirtANEModel *)struct dictionary:(__CFDictionary *)dictionary
{
  if (struct && dictionary)
  {
    bzero(struct, 0xA50uLL);
    struct->var1 = [_ANEVirtualClient dictionaryGetInt64ForKey:dictionary key:@"success"];
    struct->var20 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"modelAttributeLength"];
    struct->var47 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"errorLength"];
    struct->var46 = [_ANEVirtualClient dictionaryGetInt64ForKey:dictionary key:@"errorCode"];
    struct->var25 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"state"];
    struct->var15 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"programHandle"];
    struct->var16 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"intermediateBufferHandle"];
    struct->var17 = [_ANEVirtualClient dictionaryGetInt8ForKey:dictionary key:@"queueDepth"];
    struct->var49 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"hwExecutionTime"];
    struct->var51 = [_ANEVirtualClient dictionaryGetUInt64ForKey:dictionary key:@"performanceStatsLength"];
  }

  else
  {
    v7 = gLogger;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient copyDictionaryDataToStruct:dictionary:];
    }
  }
}

+ (id)getCodeSigningIdentity
{
  v12 = *MEMORY[0x1E69E9840];
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
  {
    v3 = gLogger;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient getCodeSigningIdentity];
    }

    v4 = 0;
  }

  else
  {
    v11[0] = *task_info_out;
    v11[1] = v10;
    v5 = [_ANEModelToken codeSigningIDFor:v11 processIdentifier:getpid()];
    v4 = v5;
    if (v5)
    {
      v3 = v5;
      v4 = v3;
    }

    else
    {
      v6 = gLogger;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient getCodeSigningIdentity];
      }

      v3 = 0;
    }
  }

  return v4;
}

+ (BOOL)setCodeSigningIdentity:(__CFDictionary *)identity
{
  v4 = +[_ANEVirtualClient getCodeSigningIdentity];
  if (v4)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_DEBUG))
    {
      +[_ANEVirtualClient setCodeSigningIdentity:];
    }

    CFDictionarySetValue(identity, @"csIdentity", v4);
  }

  return v4 != 0;
}

- (__CFDictionary)callIOUserClientWithDictionary:(unsigned int)dictionary inDictionary:(__CFDictionary *)inDictionary error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  valuePtr = dictionary;
  if (!inDictionary)
  {
    return 0;
  }

  v9 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(inDictionary, @"command", v9);
  CFRelease(v9);
  v10 = IOCFSerialize(inDictionary, 0);
  if (!v10)
  {
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient callIOUserClientWithDictionary:inDictionary:error:];
    }

    return 0;
  }

  v23 = 4096;
  v11 = operator new[](0x1000uLL, MEMORY[0x1E69E5398]);
  if (!v11)
  {
    if (os_log_type_enabled(gLogger, OS_LOG_TYPE_ERROR))
    {
      [_ANEVirtualClient callIOUserClientWithDictionary:inDictionary:error:];
    }

    return 0;
  }

  outputStruct = v11;
  BytePtr = CFDataGetBytePtr(v10);
  Length = CFDataGetLength(v10);
  v15 = IOConnectCallMethod([(_ANEVirtualClient *)self connect], 0x10u, 0, 0, BytePtr, Length, 0, 0, outputStruct, &v23);
  CFRelease(v10);
  if (v15)
  {
    if (error)
    {
      if (v15 == -536870160 || v15 == -536870911)
      {
        v16 = NSStringFromSelector(a2);
        *error = [_ANEErrors fileNotFoundErrorForMethod:v16];
      }

      error = 0;
    }
  }

  else
  {
    v18 = *outputStruct;
    errorString = 0;
    error = IOCFUnserializeBinary(outputStruct + 8, v18, 0, 0, &errorString);
    v19 = errorString;
    if (error && errorString)
    {
      v20 = gLogger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient callIOUserClientWithDictionary:inDictionary:error:];
      }

      v19 = errorString;
    }

    if (v19)
    {
      CFRelease(v19);
    }
  }

  MEMORY[0x1B26F3360](outputStruct, 0x1000C4077774924);
  return error;
}

- (void)checkKernReturnValue:(int)value selector:(unsigned int)selector outParams:(VirtANEModel *)params
{
  v16 = *MEMORY[0x1E69E9840];
  if (value)
  {
    if (params)
    {
      params->var1 = 0;
    }

    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = NSStringFromSelector(a2);
      v10 = 138412802;
      v11 = v9;
      v12 = 1024;
      selectorCopy = selector;
      v14 = 1024;
      valueCopy = value;
      _os_log_error_impl(&dword_1AD246000, v8, OS_LOG_TYPE_ERROR, "%@: Failed to call method %d with error %d", &v10, 0x18u);
    }
  }

  else
  {
    v8 = gLogger;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient checkKernReturnValue:selector:outParams:];
    }
  }
}

+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length error:(id *)a5
{
  if (a5)
  {
    v7 = [_ANEVirtualClient getObjectFromIOSurface:error classType:objc_opt_class() length:length];
    v8 = NSStringFromSelector(a2);
    if (v7)
    {
      [_ANEErrors virtualizationHostError:v8 error:v7];
    }

    else
    {
      [_ANEErrors virtualizationHostError:v8];
    }
    *a5 = ;
  }

  else
  {
    v9 = gLogger;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:error:];
    }
  }

  return a5 != 0;
}

+ (BOOL)updateError:(__IOSurface *)error errorLength:(unint64_t)length errorCode:(int64_t)code error:(id *)a6
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    goto LABEL_17;
  }

  if (!length)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    goto LABEL_17;
  }

  if (!a6)
  {
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    goto LABEL_17;
  }

  IOSurfaceLock(error, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(error);
  if (!BaseAddress)
  {
    IOSurfaceUnlock(error, 0, 0);
    v12 = gLogger;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v12 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:length];
  v13 = MEMORY[0x1E695DFD8];
  v27[0] = objc_opt_class();
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v23 = [v13 setWithArray:v14];

  v24 = 0;
  v15 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v12 error:&v24];
  v16 = v24;
  if (v16)
  {
    IOSurfaceUnlock(error, 0, 0);
    v17 = gLogger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
    }

    v18 = 0;
  }

  else
  {
    v17 = [v15 decodeObjectOfClasses:v23 forKey:*MEMORY[0x1E696A508]];
    IOSurfaceUnlock(error, 0, 0);
    v18 = v17 != 0;
    if (v17)
    {
      v20 = MEMORY[0x1E696ABC0];
      v21 = +[_ANEStrings errorDomainVirtIO];
      v25 = *MEMORY[0x1E696A578];
      v26 = v17;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      *a6 = [v20 errorWithDomain:v21 code:code userInfo:v22];
    }

    else
    {
      v21 = gLogger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient updateError:errorLength:errorCode:error:];
      }
    }
  }

LABEL_18:
  return v18;
}

- (BOOL)updateError:(VMData *)error error:(id *)a4
{
  v32[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = error->var18.var47 == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (!v4)
  {
    IOSurfaceLock(error->var9, 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(error->var9);
    if (BaseAddress)
    {
      v25 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:error->var18.var47];
      v10 = MEMORY[0x1E695DFD8];
      v30 = objc_opt_class();
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
      v12 = [v10 setWithArray:v11];

      v27 = 0;
      v13 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v25 error:&v27];
      v14 = v27;
      if (v14)
      {
        v15 = gLogger;
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          NSStringFromSelector(a2);
          objc_claimAutoreleasedReturnValue();
          [_ANEVirtualClient compileModel:options:qos:error:];
        }
      }

      v16 = [v13 decodeObjectOfClasses:v12 forKey:{*MEMORY[0x1E696A508], v25}];
      IOSurfaceUnlock(error->var9, 0, 0);
      v17 = MEMORY[0x1E696ABC0];
      v18 = +[_ANEStrings errorDomainVirtIO];
      var46 = error->var18.var46;
      v28 = *MEMORY[0x1E696A578];
      v29 = v16;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      *a4 = [v17 errorWithDomain:v18 code:var46 userInfo:v20];
    }

    else
    {
      v21 = gLogger;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient updateError:error:];
      }

      v22 = MEMORY[0x1E696ABC0];
      v26 = +[_ANEStrings errorDomainVirtIO];
      v23 = error->var18.var46;
      v31 = *MEMORY[0x1E696A578];
      v32[0] = @"Failed with NULL databaseAddress";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a4 = [v22 errorWithDomain:v26 code:v23 userInfo:v12];
    }
  }

  return v5;
}

+ (id)updatePerformanceStats:(__IOSurface *)stats performanceStatsLength:(unint64_t)length perfStatsRawIOSurfaceRef:(__IOSurface *)ref performanceStatsRawLength:(unint64_t)rawLength hwExecutionTime:(unint64_t)time
{
  if (!(time | length))
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    goto LABEL_13;
  }

  if (!stats)
  {
    v19 = gLogger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

LABEL_13:

LABEL_20:
    v18 = 0;
    goto LABEL_30;
  }

  IOSurfaceLock(stats, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(stats);
  if (!BaseAddress)
  {
    v20 = gLogger;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    IOSurfaceUnlock(stats, 0, 0);
    goto LABEL_20;
  }

  v14 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:BaseAddress length:length];
  if (!v14)
  {
    v21 = gLogger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    IOSurfaceUnlock(stats, 0, 0);
    v18 = 0;
    goto LABEL_29;
  }

  IOSurfaceUnlock(stats, 0, 0);
  v15 = 0;
  if (!ref || !rawLength)
  {
    goto LABEL_10;
  }

  IOSurfaceLock(ref, 0, 0);
  v16 = IOSurfaceGetBaseAddress(ref);
  if (!v16)
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

    goto LABEL_28;
  }

  v17 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v16 length:rawLength];
  if (!v17)
  {
    v22 = gLogger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:];
    }

LABEL_28:

    IOSurfaceUnlock(ref, 0, 0);
    v18 = 0;
    goto LABEL_29;
  }

  v15 = v17;
  IOSurfaceUnlock(ref, 0, 0);
LABEL_10:
  v18 = [_ANEPerformanceStats statsWithReconstructed:v14 hardwareExecutionNS:time aneStatsRawData:v15];

LABEL_29:
LABEL_30:

  return v18;
}

- (id)updatePerformanceStats:(VMData *)stats
{
  if (stats->var18.var51 || stats->var18.var49)
  {
    IOSurfaceLock(stats->var10, 0, 0);
    v5 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:IOSurfaceGetBaseAddress(stats->var10) length:stats->var18.var51];
    IOSurfaceUnlock(stats->var10, 0, 0);
    if (v5)
    {
      v6 = [_ANEPerformanceStats statsWithReconstructed:v5 hardwareExecutionNS:stats->var18.var49 aneStatsRawData:0];
    }

    else
    {
      v7 = gLogger;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        [_ANEVirtualClient updatePerformanceStats:];
      }

      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)releaseIOSurfaces:(VMData *)surfaces
{
  if (surfaces->var0)
  {
    CFRelease(surfaces->var0);
    surfaces->var0 = 0;
  }

  var1 = surfaces->var1;
  if (var1)
  {
    CFRelease(var1);
    surfaces->var1 = 0;
  }

  var2 = surfaces->var2;
  if (var2)
  {
    CFRelease(var2);
    surfaces->var2 = 0;
  }

  var3 = surfaces->var3;
  if (var3)
  {
    CFRelease(var3);
    surfaces->var3 = 0;
  }

  var4 = surfaces->var4;
  if (var4)
  {
    CFRelease(var4);
    surfaces->var4 = 0;
  }

  var5 = surfaces->var5;
  if (var5)
  {
    CFRelease(var5);
    surfaces->var5 = 0;
  }

  var6 = surfaces->var6;
  if (var6)
  {
    CFRelease(var6);
    surfaces->var6 = 0;
  }

  var7 = surfaces->var7;
  if (var7)
  {
    CFRelease(var7);
    surfaces->var7 = 0;
  }

  var8 = surfaces->var8;
  if (var8)
  {
    CFRelease(var8);
    surfaces->var8 = 0;
  }

  var9 = surfaces->var9;
  if (var9)
  {
    CFRelease(var9);
    surfaces->var9 = 0;
  }

  var10 = surfaces->var10;
  if (var10)
  {
    CFRelease(var10);
    surfaces->var10 = 0;
  }

  var11 = surfaces->var11;
  if (var11)
  {
    CFRelease(var11);
    surfaces->var11 = 0;
  }

  var12 = surfaces->var12;
  if (var12)
  {
    CFRelease(var12);
    surfaces->var12 = 0;
  }

  var13 = surfaces->var13;
  if (var13)
  {
    CFRelease(var13);
    surfaces->var13 = 0;
  }

  var14 = surfaces->var14;
  if (var14)
  {
    CFRelease(var14);
    surfaces->var14 = 0;
  }

  var20 = surfaces->var20;
  if (var20)
  {
    CFRelease(var20);
    surfaces->var20 = 0;
  }
}

- (__IOSurface)copyDictionaryToIOSurface:(id)surface copiedDataSize:(unint64_t *)size createdIOSID:(unsigned int *)d
{
  surfaceCopy = surface;
  if (!surfaceCopy)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_18;
  }

  if (!size)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_18;
  }

  if (!d)
  {
    v11 = gLogger;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_18;
  }

  v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:surfaceCopy requiringSecureCoding:1 error:0];
  v11 = v10;
  if (!v10)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

    goto LABEL_17;
  }

  v12 = [v10 length];
  *size = v12;
  if (!v12)
  {
    v14 = gLogger;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      [_ANEVirtualClient copyDictionaryToIOSurface:copiedDataSize:createdIOSID:];
    }

LABEL_17:

LABEL_18:
    v13 = 0;
    goto LABEL_19;
  }

  v13 = [(_ANEVirtualClient *)self copyToIOSurface:v11 length:v12 ioSID:d];
LABEL_19:

  return v13;
}

+ (BOOL)shouldUsePrecompiledPath:(id)path options:(id)options shouldUseChunking:(BOOL *)chunking chunkingThreshold:(unint64_t)threshold
{
  v42 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  optionsCopy = options;
  v12 = optionsCopy;
  if (pathCopy)
  {
    if (optionsCopy)
    {
      if (chunking)
      {
        v35 = 0;
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        modelURL = [pathCopy modelURL];
        path = [modelURL path];
        v16 = [defaultManager fileExistsAtPath:path isDirectory:&v35];

        if (v16)
        {
          if (v35 == 1)
          {
            modelURL4 = gLogger;
            if (os_log_type_enabled(modelURL4, OS_LOG_TYPE_DEBUG))
            {
              NSStringFromSelector(a2);
              objc_claimAutoreleasedReturnValue();
              +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
            }
          }

          else
          {
            *chunking = 0;
            defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
            modelURL2 = [pathCopy modelURL];
            path2 = [modelURL2 path];
            v34 = 0;
            v23 = [defaultManager2 attributesOfItemAtPath:path2 error:&v34];
            modelURL4 = v34;

            if (modelURL4)
            {
              v24 = gLogger;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v31 = NSStringFromSelector(a2);
                modelURL3 = [pathCopy modelURL];
                path3 = [modelURL3 path];
                *buf = 138412802;
                v37 = v31;
                v38 = 2112;
                v39 = path3;
                v40 = 2112;
                v41 = modelURL4;
                _os_log_error_impl(&dword_1AD246000, v24, OS_LOG_TYPE_ERROR, "%@: FAILED to get attributes for file at path=%@ with error=%@", buf, 0x20u);
              }
            }

            else
            {
              v26 = [v23 objectForKeyedSubscript:*MEMORY[0x1E696A3B8]];
              if ([v26 unsignedLongLongValue] > threshold)
              {
                *chunking = 1;
              }

              v27 = [v12 objectForKeyedSubscript:kANEFModelTypeKey[0]];
              v28 = [v27 isEqualToString:kANEFModelPreCompiledValue[0]];

              if (v28)
              {
                modelURL4 = [pathCopy modelURL];
                path4 = [modelURL4 path];
                v30 = +[_ANEStrings hwxExtension];
                v19 = [path4 hasSuffix:v30];

                goto LABEL_24;
              }

              modelURL4 = gLogger;
              if (os_log_type_enabled(modelURL4, OS_LOG_TYPE_ERROR))
              {
                NSStringFromSelector(a2);
                objc_claimAutoreleasedReturnValue();
                +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
              }
            }
          }
        }

        else
        {
          modelURL4 = gLogger;
          if (os_log_type_enabled(modelURL4, OS_LOG_TYPE_ERROR))
          {
            NSStringFromSelector(a2);
            objc_claimAutoreleasedReturnValue();
            +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
          }
        }

        v19 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
      }
    }

    else
    {
      v18 = gLogger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        NSStringFromSelector(a2);
        objc_claimAutoreleasedReturnValue();
        +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
      }
    }
  }

  else
  {
    v18 = gLogger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      NSStringFromSelector(a2);
      objc_claimAutoreleasedReturnValue();
      +[_ANEVirtualClient shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:];
    }
  }

  v19 = 0;
LABEL_25:

  return v19;
}

- (void)initWithSingletonAccess
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)compileModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@:ANEVirtualClient start\n", v5);
}

- (void)compileModel:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)compileModel:options:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient compileModel dictionary call succeeded", v5);
}

- (void)compileModel:options:qos:error:.cold.5()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient CompileModel succeeded for MODEL: %@ \n", v4, v5);
}

- (void)compileModel:options:qos:error:.cold.6()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient unarchive error %@ \n", v4, v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  *(v4 + 24) = 256;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.4()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_27(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer ANE model file to host! Could not read modelInputPath into NSData object", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.6()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.7()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer file to host! Filetype is kVirtANEFileTypeBin but no uuidString provided", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.9()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_27(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.10()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer ANE model file to host! Could not get csIdentity", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.11()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  *(v4 + 24) = 256;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x1Cu);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.12()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.13()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.14()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in file path is nil or empty!", v5);
}

- (void)transferFileToHostWithPath:withChunkSize:withUUID:withModelInputPath:overWriteFileNameWith:.cold.15()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : chunkSize is 0!", v5);
}

- (void)loadModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: BEGIN loadModel model=%@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: loadModel failed, unable to transfer model files to host", v5);
}

- (void)loadModel:options:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: modelCacheURLIdentifierCFStringRef : %@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  v3 = v1[1];
  *v4 = 138412802;
  *(v4 + 4) = v5;
  *(v4 + 12) = 1024;
  *(v4 + 14) = v2;
  *(v4 + 18) = 1024;
  *(v4 + 20) = v3;
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)loadModel:options:qos:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient loadModel dictionary call succeeded", v5);
}

- (void)loadModel:options:qos:error:.cold.6()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient loadModel dictionary Model Cache URL from Host %@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.7()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient LoadModel success MODEL: %@ \n", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.8()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_3(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient LoadModel no success %lld.\n", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.9()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: END loadModel updatedModel=%@", v4, v5);
}

- (void)loadModel:options:qos:error:.cold.11()
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_5_3(v1, v2, 5.7781e-34);
  OUTLINED_FUNCTION_22(v3, v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)loadModel:options:qos:error:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: model is nil!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: BEGIN loadModelNewInstance model=%@", v4, v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to write modelCacheURLIdentifierData to IOSurface!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to write options data to IOSurface!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to write modelInstParamsIOSurfaceRef data to IOSurface!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.7()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to extract modelAttributes dictionary!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.11()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to serialize modelInstParams to NSData!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to transfer adapter metadata to host, unable to generate modelCacheURLIdentifierData object from cacheURLIdentifier!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.13()
{
  OUTLINED_FUNCTION_6_1();
  v4 = OUTLINED_FUNCTION_1_7(v1, v2, v3, 5.7781e-34);
  OUTLINED_FUNCTION_26(v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x1Cu);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.14()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR loadModelNewInstance failed, could not UUID for model files!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.15()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR loadModelNewInstance failed, model cacheURLIdentifier is nil!", v5);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.16()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 2112;
  *(v3 + 14) = 0;
  _os_log_error_impl(&dword_1AD246000, v4, OS_LOG_TYPE_ERROR, "%@: modelIdentifier(%@) : missing base model identifier", v5, 0x16u);
}

- (void)loadModelNewInstance:options:modelInstParams:qos:error:.cold.17()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: modelInstParams is nil!", v5);
}

- (void)loadModelNewInstanceLegacy:options:modelInstParams:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadModelNewInstanceLegacy:options:modelInstParams:qos:error:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@:ANEVirtualClient loadModelNewInstance API Not supported!!\n", v5);
}

- (void)unloadModel:options:qos:error:.cold.1()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)unloadModel:options:qos:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient unloadModel dictionary call succeeded", v5);
}

- (void)unloadModel:options:qos:error:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_3(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient unloadModel success=%lld", v4, v5);
}

- (void)evaluateWithModel:options:request:qos:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: Empty dispatch queue\n", v5);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR optionsArchive length is 0", v5);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to get optionsArchive from options dictionary", v5);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.3(void *a1)
{
  v2 = OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_23(v2, 5.778e-34);
  *(v1 + 12) = 1024;
  *(v1 + 14) = v3;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.4(void *a1)
{
  v1 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v1, 5.7779e-34);
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.5(void *a1)
{
  v1 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v1, 5.7779e-34);
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.6(void *a1)
{
  v2 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v2, 5.778e-34);
  *(v1 + 12) = 1024;
  *(v1 + 14) = 1;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x12u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.7(void *a1)
{
  v2 = OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_23(v2, 5.778e-34);
  *(v1 + 12) = 2048;
  *(v1 + 14) = v3;
  OUTLINED_FUNCTION_24();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.8(void *a1)
{
  v1 = OUTLINED_FUNCTION_30(a1);
  OUTLINED_FUNCTION_23(v1, 5.7779e-34);
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.9()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doEvaluateWithModel:(void *)a1 options:request:qos:completionEvent:error:.cold.10(void *a1)
{
  v3 = OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_23(v3, 5.778e-34);
  *(v1 + 12) = 2112;
  *(v1 + 14) = v2;
  OUTLINED_FUNCTION_20();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.11()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)doEvaluateWithModel:options:request:qos:completionEvent:error:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR Failed to create perfStatsIOSurface", v5);
}

- (void)compiledModelExistsFor:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient compiledModelExistsFor dictionary call succeeded", v5);
}

- (void)compiledModelExistsFor:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_3(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient compiledModelExistsFor success=%lld", v4, v5);
}

- (void)purgeCompiledModel:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient purgeCompiledModel dictionary call succeeded", v5);
}

- (void)compiledModelExistsMatchingHash:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@:ANEVirtualClient compiledModelExistsMatchingHash start\n", v5);
}

- (void)compiledModelExistsMatchingHash:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_3(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient compiledModelExistsMatchingHash dictionary success=%lld", v4, v5);
}

- (void)purgeCompiledModelMatchingHash:.cold.2()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)echo:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_3(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient echo dictionary success=%lld", v4, v5);
}

- (void)getDeviceInfo
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_5_3(v1, v2, 5.7781e-34);
  OUTLINED_FUNCTION_22(v3, v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : Host reported success=0", v5);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : validationResult data size is 0!", v5);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to create validation_result IOSurface", v5);
}

- (void)validateNetworkCreateMLIR:validation_params:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to copy input validation_params dictionary to IOSurface", v5);
}

- (void)validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient validateNetworkCreate failed to create outValidationDictIOSurfaceRef", v5);
}

- (void)validateNetworkCreate:uuid:function:directoryPath:scratchPadPath:milTextData:.cold.4()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x12u);
}

- (void)exchangeBuildVersionInfo
{
  OUTLINED_FUNCTION_6_1();
  v3 = OUTLINED_FUNCTION_5_3(v1, v2, 5.7781e-34);
  OUTLINED_FUNCTION_22(v3, v4, v5);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x18u);
}

- (void)mapIOSurfacesWithModel:request:cacheInference:error:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.5()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.6()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)doMapIOSurfacesWithModel:request:cacheInference:error:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient mapIOSurfacesWithModel _ioSPerformanceStats pointer null\n", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to copy options dictionary to IOSurface", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to create report IOSurface", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to create error IOSurface", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : report from host has no data!", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : INVALID_MODEL : model.programHandle object is nil!", v5);
}

- (void)sessionHintWithModel:hint:options:report:error:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : hint object is nil!", v5);
}

- (void)copyModel:options:vmData:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient: hwx new filePath=%@", v4, v5);
}

- (void)copyModel:options:vmData:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 2112;
  *(v3 + 14) = &stru_1F224D6A0;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyModel:options:vmData:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.778e-34);
  *(v3 + 12) = 2112;
  *(v3 + 14) = &stru_1F224D6A0;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyModel:options:vmData:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient: weightname=%@", v4, v5);
}

- (void)copyModel:options:vmData:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient: weightname contained symlink", v5);
}

- (void)copyModel:options:vmData:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: VirtualANEModel struct empty.", v5);
}

- (void)copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:.cold.1()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)copyFilesInDirectoryToIOSurfaces:(uint64_t)a1 ioSurfaceRefs:(uint64_t)a2 ioSurfaceSizes:fileNames:.cold.2(uint64_t a1, uint64_t a2)
{
  *a1 = 136315394;
  *(a1 + 4) = "[_ANEVirtualClient copyFilesInDirectoryToIOSurfaces:ioSurfaceRefs:ioSurfaceSizes:fileNames:]";
  *(a1 + 12) = 2048;
  *(a1 + 14) = a2;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.1()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.3()
{
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.4()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.5()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.6()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)copyAllModelFiles:(_BYTE *)a1 dictionary:(_BYTE *)a2 ioSurfaceRefs:.cold.7(_BYTE *a1, _BYTE *a2)
{
  *a1 = 0;
  *a2 = 0;
  OUTLINED_FUNCTION_15();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)copyAllModelFiles:dictionary:ioSurfaceRefs:.cold.8()
{
  OUTLINED_FUNCTION_6_1();
  *v1 = 138412290;
  *v3 = v2;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)copyAllModelFiles:(uint8_t *)buf dictionary:(_DWORD *)a2 ioSurfaceRefs:(os_log_t)log .cold.9(uint8_t *buf, _DWORD *a2, os_log_t log)
{
  *buf = 67109120;
  *a2 = 32;
  _os_log_error_impl(&dword_1AD246000, log, OS_LOG_TYPE_ERROR, "copyAllModelFiles ERROR : Max file count reached %d", buf, 8u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.3()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to create dataBuffer object!", v5);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to create fileManager object!", v5);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : return object for writtenDataSize is nil!", v5);
}

+ (void)copyLLIRBundleToIOSurface:writtenDataSize:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : bundlePath is nil!", v5);
}

- (void)copyModelMetaData:(uint64_t)a3 options:dictionary:vmData:.cold.1(void *a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_8(a1, a2, a3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: model.sourceURL=%@\n", v5, v6);
}

- (void)copyModelMetaData:options:dictionary:vmData:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_3(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: sourceURLLength=%lld\n", v4, v5);
}

- (void)readWeightFilename:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient weightfilename is Not empty\n", v5);
}

- (void)readWeightFilename:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient Cannot read netfilename=%@\n", v4, v5);
}

- (void)doJsonParsingMatchWeightName:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient no match for weightfilename.\n", v5);
}

- (void)doJsonParsingMatchWeightName:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: ANEVirtualClient weightfilename=%@\n", v4, v5);
}

- (void)doJsonParsingMatchWeightName:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient weightfilename does not exists.\n", v5);
}

- (void)doJsonParsingMatchWeightName:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient could not parse Json.\n", v5);
}

- (void)parallelDecompressedData:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)parallelDecompressedData:.cold.2()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyModelOptionFiles:options:vmData:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_11_0(&dword_1AD246000, "%@: FILEData wrote %lu\n", v4, v5);
}

- (void)copyModelOptionFiles:options:vmData:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient options empty\n", v5);
}

- (void)copyErrorValue:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)copyErrorValue:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient ioSurfaceRef pointer null\n", v5);
}

- (void)copyToIOSurface:length:ioSID:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyToIOSurface:length:ioSID:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in length=0", v5);
}

- (void)copyToIOSurface:length:ioSID:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in ioSID pointer is NULL", v5);
}

- (void)copyToIOSurface:size:ioSID:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient length==0\n", v5);
}

- (void)copyToIOSurface:size:ioSID:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ANEVirtualClient ioSID pointer null\n", v5);
}

+ (void)getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : failed to get dataBaseAddress for ioSurface!", v5);
}

+ (void)getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in archivedDataSize is 0!", v5);
}

+ (void)getDictionaryWithJSONEncodingFromIOSurface:withArchivedDataSize:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : passed in ioSurfaceRef is nil!", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : Failed to get object from unarchiver", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : Failed to get NSData object", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get base address for ioSurfaceRef", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : length is 0!", v5);
}

+ (void)getObjectFromIOSurface:classType:length:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : ioSurfaceRef is nil!", v5);
}

+ (void)getCFDictionaryFromIOSurface:dataLength:.cold.4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)copyDictionaryDataToStruct:dictionary:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: copyDictionaryDataToStruct input data NULL", v5);
}

+ (void)getCodeSigningIdentity
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get CSIdentity", v5);
}

+ (void)setCodeSigningIdentity:.cold.1()
{
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_19();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)callIOUserClientWithDictionary:inDictionary:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = *v1;
  *v3 = 138412546;
  *(v3 + 4) = v4;
  *(v3 + 12) = 2112;
  *(v3 + 14) = v2;
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)callIOUserClientWithDictionary:inDictionary:error:.cold.2()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)callIOUserClientWithDictionary:inDictionary:error:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)checkKernReturnValue:selector:outParams:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_5_3(v1, v2, 5.778e-34);
  *(v3 + 14) = v4;
  OUTLINED_FUNCTION_14();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x12u);
}

+ (void)updateError:errorLength:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : error object is nil!", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)updateError:errorLength:errorCode:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get string from decoder", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR failed to get base address for errorIOSurface", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT error object is nil", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT errorLength is 0!", v5);
}

+ (void)updateError:errorLength:errorCode:error:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT errorIOSurface is nil!", v5);
}

- (void)updateError:error:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: Failed with NULL databaseAddress", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.1()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to get dataBaseAddress for perfStatsRawIOSurfaceRef", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.3()
{
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_4(v1, v2, v3, 5.778e-34);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: FAILED to get dataBaseAddress for perfStatsIOSurfaceRef", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: BAD_ARGUMENT perfStatsIOSurface is NULL!", v5);
}

+ (void)updatePerformanceStats:performanceStatsLength:perfStatsRawIOSurfaceRef:performanceStatsRawLength:hwExecutionTime:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: perfStatsLength=0 hwExecutionTime=0, no perfStats to report", v5);
}

- (void)updatePerformanceStats:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_3_3(v1, 5.778e-34, v2, v3);
  OUTLINED_FUNCTION_12_0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to get valid dataArchive for dictionary. Data archive length is 0!", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : FAILED to get dataArchive for dictionary object", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : return variable for createdIOSID is nil!", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : return variable for copiedDataSize is nil!", v5);
}

- (void)copyDictionaryToIOSurface:copiedDataSize:createdIOSID:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR : BAD_ARGUMENT : input dictionary is nil!", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR no file at path", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR kANEFModelPreCompiledValue not found in options dictionary", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_13(&dword_1AD246000, v3, v4, "%@: Path points to a directory, not a file (should not use precompiled path)", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR shouldUseChunking return param is nil!", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in options dictionary is nil", v5);
}

+ (void)shouldUsePrecompiledPath:options:shouldUseChunking:chunkingThreshold:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_2_0(&dword_1AD246000, v3, v4, "%@: ERROR passed in model is nil", v5);
}

@end