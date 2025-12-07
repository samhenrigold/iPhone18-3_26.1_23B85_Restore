@interface OSACrashReport
+ (id)decode_syndrome:(unsigned int)decode_syndrome;
+ (id)loadBuildInfo:(id)info;
+ (id)loadStoreInfo:(id)info atURL:(id)l forPlatform:(unsigned int)platform;
+ (id)parentBundleURLForAppExtensionBundleURL:(id)l error:(id)error;
+ (void)observedMTECrashWithProcessName:(id)name;
- (BOOL)_isMemorySafeAtAddress:(unint64_t)address;
- (BOOL)isActionable;
- (BOOL)isExceptionNonFatal;
- (BOOL)isMTECrash;
- (BOOL)saveWithOptions:(id)options;
- (OSACrashReport)initWithTask:(unsigned int)task exceptionType:(int)type thread:(unsigned int)thread threadId:(unint64_t)id threadStateFlavor:(int)flavor threadState:(unsigned int)state[1296] threadStateCount:(unsigned int)count;
- (_CSRange)_getObjCReadOnlyRange:(_CSTypeRef)range;
- (_CSTypeRef)_getSymbolicator:(BOOL)symbolicator;
- (_VMURange)_regionAtAddress:(unint64_t)address immutableCheck:(BOOL *)check isInSharedCache:(BOOL *)cache;
- (char)_copyStringFromTask:(unsigned int)task atAddress:(unint64_t)address maxLength:(unint64_t)length immutableCheck:(BOOL *)check isInSharedCache:(BOOL *)cache;
- (id)_descriptionForException:(id)exception;
- (id)_extractMallocTraceInfo:(id *)info withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (id)_findContainingRegion:(id)region address:(unint64_t)address;
- (id)_findContainingTextSegmentRegion:(id)region address:(unint64_t)address;
- (id)_objcSelectorNameForMessenger:(id)messenger;
- (id)_readDataAtAddress:(unint64_t)address size:(unint64_t)size;
- (id)_readIndirectSafeStringFromSymbol:(const char *)symbol symbolOwner:(_CSTypeRef)owner;
- (id)_readMallocZoneArray:(_CSTypeRef)array;
- (id)_readMallocZoneArrayFromMemory:(mapped_memory_t *)memory usingSymbolicator:(_CSTypeRef)symbolicator;
- (id)_readStringAtTaskAddress:(unint64_t)address maxLength:(unint64_t)length immutableCheck:(BOOL *)check isInSharedCache:(BOOL *)cache;
- (id)_symbolicateRegister:(unint64_t)register inRange:(_CSRange)range withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (id)additionalIPSMetadata;
- (id)appleCareDetails;
- (id)bls_aggregatePayload:(id *)payload;
- (id)bls_backlightChangeEventPayload:(id *)payload;
- (id)bls_backlightChangeRequestPayload:(id *)payload;
- (id)bls_environmentStateMachinePayload:(id *)payload;
- (id)bls_presentationPayload:(id *)payload;
- (id)bls_transitionPayload:(id *)payload;
- (id)composeFrame:(id)frame info:(id)info;
- (id)create_os_fault_section;
- (id)decode_cpuType;
- (id)decode_crashingThreadStateWithSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (id)decode_esr:(unsigned int *)decode_esr exceptionStateCount:(unsigned int)count;
- (id)decode_exceptionCodes;
- (id)decode_exceptionType;
- (id)decode_reasonBTC;
- (id)decode_reasonBacklightServices;
- (id)decode_reasonCodeSigning;
- (id)decode_reasonCoreAnimation;
- (id)decode_reasonExec;
- (id)decode_reasonLibSystem;
- (id)decode_reasonLibxpc;
- (id)decode_reasonMetal;
- (id)decode_reasonNamespace;
- (id)decode_reasonPortSpace;
- (id)decode_reasonRealityKit;
- (id)decode_reasonRosetta;
- (id)decode_reasonSandbox;
- (id)decode_reasonTcc;
- (id)decode_reasonWatchKit;
- (id)decode_reasonWatchdog;
- (id)decode_signal;
- (id)decode_threadState:(unsigned int *)state threadStateCount:(unsigned int)count threadStateFlavor:(int)flavor threadPort:(unsigned int)port exceptionState:(unsigned int)exceptionState[1296] exceptionStateCount:(unsigned int)stateCount withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)self0;
- (id)decode_threadState:(unsigned int)state withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (id)decode_ubsanCode:(unsigned __int8)code;
- (id)decode_versionCodes:(unsigned __int16)codes[4];
- (id)getNotificationInfo;
- (id)getObserverInfo;
- (id)getTrialCache;
- (id)nameFromPid:(int)pid;
- (id)pathFromPid:(int)pid;
- (id)patternInfo;
- (id)problemType;
- (id)reportNamePrefix;
- (id)safe_encoder:(unsigned int)safe_encoder;
- (id)slice_uuid;
- (id)terminationReasonExceptionCode;
- (int)_regionInfoAtAddress:(unint64_t)address regionInfo:(vm_region_submap_short_info_64 *)info regionAddress:(unint64_t *)regionAddress regionSize:(unint64_t *)size;
- (int)sRouteID;
- (int)shouldEnableUrgentSubmission;
- (int64_t)codeZeroForGuardException;
- (unint64_t)_findMallocZone:(id)zone usingSymbolicator:(_CSTypeRef)symbolicator;
- (unint64_t)_objcSelectorAddressForMessenger:(id)messenger memory:(mapped_memory_t *)memory;
- (unint64_t)_readAddressFromMemory:(mapped_memory_t *)memory atSymbol:(_CSTypeRef)symbol;
- (unsigned)_extractBacktraceInfoUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_addASILine:(id)line fromOwner:(id)owner isSafe:(BOOL)safe;
- (void)_extractBinaryImageInfoUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_extractCrashReporterAnnotationsFromSymbolOwner:(_CSTypeRef)owner withMemory:(mapped_memory_t *)memory;
- (void)_extractExceptionReasonUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_extractInfoPlistFromSymbolOwner:(_CSTypeRef)owner;
- (void)_extractLastExceptionBacktraceUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_extractMemoryErrorReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_extractPGMLibpasReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_extractPGMReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_extractRosettaRuntimeInfo:(_CSTypeRef)info withBlock:(id)block;
- (void)_extractSanitizerReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog;
- (void)_extractVMMap:(_CSTypeRef)map;
- (void)_extractWorkQueueLimitsFromData:(proc_workqueueinfo *)data;
- (void)_mergeFormattedASI;
- (void)addFieldsToCrashEvent:(id)event;
- (void)addFieldsToHeader:(id)header;
- (void)autopsyCorpse;
- (void)autopsyLightweightCorpse:(unint64_t)corpse size:(unint64_t)size;
- (void)captureDiagInfo:(id)info;
- (void)checkIfNeedsUrgentSubmission;
- (void)dealloc;
- (void)decode_os_log_fault_payload;
- (void)decode_reasonDyldWithInfo:(id)info;
- (void)donateToBiome;
- (void)dumpProgramCounterBytes;
- (void)extractTerminationReason;
- (void)extractThreadStateInfo:(unsigned int)info;
- (void)finishExtraction;
- (void)finishExtractionUsingCorpse;
- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block;
- (void)loadBundleInfo;
- (void)parseCorpse:(unint64_t)corpse size:(unint64_t)size;
- (void)sendToCoreAnalyticsWithDidWriteReport:(BOOL)report;
- (void)sendToMetricKit;
- (void)setApplicationSpecificInformation:(const char *)information;
- (void)setTriggeredThread;
- (void)stashStatus:(id)status note:(id)note;
- (void)symbolicateFrame:(unint64_t)frame adjusted:(unint64_t)adjusted withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog andBlock:(id)block;
- (void)unpackExceptionCodes;
- (void)updateCrashHistory;
- (void)updateLogWritingSignatureWithSymbol:(id)symbol address:(unint64_t)address;
- (void)validateProcName;
- (void)writeReportBodyWithSectionWriter:(id)writer;
- (void)writeReportToSerial;
@end

@implementation OSACrashReport

- (void)updateLogWritingSignatureWithSymbol:(id)symbol address:(unint64_t)address
{
  symbolCopy = symbol;
  selfCopy = self;
  sub_100003B70(symbol, address);
}

- (void)finishExtractionUsingCorpse
{
  v3 = [[VMUProcInfo alloc] initWithPid:self->_ppid];
  v4 = v3;
  if (v3)
  {
    name = [v3 name];
    v6 = [name copy];
    parentProcessName = self->_parentProcessName;
    self->_parentProcessName = v6;
  }

  else
  {
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"Failed to create NSProcInfo for parent process"];
  }

  if (!self->_parentProcessName)
  {
    v8 = [(OSACrashReport *)self nameFromPid:self->_ppid];
    v9 = self->_parentProcessName;
    self->_parentProcessName = v8;
  }

  v10 = &selRef_arrayForKey_;
  v92 = v4;
  if (self->_task + 1 >= 2)
  {
    v13 = [[TaskOperator alloc] initWithTask:self->_task];
    taskOperator = self->_taskOperator;
    self->_taskOperator = v13;

    v114[0] = 0;
    if (_dyld_process_info_create())
    {
      self->_platform = _dyld_process_info_get_platform();
      _dyld_process_info_release();
    }

    else
    {
      v15 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
      v16 = [NSString stringWithFormat:@"_dyld_process_info_create failed with %d", v114[0]];
      [v15 addObject:v16];
    }

    if (dyld_process_create_for_task())
    {
      if (dyld_process_snapshot_create_for_process())
      {
        if (dyld_process_snapshot_get_shared_cache())
        {
          self->_sharedCacheBase = dyld_shared_cache_get_base_address();
          mapped_size = dyld_shared_cache_get_mapped_size();
          self->_sharedCacheSize = mapped_size;
          if (self->_sharedCacheBase + mapped_size <= self->_sharedCacheBase)
          {
            v22 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
            mapped_size = [NSString stringWithFormat:@"shared cache base 0x%llX + size 0x%llX overflow", self->_sharedCacheBase, mapped_size];
            [v22 addObject:mapped_size];

            self->_sharedCacheBase = 0;
            self->_sharedCacheSize = 0;
          }

          else
          {
            dyld_shared_cache_copy_uuid();
          }
        }

        else
        {
          [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"dyld_process_snapshot_get_shared_cache failed"];
        }

        dyld_process_snapshot_dispose();
      }

      else
      {
        v20 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v21 = [NSString stringWithFormat:@"dyld_process_snapshot_create_for_process failed with %d", v114[0]];
        [v20 addObject:v21];
      }

      dyld_process_dispose();
    }

    else
    {
      v18 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
      v19 = [NSString stringWithFormat:@"dyld_process_create_for_task failed with %d", v114[0]];
      [v18 addObject:v19];
    }

    get_default[0] = 0;
    policy_infoCnt = 1;
    policy_info = 0;
    if (!task_policy_get(self->_task, 1u, &policy_info, &policy_infoCnt, get_default))
    {
      self->_task_role = policy_info;
    }

    CSSymbolicatorSetForceGlobalSafeMachVMReads();
    v24 = objc_autoreleasePoolPush();
    v25 = objc_alloc_init(OSABinaryImageCatalog);
    v26 = [(OSACrashReport *)self _getSymbolicator:1];
    v28 = v27;
    context = v24;
    if (CSIsNull())
    {
      v90 = v28;
      v91 = v26;
      v88 = 0;
    }

    else
    {
      [(OSACrashReport *)self _extractBinaryImageInfoUsingSymbolicator:v26 usingCatalog:v28, v25];
      [(OSACrashReport *)self _extractVMMap:v26, v28];
      CSRelease();
      v29 = [(OSACrashReport *)self _getSymbolicator:0];
      v31 = v30;
      v32 = +[NSMutableString string];
      [(OSACrashReport *)self setLogWritingSignatureFrames:v32];

      v88 = [(OSACrashReport *)self _extractBacktraceInfoUsingSymbolicator:v29 usingCatalog:v31, v25];
      if ([(OSACrashReport *)self _isPGMCrashType])
      {
        [(OSACrashReport *)self _extractPGMReportUsingSymbolicator:v29 usingCatalog:v31, v25];
        [(OSACrashReport *)self _extractPGMLibpasReportUsingSymbolicator:v29 usingCatalog:v31, v25];
      }

      [(OSACrashReport *)self _extractSanitizerReportUsingSymbolicator:v29 usingCatalog:v31, v25];
      [(OSACrashReport *)self _extractMemoryErrorReportUsingSymbolicator:v29 usingCatalog:v31, v25];
      [(OSACrashReport *)self _extractLastExceptionBacktraceUsingSymbolicator:v29 usingCatalog:v31, v25];
      v90 = v31;
      v91 = v29;
      [(OSACrashReport *)self _extractExceptionReasonUsingSymbolicator:v29 usingCatalog:v31, v25];
    }

    v106 = 0u;
    v107 = 0u;
    v104 = 0u;
    v105 = 0u;
    obj = self->_exclaveThreadNumbers;
    v96 = [(NSMutableArray *)obj countByEnumeratingWithState:&v104 objects:v118 count:16];
    if (v96)
    {
      v94 = *v105;
      v95 = v25;
      do
      {
        for (i = 0; i != v96; i = i + 1)
        {
          if (*v105 != v94)
          {
            objc_enumerationMutation(obj);
          }

          v34 = -[NSMutableArray objectAtIndexedSubscript:](self->_threadInfos, "objectAtIndexedSubscript:", [*(*(&v104 + 1) + 8 * i) intValue]);
          v35 = [v34 objectForKeyedSubscript:@"frames"];
          v36 = [v34 objectForKeyedSubscript:@"id"];
          if (!v35)
          {
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              sub_100030288(v116, v36, &v117);
            }

            v35 = objc_alloc_init(NSMutableArray);
          }

          v97 = v36;
          v98 = v34;
          v37 = [(OSAExclaveContainer *)self->_exclaveContainer getFramesForThread:v36 usingCatalog:v25];
          v100 = 0u;
          v101 = 0u;
          v102 = 0u;
          v103 = 0u;
          v38 = [v37 countByEnumeratingWithState:&v100 objects:v115 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = 0;
            v41 = *v101;
            do
            {
              for (j = 0; j != v39; j = j + 1)
              {
                if (*v101 != v41)
                {
                  objc_enumerationMutation(v37);
                }

                v43 = [(OSACrashReport *)self composeFrame:*(*(&v100 + 1) + 8 * j) info:&off_10004E238];
                [v35 insertObject:v43 atIndex:v40];

                ++v40;
              }

              v39 = [v37 countByEnumeratingWithState:&v100 objects:v115 count:16];
            }

            while (v39);
          }

          objc_msgSend_setObject_forKeyedSubscript_(v98);
          threadIdToScId = [(OSAExclaveContainer *)self->_exclaveContainer threadIdToScId];
          v45 = [threadIdToScId objectForKeyedSubscript:v97];

          if (v45)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v98);
          }

          v25 = v95;
        }

        v96 = [(NSMutableArray *)obj countByEnumeratingWithState:&v104 objects:v118 count:16];
      }

      while (v96);
    }

    if (self->_exceptionType == 1)
    {
      self->_crashingAddress = self->_exceptionCode[1];
      v46 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:4352];
      v47 = [v46 descriptionOfRegionsAroundAddress:self->_crashingAddress options:4096];
      v48 = v47;
      v4 = v92;
      if (v47)
      {
        v49 = [v47 componentsSeparatedByString:@"\n"];
        [NSPredicate predicateWithFormat:@"SELF != ''"];
        v51 = v50 = v25;
        v52 = [v49 filteredArrayUsingPredicate:v51];

        v25 = v50;
        v53 = [v52 componentsJoinedByString:@"\n"];
        vmregion_info = self->_vmregion_info;
        self->_vmregion_info = v53;
      }

      regions = [v46 regions];
      v56 = [(OSACrashReport *)self _findContainingRegion:regions address:self->_crashingAddress];

      if (v56 && *&v56[OBJC_IVAR___VMUVMRegion_user_tag] == 30 && !*&v56[OBJC_IVAR___VMUVMRegion_prot])
      {
        self->_isStackGuardPageBadAccess = 1;
        if ([*&v56[OBJC_IVAR___VMUVMRegion_path] rangeOfString:@"stack guard for thread "] == 0x7FFFFFFFFFFFFFFFLL)
        {
          v58 = -1;
        }

        else
        {
          v58 = atoi([*&v56[OBJC_IVAR___VMUVMRegion_path] UTF8String] + v57);
        }

        self->_stackGuardPageBadAccessThreadNumber = v58;
      }

      v10 = &selRef_arrayForKey_;
    }

    else
    {
      v4 = v92;
      v10 = &selRef_arrayForKey_;
      if ((self->_cs_status & 0x1000000) != 0 && self->_exceptionStateCount)
      {
        self->_crashingAddress = *self->_exceptionState;
      }
    }

    crashingAddress = self->_crashingAddress;
    if (crashingAddress)
    {
      taskImages = self->_taskImages;
      v99 = 0;
      v61 = [v25 searchFrame:crashingAddress in:taskImages regions:0 result:&v99];
    }

    v62 = [v25 reportUsedImagesFullInfoUsingBlock:&stru_1000452E0];
    usedImages = self->_usedImages;
    self->_usedImages = v62;

    v64 = OBJC_IVAR___OSAReport__notes;
    [v25 appendNotesTo:*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes]];

    [(OSAExclaveContainer *)self->_exclaveContainer appendNotesTo:*&self->OSAReport_opaque[v64]];
    threadPortOriginal = v88;
    if (!v88)
    {
      threadPortOriginal = self->_threadPortOriginal;
    }

    [(OSACrashReport *)self extractThreadStateInfo:threadPortOriginal];
    v66 = [(OSACrashReport *)self decode_crashingThreadStateWithSymbolicator:v91 usingCatalog:v90, 0];
    threadStateDecoded = self->_threadStateDecoded;
    self->_threadStateDecoded = v66;

    [(OSACrashReport *)self setTriggeredThread];
    self->_sroute_id = [(OSACrashReport *)self sRouteID];
    [(OSACrashReport *)self checkIfNeedsUrgentSubmission];
    if (v88)
    {
      mach_port_deallocate(mach_task_self_, v88);
    }

    if ((CSIsNull() & 1) == 0)
    {
      CSRelease();
    }

    objc_autoreleasePoolPop(context);
    [(OSACrashReport *)self dumpProgramCounterBytes];
  }

  else
  {
    v11 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    v12 = [NSString stringWithFormat:@"Failed to determine task_t for %@[%d], so no last exception, backtraces, binary images, or dyld info", self->_procName, self->_proc_id];
    [v11 addObject:v12];
  }

  if (!sandbox_container_path_for_pid())
  {
    v68 = [NSString stringWithUTF8String:v114];
    sandboxContainer = self->_sandboxContainer;
    self->_sandboxContainer = v68;
  }

  logWritingSignatureFrames = [(OSACrashReport *)self logWritingSignatureFrames];
  v71 = [logWritingSignatureFrames length];

  if (v71)
  {
    v72 = *&self->OSAReport_opaque[*(v10 + 929)];
    v73 = *self->_exceptionCode;
    exceptionType = self->_exceptionType;
    logWritingSignatureFrames2 = [(OSACrashReport *)self logWritingSignatureFrames];
    v76 = +[OSASystemConfiguration sharedInstance];
    productNameVersionBuildString = [v76 productNameVersionBuildString];
    v78 = [NSString stringWithFormat:@"%@ %s 0x%X 0x%qx %@ %@ %u", v72, self->_slice_uuid, exceptionType, v73, logWritingSignatureFrames2, productNameVersionBuildString, self->_sroute_id];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000302EC();
    }

    *get_default = 0;
    v112 = 0;
    v113 = 0;
    CC_SHA1([v78 UTF8String], objc_msgSend(v78, "length"), get_default);
    v79 = [NSString stringWithFormat:@"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", LOBYTE(get_default[0]), BYTE1(get_default[0]), BYTE2(get_default[0]), HIBYTE(get_default[0]), LOBYTE(get_default[1]), BYTE1(get_default[1]), BYTE2(get_default[1]), HIBYTE(get_default[1]), v112, BYTE1(v112), BYTE2(v112), BYTE3(v112), BYTE4(v112), BYTE5(v112), BYTE6(v112), HIBYTE(v112), v113, BYTE1(v113), BYTE2(v113), HIBYTE(v113)];
    objc_msgSend_setObject_forKeyedSubscript_(*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions]);
    objc_storeStrong(&self->_logWritingSignature, v79);
    v4 = v92;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      policy_infoCnt = 138412290;
      v110 = v79;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "crash signature: %@", &policy_infoCnt, 0xCu);
    }
  }

  v80 = *self->_exceptionCode;
  if (self->_exceptionType != 11 || (v80 & 0xE000000000000000) != 0x6000000000000000 || !self->_proc_id)
  {
    if (v80 == 3238382097)
    {
      v81 = &off_10004E448;
    }

    else if (v80 == 3134085662)
    {
      v81 = &off_10004E430;
    }

    else
    {
      if (self->_abort_cause != 1414810708 && (v80 != 1414810708 || !self->_is_simulated))
      {
        goto LABEL_102;
      }

      v81 = &off_10004E460;
    }

    [(OSACrashReport *)self captureDiagInfo:v81];
    goto LABEL_102;
  }

  if (os_variant_is_darwinos())
  {
    [(OSACrashReport *)self captureDiagInfo:&off_10004E418];
  }

  else
  {
    v82 = +[OSASystemConfiguration sharedInstance];
    appleInternal = [v82 appleInternal];

    if (appleInternal)
    {
      v84 = [NSMutableDictionary dictionaryWithCapacity:1];
      spewage_diag = self->_spewage_diag;
      self->_spewage_diag = v84;

      objc_msgSend_setObject_forKeyedSubscript_(self->_spewage_diag);
    }
  }

  task = self->_task;
  v87 = self->_procPath;
  if (byte_1000540D3 == 1)
  {
    if (qword_100054178 != -1)
    {
      sub_100030364();
    }

    if (off_100054170)
    {
      (off_100054170)(task, 0, [(NSString *)v87 UTF8String], 0, 0);
    }
  }

LABEL_102:
  [(OSACrashReport *)self stashStatus:@"Capture Complete" note:0];
}

- (void)loadBundleInfo
{
  self->_is_first_party = 1;
  procPath = self->_procPath;
  if (procPath)
  {
    v42[0] = @"CFBundleIdentifier";
    v42[1] = kCFBundleVersionKey;
    v42[2] = @"CFBundleShortVersionString";
    v42[3] = @"DTAppStoreToolsBuild";
    v42[4] = @"LSUIElement";
    v42[5] = @"LSBackgroundOnly";
    v42[6] = @"CFBundlePackageType";
    v4 = [NSArray arrayWithObjects:v42 count:7];
    v39 = 0;
    v5 = [OSACrashReport findBundleAtPath:procPath withKeys:v4 bundleURL:&v39];
    v6 = v39;
    v7 = v39;
    bundle_info = self->_bundle_info;
    self->_bundle_info = v5;

    v9 = self->_bundle_info;
    if (v9)
    {
      v10 = [(NSDictionary *)v9 objectForKeyedSubscript:@"CFBundleIdentifier"];
      bundle_id = self->_bundle_id;
      self->_bundle_id = v10;

      if (self->_bundle_id)
      {
        objc_storeStrong(&self->_bundle_url, v6);
        v12 = [OSACrashReport loadStoreInfo:self->_bundle_id atURL:v7 forPlatform:self->_platform];
        store_info = self->_store_info;
        self->_store_info = v12;

        v14 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"itemID"];
        adam_id = self->_adam_id;
        self->_adam_id = v14;

        v16 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"thirdParty"];
        self->_is_first_party = [v16 BOOLValue] ^ 1;

        v17 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"entitledBeta"];

        if (v17)
        {
          self->_is_beta = 1;
          objc_msgSend_setObject_forKeyedSubscript_(*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions]);
        }
      }

      v18 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"LSUIElement"];
      v19 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"LSBackgroundOnly"];
      v20 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"CFBundlePackageType"];
      v21 = (!v18 || (objc_opt_respondsToSelector() & 1) == 0 || (-[NSDictionary BOOLValue](v18, "BOOLValue") & 1) == 0) && (!v19 || (objc_opt_respondsToSelector() & 1) == 0 || ([v19 BOOLValue] & 1) == 0) && (!v20 || (objc_opt_respondsToSelector() & 1) == 0 || (objc_msgSend(v20, "isEqualToString:", @"XPC!") & 1) == 0);
      self->_bundleVisibility = v21;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(NSDictionary *)self->_bundle_info removeObjectsForKeys:&off_10004E4A8];
      }
    }

    else
    {
      if (!self->_info_plist)
      {
        goto LABEL_24;
      }

      v34 = v7;
      v18 = objc_opt_new();
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v40[0] = kCFBundleVersionKey;
      v40[1] = @"CFBundleShortVersionString";
      v28 = [NSArray arrayWithObjects:v40 count:2];
      v29 = [v28 countByEnumeratingWithState:&v35 objects:v41 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v36;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v36 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = [(NSDictionary *)self->_info_plist objectForKeyedSubscript:*(*(&v35 + 1) + 8 * i), v34];
            objc_msgSend_setObject_forKeyedSubscript_(v18);
          }

          v30 = [v28 countByEnumeratingWithState:&v35 objects:v41 count:16];
        }

        while (v30);
      }

      if (![(NSDictionary *)v18 count])
      {
        v7 = v34;
        goto LABEL_23;
      }

      v18 = v18;
      v19 = self->_bundle_info;
      self->_bundle_info = v18;
      v7 = v34;
    }

LABEL_23:
LABEL_24:
    v22 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:@"CFBundleShortVersionString", v34];
    short_vers = self->_short_vers;
    self->_short_vers = v22;

    v24 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
    bundleVersion = self->_bundleVersion;
    self->_bundleVersion = v24;

    v26 = [OSACrashReport loadBuildInfo:v7];
    build_info = self->_build_info;
    self->_build_info = v26;

    goto LABEL_25;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100030740();
  }

LABEL_25:
  [(OSACrashReport *)self captureLSInfo];
}

- (id)getNotificationInfo
{
  v3 = objc_opt_new();
  [v3 setBundleVersion:self->_bundleVersion];
  [v3 setIsBeta:self->_is_beta];
  if (!self->_is_simulated)
  {
    goto LABEL_22;
  }

  exit_snapshot = self->_exit_snapshot;
  if (!exit_snapshot || exit_snapshot->ers_namespace != 18 || self->_crashedThreadNumber < 0)
  {
    goto LABEL_22;
  }

  [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:?];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v19 = v25 = 0u;
  obj = [v19 objectForKeyedSubscript:@"frames"];
  v5 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v20 = 0;
  v7 = *v23;
  v8 = -1;
  while (2)
  {
    v9 = 0;
    v10 = v20;
    v20 += v6;
    do
    {
      if (*v23 != v7)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v22 + 1) + 8 * v9);
      v12 = [v11 objectForKeyedSubscript:@"imageIndex"];
      intValue = [v12 intValue];

      if (v10 == 1)
      {
        v8 = intValue;
        goto LABEL_17;
      }

      if (v10)
      {
        if (v10 > 6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v14 = [v11 objectForKeyedSubscript:@"symbol"];
        v15 = [@"os_fault_with_payload" isEqualToString:v14];

        if (v15)
        {
          goto LABEL_17;
        }
      }

      if (intValue != v8)
      {
        v16 = [(NSArray *)self->_usedImages objectAtIndex:intValue];
        v17 = [v16 objectForKeyedSubscript:@"name"];
        [v3 setFaultingImage:v17];

        goto LABEL_21;
      }

LABEL_17:
      ++v10;
      v9 = v9 + 1;
    }

    while (v6 != v9);
    v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_21:

LABEL_22:

  return v3;
}

- (id)getObserverInfo
{
  v3 = objc_opt_new();
  lastExceptionBacktrace = self->_lastExceptionBacktrace;
  if (lastExceptionBacktrace && [(NSArray *)lastExceptionBacktrace count])
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  else if ((self->_crashedThreadNumber & 0x80000000) == 0)
  {
    v5 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:?];
    v6 = [v5 objectForKeyedSubscript:@"frames"];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v3);
  v7 = [NSNumber numberWithInt:self->_proc_id];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  objc_msgSend_setObject_forKeyedSubscript_(v3);
  v8 = [NSNumber numberWithDouble:*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time]];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  if ([(NSMutableDictionary *)self->_applicationSpecificInfoFullSensitive count])
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  v9 = [NSNumber numberWithBool:self->_is_simulated];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  if ([(NSDictionary *)self->_terminationReason count])
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  return v3;
}

- (BOOL)isActionable
{
  problemType = [(OSACrashReport *)self problemType];
  if (([problemType isEqualToString:@"385"] & 1) != 0 || (objc_msgSend(problemType, "isEqualToString:", @"309") & 1) != 0 || objc_msgSend(problemType, "isEqualToString:", @"308"))
  {
    if (self->_is_simulated)
    {
      v4 = @"_sim";
    }

    else
    {
      v4 = &stru_1000463C0;
    }

    v5 = [NSString stringWithFormat:@"%@_%@%@", problemType, self->_procName, v4];
    objc_msgSend_setObject_forKeyedSubscript_(*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions]);
  }

  exit_snapshot = self->_exit_snapshot;
  v7 = !exit_snapshot || exit_snapshot->ers_namespace != 7 || exit_snapshot->ers_code != 3;
  if (self->_exceptionType == 11 && *self->_exceptionCode >> 61 == 3)
  {
    v8 = +[OSASystemConfiguration sharedInstance];
    if ([v8 appleInternal])
    {
      v9 = v7 | byte_1000540D4;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = v7 | byte_1000540D4;
  }

  return v9 & 1;
}

- (id)reportNamePrefix
{
  exceptionType = self->_exceptionType;
  if (exceptionType == 12)
  {
    if (*self->_exceptionCode >> 61 == 3)
    {
      v6 = @"ExcUserFault_";
    }

    else
    {
      v6 = &stru_1000463C0;
    }
  }

  else
  {
    v5 = exceptionType == 11;
    v6 = @"ExcResource_";
    if (!v5)
    {
      v6 = &stru_1000463C0;
    }
  }

  return [NSString stringWithFormat:@"%@%@", v6, self->_procName, v2, v3];
}

- (id)additionalIPSMetadata
{
  procName = self->_procName;
  v28[0] = kOSALogMetadataAppName;
  v28[1] = @"app_name";
  v29[0] = procName;
  v29[1] = procName;
  v28[2] = @"slice_uuid";
  slice_uuid = [(OSACrashReport *)self slice_uuid];
  v29[2] = slice_uuid;
  v28[3] = @"build_version";
  v4 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
  if (v4)
  {
    v5 = [(NSDictionary *)self->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
  }

  else
  {
    v5 = &stru_1000463C0;
  }

  v26 = v5;
  v29[3] = v5;
  v28[4] = @"app_version";
  short_vers = [(OSACrashReport *)self short_vers];
  v7 = short_vers;
  if (short_vers)
  {
    v8 = short_vers;
  }

  else
  {
    v8 = &stru_1000463C0;
  }

  v29[4] = v8;
  v28[5] = @"is_first_party";
  v9 = [NSNumber numberWithBool:self->_is_first_party];
  v29[5] = v9;
  v28[6] = @"share_with_app_devs";
  is_simulated = self->_is_simulated;
  if (is_simulated)
  {
    optIn3rdParty = 0;
  }

  else
  {
    v25 = +[OSASystemConfiguration sharedInstance];
    optIn3rdParty = [v25 optIn3rdParty];
  }

  v12 = [NSNumber numberWithBool:optIn3rdParty];
  v29[6] = v12;
  v28[7] = kOSALogMetadataIncidentID;
  incidentID = [(OSACrashReport *)self incidentID];
  v29[7] = incidentID;
  v28[8] = @"platform";
  v14 = [NSNumber numberWithUnsignedInt:self->_platform];
  v29[8] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:9];
  v16 = [v15 mutableCopy];

  if (!is_simulated)
  {
  }

  if (v4)
  {
  }

  etlKey = [(OSACrashReport *)self etlKey];

  if (etlKey)
  {
    etlKey2 = [(OSACrashReport *)self etlKey];
    objc_msgSend_setObject_forKeyedSubscript_(v16);
  }

  if (self->_bundle_id)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v16);
  }

  if (self->_is_simulated)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v16);
  }

  if (self->_is_beta)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v16);
    v19 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"storeCohortMetadata"];

    if (v19)
    {
      v20 = [(NSDictionary *)self->_store_info objectForKeyedSubscript:@"storeCohortMetadata"];
      objc_msgSend_setObject_forKeyedSubscript_(v16);
    }
  }

  if (self->_adam_id)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v16);
  }

  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot && exit_snapshot->ers_namespace == 20 && self->_exit_payload && self->_exit_payload_length == 37)
  {
    v22 = [NSString stringWithUTF8String:?];
    objc_msgSend_setObject_forKeyedSubscript_(v16);
  }

  if (self->_sroute_id)
  {
    v23 = [NSNumber numberWithUnsignedInt:?];
    objc_msgSend_setObject_forKeyedSubscript_(v16);
  }

  [(OSACrashReport *)self addFieldsToHeader:v16];

  return v16;
}

- (id)slice_uuid
{
  if (self->_slice_uuid[0])
  {
    slice_uuid = self->_slice_uuid;
  }

  else
  {
    slice_uuid = "";
  }

  return [NSString stringWithUTF8String:slice_uuid];
}

- (void)addFieldsToHeader:(id)header
{
  headerCopy = header;
  selfCopy = self;
  if (sub_100005D54())
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [headerCopy __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)autopsyCorpse
{
  self->_is_full_corpse = 1;
  v3 = +[NSMutableArray array];
  taskImages = self->_taskImages;
  self->_taskImages = v3;

  kcd_addr_begin = 0;
  v7 = 0;
  if (task_map_corpse_info_64(mach_task_self_, self->_task, &kcd_addr_begin, &v7))
  {
    v5 = 1;
  }

  else
  {
    v5 = kcd_addr_begin == 0;
  }

  if (v5 || v7 == 0)
  {
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:{@"Couldn't map kcdata from kernel", v7}];
  }

  else
  {
    [OSACrashReport parseCorpse:"parseCorpse:size:" size:?];
    mach_vm_deallocate(mach_task_self_, kcd_addr_begin, v7);
    [(OSACrashReport *)self finishExtraction];
  }
}

- (void)extractTerminationReason
{
  v3 = objc_opt_new();
  decode_reasonNamespace = [(OSACrashReport *)self decode_reasonNamespace];
  if (self->_terminator_reason)
  {
    v5 = +[OSASystemConfiguration sharedInstance];
    if (([v5 appleInternal] & 1) != 0 || ((ers_namespace = self->_exit_snapshot->ers_namespace, ers_namespace <= 0x16) ? (v7 = ((1 << ers_namespace) & 0x700440) == 0) : (v7 = 1), !v7))
    {

LABEL_8:
      v8 = [(NSString *)self->_terminator_reason componentsSeparatedByString:@"\n"];
      v9 = [v8 valueForKey:@"stringByTrimming"];
      v10 = [NSPredicate predicateWithFormat:@"SELF != ''"];
      v11 = [v9 filteredArrayUsingPredicate:v10];
      objc_msgSend_setObject_forKeyedSubscript_(v3);

      goto LABEL_9;
    }

    if (ers_namespace == 39)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if (self->_exit_snapshot)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3);
    v12 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
    objc_msgSend_setObject_forKeyedSubscript_(v3);

    v13 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_flags];
    objc_msgSend_setObject_forKeyedSubscript_(v3);

    exit_snapshot = self->_exit_snapshot;
    if ((exit_snapshot->ers_flags & 0x10) != 0)
    {
      v20 = decode_reasonNamespace;
      AnalyticsSendEventLazy();

      exit_snapshot = self->_exit_snapshot;
    }

    switch(exit_snapshot->ers_namespace)
    {
      case 2u:
        v15 = [NSString stringWithFormat:@"%s", strsignal(exit_snapshot->ers_code)];
        objc_msgSend_setObject_forKeyedSubscript_(v3);
        goto LABEL_34;
      case 3u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonCodeSigning];
        goto LABEL_33;
      case 6u:
        [(OSACrashReport *)self decode_reasonDyldWithInfo:v3];
        break;
      case 7u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonLibxpc];
        goto LABEL_33;
      case 9u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonExec];
        goto LABEL_33;
      case 0xAu:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonCarousel];
        goto LABEL_33;
      case 0xBu:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonTcc];
        goto LABEL_33;
      case 0xDu:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonCoreAnimation];
        goto LABEL_33;
      case 0x12u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonLibSystem];
        goto LABEL_33;
      case 0x14u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonWatchdog];
        goto LABEL_33;
      case 0x15u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonMetal];
        goto LABEL_33;
      case 0x16u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonWatchKit];
        goto LABEL_33;
      case 0x19u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonSandbox];
        goto LABEL_33;
      case 0x1Du:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonBTC];
        goto LABEL_33;
      case 0x1Eu:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonPortSpace];
        goto LABEL_33;
      case 0x20u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonBacklightServices];
        goto LABEL_33;
      case 0x22u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonRosetta];
        goto LABEL_33;
      case 0x26u:
        decode_reasonCodeSigning = [(OSACrashReport *)self decode_reasonRealityKit];
LABEL_33:
        v15 = decode_reasonCodeSigning;
        [v3 addEntriesFromDictionary:decode_reasonCodeSigning];
LABEL_34:

        break;
      default:
        break;
    }
  }

  if (self->_terminator_pid)
  {
    v17 = [NSNumber numberWithInt:?];
    objc_msgSend_setObject_forKeyedSubscript_(v3);

    if (self->_terminator_proc)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3);
    }
  }

  v18 = [NSDictionary dictionaryWithDictionary:v3];
  terminationReason = self->_terminationReason;
  self->_terminationReason = v18;
}

- (void)finishExtraction
{
  selfCopy = self;
  sub_100006564();
}

- (void)validateProcName
{
  procName = self->_procName;
  v4 = [NSCharacterSet characterSetWithRange:0, 1];
  v5 = [(NSString *)procName rangeOfCharacterFromSet:v4];

  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NSString *)self->_procName substringToIndex:v5];
    v7 = self->_procName;
    self->_procName = v6;
  }

  v8 = [(NSString *)self->_procName length];
  v9 = self->_procName;
  if (v8)
  {
    if ([(NSString *)v9 length]< 0x41)
    {
      return;
    }

    v10 = [(NSString *)self->_procName substringToIndex:64];
    v9 = self->_procName;
  }

  else
  {
    v10 = @"Unknown";
  }

  self->_procName = &v10->isa;
}

- (id)decode_reasonNamespace
{
  if (self->_exit_snapshot)
  {
    v7[0] = &off_10004D9E8;
    v7[1] = &off_10004DA00;
    v8[0] = @"JETSAM";
    v8[1] = @"SIGNAL";
    v7[2] = &off_10004DA18;
    v7[3] = &off_10004DA30;
    v8[2] = @"CODESIGNING";
    v8[3] = @"HANGTRACER";
    v7[4] = &off_10004DA48;
    v7[5] = &off_10004DA60;
    v8[4] = @"TEST";
    v8[5] = @"DYLD";
    v7[6] = &off_10004DA78;
    v7[7] = &off_10004DA90;
    v8[6] = @"LIBXPC";
    v8[7] = @"OBJC";
    v7[8] = &off_10004DAA8;
    v7[9] = &off_10004DAC0;
    v8[8] = @"EXEC";
    v8[9] = @"FRONTBOARD";
    v7[10] = &off_10004DAD8;
    v7[11] = &off_10004DAF0;
    v8[10] = @"TCC";
    v8[11] = @"REPORTCRASH";
    v7[12] = &off_10004DB08;
    v7[13] = &off_10004DB20;
    v8[12] = @"COREANIMATION";
    v8[13] = @"AGGREGATED";
    v7[14] = &off_10004DB38;
    v7[15] = &off_10004DB50;
    v8[14] = @"RUNNINGBOARD";
    v8[15] = @"SKYWALK";
    v7[16] = &off_10004DB68;
    v7[17] = &off_10004DB80;
    v8[16] = @"SETTINGS";
    v8[17] = @"LIBSYSTEM";
    v7[18] = &off_10004DB98;
    v7[19] = &off_10004DBB0;
    v8[18] = @"FOUNDATION";
    v8[19] = @"WATCHDOG";
    v7[20] = &off_10004DBC8;
    v7[21] = &off_10004DBE0;
    v8[20] = @"METAL";
    v8[21] = @"WATCHKIT";
    v7[22] = &off_10004DBF8;
    v7[23] = &off_10004DC10;
    v8[22] = @"GUARD";
    v8[23] = @"ANALYTICS";
    v7[24] = &off_10004DC28;
    v7[25] = &off_10004DC40;
    v8[24] = @"SANDBOX";
    v8[25] = @"SECURITY";
    v7[26] = &off_10004DC58;
    v7[27] = &off_10004DC70;
    v8[26] = @"ENDPOINTSECURITY";
    v8[27] = @"PAC_EXCEPTION";
    v7[28] = &off_10004DC88;
    v7[29] = &off_10004DCA0;
    v8[28] = @"BLUETOOTH_CHIP";
    v8[29] = @"PORT_SPACE";
    v7[30] = &off_10004DCB8;
    v7[31] = &off_10004DCD0;
    v8[30] = @"WEBKIT";
    v8[31] = @"BACKLIGHTSERVICES";
    v7[32] = &off_10004DCE8;
    v7[33] = &off_10004DD00;
    v8[32] = @"ROSETTA";
    v8[33] = @"OS_REASON_AUDIO";
    v7[34] = &off_10004DD18;
    v7[35] = &off_10004DD30;
    v8[34] = @"REALITYKIT";
    v8[35] = @"MTE_FAIL";
    v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:36];
    v4 = [NSNumber numberWithUnsignedInt:self->_exit_snapshot->ers_namespace];
    v5 = [v3 objectForKeyedSubscript:v4];

    if (!v5)
    {
      v5 = [NSString stringWithFormat:@"<0x%X>", self->_exit_snapshot->ers_namespace];
    }
  }

  else
  {
    v5 = @"<NO_NS>";
  }

  return v5;
}

- (void)decode_os_log_fault_payload
{
  if (!self->_new_payload && self->_exit_payload)
  {
    v3 = objc_opt_new();
    new_payload = self->_new_payload;
    self->_new_payload = v3;

    exit_payload = self->_exit_payload;
    v6 = +[OSASystemConfiguration sharedInstance];
    appleInternal = [v6 appleInternal];

    if (appleInternal)
    {
      v8 = [(OSACrashReport *)self safe_encoder:exit_payload[4]];
      if (v8)
      {
        objc_msgSend_setObject_forKeyedSubscript_(self->_new_payload);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Missing input data for os_log_fault message string", buf, 2u);
      }
    }

    v9 = [(OSACrashReport *)self safe_encoder:exit_payload[3]];
    if (v9)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_new_payload);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Missing input data for os_log_fault category string", v12, 2u);
    }

    v10 = [(OSACrashReport *)self safe_encoder:exit_payload[2]];
    if (v10)
    {
      objc_msgSend_setObject_forKeyedSubscript_(self->_new_payload);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Missing input data for os_log_fault subsystem string", v11, 2u);
    }
  }
}

- (id)problemType
{
  if (self->_is_lightweight_corpse)
  {
    v2 = @"308";
  }

  else
  {
    v2 = @"309";
  }

  if (self->_exceptionType == 11)
  {
    if (*self->_exceptionCode >> 61 == 5)
    {
      return @"327";
    }

    v2 = @"385";
  }

  return v2;
}

- (id)decode_reasonLibSystem
{
  v3 = objc_opt_new();
  v22[0] = &off_10004DD48;
  v22[1] = &off_10004DD60;
  v23[0] = @"Thread parking or terminating still owning a workloop";
  v23[1] = @"Application Triggered Fault";
  v22[2] = &off_10004DD78;
  v22[3] = &off_10004DD90;
  v23[2] = @"Application Triggered Fault";
  v23[3] = @"SecInit Initializer";
  v22[4] = &off_10004DDA8;
  v23[4] = @"PThread Corruption";
  v4 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:5];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  v7 = objc_opt_new();
  if (self->_workloop_id)
  {
    v8 = [NSString stringWithFormat:@"Workloop: %#llx", self->_workloop_id];
    [v7 addObject:v8];
  }

  if (self->_queue_serial_no)
  {
    v9 = [NSString stringWithFormat:@"Dispatch Queue: #%lld", self->_queue_serial_no];
    [v7 addObject:v9];
  }

  v10 = +[OSASystemConfiguration sharedInstance];
  if (![v10 appleInternal] || !self->_exit_payload || !self->_exit_payload_length)
  {

    goto LABEL_11;
  }

  ers_code = self->_exit_snapshot->ers_code;
  if (ers_code == 2)
  {
  }

  else
  {

    if (ers_code != 5)
    {
      goto LABEL_11;
    }
  }

  v13 = self->_exit_snapshot->ers_code;
  if (v13 == 5)
  {
    [(OSACrashReport *)self decode_os_log_fault_payload];
    v20 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];

    if (v20)
    {
      v21 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];
      [v7 addObject:v21];
    }
  }

  else if (v13 == 2)
  {
    v14 = (4 * self->_exit_payload_length) | 1;
    v15 = malloc_type_malloc(v14, 0xDE85036EuLL);
    v16 = v15;
    exit_payload = self->_exit_payload;
    exit_payload_length = self->_exit_payload_length;
    if (!exit_payload[exit_payload_length - 1])
    {
      self->_exit_payload_length = --exit_payload_length;
    }

    if (v15)
    {
      if (strnvisx(v15, v14, exit_payload, exit_payload_length, 18) != -1)
      {
        v19 = [NSString stringWithUTF8String:v16];
        [v7 addObject:v19];
      }

      free(v16);
    }
  }

LABEL_11:
  if ([v7 count])
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  return v3;
}

- (id)decode_cpuType
{
  cpuType = self->_cpuType;
  if (self->_is64Bit && cpuType == 12)
  {
    cpuType = 16777228;
    self->_cpuType = 16777228;
  }

  return _OSACPUTypeToString(cpuType, a2);
}

- (BOOL)isExceptionNonFatal
{
  exceptionType = self->_exceptionType;
  if (exceptionType == 12)
  {
    return *self->_exceptionCode >> 61 == 3;
  }

  if (exceptionType != 11 || self->_exit_snapshot)
  {
    return 0;
  }

  v4 = *self->_exceptionCode;
  return v4 >> 61 != 1 || (v4 & 0x1C00000000000000) != 0x800000000000000;
}

- (id)decode_signal
{
  signal = self->_signal;
  signal = &stru_1000463C0;
  switch(signal)
  {
    case 0:
      break;
    case 1:
      signal = @"SIGHUP";
      break;
    case 2:
      signal = @"SIGINT";
      break;
    case 3:
      signal = @"SIGQUIT";
      break;
    case 4:
      signal = @"SIGILL";
      break;
    case 5:
      signal = @"SIGTRAP";
      break;
    case 6:
      signal = @"SIGABRT";
      break;
    case 7:
      signal = @"SIGEMT";
      break;
    case 8:
      signal = @"SIGFPE";
      break;
    case 9:
      if ((self->_cs_status & 0x1000000) != 0)
      {
        v5 = @"SIGKILL - CODESIGNING";
      }

      else
      {
        v5 = @"SIGKILL";
      }

      signal = v5;
      break;
    case 10:
      signal = @"SIGBUS";
      break;
    case 11:
      signal = @"SIGSEGV";
      break;
    case 12:
      signal = @"SIGSYS";
      break;
    case 13:
      signal = @"SIGPIPE";
      break;
    case 14:
      signal = @"SIGALRM";
      break;
    case 15:
      signal = @"SIGTRM";
      break;
    case 16:
      signal = @"SIGURG";
      break;
    case 17:
      signal = @"SIGSTOP";
      break;
    case 18:
      signal = @"SIGTSTP";
      break;
    case 19:
      signal = @"SIGCONT";
      break;
    case 20:
      signal = @"SIGCHLD";
      break;
    case 21:
      signal = @"SIGTTIN";
      break;
    case 22:
      signal = @"SIGTTOU";
      break;
    case 23:
      signal = @"SIGIO";
      break;
    case 24:
      signal = @"SIGXCPU";
      break;
    case 25:
      signal = @"SIGXFSZ";
      break;
    case 26:
      signal = @"SIGVTALRM";
      break;
    case 27:
      signal = @"SIGPROF";
      break;
    case 28:
      signal = @"SIGWINCH";
      break;
    case 29:
      signal = @"SIGINFO";
      break;
    case 30:
      signal = @"SIGUSR1";
      break;
    case 31:
      signal = @"SIGUSR2";
      break;
    default:
      signal = [NSString stringWithFormat:@"Signal %d", signal];
      break;
  }

  return signal;
}

- (void)_mergeFormattedASI
{
  v3 = self->_asiFormattedFiltered;
  if (self->_is_first_party)
  {
    v4 = self->_asiFormattedSafe;

    v3 = v4;
  }

  v5 = +[OSASystemConfiguration sharedInstance];
  appleInternal = [v5 appleInternal];

  if (appleInternal)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100014A9C;
    v11[3] = &unk_1000453A8;
    v11[4] = self;
    [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v11];
    v7 = self->_asiFormattedInternal;

    v3 = v7;
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100014B7C;
  v10[3] = &unk_1000453A8;
  v10[4] = self;
  [(NSMutableDictionary *)v3 enumerateKeysAndObjectsUsingBlock:v10];
  asiFormattedInternal = self->_asiFormattedInternal;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100014C5C;
  v9[3] = &unk_1000453A8;
  v9[4] = self;
  [(NSMutableDictionary *)asiFormattedInternal enumerateKeysAndObjectsUsingBlock:v9];
}

- (void)writeReportBodyWithSectionWriter:(id)writer
{
  v4 = _Block_copy(writer);
  _Block_copy(v4);
  selfCopy = self;
  sub_100028044(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)getTrialCache
{
  if (qword_100054108 != -1)
  {
    sub_1000308A4();
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000870C;
  block[3] = &unk_100045258;
  block[4] = self;
  dispatch_sync(qword_100054100, block);
  return qword_1000540F8;
}

- (id)decode_exceptionType
{
  exceptionType = self->_exceptionType;
  if ((exceptionType - 1) >= 0xD)
  {
    exceptionType = [NSString stringWithFormat:@"%08X", exceptionType];
  }

  else
  {
    exceptionType = off_1000457F0[(exceptionType - 1)];
  }

  return exceptionType;
}

- (id)appleCareDetails
{
  decode_exceptionCodes = [(OSACrashReport *)self decode_exceptionCodes];
  allValues = [decode_exceptionCodes allValues];
  v5 = [allValues componentsJoinedByString:@" "];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" withString:{", @"-"}];

  procName = self->_procName;
  v12 = &off_10004D9D0;
  v13 = procName;
  bundle_id = self->_bundle_id;
  if (!bundle_id)
  {
    bundle_id = &stru_1000463C0;
  }

  v9 = [NSNumber numberWithBool:self->_is_simulated, v12, v13, bundle_id, v6];
  v14 = v9;
  v10 = [NSArray arrayWithObjects:&v12 count:5];

  return v10;
}

- (id)create_os_fault_section
{
  v3 = objc_opt_new();
  objc_msgSend_setObject_forKeyedSubscript_(v3);
  if (self->_terminator_reason)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  [(OSACrashReport *)self decode_os_log_fault_payload];
  v4 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];

  if (v4)
  {
    v5 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"message"];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  v6 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"category"];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  v7 = [(NSMutableDictionary *)self->_new_payload objectForKeyedSubscript:@"subsystem"];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  return v3;
}

- (id)decode_exceptionCodes
{
  v3 = objc_opt_new();
  decode_exceptionType = [(OSACrashReport *)self decode_exceptionType];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  if (self->_signal)
  {
    decode_signal = [(OSACrashReport *)self decode_signal];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  exceptionType = self->_exceptionType;
  switch(exceptionType)
  {
    case 12:
      codeZeroForGuardException = [(OSACrashReport *)self codeZeroForGuardException];
      if (*self->_exceptionCode != codeZeroForGuardException && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *self->_exceptionCode;
        *buf = 134218240;
        *v67 = v15;
        *&v67[8] = 2048;
        *&v67[10] = codeZeroForGuardException;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "EXC_GUARD code zero: 0x%llX -> 0x%llX", buf, 0x16u);
      }

      v16 = codeZeroForGuardException >> 61;
      if (codeZeroForGuardException >> 61 <= 3)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            if (v16 == 3)
            {
              objc_msgSend_setObject_forKeyedSubscript_(v3);
              v17 = [NSNumber numberWithUnsignedInt:codeZeroForGuardException];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              v18 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              [NSString stringWithFormat:@"namespc %u reason_code 0x%016qx", codeZeroForGuardException, self->_exceptionCode[1], v58];
              goto LABEL_98;
            }

LABEL_62:
            v30 = [NSString stringWithFormat:@"GUARD_TYPE_0x%llX", codeZeroForGuardException >> 61];
            objc_msgSend_setObject_forKeyedSubscript_(v3);

            [NSString stringWithFormat:@"unknown guard type (0x%016qx, 0x%016qx)", codeZeroForGuardException, self->_exceptionCode[1], v58];
            goto LABEL_98;
          }

          objc_msgSend_setObject_forKeyedSubscript_(v3);
          v31 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
          if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 7)
          {
            switch(v31)
            {
              case 1:
                0x1FFFFFFF = @"CLOSE";
                goto LABEL_133;
              case 2:
                0x1FFFFFFF = @"DUP";
                goto LABEL_133;
              case 4:
                0x1FFFFFFF = @"NOCLOEXEC";
                goto LABEL_133;
            }
          }

          else if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 0x1F)
          {
            if (v31 == 32)
            {
              0x1FFFFFFF = @"MISMATCH";
              goto LABEL_133;
            }

            if (v31 == 64)
            {
              0x1FFFFFFF = @"WRITE";
              goto LABEL_133;
            }
          }

          else
          {
            if (v31 == 8)
            {
              0x1FFFFFFF = @"SOCKET_IPC";
              goto LABEL_133;
            }

            if (v31 == 16)
            {
              0x1FFFFFFF = @"FILEPORT";
LABEL_133:
              v69 = 0x1FFFFFFF;
              v35 = [NSArray arrayWithObjects:&v69 count:1];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              v36 = [NSNumber numberWithUnsignedInt:codeZeroForGuardException];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              v37 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              [NSString stringWithFormat:@" %@ on file descriptor %u (guarded with 0x%016qx)", 0x1FFFFFFF, codeZeroForGuardException, self->_exceptionCode[1]];
              v49 = LABEL_213:;
              objc_msgSend_setObject_forKeyedSubscript_(v3);

LABEL_214:
              break;
            }
          }

          0x1FFFFFFF = [NSString stringWithFormat:@"Unknown GUARD_TYPE_FD flavor %d", HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF];
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *v67 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
            *&v67[4] = 2048;
            *&v67[6] = codeZeroForGuardException;
            _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_FD flavor %d in code %lld", buf, 0x12u);
          }

          goto LABEL_133;
        }

        objc_msgSend_setObject_forKeyedSubscript_(v3);
        v27 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
        if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 0x1FF)
        {
          if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) >= 0x40000)
          {
            if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 0x100001)
            {
              if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) < 0x100000)
              {
                if (v27 == 0x40000)
                {
                  0x1FFFFFFF = @"SEND_INVALID_RIGHT";
                  goto LABEL_209;
                }

                if (v27 == 0x80000)
                {
                  0x1FFFFFFF = @"RCV_INVALID_NAME";
                  goto LABEL_209;
                }

                goto LABEL_207;
              }

              if (v27 == 0x100000)
              {
                0x1FFFFFFF = @"RCV_GUARDED_DESC";
              }

              else
              {
                0x1FFFFFFF = @"SERVICE_PORT_VIOLATION_NON_FATAL";
              }

              goto LABEL_209;
            }

            if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 0x100004)
            {
              if (v27 == 1048578)
              {
                0x1FFFFFFF = @"PROVISIONAL_REPLY_PORT";
                goto LABEL_209;
              }

              if (v27 == 1048579)
              {
                0x1FFFFFFF = @"OOL_PORT_ARRAY_CREATION";
                goto LABEL_209;
              }
            }

            else
            {
              switch(v27)
              {
                case 0x100005:
                  0x1FFFFFFF = @"REPLY_PORT_SINGLE_SO_RIGHT";
                  goto LABEL_209;
                case 0x200000:
                  0x1FFFFFFF = @"OVERDEALLOC_SOFT";
                  goto LABEL_209;
                case 0x400000:
                  0x1FFFFFFF = @"ILLEGALMOVE_SOFT";
                  goto LABEL_209;
              }
            }
          }

          else if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) < 0x2000)
          {
            if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 0x7FF)
            {
              if (v27 == 2048)
              {
                0x1FFFFFFF = @"INVALID_ARGUMENT";
                goto LABEL_209;
              }

              if (v27 == 4096)
              {
                0x1FFFFFFF = @"RIGHT_EXISTS";
                goto LABEL_209;
              }
            }

            else
            {
              if (v27 == 512)
              {
                0x1FFFFFFF = @"INVALID_NAME";
                goto LABEL_209;
              }

              if (v27 == 1024)
              {
                0x1FFFFFFF = @"INVALID_VALUE";
                goto LABEL_209;
              }
            }
          }

          else if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) < 0x8000)
          {
            if (v27 == 0x2000)
            {
              0x1FFFFFFF = @"KERN_NO_SPACE";
              goto LABEL_209;
            }

            if (v27 == 0x4000)
            {
              0x1FFFFFFF = @"KERN_FAILURE";
              goto LABEL_209;
            }
          }

          else
          {
            switch(v27)
            {
              case 0x8000:
                0x1FFFFFFF = @"KERN_RESOURCE";
                goto LABEL_209;
              case 0x10000:
                0x1FFFFFFF = @"SEND_INVALID_REPLY";
                goto LABEL_209;
              case 0x20000:
                0x1FFFFFFF = @"SEND_INVALID_VOUCHER";
                goto LABEL_209;
            }
          }
        }

        else
        {
          if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 9)
          {
            if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 4)
            {
              if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 6)
              {
                if (v27 == 5)
                {
                  0x1FFFFFFF = @"THREAD_SET_STATE";
                }

                else
                {
                  0x1FFFFFFF = @"SET_EXCEPTION_BEHAVIOR";
                }
              }

              else if (v27 == 7)
              {
                0x1FFFFFFF = @"SERVICE_PORT_VIOLATION_FATAL";
              }

              else if (v27 == 8)
              {
                0x1FFFFFFF = @"UNGUARDED";
              }

              else
              {
                0x1FFFFFFF = @"KOBJECT_REPLY_PORT_SEMANTICS";
              }

              goto LABEL_209;
            }

            if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 2)
            {
              if (v27 == 1)
              {
                0x1FFFFFFF = @"DESTROY";
                goto LABEL_209;
              }

              if (v27 == 2)
              {
                0x1FFFFFFF = @"MOD_REFS";
                goto LABEL_209;
              }

              goto LABEL_207;
            }

            if (v27 == 3)
            {
              0x1FFFFFFF = @"INVALID_OPTIONS";
            }

            else
            {
              0x1FFFFFFF = @"SET_CONTEXT";
            }

LABEL_209:
            v68 = 0x1FFFFFFF;
            v46 = [NSArray arrayWithObjects:&v68 count:1];
            objc_msgSend_setObject_forKeyedSubscript_(v3);

            v47 = [NSNumber numberWithUnsignedInt:codeZeroForGuardException];
            objc_msgSend_setObject_forKeyedSubscript_(v3);

            v48 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
            objc_msgSend_setObject_forKeyedSubscript_(v3);

            if (codeZeroForGuardException && v27 == 3)
            {
              [NSString stringWithFormat:@"mach_msg_trap() called with msgh_id %u. The trap is not allowed on this platform.", codeZeroForGuardException, v57, v58];
            }

            else
            {
              [NSString stringWithFormat:@" %@ on mach port %u (guarded with 0x%016qx)", 0x1FFFFFFF, codeZeroForGuardException, self->_exceptionCode[1]];
            }

            goto LABEL_213;
          }

          if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 0x40)
          {
            if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 0x1F)
            {
              if (v27 == 32)
              {
                0x1FFFFFFF = @"ILLEGAL_MOVE";
                goto LABEL_209;
              }

              if (v27 == 64)
              {
                0x1FFFFFFF = @"STRICT_REPLY";
                goto LABEL_209;
              }
            }

            else
            {
              if (v27 == 10)
              {
                0x1FFFFFFF = @"REQUIRE_REPLY_PORT_SEMANTICS";
                goto LABEL_209;
              }

              if (v27 == 16)
              {
                0x1FFFFFFF = @"INCORRECT_GUARD";
                goto LABEL_209;
              }
            }

            goto LABEL_207;
          }

          if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 0x42)
          {
            if (v27 == 65)
            {
              0x1FFFFFFF = @"INVALID_NOTIFICATION_REQ";
            }

            else
            {
              0x1FFFFFFF = @"INVALID_MPO_ENTITLEMENT";
            }

            goto LABEL_209;
          }

          switch(v27)
          {
            case 0x43:
              0x1FFFFFFF = @"DESCRIPTOR_VIOLATION";
              goto LABEL_209;
            case 0x80:
              0x1FFFFFFF = @"MSG_FILTERED";
              goto LABEL_209;
            case 0x100:
              0x1FFFFFFF = @"INVALID_RIGHT";
              goto LABEL_209;
          }
        }

LABEL_207:
        0x1FFFFFFF = [NSString stringWithFormat:@"Unknown GUARD_TYPE_MACH_PORT flavor %d", HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v67 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
          *&v67[4] = 2048;
          *&v67[6] = codeZeroForGuardException;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_MACH_PORT flavor %d in code %lld", buf, 0x12u);
        }

        goto LABEL_209;
      }

      if (v16 != 4)
      {
        if (v16 != 5)
        {
          if (v16 == 6)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v3);
            if (codeZeroForGuardException)
            {
              v20 = [NSNumber numberWithUnsignedInt:codeZeroForGuardException];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              v21 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              [NSString stringWithFormat:@"mach_trap %u number 0x%016qx", codeZeroForGuardException, self->_exceptionCode[1], v58];
            }

            else
            {
              v34 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              [NSString stringWithFormat:@"syscall 0x%016qx", self->_exceptionCode[1], v57, v58];
            }

            goto LABEL_98;
          }

          goto LABEL_62;
        }

        objc_msgSend_setObject_forKeyedSubscript_(v3);
        v32 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
        if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 7)
        {
          if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 3)
          {
            if (v32 == 4)
            {
              0x1FFFFFFF = @"RECLAIM_INDEX_FAILURE";
              goto LABEL_166;
            }

            if (v32 == 7)
            {
              0x1FFFFFFF = @"GUARD_EXC_SEC_ACCESS_FAULT";
              goto LABEL_166;
            }
          }

          else
          {
            if (v32 == 1)
            {
              0x1FFFFFFF = @"DEALLOC_GAP";
              goto LABEL_166;
            }

            if (v32 == 2)
            {
              0x1FFFFFFF = @"RECLAIM_COPYIO_FAILURE";
              goto LABEL_166;
            }
          }
        }

        else if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) <= 0xC7)
        {
          if (v32 == 8)
          {
            0x1FFFFFFF = @"RECLAIM_DEALLOCATE_FAILURE";
            goto LABEL_166;
          }

          if (v32 == 64)
          {
            0x1FFFFFFF = @"GUARD_EXC_SEC_ASYNC_ACCESS_FAULT";
            goto LABEL_166;
          }
        }

        else
        {
          switch(v32)
          {
            case 0xC8:
              0x1FFFFFFF = @"GUARD_EXC_MTE_SYNC_FAULT";
              goto LABEL_166;
            case 0xC9:
              0x1FFFFFFF = @"GUARD_EXC_MTE_ASYNC_USER_FAULT";
              goto LABEL_166;
            case 0xCA:
              0x1FFFFFFF = @"kGUARD_EXC_MTE_ASYNC_KERN_FAULT";
LABEL_166:
              v60 = 0x1FFFFFFF;
              v44 = [NSArray arrayWithObjects:&v60 count:1];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              v45 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              [NSString stringWithFormat:@"offset=0x%016qx, flavor=0x%08x (%@)", self->_exceptionCode[1], v32, 0x1FFFFFFF];
              goto LABEL_213;
          }
        }

        0x1FFFFFFF = [NSString stringWithFormat:@"Unknown GUARD_TYPE_VIRT_MEMORY flavor %d", HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF];
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109376;
          *v67 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
          *&v67[4] = 2048;
          *&v67[6] = codeZeroForGuardException;
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_VIRT_MEMORY flavor %d in code %lld", buf, 0x12u);
        }

        goto LABEL_166;
      }

      objc_msgSend_setObject_forKeyedSubscript_(v3);
      buf[0] = 0;
      proc_name(codeZeroForGuardException, buf, 0x400u);
      v29 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
      if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 0xF)
      {
        if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 0x3F)
        {
          if (v29 == 64)
          {
            0x1FFFFFFF = @"VNG_EXCHDATA";
            goto LABEL_156;
          }

          if (v29 == 128)
          {
            0x1FFFFFFF = @"VNG_PERMISSIONS";
            goto LABEL_156;
          }
        }

        else
        {
          if (v29 == 16)
          {
            0x1FFFFFFF = @"VNG_TRUNC_OTHER";
            goto LABEL_156;
          }

          if (v29 == 32)
          {
            0x1FFFFFFF = @"VNG_LINK";
            goto LABEL_156;
          }
        }
      }

      else if ((HIDWORD(codeZeroForGuardException) & 0x1FFFFFFFu) > 3)
      {
        if (v29 == 4)
        {
          0x1FFFFFFF = @"VNG_UNLINK";
          goto LABEL_156;
        }

        if (v29 == 8)
        {
          0x1FFFFFFF = @"VNG_WRITE_OTHER";
          goto LABEL_156;
        }
      }

      else
      {
        if (v29 == 1)
        {
          0x1FFFFFFF = @"VNG_RENAME_TO";
          goto LABEL_156;
        }

        if (v29 == 2)
        {
          0x1FFFFFFF = @"VNG_RENAME_FROM";
LABEL_156:
          v38 = [NSMutableString stringWithFormat:@"id=0x%016qx, pid=%u", self->_exceptionCode[1], codeZeroForGuardException];
          v39 = v38;
          if (buf[0])
          {
            [v38 appendFormat:@", process=%s", buf];
            v40 = [NSString stringWithUTF8String:buf];
            objc_msgSend_setObject_forKeyedSubscript_(v3);
          }

          [v39 appendFormat:@", flavor=0x%08x", HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF];
          [v39 appendFormat:@" (%@)", 0x1FFFFFFF];
          v61 = 0x1FFFFFFF;
          v41 = [NSArray arrayWithObjects:&v61 count:1];
          objc_msgSend_setObject_forKeyedSubscript_(v3);

          v42 = [NSNumber numberWithUnsignedInt:codeZeroForGuardException];
          objc_msgSend_setObject_forKeyedSubscript_(v3);

          v43 = [NSNumber numberWithLongLong:self->_exceptionCode[1]];
          objc_msgSend_setObject_forKeyedSubscript_(v3);

          objc_msgSend_setObject_forKeyedSubscript_(v3);
          goto LABEL_214;
        }
      }

      0x1FFFFFFF = [NSString stringWithFormat:@"Unknown GUARD_TYPE_VN flavor %d", HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *v62 = 67109376;
        v63 = HIDWORD(codeZeroForGuardException) & 0x1FFFFFFF;
        v64 = 2048;
        v65 = codeZeroForGuardException;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unknown GUARD_TYPE_VN flavor %d in code %lld", v62, 0x12u);
      }

      goto LABEL_156;
    case 11:
      v11 = *self->_exceptionCode;
      v12 = v11 >> 61;
      if (v11 >> 61 > 3)
      {
        switch(v12)
        {
          case 4uLL:
            objc_msgSend_setObject_forKeyedSubscript_(v3);
            [NSString stringWithFormat:@" (Limit %u MB) Observed %u MB over %u secs", *self->_exceptionCode & 0x7FFF, self->_exceptionCode[1] & 0x7FFF, *self->_exceptionCode >> 15];
            break;
          case 5uLL:
            objc_msgSend_setObject_forKeyedSubscript_(v3);
            [NSString stringWithFormat:@" (Limit %u threads) Crossed Thread Limit", *self->_exceptionCode & 0x7FFF, v57, v58];
            break;
          case 6uLL:
            objc_msgSend_setObject_forKeyedSubscript_(v3);
            [NSString stringWithFormat:@" (Limit %u ports) Crossed system-wide per-process Port Limit", *self->_exceptionCode & 0xFFFFFF, v57, v58];
            break;
          default:
            goto LABEL_215;
        }
      }

      else
      {
        v13 = (v11 >> 58) & 7;
        switch(v12)
        {
          case 1uLL:
            objc_msgSend_setObject_forKeyedSubscript_(v3);
            [NSString stringWithFormat:@" (Limit %u%%) Observed %u%% over %u secs", *self->_exceptionCode & 0x7F, self->_exceptionCode[1] & 0x7F, *self->_exceptionCode >> 7];
            break;
          case 2uLL:
            objc_msgSend_setObject_forKeyedSubscript_(v3);
            [NSString stringWithFormat:@" (Limit %u/sec) Observed %u/sec over %u secs", *self->_exceptionCode & 0xFFF, self->_exceptionCode[1] & 0xFFFFF, (*self->_exceptionCode >> 20) & 0xFFFFF];
            break;
          case 3uLL:
            objc_msgSend_setObject_forKeyedSubscript_(v3);
            if ((v13 - 1) > 2)
            {
              v33 = @"Unknown memory exception type";
LABEL_99:
              objc_msgSend_setObject_forKeyedSubscript_(v3);

              goto LABEL_215;
            }

            [NSString stringWithFormat:off_100045858[v13 - 1], *self->_exceptionCode, v57, v58];
            break;
          default:
            goto LABEL_215;
        }
      }

      v33 = LABEL_98:;
      goto LABEL_99;
    case 1:
      isMTECrash = [(OSACrashReport *)self isMTECrash];
      self->_crashingAddress = self->_exceptionCode[1];
      v8 = +[_TtC11ReportCrash11Environment hasFPAC];
      exceptionCode = self->_exceptionCode;
      if ((v8 & 1) != 0 || (isMTECrash & 1) != 0 || self->_crashingAddress == exceptionCode[1])
      {
        v10 = sub_10001A0B0(*exceptionCode);
        [NSString stringWithFormat:@"%@ at 0x%016qx", v10, self->_exceptionCode[1], v58];
      }

      else
      {
        v10 = sub_10001A0B0(*exceptionCode);
        [NSString stringWithFormat:@"%@ at 0x%016qx -> 0x%016qx (possible pointer authentication failure)", v10, self->_exceptionCode[1], self->_crashingAddress];
      }
      v22 = ;
      objc_msgSend_setObject_forKeyedSubscript_(v3);

      if (*self->_exceptionCode == 10)
      {
        if (self->_pageinStateCount)
        {
          v23 = self->_pageinState[0];
          if (v23)
          {
            v24 = [NSString stringWithFormat:@" FS pagein error: %d %s", v23, strerror(self->_pageinState[0])];
            objc_msgSend_setObject_forKeyedSubscript_(v3);
          }
        }
      }

      if (self->_isStackGuardPageBadAccess)
      {
        stackGuardPageBadAccessThreadNumber = self->_stackGuardPageBadAccessThreadNumber;
        if (stackGuardPageBadAccessThreadNumber == -1)
        {
          goto LABEL_76;
        }

        crashedThreadNumber = self->_crashedThreadNumber;
        if (stackGuardPageBadAccessThreadNumber == crashedThreadNumber)
        {
          goto LABEL_76;
        }

        [NSString stringWithFormat:@"Bad access in stack guard region for thread %d but crash was associated with thread %d - possible stray access?", self->_stackGuardPageBadAccessThreadNumber, crashedThreadNumber, v59];
        goto LABEL_98;
      }

      break;
    default:
      exit_snapshot = self->_exit_snapshot;
      if (exit_snapshot && exit_snapshot->ers_namespace == 7 && exit_snapshot->ers_code == 3)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v3);
LABEL_76:
        objc_msgSend_setObject_forKeyedSubscript_(v3);
      }

      break;
  }

LABEL_215:
  if (self->_exceptionCodeCount)
  {
    v50 = +[NSMutableArray array];
    v51 = +[NSMutableArray array];
    if (self->_exceptionCodeCount)
    {
      v52 = 0;
      do
      {
        v53 = [NSNumber numberWithLongLong:self->_exceptionCode[v52]];
        [v50 addObject:v53];

        v54 = [NSString stringWithFormat:@"0x%016qx", self->_exceptionCode[v52]];
        [v51 addObject:v54];

        ++v52;
      }

      while (v52 < self->_exceptionCodeCount);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v3);
    v55 = [v51 componentsJoinedByString:{@", "}];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  return v3;
}

- (int64_t)codeZeroForGuardException
{
  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot && exit_snapshot->ers_namespace == 23)
  {
    p_ers_code = &exit_snapshot->ers_code;
  }

  else
  {
    p_ers_code = self->_exceptionCode;
  }

  return *p_ers_code;
}

- (BOOL)isMTECrash
{
  selfCopy = self;
  v3 = sub_10000A51C();

  return v3 & 1;
}

- (void)setTriggeredThread
{
  if ([(NSMutableArray *)self->_threadInfos count])
  {
    crashedThreadNumber = self->_crashedThreadNumber;
    if ((crashedThreadNumber & 0x80000000) == 0 && [(NSMutableArray *)self->_threadInfos count]> crashedThreadNumber)
    {
      v4 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
      objc_msgSend_setObject_forKeyedSubscript_(v4);
    }
  }
}

- (int)sRouteID
{
  if ((+[OSAReport isSecurityResearchDeviceERM]& 1) != 0)
  {
    return 18;
  }

  result = [(OSACrashReport *)self shouldEnableUrgentSubmission];
  if (result != 17)
  {
    if (self->_probGuardReport)
    {
      return 1;
    }

    else
    {
      v4 = result;
      if ([(OSACrashReport *)self isMTECrash])
      {
        [OSACrashReport observedMTECrashWithProcessName:self->_procName];
        return 15;
      }

      else if (self->_sanitizerReport)
      {
        return 11;
      }

      else if (!self->_exceptionStateCount || ((v5 = self->_exceptionState[2], v6 = v5 & 0xFC01FFFF, v7 = v5 & 0xFC01FF00, v6 != -268413671) ? (result = 2) : (result = 14), v7 != -268413696))
      {
        exit_snapshot = self->_exit_snapshot;
        if (exit_snapshot && exit_snapshot->ers_code == 3367907150)
        {
          return 2;
        }

        else
        {
          v9 = [(NSMutableDictionary *)self->_applicationSpecificInfo objectForKeyedSubscript:@"libsystem_c.dylib"];
          v10 = [v9 containsObject:@"detected buffer overflow"];

          if (v10)
          {
            return 3;
          }

          v11 = [(NSMutableDictionary *)self->_applicationSpecificInfo objectForKeyedSubscript:@"libsystem_c.dylib"];
          v12 = [v11 containsObject:@"detected source and destination buffer overlap"];

          if (v12)
          {
            return 3;
          }

          else
          {
            v13 = [(NSMutableDictionary *)self->_applicationSpecificInfo objectForKeyedSubscript:@"libsystem_c.dylib"];
            v14 = [v13 containsObject:@"stack buffer overflow"];

            if (v14)
            {
              return 4;
            }

            else if (self->_exceptionType == 12 && [(OSACrashReport *)self codeZeroForGuardException]>> 61 == 1)
            {
              return 12;
            }

            else
            {
              v15 = self->_exit_snapshot;
              if (v15 && (v15->ers_flags & 0x1000) != 0)
              {
                return 13;
              }

              else
              {
                return 16 * (v4 == 16);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (int)shouldEnableUrgentSubmission
{
  selfCopy = self;
  v3 = sub_10000AAE4();

  return v3;
}

- (id)patternInfo
{
  selfCopy = self;
  v3 = sub_10000B7E0();

  return v3;
}

- (void)sendToMetricKit
{
  selfCopy = self;
  problemType = [(OSACrashReport *)self problemType];
  if (![problemType isEqualToString:@"309"] || !selfCopy->_bundle_id)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    procName = selfCopy->_procName;
    bundle_id = selfCopy->_bundle_id;
    *buf = 138543874;
    v103 = procName;
    v104 = 2114;
    v105 = problemType;
    v106 = 2114;
    v107 = bundle_id;
    v53 = "no MetricKit for process %{public}@ type %{public}@ bundleId %{public}@";
    v54 = 32;
LABEL_47:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v53, buf, v54);
    goto LABEL_63;
  }

  if (qword_100054160 != -1)
  {
    sub_1000308B8();
  }

  if (!qword_100054110 || !qword_100054118 || !qword_100054120 || !qword_100054128 || !qword_100054130 || !qword_100054138 || !qword_100054140 || !qword_100054148 || !qword_100054150 || !qword_100054158)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    *buf = 0;
    v53 = "failed to dynamically load MetricKit classes";
    v54 = 2;
    goto LABEL_47;
  }

  v73 = selfCopy->_bundle_id;
  if ([qword_100054110 isMetricKitClient:?])
  {
    v76 = objc_opt_new();
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = selfCopy->_threadInfos;
    v85 = selfCopy;
    v78 = [(NSMutableArray *)obj countByEnumeratingWithState:&v98 objects:v115 count:16];
    if (v78)
    {
      v77 = *v99;
      do
      {
        v3 = 0;
        do
        {
          if (*v99 != v77)
          {
            objc_enumerationMutation(obj);
          }

          v4 = *(*(&v98 + 1) + 8 * v3);
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v79 = v4;
          v81 = v3;
          v5 = [v4 objectForKeyedSubscript:@"frames"];
          reverseObjectEnumerator = [v5 reverseObjectEnumerator];

          v83 = reverseObjectEnumerator;
          v88 = [reverseObjectEnumerator countByEnumeratingWithState:&v94 objects:v114 count:16];
          if (v88)
          {
            v92 = 0;
            v7 = 0;
            v86 = *v95;
            do
            {
              v8 = 0;
              v9 = v7;
              do
              {
                if (*v95 != v86)
                {
                  objc_enumerationMutation(v83);
                }

                v10 = *(*(&v94 + 1) + 8 * v8);
                v11 = [v10 objectForKeyedSubscript:@"imageIndex"];
                intValue = [v11 intValue];

                v13 = [v10 objectForKeyedSubscript:@"imageOffset"];
                longLongValue = [v13 longLongValue];

                v15 = [(NSArray *)selfCopy->_usedImages objectAtIndex:intValue];
                v16 = [v15 objectForKeyedSubscript:@"base"];
                longLongValue2 = [v16 longLongValue];

                v18 = [qword_100054120 alloc];
                v19 = [v15 objectForKeyedSubscript:@"name"];
                v20 = [NSUUID alloc];
                v90 = [v15 objectForKeyedSubscript:@"uuid"];
                v21 = [v20 initWithUUIDString:?];
                v22 = [NSNumber numberWithUnsignedLongLong:&longLongValue[longLongValue2]];
                v23 = [NSNumber numberWithUnsignedLongLong:longLongValue];
                if (v9)
                {
                  v113 = v9;
                  v24 = [NSArray arrayWithObjects:&v113 count:1];
                }

                else
                {
                  v24 = objc_opt_new();
                }

                v25 = v24;
                v26 = v19;
                v7 = [v18 initWithBinaryName:v19 binaryUUID:v21 address:v22 binaryOffset:v23 sampleCount:&off_10004D9E8 withDepth:v92 subFrameArray:v24];

                ++v92;
                v8 = v8 + 1;
                v9 = v7;
                selfCopy = v85;
              }

              while (v88 != v8);
              v88 = [v83 countByEnumeratingWithState:&v94 objects:v114 count:16];
            }

            while (v88);
          }

          else
          {
            v7 = 0;
          }

          v27 = [qword_100054118 alloc];
          if (v7)
          {
            v112 = v7;
            v28 = [NSArray arrayWithObjects:&v112 count:1];
          }

          else
          {
            v28 = objc_opt_new();
          }

          v29 = v28;
          v30 = [v79 objectForKeyedSubscript:@"triggered"];
          v31 = [v27 initWithTopCallStackFrames:v29 isAttributedThread:{objc_msgSend(v30, "BOOLValue")}];

          if (v31)
          {
            [v76 addObject:v31];
          }

          v3 = v81 + 1;
        }

        while ((v81 + 1) != v78);
        v78 = [(NSMutableArray *)obj countByEnumeratingWithState:&v98 objects:v115 count:16];
      }

      while (v78);
    }

    v32 = +[OSASystemConfiguration sharedInstance];
    v33 = [(NSDictionary *)selfCopy->_bundle_info objectForKeyedSubscript:kCFBundleVersionKey];
    v93 = [(NSDictionary *)selfCopy->_bundle_info objectForKeyedSubscript:@"CFBundleShortVersionString"];
    v34 = [qword_100054128 alloc];
    buildVersion = [v32 buildVersion];
    v89 = v32;
    modelCode = [v32 modelCode];
    v37 = &stru_1000463C0;
    v87 = v33;
    if (v33)
    {
      v38 = v33;
    }

    else
    {
      v38 = &stru_1000463C0;
    }

    v84 = [v34 initWithRegionFormat:&stru_1000463C0 osVersion:buildVersion deviceType:modelCode appBuildVersion:v38 bundleID:selfCopy->_bundle_id];

    v39 = qword_100054110;
    proc_id = selfCopy->_proc_id;
    v41 = selfCopy->_bundle_id;
    v80 = OBJC_IVAR___OSAReport__capture_time;
    v42 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&selfCopy->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time]];
    v91 = [v39 getSignpostDataforPid:proc_id forClient:v41 andEventTimestamp:v42];

    if (selfCopy->_exceptionReasonDetails)
    {
      v43 = [qword_100054158 alloc];
      v44 = [(NSDictionary *)selfCopy->_exceptionReasonDetails objectForKeyedSubscript:@"composed_message"];
      v45 = [(NSDictionary *)selfCopy->_exceptionReasonDetails objectForKeyedSubscript:@"format_string"];
      v46 = [(NSDictionary *)selfCopy->_exceptionReasonDetails objectForKeyedSubscript:@"arguments"];
      v47 = [(NSDictionary *)selfCopy->_exceptionReasonDetails objectForKeyedSubscript:@"type"];
      v48 = [(NSDictionary *)selfCopy->_exceptionReasonDetails objectForKeyedSubscript:@"class"];
      v49 = [(NSDictionary *)selfCopy->_exceptionReasonDetails objectForKeyedSubscript:@"name"];
      v50 = [v43 initWithComposedMessage:v44 formatString:v45 arguments:v46 type:v47 className:v48 exceptionName:v49];

      selfCopy = v85;
      v37 = &stru_1000463C0;
    }

    else
    {
      v50 = 0;
    }

    v55 = [qword_100054138 alloc];
    v56 = selfCopy->_proc_id;
    mxTerminationReason = selfCopy->_mxTerminationReason;
    vmregion_info = selfCopy->_vmregion_info;
    if (v93)
    {
      v37 = v93;
    }

    v59 = [NSNumber numberWithInt:selfCopy->_exceptionType];
    v60 = [NSNumber numberWithLongLong:*selfCopy->_exceptionCode];
    v61 = [NSNumber numberWithInt:selfCopy->_signal];
    v62 = [[qword_100054130 alloc] initWithThreadArray:v76 aggregatedByProcess:0];
    v82 = v50;
    v63 = [v55 initWithMetaData:v84 applicationVersion:v37 signpostData:v91 pid:v56 terminationReason:mxTerminationReason applicationSpecificInfo:0 virtualMemoryRegionInfo:vmregion_info exceptionType:v59 exceptionCode:v60 exceptionReason:v50 signal:v61 stackTrace:v62];

    v64 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    if (v63)
    {
      v66 = v87;
      v65 = v89;
      if (v64)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "sending MXCrashDiagnostic to MetricKit", buf, 2u);
      }

      sharedManager = [qword_100054148 sharedManager];
      v110 = v73;
      v68 = [qword_100054140 alloc];
      v108 = @"crashDiagnostic";
      v109 = v63;
      v69 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      v70 = [v68 initPayloadDataWithDiagnostics:v69];
      v111 = v70;
      v71 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
      v72 = [NSDate dateWithTimeIntervalSinceReferenceDate:*&v85->OSAReport_opaque[v80]];
      [sharedManager sendDiagnostic:v71 forDate:v72 andSourceID:5];
    }

    else
    {
      v66 = v87;
      v65 = v89;
      if (v64)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "failed to create MXCrashDiagnostic", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v103 = v73;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%{public}@ is not a MetricKit client", buf, 0xCu);
  }

LABEL_63:
}

- (void)donateToBiome
{
  if (objc_opt_class() && objc_opt_class() && objc_opt_class() && ![(OSACrashReport *)self isSimulated]&& [(OSACrashReport *)self exceptionType]!= 11)
  {
    decode_exceptionCodes = [(OSACrashReport *)self decode_exceptionCodes];
    v3 = [BMProcessCrashException alloc];
    v4 = [decode_exceptionCodes objectForKeyedSubscript:@"codes"];
    v5 = [decode_exceptionCodes objectForKeyedSubscript:@"type"];
    v6 = [decode_exceptionCodes objectForKeyedSubscript:@"signal"];
    v7 = [decode_exceptionCodes objectForKeyedSubscript:@"subtype"];
    v27 = [v3 initWithCodes:v4 type:v5 signal:v6 subtype:v7];

    v8 = [BMProcessCrashTerminationReason alloc];
    terminationReasonExceptionCode = [(OSACrashReport *)self terminationReasonExceptionCode];
    decode_reasonNamespace = [(OSACrashReport *)self decode_reasonNamespace];
    v28 = [v8 initWithCode:terminationReasonExceptionCode namespaceName:decode_reasonNamespace];

    v26 = [BMProcessCrash alloc];
    incidentID = [(OSACrashReport *)self incidentID];
    procName = [(OSACrashReport *)self procName];
    bundle_id = [(OSACrashReport *)self bundle_id];
    short_vers = [(OSACrashReport *)self short_vers];
    bundleVersion = self->_bundleVersion;
    responsibleProc = [(OSACrashReport *)self responsibleProc];
    coalitionName = [(OSACrashReport *)self coalitionName];
    v18 = [NSNumber numberWithBool:self->_is_first_party];
    v19 = [NSNumber numberWithBool:self->_is_beta];
    v20 = [v26 initWithIncidentID:incidentID processName:procName bundleID:bundle_id appVersion:short_vers bundleVersion:bundleVersion exception:v27 terminationReason:v28 responsibleApp:responsibleProc coalitionName:coalitionName isFirstParty:v18 isBeta:v19];

    v21 = BiomeLibrary();
    oSAnalytics = [v21 OSAnalytics];
    stability = [oSAnalytics Stability];
    crash = [stability Crash];
    source = [crash source];
    [source sendEvent:v20];
  }
}

- (id)terminationReasonExceptionCode
{
  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot)
  {
    v4 = [NSString stringWithFormat:@"0x%llx", exit_snapshot->ers_code];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addFieldsToCrashEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  if (sub_100005D54())
  {
    isa = Bool._bridgeToObjectiveC()().super.super.isa;
    [eventCopy __swift_setObject:isa forKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

- (void)sendToCoreAnalyticsWithDidWriteReport:(BOOL)report
{
  selfCopy = self;
  sub_10000DDA4();
  sub_10000E718(report);
}

- (void)updateCrashHistory
{
  selfCopy = self;
  sub_10000E8FC();
}

- (void)dealloc
{
  exceptionCode = self->_exceptionCode;
  if (exceptionCode)
  {
    free(exceptionCode);
  }

  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot)
  {
    free(exit_snapshot);
  }

  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    free(exit_payload);
  }

  [(OSACrashReport *)self stashStatus:0 note:0];
  v6.receiver = self;
  v6.super_class = OSACrashReport;
  [(OSACrashReport *)&v6 dealloc];
}

- (void)stashStatus:(id)status note:(id)note
{
  statusCopy = status;
  noteCopy = note;
  pthread_mutex_lock(&stru_100053928);
  v8 = qword_100054098;
  if (!qword_100054098)
  {
    v9 = objc_opt_new();
    v10 = qword_100054098;
    qword_100054098 = v9;

    v8 = qword_100054098;
  }

  v11 = [NSNumber numberWithInt:self->_proc_id];
  v12 = [v8 objectForKeyedSubscript:v11];

  if (!v12)
  {
    v12 = objc_opt_new();
    v13 = qword_100054098;
    v14 = [NSNumber numberWithInt:self->_proc_id];
    objc_msgSend_setObject_forKeyedSubscript_(v13);
  }

  if (statusCopy | noteCopy)
  {
    v15 = [v12 objectForKeyedSubscript:@"process"];
    if (!v15)
    {
      procName = self->_procName;
      if (!procName)
      {
        procName = @"<unknown>";
      }

      if (self->_is_full_corpse)
      {
        v17 = @"CORPSE";
      }

      else if (self->_is_lightweight_corpse)
      {
        v17 = @"LWCORPSE";
      }

      else
      {
        v17 = @"OTHER?";
      }

      v15 = [NSString stringWithFormat:@"Pid %d '%@' %@", self->_proc_id, procName, v17];
      objc_msgSend_setObject_forKeyedSubscript_(v12);
    }

    if (statusCopy)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v12);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
      {
        *buf = 138543618;
        v47 = v15;
        v48 = 2114;
        v49 = statusCopy;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "osa_update: %{public}@: %{public}@", buf, 0x16u);
      }
    }

    if (noteCopy)
    {
      v21 = [v12 objectForKeyedSubscript:@"notes"];
      if (!v21)
      {
        v21 = objc_opt_new();
        objc_msgSend_setObject_forKeyedSubscript_(v12);
      }

      [v21 addObject:noteCopy];
    }
  }

  else
  {
    ++dword_1000540A8;
    v18 = [v12 objectForKeyedSubscript:@"process"];
    if (v18)
    {
      objc_storeStrong(&qword_1000540A0, v18);
    }

    v19 = qword_100054098;
    v20 = [NSNumber numberWithInt:self->_proc_id];
    [v19 removeObjectForKey:v20];
  }

  if (qword_1000540B0 || (qword_1000540B8 = 2 * vm_page_size, (qword_1000540B0 = malloc_type_malloc(2 * vm_page_size, 0x49562147uLL)) != 0))
  {
    v37 = v12;
    v38 = noteCopy;
    v39 = statusCopy;
    v22 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = qword_100054098;
    v23 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v42;
      do
      {
        for (i = 0; i != v24; i = i + 1)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v27 = [qword_100054098 objectForKeyedSubscript:*(*(&v41 + 1) + 8 * i)];
          v28 = [v27 objectForKeyedSubscript:@"process"];
          v29 = [v27 objectForKeyedSubscript:@"status"];
          v30 = &stru_1000463C0;
          if (v29)
          {
            v30 = v29;
          }

          v31 = [NSString stringWithFormat:@"%@: %@", v28, v30];
          [v22 addObject:v31];

          v32 = [v27 objectForKeyedSubscript:@"notes"];
          if (v32)
          {
            [v22 addObjectsFromArray:v32];
          }
        }

        v24 = [obj countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v24);
    }

    if (qword_1000540A0)
    {
      qword_1000540A0 = [NSString stringWithFormat:@"Completed %u, Recent: %@", dword_1000540A8, qword_1000540A0];
      [v22 addObject:qword_1000540A0];
    }

    v34 = [v22 componentsJoinedByString:@"\n"];
    v35 = qword_1000540B0;
    uTF8String = [v34 UTF8String];
    strlcpy(v35, uTF8String, qword_1000540B8);
    noteCopy = v38;
    statusCopy = v39;
    v12 = v37;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10002FFC0();
    }

    qword_100053F30 = qword_1000540B0;
  }

  pthread_mutex_unlock(&stru_100053928);
}

- (OSACrashReport)initWithTask:(unsigned int)task exceptionType:(int)type thread:(unsigned int)thread threadId:(unint64_t)id threadStateFlavor:(int)flavor threadState:(unsigned int)state[1296] threadStateCount:(unsigned int)count
{
  v12 = *&thread;
  v40.receiver = self;
  v40.super_class = OSACrashReport;
  v15 = [(OSACrashReport *)&v40 init];
  if (v15)
  {
    *&v15->OSAReport_opaque[OBJC_IVAR___OSAReport__capture_time] = CFAbsoluteTimeGetCurrent();
    info = 0;
    if (!mach_timebase_info(&info) && info.denom)
    {
      LODWORD(v16) = info.numer;
      v17 = v16 * 0.000000001 / info.denom;
      v15->_awakeSystemUptime = (v17 * mach_absolute_time());
    }

    v15->_device_lock_state = MKBGetDeviceLockState();
    v15->_device_unlocked_since_boot = MKBDeviceUnlockedSinceBoot();
    v15->_is_full_corpse = 0;
    v15->_is_lightweight_corpse = 0;
    v15->_task = task;
    v15->_is_driverkit = CSTaskIsDriverKit();
    v18 = objc_alloc_init(OSAExclaveContainer);
    exclaveContainer = v15->_exclaveContainer;
    v15->_exclaveContainer = v18;

    v15->_threadPortOriginal = v12;
    v15->_threadId = id;
    v15->_crashedThreadNumber = -1;
    v15->_threadStateFlavor = flavor;
    v15->_threadStateCount = count;
    if (state && count)
    {
      memcpy(v15->_threadState, state, 4 * count);
    }

    v20 = objc_opt_new();
    threadPortPedigree = v15->_threadPortPedigree;
    v15->_threadPortPedigree = v20;

    v22 = v15->_threadPortPedigree;
    if (v12 && id == -1)
    {
      [NSString stringWithFormat:@"init mach STANDARD 0x%x ID(0x%llX)", v12, -1];
    }

    else if (id == -1)
    {
      [NSString stringWithFormat:@"init mach UNEXPECTED 0x%x ID(0x%llX)", v12, -1];
    }

    else
    {
      [NSString stringWithFormat:@"init mach PROTECTED 0x%x ID(0x%llX)", v12, id];
    }
    v23 = ;
    [(NSMutableArray *)v22 addObject:v23];

    v15->_exceptionType = type;
    v24 = objc_opt_new();
    applicationSpecificInfo = v15->_applicationSpecificInfo;
    v15->_applicationSpecificInfo = v24;

    v26 = objc_opt_new();
    applicationSpecificInfoFullSensitive = v15->_applicationSpecificInfoFullSensitive;
    v15->_applicationSpecificInfoFullSensitive = v26;

    v28 = objc_opt_new();
    applicationSpecificInfoRedacted = v15->_applicationSpecificInfoRedacted;
    v15->_applicationSpecificInfoRedacted = v28;

    v30 = objc_opt_new();
    asiFormattedSafe = v15->_asiFormattedSafe;
    v15->_asiFormattedSafe = v30;

    v32 = objc_opt_new();
    asiFormattedInternal = v15->_asiFormattedInternal;
    v15->_asiFormattedInternal = v32;

    v34 = objc_opt_new();
    asiFormattedFiltered = v15->_asiFormattedFiltered;
    v15->_asiFormattedFiltered = v34;

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100010BA8;
    block[3] = &unk_100045258;
    v38 = v15;
    if (qword_1000540C0 != -1)
    {
      dispatch_once(&qword_1000540C0, block);
    }
  }

  return v15;
}

- (void)unpackExceptionCodes
{
  exceptionCode = self->_exceptionCode;
  v3 = *exceptionCode;
  v4 = (*exceptionCode >> 20) & 0xF;
  if (v4)
  {
    self->_exceptionType = v4;
  }

  self->_signal = BYTE3(v3);
  *exceptionCode = v3 & 0xFFFFF;
}

- (void)_extractRosettaRuntimeInfo:(_CSTypeRef)info withBlock:(id)block
{
  blockCopy = block;
  if (&_rosetta_get_runtime_location)
  {
    v6 = [NSString stringWithUTF8String:rosetta_get_runtime_location()];
    v7 = blockCopy;
    v5 = v6;
    CSSymbolicatorForeachSymbolOwnerAtTime();
  }
}

- (void)_extractWorkQueueLimitsFromData:(proc_workqueueinfo *)data
{
  if ((data->pwq_state & 3) != 0)
  {
    v13 = v3;
    v14 = v4;
    v7 = [[NSMutableDictionary alloc] initWithCapacity:2];
    pwq_state = data->pwq_state;
    if (pwq_state)
    {
      v12 = 0;
      v11 = 4;
      sysctlbyname("kern.wq_max_constrained_threads", &v12, &v11, 0, 0);
      v9 = [NSNumber numberWithUnsignedInt:v12];
      objc_msgSend_setObject_forKeyedSubscript_(v7);

      pwq_state = data->pwq_state;
    }

    if ((pwq_state & 2) != 0)
    {
      v12 = 0;
      v11 = 4;
      sysctlbyname("kern.wq_max_threads", &v12, &v11, 0, 0);
      v10 = [NSNumber numberWithUnsignedInt:v12];
      objc_msgSend_setObject_forKeyedSubscript_(v7);
    }

    if ([v7 count])
    {
      objc_storeStrong(&self->_workQueueLimits, v7);
    }
  }
}

- (void)extractThreadStateInfo:(unsigned int)info
{
  v3 = *&info;
  self->_pageinStateCount = 1;
  state = thread_get_state(info, 27, self->_pageinState, &self->_pageinStateCount);
  if (state)
  {
    v6 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    v7 = [NSString stringWithFormat:@"thread_get_state(PAGEIN) returned 0x%x: %s", state, mach_error_string(state)];
    [v6 addObject:v7];

    self->_pageinStateCount = 0;
  }

  self->_exceptionStateCount = 4;
  v8 = thread_get_state(v3, 7, self->_exceptionState, &self->_exceptionStateCount);
  if (v8)
  {
    v9 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    v10 = [NSString stringWithFormat:@"thread_get_state(EXCEPTION) returned 0x%x: %s", v8, mach_error_string(v8)];
    [v9 addObject:v10];

    self->_exceptionStateCount = 0;
  }

  threadStateCount = self->_threadStateCount;
  if (self->_threadPortOriginal != v3 || !threadStateCount)
  {
    threadPortPedigree = self->_threadPortPedigree;
    threadStateCount = [NSString stringWithFormat:@"getState(0x%x, flavor %d) count %d", v3, self->_threadStateFlavor, threadStateCount];
    [(NSMutableArray *)threadPortPedigree addObject:threadStateCount];

    self->_threadStateCount = 1296;
    v14 = thread_get_state(v3, self->_threadStateFlavor, self->_threadState, &self->_threadStateCount);
    if (v14)
    {
      v15 = OBJC_IVAR___OSAReport__notes;
      v16 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
      v17 = [NSString stringWithFormat:@"thread_get_state(FLAVOR) returned 0x%x: %s", v14, mach_error_string(v14)];
      [v16 addObject:v17];

      *object_addr = 0;
      v18 = mach_port_kernel_object(mach_task_self_, v3, &object_addr[1], object_addr);
      v19 = self->_threadPortPedigree;
      v20 = [NSString stringWithFormat:@"object check returned 0x%x (%s) type %u (expected 1)", v18, mach_error_string(v18), object_addr[1]];
      [(NSMutableArray *)v19 addObject:v20];

      v21 = +[OSASystemConfiguration sharedInstance];
      LODWORD(v19) = [v21 appleInternal];

      if (v19)
      {
        [*&self->OSAReport_opaque[v15] addObjectsFromArray:self->_threadPortPedigree];
      }

      self->_threadStateFlavor = 5;
      self->_threadStateCount = 0;
    }
  }
}

- (id)pathFromPid:(int)pid
{
  bzero(buffer, 0x400uLL);
  v4 = proc_pidpath(pid, buffer, 0x400u);
  if (v4 >= 1)
  {
    buffer[v4] = 0;
LABEL_4:
    v5 = [NSString stringWithUTF8String:buffer];
    goto LABEL_5;
  }

  if (v4)
  {
    goto LABEL_4;
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (id)nameFromPid:(int)pid
{
  bzero(buffer, 0x400uLL);
  v4 = proc_name(pid, buffer, 0x400u);
  v5 = v4;
  if (v4 >= 1)
  {
    buffer[v4] = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "<error>";
    v9[0] = 67109634;
    v9[1] = pid;
    if (v5 > 0)
    {
      v6 = buffer;
    }

    v10 = 1024;
    v11 = v5;
    v12 = 2080;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "proc_name(%d) = [%d] %s", v9, 0x18u);
  }

  if (v5 < 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [NSString stringWithUTF8String:buffer];
  }

  return v7;
}

- (_CSTypeRef)_getSymbolicator:(BOOL)symbolicator
{
  if (symbolicator)
  {
    CSSymbolicatorGetFlagsForNoSymbolOrSourceInfoData();
  }

  v4 = CSSymbolicatorCreateWithTaskFlagsAndNotification();
  v6 = v5;
  if (CSIsNull())
  {
    if (_dyld_process_info_create())
    {
      _dyld_process_info_release();
    }

    v7 = OBJC_IVAR___OSAReport__notes;
    v8 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    v9 = [NSString stringWithFormat:@"Corpse is incomplete (_dyld_process_info_create failed with %d)", 5];
    [v8 addObject:v9];

    [*&self->OSAReport_opaque[v7] addObject:{@"Backtraces may be be unvailable or truncated to only leaf frames, and the binary image list may not be available"}];
  }

  v10 = v4;
  v11 = v6;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (void)dumpProgramCounterBytes
{
  data = 0;
  dataCnt = 0;
  v28 = 0;
  v29 = 0;
  threadStateDecoded = self->_threadStateDecoded;
  if (!threadStateDecoded || ([(NSDictionary *)threadStateDecoded objectForKeyedSubscript:@"pc"], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030244();
    }

    return;
  }

  v5 = [(NSDictionary *)self->_threadStateDecoded objectForKeyedSubscript:@"pc"];
  v6 = [v5 objectForKeyedSubscript:@"value"];
  unsignedLongValue = [v6 unsignedLongValue];

  if (unsignedLongValue <= 0xFC0000000 && unsignedLongValue >= vm_page_size)
  {
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    if ([(OSACrashReport *)self _regionInfoAtAddress:unsignedLongValue regionInfo:&v34 regionAddress:&v29 regionSize:&v28])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100030044();
      }

      return;
    }

    v11 = v29;
    v12 = &unsignedLongValue[-v29];
    if (unsignedLongValue < v29)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      *v33 = unsignedLongValue;
      v9 = "Crashing program counter 0x%llx was unmapped";
      goto LABEL_21;
    }

    if ((v34 & 4) == 0)
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      *buf = 134217984;
      *v33 = unsignedLongValue;
      v9 = "Crashing pc 0x%llx was not executable";
LABEL_21:
      v10 = buf;
      goto LABEL_22;
    }

    v14 = v29;
    v15 = v28;
    if (v34 == 7 || DWORD1(v35) == 64)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v33 = unsignedLongValue;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Crashing pc 0x%llx was JIT", buf, 0xCu);
      }

      v16 = 800;
    }

    else
    {
      v16 = 80;
    }

    v17 = v16 >> 1;
    v18 = &unsignedLongValue[-(v16 >> 1)];
    if ([OSACrashReport isAddress:v18 inRange:v11, v15])
    {
      v14 = &unsignedLongValue[-(v16 >> 1)];
      goto LABEL_36;
    }

    if ([(OSACrashReport *)self _regionInfoAtAddress:v18 regionInfo:&v34 regionAddress:&v29 regionSize:&v28])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_1000300C8();
      }

      goto LABEL_35;
    }

    if (v29 <= v18)
    {
      if ((v34 & 4) != 0)
      {
        v14 = &unsignedLongValue[-(v16 >> 1)];
LABEL_36:
        if ([OSACrashReport isAddress:v16 + v18 - 1 inRange:v11, v15])
        {
          goto LABEL_41;
        }

        if ([(OSACrashReport *)self _regionInfoAtAddress:v16 + v18 - 1 regionInfo:&v34 regionAddress:&v29 regionSize:&v28])
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_100030140();
          }

          goto LABEL_40;
        }

        if (v29 <= v16 + v18 - 1)
        {
          if ((v34 & 4) != 0)
          {
LABEL_41:
            v19 = mach_vm_read(self->_task, v14, v16, &data, &dataCnt);
            if (v19)
            {
              v20 = v19;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67109632;
                *v33 = v20;
                *&v33[4] = 2048;
                *&v33[6] = v16;
                *&v33[14] = 2048;
                *&v33[16] = v14;
                v9 = "Error %d reading 0x%zx bytes at 0x%llx from remote task";
                v10 = buf;
                v13 = 28;
                goto LABEL_23;
              }
            }

            else
            {
              if (v17 <= dataCnt)
              {
                v24 = [NSData dataWithBytes:data length:v17];
                pc_bytes_before = self->_pc_bytes_before;
                self->_pc_bytes_before = v24;

                v26 = [NSData dataWithBytes:data + v17 length:dataCnt - v17];
                pc_bytes = self->_pc_bytes;
                self->_pc_bytes = v26;
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_1000301B8();
              }

              mach_vm_deallocate(mach_task_self_, data, dataCnt);
            }

            return;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            *v33 = v29;
            *&v33[8] = 2048;
            *&v33[10] = v16 + v18 - 1;
            v23 = "region 0x%llx after crashing pc 0x%llx was not executable";
            goto LABEL_62;
          }
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          *v33 = v29;
          *&v33[8] = 2048;
          *&v33[10] = v16 + v18 - 1;
          v23 = "VM region 0x%llx after crashing pc 0x%llx was unmapped";
LABEL_62:
          _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v23, buf, 0x16u);
        }

LABEL_40:
        v16 = v15 + v11 - v14;
        goto LABEL_41;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *v33 = &unsignedLongValue[-(v16 >> 1)];
        v21 = "region before crashing pc 0x%llx was not executable";
        v22 = 12;
        goto LABEL_58;
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v33 = v29;
      *&v33[8] = 2048;
      *&v33[10] = &unsignedLongValue[-(v16 >> 1)];
      v21 = "VM region 0x%llx before crashing pc 0x%llx was unmapped";
      v22 = 22;
LABEL_58:
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
    }

LABEL_35:
    v17 = v12;
    goto LABEL_36;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v34) = 134217984;
    *(&v34 + 4) = unsignedLongValue;
    v9 = "Invalid crashing program counter 0x%llx could not be dumped";
    v10 = &v34;
LABEL_22:
    v13 = 12;
LABEL_23:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v9, v10, v13);
  }
}

- (void)autopsyLightweightCorpse:(unint64_t)corpse size:(unint64_t)size
{
  self->_is_lightweight_corpse = 1;
  self->_is_simulated = 1;
  v7 = +[NSMutableArray array];
  taskImages = self->_taskImages;
  self->_taskImages = v7;

  [(OSACrashReport *)self parseCorpse:corpse size:size];

  [(OSACrashReport *)self finishExtraction];
}

- (void)parseCorpse:(unint64_t)corpse size:(unint64_t)size
{
  v7 = objc_alloc_init(KcdataParser);
  v8 = 16504;
  kcdataParser = self->_kcdataParser;
  self->_kcdataParser = v7;

  memset(v177, 0, sizeof(v177));
  v10 = size + corpse;
  v11 = corpse + 16;
  if (corpse + 16 > size + corpse || v11 + *(corpse + 4) > v10)
  {
    goto LABEL_352;
  }

  v12 = *corpse;
  if ((*corpse & 0xFFFFFFF0) == 0x20)
  {
    v12 = 17;
  }

  if (v12 != 1178684999 && v12 != -559025833)
  {
LABEL_352:
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"invalid corpse info provided for EXC_CORPSE_NOTIFY"];
    v150 = 0;
    goto LABEL_353;
  }

  v172 = 0;
  v14 = 0;
  v173 = 0;
  key = XPC_COALITION_INFO_KEY_BUNDLE_IDENTIFIER;
  v170 = XPC_COALITION_INFO_KEY_NAME;
  v15 = &create_gcore_with_options_ptr;
  do
  {
    v16 = *(corpse + 4);
    if (v11 + v16 > v10 || *corpse == -242132755)
    {
      break;
    }

    if ((*corpse & 0xFFFFFFF0) == 0x20)
    {
      v17 = 17;
    }

    else
    {
      v17 = *corpse;
    }

    if (v17 > 2388)
    {
      if (v17 > 2814)
      {
        if (v17 == 2815)
        {
          if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
          {
            v86 = *(corpse + 16);
            if (v86)
            {
              [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"The backtrace is truncated"];
              if ((v86 & 2) != 0)
              {
                goto LABEL_310;
              }

LABEL_165:
              if ((v86 & 8) == 0)
              {
                goto LABEL_166;
              }

LABEL_311:
              [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"This crash report is incomplete"];
              if ((v86 & 4) == 0)
              {
                goto LABEL_342;
              }
            }

            else
            {
              if ((v86 & 2) == 0)
              {
                goto LABEL_165;
              }

LABEL_310:
              [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"The async backtrace is truncated"];
              if ((v86 & 8) != 0)
              {
                goto LABEL_311;
              }

LABEL_166:
              if ((v86 & 4) == 0)
              {
                goto LABEL_342;
              }
            }

            [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"This crash report may be incomplete because the faulting thread was terminated."];
            goto LABEL_342;
          }
        }

        else
        {
          if (v17 != 4097)
          {
            goto LABEL_138;
          }

          if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 20])
          {
            v28 = *corpse;
            if ((*corpse & 0xFFFFFFF0) == 0x20)
            {
              v28 = 17;
            }

            if (v28 <= 2309)
            {
              if (v28 == 17 || v28 == 19)
              {
                v29 = *(corpse + 4);
                goto LABEL_340;
              }

LABEL_334:
              v138 = *(corpse + 4);
              goto LABEL_338;
            }

            if (v28 == 2310)
            {
              v138 = *(corpse + 4);
              if (v138 != 112)
              {
                goto LABEL_338;
              }

              if ((*(corpse + 8) & 0x8F) != 0)
              {
                v138 = 112;
                goto LABEL_338;
              }

              v29 = 104;
            }

            else
            {
              if (v28 != 2312)
              {
                goto LABEL_334;
              }

              v138 = *(corpse + 4);
              if (v138 != 32)
              {
LABEL_338:
                v79 = v138 >= (*(corpse + 8) & 0xFu);
                v29 = v138 - (*(corpse + 8) & 0xF);
                if (!v79)
                {
                  v29 = 0;
                }

                goto LABEL_340;
              }

              if ((*(corpse + 8) & 0x8F) != 0)
              {
                v138 = 32;
                goto LABEL_338;
              }

              v29 = 24;
            }

LABEL_340:
            self->_exit_snapshot_length = v29;
            v147 = malloc_type_malloc(v29, 0x327A0317uLL);
            self->_exit_snapshot = v147;
            if (v147)
            {
              memcpy(v147, (corpse + 16), self->_exit_snapshot_length);
            }

            goto LABEL_342;
          }
        }
      }

      else
      {
        switch(v17)
        {
          case 2561:
LABEL_23:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
            {
              break;
            }

            self->_proc_id = *(corpse + 16);
            v20 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
            if (v20)
            {
              proc_id = self->_proc_id;
              *buf = 67109120;
              *&buf[4] = proc_id;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Parsing corpse data for pid %d", buf, 8u);
            }

            v22 = sub_100003790(v20);
            if (os_signpost_enabled(v22))
            {
              v23 = self->_proc_id;
              *buf = 67109120;
              *&buf[4] = v23;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CorpseReceived", "pid %d enableTelemetry=YES ", buf, 8u);
            }

LABEL_206:

LABEL_321:
            v15 = &create_gcore_with_options_ptr;
            break;
          case 2562:
LABEL_125:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
            {
              break;
            }

            v60 = *(corpse + 16);
            v61 = 15776;
            goto LABEL_214;
          case 2563:
LABEL_134:
            if (self->_procName)
            {
              goto LABEL_342;
            }

            v175[0] = 0;
            v175[1] = 0;
            v176 = 0;
            v139 = __memcpy_chk();
            v140 = sub_100003790(v139);
            if (os_signpost_enabled(v140))
            {
              v141 = self->_proc_id;
              *buf = 136446466;
              *&buf[4] = v175;
              *&buf[12] = 1024;
              *&buf[14] = v141;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v140, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CorpseReceived", "process: %{public}s [pid %d] enableTelemetry=YES ", buf, 0x12u);
            }

            v142 = [NSString stringWithUTF8String:v175];
            procName = self->_procName;
            self->_procName = v142;

            [(OSACrashReport *)self stashStatus:@"Parsing KCData" note:0];
            goto LABEL_321;
          case 2564:
LABEL_112:
            if (v17 == 2312)
            {
              if (v16 == 32)
              {
                v59 = *(corpse + 8);
                if ((v59 & 0x8F) != 0)
                {
                  goto LABEL_236;
                }

                goto LABEL_290;
              }
            }

            else if (v17 == 2310 && v16 == 112)
            {
              v59 = *(corpse + 8);
              if ((v59 & 0x8F) == 0)
              {
                goto LABEL_241;
              }

LABEL_236:
              v59 = *(corpse + 8);
LABEL_238:
              if (v17 != 2312)
              {
                if (v17 == 2310 && v16 == 112)
                {
LABEL_241:
                  if ((v59 & 0x8F) == 0)
                  {
                    v120 = 103;
LABEL_294:
                    *(corpse + 16 + v120) = 0;
                    v133 = [NSString stringWithUTF8String:?];
                    procPath = self->_procPath;
                    self->_procPath = v133;

                    lastPathComponent = [(NSString *)self->_procPath lastPathComponent];
                    if ([lastPathComponent length])
                    {
                      objc_storeStrong(&self->_procName, lastPathComponent);
                    }

                    v15 = &create_gcore_with_options_ptr;
                    break;
                  }
                }

                goto LABEL_291;
              }

              if (v16 != 32)
              {
                goto LABEL_291;
              }

LABEL_290:
              if ((v59 & 0x8F) == 0)
              {
                v120 = 23;
                goto LABEL_294;
              }

LABEL_291:
              v131 = v59 & 0xF;
              v79 = v16 >= v131;
              v132 = v16 - v131;
              if (!v79)
              {
                v132 = 0;
              }

              v120 = (v132 - 1);
              goto LABEL_294;
            }

            v59 = *(corpse + 8);
            if (v16 > (*(corpse + 8) & 0xFu))
            {
              goto LABEL_238;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "proc path string is NULL or malformed", buf, 2u);
            }

            break;
          case 2565:
LABEL_117:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
            {
              break;
            }

            v60 = *(corpse + 16);
            v61 = 15780;
            goto LABEL_214;
          case 2566:
          case 2573:
          case 2574:
            break;
          case 2567:
LABEL_132:
            if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
            {
              v72 = *(corpse + 16);
              self->_is64Bit = (v72 & 4) != 0;
              v73 = 16184;
              v74 = (v72 >> 17) & 1;
LABEL_193:
              self->OSAReport_opaque[v73] = v74;
            }

            break;
          case 2568:
LABEL_123:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
            {
              break;
            }

            v60 = *(corpse + 16);
            v61 = 96;
            goto LABEL_214;
          case 2569:
LABEL_127:
            if (v17 == 2312)
            {
              if (v16 == 32)
              {
                v70 = *(corpse + 8);
                if ((v70 & 0x8F) == 0)
                {
                  v71 = 3;
                  goto LABEL_250;
                }
              }
            }

            else if (v17 == 2310 && v16 == 112)
            {
              v70 = *(corpse + 8);
              if ((v70 & 0x8F) == 0)
              {
                v71 = 13;
                goto LABEL_250;
              }
            }

            v70 = *(corpse + 8);
            v79 = v16 >= (v70 & 0xFu);
            v121 = v16 - (v70 & 0xF);
            if (!v79)
            {
              v121 = 0;
            }

            v71 = v121 >> 3;
LABEL_250:
            self->_exceptionCodeCount = v71;
            v122 = *corpse;
            if ((*corpse & 0xFFFFFFF0) == 0x20)
            {
              v122 = 17;
            }

            if (v122 <= 2309)
            {
              if (v122 == 17 || v122 == 19)
              {
                v123 = *(corpse + 4);
                goto LABEL_267;
              }

LABEL_261:
              v124 = *(corpse + 4);
              goto LABEL_265;
            }

            if (v122 == 2310)
            {
              v124 = *(corpse + 4);
              if (v124 == 112)
              {
                if ((v70 & 0x8F) == 0)
                {
                  v123 = 104;
                  goto LABEL_267;
                }

                v124 = 112;
              }
            }

            else
            {
              if (v122 != 2312)
              {
                goto LABEL_261;
              }

              v124 = *(corpse + 4);
              if (v124 == 32)
              {
                if ((v70 & 0x8F) == 0)
                {
                  v123 = 24;
                  goto LABEL_267;
                }

                v124 = 32;
              }
            }

LABEL_265:
            v125 = v70 & 0xF;
            v79 = v124 >= v125;
            v123 = v124 - v125;
            if (!v79)
            {
              v123 = 0;
            }

LABEL_267:
            if (v123 <= 0x10)
            {
              v126 = 16;
            }

            else
            {
              v126 = v123;
            }

            v127 = malloc_type_calloc(1uLL, v126, 0xE0F37035uLL);
            self->_exceptionCode = v127;
            v128 = *corpse;
            if ((*corpse & 0xFFFFFFF0) == 0x20)
            {
              v128 = 17;
            }

            if (v128 <= 2309)
            {
              if (v128 == 17 || v128 == 19)
              {
                v129 = *(corpse + 4);
                goto LABEL_287;
              }

LABEL_281:
              v130 = *(corpse + 4);
              goto LABEL_285;
            }

            if (v128 == 2310)
            {
              v130 = *(corpse + 4);
              if (v130 == 112)
              {
                if ((*(corpse + 8) & 0x8F) == 0)
                {
                  v129 = 104;
                  goto LABEL_287;
                }

                v130 = 112;
              }
            }

            else
            {
              if (v128 != 2312)
              {
                goto LABEL_281;
              }

              v130 = *(corpse + 4);
              if (v130 == 32)
              {
                if ((*(corpse + 8) & 0x8F) == 0)
                {
                  v129 = 24;
                  goto LABEL_287;
                }

                v130 = 32;
              }
            }

LABEL_285:
            v79 = v130 >= (*(corpse + 8) & 0xFu);
            v129 = v130 - (*(corpse + 8) & 0xF);
            if (!v79)
            {
              v129 = 0;
            }

LABEL_287:
            memcpy(v127, (corpse + 16), v129);
            if ((self->_exceptionType - 11) >= 2)
            {
              [(OSACrashReport *)self unpackExceptionCodes];
            }

            break;
          case 2570:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
            {
              break;
            }

            v60 = *(corpse + 16);
            v61 = 0x4000;
            goto LABEL_214;
          case 2571:
LABEL_119:
            if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 96])
            {
              memset(&buf[64], 0, 32);
              memset(&buf[32], 0, 32);
              *&buf[16] = 0u;
              v62 = *(corpse + 16);
              v63 = *(corpse + 32);
              v64 = *(corpse + 48);
              v65 = *(corpse + 64);
              v66 = *(corpse + 96);
              *&buf[64] = *(corpse + 80);
              *&buf[80] = v66;
              *&buf[32] = v64;
              *&buf[48] = v65;
              *buf = v62;
              *&buf[16] = v63;
              uuid_unparse_lower(buf, self->_slice_uuid);
              *&self->_proc_start_abstime = *&buf[80];
            }

            break;
          case 2572:
          case 2575:
          case 2576:
          case 2577:
          case 2578:
          case 2579:
          case 2580:
          case 2581:
          case 2582:
          case 2583:
          case 2584:
          case 2585:
          case 2586:
          case 2587:
          case 2588:
          case 2589:
          case 2590:
          case 2591:
          case 2596:
          case 2597:
          case 2598:
          case 2599:
            goto LABEL_138;
          case 2592:
LABEL_121:
            if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 8])
            {
              v67 = *(corpse + 16);
              self->_threadId = v67;
              threadPortPedigree = self->_threadPortPedigree;
              v69 = [NSString stringWithFormat:@"override via KCDATA ID(0x%llX)", v67];
              [(NSMutableArray *)threadPortPedigree addObject:v69];
            }

            break;
          case 2593:
            v79 = v16 >= (*(corpse + 8) & 0xFu);
            v80 = v16 - (*(corpse + 8) & 0xF);
            if (v80 != 0 && v79)
            {
              if (!v79)
              {
                v80 = 0;
              }

              *(corpse + 16 + (v80 - 1)) = 0;
              if (*(corpse + 16))
              {
                v81 = [NSString stringWithUTF8String:?];
                v82 = OSASanitizePath();

                v173 = v82;
              }
            }

            break;
          case 2594:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 8])
            {
              break;
            }

            v77 = *(corpse + 16);
            v78 = HIDWORD(v77);
            if (HIDWORD(v77) < 0x511)
            {
              self->_threadStateFlavor = v77;
              v137 = 5364;
              goto LABEL_308;
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_342;
            }

            *buf = 67109376;
            *&buf[4] = v78;
            *&buf[8] = 2048;
            *&buf[10] = 5184;
            v27 = "Unexpected count for TASK_BTINFO_THREAD_STATE %u > %lu";
            goto LABEL_305;
          case 2595:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 8])
            {
              break;
            }

            v78 = HIDWORD(*(corpse + 16));
            if (v78 < 0x511)
            {
              v137 = 15748;
LABEL_308:
              *&self->OSAReport_opaque[v137] = v78;
              goto LABEL_342;
            }

            if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_342;
            }

            *buf = 67109376;
            *&buf[4] = v78;
            *&buf[8] = 2048;
            *&buf[10] = 5184;
            v27 = "Unexpected count for TASK_BTINFO_THREAD_EXCEPTION_STATE %u > %lu";
            goto LABEL_305;
          case 2600:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
            {
              break;
            }

            v60 = *(corpse + 16);
            v61 = 16124;
LABEL_214:
            *&self->OSAReport_opaque[v61] = v60;
            break;
          case 2601:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 24])
            {
              break;
            }

            v85 = *(corpse + 36);
            *&v177[0] = *(corpse + 16);
            *(&v177[1] + 1) = v85;
            v84 = *(corpse + 20);
            goto LABEL_159;
          case 2602:
            if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 32])
            {
              break;
            }

            v83 = *(corpse + 40);
            *&v177[0] = *(corpse + 16);
            *(&v177[1] + 1) = v83;
            v84 = *(corpse + 24);
LABEL_159:
            *(v177 + 8) = v84;
            break;
          default:
            if (v17 != 2389)
            {
              goto LABEL_138;
            }

            v75 = [v15[451] numberWithUnsignedLongLong:*(corpse + 16)];
            v76 = [v15[451] numberWithUnsignedLongLong:*(corpse + 24)];
            [(OSAExclaveContainer *)self->_exclaveContainer setThreadId:v76 withScId:v75];

            break;
        }
      }
    }

    else
    {
      if (v17 <= 18)
      {
        if ((v17 - 1) < 3 || v17 == -559025833)
        {
          goto LABEL_343;
        }

        if (v17 == 17)
        {
          v25 = *(corpse + 8);
          if (SHIDWORD(v25) > 2074)
          {
            if (HIDWORD(v25) == 2572 || HIDWORD(v25) == 2075)
            {
              if (v25)
              {
                if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 8])
                {
                  v114 = *(corpse + 16);
                  self->_coalition_id = v114;
                  if (v114)
                  {
                    v115 = xpc_coalition_copy_info();
                    v116 = v115;
                    if (v115)
                    {
                      if (xpc_get_type(v115) == &_xpc_type_dictionary)
                      {
                        string = xpc_dictionary_get_string(v116, key);
                        if (string || (string = xpc_dictionary_get_string(v116, v170)) != 0)
                        {
                          v118 = [NSString stringWithUTF8String:string];
                          coalition_name = self->_coalition_name;
                          self->_coalition_name = v118;
                        }
                      }
                    }

                    v15 = &create_gcore_with_options_ptr;
                    goto LABEL_343;
                  }
                }
              }

              goto LABEL_342;
            }
          }

          else
          {
            if (HIDWORD(v25) == 48)
            {
              if (v16 / 0x14 >= v25)
              {
                if (v25)
                {
                  v144 = v8;
                  v25 = v25;
                  v146 = corpse + 20;
                  do
                  {
                    [(NSMutableArray *)self->_taskImages addImage:v146 address:*(v146 - 4) size:0];
                    v146 += 20;
                    --v25;
                  }

                  while (v25);
                  goto LABEL_330;
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v136 = sub_10000391C(corpse);
                *buf = 67109376;
                *&buf[4] = v25;
                *&buf[8] = 2048;
                *&buf[10] = v136 / 0x14uLL;
                v27 = "Unexpected count for TASK_BTINFO_DYLD_LOADINFO %u > %lu";
LABEL_305:
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, v27, buf, 0x12u);
              }

LABEL_342:
              v15 = &create_gcore_with_options_ptr;
              goto LABEL_343;
            }

            if (HIDWORD(v25) == 49)
            {
              if (v16 / 0x18 >= v25)
              {
                if (v25)
                {
                  v144 = v8;
                  v25 = v25;
                  v145 = corpse + 24;
                  do
                  {
                    [(NSMutableArray *)self->_taskImages addImage:v145 address:*(v145 - 8) size:0];
                    v145 += 24;
                    --v25;
                  }

                  while (v25);
LABEL_330:
                  v8 = v144;
                  v15 = &create_gcore_with_options_ptr;
                  goto LABEL_343;
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v26 = sub_10000391C(corpse);
                *buf = 67109376;
                *&buf[4] = v25;
                *&buf[8] = 2048;
                *&buf[10] = v26 / 0x18uLL;
                v27 = "Unexpected count for TASK_BTINFO_DYLD_LOADINFO64 %u > %lu";
                goto LABEL_305;
              }

              goto LABEL_342;
            }
          }

          if ((HIDWORD(v25) & 0xFFFFFFFE) == 0xA24)
          {
            if (v25 <= sub_10000391C(corpse) >> 3)
            {
              v14 = (corpse + 16);
              v172 = v25;
            }

            else
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                v149 = sub_10000391C(corpse);
                *buf = 67109376;
                *&buf[4] = v25;
                *&buf[8] = 2048;
                *&buf[10] = v149 >> 3;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unexpected count for TASK_BTINFO_BACKTRACE %u > %lu", buf, 0x12u);
              }

              v172 = 0;
            }
          }

          goto LABEL_342;
        }

LABEL_138:
        [*&self->OSAReport_opaque[v8] parseElement:? from:?];
        goto LABEL_343;
      }

      switch(v17)
      {
        case 2049:
        case 2051:
        case 2052:
        case 2055:
        case 2060:
        case 2061:
        case 2065:
        case 2067:
        case 2068:
        case 2073:
        case 2077:
          break;
        case 2050:
          if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 56])
          {
            break;
          }

          v18 = *(corpse + 32);
          v19 = 160;
          goto LABEL_211;
        case 2053:
          goto LABEL_23;
        case 2054:
          goto LABEL_125;
        case 2056:
          goto LABEL_119;
        case 2057:
          goto LABEL_134;
        case 2058:
        case 2070:
        case 2075:
        case 2076:
        case 2078:
        case 2079:
        case 2080:
        case 2081:
        case 2082:
        case 2083:
        case 2084:
        case 2085:
        case 2086:
        case 2087:
        case 2088:
        case 2089:
        case 2090:
        case 2091:
        case 2092:
        case 2093:
        case 2094:
        case 2095:
        case 2096:
        case 2097:
        case 2098:
        case 2099:
        case 2100:
        case 2101:
        case 2104:
          goto LABEL_138;
        case 2059:
          if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 16])
          {
            self->_proc_starttime = *(corpse + 16);
          }

          break;
        case 2062:
          goto LABEL_127;
        case 2063:
          goto LABEL_112;
        case 2064:
          if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
          {
            break;
          }

          v60 = *(corpse + 16);
          v61 = 152;
          goto LABEL_214;
        case 2066:
          goto LABEL_117;
        case 2069:
          goto LABEL_132;
        case 2071:
          if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 16])
          {
            *buf = *(corpse + 16);
            [(OSACrashReport *)self _extractWorkQueueLimitsFromData:buf];
          }

          break;
        case 2072:
          if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
          {
            self->_responsible_pid = *(corpse + 16);
            v87 = [(OSACrashReport *)self nameFromPid:?];
            responsibleProc = self->_responsibleProc;
            self->_responsibleProc = v87;
          }

          break;
        case 2074:
          goto LABEL_121;
        case 2102:
          if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 640])
          {
            break;
          }

          memset(buf, 0, 512);
          memcpy(buf, (corpse + 16), 0x280uLL);
          v22 = objc_opt_new();
          if (buf[0])
          {
            v102 = [NSString stringWithUTF8String:buf];
            [v22 addObject:v102];
          }

          if (buf[128])
          {
            v103 = [NSString stringWithUTF8String:&buf[128]];
            [v22 addObject:v103];
          }

          if (buf[256])
          {
            v104 = [NSString stringWithUTF8String:&buf[256]];
            [v22 addObject:v104];
          }

          if (buf[384])
          {
            v105 = [NSString stringWithUTF8String:&buf[384]];
            [v22 addObject:v105];
          }

          if (buf[512])
          {
            v106 = [NSString stringWithUTF8String:&buf[512]];
            [v22 addObject:v106];
          }

          v107 = [v22 componentsJoinedByString:&stru_1000463C0];
          ktriage_info = self->_ktriage_info;
          self->_ktriage_info = v107;

          goto LABEL_206;
        case 2103:
          if (![(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 4])
          {
            break;
          }

          LOBYTE(v74) = *(corpse + 16) != 0;
          v73 = 16376;
          goto LABEL_193;
        case 2105:
          v60 = *(corpse + 16);
          v61 = 16392;
          goto LABEL_214;
        case 2106:
          v60 = *(corpse + 16);
          v61 = 16396;
          if (v60 == 0x7FFFFFFF)
          {
            v60 = 0;
          }

          goto LABEL_214;
        case 2107:
          v79 = v16 >= (*(corpse + 8) & 0xFu);
          v97 = v16 - (*(corpse + 8) & 0xF);
          if (v79)
          {
            v98 = v97;
          }

          else
          {
            v98 = 0;
          }

          if (strnlen((corpse + 16), v98) >= v98)
          {
            break;
          }

          v99 = [NSString stringWithUTF8String:corpse + 16];
          v100 = 16488;
          goto LABEL_220;
        case 2108:
          v79 = v16 >= (*(corpse + 8) & 0xFu);
          v110 = v16 - (*(corpse + 8) & 0xF);
          if (v79)
          {
            v111 = v110;
          }

          else
          {
            v111 = 0;
          }

          if (strnlen((corpse + 16), v111) >= v111)
          {
            break;
          }

          v99 = [NSString stringWithUTF8String:corpse + 16];
          v100 = 16272;
LABEL_220:
          v112 = *&self->OSAReport_opaque[v100];
          *&self->OSAReport_opaque[v100] = v99;

          break;
        case 2109:
          v60 = *(corpse + 16);
          v61 = 16280;
          goto LABEL_214;
        case 2110:
          v60 = *(corpse + 16);
          v61 = 16284;
          goto LABEL_214;
        case 2111:
          goto LABEL_123;
        case 2112:
          v101 = *(corpse + 24);
          self->_jit_start_address = *(corpse + 16);
          self->_jit_end_address = v101;
          [(NSMutableArray *)self->_taskImages addJITImage:self->_jit_start_address size:v101 - self->_jit_start_address];
          break;
        case 2113:
          if ([(OSACrashReport *)self validKcdataItem:corpse min_size:v10, 520])
          {
            v168 = v8;
            if (!self->_mteTags)
            {
              v89 = [[NSMutableArray alloc] initWithCapacity:1024];
              mteTags = self->_mteTags;
              self->_mteTags = v89;
            }

            for (i = 24; i != 536; ++i)
            {
              v92 = *(corpse + i);
              v93 = self->_mteTags;
              v94 = [NSNumber numberWithInt:v92 & 0xF];
              [(NSMutableArray *)v93 addObject:v94];

              v95 = self->_mteTags;
              v96 = [NSNumber numberWithInt:v92 >> 4];
              [(NSMutableArray *)v95 addObject:v96];
            }

            v8 = v168;
            v15 = &create_gcore_with_options_ptr;
          }

          break;
        case 2114:
          v79 = v16 >= (*(corpse + 8) & 0xFu);
          v109 = v16 - (*(corpse + 8) & 0xF);
          if (!v79)
          {
            v109 = 0;
          }

          if (v109 < 8)
          {
            break;
          }

          v18 = *(corpse + 16);
          v19 = 16336;
LABEL_211:
          *&self->OSAReport_opaque[v19] = v18;
          break;
        default:
          if (v17 != 19)
          {
            if (v17 != 56)
            {
              goto LABEL_138;
            }

            v30 = (corpse + 16);
            v79 = v16 >= (*(corpse + 8) & 0xFu);
            LODWORD(v16) = v16 - (*(corpse + 8) & 0xF);
            if (v79)
            {
              v16 = v16;
            }

            else
            {
              v16 = 0;
            }

            v31 = v30 + v16;
            v32 = corpse + 32;
            if (corpse + 32 > v30 + v16)
            {
              goto LABEL_111;
            }

            v167 = v8;
            v169 = v30 + v16;
LABEL_55:
            v33 = v30[1];
            if (v32 + v33 > v31 || (v34 = *v30, *v30 == -242132755))
            {
LABEL_110:
              v8 = v167;
LABEL_111:
              v15 = &create_gcore_with_options_ptr;
              break;
            }

            if ((v34 & 0xFFFFFFF0) == 0x20)
            {
              v34 = 17;
            }

            if (v34 > 4098)
            {
              if (v34 > 4101)
              {
                if (v34 == 4102)
                {
                  v51 = [(OSACrashReport *)self validKcdataItem:v30 min_size:v169, 8];
                  v31 = v169;
                  if (v51)
                  {
                    v36 = *(v30 + 2);
                    v37 = 15864;
LABEL_94:
                    *&self->OSAReport_opaque[v37] = v36;
                  }

LABEL_109:
                  v30 = (v32 + v30[1]);
                  v32 = (v30 + 4);
                  if ((v30 + 4) > v31)
                  {
                    goto LABEL_110;
                  }

                  goto LABEL_55;
                }

                if (v34 == 1403128064)
                {
                  goto LABEL_109;
                }
              }

              else
              {
                if (v34 == 4099)
                {
                  v47 = v30[2] & 0xF;
                  v79 = v33 >= v47;
                  v49 = v33 - v47;
                  v48 = v49 != 0 && v79;
                  if (!v79)
                  {
                    v49 = 0;
                  }

                  self->_exit_payload_length = v49;
                  if (v48)
                  {
                    v50 = malloc_type_malloc(v49 + 1, 0x32C06272uLL);
                    v31 = v169;
                    self->_exit_payload = v50;
                    if (v50)
                    {
                      memcpy(v50, v30 + 4, self->_exit_payload_length);
                      v31 = v169;
                      *(self->_exit_payload + self->_exit_payload_length) = 0;
                    }
                  }

                  goto LABEL_109;
                }

                if (v34 == 4101)
                {
                  v35 = [(OSACrashReport *)self validKcdataItem:v30 min_size:v169, 8];
                  v31 = v169;
                  if (v35)
                  {
                    v36 = *(v30 + 2);
                    v37 = 16024;
                    goto LABEL_94;
                  }

                  goto LABEL_109;
                }
              }

LABEL_79:
              v43 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
              v31 = v169;
              if (!v43)
              {
                goto LABEL_109;
              }

              if ((*v30 & 0xFFFFFFF0) == 0x20)
              {
                v44 = 17;
              }

              else
              {
                v44 = *v30;
              }

              v45 = sub_10000391C(v30);
              *buf = 67109376;
              *&buf[4] = v44;
              *&buf[8] = 1024;
              *&buf[10] = v45;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "unknown nested kcdata type: 0x%x, size: %d", buf, 0xEu);
LABEL_108:
              v31 = v169;
              goto LABEL_109;
            }

            switch(v34)
            {
              case 54:
                v46 = [(OSACrashReport *)self validKcdataItem:v30 min_size:v169, 4];
                v31 = v169;
                if (v46)
                {
                  self->_terminator_pid = v30[4];
                }

                goto LABEL_109;
              case 55:
                v52 = v30[2] & 0xF;
                if (v33 >= v52)
                {
                  v53 = v33 - (v30[2] & 0xF);
                }

                else
                {
                  v53 = 0;
                }

                if (strnlen(v30 + 16, v53) >= v53 || v33 <= v52)
                {
                  v55 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
                  v31 = v169;
                  if (!v55)
                  {
                    goto LABEL_109;
                  }

                  *buf = 0;
                  v42 = "terminator proc string is NULL or malformed";
                  goto LABEL_104;
                }

                *(v30 + (v53 - 1) + 16) = 0;
                v56 = [NSString stringWithUTF8String:v30 + 4];
                v57 = 15944;
                break;
              case 4098:
                v38 = v30[2] & 0xF;
                if (v33 >= v38)
                {
                  v39 = v33 - (v30[2] & 0xF);
                }

                else
                {
                  v39 = 0;
                }

                if (strnlen(v30 + 16, v39) >= v39 || v33 <= v38)
                {
                  v41 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
                  v31 = v169;
                  if (!v41)
                  {
                    goto LABEL_109;
                  }

                  *buf = 0;
                  v42 = "exit reason string is NULL or malformed";
LABEL_104:
                  _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v42, buf, 2u);
                  goto LABEL_108;
                }

                *(v30 + (v39 - 1) + 16) = 0;
                v56 = [NSString stringWithUTF8String:v30 + 4];
                v57 = 15936;
                break;
              default:
                goto LABEL_79;
            }

            v58 = *&self->OSAReport_opaque[v57];
            *&self->OSAReport_opaque[v57] = v56;

            goto LABEL_108;
          }

          if (*(corpse + 16) == 2377)
          {
            corpse = [(OSAExclaveContainer *)self->_exclaveContainer parseKCdata:corpse, v10];
            v10 = v113;
          }

          break;
      }
    }

LABEL_343:
    v148 = corpse + *(corpse + 4);
    corpse = v148 + 16;
    v11 = v148 + 32;
  }

  while (v148 + 32 <= v10);
  if (!self->_is_lightweight_corpse || v172 < 1)
  {
    v150 = v173;
  }

  else
  {
    v152 = objc_alloc_init(OSABinaryImageCatalog);
    if (!uuid_is_null(v177 + 8))
    {
      [v152 targetSharedCache:v177 + 8 withSlide:*&v177[0] atBaseAddress:*(&v177[1] + 1)];
    }

    [(NSMutableArray *)self->_taskImages sortByAddressAndSetInferredSizes];
    v153 = [[NSMutableArray alloc] initWithCapacity:1];
    threadInfos = self->_threadInfos;
    self->_threadInfos = v153;

    v155 = v172;
    v156 = [NSMutableArray arrayWithCapacity:v172];
    do
    {
      v158 = *v14++;
      v157 = v158;
      if (v158)
      {
        v159 = [v152 searchFrame:v157 in:self->_taskImages regions:0 result:0];
        v160 = [(OSACrashReport *)self composeFrame:v159 info:0];
        [v156 addObject:v160];
      }

      --v155;
    }

    while (v155);
    self->_crashedThreadNumber = 0;
    v161 = objc_opt_new();
    objc_msgSend_setObject_forKeyedSubscript_(v161);
    v162 = [NSNumber numberWithUnsignedLongLong:self->_threadId];
    objc_msgSend_setObject_forKeyedSubscript_(v161);

    v150 = v173;
    objc_msgSend_setObject_forKeyedSubscript_(v161);
    [(NSMutableArray *)self->_threadInfos addObject:v161];
    v163 = [v152 reportUsedImagesFullInfoUsingBlock:0];
    usedImages = self->_usedImages;
    self->_usedImages = v163;

    v152 = [(OSACrashReport *)self decode_crashingThreadStateWithSymbolicator:0 usingCatalog:0, v152];
    threadStateDecoded = self->_threadStateDecoded;
    self->_threadStateDecoded = v152;
  }

LABEL_353:
}

- (void)_extractLastExceptionBacktraceUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  catalogCopy = catalog;
  CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolOwnerGetSymbolWithName();
    if ((CSIsNull() & 1) == 0)
    {
      v8 = [(OSACrashReport *)self _copyStringFromTask:self->_task atAddress:CSSymbolGetRange() maxLength:0 immutableCheck:0 isInSharedCache:0];
      if (v8)
      {
        v9 = v8;
        v10 = strlen(v8);
        if (v10 && *v9 == 40 && v9[v10 - 1] == 41)
        {
          v11 = objc_opt_new();
          v12 = v9 + 1;
          while (1)
          {
            v13 = *v12;
            if (v13 == 32)
            {
              goto LABEL_13;
            }

            if (!*v12 || v13 == 41)
            {
              lastExceptionBacktrace = self->_lastExceptionBacktrace;
              self->_lastExceptionBacktrace = v11;

              break;
            }

            v21 = 0;
            v20 = 0;
            if (!sscanf(v12, "0x%llx%n", &v21, &v20))
            {
LABEL_13:
              ++v12;
            }

            else
            {
              v12 += v20;
              v14 = v21;
              v16[0] = _NSConcreteStackBlock;
              v16[1] = 3221225472;
              v16[2] = sub_100013C70;
              v16[3] = &unk_100045308;
              v17 = v11;
              selfCopy = self;
              v19 = v21;
              [(OSACrashReport *)self symbolicateFrame:v14 adjusted:v14 withSymbolicator:var0 usingCatalog:var1 andBlock:catalogCopy, v16];
            }
          }
        }

        free(v9);
      }
    }
  }
}

- (void)_extractExceptionReasonUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  SymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  v7 = v6;
  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolOwnerGetSymbolWithName();
    if ((CSIsNull() & 1) == 0)
    {
      task = self->_task;
      Range = CSSymbolGetRange();
      v10 = sub_10000A614(task, Range, 0x400uLL);
      if (v10)
      {
        v11 = v10;
        v12 = [NSData dataWithBytes:v10 length:1024];
        free(v11);
        bzero(v43, 0x400uLL);
        v13 = [NSData dataWithBytes:v43 length:1024];
        v14 = [v12 isEqualToData:v13];

        if ((v14 & 1) == 0)
        {
          v15 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
          regions = [v15 regions];
          v17 = [[OSAOsLogPackParser alloc] initWithMaxNumAruments:8];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000141FC;
          v40[3] = &unk_100045330;
          v40[4] = self;
          [v17 setPointerPointsToSafeMemory:v40];
          v38[0] = _NSConcreteStackBlock;
          v38[1] = 3221225472;
          v38[2] = sub_100014208;
          v38[3] = &unk_100045358;
          v38[4] = self;
          v18 = regions;
          v39 = v18;
          [v17 setModulePathForMemoryPointer:v38];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_100014260;
          v37[3] = &unk_100045380;
          v37[4] = self;
          [v17 setReadCStringFromTarget:v37];
          v19 = [v17 parse:v12];
          if ([v19 count])
          {
            formatString = [v17 formatString];

            if (formatString)
            {
              v21 = [NSSet setWithArray:&off_10004E478];
              formatStringOriginatingModulePath = [v17 formatStringOriginatingModulePath];

              if (formatStringOriginatingModulePath)
              {
                v36 = v21;
                formatStringOriginatingModulePath2 = [v17 formatStringOriginatingModulePath];
                v24 = [formatStringOriginatingModulePath2 hasPrefix:@"/System/"];

                if (v24)
                {
                  formatStringOriginatingModulePath3 = [v17 formatStringOriginatingModulePath];
                  lastPathComponent = [formatStringOriginatingModulePath3 lastPathComponent];

                  v21 = v36;
                  if ([v36 containsObject:lastPathComponent])
                  {
                    v27 = [v17 filterOutSensitiveParts:v19 withFormats:0];

                    v41[0] = @"composed_message";
                    v34 = v27;
                    v35 = [v17 compose:v27];
                    v42[0] = v35;
                    v41[1] = @"format_string";
                    formatString2 = [v17 formatString];
                    v42[1] = formatString2;
                    v41[2] = @"arguments";
                    v28 = [v17 extractArguments:v27];
                    v42[2] = v28;
                    v42[3] = @"objc-exception";
                    v41[3] = @"type";
                    v41[4] = @"class";
                    v29 = [(OSACrashReport *)self _readIndirectSafeStringFromSymbol:"__last_exception_class_name__" symbolOwner:SymbolOwnerWithNameAtTime, v7];
                    v42[4] = v29;
                    v41[5] = @"name";
                    v30 = [(OSACrashReport *)self _readIndirectSafeStringFromSymbol:"__last_exception_name__" symbolOwner:SymbolOwnerWithNameAtTime, v7];
                    v42[5] = v30;
                    v31 = [NSDictionary dictionaryWithObjects:v42 forKeys:v41 count:6];
                    exceptionReasonDetails = self->_exceptionReasonDetails;
                    self->_exceptionReasonDetails = v31;

                    v21 = v36;
                    v19 = v34;
                  }
                }

                else
                {
                  v21 = v36;
                }
              }
            }
          }
        }
      }
    }
  }
}

- (unint64_t)_readAddressFromMemory:(mapped_memory_t *)memory atSymbol:(_CSTypeRef)symbol
{
  CSSymbolGetRange();
  mapped_memory_read_pointer();
  return 0;
}

- (id)_readStringAtTaskAddress:(unint64_t)address maxLength:(unint64_t)length immutableCheck:(BOOL *)check isInSharedCache:(BOOL *)cache
{
  v6 = [(OSACrashReport *)self _copyStringFromTask:self->_task atAddress:address maxLength:length immutableCheck:check isInSharedCache:cache];
  if (v6)
  {
    v7 = v6;
    v8 = [NSString stringWithUTF8String:v6];
    free(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_readIndirectSafeStringFromSymbol:(const char *)symbol symbolOwner:(_CSTypeRef)owner
{
  CSSymbolOwnerGetSymbolWithName();
  if ((CSIsNull() & 1) != 0 || (task = self->_task, Range = CSSymbolGetRange(), (v7 = sub_10000A614(task, Range, 8uLL)) == 0))
  {
    v10 = @"<not available>";
  }

  else
  {
    v8 = v7;
    v12 = 0;
    v9 = [(OSACrashReport *)self _readStringAtTaskAddress:*v7 maxLength:0 immutableCheck:&v12 + 1 isInSharedCache:&v12];
    v10 = v9;
    if (HIBYTE(v12) != 1 || (v12 & 1) == 0)
    {

      v10 = @"<redacted>";
    }

    free(v8);
  }

  return v10;
}

- (char)_copyStringFromTask:(unsigned int)task atAddress:(unint64_t)address maxLength:(unint64_t)length immutableCheck:(BOOL *)check isInSharedCache:(BOOL *)cache
{
  v10 = [(OSACrashReport *)self _regionAtAddress:address immutableCheck:check isInSharedCache:cache];
  lengthCopy = 2 * vm_page_size;
  if (length)
  {
    lengthCopy = length;
  }

  if (lengthCopy + address <= v10 + v11)
  {
    v13 = lengthCopy;
  }

  else
  {
    v13 = v10 + v11 - address;
  }

  return sub_10000A614(task, address, v13);
}

- (int)_regionInfoAtAddress:(unint64_t)address regionInfo:(vm_region_submap_short_info_64 *)info regionAddress:(unint64_t *)regionAddress regionSize:(unint64_t *)size
{
  nesting_depth = 999999;
  addressCopy = address;
  if (regionAddress)
  {
    if (size)
    {
      infoCnt = 12;
      result = mach_vm_region_recurse(self->_task, &addressCopy, size, &nesting_depth, &info->protection, &infoCnt);
      *regionAddress = addressCopy;
      return result;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_1000303A0();
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_1000303E4();
  }

  return 1;
}

- (_VMURange)_regionAtAddress:(unint64_t)address immutableCheck:(BOOL *)check isInSharedCache:(BOOL *)cache
{
  memset(v14, 0, sizeof(v14));
  v12 = 0;
  addressCopy = address;
  if ([(OSACrashReport *)self _regionInfoAtAddress:address regionInfo:v14 regionAddress:&addressCopy regionSize:&v12]|| (v14[0] & 1) == 0)
  {
    v12 = 0;
    addressCopy = 0;
  }

  if (check)
  {
    *check = (BYTE4(v14[0]) & 2) == 0;
  }

  v8 = addressCopy;
  if (cache)
  {
    sharedCacheBase = self->_sharedCacheBase;
    v10 = addressCopy >= sharedCacheBase && v12 + addressCopy <= self->_sharedCacheSize + sharedCacheBase;
    *cache = v10;
  }

  v11 = v12;
  result.var1 = v11;
  result.var0 = v8;
  return result;
}

- (BOOL)_isMemorySafeAtAddress:(unint64_t)address
{
  v4 = 0;
  [(OSACrashReport *)self _regionAtAddress:address immutableCheck:&v4 + 1 isInSharedCache:&v4];
  return HIBYTE(v4) & v4 & 1;
}

- (id)_readDataAtAddress:(unint64_t)address size:(unint64_t)size
{
  is64Bit = self->_is64Bit;
  v8 = [NSMutableData dataWithCapacity:size];
  if (v8)
  {
    if (!is64Bit)
    {
      address = address;
    }

    for (i = address + size; address < i; address += v13)
    {
      v10 = [(OSACrashReport *)self _regionAtAddress:address immutableCheck:0 isInSharedCache:0];
      if (!v10)
      {
        break;
      }

      v12 = &v10[v11];
      if (i < &v10[v11])
      {
        v12 = i;
      }

      v13 = &v12[-address] >= size ? size : &v12[-address];
      data[0] = 0;
      dataCnt = 0;
      if (vm_read(self->_task, address, &v12[-address], data, &dataCnt))
      {
        break;
      }

      v14 = [NSData dataWithBytes:data[0] length:dataCnt];
      vm_deallocate(mach_task_self_, data[0], dataCnt);
      if (!v14)
      {
        break;
      }

      [v8 appendData:v14];
    }
  }

  if ([v8 length])
  {
    v15 = v8;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

- (void)_addASILine:(id)line fromOwner:(id)owner isSafe:(BOOL)safe
{
  safeCopy = safe;
  lineCopy = line;
  ownerCopy = owner;
  if (![lineCopy length])
  {
    goto LABEL_12;
  }

  [(NSMutableDictionary *)self->_applicationSpecificInfoFullSensitive addLines:lineCopy fromOwner:ownerCopy];
  if (safeCopy)
  {
    [(NSMutableDictionary *)self->_applicationSpecificInfo addLines:lineCopy fromOwner:ownerCopy];
    v10 = +[OSASystemConfiguration sharedInstance];
    appleInternal = [v10 appleInternal];

    if (!appleInternal)
    {
      goto LABEL_8;
    }

    v12 = &OBJC_IVAR___OSACrashReport__applicationSpecificInfoRedacted;
  }

  else
  {
    v13 = +[OSASystemConfiguration sharedInstance];
    appleInternal2 = [v13 appleInternal];

    if ((appleInternal2 & 1) == 0)
    {
      goto LABEL_8;
    }

    v12 = &OBJC_IVAR___OSACrashReport__applicationSpecificInfo;
  }

  [*&self->OSAReport_opaque[*v12] addLines:lineCopy fromOwner:ownerCopy];
LABEL_8:
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"sensitive";
    v16 = 138543874;
    v17 = ownerCopy;
    if (safeCopy)
    {
      v15 = @"safe";
    }

    v18 = 2112;
    v19 = v15;
    v20 = 2114;
    v21 = lineCopy;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "ASI found [%{public}@] (%@) '%{public}@'", &v16, 0x20u);
  }

LABEL_12:
}

- (void)_extractInfoPlistFromSymbolOwner:(_CSTypeRef)owner
{
  Name = CSSymbolOwnerGetName();
  if (Name)
  {
    v5 = Name;
    procName = [(OSACrashReport *)self procName];
    v7 = [NSString stringWithUTF8String:v5];
    v8 = [procName isEqualToString:v7];

    if (v8)
    {
      CSSymbolOwnerGetSectionWithName();
      Range = CSRegionGetRange();
      v11 = [(OSACrashReport *)self _readDataAtAddress:Range size:v10];
      if (v11)
      {
        v15 = 0;
        v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:&v15];
        v13 = v15;
        if (!v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030428();
        }
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_1000304A0();
        }

        v12 = 0;
      }

      info_plist = self->_info_plist;
      self->_info_plist = v12;
    }
  }
}

- (void)_extractCrashReporterAnnotationsFromSymbolOwner:(_CSTypeRef)owner withMemory:(mapped_memory_t *)memory
{
  if (qword_1000540E0 != -1)
  {
    sub_1000304E4();
  }

  Name = CSSymbolOwnerGetName();
  if (Name)
  {
    procName = [(OSACrashReport *)self procName];
    v7 = [NSString stringWithUTF8String:Name];
    [procName isEqualToString:v7];
  }

  CSSymbolOwnerForeachSection();
}

- (void)_extractBinaryImageInfoUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  catalogCopy = catalog;
  self->_sharedCacheAddress = CSSymbolicatorGetSharedCacheBaseAddress();
  v6 = objc_autoreleasePoolPush();
  v7 = +[NSMutableArray array];
  mapped_memory_cache_for_task = create_mapped_memory_cache_for_task();
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000159E0;
  v22 = &unk_1000454A8;
  selfCopy = self;
  v24 = v7;
  v25 = mapped_memory_cache_for_task;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  [(NSMutableArray *)self->_taskImages sortByAddressAndSetInferredSizes];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v24;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [catalogCopy searchFrame:objc_msgSend(*(*(&v15 + 1) + 8 * v13) in:"unsignedLongLongValue" result:{v15), self->_taskImages, 0}];
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v26 count:16];
    }

    while (v11);
  }

  if (mapped_memory_cache_for_task)
  {
    destroy_mapped_memory_cache();
  }

  objc_autoreleasePoolPop(v6);
}

- (unint64_t)_objcSelectorAddressForMessenger:(id)messenger memory:(mapped_memory_t *)memory
{
  messengerCopy = messenger;
  v7 = [messengerCopy rangeOfString:@"stret"];
  v8 = [messengerCopy rangeOfString:@"fixup"];
  v9 = [messengerCopy rangeOfString:@"vtable"];

  if (self->_threadStateFlavor != 1 || self->_threadState[0] != 6)
  {
    return 0;
  }

  if (!self->_isTranslated || self->_cpuType != 16777223)
  {
    return *&self->_threadState[4];
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL && v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return *&self->_threadState[14];
    }

    else
    {
      return *&self->_threadState[6];
    }
  }

  else
  {
    v11 = *&self->_threadState[14] + 8;

    return [(OSACrashReport *)self _readAddressFromMemory:memory atAddress:v11];
  }
}

- (id)_objcSelectorNameForMessenger:(id)messenger
{
  messengerCopy = messenger;
  v5 = [(OSACrashReport *)self _objcSelectorAddressForMessenger:messengerCopy memory:create_mapped_memory_cache_for_task()];
  if (v5)
  {
    if (self->_is64Bit)
    {
      v6 = -86000;
    }

    else
    {
      v6 = 4294881296;
    }

    if (v5 == v6)
    {
      v7 = @"_ignoredSelector";
    }

    else
    {
      v7 = [(OSACrashReport *)self _readStringAtTaskAddress:v5 maxLength:0 immutableCheck:0 isInSharedCache:0];
    }
  }

  else
  {
    v7 = 0;
  }

  destroy_mapped_memory_cache();

  return v7;
}

- (void)symbolicateFrame:(unint64_t)frame adjusted:(unint64_t)adjusted withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog andBlock:(id)block
{
  catalogCopy = catalog;
  blockCopy = block;
  v10 = objc_opt_new();
  if (dword_1000540C8)
  {
    CSSymbolicatorGetSymbolOwnerWithAddressAtTime();
    v49 = _NSConcreteStackBlock;
    v50 = 3221225472;
    v51 = sub_100016364;
    v52 = &unk_1000454D0;
    frameCopy = frame;
    v53 = v10;
    CSSymbolOwnerForEachStackFrameAtAddress();
  }

  if ([v10 count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    reverseObjectEnumerator = [v10 reverseObjectEnumerator];
    v12 = [reverseObjectEnumerator countByEnumeratingWithState:&v45 objects:v55 count:16];
    if (v12)
    {
      v13 = v12;
      v40 = v10;
      v14 = 0;
      v15 = *v46;
      do
      {
        v16 = reverseObjectEnumerator;
        v17 = 0;
        v18 = v14;
        do
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(v16);
          }

          v19 = *(*(&v45 + 1) + 8 * v17);
          v20 = [v19 objectAtIndexedSubscript:0];
          unsignedLongLongValue = [v20 unsignedLongLongValue];

          taskImages = self->_taskImages;
          v44 = v18;
          v23 = [catalogCopy searchFrame:unsignedLongLongValue in:taskImages regions:0 result:&v44];
          v14 = v44;

          v24 = 0;
          if ([v19 count] >= 2)
          {
            v24 = [v19 objectAtIndexedSubscript:1];
          }

          blockCopy[2](blockCopy, v23, v24, v14);

          v17 = v17 + 1;
          v18 = v14;
        }

        while (v13 != v17);
        reverseObjectEnumerator = v16;
        v13 = [v16 countByEnumeratingWithState:&v45 objects:v55 count:16];
      }

      while (v13);
      v10 = v40;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v25 = self->_taskImages;
    rosettaRegions = self->_rosettaRegions;
    v43 = 0;
    reverseObjectEnumerator = [catalogCopy searchFrame:frame in:v25 regions:rosettaRegions result:&v43];
    v27 = v43;
    v14 = v27;
    v28 = !self->_isTranslated || v27 == 0;
    if (v28 || ([v27 symbolInfo], v29 = objc_claimAutoreleasedReturnValue(), is_null = uuid_is_null(&v29[OBJC_IVAR___OSASymbolInfo__uuid]), v29, !is_null))
    {
      v32 = 0;
    }

    else
    {
      v31 = reverseObjectEnumerator;
      v32 = objc_opt_new();
      if (self->_isTranslated)
      {
        symbolInfo = [v14 symbolInfo];
        cpuArch = [symbolInfo cpuArch];
        v35 = [cpuArch hasPrefix:@"arm"];

        if (v35)
        {
          symbolInfo2 = [v14 symbolInfo];
          v37 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", frame - [symbolInfo2 start]);
          objc_msgSend_setObject_forKeyedSubscript_(v32);
        }
      }

      symbolInfo3 = [v14 symbolInfo];
      name = [symbolInfo3 name];
      objc_msgSend_setObject_forKeyedSubscript_(v32);

      reverseObjectEnumerator = v31;
    }

    blockCopy[2](blockCopy, reverseObjectEnumerator, v32, v14);
  }
}

- (id)composeFrame:(id)frame info:(id)info
{
  infoCopy = info;
  frameCopy = frame;
  v7 = objc_opt_new();
  v8 = [frameCopy objectAtIndexedSubscript:0];
  objc_msgSend_setObject_forKeyedSubscript_(v7);

  v9 = [frameCopy objectAtIndexedSubscript:1];

  objc_msgSend_setObject_forKeyedSubscript_(v7);
  if ([infoCopy count])
  {
    [v7 addEntriesFromDictionary:infoCopy];
  }

  return v7;
}

- (unsigned)_extractBacktraceInfoUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  catalogCopy = catalog;
  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 0;
  v96[0] = 0;
  v96[1] = v96;
  v96[2] = 0x2020000000;
  v96[3] = 0;
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_10001719C;
  v95[3] = &unk_1000454F8;
  v95[4] = v96;
  v74 = var0;
  v7 = var1;
  [(OSACrashReport *)self _extractRosettaRuntimeInfo:var0 withBlock:var1, v95];
  context = objc_autoreleasePoolPush();
  LODWORD(var0) = _os_feature_enabled_impl();
  v8 = [VMUSampler alloc];
  if (var0)
  {
    v9 = 4097;
  }

  else
  {
    v9 = 1;
  }

  v66 = [v8 initWithPID:self->_proc_id task:self->_task processName:self->_procName is64Bit:self->_is64Bit options:v9];
  sampleAllThreadsOnce = [v66 sampleAllThreadsOnce];
  if (![sampleAllThreadsOnce count])
  {
    [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"[VMUSampler sampleAllThreadsOfTask:withSymbolicator] returned no stacks"];
  }

  v10 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(sampleAllThreadsOnce, "count")}];
  threadInfos = self->_threadInfos;
  self->_threadInfos = v10;

  v72 = 0;
  backtraceLength = 0;
  v63 = -1;
  v64 = 0;
  while ([sampleAllThreadsOnce count] > v72)
  {
    v70 = objc_opt_new();
    v73 = [sampleAllThreadsOnce objectAtIndexedSubscript:v72];
    thread = [v73 thread];
    *thread_info_out = 0;
    v93 = 0;
    v94 = 0;
    thread_info_outCnt = 6;
    if (thread_info(thread, 4u, thread_info_out, &thread_info_outCnt))
    {
      v13 = -1;
    }

    else
    {
      v13 = *thread_info_out;
    }

    if (v13 != -1)
    {
      v14 = [NSNumber numberWithUnsignedLongLong:v13];
      objc_msgSend_setObject_forKeyedSubscript_(v70);

      exclaveContainer = self->_exclaveContainer;
      if (exclaveContainer)
      {
        threadIdToScId = [(OSAExclaveContainer *)exclaveContainer threadIdToScId];
        v17 = [NSNumber numberWithUnsignedLongLong:v13];
        v18 = [threadIdToScId objectForKeyedSubscript:v17];
        v19 = v18 == 0;

        if (!v19)
        {
          exclaveThreadNumbers = self->_exclaveThreadNumbers;
          if (!exclaveThreadNumbers)
          {
            v21 = objc_alloc_init(NSMutableArray);
            v22 = self->_exclaveThreadNumbers;
            self->_exclaveThreadNumbers = v21;

            exclaveThreadNumbers = self->_exclaveThreadNumbers;
          }

          v23 = [NSNumber numberWithInt:v72];
          [(NSMutableArray *)exclaveThreadNumbers addObject:v23];
        }
      }
    }

    if (self->_crashedThreadNumber < 0)
    {
      if ([v73 backtraceLength] > backtraceLength)
      {
        backtraceLength = [v73 backtraceLength];
        self->_highlightedThreadNumber = v72;
        v63 = v13;
        v64 = thread;
      }

      threadId = self->_threadId;
      if (threadId != -1 && v13 == threadId || threadId == -1 && thread == self->_threadPortOriginal)
      {
        threadPortPedigree = self->_threadPortPedigree;
        threadId = [NSString stringWithFormat:@"thread match 0x%x ID(0x%llX)", thread, threadId];
        [(NSMutableArray *)threadPortPedigree addObject:threadId];

        self->_crashedThreadNumber = v72;
        *(v98 + 6) = thread;
        self->_highlightedThreadNumber = -1;
      }
    }

    v27 = [v66 threadNameForThread:thread];
    if ([v27 length])
    {
      v68 = [v27 stringByReplacingOccurrencesOfString:@"\n" withString:@" "];

      v28 = OSASanitizePath();
      objc_msgSend_setObject_forKeyedSubscript_(v70);
    }

    else
    {
      v68 = v27;
    }

    v69 = [v66 dispatchQueueNameForSerialNumber:{objc_msgSend(v73, "dispatchQueueSerialNumber")}];
    if ([v69 length])
    {
      v29 = OSASanitizePath();
      objc_msgSend_setObject_forKeyedSubscript_(v70);
    }

    backtrace = [v73 backtrace];
    v71 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v73 backtraceLength]);
    for (i = 0; i < [v73 backtraceLength]; ++i)
    {
      v32 = backtrace[i];
      v82[0] = _NSConcreteStackBlock;
      if (i)
      {
        v33 = v32 == 0;
      }

      else
      {
        v33 = 1;
      }

      v82[1] = 3221225472;
      v34 = !v33;
      v35 = v32 - v34;
      v82[2] = sub_1000171FC;
      v82[3] = &unk_100045520;
      v88 = i;
      v89 = v72;
      v90 = thread;
      v82[4] = self;
      v84 = &v97;
      v85 = v96;
      v86 = v13;
      v87 = v32;
      v83 = v71;
      [(OSACrashReport *)self symbolicateFrame:v32 adjusted:v35 withSymbolicator:v74 usingCatalog:v7 andBlock:catalogCopy, v82];
    }

    objc_msgSend_setObject_forKeyedSubscript_(v70);
    catalogCopy = [(OSACrashReport *)self decode_threadState:thread withSymbolicator:v74 usingCatalog:v7, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v70);

    recursionInfoArray = [v73 recursionInfoArray];

    if (recursionInfoArray)
    {
      v38 = objc_opt_new();
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      recursionInfoArray2 = [v73 recursionInfoArray];
      v40 = [recursionInfoArray2 countByEnumeratingWithState:&v78 objects:v105 count:16];
      if (v40)
      {
        v41 = *v79;
        do
        {
          for (j = 0; j != v40; j = j + 1)
          {
            if (*v79 != v41)
            {
              objc_enumerationMutation(recursionInfoArray2);
            }

            v43 = *(*(&v78 + 1) + 8 * j);
            v44 = [v43 objectForKeyedSubscript:@"keyPC"];
            unsignedLongLongValue = [v44 unsignedLongLongValue];

            v76[0] = _NSConcreteStackBlock;
            v76[1] = 3221225472;
            v76[2] = sub_100017580;
            v76[3] = &unk_100045548;
            v76[4] = self;
            v76[5] = v43;
            v77 = v38;
            [(OSACrashReport *)self symbolicateFrame:unsignedLongLongValue adjusted:unsignedLongLongValue - 1 withSymbolicator:v74 usingCatalog:v7 andBlock:catalogCopy, v76];
          }

          v40 = [recursionInfoArray2 countByEnumeratingWithState:&v78 objects:v105 count:16];
        }

        while (v40);
      }

      v46 = [v38 count];
      recursionInfoArray3 = [v73 recursionInfoArray];
      v48 = v46 == [recursionInfoArray3 count];

      if (!v48)
      {
        v49 = &_os_log_default;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          recursionInfoArray4 = [v73 recursionInfoArray];
          v52 = [recursionInfoArray4 count];
          v53 = [v38 count];
          *buf = 134218240;
          v102 = v52;
          v103 = 2048;
          v104 = v53;
          _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "thread's original recursionInfoArray.count is %zu but after processing inline frames recursionInfoArray.count is %zu", buf, 0x16u);
        }
      }

      objc_msgSend_setObject_forKeyedSubscript_(v70);
      v50 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v73 originalLength]);
      objc_msgSend_setObject_forKeyedSubscript_(v70);

      if (v72 == self->_crashedThreadNumber)
      {
        self->_recursionOnCrashedThread = 1;
      }
    }

    [(NSMutableArray *)self->_threadInfos addObject:v70];

    ++v72;
  }

  v54 = *(v98 + 6);
  if (v54 || (v55 = self->_threadPortPedigree, [NSString stringWithFormat:@"override via deepest 0x%x ID(0x%llX)", v64, v63], v56 = objc_claimAutoreleasedReturnValue(), [(NSMutableArray *)v55 addObject:v56], v56, self->_threadId = v63, *(v98 + 6) = v64, (v54 = v64) != 0))
  {
    v57 = mach_port_mod_refs(mach_task_self_, v54, 0, 1);
    v58 = self->_threadPortPedigree;
    v59 = [NSString stringWithFormat:@"port retain 0x%x result 0x%x (%s)", *(v98 + 6), v57, mach_error_string(v57)];
    [(NSMutableArray *)v58 addObject:v59];
  }

  objc_autoreleasePoolPop(context);
  v60 = *(v98 + 6);
  _Block_object_dispose(v96, 8);
  _Block_object_dispose(&v97, 8);

  return v60;
}

- (id)_findContainingRegion:(id)region address:(unint64_t)address
{
  regionCopy = region;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017724;
  v9[3] = &unk_100045568;
  v9[4] = address;
  v6 = [regionCopy indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [regionCopy objectAtIndex:v6];
  }

  return v7;
}

- (id)_findContainingTextSegmentRegion:(id)region address:(unint64_t)address
{
  regionCopy = region;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100017838;
  v9[3] = &unk_100045568;
  v9[4] = address;
  v6 = [regionCopy indexOfObjectPassingTest:v9];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [regionCopy objectAtIndex:v6];
  }

  return v7;
}

- (id)_readMallocZoneArrayFromMemory:(mapped_memory_t *)memory usingSymbolicator:(_CSTypeRef)symbolicator
{
  SymbolWithNameFromSymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
  v8 = v7;
  CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
  if ((CSIsNull() & 1) != 0 || CSIsNull()) && ((SymbolWithNameFromSymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolWithNameAtTime(), v8 = v9, CSSymbolicatorGetSymbolWithNameAtTime(), (CSIsNull()) || CSIsNull()))
  {
    v10 = +[NSData data];
  }

  else
  {
    v11 = [(OSACrashReport *)self _readDataAtAddress:CSSymbolGetRange() size:4];
    v10 = -[OSACrashReport _readDataAtAddress:size:](self, "_readDataAtAddress:size:", -[OSACrashReport _readAddressFromMemory:atSymbol:](self, "_readAddressFromMemory:atSymbol:", memory, SymbolWithNameFromSymbolOwnerWithNameAtTime, v8), 8 * *[v11 bytes]);
  }

  return v10;
}

- (id)_readMallocZoneArray:(_CSTypeRef)array
{
  v3 = [(OSACrashReport *)self _readMallocZoneArrayFromMemory:create_mapped_memory_cache_for_task() usingSymbolicator:array.var0, array.var1];
  destroy_mapped_memory_cache();

  return v3;
}

- (unint64_t)_findMallocZone:(id)zone usingSymbolicator:(_CSTypeRef)symbolicator
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  zoneCopy = zone;
  mapped_memory_cache_for_task = create_mapped_memory_cache_for_task();
  var1 = [(OSACrashReport *)self _readMallocZoneArrayFromMemory:mapped_memory_cache_for_task usingSymbolicator:var0, var1];
  bytes = [var1 bytes];
  v11 = [var1 length];
  if (v11 < 8)
  {
LABEL_5:
    v13 = 0;
  }

  else
  {
    v12 = v11 >> 3;
    while (1)
    {
      v13 = *bytes;
      v14 = [(OSACrashReport *)self _readStringAtTaskAddress:[(OSACrashReport *)self _readAddressFromMemory:mapped_memory_cache_for_task atAddress:*bytes + 72] maxLength:1024 immutableCheck:0 isInSharedCache:0];
      v15 = [v14 isEqualToString:zoneCopy];

      if (v15)
      {
        break;
      }

      ++bytes;
      if (!--v12)
      {
        goto LABEL_5;
      }
    }
  }

  destroy_mapped_memory_cache();

  return v13;
}

- (id)_extractMallocTraceInfo:(id *)info withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  catalogCopy = catalog;
  v19 = [NSMutableArray arrayWithCapacity:info->var2];
  if (info->var2)
  {
    v10 = 0;
    do
    {
      v11 = catalogCopy;
      v12 = info->var3[v10];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_100017E04;
      v21[3] = &unk_100045590;
      v22 = v19;
      selfCopy = self;
      v13 = v12;
      v14 = v12;
      catalogCopy = v11;
      [(OSACrashReport *)self symbolicateFrame:v13 adjusted:v14 withSymbolicator:var0 usingCatalog:var1 andBlock:v11, v21];

      ++v10;
    }

    while (v10 < info->var2);
  }

  v24[0] = @"id";
  v15 = [NSNumber numberWithUnsignedLongLong:info->var0, v19];
  v25[0] = v15;
  v24[1] = @"time";
  v16 = [NSNumber numberWithUnsignedLongLong:info->var1];
  v24[2] = @"frames";
  v25[1] = v16;
  v25[2] = v20;
  v17 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:3];

  return v17;
}

- (void)_extractPGMReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  catalogCopy = catalog;
  v8 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
  regions = [v8 regions];
  v10 = [(OSACrashReport *)self _findContainingRegion:regions address:self->_exceptionCode[1]];
  v11 = v10;
  if (v10 && *(v10 + OBJC_IVAR___VMUVMRegion_user_tag) == 13)
  {
    v23 = catalogCopy;
    var1 = [(OSACrashReport *)self _readMallocZoneArray:var0, var1];
    [var1 bytes];
    v25 = var1;
    [var1 length];
    memset(v26, 0, 464);
    if (pgm_extract_report_from_corpse())
    {
      probGuardReport = self->_probGuardReport;
      self->_probGuardReport = &off_10004E260;
      catalogCopy = v23;
    }

    else
    {
      if (LODWORD(v26[0]))
      {
        catalogCopy = v23;
        probGuardReport = [(OSACrashReport *)self _extractMallocTraceInfo:v26 + 8 withSymbolicator:var0 usingCatalog:var1, v23];
        if (LODWORD(v26[0]) < 2)
        {
          v14 = @"<unavailable>";
        }

        else
        {
          v14 = [(OSACrashReport *)self _extractMallocTraceInfo:&v27 withSymbolicator:var0 usingCatalog:var1, v23];
        }
      }

      else
      {
        probGuardReport = @"<unavailable>";
        v14 = @"<unavailable>";
        catalogCopy = v23;
      }

      v24 = v14;
      v28[0] = @"allocationTrace";
      v28[1] = @"deallocationTrace";
      v29[0] = probGuardReport;
      v29[1] = v14;
      v28[2] = @"errorType";
      v22 = [NSString stringWithUTF8String:0];
      v29[2] = v22;
      v28[3] = @"confidence";
      v21 = [NSString stringWithUTF8String:0];
      v29[3] = v21;
      v28[4] = @"faultAddress";
      v20 = [NSNumber numberWithUnsignedLong:0];
      v29[4] = v20;
      v28[5] = @"nearestAllocation";
      v15 = [NSNumber numberWithUnsignedLong:0];
      v29[5] = v15;
      v28[6] = @"allocationSize";
      v16 = [NSNumber numberWithUnsignedLong:0];
      v29[6] = v16;
      v28[7] = @"allocationState";
      v17 = [NSString stringWithUTF8String:0];
      v29[7] = v17;
      v18 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:8];
      v19 = self->_probGuardReport;
      self->_probGuardReport = v18;
    }
  }
}

- (void)_extractPGMLibpasReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  v5 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
  regions = [v5 regions];
  v7 = [(OSACrashReport *)self _findContainingRegion:regions address:self->_exceptionCode[1]];
  v8 = v7;
  if (v7 && *(v7 + OBJC_IVAR___VMUVMRegion_user_tag) == 53)
  {
    mapped_memory_cache_for_task = create_mapped_memory_cache_for_task();
    SymbolWithNameFromSymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
    if ([(OSACrashReport *)self _readAddressFromMemory:mapped_memory_cache_for_task atSymbol:SymbolWithNameFromSymbolOwnerWithNameAtTime, v11])
    {
      if (!&_PASReportCrashExtractResults)
      {
        v13 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v14 = @"Could not locate PASReportCrashExtractResults in JavaScriptCore.";
        goto LABEL_9;
      }

      Results = PASReportCrashExtractResults();
      if (!Results)
      {
        v21[0] = @"allocationTrace";
        v21[1] = @"deallocationTrace";
        v22[0] = @"<unknown>";
        v22[1] = @"<unknown>";
        v21[2] = @"errorType";
        v15 = [NSString stringWithUTF8String:0];
        v22[2] = v15;
        v21[3] = @"confidence";
        v16 = [NSString stringWithUTF8String:0];
        v22[3] = v16;
        v21[4] = @"faultAddress";
        v17 = [NSNumber numberWithUnsignedLong:0];
        v22[4] = v17;
        v22[5] = &off_10004D9D0;
        v21[5] = @"nearestAllocation";
        v21[6] = @"allocationSize";
        v18 = [NSNumber numberWithUnsignedLong:0];
        v21[7] = @"allocationState";
        v22[6] = v18;
        v22[7] = @"unknown";
        v19 = [NSDictionary dictionaryWithObjects:v22 forKeys:v21 count:8];
        probGuardReport = self->_probGuardReport;
        self->_probGuardReport = v19;

        goto LABEL_11;
      }

      if (Results == 5)
      {
        v13 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v14 = @"Extracting libpas PGM metadata failed.";
LABEL_9:
        [v13 addObject:{v14, 0}];
      }
    }

LABEL_11:
    destroy_mapped_memory_cache();
  }
}

- (void)_extractMemoryErrorReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  catalogCopy = catalog;
  if ([(OSACrashReport *)self isMTECrash])
  {
    CSSymbolicatorGetSymbolWithNameFromSymbolOwnerWithNameAtTime();
    if ((CSIsNull() & 1) == 0)
    {
      CSSymbolGetRange();
      memset(v22, 0, 480);
      v20 = 0u;
      v21 = 0u;
      v8 = sanitizers_diagnose_memory_error();
      if (v8)
      {
        v28 = @"error";
        catalogCopy = [NSString stringWithUTF8String:v8];
        v29 = catalogCopy;
        v10 = [NSDictionary dictionaryWithObjects:&v29 forKeys:&v28 count:1];
        memoryErrorReport = self->_memoryErrorReport;
        self->_memoryErrorReport = v10;
      }

      else
      {
        catalogCopy = [(OSACrashReport *)self _extractMallocTraceInfo:v22 + 8 withSymbolicator:var0 usingCatalog:var1, catalogCopy];
        if (LOBYTE(v22[0]) == 1)
        {
          memoryErrorReport = [(OSACrashReport *)self _extractMallocTraceInfo:&v23 withSymbolicator:var0 usingCatalog:var1, catalogCopy];
        }

        else
        {
          memoryErrorReport = @"<unavailable>";
        }

        v26[0] = @"errorType";
        v19 = [NSString stringWithUTF8String:v20];
        v27[0] = v19;
        v26[1] = @"faultAddress";
        v12 = [NSNumber numberWithUnsignedLong:*(&v20 + 1)];
        v27[1] = v12;
        v26[2] = @"blamedAllocation";
        v24[0] = @"address";
        v13 = [NSNumber numberWithUnsignedLong:v21];
        v25[0] = v13;
        v24[1] = @"size";
        v14 = [NSNumber numberWithUnsignedLong:*(&v21 + 1)];
        v25[1] = v14;
        v24[2] = @"isFreed";
        v15 = [NSNumber numberWithBool:LOBYTE(v22[0])];
        v25[2] = v15;
        v25[3] = catalogCopy;
        v24[3] = @"allocationTrace";
        v24[4] = @"deallocationTrace";
        v25[4] = memoryErrorReport;
        v16 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:5];
        v27[2] = v16;
        v17 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:3];
        v18 = self->_memoryErrorReport;
        self->_memoryErrorReport = v17;
      }
    }
  }
}

- (void)_extractSanitizerReportUsingSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  catalogCopy = catalog;
  if (*self->_exceptionCode == 63470 && [(OSACrashReport *)self _findMallocZone:@"SanitizerMallocZone" usingSymbolicator:var0, var1])
  {
    memset(v15, 0, 496);
    if (sanitizer_diagnose_fault_from_crash_reporter())
    {
      [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"sanitizer_diagnose_fault_from_crash_reporter() failed.  This should never happen!"];
    }

    else
    {
      catalogCopy = [(OSACrashReport *)self _extractMallocTraceInfo:v15 + 8 withSymbolicator:var0 usingCatalog:var1, catalogCopy];
      catalogCopy2 = [(OSACrashReport *)self _extractMallocTraceInfo:&v16 withSymbolicator:var0 usingCatalog:var1, catalogCopy];
      v17[0] = @"allocationTrace";
      v17[1] = @"deallocationTrace";
      v18[0] = catalogCopy;
      v18[1] = catalogCopy2;
      v17[2] = @"faultAddress";
      v10 = [NSNumber numberWithUnsignedLong:0];
      v18[2] = v10;
      v17[3] = @"nearestAllocation";
      v11 = [NSNumber numberWithUnsignedLong:0];
      v18[3] = v11;
      v17[4] = @"allocationSize";
      v12 = [NSNumber numberWithUnsignedLong:*&v15[0]];
      v18[4] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:5];
      sanitizerReport = self->_sanitizerReport;
      self->_sanitizerReport = v13;
    }
  }
}

- (void)setApplicationSpecificInformation:(const char *)information
{
  if (information)
  {
    v4 = [NSString stringWithUTF8String:?];
    [(OSACrashReport *)self _addASILine:v4 fromOwner:@"internal" isSafe:1];
  }
}

+ (id)parentBundleURLForAppExtensionBundleURL:(id)l error:(id)error
{
  errorCopy = error;
  lCopy = l;
  v5 = [[LSApplicationExtensionRecord alloc] initWithURL:lCopy error:&errorCopy];

  containingBundleRecord = [v5 containingBundleRecord];
  v7 = containingBundleRecord;
  if (containingBundleRecord)
  {
    v8 = [containingBundleRecord URL];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)loadStoreInfo:(id)info atURL:(id)l forPlatform:(unsigned int)platform
{
  infoCopy = info;
  lCopy = l;
  v9 = objc_opt_new();
  pathExtension = [lCopy pathExtension];
  v11 = [pathExtension isEqualToString:@"appex"];

  if (v11)
  {
    v12 = [objc_opt_class() parentBundleURLForAppExtensionBundleURL:lCopy error:0];
    v13 = v12;
    if (v12)
    {
      v14 = v12;

      lCopy = v14;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100030580();
    }
  }

  v45 = 0;
  v15 = [[LSApplicationRecord alloc] initWithURL:lCopy allowPlaceholder:1 error:&v45];
  v16 = v45;
  v17 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    if (v17)
    {
      *buf = 67109634;
      *v47 = platform;
      *&v47[4] = 2114;
      *&v47[6] = infoCopy;
      *&v47[14] = 2114;
      *&v47[16] = lCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "loadStoreInfo [platform %d] %{public}@ from %{public}@", buf, 0x1Cu);
    }

    iTunesMetadata = [v15 iTunesMetadata];
    storeItemIdentifier = [iTunesMetadata storeItemIdentifier];

    if (storeItemIdentifier)
    {
      v20 = [NSNumber numberWithUnsignedLongLong:storeItemIdentifier];
      stringValue = [v20 stringValue];
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    deviceIdentifierForVendor = [v15 deviceIdentifierForVendor];
    uUIDString = [deviceIdentifierForVendor UUIDString];

    if (uUIDString)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    iTunesMetadata2 = [v15 iTunesMetadata];
    v44 = v16;
    v25 = [iTunesMetadata2 storeCohortWithError:&v44];
    v26 = v44;

    if (v25)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    else if (v26 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription = [v26 localizedDescription];
      *buf = 138412290;
      *v47 = localizedDescription;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "unable to retrieve storeCohort: %@", buf, 0xCu);
    }

    iTunesMetadata3 = [v15 iTunesMetadata];
    variantID = [iTunesMetadata3 variantID];

    if (variantID)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    if ([v15 developerType] != 1)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    if ([v15 isBeta])
    {
      objc_msgSend_setObject_forKeyedSubscript_(v9);
      iTunesMetadata4 = [v15 iTunesMetadata];
      betaVersionIdentifier = [iTunesMetadata4 betaVersionIdentifier];
    }

    else
    {
      iTunesMetadata4 = [v15 iTunesMetadata];
      betaVersionIdentifier = [iTunesMetadata4 versionIdentifier];
    }

    v31 = betaVersionIdentifier;

    if (v31)
    {
      v32 = [NSNumber numberWithUnsignedLongLong:v31];
      stringValue2 = [v32 stringValue];
      objc_msgSend_setObject_forKeyedSubscript_(v9);
    }

    iTunesMetadata5 = [v15 iTunesMetadata];
    distributorInfo = [iTunesMetadata5 distributorInfo];
    distributorID = [distributorInfo distributorID];

    if (distributorID)
    {
      v37 = +[OSASystemConfiguration sharedInstance];
      v38 = [v37 getTaskingKey:@"disableDistributorID"];
      bOOLValue = [v38 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v9);
      }
    }
  }

  else
  {
    if (v17)
    {
      *buf = 138543618;
      *v47 = lCopy;
      *&v47[8] = 2114;
      *&v47[10] = v16;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Unable to find store record for '%{public}@': %{public}@", buf, 0x16u);
    }

    v26 = v16;
  }

  if ([v9 count])
  {
    v40 = v9;
  }

  else
  {
    v40 = 0;
  }

  v41 = v40;

  return v40;
}

+ (id)loadBuildInfo:(id)info
{
  infoCopy = info;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_100030604();
  }

  v4 = [infoCopy URLByAppendingPathComponent:@"Contents"];
  v5 = [v4 URLByAppendingPathComponent:@"version.plist"];

  if (v5)
  {
    v6 = [[NSDictionary alloc] initWithContentsOfURL:v5];
    v7 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [&off_10004E490 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(&off_10004E490);
          }

          v12 = [v6 objectForKeyedSubscript:*(*(&v16 + 1) + 8 * v11)];
          if (v12)
          {
            objc_msgSend_setObject_forKeyedSubscript_(v7);
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [&off_10004E490 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10003067C(v7);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_1000306FC();
    }

    v7 = 0;
  }

  if ([v7 count])
  {
    v13 = v7;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)_extractVMMap:(_CSTypeRef)map
{
  var1 = map.var1;
  var0 = map.var0;
  v6 = [[VMUVMRegionIdentifier alloc] initWithTask:self->_task pid:self->_proc_id options:1];
  selfCopy = self;
  if (self->_isTranslated)
  {
    v40 = v6;
    regions = [v6 regions];
    v8 = objc_opt_new();
    rosettaRegions = self->_rosettaRegions;
    self->_rosettaRegions = v8;

    memset(uu, 0, sizeof(uu));
    uuid_clear(uu);
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = 0;
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100019804;
    v50[3] = &unk_1000454F8;
    v50[4] = &v51;
    [(OSACrashReport *)self _extractRosettaRuntimeInfo:var0 withBlock:var1, v50];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v10 = regions;
    v11 = [v10 countByEnumeratingWithState:&v46 objects:v60 count:16];
    if (!v11)
    {
      goto LABEL_10;
    }

    v12 = *v47;
    while (1)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v47 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v46 + 1) + 8 * i);
        v15 = v52[3];
        range = [v14 range];
        if ([OSACrashReport isAddress:v15 inRange:range, v17])
        {
          v18 = *&v14[OBJC_IVAR___VMUVMRegion_object_id];
LABEL_12:

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v19 = v10;
          v20 = [v19 countByEnumeratingWithState:&v42 objects:v59 count:16];
          if (!v20)
          {
            goto LABEL_27;
          }

          v21 = *v43;
          while (2)
          {
            v22 = 0;
LABEL_15:
            if (*v43 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = *(*(&v42 + 1) + 8 * v22);
            if (*&v23[OBJC_IVAR___VMUVMRegion_object_id] == v18)
            {
              v24 = selfCopy->_rosettaRegions;
              range2 = [*(*(&v42 + 1) + 8 * v22) range];
              [v23 range];
              [(NSMutableArray *)v24 addImageLegacy:uu address:range2 size:v26 name:"Rosetta Runtime Routines" path:0 arch:"arm64e"];
              v27 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                range3 = [v23 range];
                [v23 range];
                *buf = 134218240;
                v56 = range3;
                v57 = 2048;
                v58 = v29;
                v30 = "cached rosetta Runtime region %p + %llu";
                goto LABEL_23;
              }

              goto LABEL_24;
            }

            if (*&v23[OBJC_IVAR___VMUVMRegion_user_tag] == 234)
            {
              v31 = selfCopy->_rosettaRegions;
              range4 = [*(*(&v42 + 1) + 8 * v22) range];
              [v23 range];
              [(NSMutableArray *)v31 addImageLegacy:uu address:range4 size:v33 name:"<translation info unavailable>" path:0 arch:"x86_64"];
              v34 = &_os_log_default;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
              {
                range5 = [v23 range];
                [v23 range];
                *buf = 134218240;
                v56 = range5;
                v57 = 2048;
                v58 = v36;
                v30 = "cached rosetta JIT exec region %p + %llu";
LABEL_23:
                _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, v30, buf, 0x16u);
              }

LABEL_24:
            }

            if (v20 == ++v22)
            {
              v20 = [v19 countByEnumeratingWithState:&v42 objects:v59 count:16];
              if (!v20)
              {
LABEL_27:

                _Block_object_dispose(&v51, 8);
                v6 = v40;
                goto LABEL_28;
              }

              continue;
            }

            goto LABEL_15;
          }
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v46 objects:v60 count:16];
      if (!v11)
      {
LABEL_10:
        v18 = 0;
        goto LABEL_12;
      }
    }
  }

LABEL_28:
  v37 = v6;
  v38 = [v6 descriptionForRegionTotals:1];
  vmSummary = selfCopy->_vmSummary;
  selfCopy->_vmSummary = v38;
}

- (id)_descriptionForException:(id)exception
{
  exceptionCopy = exception;
  v4 = +[NSMutableString string];
  v5 = [exceptionCopy description];
  [v4 appendString:v5];

  [v4 appendString:@"\n"];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  callStackReturnAddresses = [exceptionCopy callStackReturnAddresses];
  v7 = [callStackReturnAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(callStackReturnAddresses);
        }

        [v4 appendFormat:@"0x%08x\n", objc_msgSend(*(*(&v12 + 1) + 8 * i), "intValue")];
      }

      v8 = [callStackReturnAddresses countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  return v4;
}

- (void)captureDiagInfo:(id)info
{
  infoCopy = info;
  v5 = +[OSASystemConfiguration sharedInstance];
  appleInternal = [v5 appleInternal];
  v7 = byte_1000540D0;

  if (appleInternal && (v7 & 1) == 0)
  {
    v8 = objc_opt_new();
    spewage_diag = self->_spewage_diag;
    self->_spewage_diag = v8;

    init_port_set = 0;
    init_port_setCnt = 0;
    if (qword_1000540F0 != -1)
    {
      sub_100030784();
    }

    v10 = &unk_100054000;
    if (dispatch_semaphore_wait(qword_1000540E8, 0))
    {
      v11 = self->_spewage_diag;
      v12 = [infoCopy componentsJoinedByString:{@", "}];
      objc_msgSend_setObject_forKeyedSubscript_(v11);

      goto LABEL_38;
    }

    if (mach_ports_lookup(mach_task_self_, &init_port_set, &init_port_setCnt))
    {
      v13 = self->_spewage_diag;
      v14 = [infoCopy componentsJoinedByString:{@", "}];
      objc_msgSend_setObject_forKeyedSubscript_(v13);

LABEL_37:
      dispatch_semaphore_signal(v10[29]);
      goto LABEL_38;
    }

    task = self->_task;
    if (mach_ports_register(mach_task_self_, &task, 1u))
    {
      v15 = self->_spewage_diag;
      v16 = [infoCopy componentsJoinedByString:{@", "}];
      objc_msgSend_setObject_forKeyedSubscript_(v15);

LABEL_29:
      v29 = init_port_setCnt;
      if (init_port_setCnt)
      {
        v30 = 0;
        do
        {
          v31 = init_port_set[v30];
          if (v31)
          {
            mach_port_deallocate(mach_task_self_, v31);
            v29 = init_port_setCnt;
          }

          ++v30;
        }

        while (v30 < v29);
        v32 = 4 * v29;
      }

      else
      {
        v32 = 0;
      }

      mig_deallocate(init_port_set, v32);
      goto LABEL_37;
    }

    v17 = byte_1000540D1;
    if (byte_1000540D2 == 1)
    {
      if ([(NSString *)self->_procName isEqualToString:@"SpringBoard"]|| [(NSString *)self->_procName isEqualToString:@"CommCenter"]|| [(NSString *)self->_procName isEqualToString:@"aggregated"]|| [(NSString *)self->_procName isEqualToString:@"addaily"]|| [(NSString *)self->_procName isEqualToString:@"coreduetd"]|| (v17 & 1) != 0)
      {
LABEL_20:
        if (*self->_exceptionCode == 3134085662)
        {
          v18 = "sysmemreset";
        }

        else
        {
          v18 = "resource";
        }

        procName = self->_procName;
        v20 = OSADateFormat();
        v21 = [NSMutableString stringWithFormat:@"/var/mobile/Library/Logs/CrashReporter/MemoryGraph_%@_%@-%s", procName, v20, v18];

        incidentID = [(OSACrashReport *)self incidentID];
        v23 = [NSString stringWithFormat:@"--outputGraph %@ --nonIPSMemgraphCount %lu --ipsIncidentID %@ --rateLimit --getCorpseFromParent %d", v21, 0, incidentID, self->_proc_id];

        v24 = sub_10000D580("/usr/bin/leaks", v23, dword_1000540CC, 0);
        self->_spewage_diag_total_length += [v24 length];
        objc_msgSend_setObject_forKeyedSubscript_(self->_spewage_diag);
        v25 = [v24 rangeOfString:@"'.*MemoryGraph_.+\\..+'" options:1024];
        if (v25 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"memgraph unable to parse filename from results"];
        }

        else
        {
          v27 = [v24 substringWithRange:{v25 + 1, v26 - 2}];
          memgraph_filename = self->_memgraph_filename;
          self->_memgraph_filename = v27;

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            sub_100030798();
          }
        }

LABEL_28:
        mach_ports_register(mach_task_self_, init_port_set, init_port_setCnt);
        goto LABEL_29;
      }
    }

    else if (byte_1000540D1)
    {
      goto LABEL_20;
    }

    v33 = [infoCopy count];
    if ([(NSArray *)self->_diagToolExtras count])
    {
      v34 = [infoCopy arrayByAddingObjectsFromArray:self->_diagToolExtras];

      infoCopy = v34;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v53 = infoCopy;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_INFO, "diag tools include: %@", buf, 0xCu);
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v21 = infoCopy;
    v35 = [v21 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = 0;
      v38 = *v45;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v21);
          }

          if (v37 >= v33)
          {
            v40 = &stru_1000463C0;
          }

          else
          {
            if (self->_exceptionType == 11)
            {
              v40 = @"--excResource";
            }

            else
            {
              v40 = @"--shortenedOutput";
            }

            ++v37;
          }

          uTF8String = [*(*(&v44 + 1) + 8 * i) UTF8String];
          v42 = [NSString stringWithFormat:@"%@ --getCorpseFromParent %d", v40, self->_proc_id];
          v43 = sub_10000D580(uTF8String, v42, dword_1000540CC, self->_spewage_diag_total_length);

          objc_msgSend_setObject_forKeyedSubscript_(self->_spewage_diag);
          self->_spewage_diag_total_length += [v43 length];
        }

        v36 = [v21 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v36);
      infoCopy = v21;
      v10 = &unk_100054000;
    }

    else
    {
      infoCopy = v21;
    }

    goto LABEL_28;
  }

LABEL_38:
}

- (void)decode_reasonDyldWithInfo:(id)info
{
  infoCopy = info;
  v47[0] = &off_10004D9E8;
  v47[1] = &off_10004DA00;
  v48[0] = @"Library missing";
  v48[1] = @"Wrong architecture";
  v47[2] = &off_10004DA18;
  v47[3] = &off_10004DA30;
  v48[2] = @"Wrong version";
  v48[3] = @"Symbol missing";
  v47[4] = &off_10004DA48;
  v47[5] = &off_10004DA60;
  v48[4] = @"Code Signature";
  v48[5] = @"Filesystem Sandbox";
  v47[6] = &off_10004DA78;
  v48[6] = @"Malformed Mach-O";
  v5 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:7];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v7 = [v5 objectForKeyedSubscript:v6];
  objc_msgSend_setObject_forKeyedSubscript_(infoCopy);

  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    if (self->_exit_payload_length < 0x14)
    {
      [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"Failed to extract dyld error info: The size of the data is not what is expected"];
    }

    else
    {
      if (exit_payload[4])
      {
        self->_fatalDyldErrorOnLaunch = 1;
        objc_msgSend_setObject_forKeyedSubscript_(infoCopy);
      }

      v32 = v5;
      v36 = objc_opt_new();
      v9 = *(exit_payload + 2);
      if (v9 && v9 < self->_exit_payload_length)
      {
        v10 = [NSString stringWithUTF8String:&exit_payload[v9]];
        v11 = OSASanitizePath();
        v12 = [NSString stringWithUTF8String:&exit_payload[v9]];
        objc_msgSend_setObject_forKeyedSubscript_(v36);
      }

      v13 = *(exit_payload + 3);
      if (v13 && v13 < self->_exit_payload_length)
      {
        v14 = [NSString stringWithUTF8String:&exit_payload[v13]];
        v15 = OSASanitizePath();
        v16 = [NSString stringWithUTF8String:&exit_payload[v13]];
        objc_msgSend_setObject_forKeyedSubscript_(v36);
      }

      v33 = infoCopy;
      v17 = [infoCopy objectForKeyedSubscript:@"reasons"];
      v35 = objc_opt_new();
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v42;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v42 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v41 + 1) + 8 * i);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v23 = v36;
            v24 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v38;
              do
              {
                v27 = 0;
                v28 = v22;
                do
                {
                  if (*v38 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v29 = *(*(&v37 + 1) + 8 * v27);
                  v30 = [v23 objectForKeyedSubscript:v29];
                  v22 = [v28 stringByReplacingOccurrencesOfString:v29 withString:v30];

                  v27 = v27 + 1;
                  v28 = v22;
                }

                while (v25 != v27);
                v25 = [v23 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v25);
            }

            [v35 addObject:v22];
          }

          v19 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
        }

        while (v19);
      }

      v31 = +[OSASystemConfiguration sharedInstance];
      [v31 appleInternal];

      infoCopy = v33;
      objc_msgSend_setObject_forKeyedSubscript_(v33);

      v5 = v32;
    }
  }
}

- (id)decode_versionCodes:(unsigned __int16)codes[4]
{
  v4 = [NSNumber numberWithUnsignedShort:*codes];
  v11[0] = v4;
  v5 = [NSNumber numberWithUnsignedShort:codes[1]];
  v11[1] = v5;
  v6 = [NSNumber numberWithUnsignedShort:codes[2]];
  v11[2] = v6;
  v7 = [NSNumber numberWithUnsignedShort:codes[3]];
  v11[3] = v7;
  v8 = [NSArray arrayWithObjects:v11 count:4];

  v9 = [v8 componentsJoinedByString:@"."];

  return v9;
}

- (id)decode_reasonBTC
{
  v3 = objc_opt_new();
  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    if (self->_exit_payload_length < 0x800)
    {
      [*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] addObject:@"Failed to extract BTC error info: The size of the data is not what is expected"];
    }

    else
    {
      v115 = (exit_payload + 269);
      memset(out, 0, 37);
      uuid_unparse(exit_payload + 5, out);
      v140[0] = @"bin_id";
      [NSNumber numberWithUnsignedInt:*(exit_payload + 1)];
      v5 = v118 = exit_payload;
      v141[0] = v5;
      v140[1] = @"uuid";
      v6 = [NSString stringWithUTF8String:out];
      v141[1] = v6;
      v140[2] = @"mac_version";
      v7 = [(OSACrashReport *)self decode_versionCodes:v118 + 21];
      v141[2] = v7;
      v140[3] = @"phy_version";
      v8 = [(OSACrashReport *)self decode_versionCodes:v118 + 29];
      v141[3] = v8;
      v9 = [NSDictionary dictionaryWithObjects:v141 forKeys:v140 count:4];
      objc_msgSend_setObject_forKeyedSubscript_(v3);

      v138[0] = @"id";
      v10 = [NSNumber numberWithUnsignedInt:*(v118 + 37)];
      v138[1] = @"params";
      v139[0] = v10;
      v11 = [NSNumber numberWithUnsignedInt:*(v118 + 41)];
      v137[0] = v11;
      v12 = [NSNumber numberWithUnsignedInt:*(v118 + 45)];
      v137[1] = v12;
      v13 = [NSNumber numberWithUnsignedInt:*(v118 + 49)];
      v137[2] = v13;
      v14 = [NSNumber numberWithUnsignedInt:*(v118 + 53)];
      v137[3] = v14;
      v15 = [NSArray arrayWithObjects:v137 count:4];
      v139[1] = v15;
      v16 = [NSDictionary dictionaryWithObjects:v139 forKeys:v138 count:2];
      v117 = v3;
      objc_msgSend_setObject_forKeyedSubscript_(v3);

      v17 = objc_opt_new();
      for (i = 0; i != 20; i += 4)
      {
        v19 = [NSNumber numberWithUnsignedInt:*&v118[i + 61]];
        [v17 addObject:v19];
      }

      v135[0] = @"pc";
      v20 = [NSNumber numberWithUnsignedInt:*(v118 + 57)];
      v136[0] = v20;
      v108 = v17;
      v136[1] = v17;
      v135[1] = @"lr";
      v135[2] = @"cpsr";
      v21 = [NSNumber numberWithUnsignedInt:*(v118 + 81)];
      v136[2] = v21;
      v135[3] = @"dfar";
      v22 = [NSNumber numberWithUnsignedInt:*(v118 + 85)];
      v136[3] = v22;
      v135[4] = @"dfsr";
      v23 = [NSNumber numberWithUnsignedInt:*(v118 + 89)];
      v136[4] = v23;
      v135[5] = @"ifar";
      v24 = [NSNumber numberWithUnsignedInt:*(v118 + 93)];
      v136[5] = v24;
      v135[6] = @"ifsr";
      v25 = [NSNumber numberWithUnsignedInt:*(v118 + 97)];
      v136[6] = v25;
      v114 = [NSDictionary dictionaryWithObjects:v136 forKeys:v135 count:7];

      v133[0] = @"vic0_vicrawintr";
      v111 = [NSNumber numberWithUnsignedInt:*(v118 + 101)];
      v134[0] = v111;
      v133[1] = @"vic1_vicrawintr";
      v109 = [NSNumber numberWithUnsignedInt:*(v118 + 105)];
      v134[1] = v109;
      v133[2] = @"vic2_vicrawintr";
      v106 = [NSNumber numberWithUnsignedInt:*(v118 + 109)];
      v134[2] = v106;
      v133[3] = @"irq_vic_0";
      v103 = [NSNumber numberWithUnsignedInt:*(v118 + 113)];
      v134[3] = v103;
      v133[4] = @"irq_vic_1";
      v100 = [NSNumber numberWithUnsignedInt:*(v118 + 117)];
      v134[4] = v100;
      v133[5] = @"irq_vic_2";
      v97 = [NSNumber numberWithUnsignedInt:*(v118 + 121)];
      v134[5] = v97;
      v133[6] = @"fiq_vic_0";
      v94 = [NSNumber numberWithUnsignedInt:*(v118 + 125)];
      v134[6] = v94;
      v133[7] = @"fiq_vic_1";
      v26 = [NSNumber numberWithUnsignedInt:*(v118 + 129)];
      v134[7] = v26;
      v133[8] = @"fiq_vic_2";
      v27 = [NSNumber numberWithUnsignedInt:*(v118 + 133)];
      v134[8] = v27;
      v133[9] = @"vic3_vicrawintr";
      v28 = [NSNumber numberWithUnsignedInt:*(v118 + 137)];
      v134[9] = v28;
      v133[10] = @"irq_vic_3";
      v29 = [NSNumber numberWithUnsignedInt:*(v118 + 141)];
      v134[10] = v29;
      v133[11] = @"fiq_vic_3";
      v30 = [NSNumber numberWithUnsignedInt:*(v118 + 145)];
      v134[11] = v30;
      v133[12] = @"raw_irq_status";
      v31 = [NSNumber numberWithUnsignedLongLong:*(v118 + 149)];
      v134[12] = v31;
      v133[13] = @"prev_raw_irq_status";
      v32 = [NSNumber numberWithUnsignedLongLong:*(v118 + 157)];
      v134[13] = v32;
      v113 = [NSDictionary dictionaryWithObjects:v134 forKeys:v133 count:14];

      v131[0] = @"local_bt_clk";
      v33 = [NSNumber numberWithUnsignedInt:*(v118 + 165)];
      v132[0] = v33;
      v131[1] = @"coex_activity_bits";
      v34 = [NSNumber numberWithUnsignedInt:*(v118 + 169)];
      v132[1] = v34;
      v131[2] = @"coex_envelop_bits";
      v35 = [NSNumber numberWithUnsignedInt:*(v118 + 173)];
      v132[2] = v35;
      v131[3] = @"top_semaphores_lock_status_hw";
      v36 = [NSNumber numberWithUnsignedInt:*(v118 + 177)];
      v132[3] = v36;
      v131[4] = @"top_semaphores_lock_status_fw";
      v37 = [NSNumber numberWithUnsignedInt:*(v118 + 181)];
      v132[4] = v37;
      v112 = [NSDictionary dictionaryWithObjects:v132 forKeys:v131 count:5];

      v38 = objc_opt_new();
      v39 = (v118 + 204);
      v40 = 3;
      do
      {
        v129[0] = @"syndrome";
        v41 = [NSNumber numberWithUnsignedInt:*(v39 - 4)];
        v130[0] = v41;
        v129[1] = @"far";
        v42 = [NSNumber numberWithUnsignedInt:*(v39 - 3)];
        v130[1] = v42;
        v129[2] = @"pc";
        v43 = [NSNumber numberWithUnsignedInt:*(v39 - 2)];
        v130[2] = v43;
        v129[3] = @"lr";
        v44 = [NSNumber numberWithUnsignedInt:*(v39 - 1)];
        v130[3] = v44;
        v129[4] = @"psr";
        v45 = *v39;
        v39 += 5;
        v46 = [NSNumber numberWithUnsignedInt:v45];
        v130[4] = v46;
        v47 = [NSDictionary dictionaryWithObjects:v130 forKeys:v129 count:5];
        [v38 addObject:v47];

        --v40;
      }

      while (v40);
      v127[0] = @"registers";
      v125[0] = @"arm";
      v125[1] = @"soc";
      v126[0] = v114;
      v126[1] = v113;
      v125[2] = @"bt";
      v126[2] = v112;
      v48 = [NSDictionary dictionaryWithObjects:v126 forKeys:v125 count:3];
      v128[0] = v48;
      v127[1] = @"context";
      v49 = [NSNumber numberWithUnsignedChar:v118[185]];
      v128[1] = v49;
      v127[2] = @"abort_counter";
      v50 = [NSNumber numberWithUnsignedChar:v118[186]];
      v128[2] = v50;
      v127[3] = @"unhandled_exception_counter";
      v51 = [NSNumber numberWithUnsignedChar:v118[187]];
      v128[3] = v51;
      v52 = v38;
      v128[4] = v38;
      v127[4] = @"unhandled_exception_info";
      v127[5] = @"system_exit_status";
      v53 = [NSNumber numberWithUnsignedChar:v118[248]];
      v128[5] = v53;
      v54 = [NSDictionary dictionaryWithObjects:v128 forKeys:v127 count:6];
      objc_msgSend_setObject_forKeyedSubscript_(v117);

      v55 = objc_opt_new();
      for (j = 0; j != 12; j += 4)
      {
        v57 = [NSNumber numberWithUnsignedInt:*&v118[j + 283]];
        [v55 addObject:v57];
      }

      v107 = v52;
      v58 = objc_opt_new();
      for (k = 0; k != 6; k += 2)
      {
        v60 = [NSNumber numberWithUnsignedShort:*&v118[k + 295]];
        [v58 addObject:v60];
      }

      v123[0] = @"rx_header_status";
      v104 = [NSNumber numberWithUnsignedInt:*(v118 + 249)];
      v124[0] = v104;
      v123[1] = @"tx_header_status";
      v101 = [NSNumber numberWithUnsignedShort:*(v118 + 253)];
      v124[1] = v101;
      v123[2] = @"sync_valid";
      v98 = [NSNumber numberWithUnsignedChar:v118[255]];
      v124[2] = v98;
      v123[3] = @"hw_machine_sig";
      v95 = [NSNumber numberWithUnsignedChar:v118[256]];
      v124[3] = v95;
      v123[4] = @"general_status";
      v92 = [NSNumber numberWithUnsignedChar:v118[257]];
      v124[4] = v92;
      v123[5] = @"esco_tx_en_state";
      v90 = [NSNumber numberWithUnsignedShort:*(v118 + 129)];
      v124[5] = v90;
      v123[6] = @"sch_current_mrl";
      v88 = [NSNumber numberWithUnsignedChar:v118[260]];
      v124[6] = v88;
      v123[7] = @"rx_data_type";
      v86 = [NSNumber numberWithUnsignedChar:v118[261]];
      v124[7] = v86;
      v123[8] = @"tx_data_type";
      v84 = [NSNumber numberWithUnsignedChar:v118[262]];
      v124[8] = v84;
      v123[9] = @"rx_packet_length";
      v82 = [NSNumber numberWithUnsignedChar:v118[263]];
      v124[9] = v82;
      v123[10] = @"tx_packet_length";
      v81 = [NSNumber numberWithUnsignedChar:v118[264]];
      v124[10] = v81;
      v123[11] = @"total_rx_tx_length";
      v80 = [NSNumber numberWithUnsignedChar:v118[265]];
      v124[11] = v80;
      v123[12] = @"rx_watchdog_timer_counter";
      v79 = [NSNumber numberWithUnsignedChar:v118[266]];
      v124[12] = v79;
      v123[13] = @"rx_watchdog_occured";
      v78 = [NSNumber numberWithUnsignedChar:v118[267]];
      v124[13] = v78;
      v123[14] = @"dbl_buf_index";
      v77 = [NSNumber numberWithUnsignedChar:v118[268]];
      v124[14] = v77;
      v123[15] = @"Block_activity_bitmask";
      v76 = [NSNumber numberWithUnsignedInt:*v115];
      v124[15] = v76;
      v123[16] = @"last_scheduled_btclk";
      v61 = [NSNumber numberWithUnsignedInt:v115[1]];
      v124[16] = v61;
      v123[17] = @"prev_scheduled_btclk";
      v62 = [NSNumber numberWithUnsignedInt:v115[2]];
      v124[17] = v62;
      v123[18] = @"prev_activity_type";
      v63 = [NSNumber numberWithUnsignedChar:v118[281]];
      v124[18] = v63;
      v123[19] = @"prev_virtual_clock_domain";
      v64 = [NSNumber numberWithUnsignedChar:v118[282]];
      v124[19] = v64;
      v124[20] = v55;
      v123[20] = @"bt_clk_freeze";
      v123[21] = @"pt_freeze";
      v124[21] = v58;
      v123[22] = @"sm_clk_freeze";
      v65 = [NSNumber numberWithUnsignedInt:v115[8]];
      v124[22] = v65;
      v110 = [NSDictionary dictionaryWithObjects:v124 forKeys:v123 count:23];

      v66 = objc_opt_new();
      for (m = 0; m != 256; ++m)
      {
        v68 = [NSNumber numberWithUnsignedChar:v118[m + 315]];
        [v66 addObject:v68];
      }

      v122[0] = v110;
      v121[0] = @"current_frame_status";
      v121[1] = @"max_dram_wakeup_duration";
      v116 = [NSNumber numberWithUnsignedShort:*(v115 + 18)];
      v122[1] = v116;
      v121[2] = @"dram_protection_mode";
      v105 = [NSNumber numberWithUnsignedChar:v118[307]];
      v122[2] = v105;
      v121[3] = @"dram_access_allowed";
      v102 = [NSNumber numberWithUnsignedChar:v118[308] & 1];
      v122[3] = v102;
      v121[4] = @"dram_is_enable";
      v99 = [NSNumber numberWithUnsignedChar:(v118[308] >> 1) & 1];
      v122[4] = v99;
      v121[5] = @"force_dram_awake_bit";
      v96 = [NSNumber numberWithUnsignedChar:(v118[308] >> 2) & 1];
      v122[5] = v96;
      v121[6] = @"etm_etb_enabled";
      v93 = [NSNumber numberWithUnsignedChar:(v118[308] >> 3) & 1];
      v122[6] = v93;
      v121[7] = @"trx_timers_supported";
      v91 = [NSNumber numberWithUnsignedChar:(v118[308] >> 4) & 1];
      v122[7] = v91;
      v121[8] = @"dart_error_occurred";
      v89 = [NSNumber numberWithUnsignedChar:(v118[308] >> 5) & 1];
      v122[8] = v89;
      v121[9] = @"syncrhonous_external_abort_occured";
      v87 = [NSNumber numberWithUnsignedChar:(v118[308] >> 6) & 1];
      v122[9] = v87;
      v121[10] = @"init_state";
      v85 = [NSNumber numberWithUnsignedChar:v118[309]];
      v122[10] = v85;
      v121[11] = @"recovery_state";
      v83 = [NSNumber numberWithUnsignedChar:v118[310]];
      v122[11] = v83;
      v121[12] = @"sleep_wakeup_state";
      v69 = [NSNumber numberWithUnsignedChar:v118[311]];
      v122[12] = v69;
      v121[13] = @"sleep_go_to_deep_sleep_state";
      v70 = [NSNumber numberWithUnsignedChar:v118[312]];
      v122[13] = v70;
      v121[14] = @"rtkit_assert_state";
      v71 = [NSNumber numberWithUnsignedChar:v118[313]];
      v122[14] = v71;
      v121[15] = @"rtkit_power_off_state";
      v72 = [NSNumber numberWithUnsignedChar:v118[314]];
      v121[16] = @"bulk_status_block";
      v122[15] = v72;
      v122[16] = v66;
      v73 = [NSDictionary dictionaryWithObjects:v122 forKeys:v121 count:17];
      v3 = v117;
      objc_msgSend_setObject_forKeyedSubscript_(v117);
    }
  }

  v119 = @"btc_info";
  v120 = v3;
  v74 = [NSDictionary dictionaryWithObjects:&v120 forKeys:&v119 count:1];

  return v74;
}

- (id)decode_reasonTcc
{
  if ((!self->_terminator_reason || (+[OSASystemConfiguration sharedInstance](OSASystemConfiguration, "sharedInstance"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 appleInternal], v3, (v4 & 1) == 0)) && self->_exit_payload && (exit_payload_length = self->_exit_payload_length) != 0 && (exit_payload_length >= 0x4F ? (v6 = 79) : (v6 = self->_exit_payload_length), __memcpy_chk(), v15[v6] = 0, +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v15), v7 = objc_claimAutoreleasedReturnValue(), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"This app has crashed because it attempted to access privacy-sensitive data without a usage description. The app's Info.plist must contain an %@ key with a string value explaining to the user how the app uses this data.", v7), v8 = objc_claimAutoreleasedReturnValue(), v7, v8))
  {
    v12 = v8;
    v13 = @"details";
    v9 = [NSArray arrayWithObjects:&v12 count:1];
    v14 = v9;
    v10 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
  }

  else
  {
    v10 = &__NSDictionary0__struct;
  }

  return v10;
}

- (id)decode_reasonExec
{
  v3 = objc_opt_new();
  v8[0] = &off_10004D9E8;
  v8[1] = &off_10004DA00;
  v9[0] = @"Bad Mach-O";
  v9[1] = @"SUGID Failure";
  v8[2] = &off_10004DA18;
  v8[3] = &off_10004DA30;
  v9[2] = @"Activation ThreadState";
  v9[3] = @"Stack Allocation";
  v8[4] = &off_10004DA48;
  v8[5] = &off_10004DA60;
  v9[4] = @"String Intialization";
  v9[5] = @"Copyout Strings";
  v8[6] = &off_10004DA78;
  v8[7] = &off_10004DA90;
  v9[6] = @"Copyout DynLinker";
  v9[7] = @"Security Policy";
  v8[8] = &off_10004DAA8;
  v8[9] = &off_10004DAC0;
  v9[8] = @"Task Gated";
  v9[9] = @"Fairplay Decryption";
  v8[10] = &off_10004DAD8;
  v8[11] = &off_10004DAF0;
  v9[10] = @"Decryption";
  v9[11] = @"This UPX compressed binary contains an invalid Mach-O header and cannot be loaded.";
  v8[12] = &off_10004DB08;
  v8[13] = &off_10004DB20;
  v9[12] = @"No 32-bit Execution";
  v9[13] = @"Binary with wrong platform";
  v8[14] = &off_10004DB38;
  v8[15] = &off_10004DB50;
  v9[14] = @"Main FD Allocation";
  v9[15] = @"Copyout Rosetta";
  v8[16] = &off_10004DBB0;
  v9[16] = @"x86 process execution is disabled via nox86exec boot-arg";
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:17];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  return v3;
}

- (id)decode_reasonCoreAnimation
{
  if (self->_exit_payload && self->_exit_payload_length)
  {
    v2 = [NSString stringWithUTF8String:?];
    v3 = [v2 componentsSeparatedByString:@"\n"];

    v4 = [v3 valueForKey:@"stringByTrimmingColumnSensitive"];
    v5 = [NSPredicate predicateWithFormat:@"SELF != ''"];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v9 = @"details";
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  return v7;
}

- (id)decode_reasonMetal
{
  if (self->_exit_payload && self->_exit_payload_length)
  {
    v2 = [NSString stringWithUTF8String:?];
    v3 = [v2 componentsSeparatedByString:@"\n"];

    v4 = [v3 valueForKey:@"stringByTrimming"];
    v5 = [NSPredicate predicateWithFormat:@"SELF != ''"];
    v6 = [v4 filteredArrayUsingPredicate:v5];
  }

  else
  {
    v6 = 0;
  }

  if ([v6 count])
  {
    v9 = @"details";
    v10 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  }

  else
  {
    v7 = &__NSDictionary0__struct;
  }

  return v7;
}

- (id)decode_reasonWatchKit
{
  v2 = objc_opt_new();

  return v2;
}

- (id)decode_reasonRealityKit
{
  v3 = objc_opt_new();
  v8[0] = &off_10004D9D0;
  v8[1] = &off_10004D9E8;
  v9[0] = @"RealityKit scene is too complex: SynchronizationComponent limit exceeded";
  v9[1] = @"RealityKit scene is too complex: ModelComponent limit exceeded";
  v8[2] = &off_10004DA00;
  v8[3] = &off_10004DA18;
  v9[2] = @"RealityKit scene is too complex: GroundingShadowComponent limit exceeded";
  v9[3] = @"RealityKit scene is too complex: (Directional + Spot + Point) LightComponent limit exceeded";
  v8[4] = &off_10004DA30;
  v9[4] = @"RealityKit scene is too complex: AudioPlaybackController limit exceeded";
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  return v3;
}

- (id)decode_reasonWatchdog
{
  v3 = objc_opt_new();
  v4 = [_TtC11ReportCrash25WatchdogTerminationReason descriptionFromCode:LODWORD(self->_exit_snapshot->ers_code)];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  terminator_reason = self->_terminator_reason;
  if (terminator_reason)
  {
    v6 = [(NSString *)terminator_reason componentsSeparatedByString:@"\n"];
    v7 = [v6 valueForKey:@"stringByTrimming"];
    v8 = [NSPredicate predicateWithFormat:@"SELF != ''"];
    v9 = [v7 filteredArrayUsingPredicate:v8];

    if ([v9 count])
    {
      objc_msgSend_setObject_forKeyedSubscript_(v3);
    }
  }

  return v3;
}

- (id)decode_reasonLibxpc
{
  label = xpc_exit_reason_get_label();
  v6 = @"indicator";
  if (label)
  {
    v3 = [NSString stringWithUTF8String:label];
  }

  else
  {
    v3 = @"<unknown>";
  }

  v7 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
  if (label)
  {
  }

  return v4;
}

- (id)decode_reasonPortSpace
{
  v3 = objc_opt_new();
  if ((self->_exit_snapshot->ers_code & 0x1C00000000000000) == 0x400000000000000)
  {
    0xFFFFFF = [NSString stringWithFormat:@"(Limit %u ports) Exceeded system-wide per-process Port Limit", self->_exit_snapshot->ers_code & 0xFFFFFF];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  return v3;
}

- (id)decode_reasonCodeSigning
{
  v3 = objc_opt_new();
  v8[0] = &off_10004DA00;
  v8[1] = &off_10004DA18;
  v9[0] = @"Invalid Page";
  v9[1] = @"Task Access Port";
  v8[2] = &off_10004D9E8;
  v8[3] = &off_10004DA30;
  v9[2] = @"Taskgated Invalid Signature";
  v9[3] = @"Launch Constraint Violation";
  v4 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];
  v5 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v6 = [v4 objectForKeyedSubscript:v5];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  return v3;
}

- (id)decode_reasonSandbox
{
  v3 = objc_opt_new();
  if (self->_exit_payload && self->_exit_payload_length)
  {
    v4 = [NSString stringWithUTF8String:?];
    v7 = v4;
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  return v3;
}

- (id)decode_reasonRosetta
{
  v3 = objc_opt_new();
  if (&_rosetta_create_exit_payload_string)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Attempting to decode Rosetta abort payload", v11, 2u);
    }

    exit_payload = self->_exit_payload;
    if (exit_payload)
    {
      if (self->_exit_payload_length < 0x800)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_100030818();
        }
      }

      else
      {
        1024 = [NSString stringWithUTF8String:exit_payload + 1024];
        v6 = 1024;
        if (1024)
        {
          v7 = [1024 cStringUsingEncoding:4];
          if (v7)
          {
            strlen(v7);
            v8 = [NSString stringWithUTF8String:rosetta_create_exit_payload_string()];
            v12 = v8;
            v9 = [NSArray arrayWithObjects:&v12 count:1];
            objc_msgSend_setObject_forKeyedSubscript_(v3);
          }
        }
      }
    }
  }

  return v3;
}

- (id)bls_presentationPayload:(id *)payload
{
  v14[0] = @"isNonNil";
  v4 = [NSNumber numberWithInt:-(*payload & 1)];
  v15[0] = v4;
  v14[1] = @"flipbookContext_wantsTransform";
  v5 = [NSNumber numberWithInt:(*payload << 30 >> 31)];
  v15[1] = v5;
  v14[2] = @"flipbookContext_inverted";
  v6 = [NSNumber numberWithInt:(*payload << 29 >> 31)];
  v15[2] = v6;
  v14[3] = @"num_presentationEntries";
  v7 = [NSNumber numberWithUnsignedInt:payload->var3];
  v15[3] = v7;
  v14[4] = @"presentationEntry0_identifier";
  v8 = [NSNumber numberWithUnsignedInt:payload->var4];
  v15[4] = v8;
  v14[5] = @"presentationEntry1_identifier";
  v9 = [NSNumber numberWithUnsignedInt:payload->var5];
  v15[5] = v9;
  v14[6] = @"presentationEntry2_identifier";
  v10 = [NSNumber numberWithUnsignedInt:payload->var6];
  v15[6] = v10;
  v14[7] = @"presentationEntry3_identifier";
  v11 = [NSNumber numberWithUnsignedInt:payload->var7];
  v15[7] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];

  return v12;
}

- (id)bls_aggregatePayload:(id *)payload
{
  v9[0] = @"displayMode";
  p_var1 = &payload->var1;
  v5 = [NSNumber numberWithInt:payload->var0];
  v9[1] = @"presentation";
  v10[0] = v5;
  v6 = [(OSACrashReport *)self bls_presentationPayload:p_var1];
  v10[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

- (id)bls_transitionPayload:(id *)payload
{
  v11[0] = @"isNonNil";
  v4 = [NSNumber numberWithInt:-(*payload & 1)];
  v12[0] = v4;
  v11[1] = @"environmentIdentifier";
  v5 = [NSNumber numberWithUnsignedInt:payload->var1];
  v12[1] = v5;
  v11[2] = @"updatingInitialState";
  v6 = [NSNumber numberWithInt:-(*(payload + 8) & 1)];
  v12[2] = v6;
  v11[3] = @"updatingVisualState";
  v7 = [NSNumber numberWithInt:(*(payload + 8) << 30 >> 31)];
  v12[3] = v7;
  v11[4] = @"animating";
  v8 = [NSNumber numberWithInt:(*(payload + 8) << 29 >> 31)];
  v12[4] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];

  return v9;
}

- (id)bls_environmentStateMachinePayload:(id *)payload
{
  v24[0] = @"isNonNil";
  v23 = [NSNumber numberWithInt:-(*payload & 1)];
  v25[0] = v23;
  v24[1] = @"presentation";
  v22 = [(OSACrashReport *)self bls_presentationPayload:&payload->var1];
  v25[1] = v22;
  v24[2] = @"num_updatingVisualStateTransitionStates";
  v21 = [NSNumber numberWithUnsignedInt:payload->var2];
  v25[2] = v21;
  v24[3] = @"updatingVisualStateTransitionState0";
  v20 = [(OSACrashReport *)self bls_transitionPayload:&payload->var3];
  v25[3] = v20;
  v24[4] = @"updatingVisualStateTransitionState1";
  v19 = [(OSACrashReport *)self bls_transitionPayload:&payload->var4];
  v25[4] = v19;
  v24[5] = @"updatingVisualStateTransitionState2";
  v18 = [(OSACrashReport *)self bls_transitionPayload:&payload->var5];
  v25[5] = v18;
  v24[6] = @"updatingVisualStateTransitionState3";
  v17 = [(OSACrashReport *)self bls_transitionPayload:&payload->var6];
  v25[6] = v17;
  v24[7] = @"num_updatingDateSpecifierTransitionStates";
  v16 = [NSNumber numberWithUnsignedInt:payload->var7];
  v25[7] = v16;
  v24[8] = @"updatingDateSpecifierTransitionState0";
  v5 = [(OSACrashReport *)self bls_transitionPayload:&payload->var8];
  v25[8] = v5;
  v24[9] = @"updatingDateSpecifierTransitionState1";
  v6 = [(OSACrashReport *)self bls_transitionPayload:&payload->var9];
  v25[9] = v6;
  v24[10] = @"updatingDateSpecifierTransitionState2";
  v7 = [(OSACrashReport *)self bls_transitionPayload:&payload->var10];
  v25[10] = v7;
  v24[11] = @"updatingDateSpecifierTransitionState3";
  v8 = [(OSACrashReport *)self bls_transitionPayload:&payload->var11];
  v25[11] = v8;
  v24[12] = @"backlightState";
  v9 = [NSNumber numberWithInt:payload->var12];
  v25[12] = v9;
  v24[13] = @"previousBacklightState";
  v10 = [NSNumber numberWithInt:payload->var13];
  v25[13] = v10;
  v24[14] = @"pendingNotifyBeganUpdatingState";
  v11 = [NSNumber numberWithInt:-(*(payload + 140) & 1)];
  v25[14] = v11;
  v24[15] = @"updatingState";
  v12 = [NSNumber numberWithInt:(*(payload + 140) << 30 >> 31)];
  v25[15] = v12;
  v24[16] = @"updatingPresentation";
  v13 = [NSNumber numberWithInt:(*(payload + 140) << 29 >> 31)];
  v25[16] = v13;
  v14 = [NSDictionary dictionaryWithObjects:v25 forKeys:v24 count:17];

  return v14;
}

- (id)bls_backlightChangeRequestPayload:(id *)payload
{
  if (*payload)
  {
    v10[0] = @"requestedActivityState";
    v5 = [NSNumber numberWithInt:payload->var1];
    v11[0] = v5;
    v10[1] = @"explanation";
    v6 = [NSNumber numberWithUnsignedInt:payload->var2];
    v11[1] = v6;
    v10[2] = @"timestamp";
    v7 = [NSNumber numberWithUnsignedLongLong:payload->var3];
    v11[2] = v7;
    v10[3] = @"sourceEvent";
    v8 = [NSNumber numberWithInt:payload->var4];
    v11[3] = v8;
    v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)bls_backlightChangeEventPayload:(id *)payload
{
  if (*payload)
  {
    v3 = objc_opt_new();
    v6 = [NSNumber numberWithUnsignedLongLong:payload->var1];
    objc_msgSend_setObject_forKeyedSubscript_(v3);

    v7 = [NSNumber numberWithInt:payload->var2];
    objc_msgSend_setObject_forKeyedSubscript_(v3);

    v8 = [NSNumber numberWithInt:payload->var3];
    objc_msgSend_setObject_forKeyedSubscript_(v3);

    v9 = [(OSACrashReport *)self bls_backlightChangeRequestPayload:&payload->var4];
    objc_msgSend_setObject_forKeyedSubscript_(v3);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)decode_reasonBacklightServices
{
  v3 = objc_opt_new();
  v105[0] = &off_10004D9E8;
  v105[1] = &off_10004DA00;
  v106[0] = @"Watchdog Transition State Machine";
  v106[1] = @"Watchdog Display State Machine";
  v105[2] = &off_10004DA18;
  v106[2] = @"Assert Critical Operation Completed Mismatched Backlight States";
  v4 = &create_gcore_with_options_ptr;
  v5 = [NSDictionary dictionaryWithObjects:v106 forKeys:v105 count:3];
  v6 = [NSNumber numberWithUnsignedLongLong:self->_exit_snapshot->ers_code];
  v7 = [v5 objectForKeyedSubscript:v6];
  objc_msgSend_setObject_forKeyedSubscript_(v3);

  exit_payload = self->_exit_payload;
  if (exit_payload)
  {
    ers_code = self->_exit_snapshot->ers_code;
    if (ers_code == 3)
    {
      if (self->_exit_payload_length < 0x290)
      {
        goto LABEL_29;
      }

      v75 = v3;
      v93[0] = @"version";
      v40 = [NSNumber numberWithUnsignedInt:*exit_payload];
      v94[0] = v40;
      v93[1] = @"state";
      v41 = [NSNumber numberWithInt:exit_payload[1]];
      v94[1] = v41;
      v93[2] = @"target_state";
      v42 = [NSNumber numberWithInt:exit_payload[2]];
      v94[2] = v42;
      v43 = [NSDictionary dictionaryWithObjects:v94 forKeys:v93 count:3];
      v10 = [v43 mutableCopy];

      v78 = v10;
      v81 = v5;
      selfCopy = self;
      if (exit_payload[3])
      {
        v84 = +[NSMutableArray array];
        if (exit_payload[3])
        {
          v44 = 0;
          v45 = exit_payload + 6;
          do
          {
            v91[0] = @"version";
            selfCopy = [NSNumber numberWithUnsignedInt:*(v45 - 2), selfCopy];
            v92[0] = selfCopy;
            v91[1] = @"state_machine_old_state";
            v47 = [NSNumber numberWithInt:*v45];
            v92[1] = v47;
            v91[2] = @"event_previous_state";
            v48 = [NSNumber numberWithInt:v45[1]];
            v92[2] = v48;
            v91[3] = @"event_new_state";
            v49 = [NSNumber numberWithInt:v45[2]];
            v92[3] = v49;
            v91[4] = @"started_time";
            v50 = [NSNumber numberWithUnsignedLongLong:*(v45 + 2)];
            v92[4] = v50;
            v51 = [NSDictionary dictionaryWithObjects:v92 forKeys:v91 count:5];
            [v84 addObject:v51];

            v4 = &create_gcore_with_options_ptr;
            ++v44;
            v45 += 8;
          }

          while (v44 < exit_payload[3]);
        }

        v10 = v78;
        objc_msgSend_setObject_forKeyedSubscript_(v78, selfCopy);

        v5 = v81;
        self = selfCopy;
      }

      if (exit_payload[44])
      {
        v85 = +[NSMutableArray array];
        if (exit_payload[44])
        {
          v52 = 0;
          v53 = (exit_payload + 52);
          do
          {
            v89[0] = @"version";
            selfCopy2 = [NSNumber numberWithUnsignedInt:*(v53 - 6), selfCopy];
            v90[0] = selfCopy2;
            v89[1] = @"environment_identifier";
            v55 = [NSNumber numberWithUnsignedInt:*(v53 - 4)];
            v90[1] = v55;
            v89[2] = @"new_state";
            v56 = [NSNumber numberWithInt:*(v53 - 3)];
            v90[2] = v56;
            v89[3] = @"pending_transition_state_count";
            v57 = [NSNumber numberWithUnsignedInt:*(v53 - 2)];
            v90[3] = v57;
            v89[4] = @"time";
            v58 = *v53;
            v53 += 4;
            v59 = [NSNumber numberWithUnsignedLongLong:v58];
            v90[4] = v59;
            v60 = [NSDictionary dictionaryWithObjects:v90 forKeys:v89 count:5];
            [v85 addObject:v60];

            v4 = &create_gcore_with_options_ptr;
            ++v52;
          }

          while (v52 < exit_payload[44]);
        }

        v10 = v78;
        objc_msgSend_setObject_forKeyedSubscript_(v78, selfCopy);

        v5 = v81;
        self = selfCopy;
      }

      if (exit_payload[86])
      {
        v86 = +[NSMutableArray array];
        if (exit_payload[86])
        {
          v61 = 0;
          v62 = (exit_payload + 94);
          do
          {
            v87[0] = @"version";
            selfCopy3 = [NSNumber numberWithUnsignedInt:*(v62 - 6), selfCopy];
            v88[0] = selfCopy3;
            v87[1] = @"environment_identifier";
            v64 = [NSNumber numberWithUnsignedInt:*(v62 - 4)];
            v88[1] = v64;
            v87[2] = @"new_state";
            v65 = [NSNumber numberWithInt:*(v62 - 3)];
            v88[2] = v65;
            v87[3] = @"pending_transition_state_count";
            v66 = [NSNumber numberWithUnsignedInt:*(v62 - 2)];
            v88[3] = v66;
            v87[4] = @"time";
            v67 = *v62;
            v62 += 4;
            v68 = [NSNumber numberWithUnsignedLongLong:v67];
            v88[4] = v68;
            v69 = [v4[475] dictionaryWithObjects:v88 forKeys:v87 count:5];
            [v86 addObject:v69];

            v4 = &create_gcore_with_options_ptr;
            ++v61;
          }

          while (v61 < exit_payload[86]);
        }

        v10 = v78;
        objc_msgSend_setObject_forKeyedSubscript_(v78, selfCopy);

        v5 = v81;
        self = selfCopy;
      }

      selfCopy4 = [(OSACrashReport *)self bls_environmentStateMachinePayload:exit_payload + 128, selfCopy];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v3 = v75;
      objc_msgSend_setObject_forKeyedSubscript_(v75);
      goto LABEL_28;
    }

    if (ers_code == 2)
    {
      if (self->_exit_payload_length < 0x14)
      {
        goto LABEL_29;
      }

      v95[0] = @"version";
      v77 = [NSNumber numberWithUnsignedInt:*exit_payload];
      v96[0] = v77;
      v95[1] = @"displayMode";
      v83 = [NSNumber numberWithInt:exit_payload[1]];
      v96[1] = v83;
      v95[2] = @"transitioningToDisplayMode";
      v74 = [NSNumber numberWithInt:exit_payload[2]];
      v96[2] = v74;
      v95[3] = @"lastSteadyStateDisplayMode";
      v32 = [NSNumber numberWithInt:exit_payload[3]];
      v96[3] = v32;
      v95[4] = @"isFlipbookEnabled";
      [NSNumber numberWithInt:-(exit_payload[4] & 1)];
      v34 = v33 = v3;
      v96[4] = v34;
      v95[5] = @"showingBlankingWindow";
      [NSNumber numberWithInt:(*(exit_payload + 16) << 30 >> 31)];
      v35 = v80 = v5;
      v96[5] = v35;
      v95[6] = @"backlightFactorOn";
      v36 = [NSNumber numberWithInt:(*(exit_payload + 16) << 29 >> 31)];
      v96[6] = v36;
      v95[7] = @"isCABlanked";
      v37 = [NSNumber numberWithInt:(*(exit_payload + 16) << 28 >> 31)];
      v96[7] = v37;
      v95[8] = @"displayIsOff";
      v38 = [NSNumber numberWithInt:(*(exit_payload + 16) << 27 >> 31)];
      v96[8] = v38;
      v39 = [NSDictionary dictionaryWithObjects:v96 forKeys:v95 count:9];
      objc_msgSend_setObject_forKeyedSubscript_(v33);

      v10 = v77;
      v5 = v80;

      v3 = v33;
      goto LABEL_28;
    }

    if (ers_code == 1 && self->_exit_payload_length >= 0x178)
    {
      v79 = v5;
      v73 = v3;
      v10 = objc_opt_new();
      v11 = [NSNumber numberWithUnsignedInt:*exit_payload];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v12 = [(OSACrashReport *)self bls_aggregatePayload:exit_payload + 1];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v13 = [(OSACrashReport *)self bls_aggregatePayload:exit_payload + 8];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v103[0] = @"isNonNil";
      v82 = [NSNumber numberWithInt:-(exit_payload[16] & 1)];
      v104[0] = v82;
      v103[1] = @"updatedInitialState";
      v76 = [NSNumber numberWithInt:(*(exit_payload + 64) << 30 >> 31)];
      v104[1] = v76;
      v103[2] = @"triggerEvent_eventID";
      v14 = [NSNumber numberWithUnsignedLongLong:*(exit_payload + 9)];
      v104[2] = v14;
      v103[3] = @"triggerEvent_state";
      v15 = [NSNumber numberWithInt:exit_payload[20]];
      v104[3] = v15;
      v103[4] = @"triggerEvent_previousState";
      [NSNumber numberWithInt:exit_payload[21]];
      v17 = v16 = self;
      v104[4] = v17;
      v103[5] = @"initialSpecifier_presentationDate";
      v18 = [NSNumber numberWithDouble:*(exit_payload + 11)];
      v104[5] = v18;
      v103[6] = @"initialSpecifier_presentationDate_num_specifiers";
      v19 = [NSNumber numberWithUnsignedInt:exit_payload[24]];
      v104[6] = v19;
      v20 = [NSDictionary dictionaryWithObjects:v104 forKeys:v103 count:7];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v21 = v16;
      v101 = @"isNonNil";
      v22 = [NSNumber numberWithInt:-(exit_payload[26] & 1)];
      v102 = v22;
      v23 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v99 = @"isNonNil";
      v24 = [NSNumber numberWithInt:-(exit_payload[27] & 1)];
      v100 = v24;
      v25 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v97[0] = @"isNonNil";
      v26 = [NSNumber numberWithInt:-(exit_payload[28] & 1)];
      v97[1] = @"displayMode";
      v98[0] = v26;
      v27 = [NSNumber numberWithInt:exit_payload[29]];
      v98[1] = v27;
      v28 = [NSDictionary dictionaryWithObjects:v98 forKeys:v97 count:2];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      v29 = [(OSACrashReport *)v21 bls_environmentStateMachinePayload:exit_payload + 30];
      objc_msgSend_setObject_forKeyedSubscript_(v10);

      if (*exit_payload >= 2)
      {
        v30 = [(OSACrashReport *)v21 bls_backlightChangeEventPayload:exit_payload + 66];
        objc_msgSend_setObject_forKeyedSubscript_(v10);

        v31 = [(OSACrashReport *)v21 bls_backlightChangeEventPayload:exit_payload + 80];
        objc_msgSend_setObject_forKeyedSubscript_(v10);
      }

      v3 = v73;
      objc_msgSend_setObject_forKeyedSubscript_(v73);
      v5 = v79;
LABEL_28:
    }
  }

LABEL_29:

  return v3;
}

- (id)safe_encoder:(unsigned int)safe_encoder
{
  if (!safe_encoder)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  exit_payload_length = self->_exit_payload_length;
  if (exit_payload_length <= safe_encoder)
  {
    goto LABEL_8;
  }

  safe_encoderCopy = safe_encoder;
  exit_payload = self->_exit_payload;
  v6 = &exit_payload[safe_encoder];
  v7 = exit_payload;
  while (*v6)
  {
LABEL_7:
    ++v6;
    LODWORD(exit_payload) = exit_payload + 1;
    if (v6 >= &v7[exit_payload_length])
    {
      goto LABEL_8;
    }
  }

  v8 = (exit_payload - v7);
  v9 = malloc_type_malloc((4 * v8) | 1, 0x13D883AAuLL);
  v7 = self->_exit_payload;
  if (!v9)
  {
    exit_payload_length = self->_exit_payload_length;
    goto LABEL_7;
  }

  v12 = v9;
  if (strnvisx(v9, (4 * v8) | 1, &v7[safe_encoderCopy], v8, 18) == -1)
  {
    free(v12);
    goto LABEL_8;
  }

  v10 = [NSString stringWithUTF8String:v12];
  free(v12);
  if (!v10)
  {
LABEL_8:
    AnalyticsSendEventLazy();
    goto LABEL_9;
  }

LABEL_10:

  return v10;
}

- (id)decode_ubsanCode:(unsigned __int8)code
{
  codeCopy = code;
  code = [NSString stringWithFormat:@"unknown (0x%02x)", code];
  if ([&off_10004E4D8 count] <= codeCopy)
  {
    v5 = code;
  }

  else
  {
    v5 = [&off_10004E4D8 objectAtIndexedSubscript:codeCopy];
  }

  v6 = v5;

  return v6;
}

+ (id)decode_syndrome:(unsigned int)decode_syndrome
{
  if ((decode_syndrome & 0x3F) == 0x3F)
  {
    return 0;
  }

  else
  {
    return off_100045870[decode_syndrome & 0x3F];
  }
}

- (id)decode_esr:(unsigned int *)decode_esr exceptionStateCount:(unsigned int)count
{
  if (!count)
  {
    v7 = 0;
    goto LABEL_35;
  }

  v6 = objc_opt_new();
  v7 = v6;
  v8 = decode_esr[2];
  v9 = v8 >> 26;
  if (v8 >> 26 <= 0x21)
  {
    if (v9 - 32 < 2)
    {
      [v6 setString:@"(Instruction Abort)"];
      if ((v8 & 0x1000000) == 0)
      {
        goto LABEL_25;
      }

LABEL_28:
      v13 = @" No valid info";
LABEL_29:
      [v7 appendFormat:v13, v16];
      goto LABEL_35;
    }

    if (v9 != 17 && v9 != 21)
    {
      goto LABEL_35;
    }

    v12 = @"(Syscall)";
LABEL_34:
    [v6 setString:v12];
    goto LABEL_35;
  }

  if (v8 >> 26 <= 0x25)
  {
    if (v9 - 36 < 2)
    {
      [v6 setString:@"(Data Abort)"];
      if ((v8 & 0x1000000) == 0)
      {
        [v7 appendFormat:*(&off_100045A68 + ((v8 >> 22) & 3))];
        if ((v8 & 0x40) != 0)
        {
          v10 = @" write";
        }

        else
        {
          v10 = @" read";
        }

        [v7 appendFormat:v10];
LABEL_25:
        0xFFFFFF = [OSACrashReport decode_syndrome:v8 & 0xFFFFFF];
        if (0xFFFFFF)
        {
          [v7 appendString:0xFFFFFF];
        }

        goto LABEL_27;
      }

      goto LABEL_28;
    }

    if (v9 != 34)
    {
      goto LABEL_35;
    }

    v12 = @"(PC alignment)";
    goto LABEL_34;
  }

  if (v9 == 38)
  {
    v12 = @"(Stack alignment)";
    goto LABEL_34;
  }

  if (v9 != 60)
  {
    goto LABEL_35;
  }

  [v6 setString:@"(Breakpoint)"];
  if ((v8 & 0xFFFC) == 0xC470)
  {
    [v7 appendFormat:@" pointer authentication trap"];
    if ((v8 & 3) > 1)
    {
      if ((v8 & 3) == 2)
      {
        v13 = @" DA";
      }

      else
      {
        v13 = @" DB";
      }
    }

    else if ((v8 & 3) != 0)
    {
      v13 = @" IB";
    }

    else
    {
      v13 = @" IA";
    }

    goto LABEL_29;
  }

  if ((v8 & 0x1FFFF) == 0x5519)
  {
    v13 = @" -fbounds-safety trap";
    goto LABEL_29;
  }

  if ((v8 & 0x1FF00) == 0x5500)
  {
    0xFFFFFF = [(OSACrashReport *)self decode_ubsanCode:v8];
    [v7 appendFormat:@" UBSAN %@", 0xFFFFFF];
LABEL_27:

    goto LABEL_35;
  }

  [v7 appendFormat:@" brk %d", v8 & 0x1FFFFFF];
LABEL_35:

  return v7;
}

- (id)decode_threadState:(unsigned int *)state threadStateCount:(unsigned int)count threadStateFlavor:(int)flavor threadPort:(unsigned int)port exceptionState:(unsigned int)exceptionState[1296] exceptionStateCount:(unsigned int)stateCount withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)self0
{
  v10 = *&flavor;
  catalogCopy = catalog;
  v15 = [(OSACrashReport *)self _getObjCReadOnlyRange:symbolicator.var0, symbolicator.var1];
  v17 = 0;
  if (!count || v10 == 5)
  {
    goto LABEL_40;
  }

  v18 = v15;
  v19 = v16;
  v20 = objc_opt_new();
  v17 = v20;
  if (v10 != 6)
  {
    if (v10 != 1)
    {
      goto LABEL_38;
    }

    state += 2;
  }

  v21 = state[67];
  v22 = *(state + 32);
  if ((v21 & 1) == 0)
  {
    v22 = *(state + 32);
  }

  *(state + 32) = v22;
  v23 = *(state + 30);
  if ((v21 & 3) == 0)
  {
    v23 = *(state + 30);
  }

  *(state + 30) = v23;
  if ((v21 & 1) == 0)
  {
    *(state + 31) = *(state + 31);
  }

  *(state + 29) = *(state + 29);
  isTranslated = self->_isTranslated;
  state[67] = v21 & 0xFFFFFFF2 | 1;
  v96 = v20;
  if (!isTranslated)
  {
    unsignedLongLongValue2 = 0;
    unsignedLongLongValue = 0;
    goto LABEL_22;
  }

  if (self->_isCrashInRosettaRuntime)
  {
    unsignedLongLongValue2 = 0;
    unsignedLongLongValue = 0;
  }

  else
  {
    v25 = [_TtC11ReportCrash17ThreadStateBridge threadStateTranslationPairWithTask:self->_task cpuType:self->_cpuType state:state];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 objectAtIndexedSubscript:0];
      unsignedLongLongValue = [v27 unsignedLongLongValue];

      v28 = [v26 objectAtIndexedSubscript:1];
      unsignedLongLongValue2 = [v28 unsignedLongLongValue];

      v17 = v96;
    }

    else
    {
      unsignedLongLongValue2 = 0;
      unsignedLongLongValue = 0;
    }

    if (!self->_isTranslated)
    {
      goto LABEL_22;
    }
  }

  if (self->_cpuType == 16777223 && !self->_isCrashInRosettaRuntime)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v17);
    catalogCopy = [(OSACrashReport *)self _symbolicateRegister:*state inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy2 = [(OSACrashReport *)self _symbolicateRegister:*(state + 3) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy3 = [(OSACrashReport *)self _symbolicateRegister:*(state + 1) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy4 = [(OSACrashReport *)self _symbolicateRegister:*(state + 2) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy5 = [(OSACrashReport *)self _symbolicateRegister:*(state + 7) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy6 = [(OSACrashReport *)self _symbolicateRegister:*(state + 6) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy7 = [(OSACrashReport *)self _symbolicateRegister:*(state + 5) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy8 = [(OSACrashReport *)self _symbolicateRegister:*(state + 4) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy9 = [(OSACrashReport *)self _symbolicateRegister:*(state + 8) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy10 = [(OSACrashReport *)self _symbolicateRegister:*(state + 9) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy11 = [(OSACrashReport *)self _symbolicateRegister:*(state + 10) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy12 = [(OSACrashReport *)self _symbolicateRegister:*(state + 11) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy13 = [(OSACrashReport *)self _symbolicateRegister:*(state + 12) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy14 = [(OSACrashReport *)self _symbolicateRegister:*(state + 13) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy15 = [(OSACrashReport *)self _symbolicateRegister:*(state + 14) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    catalogCopy16 = [(OSACrashReport *)self _symbolicateRegister:*(state + 15) inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    v78 = *(state + 32);
    if (!v78 || (state[67] & 1) != 0)
    {
      v79 = &create_gcore_with_options_ptr;
      v80 = &create_gcore_with_options_ptr;
      v82 = unsignedLongLongValue;
    }

    else
    {
      v79 = &create_gcore_with_options_ptr;
      v80 = &create_gcore_with_options_ptr;
      v82 = unsignedLongLongValue;
    }

    if (v78 == v82)
    {
      v125 = @"value";
      v83 = [v80[451] numberWithUnsignedLongLong:unsignedLongLongValue2];
      v126 = v83;
      v84 = [v79[475] dictionaryWithObjects:&v126 forKeys:&v125 count:1];
      objc_msgSend_setObject_forKeyedSubscript_(v96);
    }

    if (&_rosetta_get_rflags)
    {
      v123 = @"value";
      v85 = [v80[451] numberWithUnsignedLongLong:rosetta_get_rflags()];
      v124 = v85;
      v86 = [v79[475] dictionaryWithObjects:&v124 forKeys:&v123 count:1];
      objc_msgSend_setObject_forKeyedSubscript_(v96);
    }

    v121[0] = @"tmp0";
    v119 = @"value";
    v29 = [v80[451] numberWithUnsignedLongLong:*(state + 22)];
    v120 = v29;
    v53 = [v79[475] dictionaryWithObjects:&v120 forKeys:&v119 count:1];
    v122[0] = v53;
    v121[1] = @"tmp1";
    v117 = @"value";
    v54 = [v80[451] numberWithUnsignedLongLong:*(state + 23)];
    v118 = v54;
    v87 = [v79[475] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
    v122[1] = v87;
    v121[2] = @"tmp2";
    v115 = @"value";
    v88 = [v80[451] numberWithUnsignedLongLong:*(state + 24)];
    v116 = v88;
    v89 = [v79[475] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
    v122[2] = v89;
    v90 = [v79[475] dictionaryWithObjects:v122 forKeys:v121 count:3];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    v17 = v96;
    goto LABEL_35;
  }

LABEL_22:
  v93 = v10;
  objc_msgSend_setObject_forKeyedSubscript_(v17);
  v29 = objc_opt_new();
  for (i = 0; i != 58; i += 2)
  {
    catalogCopy17 = [(OSACrashReport *)self _symbolicateRegister:*&state[i] inRange:v18 withSymbolicator:v19 usingCatalog:symbolicator.var0, symbolicator.var1, catalogCopy];
    [v29 addObject:catalogCopy17];
  }

  v17 = v96;
  objc_msgSend_setObject_forKeyedSubscript_(v96);
  v113 = @"value";
  v32 = [NSNumber numberWithUnsignedLong:?];
  v114 = v32;
  v33 = [NSDictionary dictionaryWithObjects:&v114 forKeys:&v113 count:1];
  objc_msgSend_setObject_forKeyedSubscript_(v96);

  if (self->_isTranslated && self->_cpuType == 16777228 && !self->_isCrashInRosettaRuntime)
  {
    v57 = sub_10000A614(self->_task, *(state + 18) + 320, 8uLL);
    if (v57)
    {
      v58 = v57;
      v111 = @"value";
      v59 = [NSNumber numberWithUnsignedLongLong:*v57];
      v112 = v59;
      v60 = [NSDictionary dictionaryWithObjects:&v112 forKeys:&v111 count:1];
      objc_msgSend_setObject_forKeyedSubscript_(v96);

      free(v58);
    }

    v61 = *(state + 32);
    if (!v61 || (state[67] & 1) != 0)
    {
      v17 = v96;
      v81 = unsignedLongLongValue;
    }

    else
    {
      v17 = v96;
      v81 = unsignedLongLongValue;
    }

    if (v61 != v81)
    {
      goto LABEL_29;
    }

    v109 = @"value";
    v36 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue2];
    v110 = v36;
    v37 = &v110;
    v38 = &v109;
  }

  else
  {
    v107 = @"value";
    v34 = [NSNumber numberWithUnsignedLong:?];
    v108 = v34;
    v35 = [NSDictionary dictionaryWithObjects:&v108 forKeys:&v107 count:1];
    objc_msgSend_setObject_forKeyedSubscript_(v96);

    v105 = @"value";
    v36 = [NSNumber numberWithUnsignedLong:?];
    v106 = v36;
    v37 = &v106;
    v38 = &v105;
  }

  v39 = [NSDictionary dictionaryWithObjects:v37 forKeys:v38 count:1];
  objc_msgSend_setObject_forKeyedSubscript_(v17);

LABEL_29:
  v40 = *(state + 31);
  if (HIWORD(v40))
  {
    v41 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    v42 = [NSString stringWithFormat:@"SP register contains suspicious bits (0x%llX)", v40];
    [v41 addObject:v42];

    v17 = v96;
  }

  v103 = @"value";
  v43 = [NSNumber numberWithUnsignedLongLong:v40];
  v104 = v43;
  v44 = [NSDictionary dictionaryWithObjects:&v104 forKeys:&v103 count:1];
  objc_msgSend_setObject_forKeyedSubscript_(v17);

  v101 = @"value";
  v45 = [NSNumber numberWithUnsignedInt:state[66]];
  v102 = v45;
  v46 = [NSDictionary dictionaryWithObjects:&v102 forKeys:&v101 count:1];
  objc_msgSend_setObject_forKeyedSubscript_(v17);

  if (!stateCount)
  {
    v10 = v93;
    goto LABEL_37;
  }

  v47 = exceptionState[2];
  v48 = *exceptionState;
  v99 = @"value";
  v49 = [NSNumber numberWithUnsignedLongLong:v48];
  v100 = v49;
  v50 = [NSDictionary dictionaryWithObjects:&v100 forKeys:&v99 count:1];
  objc_msgSend_setObject_forKeyedSubscript_(v17);

  v97 = @"value";
  v51 = [NSNumber numberWithUnsignedInt:v47];
  v98 = v51;
  v52 = [NSDictionary dictionaryWithObjects:&v98 forKeys:&v97 count:1];
  v53 = [v52 mutableCopy];

  v54 = [(OSACrashReport *)self decode_esr:exceptionState exceptionStateCount:stateCount];
  if ([v54 length])
  {
    objc_msgSend_setObject_forKeyedSubscript_(v53);
  }

  objc_msgSend_setObject_forKeyedSubscript_(v17);
  v10 = v93;
LABEL_35:

LABEL_37:
LABEL_38:
  if (!v17)
  {
    v55 = [NSString stringWithFormat:@"%d", v10];
    objc_msgSend_setObject_forKeyedSubscript_(0);
  }

LABEL_40:

  return v17;
}

- (id)decode_crashingThreadStateWithSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  catalogCopy = catalog;
  if (self->_crashedThreadNumber < 0 || [(NSMutableArray *)self->_threadInfos count]<= self->_crashedThreadNumber)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v8 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:?];
  v9 = [v8 objectForKeyedSubscript:@"threadState"];

  if (![v9 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Falling back to fetching thread state from stored values", buf, 2u);
    }

    catalogCopy = [(OSACrashReport *)self decode_threadState:self->_threadState threadStateCount:self->_threadStateCount threadStateFlavor:self->_threadStateFlavor threadPort:self->_threadPortOriginal exceptionState:self->_exceptionState exceptionStateCount:self->_exceptionStateCount withSymbolicator:var0 usingCatalog:var1, catalogCopy];

    v9 = catalogCopy;
  }

  v11 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
  v12 = [v11 objectForKeyedSubscript:@"frames"];

  if (![v12 count])
  {
    goto LABEL_18;
  }

  v13 = [v12 objectAtIndexedSubscript:0];
  usedImages = self->_usedImages;
  v15 = [v13 objectForKeyedSubscript:@"imageIndex"];
  v16 = -[NSArray objectAtIndex:](usedImages, "objectAtIndex:", [v15 intValue]);

  v17 = [v16 objectForKeyedSubscript:@"base"];
  longLongValue = [v17 longLongValue];
  v19 = [v13 objectForKeyedSubscript:@"imageOffset"];
  longLongValue2 = [v19 longLongValue];

  if (v9)
  {
    v21 = &longLongValue[longLongValue2];
    if (&longLongValue[longLongValue2])
    {
      if (self->_isTranslated)
      {
        v22 = @"pc";
        v23 = "PC";
        if (self->_cpuType == 16777223 && !self->_isCrashInRosettaRuntime)
        {
          v23 = "RIP";
          v22 = @"rip";
        }
      }

      else
      {
        v22 = @"pc";
        v23 = "PC";
      }

      v24 = [v9 objectForKeyedSubscript:v22];
      v25 = [v24 objectForKeyedSubscript:@"value"];
      longLongValue3 = [v25 longLongValue];

      v27 = [v9 objectForKeyedSubscript:v22];
      v12 = [v27 mutableCopy];

      v28 = [NSNumber numberWithInt:v21 == longLongValue3];
      objc_msgSend_setObject_forKeyedSubscript_(v12);

      objc_msgSend_setObject_forKeyedSubscript_(v9);
      if (v21 != longLongValue3)
      {
        v29 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
        v30 = [NSString stringWithFormat:@"%s register does not match crashing frame (0x%llX vs 0x%llX)", v23, longLongValue3, v21];
        [v29 addObject:v30];
      }

LABEL_18:
    }
  }

LABEL_19:

  return v9;
}

- (id)decode_threadState:(unsigned int)state withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  v7 = *&state;
  catalogCopy = catalog;
  old_stateCnt = 68;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *old_state = 0u;
  *v17 = 0;
  v18 = 0;
  v16 = 4;
  state = thread_get_state(v7, 6, old_state, &old_stateCnt);
  if (state)
  {
    v11 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    [NSString stringWithFormat:@"thread_get_state(THREAD) returned 0x%x: %s", state, mach_error_string(state)];
    v13 = LABEL_5:;
    [v11 addObject:v13];

    catalogCopy = 0;
    goto LABEL_6;
  }

  v12 = thread_get_state(v7, 7, v17, &v16);
  if (v12)
  {
    v11 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
    [NSString stringWithFormat:@"thread_get_state(EXCEPTION) returned 0x%x: %s", v12, mach_error_string(v12)];
    goto LABEL_5;
  }

  catalogCopy = [(OSACrashReport *)self decode_threadState:old_state threadStateCount:old_stateCnt threadStateFlavor:6 threadPort:v7 exceptionState:v17 exceptionStateCount:v16 withSymbolicator:var0 usingCatalog:var1, catalogCopy];
LABEL_6:

  return catalogCopy;
}

- (id)_symbolicateRegister:(unint64_t)register inRange:(_CSRange)range withSymbolicator:(_CSTypeRef)symbolicator usingCatalog:(id)catalog
{
  var1 = symbolicator.var1;
  var0 = symbolicator.var0;
  v8 = range.var1;
  v9 = range.var0;
  catalogCopy = catalog;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_10001FCC4;
  v23 = sub_10001FCD4;
  v25 = @"value";
  v13 = [NSNumber numberWithUnsignedLongLong:register];
  v26 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  v24 = [v14 mutableCopy];

  if (register - v9 < v8)
  {
    v15 = [(OSACrashReport *)self _readStringAtTaskAddress:register maxLength:0 immutableCheck:0 isInSharedCache:0];
    objc_msgSend_setObject_forKeyedSubscript_(v20[5]);
  }

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001FCDC;
  v18[3] = &unk_100045660;
  v18[4] = &v19;
  [(OSACrashReport *)self symbolicateFrame:register adjusted:register withSymbolicator:var0 usingCatalog:var1 andBlock:catalogCopy, v18];
  v16 = v20[5];
  _Block_object_dispose(&v19, 8);

  return v16;
}

- (_CSRange)_getObjCReadOnlyRange:(_CSTypeRef)range
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v13 = 0;
  v14 = 0;
  v12 = "";
  if ((CSIsNull() & 1) == 0)
  {
    CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    if ((CSIsNull() & 1) == 0)
    {
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v8 = 0;
      CSSymbolOwnerForeachSegment();
      _Block_object_dispose(v7, 8);
    }
  }

  v3 = v10[4];
  v4 = v10[5];
  _Block_object_dispose(&v9, 8);
  v5 = v3;
  v6 = v4;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)generateLogAtLevel:(BOOL)level withBlock:(id)block
{
  blockCopy = block;
  [(OSACrashReport *)self stashStatus:@"Persisting" note:0];
  v6 = +[OSASystemConfiguration sharedInstance];
  appleInternal = [v6 appleInternal];

  v357[0] = @"incident";
  incidentID = [(OSACrashReport *)self incidentID];
  v358[0] = incidentID;
  v358[1] = &off_10004DA00;
  v357[1] = @"version";
  v357[2] = @"deployVersion";
  v358[2] = &off_10004DDC0;
  v357[3] = @"modelCode";
  v209 = +[OSASystemConfiguration sharedInstance];
  modelCode = [v209 modelCode];
  v358[3] = modelCode;
  v357[4] = @"pid";
  v205 = [NSNumber numberWithInt:self->_proc_id];
  v358[4] = v205;
  v357[5] = @"cpuType";
  decode_cpuType = [(OSACrashReport *)self decode_cpuType];
  v358[5] = decode_cpuType;
  v357[6] = @"translated";
  v202 = [NSNumber numberWithBool:self->_isTranslated];
  v358[6] = v202;
  v357[7] = @"procRole";
  task_role = self->_task_role;
  if (task_role > 7)
  {
    v8 = @"unknown";
  }

  else
  {
    v8 = *(&off_100045A88 + task_role);
  }

  v358[7] = v8;
  v357[8] = @"coalitionID";
  v201 = [NSNumber numberWithUnsignedLongLong:self->_coalition_id];
  v358[8] = v201;
  v357[9] = @"osVersion";
  v356[0] = &__kCFBooleanTrue;
  v355[0] = @"isEmbedded";
  v355[1] = @"train";
  v200 = +[OSASystemConfiguration sharedInstance];
  osTrain = [v200 osTrain];
  v356[1] = osTrain;
  v355[2] = @"build";
  v198 = +[OSASystemConfiguration sharedInstance];
  buildVersion = [v198 buildVersion];
  v356[2] = buildVersion;
  v355[3] = @"releaseType";
  v196 = +[OSASystemConfiguration sharedInstance];
  releaseType = [v196 releaseType];
  v356[3] = releaseType;
  v10 = [NSDictionary dictionaryWithObjects:v356 forKeys:v355 count:4];
  v358[9] = v10;
  v357[10] = @"captureTime";
  v11 = OSADateFormat();
  v358[10] = v11;
  v357[11] = @"uptime";
  v12 = [objc_opt_class() reduceToTwoSigFigures:self->_awakeSystemUptime];
  v358[11] = v12;
  v357[12] = @"userID";
  v13 = [NSNumber numberWithUnsignedInt:self->_uid];
  v358[12] = v13;
  v357[13] = @"codeSigningMonitor";
  v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [objc_opt_class() codeSigningMonitor]);
  v358[13] = v14;
  v15 = [NSDictionary dictionaryWithObjects:v358 forKeys:v357 count:14];
  blockCopy[2](blockCopy, v15);

  v16 = &create_gcore_with_options_ptr;
  problemType = [(OSACrashReport *)self problemType];
  v18 = [OSALog commonFieldsForBody:problemType];
  blockCopy[2](blockCopy, v18);

  if (self->_proc_starttime.tv_sec >= 1)
  {
    v353 = @"procLaunch";
    v19 = OSADateFormat();
    v354 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v354 forKeys:&v353 count:1];
    blockCopy[2](blockCopy, v20);
  }

  if (self->_proc_start_abstime)
  {
    v351 = @"procStartAbsTime";
    v21 = [NSNumber numberWithUnsignedLongLong:?];
    v352 = v21;
    v22 = [NSDictionary dictionaryWithObjects:&v352 forKeys:&v351 count:1];
    blockCopy[2](blockCopy, v22);
  }

  if (self->_proc_exit_abstime)
  {
    v349 = @"procExitAbsTime";
    v23 = [NSNumber numberWithUnsignedLongLong:?];
    v350 = v23;
    v24 = [NSDictionary dictionaryWithObjects:&v350 forKeys:&v349 count:1];
    blockCopy[2](blockCopy, v24);
  }

  if ([(NSString *)self->_procName length])
  {
    v347 = @"procName";
    procName = self->_procName;
    v25 = [NSDictionary dictionaryWithObjects:&procName forKeys:&v347 count:1];
    blockCopy[2](blockCopy, v25);
  }

  if ([(NSString *)self->_procPath length])
  {
    v26 = self->_procPath;
    v345 = @"procPath";
    v346 = v26;
    v27 = [NSDictionary dictionaryWithObjects:&v346 forKeys:&v345 count:1];
    blockCopy[2](blockCopy, v27);
  }

  if ([(NSDictionary *)self->_bundle_info count])
  {
    v343 = @"bundleInfo";
    bundle_info = self->_bundle_info;
    v28 = [NSDictionary dictionaryWithObjects:&bundle_info forKeys:&v343 count:1];
    blockCopy[2](blockCopy, v28);
  }

  if ([(NSDictionary *)self->_build_info count])
  {
    v341 = @"buildInfo";
    build_info = self->_build_info;
    v29 = [NSDictionary dictionaryWithObjects:&build_info forKeys:&v341 count:1];
    blockCopy[2](blockCopy, v29);
  }

  if ([(NSDictionary *)self->_store_info count])
  {
    v339 = @"storeInfo";
    store_info = self->_store_info;
    v30 = [NSDictionary dictionaryWithObjects:&store_info forKeys:&v339 count:1];
    blockCopy[2](blockCopy, v30);
  }

  if ([(NSString *)self->_parentProcessName length])
  {
    v337 = @"parentProc";
    parentProcessName = self->_parentProcessName;
    v31 = [NSDictionary dictionaryWithObjects:&parentProcessName forKeys:&v337 count:1];
    blockCopy[2](blockCopy, v31);
  }

  if (self->_ppid)
  {
    v335 = @"parentPid";
    v32 = [NSNumber numberWithInt:?];
    v336 = v32;
    v33 = [NSDictionary dictionaryWithObjects:&v336 forKeys:&v335 count:1];
    blockCopy[2](blockCopy, v33);
  }

  if ([(NSString *)self->_coalition_name length])
  {
    v333 = @"coalitionName";
    coalition_name = self->_coalition_name;
    v34 = [NSDictionary dictionaryWithObjects:&coalition_name forKeys:&v333 count:1];
    blockCopy[2](blockCopy, v34);
  }

  if (self->_is_beta)
  {
    blockCopy[2](blockCopy, &off_10004E2D8);
  }

  else
  {
    v331 = @"crashReporterKey";
    v35 = +[OSASystemConfiguration sharedInstance];
    crashReporterKey = [v35 crashReporterKey];
    v332 = crashReporterKey;
    v37 = [NSDictionary dictionaryWithObjects:&v332 forKeys:&v331 count:1];
    blockCopy[2](blockCopy, v37);
  }

  if ([objc_opt_class() isInLDM])
  {
    blockCopy[2](blockCopy, &off_10004E300);
  }

  v38 = +[NSProcessInfo processInfo];
  isLowPowerModeEnabled = [v38 isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    blockCopy[2](blockCopy, &off_10004E328);
  }

  problemType2 = [(OSACrashReport *)self problemType];
  v41 = [problemType2 isEqualToString:@"309"];

  if (v41)
  {
    v42 = +[_TtC11ReportCrash21GenerativeModelsState getGMAvailability];
    if ([v42 count])
    {
      v329 = @"appleIntelligenceStatus";
      v330 = v42;
      v43 = [NSDictionary dictionaryWithObjects:&v330 forKeys:&v329 count:1];
      blockCopy[2](blockCopy, v43);
    }
  }

  if (!+[_TtC11ReportCrash11Environment isCustomerFused])
  {
    blockCopy[2](blockCopy, &off_10004E350);
  }

  if ([objc_opt_class() isDeveloperMode])
  {
    blockCopy[2](blockCopy, &off_10004E378);
  }

  bootProgressRegister = [objc_opt_class() bootProgressRegister];
  v45 = bootProgressRegister;
  if (bootProgressRegister)
  {
    v327 = @"bootProgressRegister";
    v46 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"0x%llx", [bootProgressRegister unsignedLongLongValue]);
    v328 = v46;
    v47 = [NSDictionary dictionaryWithObjects:&v328 forKeys:&v327 count:1];
    blockCopy[2](blockCopy, v47);
  }

  v212 = v45;
  device_lock_state = self->_device_lock_state;
  if ((device_lock_state & 0x80000000) == 0 && device_lock_state != 3)
  {
    device_unlocked_since_boot = self->_device_unlocked_since_boot;
    if ((device_unlocked_since_boot & 0x80000000) == 0)
    {
      v325 = @"wasUnlockedSinceBoot";
      v50 = [NSNumber numberWithInt:device_unlocked_since_boot != 0];
      v326 = v50;
      v51 = [NSDictionary dictionaryWithObjects:&v326 forKeys:&v325 count:1];
      blockCopy[2](blockCopy, v51);

      device_lock_state = self->_device_lock_state;
    }

    v323 = @"isLocked";
    v52 = [NSNumber numberWithInt:device_lock_state == 1];
    v324 = v52;
    v53 = [NSDictionary dictionaryWithObjects:&v324 forKeys:&v323 count:1];
    blockCopy[2](blockCopy, v53);
  }

  if (appleInternal)
  {
    v54 = +[OSASystemConfiguration sharedInstance];
    hwModel = [v54 hwModel];

    v322[0] = hwModel;
    v321[0] = @"codeName";
    v321[1] = @"systemID";
    v56 = +[OSASystemConfiguration sharedInstance];
    systemId = [v56 systemId];
    v322[1] = systemId;
    v58 = [NSDictionary dictionaryWithObjects:v322 forKeys:v321 count:2];
    blockCopy[2](blockCopy, v58);

    v59 = +[OSASystemConfiguration sharedInstance];
    automatedDeviceGroup = [v59 automatedDeviceGroup];

    if (automatedDeviceGroup)
    {
      v319 = @"AutomatedDeviceGroup";
      v320 = automatedDeviceGroup;
      v61 = [NSDictionary dictionaryWithObjects:&v320 forKeys:&v319 count:1];
      blockCopy[2](blockCopy, v61);
    }
  }

  responsible_pid = self->_responsible_pid;
  if (responsible_pid && responsible_pid != self->_proc_id)
  {
    if (self->_responsibleProc)
    {
      v317[0] = @"responsiblePid";
      v63 = [NSNumber numberWithInt:?];
      v317[1] = @"responsibleProc";
      responsibleProc = self->_responsibleProc;
      v318[0] = v63;
      v318[1] = responsibleProc;
      v65 = v318;
      v66 = v317;
      v67 = 2;
    }

    else
    {
      v315 = @"responsiblePid";
      v63 = [NSNumber numberWithInt:?];
      v316 = v63;
      v65 = &v316;
      v66 = &v315;
      v67 = 1;
    }

    v68 = [NSDictionary dictionaryWithObjects:v65 forKeys:v66 count:v67];
    blockCopy[2](blockCopy, v68);
  }

  if (self->_consecutiveCrashCount)
  {
    v313 = @"consecutiveCrashCount";
    v69 = [NSNumber numberWithUnsignedInt:?];
    v314 = v69;
    v70 = [NSDictionary dictionaryWithObjects:&v314 forKeys:&v313 count:1];
    blockCopy[2](blockCopy, v70);
  }

  if (self->_throttleTimeout)
  {
    v311 = @"throttleTimeout";
    v71 = [NSNumber numberWithUnsignedInt:?];
    v312 = v71;
    v72 = [NSDictionary dictionaryWithObjects:&v312 forKeys:&v311 count:1];
    blockCopy[2](blockCopy, v72);
  }

  cs_signing_id = self->_cs_signing_id;
  if (cs_signing_id)
  {
    v309 = @"codeSigningID";
    v310 = cs_signing_id;
    v74 = [NSDictionary dictionaryWithObjects:&v310 forKeys:&v309 count:1];
    blockCopy[2](blockCopy, v74);
  }

  cs_team_id = self->_cs_team_id;
  if (cs_team_id)
  {
    v307 = @"codeSigningTeamID";
    v308 = cs_team_id;
    v76 = [NSDictionary dictionaryWithObjects:&v308 forKeys:&v307 count:1];
    blockCopy[2](blockCopy, v76);
  }

  if (self->_cs_status)
  {
    v305 = @"codeSigningFlags";
    v77 = [NSNumber numberWithUnsignedInt:?];
    v306 = v77;
    v78 = [NSDictionary dictionaryWithObjects:&v306 forKeys:&v305 count:1];
    blockCopy[2](blockCopy, v78);
  }

  v303 = @"codeSigningValidationCategory";
  v79 = [NSNumber numberWithUnsignedInt:self->_cs_validation_category];
  v304 = v79;
  v80 = [NSDictionary dictionaryWithObjects:&v304 forKeys:&v303 count:1];
  blockCopy[2](blockCopy, v80);

  v301 = @"codeSigningTrustLevel";
  v81 = [NSNumber numberWithUnsignedInt:self->_cs_trust_level];
  v302 = v81;
  v82 = [NSDictionary dictionaryWithObjects:&v302 forKeys:&v301 count:1];
  blockCopy[2](blockCopy, v82);

  problemType3 = [(OSACrashReport *)self problemType];
  LODWORD(v82) = [problemType3 isEqualToString:@"309"];

  if (v82)
  {
    v299 = @"codeSigningAuxiliaryInfo";
    v84 = [NSNumber numberWithUnsignedLongLong:self->_cs_auxiliary_info];
    v300 = v84;
    v85 = [NSDictionary dictionaryWithObjects:&v300 forKeys:&v299 count:1];
    blockCopy[2](blockCopy, v85);
  }

  if (self->_pc_bytes)
  {
    v297[0] = @"beforePC";
    v86 = [(NSData *)self->_pc_bytes_before base64EncodedStringWithOptions:0];
    v298[0] = v86;
    v297[1] = @"atPC";
    v87 = [(NSData *)self->_pc_bytes base64EncodedStringWithOptions:0];
    v298[1] = v87;
    v88 = [NSDictionary dictionaryWithObjects:v298 forKeys:v297 count:2];

    v295 = @"instructionByteStream";
    v296 = v88;
    v89 = [NSDictionary dictionaryWithObjects:&v296 forKeys:&v295 count:1];
    blockCopy[2](blockCopy, v89);
  }

  bootSessionUUID = [objc_opt_class() bootSessionUUID];
  v91 = bootSessionUUID;
  if (bootSessionUUID)
  {
    v293 = @"bootSessionUUID";
    v294 = bootSessionUUID;
    v92 = [NSDictionary dictionaryWithObjects:&v294 forKeys:&v293 count:1];
    blockCopy[2](blockCopy, v92);
  }

  v210 = v91;
  if (self->_jit_start_address && self->_jit_end_address)
  {
    v291 = @"jitStartAddress";
    v93 = [NSNumber numberWithUnsignedLongLong:?];
    v292 = v93;
    v94 = [NSDictionary dictionaryWithObjects:&v292 forKeys:&v291 count:1];
    blockCopy[2](blockCopy, v94);

    v289 = @"jitEndAddress";
    v95 = [NSNumber numberWithUnsignedLongLong:self->_jit_end_address];
    v290 = v95;
    v96 = [NSDictionary dictionaryWithObjects:&v290 forKeys:&v289 count:1];
    blockCopy[2](blockCopy, v96);
  }

  if ([(NSMutableArray *)self->_mteTags count]&& [(OSACrashReport *)self isMTECrash])
  {
    v287 = @"mtePageTags";
    mteTags = self->_mteTags;
    v97 = [NSDictionary dictionaryWithObjects:&mteTags forKeys:&v287 count:1];
    blockCopy[2](blockCopy, v97);
  }

  if (![(NSString *)self->_procName isEqualToString:@"CommCenter"])
  {
    v98 = MGCopyAnswer();
    v99 = v98;
    if (v98)
    {
      v285 = @"basebandVersion";
      v286 = v98;
      v100 = [NSDictionary dictionaryWithObjects:&v286 forKeys:&v285 count:1];
      blockCopy[2](blockCopy, v100);
    }
  }

  vmregion_info = self->_vmregion_info;
  if (vmregion_info)
  {
    v283 = @"vmRegionInfo";
    v284 = vmregion_info;
    v102 = [NSDictionary dictionaryWithObjects:&v284 forKeys:&v283 count:1];
    blockCopy[2](blockCopy, v102);
  }

  if (self->_is_lightweight_corpse)
  {
    blockCopy[2](blockCopy, &off_10004E3A0);
  }

  else if (self->_is_simulated)
  {
    blockCopy[2](blockCopy, &off_10004E3C8);
    caller_name = self->_caller_name;
    if (caller_name)
    {
      v281 = @"simulatedCaller";
      v282 = caller_name;
      v142 = [NSDictionary dictionaryWithObjects:&v282 forKeys:&v281 count:1];
      blockCopy[2](blockCopy, v142);
    }
  }

  else if ([(OSACrashReport *)self isExceptionNonFatal])
  {
    blockCopy[2](blockCopy, &off_10004E3F0);
  }

  v279 = @"exception";
  decode_exceptionCodes = [(OSACrashReport *)self decode_exceptionCodes];
  v280 = decode_exceptionCodes;
  v104 = [NSDictionary dictionaryWithObjects:&v280 forKeys:&v279 count:1];
  blockCopy[2](blockCopy, v104);

  terminationReason = [(OSACrashReport *)self terminationReason];
  if ([terminationReason count])
  {
    v277 = @"termination";
    v278 = terminationReason;
    v106 = [NSDictionary dictionaryWithObjects:&v278 forKeys:&v277 count:1];
    blockCopy[2](blockCopy, v106);

    v107 = [terminationReason objectForKeyedSubscript:@"reasons"];
    if (![v107 count])
    {
      v108 = [terminationReason objectForKeyedSubscript:@"details"];

      v107 = v108;
    }

    if ([v107 count])
    {
      v109 = [v107 componentsJoinedByString:@"\n"];
      mxTerminationReason = self->_mxTerminationReason;
      self->_mxTerminationReason = v109;
    }
  }

  exit_snapshot = self->_exit_snapshot;
  if (exit_snapshot && exit_snapshot->ers_code == 5)
  {
    create_os_fault_section = [(OSACrashReport *)self create_os_fault_section];
    if ([create_os_fault_section count])
    {
      v275 = @"os_fault";
      v276 = create_os_fault_section;
      v113 = [NSDictionary dictionaryWithObjects:&v276 forKeys:&v275 count:1];
      blockCopy[2](blockCopy, v113);
    }
  }

  if ([(NSString *)self->_ktriage_info length])
  {
    v273 = @"ktriageinfo";
    ktriage_info = self->_ktriage_info;
    v114 = [NSDictionary dictionaryWithObjects:&ktriage_info forKeys:&v273 count:1];
    blockCopy[2](blockCopy, v114);
  }

  v115 = self->_vmregion_info;
  if (v115)
  {
    v271 = @"vmregioninfo";
    v272 = v115;
    v116 = [NSDictionary dictionaryWithObjects:&v272 forKeys:&v271 count:1];
    blockCopy[2](blockCopy, v116);
  }

  [(OSACrashReport *)self _mergeFormattedASI];
  if ([(NSMutableDictionary *)self->_applicationSpecificInfo count])
  {
    v269 = @"asi";
    applicationSpecificInfo = self->_applicationSpecificInfo;
    v117 = [NSDictionary dictionaryWithObjects:&applicationSpecificInfo forKeys:&v269 count:1];
    blockCopy[2](blockCopy, v117);
  }

  if (appleInternal && [(NSMutableDictionary *)self->_applicationSpecificInfoRedacted count])
  {
    v267 = @"asiRedacted";
    applicationSpecificInfoRedacted = self->_applicationSpecificInfoRedacted;
    v118 = [NSDictionary dictionaryWithObjects:&applicationSpecificInfoRedacted forKeys:&v267 count:1];
    blockCopy[2](blockCopy, v118);
  }

  if ([(NSDictionary *)self->_exceptionReasonDetails count])
  {
    v265 = @"exceptionReason";
    exceptionReasonDetails = self->_exceptionReasonDetails;
    v119 = [NSDictionary dictionaryWithObjects:&exceptionReasonDetails forKeys:&v265 count:1];
    blockCopy[2](blockCopy, v119);
  }

  reverseObjectEnumerator = &off_10004D9E8;
  if ([(NSDictionary *)self->_workQueueLimits count])
  {
    workQueueLimits = self->_workQueueLimits;
    v263[0] = @"workQueueLimits";
    v263[1] = &off_10004DDD8;
    v264[0] = workQueueLimits;
    v264[1] = &off_10004D9E8;
    v122 = [NSDictionary dictionaryWithObjects:v264 forKeys:v263 count:2];
    blockCopy[2](blockCopy, v122);
  }

  v208 = terminationReason;
  if ([(NSArray *)self->_lastExceptionBacktrace count])
  {
    v261 = @"lastExceptionBacktrace";
    lastExceptionBacktrace = self->_lastExceptionBacktrace;
    v123 = [NSDictionary dictionaryWithObjects:&lastExceptionBacktrace forKeys:&v261 count:1];
    blockCopy[2](blockCopy, v123);
  }

  if ([(NSMutableArray *)self->_threadInfos count])
  {
    if ((self->_crashedThreadNumber & 0x80000000) == 0)
    {
      v259 = @"faultingThread";
      v124 = [NSNumber numberWithInt:?];
      v260 = v124;
      v125 = [NSDictionary dictionaryWithObjects:&v260 forKeys:&v259 count:1];
      blockCopy[2](blockCopy, v125);

      reverseObjectEnumerator = &off_10004D9E8;
      v126 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
      objc_msgSend_setObject_forKeyedSubscript_(v126);
    }

    v257 = @"threads";
    threadInfos = self->_threadInfos;
    v127 = [NSDictionary dictionaryWithObjects:&threadInfos forKeys:&v257 count:1];
    blockCopy[2](blockCopy, v127);
  }

  if ([(NSArray *)self->_usedImages count])
  {
    usedImages = self->_usedImages;
    v255[0] = @"usedImages";
    v255[1] = &off_10004DDD8;
    v256[0] = usedImages;
    v256[1] = &off_10004D9E8;
    v129 = [NSDictionary dictionaryWithObjects:v256 forKeys:v255 count:2];
    blockCopy[2](blockCopy, v129);
  }

  if (self->_sharedCacheBase)
  {
    memset(out, 0, 37);
    uuid_unparse_lower(self->_sharedCacheUuid, out);
    v252[0] = @"sharedCache";
    v250[0] = @"base";
    v130 = [NSNumber numberWithUnsignedLongLong:self->_sharedCacheBase];
    v251[0] = v130;
    v250[1] = @"size";
    reverseObjectEnumerator = [NSNumber numberWithUnsignedLongLong:self->_sharedCacheSize];
    v251[1] = reverseObjectEnumerator;
    v250[2] = @"uuid";
    v131 = [NSString stringWithUTF8String:out];
    v251[2] = v131;
    v132 = [NSDictionary dictionaryWithObjects:v251 forKeys:v250 count:3];
    v252[1] = &off_10004DDD8;
    v253[0] = v132;
    v253[1] = &off_10004D9E8;
    v133 = [NSDictionary dictionaryWithObjects:v253 forKeys:v252 count:2];
    blockCopy[2](blockCopy, v133);

    v16 = &create_gcore_with_options_ptr;
  }

  v134 = objc_opt_new();
  if (self->_crashedThreadNumber < 0)
  {
    if (self->_highlightedThreadNumber < 0)
    {
      goto LABEL_134;
    }

    v135 = [NSNumber numberWithInt:?];
    objc_msgSend_setObject_forKeyedSubscript_(v134);
  }

  else
  {
    v135 = objc_opt_new();
    v136 = [(NSMutableArray *)self->_threadInfos objectAtIndexedSubscript:self->_crashedThreadNumber];
    v137 = [v136 objectForKeyedSubscript:@"name"];

    if (v137)
    {
      v138 = [v136 objectForKeyedSubscript:@"name"];
      objc_msgSend_setObject_forKeyedSubscript_(v135);
    }

    v139 = [v136 objectForKeyedSubscript:@"queue"];

    if (v139)
    {
      v140 = [v136 objectForKeyedSubscript:@"queue"];
      objc_msgSend_setObject_forKeyedSubscript_(v135);
    }

    objc_msgSend_setObject_forKeyedSubscript_(v134);

    v16 = &create_gcore_with_options_ptr;
  }

LABEL_134:
  vmSummary = self->_vmSummary;
  if (vmSummary)
  {
    v248 = @"vmSummary";
    v249 = vmSummary;
    v144 = [v16[475] dictionaryWithObjects:&v249 forKeys:&v248 count:1];
    blockCopy[2](blockCopy, v144);
  }

  probGuardReport = self->_probGuardReport;
  if (probGuardReport)
  {
    v246 = @"probGuardReport";
    v247 = probGuardReport;
    v146 = [v16[475] dictionaryWithObjects:&v247 forKeys:&v246 count:1];
    blockCopy[2](blockCopy, v146);
  }

  memoryErrorReport = self->_memoryErrorReport;
  if (memoryErrorReport)
  {
    v244 = @"memoryErrorReport";
    v245 = memoryErrorReport;
    v148 = [v16[475] dictionaryWithObjects:&v245 forKeys:&v244 count:1];
    blockCopy[2](blockCopy, v148);
  }

  sanitizerReport = self->_sanitizerReport;
  if (sanitizerReport)
  {
    v242 = @"quarantineReport";
    v243 = sanitizerReport;
    v150 = [v16[475] dictionaryWithObjects:&v243 forKeys:&v242 count:1];
    blockCopy[2](blockCopy, v150);
  }

  if ([v134 count])
  {
    v240[0] = @"legacyInfo";
    v240[1] = &off_10004DDD8;
    v241[0] = v134;
    v241[1] = &off_10004D9E8;
    v151 = [v16[475] dictionaryWithObjects:v241 forKeys:v240 count:2];
    blockCopy[2](blockCopy, v151);
  }

  logWritingSignature = self->_logWritingSignature;
  if (logWritingSignature)
  {
    v238 = @"logWritingSignature";
    v239 = logWritingSignature;
    v153 = [v16[475] dictionaryWithObjects:&v239 forKeys:&v238 count:1];
    blockCopy[2](blockCopy, v153);
  }

  patternUUIDs = [(OSACrashReport *)self patternUUIDs];
  v155 = [patternUUIDs count];

  if (v155)
  {
    v236 = @"patternUUIDs";
    patternUUIDs2 = [(OSACrashReport *)self patternUUIDs];
    v237 = patternUUIDs2;
    v157 = [v16[475] dictionaryWithObjects:&v237 forKeys:&v236 count:1];
    blockCopy[2](blockCopy, v157);
  }

  [(OSACrashReport *)self writeReportBodyWithSectionWriter:blockCopy];
  getTrialCache = [(OSACrashReport *)self getTrialCache];
  v159 = getTrialCache;
  if (getTrialCache)
  {
    v160 = [getTrialCache dictionaryWithValuesForKeys:&off_10004E508];
    v161 = [v159 objectForKeyedSubscript:@"errors"];
    if ([v160 count])
    {
      v234[0] = @"trialInfo";
      v234[1] = &off_10004DDD8;
      v235[0] = v160;
      v235[1] = &off_10004D9E8;
      v162 = [NSDictionary dictionaryWithObjects:v235 forKeys:v234 count:2];
      blockCopy[2](blockCopy, v162);
    }

    else
    {
      if (![v161 count])
      {
LABEL_156:

        v16 = &create_gcore_with_options_ptr;
        goto LABEL_157;
      }

      v163 = *&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes];
      v162 = [v161 componentsJoinedByString:@" "];;
      v162 = [NSString stringWithFormat:@"Unable to retrieve Trial info: %@", v162];
      [v163 addObject:v162];
    }

    goto LABEL_156;
  }

LABEL_157:
  if (!appleInternal)
  {
    goto LABEL_201;
  }

  if ((!self->_is_simulated || self->_is_lightweight_corpse) && self->_exceptionType != 11)
  {
    v165 = objc_autoreleasePoolPush();
    if ((byte_1000540D5 & 1) != 0 || [(NSString *)self->_procName isEqualToString:@"ReportCrash"])
    {
LABEL_192:
      objc_autoreleasePoolPop(v165);
      goto LABEL_193;
    }

    v214 = v165;
    v166 = [NSPredicate predicateWithFormat:@"(processID == 0) AND (senderImagePath CONTAINS '/Sandbox')"];
    v233[0] = v166;
    v167 = [NSPredicate predicateWithFormat:@"subsystem == 'com.apple.sandbox.reporting'"];
    v233[1] = v167;
    v168 = [NSArray arrayWithObjects:v233 count:2];

    if (self->_signal == 6)
    {
      v169 = [&__NSArray0__struct arrayByAddingObject:@"hangtracerd"];
    }

    else
    {
      v169 = &__NSArray0__struct;
    }

    if ([(NSString *)self->_procName isEqualToString:@"wifid"])
    {
LABEL_167:
      v170 = @"kernel";
LABEL_179:
      v171 = [v169 arrayByAddingObject:v170];
LABEL_180:
      v172 = v171;

      v169 = v172;
LABEL_181:
      if (self->_is_driverkit)
      {
        v173 = &off_10004E5B0;
      }

      else
      {
        v174 = [NSNumber numberWithInt:self->_proc_id];
        v232 = v174;
        v173 = [NSArray arrayWithObjects:&v232 count:1];
      }

      v206 = v168;
      v175 = [(OSACrashReport *)self getSyslogForPids:v173 andOptionalSenders:v169 additionalPredicates:v168];
      v176 = v175;
      v230[0] = @"filteredLog";
      v204 = v169;
      if (v175)
      {
        if ([v175 count])
        {
          reverseObjectEnumerator = [v176 reverseObjectEnumerator];
          allObjects = [reverseObjectEnumerator allObjects];
          v178 = 1;
        }

        else
        {
          v178 = 0;
          allObjects = &off_10004E5E0;
        }
      }

      else
      {
        v178 = 0;
        allObjects = &off_10004E5C8;
      }

      v230[1] = &off_10004DDD8;
      v231[0] = allObjects;
      v231[1] = &off_10004D9E8;
      v179 = [NSDictionary dictionaryWithObjects:v231 forKeys:v230 count:2];
      blockCopy[2](blockCopy, v179);

      if (v178)
      {
      }

      v165 = v214;
      v16 = &create_gcore_with_options_ptr;
      goto LABEL_192;
    }

    if ([(NSString *)self->_procName isEqualToString:@"Camera"])
    {
      goto LABEL_169;
    }

    if ([(NSString *)self->_procName isEqualToString:@"SpringBoard"])
    {
      v170 = @"backboardd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"backboardd"])
    {
      v170 = @"SpringBoard";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"tzd"])
    {
      v170 = @"mobileassetd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"Carousel"]|| [(NSString *)self->_procName isEqualToString:@"nanotimekitd"])
    {
      v170 = @"assetsd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"com.apple.photos.ImageConversionService"]|| [(NSString *)self->_procName isEqualToString:@"com.apple.photos.VideoConversionService"])
    {
LABEL_169:
      v170 = @"mediaserverd";
      goto LABEL_179;
    }

    if ([(NSString *)self->_procName isEqualToString:@"mediaserverd"])
    {
      v195 = &off_10004E520;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"audiomxd"])
    {
      v195 = &off_10004E538;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"mediaplaybackd"])
    {
      v195 = &off_10004E550;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"mediaparserd"])
    {
      v195 = &off_10004E568;
    }

    else if ([(NSString *)self->_procName isEqualToString:@"videocodecd"])
    {
      v195 = &off_10004E580;
    }

    else
    {
      if (![(NSString *)self->_procName isEqualToString:@"airplayd"])
      {
        if (![(NSString *)self->_procName isEqualToString:@"zprint"])
        {
          goto LABEL_181;
        }

        goto LABEL_167;
      }

      v195 = &off_10004E598;
    }

    v171 = [v169 arrayByAddingObjectsFromArray:v195];
    goto LABEL_180;
  }

LABEL_193:
  if (self->_proc_id && ([(NSMutableDictionary *)self->_spewage_diag count]|| self->_memgraph_filename))
  {
    v228 = &off_10004DDF0;
    v229 = @"diagnosticOutput";
    v180 = [v16[475] dictionaryWithObjects:&v229 forKeys:&v228 count:1];
    blockCopy[2](blockCopy, v180);

    if ([(NSMutableDictionary *)self->_spewage_diag count])
    {
      blockCopy[2](blockCopy, self->_spewage_diag);
    }

    memgraph_filename = self->_memgraph_filename;
    if (memgraph_filename)
    {
      v226 = @"memgraph/vmmap";
      v182 = sub_10000D580("/usr/bin/vmmap", memgraph_filename, dword_1000540CC, 0);
      v225 = v182;
      v183 = [NSArray arrayWithObjects:&v225 count:1];
      v227 = v183;
      v184 = [NSDictionary dictionaryWithObjects:&v227 forKeys:&v226 count:1];
      blockCopy[2](blockCopy, v184);

      v223 = @"memgraph/heap";
      v185 = sub_10000D580("/usr/bin/heap", self->_memgraph_filename, dword_1000540CC, 0);
      v222 = v185;
      v186 = [NSArray arrayWithObjects:&v222 count:1];
      v224 = v186;
      v187 = [NSDictionary dictionaryWithObjects:&v224 forKeys:&v223 count:1];
      blockCopy[2](blockCopy, v187);

      v220 = @"memgraph/leaks";
      v188 = sub_10000D580("/usr/bin/leaks", self->_memgraph_filename, dword_1000540CC, 0);
      v219 = v188;
      v189 = [NSArray arrayWithObjects:&v219 count:1];
      v221 = v189;
      v190 = [NSDictionary dictionaryWithObjects:&v221 forKeys:&v220 count:1];
      blockCopy[2](blockCopy, v190);
    }

    v217 = &off_10004DE08;
    v218 = &stru_1000463C0;
    v191 = [NSDictionary dictionaryWithObjects:&v218 forKeys:&v217 count:1];
    blockCopy[2](blockCopy, v191);

    v16 = &create_gcore_with_options_ptr;
  }

LABEL_201:
  v192 = OBJC_IVAR___OSAReport__notes;
  if ([*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__notes] count])
  {
    v193 = *&self->OSAReport_opaque[v192];
    v215[0] = @"reportNotes";
    v215[1] = &off_10004DDD8;
    v216[0] = v193;
    v216[1] = &off_10004D9E8;
    v194 = [v16[475] dictionaryWithObjects:v216 forKeys:v215 count:2];
    blockCopy[2](blockCopy, v194);
  }
}

- (BOOL)saveWithOptions:(id)options
{
  optionsCopy = options;
  if ([(OSACrashReport *)self needsUrgentSubmission])
  {
    objc_msgSend_setObject_forKeyedSubscript_(*&self->OSAReport_opaque[OBJC_IVAR___OSAReport__logWritingOptions]);
  }

  v7.receiver = self;
  v7.super_class = OSACrashReport;
  v5 = [(OSACrashReport *)&v7 saveWithOptions:optionsCopy];
  if (!self->_is_simulated)
  {
    [(OSACrashReport *)self sendToMetricKit];
  }

  return v5;
}

- (void)checkIfNeedsUrgentSubmission
{
  v3 = +[OSASystemConfiguration sharedInstance];
  v4 = [v3 getTaskingKey:@"disableUrgentSubmission"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT);
    v7 = 0;
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Urgent submission has been disabled", v8, 2u);
      v7 = 0;
    }
  }

  else
  {
    if (!self->_sroute_id)
    {
      return;
    }

    v7 = 1;
  }

  self->_needsUrgentSubmission = v7;
}

+ (void)observedMTECrashWithProcessName:(id)name
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  if (qword_100053AA0 != -1)
  {
    swift_once();
  }

  v10 = off_100053D60;
  if (off_100053D60)
  {
    v11 = static DispatchWorkItemFlags.barrier.getter();
    __chkstk_darwin(v11);
    *&v12[-32] = v10;
    *&v12[-24] = v7;
    *&v12[-16] = v9;
    OS_dispatch_queue.sync<A>(flags:execute:)();

    (*(v4 + 8))(v6, v3);
  }

  else
  {
  }
}

- (void)writeReportToSerial
{
  selfCopy = self;
  sub_10002FB28();
}

@end