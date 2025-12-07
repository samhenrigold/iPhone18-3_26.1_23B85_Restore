@interface VMUKernelCoreMemoryScanner
+ (void)initialize;
- ($61A80719B04F7407D3E47539F1B23CAA)nodeDetails:(VMUKernelCoreMemoryScanner *)self;
- (BOOL)addAllNodesFromTaskWithError:(id *)error;
- (BOOL)addMallocNodesFromTaskWithError:(id *)error;
- (BOOL)addRootNodesFromTaskWithError:(id *)error;
- (BOOL)hasClassInfosDerivedFromStackBacktraces;
- (VMUKernelCoreMemoryScanner)initWithVMUTask:(id)task options:(unint64_t)options;
- (const)getCachedScanInfoForClassWithIsa:(unsigned int)isa classInfo:(id)info scanCaches:(_VMUScanLocationCache *)caches;
- (id)_cachedVariantForGenericInfo:(id)info variantKey:(unint64_t)key;
- (id)_readonlyRegionRanges;
- (id)classInfoForObjectAtAddress:(unint64_t)address;
- (id)labelForNode:(unsigned int)node;
- (id)processSnapshotGraphWithOptions:(unint64_t)options;
- (id)shortLabelForNode:(unsigned int)node;
- (id)vmuVMRegionForAddress:(unint64_t)address;
- (id)vmuVMRegionForNode:(unsigned int)node;
- (id)zoneNameForIndex:(unsigned int)index;
- (id)zoneNameForNode:(unsigned int)node;
- (uint64_t)_shouldScanVMregion:(uint64_t)mregion;
- (unint64_t)_lengthOfMappedFileOfRegion:(id)region;
- (unint64_t)ledgerValueForKey:(id)key keyExists:(BOOL *)exists;
- (unsigned)_nodeForAddress:(unint64_t)address checkMaxInteriorOffset:(BOOL)offset;
- (unsigned)_removeFalsePositiveLeakedVMregionsFromNodes:(unsigned int *)nodes nodeCount:(unsigned int)count recorder:(id)recorder;
- (unsigned)enumerateMarkedObjects:(void *)objects withBlock:(id)block;
- (unsigned)enumerateObjectsWithBlock:(id)block;
- (unsigned)enumerateReferencesWithBlock:(id)block;
- (unsigned)enumerateRegionsWithBlock:(id)block;
- (unsigned)mallocNodeCount;
- (unsigned)nodeForAddress:(unint64_t)address;
- (void)_addThreadNodesFromTask;
- (void)_buildRegionFirstBlockIndexOnPageArrays;
- (void)_callRemoteMallocEnumerators:(unsigned int)enumerators block:(id)block;
- (void)_enumerateZallocZones:(BOOL)zones blocks:(BOOL)blocks;
- (void)_findMarkedAbandonedBlocks;
- (void)_fixupBlockIsas;
- (void)_identifyNonObjectsPointedToByTypedIvars:(unsigned int)ivars;
- (void)_identifyNonObjectsUsingStackBacktrace;
- (void)_registerVariant:(id)variant forGenericInfo:(id)info variantKey:(unint64_t)key;
- (void)_shortenScannableRangeOfMappedFile:(unsigned int)file;
- (void)_sortAndClassifyBlocks;
- (void)_withMemoryReaderBlock:(id)block;
- (void)_withOrderedNodeMapper:(id)mapper;
- (void)addMallocNodes:(id)nodes;
- (void)applyTypeOverlayToMutableInfo:(id)info;
- (void)contentForNode:(unsigned int)node;
- (void)copyUserMarked;
- (void)dealloc;
- (void)printRuntimeMetadataInfo;
- (void)refineTypesWithOverlay:(id)overlay;
- (void)scanLocalMemory:(uint64_t)memory atOffset:(unsigned int)offset node:(unint64_t)node length:(uint64_t)length isa:(uint64_t)isa scanCaches:(void *)caches fieldInfo:(unsigned int)info stride:(uint64_t)self0 recorder:;
- (void)scanNodesWithReferenceRecorder:(id)recorder;
- (void)setClassStructureFieldScanValueAtSourceAddress:(void *)address toCorrectedAddress:(void *)correctedAddress;
- (void)setNodeScanningLogger:(id)logger;
- (void)setObjectContentLevel:(unsigned int)level;
- (void)setReferenceScanningLogger:(id)logger;
- (void)unmapAllRegions;
@end

@implementation VMUKernelCoreMemoryScanner

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = getenv("VMUEnumeratorValidation");
    v6 = 0;
    if (v2)
    {
      v3 = *v2;
      v4 = (v3 - 48) > 0x3E || ((1 << (v3 - 48)) & 0x4000000040000001) == 0;
      if (v4 && v3 != 0)
      {
        v6 = 1;
      }
    }

    s_enumeratorDebugging_0 = v6;
  }
}

- (void)unmapAllRegions
{
  if (self->_regionsCount)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      regions = self->_regions;
      v6 = self->_memoryCache;
      v7 = v6;
      v8 = regions + v3;
      if (*(&regions[1].var0 + v3))
      {
        if (v8 == *(v8 + 7))
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___unmapRegion_block_invoke_0;
          aBlock[3] = &unk_1E8277E50;
          v11 = v6;
          v12 = regions + v3;
          v13 = regions;
          v9 = _Block_copy(aBlock);
          v9[2]();
        }

        else
        {
          *(regions + v3 + 40) &= 1uLL;
          *(v8 + 6) = 0;
          *(v8 + 7) = 0;
        }
      }

      ++v4;
      v3 += 64;
    }

    while (v4 < self->_regionsCount);
  }

  [(VMUTaskMemoryCache *)self->_memoryCache flushMemoryCache];
  [(VMUObjectIdentifier *)self->_objectIdentifier flushRemoteMirrorMemoryCache];
}

- (VMUKernelCoreMemoryScanner)initWithVMUTask:(id)task options:(unint64_t)options
{
  v141 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  v138.receiver = self;
  v138.super_class = VMUKernelCoreMemoryScanner;
  v7 = [(VMUKernelCoreMemoryScanner *)&v138 init];

  if (v7)
  {
    v123 = +[VMUDebugTimer sharedTimerIfCreated];
    objc_storeStrong(&v7->_task, task);
    v7->_pid = -1;
    if (v123)
    {
      if ([v123 signpostID])
      {
        logHandle = [v123 logHandle];
        signpostID = [v123 signpostID];
        if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID, "initMemoryScanner", "", buf, 2u);
        }
      }

      [v123 endEvent:"initMemoryScanner"];
      [v123 startWithCategory:"initMemoryScanner" message:"building VMUProcessDescription"];
      logHandle2 = [v123 logHandle];
      signpostID2 = [v123 signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID2, "initMemoryScanner", "building VMUProcessDescription", buf, 2u);
      }
    }

    else
    {
      [0 endEvent:"initMemoryScanner"];
      [0 startWithCategory:"initMemoryScanner" message:"building VMUProcessDescription"];
    }

    processDescription = [(VMUTask *)v7->_task processDescription];
    if (processDescription)
    {
      v13 = [processDescription description];
      processDescriptionString = v7->_processDescriptionString;
      v7->_processDescriptionString = v13;

      date = [processDescription date];
      suspendDate = v7->_suspendDate;
      v7->_suspendDate = date;

      processName = [processDescription processName];
      processName = v7->_processName;
      v7->_processName = processName;

      if ((options & 0x8000) != 0)
      {
        binaryImagesDescription = [processDescription binaryImagesDescription];
        binaryImagesDescription = v7->_binaryImagesDescription;
        v7->_binaryImagesDescription = binaryImagesDescription;
      }

      executablePath = [processDescription executablePath];
      executablePath = v7->_executablePath;
      v7->_executablePath = executablePath;

      v7->_physicalFootprint = [processDescription physicalFootprint];
      v7->_physicalFootprintPeak = [processDescription physicalFootprintPeak];
      v7->_idleExitStatus = [processDescription idleExitStatus];
    }

    v23 = [VMUProcessLedger ledgerForVMUTask:v7->_task];
    ledger = v7->_ledger;
    v7->_ledger = v23;

    if (v123 && [v123 signpostID])
    {
      logHandle3 = [v123 logHandle];
      signpostID3 = [v123 signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID3, "initMemoryScanner", "", buf, 2u);
      }
    }

    [v123 endEvent:"initMemoryScanner"];
    mach_get_times();
    v7->_maxInteriorOffset = *MEMORY[0x1E69E9AC8];
    v7->_scanningMask = VMUScanningMaskForOwningReferences();
    v7->_exactScanningEnabled = 1;
    v7->_abandonedMarkingEnabled = 1;
    v27 = objc_opt_new();
    mappedFileNameToLengthDict = v7->_mappedFileNameToLengthDict;
    v7->_mappedFileNameToLengthDict = v27;

    v120 = VMUGetFlagsForAllVMRegionStatistics() | options | 0x180;
    v29 = [[VMUVMRegionIdentifier alloc] initWithVMUTask:v7->_task options:?];
    regionIdentifier = v7->_regionIdentifier;
    v7->_regionIdentifier = v29;

    regions = [(VMUVMRegionIdentifier *)v7->_regionIdentifier regions];
    v31 = [regions count];
    v7->_regionsCount = v31;
    if (!v31)
    {
      goto LABEL_116;
    }

    regions = malloc_type_calloc(v31, 0x40uLL, 0x10B0040310C8A7FuLL);
    v7->_regions = regions;
    if (v7->_regionsCount)
    {
      v33 = 0;
      v34 = 0;
      do
      {
        v35 = [regions objectAtIndexedSubscript:v34];
        regions = v7->_regions;
        *(&regions->var0 + v33) = v35;
        ++v34;
        regionsCount = v7->_regionsCount;
        v33 += 64;
      }

      while (v34 < regionsCount);
    }

    else
    {
      LODWORD(regionsCount) = 0;
    }

    v37 = malloc_type_calloc(1uLL, 0x200040uLL, 0x2A721244uLL);
    v37->var6 = -1;
    v38 = malloc_type_calloc(1uLL, 0x800004uLL, 0xB2EC2458uLL);
    *v38 = 0x4000000;
    v37->var3 = v38;
    v37->var4 = regions;
    v37->var5 = regionsCount;
    if (regionsCount)
    {
      v39 = 0;
      v40 = MEMORY[0x1E69E9AC0];
      do
      {
        v41 = &regions->var0 + 8 * v39;
        if (([*v41 isSpecialPhysFootprintRegion] & 1) == 0)
        {
          v42 = *(*v41 + 1);
          v43 = *(*v41 + 2) + v42;
          var6 = v37->var6;
          var7 = v37->var7;
          if (var6 >= v42)
          {
            var6 = *(*v41 + 1);
          }

          if (var7 <= v43)
          {
            var7 = *(*v41 + 2) + *(*v41 + 1);
          }

          v37->var6 = var6;
          v37->var7 = var7;
          v46 = v42 >> *v40;
          if (v46)
          {
            v47 = (~*MEMORY[0x1E69E9AB8] & (*MEMORY[0x1E69E9AB8] + v43)) >> *v40;
            do
            {
              if (v46 + 1 > v47)
              {
                v48 = v46 + 1;
              }

              else
              {
                v48 = v47;
              }

              var3 = v37->var3;
              v50 = v46 & 0x3FFFFFF;
              v51 = *var3;
              if (*var3 > (v46 & 0x3FFFFFF))
              {
                if (v51 >= ((v48 - v46) & 0x3FFFFFF) + v50)
                {
                  v52 = ((v48 - v46) & 0x3FFFFFF) + v50;
                }

                else
                {
                  v52 = *var3;
                }

                if (((v50 + 7) & 0x7FFFFF8) >= v52)
                {
                  v53 = v52;
                }

                else
                {
                  v53 = (v50 + 7) & 0x7FFFFF8;
                }

                v54 = var3 + 1;
                if (v50 < v53)
                {
                  do
                  {
                    if (v51 > v50)
                    {
                      *(v54 + (v50 >> 3)) |= 1 << (v50 & 7);
                    }

                    ++v50;
                  }

                  while (v53 != v50);
                  v50 = v53;
                }

                v55 = v52 & 0x7FFFFF8;
                if ((v52 & 0x7FFFFF8) <= v50)
                {
                  v55 = v50;
                }

                if (v52 > v55)
                {
                  v56 = v52 - 1;
                  do
                  {
                    if (v51 > v56)
                    {
                      *(v54 + (v56 >> 3)) |= 1 << (v56 & 7);
                    }

                    v57 = v56 - 1;
                  }

                  while (v56-- > v55);
                  v52 = v57 + 1;
                }

                memset(var3 + (v50 >> 3) + 4, 255, (v52 - v50) >> 3);
              }

              v46 >>= 26;
              v47 = v48 >> 26;
            }

            while (v46);
          }
        }

        ++v39;
      }

      while (v39 != regionsCount);
    }

    v7->_regionMap = v37;
    memoryCache = [(VMUTask *)v7->_task memoryCache];
    memoryCache = v7->_memoryCache;
    v7->_memoryCache = memoryCache;

    if (!v7->_memoryCache)
    {
LABEL_116:

      v12 = 0;
      goto LABEL_126;
    }

    v7->_coreSymbolicator._opaque_1 = [(VMUTask *)v7->_task createSymbolicatorWithFlags:CSSymbolicatorGetFlagsForNListOnlyData() andNotification:0];
    v7->_coreSymbolicator._opaque_2 = v61;
    regionMap = v7->_regionMap;
    *buf = 0;
    v133 = buf;
    v134 = 0x3032000000;
    v135 = __Block_byref_object_copy__0;
    v136 = __Block_byref_object_dispose__0;
    v137 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __54__VMUKernelCoreMemoryScanner_initWithVMUTask_options___block_invoke;
    aBlock[3] = &unk_1E82775B8;
    aBlock[4] = buf;
    aBlock[5] = regionMap;
    v63 = _Block_copy(aBlock);
    regionInfoBlock = v7->_regionInfoBlock;
    v7->_regionInfoBlock = v63;

    [(VMUTaskMemoryCache *)v7->_memoryCache setRegionInfoBlock:v7->_regionInfoBlock];
    v65 = objc_alloc_init(VMURangeArray);
    dataSegmentsRangeArrayOutsideSharedCache = v7->_dataSegmentsRangeArrayOutsideSharedCache;
    v7->_dataSegmentsRangeArrayOutsideSharedCache = v65;

    taskThreadStates = [(VMUVMRegionIdentifier *)v7->_regionIdentifier taskThreadStates];
    threadStates = v7->_threadStates;
    v7->_threadStates = taskThreadStates;

    v69 = v123;
    v7->_threadsCount = [(VMUTaskThreadStates *)v7->_threadStates threadCount];
    if (v123 && [v123 signpostID])
    {
      logHandle4 = [v123 logHandle];
      signpostID4 = [v123 signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
      {
        *v139 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_END, signpostID4, "initMemoryScanner", "", v139, 2u);
      }

      v69 = v123;
    }

    [v69 endEvent:"initMemoryScanner"];
    [v69 startWithCategory:"initMemoryScanner" message:"get malloc zones array"];
    if (v69)
    {
      logHandle5 = [v69 logHandle];
      signpostID5 = [v69 signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
      {
        *v139 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID5, "initMemoryScanner", "get malloc zones array", v139, 2u);
      }
    }

    v74 = objc_opt_new();
    zoneNames = v7->_zoneNames;
    v7->_zoneNames = v74;

    v76 = objc_opt_new();
    nonScannableZoneNames = v7->_nonScannableZoneNames;
    v7->_nonScannableZoneNames = v76;

    [(VMUKernelCoreMemoryScanner *)v7 _enumerateZallocZones:1 blocks:0];
    v78 = v123;
    if (v123 && [v123 signpostID])
    {
      logHandle6 = [v123 logHandle];
      signpostID6 = [v123 signpostID];
      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
      {
        *v139 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_END, signpostID6, "initMemoryScanner", "", v139, 2u);
      }

      v78 = v123;
    }

    [v78 endEvent:"initMemoryScanner"];
    zonesCount = v7->_zonesCount;
    if (!zonesCount || !v7->_regions)
    {
      v110 = 0;
      v12 = 0;
      goto LABEL_124;
    }

    zones = v7->_zones;
    __compar[0] = MEMORY[0x1E69E9820];
    __compar[1] = 3221225472;
    __compar[2] = __54__VMUKernelCoreMemoryScanner_initWithVMUTask_options___block_invoke_2;
    __compar[3] = &unk_1E8277628;
    v130 = &__block_literal_global_0;
    mergesort_b(zones, zonesCount, 0x18uLL, __compar);
    [(NSMutableArray *)v7->_zoneNames sortUsingComparator:&__block_literal_global_0];
    v83 = [[VMUObjectIdentifier alloc] initWithVMUTask:v7->_task symbolicator:0 scanner:0, v7];
    objectIdentifier = v7->_objectIdentifier;
    v7->_objectIdentifier = v83;

    v85 = v7->_objectIdentifier;
    if (v85)
    {
      realizedClasses = [(VMUObjectIdentifier *)v85 realizedClasses];
      classInfoIndexer = v7->_classInfoIndexer;
      v7->_classInfoIndexer = realizedClasses;

      v88 = v123;
      if (v123 && [v123 signpostID])
      {
        logHandle7 = [v123 logHandle];
        signpostID7 = [v123 signpostID];
        if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle7))
        {
          *v139 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, signpostID7, "initMemoryScanner", "", v139, 2u);
        }

        v88 = v123;
      }

      [v88 endEvent:"initMemoryScanner"];
      [v88 startWithCategory:"initMemoryScanner" message:"setting up VMUScanOverlay"];
      if (v88)
      {
        logHandle8 = [v88 logHandle];
        signpostID8 = [v88 signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle8))
        {
          *v139 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID8, "initMemoryScanner", "setting up VMUScanOverlay", v139, 2u);
        }
      }

      v93 = [[VMUScanOverlay alloc] initWithScanner:v7];
      scanOverlay = v7->_scanOverlay;
      v7->_scanOverlay = v93;

      [(VMUKernelCoreMemoryScanner *)v7 refineTypesWithOverlay:v7->_scanOverlay];
      v95 = v123;
      if (v123 && [v123 signpostID])
      {
        logHandle9 = [v123 logHandle];
        signpostID9 = [v123 signpostID];
        if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle9))
        {
          *v139 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, signpostID9, "initMemoryScanner", "", v139, 2u);
        }

        v95 = v123;
      }

      [v95 endEvent:"initMemoryScanner"];
      v98 = objc_opt_new();
      nonscannableGlobalSymbolsArray = v7->_nonscannableGlobalSymbolsArray;
      v7->_nonscannableGlobalSymbolsArray = v98;

      CSSymbolicatorGetAOutSymbolOwner();
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      v100 = [&unk_1F4638A40 countByEnumeratingWithState:&v125 objects:v140 count:16];
      if (v100)
      {
        v101 = *v126;
        do
        {
          for (i = 0; i != v100; ++i)
          {
            if (*v126 != v101)
            {
              objc_enumerationMutation(&unk_1F4638A40);
            }

            [*(*(&v125 + 1) + 8 * i) UTF8String];
            CSSymbolOwnerGetSymbolWithMangledName();
            Range = CSSymbolGetRange();
            if (v104)
            {
              [(VMURangeArray *)v7->_nonscannableGlobalSymbolsArray addRange:Range, v104];
            }
          }

          v100 = [&unk_1F4638A40 countByEnumeratingWithState:&v125 objects:v140 count:16];
        }

        while (v100);
      }

      v7->_regionDescriptionOptions = v120;
      v105 = *MEMORY[0x1E69E9AC8];
      memoryCache2 = [(VMUTask *)v7->_task memoryCache];
      LOBYTE(v105) = v105 == [memoryCache2 pageSize];

      if (v105)
      {
        MEMORY[0x1C695D930]();
        v107 = CSArchitectureIs64Bit();
        CSSymbolicatorGetArchitecture();
        v108 = CSArchitectureIs64Bit();
        v109 = *MEMORY[0x1E69E9848];
        if (v107 == v108)
        {
          v110 = 1;
          fwrite("warning: kernel core support is highly experimental\n", 0x34uLL, 1uLL, v109);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *v139 = 0;
            _os_log_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "warning: kernel core support is highly experimental", v139, 2u);
            v110 = 1;
          }

          goto LABEL_123;
        }

        fwrite("error: core's pointer size doesn't match the host system, cannot continue\n", 0x4AuLL, 1uLL, v109);
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          [VMUKernelCoreMemoryScanner initWithVMUTask:options:];
        }
      }

      else
      {
        v111 = *MEMORY[0x1E69E9848];
        memoryCache3 = [(VMUTask *)v7->_task memoryCache];
        pageSize = [memoryCache3 pageSize];
        fprintf(v111, "error: core's page size doesn't match the host system (%u KB vs %u KB), cannot continue\n", pageSize >> 10, *MEMORY[0x1E69E9AC8] >> 10);

        v114 = MEMORY[0x1E69E9C10];
        v115 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
        {
          memoryCache4 = [(VMUTask *)v7->_task memoryCache];
          -[VMUKernelCoreMemoryScanner initWithVMUTask:options:].cold.1([memoryCache4 pageSize], v139, memoryCache4);
        }
      }

      v110 = 0;
    }

    else
    {

      v110 = 0;
      v7 = 0;
    }

LABEL_123:
    v12 = v7;
    v7 = v130;
LABEL_124:

    _Block_object_dispose(buf, 8);
    if (v110)
    {
      goto LABEL_125;
    }

LABEL_126:
    v118 = 0;
    v117 = taskCopy;
    goto LABEL_127;
  }

  v12 = 0;
LABEL_125:
  v117 = taskCopy;
  v12 = v12;
  v118 = v12;
LABEL_127:

  return v118;
}

uint64_t __54__VMUKernelCoreMemoryScanner_initWithVMUTask_options___block_invoke(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = (a2 >> *MEMORY[0x1E69E9AC0]) & 0x7FFFF;
  v6 = v4 + 64;
  v7 = *(v4 + 64 + 4 * v5);
  v8 = *(v4 + 32);
  if (v7)
  {
    v9 = *(v8 + ((v7 - 1) << 6));
    if (a2 - v9[1] < v9[2])
    {
      goto LABEL_25;
    }
  }

  v10 = *(v4 + 40);
  if (!v10)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_12;
  }

  v11 = *(v4 + 32);
  while (1)
  {
    v12 = v10 >> 1;
    v13 = &v11[8 * (v10 >> 1)];
    if (*(*v13 + 1) <= a2)
    {
      break;
    }

LABEL_8:
    v14 = v10 > 1;
    v10 = v12;
    if (!v14)
    {
      goto LABEL_9;
    }
  }

  if (*(*v13 + 2) + *(*v13 + 1) <= a2)
  {
    v11 = v13 + 8;
    v12 = --v10 >> 1;
    goto LABEL_8;
  }

  if ([*v13 isSpecialPhysFootprintRegion])
  {
    v13 = 0;
  }

LABEL_12:
  if (*(*v13 + 132))
  {
    v15 = v13 + 8;
    v16 = *(v4 + 40) - ((v13 - *(v4 + 32) + 64) >> 6);
    if (v16)
    {
      while (1)
      {
        v17 = v16 >> 1;
        v18 = &v15[8 * (v16 >> 1)];
        if (*(*v18 + 1) <= a2)
        {
          if (*(*v18 + 2) + *(*v18 + 1) > a2)
          {
            if ([*v18 isSpecialPhysFootprintRegion])
            {
              v16 = 0;
            }

            else
            {
              v16 = v18;
            }

            break;
          }

          v15 = v18 + 8;
          v17 = --v16 >> 1;
        }

        v14 = v16 > 1;
        v16 = v17;
        if (!v14)
        {
          v16 = 0;
          break;
        }
      }
    }

    if (v16)
    {
      v13 = v16;
    }
  }

  *(v6 + 4 * v5) = ((v13 - v8) >> 6) + 1;
  v9 = *v13;
LABEL_25:
  v19 = [v9 descriptionWithOptions:513 maximumLength:0];
  v20 = *(*(a1 + 32) + 8);
  v21 = *(v20 + 40);
  *(v20 + 40) = v19;

  v22 = *(*(*(a1 + 32) + 8) + 40);

  return [v22 UTF8String];
}

uint64_t __54__VMUKernelCoreMemoryScanner_initWithVMUTask_options___block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  if ([v4 rangeOfString:@"zalloc (no zone)"] == 0x7FFFFFFFFFFFFFFFLL)
  {
    if ([v5 rangeOfString:@"zalloc (no zone)"] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = [v4 compare:v5];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = -1;
  }

  return v6;
}

- (void)dealloc
{
  blocks = self->_blocks;
  if (blocks && !self->_processObjectGraph)
  {
    free(blocks);
    self->_blocks = 0;
  }

  CSRelease();
  [(VMUTaskMemoryCache *)self->_memoryCache setRegionInfoBlock:0];
  if (self->_regionsCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      regions = self->_regions;
      v7 = self->_memoryCache;
      v8 = v7;
      v9 = regions + v4;
      if (*(&regions[1].var0 + v4))
      {
        if (v9 == *(v9 + 7))
        {
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = ___unmapRegion_block_invoke_0;
          aBlock[3] = &unk_1E8277E50;
          v20 = v7;
          v21 = regions + v4;
          v22 = regions;
          v10 = _Block_copy(aBlock);
          v10[2]();
        }

        else
        {
          *(regions + v4 + 40) &= 1uLL;
          *(v9 + 6) = 0;
          *(v9 + 7) = 0;
        }
      }

      v11 = *(&self->_regions->var1 + v4);
      if (v11)
      {
        free(v11);
        *(&self->_regions->var1 + v4) = 0;
      }

      ++v5;
      v4 += 64;
    }

    while (v5 < self->_regionsCount);
  }

  v12 = self->_regions;
  if (v12)
  {
    free(v12);
    self->_regions = 0;
  }

  zones = self->_zones;
  if (zones)
  {
    free(zones);
    self->_zones = 0;
  }

  instanceValues = self->_instanceValues;
  if (instanceValues)
  {
    free(instanceValues);
  }

  self->_instanceValues = 0;
  regionMap = self->_regionMap;
  if (regionMap)
  {
    var3 = regionMap->var3;
    if (var3)
    {
      free(var3);
    }

    free(regionMap);
  }

  userMarkedAbandoned = self->_userMarkedAbandoned;
  if (userMarkedAbandoned)
  {
    free(userMarkedAbandoned);
    self->_userMarkedAbandoned = 0;
  }

  [(VMUKernelCoreMemoryScanner *)self _destroyLinearClassInfos];
  v18.receiver = self;
  v18.super_class = VMUKernelCoreMemoryScanner;
  [(VMUKernelCoreMemoryScanner *)&v18 dealloc];
}

- (void)_withMemoryReaderBlock:(id)block
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__VMUKernelCoreMemoryScanner__withMemoryReaderBlock___block_invoke;
  v5[3] = &unk_1E82776C0;
  v5[4] = self;
  v6 = 0;
  blockCopy = block;
  v4 = _Block_copy(v5);
  blockCopy[2](blockCopy, v4);
}

unint64_t __53__VMUKernelCoreMemoryScanner__withMemoryReaderBlock___block_invoke(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = 0;
  v5 = *(*(a1 + 32) + 128);
  v7 = *(v5 + 48);
  v6 = *(v5 + 56);
  v8 = v6 - v7;
  v9 = v6 < v7;
  if (a2 - v7 < v8 && !v9)
  {
    v12 = MEMORY[0x1E69E9AC0];
    v13 = a2 >> *MEMORY[0x1E69E9AC0];
    if (v13)
    {
      v14 = *(v5 + 24);
      v17 = *v14;
      v15 = v14 + 1;
      v16 = v17;
      v18 = a2 >> *MEMORY[0x1E69E9AC0];
      do
      {
        v19 = v18 & 0x3FFFFFF;
        if (v16 <= v19 || ((*(v15 + (v19 >> 3)) >> (v18 & 7)) & 1) == 0)
        {
          return 0;
        }

        v18 >>= 26;
      }

      while (v18);
    }

    v20 = v13 & 0x7FFFF;
    v21 = v5 + 64;
    v22 = *(v5 + 64 + 4 * (v13 & 0x7FFFF));
    v23 = *(v5 + 32);
    if (v22)
    {
      v24 = v23 + ((v22 - 1) << 6);
      if (a2 - *(*v24 + 8) < *(*v24 + 16))
      {
        goto LABEL_10;
      }
    }

    v50 = *(v5 + 40);
    if (v50)
    {
      v51 = *(v5 + 32);
      do
      {
        v52 = v50 >> 1;
        v24 = v51 + (v50 >> 1 << 6);
        if (*(*v24 + 8) <= a2)
        {
          if (*(*v24 + 16) + *(*v24 + 8) > a2)
          {
            v54 = [*v24 isSpecialPhysFootprintRegion];
            if (v54)
            {
              v55 = 0;
            }

            else
            {
              v55 = v24;
            }

            if (v54)
            {
              return 0;
            }

            if ((*(*v55 + 132) & 1) == 0)
            {
              goto LABEL_78;
            }

            v56 = (v55 + 64);
            v57 = *(v5 + 40) - ((v55 + 64 - *(v5 + 32)) >> 6);
            if (!v57)
            {
              goto LABEL_75;
            }

            while (1)
            {
              v58 = v57 >> 1;
              v59 = &v56[8 * (v57 >> 1)];
              if (*(*v59 + 1) <= a2)
              {
                if (*(*v59 + 2) + *(*v59 + 1) > a2)
                {
                  if ([*v59 isSpecialPhysFootprintRegion])
                  {
                    v57 = 0;
                  }

                  else
                  {
                    v57 = v59;
                  }

LABEL_75:
                  if (v57)
                  {
                    v55 = v57;
                  }

                  v24 = v55;
LABEL_78:
                  *(v21 + 4 * v20) = ((v55 - v23) >> 6) + 1;
LABEL_10:
                  v25 = a3 + a2;
                  if (*(*v24 + 16) + *(*v24 + 8) < a3 + a2 && *(*v24 + 8) + (*(v24 + 40) >> 1) < v25)
                  {
                    LODWORD(v26) = 1;
                    do
                    {
                      v27 = (*(v24 + (v26 << 6)) + 8);
                      v26 = (v26 + 1);
                    }

                    while (v27[1] + *v27 < v25);
                    v28 = *(a1 + 32);
                    v29 = *(a1 + 40);
                    v30 = *(v28 + 72);
                    v31 = *(v28 + 8);
                    v83 = v30;
                    v84 = v29;
                    v32 = 0;
                    if (v26)
                    {
                      v33 = v26;
                      v34 = v24;
                      do
                      {
                        v35 = *v34;
                        v34 += 8;
                        v32 += *(v35 + 16);
                        --v33;
                      }

                      while (v33);
                    }

                    v91[0] = 0;
                    v86 = 0;
                    v36 = [v83 findMappedAddress:*(*v24 + 8) size:v32];
                    if (v36)
                    {
                      v37 = v36[1];
                      v38 = *(*v24 + 8) - *v36;
                      v91[0] = v36[2] + v38;
                      v86 = v37 - v38;
                      goto LABEL_19;
                    }

                    v82 = v31;
                    if (v26)
                    {
                      v74 = v26;
                      v75 = v24;
                      do
                      {
                        v76 = v83;
                        v77 = v84;
                        if (v75[6])
                        {
                          if (v75 == v75[7])
                          {
                            aBlock[0] = MEMORY[0x1E69E9820];
                            aBlock[1] = 3221225472;
                            aBlock[2] = ___unmapRegion_block_invoke_0;
                            aBlock[3] = &unk_1E8277E50;
                            v88 = v76;
                            v89 = v75;
                            v90 = v24;
                            v79 = _Block_copy(aBlock);
                            v80 = v79;
                            if (v84)
                            {
                              dispatch_async(v77, v79);
                            }

                            else
                            {
                              v79[2](v79);
                            }
                          }

                          else
                          {
                            v78 = v75[5] & 1;
                            v75[6] = 0;
                            v75[7] = 0;
                            v75[5] = v78;
                          }
                        }

                        v75 += 8;
                        --v74;
                      }

                      while (v74);
                    }

                    v81 = [v83 mapAddress:*(*v24 + 8) size:v32 returnedAddress:v91 returnedSize:&v86];
                    v12 = MEMORY[0x1E69E9AC0];
                    v31 = v82;
                    if (v81)
                    {
                      if (task_exists(v82))
                      {
                        fprintf(*MEMORY[0x1E69E9848], "Failed to map remote region at [%#llx-%#llx]\n", *(*v24 + 8), *(*v24 + 8) + v32);
                      }
                    }

                    else
                    {
LABEL_19:
                      if (v26)
                      {
                        v39 = v86;
                        v40 = (v24 + 40);
                        do
                        {
                          v40[2] = v24;
                          *v40 = *v40 & 1 | (2 * v39);
                          v41 = v91[0];
                          v40[1] = v91[0];
                          v42 = *(v40 - 5) + 8;
                          v91[0] = *(*(v40 - 5) + 16) + v41;
                          v39 = v86 - *(v42 + 8);
                          v86 = v39;
                          v40 += 8;
                          --v26;
                        }

                        while (v26);
                      }
                    }
                  }

                  v43 = *(a1 + 32);
                  v44 = *(v43 + 72);
                  v45 = *(v43 + 112);
                  v46 = *(v43 + 120);
                  v47 = *(v43 + 8);
                  v48 = v44;
                  v49 = v48;
                  if (*(v24 + 48))
                  {
LABEL_24:

                    return *(v24 + 48) + a2 - *(*v24 + 8);
                  }

                  if ((*(*v24 + 132) & 2) == 0)
                  {
                    [v48 taskIsTranslated];
                  }

                  aBlock[0] = 0;
                  v91[0] = 0;
                  v61 = [v49 mapAddress:*(*v24 + 8) size:*(*v24 + 16) returnedAddress:aBlock returnedSize:v91];
                  if (!v61)
                  {
                    v73 = aBlock[0];
                    *(v24 + 40) = *(v24 + 40) & 1 | (2 * v91[0]);
                    *(v24 + 48) = v73;
                    *(v24 + 56) = v24;
                    goto LABEL_24;
                  }

                  if ((*(*v24 + 52) & 3u) - 1 >= 2)
                  {
                    v62 = v61;
                    v63 = task_exists(v47);
                    if (v24 != v45 + ((v46 - 1) << 6) && v63)
                    {
                      v85 = *MEMORY[0x1E69E9848];
                      v64 = [*v24 address];
                      v65 = *(*v24 + 24);
                      v66 = (&vm_prot_strings_0)[v65];
                      v67 = *(*v24 + 16) + *(*v24 + 8);
                      v68 = VMURegionTypeDescriptionForTagShareProtAndPager(*(*v24 + 104), *(*v24 + 50), v65, *(*v24 + 49));
                      v69 = [v68 UTF8String];
                      v70 = *(*v24 + 16) >> *v12;
                      v71 = "pages";
                      if (v70 == 1)
                      {
                        v71 = "page";
                      }

                      if (*(v24 + 24) == *(v24 + 32))
                      {
                        v72 = "";
                      }

                      else
                      {
                        v72 = " [root]";
                      }

                      fprintf(v85, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", v64, v67, v66, v69, v70, v71, v72, v62);
                    }
                  }

                  return 0;
                }

                v56 = v59 + 8;
                v58 = --v57 >> 1;
              }

              v60 = v57 > 1;
              v57 = v58;
              if (!v60)
              {
                v57 = 0;
                goto LABEL_75;
              }
            }
          }

          v51 = v24 + 64;
          v52 = --v50 >> 1;
        }

        v53 = v50 >= 2;
        v50 = v52;
      }

      while (v53);
    }

    return 0;
  }

  return result;
}

- (void)_callRemoteMallocEnumerators:(unsigned int)enumerators block:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__VMUKernelCoreMemoryScanner__callRemoteMallocEnumerators_block___block_invoke;
  v8[3] = &unk_1E8277D00;
  enumeratorsCopy = enumerators;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [(VMUKernelCoreMemoryScanner *)self _withMemoryReaderBlock:v8];
}

void __65__VMUKernelCoreMemoryScanner__callRemoteMallocEnumerators_block___block_invoke(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __65__VMUKernelCoreMemoryScanner__callRemoteMallocEnumerators_block___block_invoke_2;
  v4[3] = &unk_1E8277CD8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v6 = *(a1 + 48);
  v5 = v3;
  _withPeekTransformerFunctionForMemoryReader(a2, v4);
}

void __65__VMUKernelCoreMemoryScanner__callRemoteMallocEnumerators_block___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 232))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (*(*(v2 + 224) + v4 + 16))
      {
        local_zone_count = get_local_zone_count();
        v7 = [*(*(a1 + 32) + 8) taskPort];
        v8 = *(a1 + 48);
        v9 = *(a1 + 32);
        v10 = (*(v9 + 224) + v4);
        v11 = *v10;
        v12 = v10[2];
        v13 = [*(v9 + 160) objectAtIndexedSubscript:v5];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __65__VMUKernelCoreMemoryScanner__callRemoteMallocEnumerators_block___block_invoke_3;
        v15[3] = &unk_1E82776F0;
        v16 = *(a1 + 40);
        v17 = v5;
        VMUEnumerateMallocBlocksInZone(v7, v8, v11, a2, v12, v13, v15);

        unregister_new_local_zones(local_zone_count);
        v2 = *(a1 + 32);
      }

      ++v5;
      v4 += 24;
    }

    while (v5 < *(v2 + 232));
  }
}

char *__50__VMUKernelCoreMemoryScanner__shouldScanVMregion___block_invoke()
{
  result = getenv("SCAN_VM_REGIONS_WITH_UNKNOWN_PATHS");
  _MergedGlobals_0 = result;
  return result;
}

- (id)_cachedVariantForGenericInfo:(id)info variantKey:(unint64_t)key
{
  v6 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:info];
  variantCachesByIsaIndex = self->_variantCachesByIsaIndex;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  v9 = [(NSMutableDictionary *)variantCachesByIsaIndex objectForKeyedSubscript:v8];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:key];
  v11 = [v9 objectForKeyedSubscript:v10];

  return v11;
}

- (void)_registerVariant:(id)variant forGenericInfo:(id)info variantKey:(unint64_t)key
{
  classInfoIndexer = self->_classInfoIndexer;
  variantCopy = variant;
  v10 = [(VMUClassInfoMap *)classInfoIndexer indexForClassInfo:info];
  variantCachesByIsaIndex = self->_variantCachesByIsaIndex;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v16 = [(NSMutableDictionary *)variantCachesByIsaIndex objectForKeyedSubscript:v12];

  if (!v16)
  {
    v16 = objc_opt_new();
    v13 = self->_variantCachesByIsaIndex;
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
    [(NSMutableDictionary *)v13 setObject:v16 forKeyedSubscript:v14];
  }

  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:key];
  [v16 setObject:variantCopy forKeyedSubscript:v15];
}

- (void)_addThreadNodesFromTask
{
  if (self->_threadsCount)
  {
    v3 = 0;
    blocksCount = self->_blocksCount;
    do
    {
      blocksSize = self->_blocksSize;
      if (blocksSize <= blocksCount)
      {
        if ((2 * blocksSize) <= 0x40000)
        {
          v7 = 0x40000;
        }

        else
        {
          v7 = 2 * blocksSize;
        }

        do
        {
          v8 = v7;
          v7 *= 2;
        }

        while (v8 < blocksCount);
        self->_blocksSize = v8;
        blocks = malloc_type_realloc(self->_blocks, 16 * v8, 0x1000040451B5BE8uLL);
        self->_blocks = blocks;
        if (!blocks)
        {
          NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", blocksSize, self->_blocksSize);
          abort();
        }

        blocksCount = self->_blocksCount;
      }

      else
      {
        blocks = self->_blocks;
      }

      v9 = &blocks[blocksCount];
      v9->var0 = v3;
      *(v9 + 1) = (v3 << 41) | 4;
      blocksCount = self->_blocksCount + 1;
      self->_blocksCount = blocksCount;
      ++v3;
    }

    while (v3 < self->_threadsCount);
  }
}

- (unint64_t)_lengthOfMappedFileOfRegion:(id)region
{
  v16 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  if (!regionCopy[49])
  {
    goto LABEL_11;
  }

  if ([(VMUTask *)self->_task rangeIsInSharedCache:*(regionCopy + 1), *(regionCopy + 2)])
  {
    st_size = *(regionCopy + 2) + *(regionCopy + 15);
    goto LABEL_16;
  }

  path = [regionCopy path];
  if (!path)
  {
LABEL_11:
    st_size = 0;
    goto LABEL_16;
  }

  v7 = path;
  if (([path containsString:@"*"] & 1) != 0 || (objc_msgSend(v7, "hasPrefix:", @"/") & 1) == 0)
  {
    memoryCache = [(VMUTask *)self->_task memoryCache];
    v9 = [memoryCache procRegionFileNameForAddress:*(regionCopy + 1) buffer:v15 bufferSize:1024];

    if (v9 >= 1)
    {
      *(&v15[0].st_dev + v9) = 0;
      v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];

      v7 = v10;
    }
  }

  v11 = [(NSMutableDictionary *)self->_mappedFileNameToLengthDict objectForKeyedSubscript:v7];
  v12 = v11;
  if (v11)
  {
    st_size = [v11 unsignedLongLongValue];
  }

  else
  {
    memset(v15, 0, 144);
    if (stat([v7 UTF8String], v15))
    {
      st_size = *(regionCopy + 2) + *(regionCopy + 15);
    }

    else
    {
      st_size = v15[0].st_size;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15[0].st_size];
      [(NSMutableDictionary *)self->_mappedFileNameToLengthDict setObject:v13 forKeyedSubscript:v7];
    }
  }

LABEL_16:
  return st_size;
}

- (void)_shortenScannableRangeOfMappedFile:(unsigned int)file
{
  v4 = self->_regions + 64 * file;
  v8 = *v4;
  v5 = [(VMUKernelCoreMemoryScanner *)self _lengthOfMappedFileOfRegion:v8];
  v6 = v8[15];
  if (v5 >= v6)
  {
    if (v5 >= v8[2] + v6)
    {
      goto LABEL_6;
    }

    v7 = v5 - v6 + *(v4 + 3);
  }

  else
  {
    v7 = *(v4 + 3) + 1;
  }

  *(v4 + 4) = v7;
LABEL_6:
}

- (BOOL)addRootNodesFromTaskWithError:(id *)error
{
  [(VMUKernelCoreMemoryScanner *)self _addThreadNodesFromTask];
  [(VMUKernelCoreMemoryScanner *)self _addSpecialNodesFromTask];
  p_regionsCount = &self->_regionsCount;
  p_regions = &self->_regions;
  v6 = self->_regionsCount - 1;
  do
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    v8 = *(*(&(*p_regions)->var0 + 8 * v6--) + 50);
  }

  while (v8 == 5);
  v9 = 0;
  do
  {
    v10 = v9;
    v11 = *(&(*p_regions)->var0 + 8 * v9);
    v12 = v11;
    if (v11[50] != 3 && ([v11 isSubmap] & 1) == 0 && (objc_msgSend(v12, "isSpecialPhysFootprintRegion") & 1) == 0)
    {
      v13 = *(v12 + 1);
      v14 = *(v12 + 2);
      v15 = [(VMUTask *)self->_task rangeIsInSharedCache:v13, v14];
      if (([v12 isMallocHeapRelated] & 1) == 0 && (objc_msgSend(v12, "ignoreRegionDuringScanning") & 1) == 0)
      {
        if ([v12 willNotHoldPointers])
        {
          v16 = *p_regions + 64 * v10;
          *(v16 + 3) = v13;
          *(v16 + 4) = v13 + 1;
        }

        else
        {
          if ((~[v12 protection] & 3) != 0)
          {
            v18 = *(v12 + 6);
            if (((~v18 & 5) == 0 && !v15 || v18 == 1 && !v15) && (v12[132] & 2) == 0)
            {
              v19 = *p_regions + 64 * v10;
              *(v19 + 3) = *(v12 + 1);
              *(v19 + 4) = v14 + v13;
            }
          }

          else if ((v12[132] & 4) == 0 || self->_targetProcessHasObjCPatches && [v12 dirtyLength])
          {
            v17 = *p_regions + 64 * v10;
            *(v17 + 3) = v13;
            *(v17 + 4) = v14 + v13;
          }

          else
          {
            v20 = *p_regions + 64 * v10;
            *(v20 + 3) = 0;
            *(v20 + 4) = 0;
          }

          if ([v12 isActivityTracing])
          {
            *(&(*p_regions)->var5 + 8 * v10) = *(&(*p_regions)->var4 + 8 * v10) + 4096;
          }

          if ((v12[132] & 2) != 0 && (v12[132] & 4) == 0 && ([v12 protection] & 1) != 0 && (objc_msgSend(v12, "protection") & 4) == 0)
          {
            type = [v12 type];
            v82 = [type isEqualToString:@"__LINKEDIT"];

            if ((v82 & 1) == 0)
            {
              v21 = 184;
              if (v15)
              {
                v21 = 168;
              }

              v22 = (self + v21);
              v23 = *v22;
              if (!*v22)
              {
                *v22 = v13;
                v23 = v13;
              }

              v22[1] = v14 + v13 - v23;
              if (!v15)
              {
                [(VMURangeArray *)self->_dataSegmentsRangeArrayOutsideSharedCache addRange:v13, v14];
              }
            }
          }

          if (*(&(*p_regions)->var5 + 8 * v10) && v12[49])
          {
            [(VMUKernelCoreMemoryScanner *)self _shortenScannableRangeOfMappedFile:v10];
          }
        }
      }
    }

    v9 = v10 + 1;
  }

  while (v10 + 1 <= v7);
  v86[0] = MEMORY[0x1E69E9820];
  v86[1] = 3221225472;
  v86[2] = __60__VMUKernelCoreMemoryScanner_addRootNodesFromTaskWithError___block_invoke;
  v86[3] = &unk_1E82777F0;
  v86[4] = self;
  [(VMUKernelCoreMemoryScanner *)self _callRemoteMallocEnumerators:6 block:v86];
  if (!self->_stackRanges)
  {
    v24 = objc_alloc_init(VMURangeArray);
    stackRanges = self->_stackRanges;
    self->_stackRanges = v24;
  }

  v83 = &self->_regionsCount;
  if (*p_regionsCount)
  {
    v26 = *p_regions;
    v85 = *p_regions + 64 * (*p_regionsCount - 1);
  }

  else
  {
    v26 = 0;
    v85 = 0;
  }

  if (self->_threadsCount)
  {
    v27 = 0;
    do
    {
      v28 = [(VMUTaskThreadStates *)self->_threadStates stackPointerForThreadNum:v27];
      if (v28)
      {
        v29 = v28;
        regionMap = self->_regionMap;
        var6 = regionMap->var6;
        var7 = regionMap->var7;
        v33 = var7 - var6;
        v34 = var7 < var6;
        if (v28 - var6 < v33 && !v34)
        {
          v35 = v28 >> *MEMORY[0x1E69E9AC0];
          if (v35)
          {
            var3 = regionMap->var3;
            v39 = *var3;
            v37 = var3 + 1;
            v38 = v39;
            v40 = v28 >> *MEMORY[0x1E69E9AC0];
            do
            {
              v41 = v40 & 0x3FFFFFF;
              if (v38 <= v41 || ((*(v37 + (v41 >> 3)) >> (v40 & 7)) & 1) == 0)
              {
                goto LABEL_80;
              }

              v40 >>= 26;
            }

            while (v40);
          }

          v42 = v35 & 0x7FFFF;
          var8 = regionMap->var8;
          v44 = regionMap->var8[v35 & 0x7FFFF];
          var4 = regionMap->var4;
          if (v44)
          {
            v46 = var4 + 64 * (v44 - 1);
            if (v28 - *(*v46 + 8) < *(*v46 + 16))
            {
              goto LABEL_56;
            }
          }

          var5 = regionMap->var5;
          if (var5)
          {
            v52 = regionMap->var4;
            do
            {
              v53 = var5 >> 1;
              v46 = v52 + 64 * (var5 >> 1);
              if (*(*v46 + 8) <= v28)
              {
                if (*(*v46 + 16) + *(*v46 + 8) > v28)
                {
                  isSpecialPhysFootprintRegion = [*v46 isSpecialPhysFootprintRegion];
                  if (isSpecialPhysFootprintRegion)
                  {
                    v58 = 0;
                  }

                  else
                  {
                    v58 = v46;
                  }

                  if (isSpecialPhysFootprintRegion)
                  {
                    break;
                  }

                  if ((*(*v58 + 132) & 1) == 0)
                  {
                    goto LABEL_95;
                  }

                  v59 = (v58 + 64);
                  v60 = regionMap->var5 - ((v58 + 64 - regionMap->var4) >> 6);
                  if (!v60)
                  {
                    goto LABEL_92;
                  }

                  while (1)
                  {
                    v61 = v60 >> 1;
                    v62 = &v59[8 * (v60 >> 1)];
                    if (*(*v62 + 1) <= v29)
                    {
                      if (*(*v62 + 2) + *(*v62 + 1) > v29)
                      {
                        v64 = v58;
                        isSpecialPhysFootprintRegion2 = [*v62 isSpecialPhysFootprintRegion];
                        v58 = v64;
                        if (isSpecialPhysFootprintRegion2)
                        {
                          v60 = 0;
                        }

                        else
                        {
                          v60 = v62;
                        }

LABEL_92:
                        if (v60)
                        {
                          v58 = v60;
                        }

                        v46 = v58;
LABEL_95:
                        var8[v42] = ((v58 - var4) >> 6) + 1;
LABEL_56:
                        *(v46 + 3) = v29;
                        v47 = *(*v46 + 8);
                        v48 = *(*v46 + 16) + v47;
                        *(v46 + 4) = v48;
                        for (i = (v46 - 64); i >= v26; i -= 64)
                        {
                          if (*(*i + 16) + *(*i + 8) != v47)
                          {
                            break;
                          }

                          if (![*i isStack])
                          {
                            break;
                          }

                          if (!*(*i + 24))
                          {
                            break;
                          }

                          v47 = *(*i + 8);
                          *(i + 24) = 0;
                          *(i + 32) = 0;
                        }

                        for (j = (v46 + 64); j <= v85; j += 64)
                        {
                          if (v48 != *(*j + 8))
                          {
                            break;
                          }

                          if (![*j isStack])
                          {
                            break;
                          }

                          if (!*(*j + 24))
                          {
                            break;
                          }

                          v55 = (*j + 8);
                          v56 = *v55;
                          *(j + 24) = *v55;
                          v48 = v55[1] + v56;
                          *(j + 32) = v48;
                        }

                        [(VMURangeArray *)self->_stackRanges addRange:v29, v48 - v29];
                        goto LABEL_80;
                      }

                      v59 = v62 + 8;
                      v61 = --v60 >> 1;
                    }

                    v63 = v60 > 1;
                    v60 = v61;
                    if (!v63)
                    {
                      v60 = 0;
                      goto LABEL_92;
                    }
                  }
                }

                v52 = (v46 + 64);
                v53 = --var5 >> 1;
              }

              v54 = var5 >= 2;
              var5 = v53;
            }

            while (v54);
          }
        }
      }

LABEL_80:
      v27 = (v27 + 1);
    }

    while (v27 < self->_threadsCount);
  }

  if (s_enumeratorDebugging_0)
  {
    if (([(VMUKernelCoreMemoryScanner *)v83 addRootNodesFromTaskWithError:&self->_regions, &v87]& 1) != 0)
    {
      goto LABEL_112;
    }

    regionsCount = v87;
    if (!v87)
    {
      goto LABEL_112;
    }
  }

  else
  {
    regionsCount = *v83;
    if (!*v83)
    {
      goto LABEL_112;
    }
  }

  v67 = 0;
  do
  {
    v68 = *p_regions;
    if (*(&(*p_regions)->var4 + 8 * v67) != *(&(*p_regions)->var5 + 8 * v67))
    {
      blocksCount = self->_blocksCount;
      blocksSize = self->_blocksSize;
      if (blocksSize <= blocksCount)
      {
        if ((2 * blocksSize) <= 0x40000)
        {
          v71 = 0x40000;
        }

        else
        {
          v71 = 2 * blocksSize;
        }

        do
        {
          v72 = v71;
          v71 *= 2;
        }

        while (v72 < blocksCount);
        self->_blocksSize = v72;
        v73 = malloc_type_realloc(self->_blocks, 16 * v72, 0x1000040451B5BE8uLL);
        self->_blocks = v73;
        if (!v73)
        {
          NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", blocksSize, self->_blocksSize);
          abort();
        }

        v68 = *p_regions;
      }

      v74 = *(&v68->var0 + 8 * v67);
      if ([v74 isRootRegion])
      {
        v75 = 2;
      }

      else
      {
        v75 = 5;
      }

      v76 = &self->_blocks[self->_blocksCount];
      v77 = self->_regions + 64 * v67;
      v78 = *(v77 + 3);
      v79 = v75 & 0xFFFFFFE00000001FLL | (32 * (*(v77 + 8) - v78)) | (v67 << 41);
      v76->var0 = v78;
      *(v76 + 1) = v79;
      ++self->_blocksCount;

      regionsCount = self->_regionsCount;
    }

    ++v67;
  }

  while (v67 < regionsCount);
LABEL_112:
  if ([(VMUKernelCoreMemoryScanner *)self objectContentLevel]== 2)
  {
    _readonlyRegionRanges = [(VMUKernelCoreMemoryScanner *)self _readonlyRegionRanges];
    [(VMUObjectIdentifier *)self->_objectIdentifier setReadonlyRegionRanges:_readonlyRegionRanges];
  }

  return 1;
}

void __60__VMUKernelCoreMemoryScanner_addRootNodesFromTaskWithError___block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  if (a5)
  {
    v6 = a1;
    v7 = 0;
    v88 = a2;
    v8 = a5;
    v9 = MEMORY[0x1E69E9AC0];
    v10 = &unk_1EC1D0000;
    v90 = a2;
    v91 = a3;
    do
    {
      v11 = (a4 + 16 * v7);
      if (v11[1])
      {
        v12 = *(*(v6 + 32) + 128);
        v13 = *(v12 + 48);
        v14 = *(v12 + 56);
        v15 = v14 >= v13;
        v16 = v14 - v13;
        if (v15)
        {
          v17 = *v11;
          if (*v11 - v13 < v16)
          {
            v18 = v17 >> *v9;
            if (v18)
            {
              v19 = *(v12 + 24);
              v22 = *v19;
              v20 = v19 + 1;
              v21 = v22;
              v23 = v17 >> *v9;
              do
              {
                v24 = v23 & 0x3FFFFFF;
                if (v21 <= v24 || ((*(v20 + (v24 >> 3)) >> (v23 & 7)) & 1) == 0)
                {
                  goto LABEL_71;
                }

                v23 >>= 26;
              }

              while (v23);
            }

            v25 = v18 & 0x7FFFF;
            v26 = v12 + 64;
            v27 = *(v12 + 64 + 4 * (v18 & 0x7FFFF));
            v28 = *(v12 + 32);
            if (v27)
            {
              v29 = v28 + ((v27 - 1) << 6);
              if (v17 - *(*v29 + 8) < *(*v29 + 16))
              {
                goto LABEL_14;
              }
            }

            v70 = *(v12 + 40);
            if (v70)
            {
              v71 = *(v12 + 32);
              do
              {
                v72 = v70 >> 1;
                v29 = v71 + (v70 >> 1 << 6);
                if (*(*v29 + 8) <= v17)
                {
                  if (*(*v29 + 16) + *(*v29 + 8) > v17)
                  {
                    v73 = [*v29 isSpecialPhysFootprintRegion];
                    v10 = &unk_1EC1D0000;
                    v9 = MEMORY[0x1E69E9AC0];
                    v6 = a1;
                    a2 = v90;
                    a3 = v91;
                    if (v73)
                    {
                      v74 = 0;
                    }

                    else
                    {
                      v74 = v29;
                    }

                    if ((v73 & 1) == 0)
                    {
                      if ((*(*v74 + 132) & 1) == 0)
                      {
                        goto LABEL_86;
                      }

                      v75 = v74 + 8;
                      v76 = *(v12 + 40) - ((v74 - *(v12 + 32) + 64) >> 6);
                      if (!v76)
                      {
                        goto LABEL_83;
                      }

                      while (1)
                      {
                        v77 = v76 >> 1;
                        v78 = &v75[8 * (v76 >> 1)];
                        if (*(*v78 + 1) <= v17)
                        {
                          if (*(*v78 + 2) + *(*v78 + 1) > v17)
                          {
                            v79 = v74;
                            v80 = [*v78 isSpecialPhysFootprintRegion];
                            v74 = v79;
                            v10 = &unk_1EC1D0000;
                            v9 = MEMORY[0x1E69E9AC0];
                            v6 = a1;
                            a2 = v90;
                            a3 = v91;
                            if (v80)
                            {
                              v76 = 0;
                            }

                            else
                            {
                              v76 = v78;
                            }

LABEL_83:
                            if (v76)
                            {
                              v29 = v76;
                            }

                            else
                            {
                              v29 = v74;
                            }

LABEL_86:
                            *(v26 + 4 * v25) = ((v29 - v28) >> 6) + 1;
LABEL_14:
                            v30 = v11[1] + *v11;
LABEL_15:
                            while (2)
                            {
                              v31 = *v29;
                              if (v30 <= *(*v29 + 8))
                              {
                                goto LABEL_71;
                              }

                              *(v31 + 37) = a2;
                              *(v31 + 36) |= a3;
                              *(v29 + 24) = 0;
                              *(v29 + 32) = 0;
                              if (v10[2536] == 1)
                              {
                                v63 = MEMORY[0x1E69E9848];
                                fprintf(*MEMORY[0x1E69E9848], "zone %s ", [*(*(*(v6 + 32) + 224) + 24 * v88 + 8) UTF8String]);
                                v87 = *v63;
                                v85 = [*v29 address];
                                v64 = *(*v29 + 24);
                                v84 = *(*v29 + 16) + *(*v29 + 8);
                                v83 = (&vm_prot_strings_0)[v64];
                                v82 = VMURegionTypeDescriptionForTagShareProtAndPager(*(*v29 + 104), *(*v29 + 50), v64, *(*v29 + 49));
                                v81 = [v82 UTF8String];
                                v66 = *(*v29 + 16) >> *MEMORY[0x1E69E9AC0];
                                if (v66 == 1)
                                {
                                  v67 = "page";
                                }

                                else
                                {
                                  v67 = "pages";
                                }

                                if (*(v29 + 24) == *(v29 + 32))
                                {
                                  v68 = "";
                                }

                                else
                                {
                                  v68 = " [root]";
                                }

                                v69 = VMUMallocRangeTypeString(v91, v65);
                                fprintf(v87, "claimed region: [%#llx-%#llx] %s %s (%llu %s)%s - type '%s' range: [%#lx-%#lx]\n", v85, v84, v83, v81, v66, v67, v68, v69, *v11, v11[1] + *v11);

                                v10 = &unk_1EC1D0000;
                                v9 = MEMORY[0x1E69E9AC0];
                                v6 = a1;
                                a2 = v90;
                                a3 = v91;
                                v31 = *v29;
                              }

                              v32 = (v31 + 8);
                              v34 = *v32;
                              v33 = v32[1];
                              if (v30 <= v33 + v34)
                              {
                                goto LABEL_71;
                              }

                              v35 = *(*(v6 + 32) + 128);
                              v36 = *(v35 + 48);
                              v37 = *(v35 + 56);
                              v15 = v37 >= v36;
                              v38 = v37 - v36;
                              if (!v15)
                              {
                                goto LABEL_71;
                              }

                              v17 += v33;
                              if (v17 - v36 >= v38)
                              {
                                goto LABEL_71;
                              }

                              v39 = v17 >> *v9;
                              if (v39)
                              {
                                v40 = *(v35 + 24);
                                v43 = *v40;
                                v41 = v40 + 1;
                                v42 = v43;
                                v44 = v17 >> *v9;
                                do
                                {
                                  v45 = v44 & 0x3FFFFFF;
                                  if (v42 <= v45 || ((*(v41 + (v45 >> 3)) >> (v44 & 7)) & 1) == 0)
                                  {
                                    goto LABEL_71;
                                  }

                                  v44 >>= 26;
                                }

                                while (v44);
                              }

                              v46 = v39 & 0x7FFFF;
                              v47 = v35 + 64;
                              v48 = *(v35 + 64 + 4 * (v39 & 0x7FFFF));
                              v49 = *(v35 + 32);
                              if (v48)
                              {
                                v29 = v49 + ((v48 - 1) << 6);
                                if (v17 - *(*v29 + 8) < *(*v29 + 16))
                                {
                                  continue;
                                }
                              }

                              break;
                            }

                            v50 = *(v35 + 40);
                            if (!v50)
                            {
                              goto LABEL_71;
                            }

                            v51 = *(v35 + 32);
                            while (1)
                            {
                              v52 = v50 >> 1;
                              v29 = v51 + (v50 >> 1 << 6);
                              if (*(*v29 + 8) <= v17)
                              {
                                if (*(*v29 + 16) + *(*v29 + 8) > v17)
                                {
                                  v86 = v46;
                                  v53 = [*v29 isSpecialPhysFootprintRegion];
                                  v54 = v86;
                                  v10 = &unk_1EC1D0000;
                                  v9 = MEMORY[0x1E69E9AC0];
                                  v6 = a1;
                                  a2 = v90;
                                  a3 = v91;
                                  if (v53)
                                  {
                                    v55 = 0;
                                  }

                                  else
                                  {
                                    v55 = v29;
                                  }

                                  if (v53)
                                  {
                                    goto LABEL_71;
                                  }

                                  if ((*(*v55 + 132) & 1) == 0)
                                  {
                                    goto LABEL_52;
                                  }

                                  v56 = v55 + 8;
                                  v57 = *(v35 + 40) - ((v55 - *(v35 + 32) + 64) >> 6);
                                  if (!v57)
                                  {
                                    goto LABEL_49;
                                  }

                                  while (2)
                                  {
                                    v58 = v57 >> 1;
                                    v59 = &v56[8 * (v57 >> 1)];
                                    if (*(*v59 + 1) > v17)
                                    {
LABEL_44:
                                      v60 = v57 > 1;
                                      v57 = v58;
                                      if (!v60)
                                      {
                                        v57 = 0;
                                        goto LABEL_49;
                                      }

                                      continue;
                                    }

                                    break;
                                  }

                                  if (*(*v59 + 2) + *(*v59 + 1) <= v17)
                                  {
                                    v56 = v59 + 8;
                                    v58 = --v57 >> 1;
                                    goto LABEL_44;
                                  }

                                  v61 = v55;
                                  v62 = [*v59 isSpecialPhysFootprintRegion];
                                  v55 = v61;
                                  v54 = v86;
                                  v10 = &unk_1EC1D0000;
                                  v9 = MEMORY[0x1E69E9AC0];
                                  v6 = a1;
                                  a2 = v90;
                                  a3 = v91;
                                  if (v62)
                                  {
                                    v57 = 0;
                                  }

                                  else
                                  {
                                    v57 = v59;
                                  }

LABEL_49:
                                  if (v57)
                                  {
                                    v29 = v57;
                                  }

                                  else
                                  {
                                    v29 = v55;
                                  }

LABEL_52:
                                  *(v47 + 4 * v54) = ((v29 - v49) >> 6) + 1;
                                  goto LABEL_15;
                                }

                                v51 = v29 + 64;
                                v52 = --v50 >> 1;
                              }

                              v15 = v50 >= 2;
                              v50 = v52;
                              if (!v15)
                              {
                                goto LABEL_71;
                              }
                            }
                          }

                          v75 = v78 + 8;
                          v77 = --v76 >> 1;
                        }

                        v60 = v76 > 1;
                        v76 = v77;
                        if (!v60)
                        {
                          v76 = 0;
                          goto LABEL_83;
                        }
                      }
                    }

                    break;
                  }

                  v71 = v29 + 64;
                  v72 = --v70 >> 1;
                }

                v15 = v70 >= 2;
                v70 = v72;
              }

              while (v15);
            }
          }
        }
      }

LABEL_71:
      ++v7;
    }

    while (v7 != v8);
  }
}

- (id)_readonlyRegionRanges
{
  v3 = objc_alloc_init(VMUNonOverlappingRangeArray);
  if (self->_regionsCount)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(&self->_regions->var0 + v4);
      if (([v6 protection] & 1) != 0 && (objc_msgSend(v6, "isSubmap") & 1) == 0 && (objc_msgSend(v6, "protection") & 2) == 0 && (-[VMUTask rangeIsInSharedCache:](self->_task, "rangeIsInSharedCache:", v6[1], v6[2]) || (*(v6 + 132) & 2) != 0))
      {
        [(VMUNonOverlappingRangeArray *)v3 addOrExtendRange:v6[1], v6[2]];
      }

      ++v5;
      v4 += 64;
    }

    while (v5 < self->_regionsCount);
  }

  return v3;
}

- (void)setObjectContentLevel:(unsigned int)level
{
  [(VMUObjectIdentifier *)self->_objectIdentifier setObjectContentLevel:?];
  if (level == 2 && self->_regionsCount && self->_objectIdentifier)
  {
    _readonlyRegionRanges = [(VMUKernelCoreMemoryScanner *)self _readonlyRegionRanges];
    [(VMUObjectIdentifier *)self->_objectIdentifier setReadonlyRegionRanges:_readonlyRegionRanges];
  }
}

uint64_t __41__VMUKernelCoreMemoryScanner__sortBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 != *a3;
  }
}

- (void)_enumerateZallocZones:(BOOL)zones blocks:(BOOL)blocks
{
  blocksCopy = blocks;
  zonesCopy = zones;
  v84 = *MEMORY[0x1E69E9840];
  v81 = 0;
  v82 = 0;
  v80 = 0;
  CSSymbolicatorGetAOutSymbolOwner();
  CSSymbolOwnerGetSymbolWithName();
  Range = CSSymbolGetRange();
  v8 = v7;
  [(VMUTaskMemoryCache *)self->_memoryCache peekAtAddress:Range size:v7 returnsBuf:&v82];
  v9 = v82;
  CSSymbolOwnerGetSymbolWithName();
  v10 = CSSymbolGetRange();
  v12 = v11;
  [(VMUTaskMemoryCache *)self->_memoryCache peekAtAddress:v10 size:v11 returnsBuf:&v81];
  CSSymbolOwnerGetSymbolWithName();
  v13 = CSSymbolGetRange();
  v15 = v14;
  [(VMUTaskMemoryCache *)self->_memoryCache peekAtAddress:v13 size:v14 returnsBuf:&v80];
  v16 = v82;
  if (!v82 || !v81 || !v80 || v8 >> 9 < 0x159 || v12 < 0x70 || v15 < 0xAC8)
  {
    return;
  }

  if (zonesCopy)
  {
    [(NSMutableArray *)self->_zoneNames addObject:@"zalloc (no zone)"];
    zonesSize = self->_zonesSize;
    if (zonesSize <= 1)
    {
      self->_zonesSize = 8;
      v18 = malloc_type_realloc(self->_zones, 0xC0uLL, 0x10A00404568A766uLL);
      self->_zones = v18;
      if (!v18)
      {
        NSLog(&cfstr_OutOfMemoryFai.isa, "_zones", zonesSize, self->_zonesSize);
        goto LABEL_90;
      }

      bzero(&v18[zonesSize], 24 * (self->_zonesSize - zonesSize));
    }

    v19 = &self->_zones[self->_zonesCount];
    v19->var0 = Range;
    v19->var1 = @"zalloc (no zone)";
    v19->var2 = 0;
    ++self->_zonesCount;
    v16 = v82;
  }

  v20 = v9 + v8;
  if (v16 >= (v9 + v8))
  {
    return;
  }

  v21 = 0;
  v22 = MEMORY[0x1E69E9AC8];
  v63 = v9 + v8;
  while (!*v16)
  {
LABEL_33:
    v16 = &v82[32 * ++v21];
    if (v16 >= v20)
    {
      return;
    }
  }

  v65 = v21;
  v23 = v80 + 4 * v21;
  v24 = [(VMUTaskMemoryCache *)self->_memoryCache peekStringAtAddress:v16[2]];
  v83[0] = xmmword_1E8277D60;
  v83[1] = *off_1E8277D70;
  v78 = v16;
  if (v24)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%s", *(v83 + (*(v23 + 1) & 3)), v24];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"UnknownZone (%#llx)", v16 + Range - v82, v62];
  }
  v68 = ;
  for (i = 24; i != -8; i -= 8)
  {
  }

  if (zonesCopy)
  {
    v76 = v23;
    v26 = v82;
    zonesCount = self->_zonesCount;
    blocksSize = self->_zonesSize;
    if (blocksSize > zonesCount)
    {
LABEL_28:
      [(NSMutableArray *)self->_zoneNames addObject:v68];
      v32 = &self->_zones[self->_zonesCount];
      v32->var0 = v78 + Range - v26;
      v32->var1 = v68;
      v32->var2 = 0;
      if ((*v76 & 0x4000) != 0 || (*v76 & 0x300) == 0x200)
      {
        [(NSMutableSet *)self->_nonScannableZoneNames addObject:v68];
      }

      ++self->_zonesCount;
LABEL_32:

      v20 = v63;
      v21 = v65;
      goto LABEL_33;
    }

    if ((2 * blocksSize) <= 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = 2 * blocksSize;
    }

    do
    {
      v30 = v29;
      v29 *= 2;
    }

    while (v30 < zonesCount);
    self->_zonesSize = v30;
    v31 = malloc_type_realloc(self->_zones, 24 * v30, 0x10A00404568A766uLL);
    self->_zones = v31;
    if (v31)
    {
      bzero(&v31[blocksSize], 24 * (self->_zonesSize - blocksSize));
      goto LABEL_28;
    }

    v60 = self->_zonesSize;
    v61 = "_zones";
LABEL_89:
    NSLog(&cfstr_OutOfMemoryFai.isa, v61, blocksSize, v60);
LABEL_90:
    abort();
  }

  v33 = [(NSMutableArray *)self->_zoneNames indexOfObject:v68];
  v34 = v78;
  v35 = v78 + 39;
  v67 = v33 << 41;
  v36 = 1;
  v66 = Range;
  while (2)
  {
    v64 = v36;
    v37 = *v35;
    if (!v37)
    {
      goto LABEL_84;
    }

LABEL_37:
    v38 = (((*&v37 | 0xFFFFFFFF00000000) << *MEMORY[0x1E69E9AC0]) - *v81) >> *MEMORY[0x1E69E9AC0];
    v39 = v81[4];
    *&v83[0] = 0;
    v69 = v39 + 16 * v38;
    [VMUTaskMemoryCache peekAtAddress:"peekAtAddress:size:returnsBuf:" size:? returnsBuf:?];
    v40 = *&v83[0];
    if (*&v83[0])
    {
      v41 = *(v34 + 15);
      if ((v41 & 0x100) != 0)
      {
        v74 = *(*&v83[0] + 4);
        v42 = 1;
        if ((v41 & 0x40) == 0)
        {
          goto LABEL_42;
        }

LABEL_40:
        v43 = *(v34 + 28);
      }

      else
      {
        v74 = *(v34 + 26);
        v42 = *(v34 + 29);
        if ((v41 & 0x40) != 0)
        {
          goto LABEL_40;
        }

LABEL_42:
        v43 = 1;
      }

      v73 = v43;
      if (!v42)
      {
        goto LABEL_83;
      }

      v44 = 0;
      v75 = *v81 + *v22 * v38;
      v70 = v75 + *(v34 + 27);
      if (v43 <= 1)
      {
        v45 = 1;
      }

      else
      {
        v45 = v43;
      }

      v77 = v42;
      v46 = !blocksCopy;
      if (!v43)
      {
        v46 = 1;
      }

      v71 = v46;
LABEL_50:
      if (*(v78 + 61))
      {
        if ((v71 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v75 >= v81[10])
        {
          v47 = *&v83[0];
          if (v75 > v81[11])
          {
            goto LABEL_56;
          }

          v50 = (**&v83[0] & 0xF000) == 40960;
        }

        else
        {
          v47 = *&v83[0];
LABEL_56:
          if ((*v47 & 0x800) != 0)
          {
            v79 = 0;
            [(VMUTaskMemoryCache *)self->_memoryCache peekAtAddress:v69 + ((v44 >> 1) & 0x3FFFFFF0) size:16 returnsBuf:&v79];
            if (!v79)
            {
              break;
            }

            v50 = ((*(v79 + 4) >> v44) & 1) == 0;
          }

          else
          {
            v48 = v81[6];
            v49 = 8 * (*(v47 + 4) & 0xFFFFFFF);
            v79 = 0;
            [(VMUTaskMemoryCache *)self->_memoryCache readPointerAt:v48 + ((v44 >> 3) & 0xFFFFFF8) + v49 value:&v79];
            v50 = ((v79 >> v44) & 1) == 0;
          }
        }

        if (v50 && blocksCopy && v73 != 0)
        {
LABEL_71:
          v54 = 0;
          blocksCount = self->_blocksCount;
          do
          {
            blocksSize = self->_blocksSize;
            if (blocksSize <= blocksCount)
            {
              if ((2 * blocksSize) <= 0x40000)
              {
                v57 = 0x40000;
              }

              else
              {
                v57 = 2 * blocksSize;
              }

              do
              {
                v58 = v57;
                v57 *= 2;
              }

              while (v58 < blocksCount);
              self->_blocksSize = v58;
              blocks = malloc_type_realloc(self->_blocks, 16 * v58, 0x1000040451B5BE8uLL);
              self->_blocks = blocks;
              if (!blocks)
              {
                v60 = self->_blocksSize;
                v61 = "_blocks";
                goto LABEL_89;
              }

              blocksCount = self->_blocksCount;
            }

            else
            {
              blocks = self->_blocks;
            }

            v59 = &blocks[blocksCount];
            v59->var0 = v70 + v44 * v74 + *v22 * v54;
            *(v59 + 1) = v67 | (32 * v74) | 9;
            blocksCount = self->_blocksCount + 1;
            self->_blocksCount = blocksCount;
            ++v54;
          }

          while (v54 != v45);
        }
      }

      if (++v44 == v77)
      {
        v40 = *&v83[0];
        zonesCopy = 0;
        Range = v66;
        v34 = v78;
LABEL_83:
        v37 = *(v40 + 8);
        if (!v37)
        {
LABEL_84:
          v36 = 0;
          v35 = (v78 + 20);
          if ((v64 & 1) == 0)
          {
            goto LABEL_32;
          }

          continue;
        }

        goto LABEL_37;
      }

      goto LABEL_50;
    }

    break;
  }
}

- (BOOL)addMallocNodesFromTaskWithError:(id *)error
{
  [(VMUKernelCoreMemoryScanner *)self _enumerateZallocZones:0 blocks:1];
  [(VMUKernelCoreMemoryScanner *)self _sortAndClassifyBlocks];
  return 1;
}

- (void)addMallocNodes:(id)nodes
{
  nodesCopy = nodes;
  if ([nodesCopy count])
  {
    blocksSize = self->_blocksSize;
    v5 = nodesCopy;
    v6 = nodesCopy[2];
    v7 = self->_blocksCount - 1;
    if (blocksSize <= v7 + v6)
    {
      if ((2 * blocksSize) <= 0x40000)
      {
        v8 = 0x40000;
      }

      else
      {
        v8 = 2 * blocksSize;
      }

      do
      {
        v9 = v8;
        self->_blocksSize = v8;
        v8 *= 2;
      }

      while (v9 < v7 + nodesCopy[2]);
      v10 = malloc_type_realloc(self->_blocks, 16 * v9, 0x1000040451B5BE8uLL);
      self->_blocks = v10;
      if (!v10)
      {
        NSLog(&cfstr_OutOfMemoryFai.isa, "_blocks", blocksSize, self->_blocksSize);
        abort();
      }

      v5 = nodesCopy;
      v6 = nodesCopy[2];
    }

    if (v6)
    {
      v11 = 0;
      v12 = 0;
      blocksCount = self->_blocksCount;
      do
      {
        v14 = (*(v5 + 2) + v11);
        v16 = *v14;
        v15 = v14[1];
        v17 = &self->_blocks[blocksCount];
        if (v15 >= 0xFFFFFFFFFLL)
        {
          v15 = 0xFFFFFFFFFLL;
        }

        v17->var0 = v16;
        *(v17 + 1) = (32 * v15) | 1;
        blocksCount = self->_blocksCount + 1;
        self->_blocksCount = blocksCount;
        ++v12;
        v11 += 16;
      }

      while (v12 < v5[2]);
    }

    [(VMUKernelCoreMemoryScanner *)self _sortAndClassifyBlocks];
  }
}

- (BOOL)addAllNodesFromTaskWithError:(id *)error
{
  v5 = [(VMUKernelCoreMemoryScanner *)self addRootNodesFromTaskWithError:?];
  if (v5)
  {

    LOBYTE(v5) = [(VMUKernelCoreMemoryScanner *)self addMallocNodesFromTaskWithError:error];
  }

  return v5;
}

- (void)_sortAndClassifyBlocks
{
  [(VMUKernelCoreMemoryScanner *)self _sortBlocks];
  [(VMUKernelCoreMemoryScanner *)self _buildRegionFirstBlockIndexOnPageArrays];
  [(VMUKernelCoreMemoryScanner *)self _fixupBlockIsas];
  [(VMUKernelCoreMemoryScanner *)self _findMarkedAbandonedBlocks];

  [(VMUKernelCoreMemoryScanner *)self unmapAllRegions];
}

- (void)setClassStructureFieldScanValueAtSourceAddress:(void *)address toCorrectedAddress:(void *)correctedAddress
{
  classStructureAddressToDestinationMapTable = self->_classStructureAddressToDestinationMapTable;
  if (!classStructureAddressToDestinationMapTable)
  {
    v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:1282];
    v9 = self->_classStructureAddressToDestinationMapTable;
    self->_classStructureAddressToDestinationMapTable = v8;

    classStructureAddressToDestinationMapTable = self->_classStructureAddressToDestinationMapTable;
  }

  NSMapInsert(classStructureAddressToDestinationMapTable, address, correctedAddress);
}

- (void)printRuntimeMetadataInfo
{
  v31 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__VMUKernelCoreMemoryScanner_printRuntimeMetadataInfo__block_invoke;
  aBlock[3] = &unk_1E8277D88;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  allKeys = [(NSMutableDictionary *)self->_addressToRuntimeMetadataChunkInfoDict allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *v26;
    v23 = v3;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_addressToRuntimeMetadataChunkInfoDict objectForKeyedSubscript:v13];
        unsignedLongLongValue = [v13 unsignedLongLongValue];
        v16 = &self->_blocks[v10];
        if (unsignedLongLongValue >= ((*(v16 + 1) >> 5) & 0xFFFFFFFFFLL) + v16->var0)
        {
          v20 = [(VMUKernelCoreMemoryScanner *)self nodeForAddress:unsignedLongLongValue];
          v21 = v14;

          v8 = v21;
          v10 = v20;
          v9 = unsignedLongLongValue;
        }

        else
        {
          if (v9)
          {
            v17 = v11;
            if ([v14[2] infoType] == 8)
            {
              v18 = "Swift Metadata";
            }

            else
            {
              v18 = "Metadata";
            }

            putchar(10);
            v19 = &self->_blocks[v10];
            v22 = v18;
            v11 = v17;
            v3 = v23;
            printf("%s %#llx-%#llx[%llu]\n", v22, v19->var0, ((*(v19 + 1) >> 5) & 0xFFFFFFFFFLL) + v19->var0, (*(v19 + 1) >> 5) & 0xFFFFFFFFFLL);
            (*(v3 + 2))(v3, v10, v9, v8);

            v8 = 0;
          }

          (*(v3 + 2))(v3, v10, unsignedLongLongValue, v14);
          v9 = 0;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }
}

void __54__VMUKernelCoreMemoryScanner_printRuntimeMetadataInfo__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int *a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v8 = &VMUObjCClassStructureTypeInfoArray + 24 * a4[3];
  v9 = *(v8 + 4);
  strchr(*(v8 + 1), 40);
  v10 = a4;
  __strcpy_chk();
  *strchr(__s, 41) = 0;
  v11 = a3 - *(*(*(a1 + 32) + 96) + 16 * a2);
  if (*(v10 + 8))
  {
    v12 = "metaclass";
  }

  else
  {
    v12 = "class";
  }

  v13 = *(v10 + 2);

  v14 = [v13 className];
  printf("    +%5llu %#llx[%u]  %-13s  %s %s\n", v11, a3, v9, __s, v12, [v14 UTF8String]);
}

- (void)_fixupBlockIsas
{
  blocksCount = self->_blocksCount;
  if (blocksCount)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    LODWORD(v7) = -1;
    v8 = &unk_1EC1D0000;
    v9 = MEMORY[0x1E69E9848];
    do
    {
      blocks = self->_blocks;
      v11 = *(&blocks[v4] + 1);
      if ((v11 & 7) == 1)
      {
        var0 = blocks[v4].var0;
        if (var0 >= v6)
        {
          v13 = (v7 << 6) + 64;
          v14 = v7 + 1;
          do
          {
            if (v14 >= self->_regionsCount)
            {
              v5 = -1;
              v6 = -1;
            }

            else
            {
              v15 = (*(&self->_regions->var0 + v13) + 8);
              v5 = *v15;
              v6 = (*(&self->_regions->var0 + v13))[2] + *v15;
            }

            LODWORD(v7) = v7 + 1;
            v13 += 64;
            ++v14;
          }

          while (var0 >= v6);
        }

        v16 = ((v11 >> 5) & 0xFFFFFFFFFLL) + var0;
        if (v16 > v5)
        {
          v17 = v7 << 6;
          v7 = v7;
          regions = self->_regions;
          do
          {
            v19 = self->_blocks;
            v20 = &v19[v4];
            if ((*(v20 + 1) & 0x18) == 8)
            {
              if (v8[2536] == 1)
              {
                v23 = (*(&regions->var0 + v17))[37];
                v24 = *(v20 + 1) >> 41;
                if (v23 != -1 && v23 != v24)
                {
                  fprintf(*v9, "warning: zone fixup failed - block %#llx from zone %s discovered in region [%#llx-%#llx] already claimed by %s\n", v20->var0, [self->_zones[v24].var1 UTF8String], v5, v6, objc_msgSend(self->_zones[(*(&self->_regions->var0 + v17))[37]].var1, "UTF8String"));
                  v9 = MEMORY[0x1E69E9848];
                  v8 = &unk_1EC1D0000;
                  v19 = self->_blocks;
                  regions = self->_regions;
                }
              }

              v21 = &v19[v4];
              (*(&regions->var0 + v17))[37] = *(v21 + 1) >> 41;
              *(v21 + 1) &= 0x1FFFFFFFFFFuLL;
              *(&self->_blocks[v4] + 1) &= 0xFFFFFFFFFFFFFFE7;
              regions = self->_regions;
            }

            v22 = *(&regions->var0 + v17);
            *(v22 + 144) |= 1u;
            ++*(v22 + 136);
            if (v16 <= v6)
            {
              break;
            }

            if (++v7 >= self->_regionsCount)
            {
              v6 = -1;
              v5 = -1;
              break;
            }

            v5 = *(*(&regions[1].var2 + v17) + 8);
            v6 = *(*(&regions[1].var2 + v17) + 16) + v5;
            v17 += 64;
          }

          while (v16 > v5);
          blocksCount = self->_blocksCount;
        }
      }

      ++v4;
    }

    while (v4 < blocksCount);
  }

  self->_initializedRegionMallocBlockCounts = 1;
  memoryReader = [(VMUObjectIdentifier *)self->_objectIdentifier memoryReader];
  swiftRuntimeInfoStableABI = [(VMUObjectIdentifier *)self->_objectIdentifier swiftRuntimeInfoStableABI];
  v28 = swiftRuntimeInfoStableABI;
  if (swiftRuntimeInfoStableABI)
  {
    swiftRuntimeInfoPreABI = swiftRuntimeInfoStableABI;
  }

  else
  {
    swiftRuntimeInfoPreABI = [(VMUObjectIdentifier *)self->_objectIdentifier swiftRuntimeInfoPreABI];
  }

  v30 = swiftRuntimeInfoPreABI;

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke;
  v33[3] = &unk_1E8277908;
  v34 = v30;
  v35 = memoryReader;
  v33[4] = self;
  v31 = v30;
  v32 = memoryReader;
  [(VMUKernelCoreMemoryScanner *)self _withOrderedNodeMapper:v33];
  [(VMUKernelCoreMemoryScanner *)self _updateLinearClassInfos];
  [(VMUKernelCoreMemoryScanner *)self _identifyNonObjectsPointedToByTypedIvars:[(VMUClassInfoMap *)self->_classInfoIndexer count]];
  [(VMUKernelCoreMemoryScanner *)self _updateLinearClassInfos];
  [(VMUKernelCoreMemoryScanner *)self _identifyNonObjectsUsingStackBacktrace];
  [(VMUKernelCoreMemoryScanner *)self _updateLinearClassInfos];
  mergesort_b(self->_instanceValues, self->_instanceValuesCount, 0x10uLL, &__block_literal_global_118);
}

void __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104))
  {
    v5 = 0;
    v6 = 8;
    do
    {
      if ((*(*(v2 + 96) + v6) & 0xFFFFFE0000000007) == 1)
      {
        v7[0] = MEMORY[0x1E69E9820];
        v7[1] = 3221225472;
        v7[2] = __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke_2;
        v7[3] = &unk_1E82778E0;
        v7[4] = v2;
        v10 = v5;
        v9 = *(a1 + 48);
        v8 = *(a1 + 40);
        (*(a2 + 16))(a2, v5, 1, v7);

        v2 = *(a1 + 32);
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < *(v2 + 104));
  }
}

void __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = (*(v5 + 96) + 16 * *(a1 + 56));
  if (HIDWORD(*v6))
  {
    v7 = (*v6 & 7) == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7 && ([*(v5 + 80) classInfoForMemory:a2 length:(v6[1] >> 5) & 0xFFFFFFFFFLL remoteAddress:?], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    if ([v8 hasSpecificLayout])
    {
      v10 = [*(*(a1 + 32) + 288) indexForClassInfo:v9];
      v11 = *(*(a1 + 32) + 496);
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
      v13 = [v11 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v13 = objc_opt_new();
        v14 = *(*(a1 + 32) + 496);
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
        [v14 setObject:v13 forKeyedSubscript:v15];
      }

      v16 = (*(*(a1 + 32) + 96) + 16 * *(a1 + 56));
      v17 = [v9 instanceSpecificInfoForObject:*v16 ofSize:v16[1] >> 5 withScanner:? memoryReader:?];

      v9 = v17;
    }

    v18 = *(*(*(a1 + 32) + 96) + 16 * *(a1 + 56) + 8) >> 5;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke_3;
    v28[3] = &unk_1E8277890;
    v33 = a2;
    v29 = v9;
    v19 = *(a1 + 40);
    v20 = *(a1 + 32);
    v30 = v19;
    v31 = v20;
    v32 = *(a1 + 48);
    v21 = v9;
    [v21 enumerateSublayoutsForSize:v18 withBlock:v28];
    v22 = [*(*(a1 + 32) + 288) indexForClassInfo:v21];
    v23 = *(*(a1 + 32) + 96) + 16 * *(a1 + 56);
    *(v23 + 8) = *(v23 + 8) & 0x1FFFFFFFFFFLL | (v22 << 41);
    v24 = *(a1 + 32);
    v25 = *(*(v24 + 96) + 16 * *(a1 + 56) + 8) >> 5;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke_4;
    v27[3] = &unk_1E82778B8;
    v27[4] = v24;
    [v21 enumerateExternalValuesFromObject:a2 withSize:v25 block:v27];
  }

  else
  {
    v26 = *(*(a1 + 32) + 96) + 16 * *(a1 + 56);
    *(v26 + 8) &= 0x1FFFFFFFFFFuLL;
  }

  objc_autoreleasePoolPop(v4);
}

void __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke_3(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v6 = *(*(a1 + 64) + a3);
  if (a4 == 3)
  {
    v6 &= ~1uLL;
  }

  else if (a4 == 5)
  {
    v8 = *(a1 + 40);
    v9 = *(a1 + 32);
    v10 = v8;
    if (v10)
    {
      if ([v9 usesSwiftRefcounting] && objc_msgSend(v9, "pointerSize") == a3)
      {
        v11 = v10;
        v12 = [v11 refcountIsSideTableMarkerMask] & v6;
        if (v12 == [v11 refcountIsSideTableMarkerValue])
        {
          v13 = [v11 sideTablePointerMask] & v6;
          v14 = v13 >> [v11 sideTablePointerRightShift];
          v6 = v14 << [v11 sideTablePointerLeftShift];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 &= [v10 nativeWeakReferencePointerMask];
      }
    }
  }

  if (HIDWORD(v6))
  {
    v15 = (v6 & 7) == 0;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    return;
  }

  v16 = *(*(a1 + 48) + 128);
  v18 = v16[6];
  v17 = v16[7];
  v19 = v17 - v18;
  v20 = v17 < v18;
  if (v6 - v18 >= v19 || v20)
  {
    return;
  }

  v21 = MEMORY[0x1E69E9AC0];
  v22 = v6 >> *MEMORY[0x1E69E9AC0];
  if (v22)
  {
    v23 = v16[3];
    v26 = *v23;
    v24 = v23 + 1;
    v25 = v26;
    v27 = v6 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v28 = v27 & 0x3FFFFFF;
      if (v25 <= v28 || ((*(v24 + (v28 >> 3)) >> (v27 & 7)) & 1) == 0)
      {
        return;
      }

      v27 >>= 26;
    }

    while (v27);
  }

  v29 = v22 & 0x7FFFF;
  v30 = *(v16 + (v22 & 0x7FFFF) + 16);
  v31 = v16[4];
  if (v30)
  {
    v32 = v31 + ((v30 - 1) << 6);
    if (v6 - *(*v32 + 8) < *(*v32 + 16))
    {
      goto LABEL_27;
    }
  }

  v50 = *(v16 + 10);
  if (!v50)
  {
    return;
  }

  v51 = v16[4];
  while (1)
  {
    v52 = v50 >> 1;
    v32 = v51 + (v50 >> 1 << 6);
    if (*(*v32 + 8) <= v6)
    {
      break;
    }

LABEL_50:
    v48 = v50 >= 2;
    v50 = v52;
    if (!v48)
    {
      return;
    }
  }

  if (*(*v32 + 16) + *(*v32 + 8) <= v6)
  {
    v51 = v32 + 64;
    v52 = --v50 >> 1;
    goto LABEL_50;
  }

  v53 = [*v32 isSpecialPhysFootprintRegion];
  if (v53)
  {
    v54 = 0;
  }

  else
  {
    v54 = v32;
  }

  if (v53)
  {
    return;
  }

  if ((*(*v54 + 132) & 1) == 0)
  {
    goto LABEL_69;
  }

  v55 = (v54 + 64);
  v56 = *(v16 + 10) - ((v54 + 64 - v16[4]) >> 6);
  if (!v56)
  {
    goto LABEL_66;
  }

  while (2)
  {
    v57 = v56 >> 1;
    v58 = &v55[8 * (v56 >> 1)];
    if (*(*v58 + 1) > v6)
    {
LABEL_61:
      v59 = v56 > 1;
      v56 = v57;
      if (!v59)
      {
        v56 = 0;
        goto LABEL_66;
      }

      continue;
    }

    break;
  }

  if (*(*v58 + 2) + *(*v58 + 1) <= v6)
  {
    v55 = v58 + 8;
    v57 = --v56 >> 1;
    goto LABEL_61;
  }

  v60 = v54;
  v61 = [*v58 isSpecialPhysFootprintRegion];
  v54 = v60;
  if (v61)
  {
    v56 = 0;
  }

  else
  {
    v56 = v58;
  }

LABEL_66:
  if (v56)
  {
    v54 = v56;
  }

  v32 = v54;
LABEL_69:
  *(v16 + v29 + 16) = ((v54 - v31) >> 6) + 1;
LABEL_27:
  v33 = *(v32 + 20);
  if (v33)
  {
    v34 = *(v32 + 8);
    v35 = *v16;
    v36 = *(v32 + 16);
    v37 = (*v16 + 16 * v36);
    if (v34)
    {
      if (*v37 > v6)
      {
        return;
      }

      v38 = (v35 + 16 * (v33 + v36 - 1));
      if (((v38[1] >> 5) & 0xFFFFFFFFFuLL) + *v38 <= v6)
      {
        return;
      }

      v39 = (v34 + 4 * ((v6 - (*v37 & -*MEMORY[0x1E69E9AC8])) >> *v21));
      v40 = *v39;
      v41 = (v35 + 16 * v40);
      if (*v41 > v6)
      {
        return;
      }

      v42 = v39[1];
      if (v42 < *(v16 + 2) && (v43 = (v35 + 16 * v42), v44 = *v43, *v43 <= v6))
      {
        v47 = v43[1];
LABEL_71:
        if ((v47 & 7) - 2 >= 3)
        {
          v62 = v43 - v35;
          v63 = v62 >> 4;
          v64 = v6 - v44;
          v65 = v16[2];
          if (v64 >= v65)
          {
            if (((v47 >> 5) & 0xFFFFFFFFFLL) - v64 > v65 || v63 == -1)
            {
              return;
            }
          }

          else if (v63 == -1)
          {
            return;
          }

          v67 = *(*(a1 + 48) + 96);
          if (v67)
          {
            v68 = (v67 + (v62 & 0xFFFFFFFF0));
            if (*v68 == v6 && (v68[1] & 7) == 1)
            {
              v69 = objc_autoreleasePoolPush();
              v70 = [a2 instanceSpecificInfoForObject:v6 ofSize:v68[1] >> 5 withScanner:*(a1 + 48) memoryReader:*(a1 + 56)];
              if (v70)
              {
                v68[1] = v68[1] & 0x1FFFFFFFFFFLL | ([*(*(a1 + 48) + 288) indexForClassInfo:v70] << 41);
              }

              objc_autoreleasePoolPop(v69);
            }
          }
        }
      }

      else
      {
        v45 = v42 - v40;
        if (v45)
        {
          do
          {
            v46 = v45 >> 1;
            v43 = &v41[2 * (v45 >> 1)];
            v44 = *v43;
            if (*v43 <= v6)
            {
              v47 = v43[1];
              if (((v47 >> 5) & 0xFFFFFFFFFLL) + v44 > v6)
              {
                goto LABEL_71;
              }

              v41 = v43 + 2;
              v46 = --v45 >> 1;
            }

            v48 = v45 >= 2;
            v45 = v46;
          }

          while (v48);
        }
      }
    }

    else
    {
      do
      {
        v49 = v33 >> 1;
        v43 = &v37[2 * (v33 >> 1)];
        v44 = *v43;
        if (*v43 <= v6)
        {
          v47 = v43[1];
          if (((v47 >> 5) & 0xFFFFFFFFFLL) + v44 > v6)
          {
            goto LABEL_71;
          }

          v37 = v43 + 2;
          v49 = --v33 >> 1;
        }

        v48 = v33 >= 2;
        v33 = v49;
      }

      while (v48);
    }
  }
}

void __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke_4(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(*(a1 + 32) + 128);
  v8 = v6[6];
  v7 = v6[7];
  v9 = v7 - v8;
  v10 = v7 < v8;
  if (a2 - v8 < v9 && !v10)
  {
    v11 = MEMORY[0x1E69E9AC0];
    v12 = a2 >> *MEMORY[0x1E69E9AC0];
    if (v12)
    {
      v13 = v6[3];
      v16 = *v13;
      v14 = v13 + 1;
      v15 = v16;
      v17 = a2 >> *MEMORY[0x1E69E9AC0];
      do
      {
        v18 = v17 & 0x3FFFFFF;
        if (v15 <= v18 || ((*(v14 + (v18 >> 3)) >> (v17 & 7)) & 1) == 0)
        {
          goto LABEL_55;
        }

        v17 >>= 26;
      }

      while (v17);
    }

    v19 = v12 & 0x7FFFF;
    v20 = *(v6 + (v12 & 0x7FFFF) + 16);
    v21 = v6[4];
    if (v20)
    {
      v22 = v21 + ((v20 - 1) << 6);
      if (a2 - *(*v22 + 8) < *(*v22 + 16))
      {
        goto LABEL_10;
      }
    }

    v40 = *(v6 + 10);
    if (v40)
    {
      v41 = v6[4];
      do
      {
        v42 = v40 >> 1;
        v22 = v41 + (v40 >> 1 << 6);
        if (*(*v22 + 8) <= a2)
        {
          if (*(*v22 + 16) + *(*v22 + 8) > a2)
          {
            v68 = v5;
            v43 = [*v22 isSpecialPhysFootprintRegion];
            v5 = v68;
            if (v43)
            {
              v44 = 0;
            }

            else
            {
              v44 = v22;
            }

            if (v43)
            {
              break;
            }

            if ((*(*v44 + 132) & 1) == 0)
            {
              goto LABEL_52;
            }

            v45 = (v44 + 64);
            v46 = *(v6 + 10) - ((v44 + 64 - v6[4]) >> 6);
            if (!v46)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v47 = v46 >> 1;
              v48 = &v45[8 * (v46 >> 1)];
              if (*(*v48 + 1) <= a2)
              {
                if (*(*v48 + 2) + *(*v48 + 1) > a2)
                {
                  v50 = [*v48 isSpecialPhysFootprintRegion];
                  v5 = v68;
                  if (v50)
                  {
                    v46 = 0;
                  }

                  else
                  {
                    v46 = v48;
                  }

LABEL_49:
                  if (v46)
                  {
                    v44 = v46;
                  }

                  v22 = v44;
LABEL_52:
                  *(v6 + v19 + 16) = ((v44 - v21) >> 6) + 1;
LABEL_10:
                  v23 = *(v22 + 20);
                  if (v23)
                  {
                    v24 = *(v22 + 8);
                    v25 = *v6;
                    v26 = *(v22 + 16);
                    v27 = (*v6 + 16 * v26);
                    if (v24)
                    {
                      if (*v27 <= a2)
                      {
                        v28 = (v25 + 16 * (v23 + v26 - 1));
                        if (((v28[1] >> 5) & 0xFFFFFFFFFuLL) + *v28 > a2)
                        {
                          v29 = (v24 + 4 * ((a2 - (*v27 & -*MEMORY[0x1E69E9AC8])) >> *v11));
                          v30 = *v29;
                          v31 = (v25 + 16 * v30);
                          if (*v31 <= a2)
                          {
                            v32 = v29[1];
                            if (v32 < *(v6 + 2) && (v33 = (v25 + 16 * v32), v34 = *v33, *v33 <= a2))
                            {
                              v37 = v33[1];
LABEL_54:
                              if ((v37 & 7) - 2 >= 3)
                              {
                                v51 = v33 - v25;
                                v52 = v51 >> 4;
                                v53 = a2 - v34;
                                v54 = v6[2];
                                if (v53 >= v54)
                                {
                                  if (((v37 >> 5) & 0xFFFFFFFFFLL) - v53 > v54 || v52 == -1)
                                  {
                                    goto LABEL_55;
                                  }
                                }

                                else if (v52 == -1)
                                {
                                  goto LABEL_55;
                                }

                                v56 = *(a1 + 32);
                                v57 = *(v56 + 96);
                                if (v57)
                                {
                                  v58 = (v51 >> 4);
                                  if ((*(v57 + 16 * v58 + 8) & 7) == 1)
                                  {
                                    v59 = *(v56 + 268);
                                    v60 = *(v56 + 264);
                                    if (v59 <= v60)
                                    {
                                      v62 = 2 * v59;
                                      if ((2 * v59) <= 0x10)
                                      {
                                        v62 = 16;
                                      }

                                      *(v56 + 268) = v62;
                                      v63 = *(a1 + 32);
                                      v64 = *(v63 + 268);
                                      v69 = v5;
                                      if (v64 < *(v63 + 264))
                                      {
                                        v65 = (v63 + 268);
                                        do
                                        {
                                          *v65 = 2 * v64;
                                          v63 = *(a1 + 32);
                                          v65 = (v63 + 268);
                                          v64 = *(v63 + 268);
                                        }

                                        while (v64 < *(v63 + 264));
                                      }

                                      *(*(a1 + 32) + 256) = malloc_type_realloc(*(v63 + 256), 16 * v64, 0x108004057E67DB5uLL);
                                      v66 = *(a1 + 32);
                                      v61 = *(v66 + 256);
                                      if (!v61)
                                      {
                                        NSLog(&cfstr_OutOfMemoryFai.isa, "_instanceValues", v59, *(v66 + 268));
                                        abort();
                                      }

                                      v60 = *(v66 + 264);
                                      v5 = v69;
                                    }

                                    else
                                    {
                                      v61 = *(v56 + 256);
                                    }

                                    v67 = (v61 + 16 * v60);
                                    *v67 = v58;
                                    v67[1] = 0;
                                    ++*(*(a1 + 32) + 264);
                                  }
                                }
                              }
                            }

                            else
                            {
                              v35 = v32 - v30;
                              if (v35)
                              {
                                do
                                {
                                  v36 = v35 >> 1;
                                  v33 = &v31[2 * (v35 >> 1)];
                                  v34 = *v33;
                                  if (*v33 <= a2)
                                  {
                                    v37 = v33[1];
                                    if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > a2)
                                    {
                                      goto LABEL_54;
                                    }

                                    v31 = v33 + 2;
                                    v36 = --v35 >> 1;
                                  }

                                  v38 = v35 >= 2;
                                  v35 = v36;
                                }

                                while (v38);
                              }
                            }
                          }
                        }
                      }
                    }

                    else
                    {
                      do
                      {
                        v39 = v23 >> 1;
                        v33 = &v27[2 * (v23 >> 1)];
                        v34 = *v33;
                        if (*v33 <= a2)
                        {
                          v37 = v33[1];
                          if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > a2)
                          {
                            goto LABEL_54;
                          }

                          v27 = v33 + 2;
                          v39 = --v23 >> 1;
                        }

                        v38 = v23 >= 2;
                        v23 = v39;
                      }

                      while (v38);
                    }
                  }

                  goto LABEL_55;
                }

                v45 = v48 + 8;
                v47 = --v46 >> 1;
              }

              v49 = v46 > 1;
              v46 = v47;
              if (!v49)
              {
                v46 = 0;
                goto LABEL_49;
              }
            }
          }

          v41 = v22 + 64;
          v42 = --v40 >> 1;
        }

        v38 = v40 >= 2;
        v40 = v42;
      }

      while (v38);
    }
  }

LABEL_55:
}

uint64_t __45__VMUKernelCoreMemoryScanner__fixupBlockIsas__block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 > *a3;
  }
}

- (void)_identifyNonObjectsPointedToByTypedIvars:(unsigned int)ivars
{
  v5 = ivars + 1;
  v6 = malloc_type_calloc(1uLL, ((ivars + 8) >> 3) + 4, 0xB2EC2458uLL);
  *v6 = v5;
  classInfoIndexer = self->_classInfoIndexer;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke;
  v14[3] = &__block_descriptor_40_e32_v36__0Q8__VMUClassInfo_16I24_B28l;
  v14[4] = v6;
  [(VMUClassInfoMap *)classInfoIndexer enumerateInfosWithBlock:v14];
  v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:1282];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke_2;
  v10[3] = &unk_1E8277DD8;
  ivarsCopy = ivars;
  v11 = v8;
  v12 = v6;
  v10[4] = self;
  v9 = v8;
  [(VMUKernelCoreMemoryScanner *)self _withOrderedNodeMapper:v10];
  free(v6);
}

void __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v9 = a3;
  if ([v9 infoType] != 1 && objc_msgSend(v9, "infoType") != 128 || (objc_msgSend(v9, "className"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", @"__NSMallocBlock__"), v6, v7))
  {
    v8 = *(a1 + 32);
    if (*v8 > a4)
    {
      *(v8 + (a4 >> 3) + 4) |= 1 << (a4 & 7);
    }
  }
}

void __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104))
  {
    v5 = 0;
    v6 = 8;
    do
    {
      v7 = *(*(v2 + 96) + v6);
      if ((v7 & 7) == 1)
      {
        v8 = v7 >> 41;
        if (*(a1 + 56) >= v7 >> 41)
        {
          v9 = *(a1 + 48);
          if (*v9 <= v8 || ((*(v9 + (v7 >> 44) + 4) >> (v8 & 7)) & 1) == 0)
          {
            v10 = *(*(v2 + 272) + 8 * v8);
            v11 = v10;
            if (v10)
            {
              v17[0] = MEMORY[0x1E69E9820];
              v17[1] = 3221225472;
              v17[2] = __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke_3;
              v17[3] = &unk_1E8277978;
              v12 = v10;
              v13 = *(a1 + 32);
              v14 = *(a1 + 40);
              v18 = v12;
              v19 = v13;
              v15 = v14;
              v16 = *(a1 + 48);
              v20 = v15;
              v21 = v16;
              v22 = v8;
              (*(a2 + 16))(a2, v5, 1, v17);
            }

            v2 = *(a1 + 32);
          }
        }
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < *(v2 + 104));
  }
}

void __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke_4;
  v9[3] = &unk_1E8277DB0;
  v12 = &v14;
  v13 = a2;
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v9[4] = *(a1 + 40);
  v10 = v6;
  v11 = *(a1 + 32);
  [(VMUClassInfo *)v5 enumerateAllPointerFieldsWithBlock:v9];
  if ((v15[3] & 1) == 0)
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 64);
    if (*v7 > v8)
    {
      *(v7 + (v8 >> 3) + 4) |= 1 << (v8 & 7);
    }
  }

  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v4);
}

void __71__VMUKernelCoreMemoryScanner__identifyNonObjectsPointedToByTypedIvars___block_invoke_4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = 1;
  v9 = *(v8 + [a2 offset] + a4);
  if (HIDWORD(v9))
  {
    v10 = (v9 & 7) == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    return;
  }

  v11 = *(*(a1 + 32) + 128);
  v13 = v11[6];
  v12 = v11[7];
  v14 = v12 - v13;
  v15 = v12 < v13;
  if (v9 - v13 >= v14 || v15)
  {
    return;
  }

  v16 = MEMORY[0x1E69E9AC0];
  v17 = v9 >> *MEMORY[0x1E69E9AC0];
  if (v17)
  {
    v18 = v11[3];
    v21 = *v18;
    v19 = v18 + 1;
    v20 = v21;
    v22 = v9 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v23 = v22 & 0x3FFFFFF;
      if (v20 <= v23 || ((*(v19 + (v23 >> 3)) >> (v22 & 7)) & 1) == 0)
      {
        return;
      }

      v22 >>= 26;
    }

    while (v22);
  }

  v24 = v17 & 0x7FFFF;
  v25 = *(v11 + (v17 & 0x7FFFF) + 16);
  v26 = v11[4];
  if (v25)
  {
    v27 = (v26 + ((v25 - 1) << 6));
    if (v9 - *(*v27 + 1) < *(*v27 + 2))
    {
      goto LABEL_15;
    }
  }

  v45 = *(v11 + 10);
  if (!v45)
  {
    return;
  }

  v46 = v11[4];
  while (1)
  {
    v47 = v45 >> 1;
    v27 = &v46[8 * (v45 >> 1)];
    if (*(*v27 + 1) <= v9)
    {
      break;
    }

LABEL_38:
    v43 = v45 >= 2;
    v45 = v47;
    if (!v43)
    {
      return;
    }
  }

  if (*(*v27 + 2) + *(*v27 + 1) <= v9)
  {
    v46 = v27 + 8;
    v47 = --v45 >> 1;
    goto LABEL_38;
  }

  v48 = [*v27 isSpecialPhysFootprintRegion];
  v16 = MEMORY[0x1E69E9AC0];
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v27;
  }

  if (v48)
  {
    return;
  }

  if ((*(*v49 + 132) & 1) == 0)
  {
    goto LABEL_57;
  }

  v50 = v49 + 8;
  v51 = *(v11 + 10) - ((v49 - v11[4] + 64) >> 6);
  if (!v51)
  {
    goto LABEL_54;
  }

  while (2)
  {
    v52 = v51 >> 1;
    v53 = &v50[8 * (v51 >> 1)];
    if (*(*v53 + 1) > v9)
    {
LABEL_49:
      v54 = v51 > 1;
      v51 = v52;
      if (!v54)
      {
        v51 = 0;
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  if (*(*v53 + 2) + *(*v53 + 1) <= v9)
  {
    v50 = v53 + 8;
    v52 = --v51 >> 1;
    goto LABEL_49;
  }

  v77 = v49;
  v55 = [*v53 isSpecialPhysFootprintRegion];
  v49 = v77;
  v16 = MEMORY[0x1E69E9AC0];
  if (v55)
  {
    v51 = 0;
  }

  else
  {
    v51 = v53;
  }

LABEL_54:
  if (v51)
  {
    v49 = v51;
  }

  v27 = v49;
LABEL_57:
  *(v11 + v24 + 16) = ((v49 - v26) >> 6) + 1;
LABEL_15:
  v28 = *(v27 + 5);
  if (v28)
  {
    v29 = v27[1];
    v30 = *v11;
    v31 = *(v27 + 4);
    v32 = (*v11 + 16 * v31);
    if (v29)
    {
      if (*v32 > v9)
      {
        return;
      }

      v33 = (v30 + 16 * (v28 + v31 - 1));
      if (((v33[1] >> 5) & 0xFFFFFFFFFuLL) + *v33 <= v9)
      {
        return;
      }

      v34 = &v29[4 * ((v9 - (*v32 & -*MEMORY[0x1E69E9AC8])) >> *v16)];
      v35 = *v34;
      v36 = (v30 + 16 * v35);
      if (*v36 > v9)
      {
        return;
      }

      v37 = *(v34 + 1);
      if (v37 < *(v11 + 2) && (v38 = (v30 + 16 * v37), v39 = *v38, *v38 <= v9))
      {
        v42 = v38[1];
LABEL_59:
        if ((v42 & 7) - 2 >= 3)
        {
          v56 = v38 - v30;
          v57 = v56 >> 4;
          v58 = v9 - v39;
          v59 = v11[2];
          if (v58 >= v59)
          {
            if (((v42 >> 5) & 0xFFFFFFFFFLL) - v58 > v59 || v57 == -1)
            {
              return;
            }
          }

          else if (v57 == -1)
          {
            return;
          }

          v61 = *(*(a1 + 32) + 96);
          if (!v61)
          {
            return;
          }

          v62 = (v61 + (v56 & 0xFFFFFFFF0));
          if (*v62 != v9 || (v62[1] & 0xFFFFFE0000000007) != 1)
          {
            return;
          }

          v63 = NSMapGet(*(a1 + 40), a2);
          if (!v63)
          {
            if ([*(a1 + 48) infoType] == 8)
            {
              [a2 fullIvarNameAtOffset:a4];
            }

            else
            {
              [a2 ivarName];
            }
            v78 = ;
            v64 = [a3 typeName];
            if ([v64 length])
            {
              v65 = [a3 typeName];
              v66 = [v65 characterAtIndex:0];

              if (v66 == 35)
              {

                return;
              }
            }

            else
            {
            }

            v79 = 0;
            v67 = [a3 typeName];
            v68 = descriptionForTypeOfReferencedAllocation([v67 UTF8String], &v79);

            v69 = MEMORY[0x1E696AEC0];
            v70 = [*(a1 + 48) displayName];
            v71 = v70;
            v72 = @"malloc";
            if (v68)
            {
              v72 = v68;
            }

            v73 = [v69 stringWithFormat:@"%@.%@ (%@)", v70, v78, v72];

            v74 = [*(a1 + 48) binaryPath];
            v75 = [VMUClassInfo classInfoWithClassName:v73 binaryPath:v74 type:v79];

            v76 = [*(*(a1 + 32) + 288) indexForClassInfo:v75];
            NSMapInsert(*(a1 + 40), a3, v76);

            LODWORD(v63) = v76;
          }

          v62[1] = v62[1] & 0x1FFFFFFFFFFLL | (v63 << 41);
        }
      }

      else
      {
        v40 = v37 - v35;
        if (v40)
        {
          do
          {
            v41 = v40 >> 1;
            v38 = &v36[2 * (v40 >> 1)];
            v39 = *v38;
            if (*v38 <= v9)
            {
              v42 = v38[1];
              if (((v42 >> 5) & 0xFFFFFFFFFLL) + v39 > v9)
              {
                goto LABEL_59;
              }

              v36 = v38 + 2;
              v41 = --v40 >> 1;
            }

            v43 = v40 >= 2;
            v40 = v41;
          }

          while (v43);
        }
      }
    }

    else
    {
      do
      {
        v44 = v28 >> 1;
        v38 = &v32[2 * (v28 >> 1)];
        v39 = *v38;
        if (*v38 <= v9)
        {
          v42 = v38[1];
          if (((v42 >> 5) & 0xFFFFFFFFFLL) + v39 > v9)
          {
            goto LABEL_59;
          }

          v32 = v38 + 2;
          v44 = --v28 >> 1;
        }

        v43 = v28 >= 2;
        v28 = v44;
      }

      while (v43);
    }
  }
}

- (void)_identifyNonObjectsUsingStackBacktrace
{
  v3 = objc_opt_new();
  blocksCount = self->_blocksCount;
  if (blocksCount)
  {
    v5 = 0;
    v6 = 8;
    do
    {
      blocks = self->_blocks;
      if ((*(&blocks->var0 + v6) & 7) == 1)
      {
        objc_msgSend_nodeDetails_(self);
        v8 = [(VMUKernelCoreMemoryScanner *)self zoneNameForNode:v5];
        v9 = [v3 objectForKeyedSubscript:v8];
        LODWORD(v10) = [v9 unsignedIntValue];
        if (!v10)
        {
          v14 = [(VMUKernelCoreMemoryScanner *)self _typeNameForZoneName:v8];
          v11 = [VMUClassInfo classInfoWithClassName:v14 binaryPath:@"<unknown>" type:0];
          [v11 setIsDerivedFromStackBacktrace:1];
          v10 = [(VMUClassInfoMap *)self->_classInfoIndexer indexForClassInfo:v11];
          [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
          v13 = v12 = v3;
          [v12 setObject:v13 forKeyedSubscript:v8];

          v3 = v12;
        }

        *(&blocks->var0 + v6) = *(&blocks->var0 + v6) & 0x1FFFFFFFFFFLL | (v10 << 41);

        blocksCount = self->_blocksCount;
      }

      ++v5;
      v6 += 16;
    }

    while (v5 < blocksCount);
  }
}

- (void)_findMarkedAbandonedBlocks
{
  userMarkedAbandoned = self->_userMarkedAbandoned;
  if (userMarkedAbandoned)
  {
    free(userMarkedAbandoned);
    self->_userMarkedAbandoned = 0;
  }

  if (!self->_abandonedMarkingEnabled)
  {
    return;
  }

  LODWORD(regionsCount) = self->_regionsCount;
  if (!regionsCount)
  {
    return;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  do
  {
    v9 = self->_regions + 64 * v5;
    if (*(*v9 + 104) != 10)
    {
      goto LABEL_51;
    }

    memoryCache = self->_memoryCache;
    v11 = self->_task;
    v12 = memoryCache;
    v13 = v12;
    if (!*(v9 + 6))
    {
      if ((*(*v9 + 132) & 2) == 0)
      {
        [(VMUTaskMemoryCache *)v12 taskIsTranslated];
      }

      aBlock[0] = 0;
      v66 = 0;
      v35 = [(VMUTaskMemoryCache *)v13 mapAddress:*(*v9 + 8) size:*(*v9 + 16) returnedAddress:aBlock returnedSize:&v66];
      if (v35)
      {
        v61 = v35;
        if ((*(*v9 + 52) & 3u) - 1 >= 2)
        {
          v36 = task_exists(v11);
          if (v5 != regionsCount - 1 && v36)
          {
            v60 = *MEMORY[0x1E69E9848];
            address = [*v9 address];
            v37 = *(*v9 + 24);
            v58 = *(*v9 + 16) + *(*v9 + 8);
            v57 = (&vm_prot_strings_0)[v37];
            v38 = VMURegionTypeDescriptionForTagShareProtAndPager(*(*v9 + 104), *(*v9 + 50), v37, *(*v9 + 49));
            uTF8String = [v38 UTF8String];
            v40 = *(*v9 + 16) >> *MEMORY[0x1E69E9AC0];
            v41 = "pages";
            if (v40 == 1)
            {
              v41 = "page";
            }

            v42 = " [root]";
            if (*(v9 + 3) == *(v9 + 4))
            {
              v42 = "";
            }

            fprintf(v60, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", address, v58, v57, uTF8String, v40, v41, v42, v61);
          }
        }

        goto LABEL_50;
      }

      v44 = aBlock[0];
      *(v9 + 5) = *(v9 + 5) & 1 | (2 * v66);
      *(v9 + 6) = v44;
      *(v9 + 7) = v9;
    }

    regions = self->_regions;
    v15 = *(&regions[1].var0 + 8 * v5);
    if (v15)
    {
      v16 = MEMORY[0x1E69E9AC8];
      v17 = *MEMORY[0x1E69E9AC8];
      v18 = v8;
      do
      {
        v19 = v17 + v15;
        if (*v15 == 0x1DE67829AD1A2FBBLL && *(v15 + 8) <= 1u)
        {
          v20 = *(v15 + 20);
          v21 = v7 + v20 - 1;
          if (v18 <= v21)
          {
            v22 = v17 >> 3;
            if (v22 <= 2 * v18)
            {
              LODWORD(v22) = 2 * v18;
            }

            if (v22 <= 0x100)
            {
              v22 = 256;
            }

            else
            {
              v22 = v22;
            }

            do
            {
              v8 = v22;
              v22 = (2 * v22);
            }

            while (v8 < v21);
            v23 = malloc_type_realloc(v6, 8 * v8, 0x100004000313F17uLL);
            if (!v23)
            {
              NSLog(&cfstr_OutOfMemoryFai.isa, "allMarkedAddresses", v18, v8);
              abort();
            }

            v6 = v23;
            v20 = *(v15 + 20);
          }

          else
          {
            v8 = v18;
          }

          v24 = *(v15 + 12) + v15;
          v25 = v20;
          if (v20)
          {
            v26 = (*(v15 + 12) + v15);
            v27 = v25;
            do
            {
              v29 = *v26++;
              v28 = v29;
              if (v29)
              {
                *(v6 + v7++) = v28;
              }

              --v27;
            }

            while (v27);
          }

          v30 = v24 + 8 * v25;
          v17 = *v16;
          v19 = (v30 + *v16 - 1) & -*v16;
          regions = self->_regions;
        }

        else
        {
          v8 = v18;
        }

        v31 = v19 >= *(&regions[1].var0 + 8 * v5) + (*(regions + 8 * v5 + 5) >> 1) || v19 == 0;
        v18 = v8;
        v15 = v19;
      }

      while (!v31);
    }

    v32 = self->_memoryCache;
    v11 = v32;
    v33 = &regions->var0 + 8 * v5;
    if (v33[6])
    {
      if (v33[7] == v33)
      {
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = ___unmapRegion_block_invoke_0;
        aBlock[3] = &unk_1E8277E50;
        v63 = v32;
        v64 = regions + 64 * v5;
        v65 = regions;
        v43 = _Block_copy(aBlock);
        v43[2]();
      }

      else
      {
        v34 = v33[5] & 1;
        v33[6] = 0;
        v33[7] = 0;
        v33[5] = v34;
      }
    }

LABEL_50:

LABEL_51:
    ++v5;
    regionsCount = self->_regionsCount;
  }

  while (v5 < regionsCount);
  if (v6)
  {
    blocksCount = self->_blocksCount;
    v46 = malloc_type_calloc(1uLL, ((blocksCount + 7) >> 3) + 4, 0xB2EC2458uLL);
    *v46 = blocksCount;
    self->_userMarkedAbandoned = v46;
    mergesort_b(v6, v7, 8uLL, &__block_literal_global_143);
    if (v7)
    {
      v47 = 0;
      v48 = 0;
      do
      {
        v49 = self->_blocksCount;
        if (v48 >= v49)
        {
          break;
        }

        blocks = self->_blocks;
        v51 = &blocks[v48] + 8;
        v52 = v51;
        while (1)
        {
          v53 = *v52;
          v52 += 2;
          if ((v53 & 7) == 1)
          {
            v54 = *(v51 - 8);
            v55 = *(v6 + v47);
            if (v54 >= v55)
            {
              break;
            }
          }

          ++v48;
          v51 = v52;
          if (v49 == v48)
          {
            v48 = self->_blocksCount;
            goto LABEL_67;
          }
        }

        if (blocks[v48].var0 == v55)
        {
          v56 = self->_userMarkedAbandoned;
          if (*v56 > v48)
          {
            *(v56 + (v48 >> 3) + 4) |= 1 << (v48 & 7);
          }
        }

        v48 = v48;
LABEL_67:
        ++v47;
      }

      while (v47 != v7);
    }

    free(v6);
  }
}

uint64_t __56__VMUKernelCoreMemoryScanner__findMarkedAbandonedBlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (*a2 < *a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 != *a3;
  }
}

- (void)refineTypesWithOverlay:(id)overlay
{
  [(VMUClassInfoMap *)self->_classInfoIndexer _applyTypeOverlay:overlay];

  [(VMUKernelCoreMemoryScanner *)self _updateLinearClassInfos];
}

- (void)applyTypeOverlayToMutableInfo:(id)info
{
  classInfoIndexer = self->_classInfoIndexer;
  scanOverlay = self->_scanOverlay;
  infoCopy = info;
  refinementRules = [(VMUScanOverlay *)scanOverlay refinementRules];
  [(VMUClassInfoMap *)classInfoIndexer _applyTypeOverlayRules:refinementRules toMutableInfo:infoCopy];
}

- (void)_buildRegionFirstBlockIndexOnPageArrays
{
  v72 = *MEMORY[0x1E69E9840];
  self->_regionMap->var0 = self->_blocks;
  regionMap = self->_regionMap;
  regionMap->var1 = self->_blocksCount;
  regionMap->var2 = self->_maxInteriorOffset;
  if (self->_regionsCount)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    do
    {
      regions = self->_regions;
      v7 = *(&regions->var1 + 8 * v4);
      if (v7)
      {
        free(v7);
        *(&self->_regions->var1 + 8 * v4) = 0;
        regions = self->_regions;
      }

      v8 = regions + 64 * v4;
      *(v8 + 2) = 0xFFFFFFFFLL;
      if (([*v8 isSubmap] & 1) == 0)
      {
        blocksCount = self->_blocksCount;
        if (v5 >= blocksCount)
        {
          return;
        }

        v10 = self->_regions + 64 * v4;
        v11 = *(*v10 + 16) + *(*v10 + 8);
        blocks = self->_blocks;
        v13 = v5;
        v14 = &blocks[v5];
        v15 = v14 + 1;
        while (((*v15 >> 5) & 0xFFFFFFFFFuLL) + *(v15 - 1) < *(*v10 + 8))
        {
          v15 += 2;
          ++v13;
          ++v14;
          if (blocksCount == v13)
          {
            return;
          }
        }

        if (blocks[v13].var0 >= v11)
        {
          LODWORD(v5) = v13;
        }

        else
        {
          if (blocksCount <= v13)
          {
            LODWORD(v5) = v13;
          }

          else
          {
            v5 = v13;
            while (1)
            {
              var0 = v14->var0;
              ++v14;
              if (var0 >= v11)
              {
                break;
              }

              if (++v5 >= blocksCount)
              {
                LODWORD(v5) = self->_blocksCount;
                break;
              }
            }
          }

          v17 = self->_regionMap;
          v18 = *(v10 + 1);
          if (v18)
          {
            free(v18);
            *(v10 + 1) = 0;
          }

          *(v10 + 4) = v13;
          *(v10 + 5) = v5 - v13;
          if ((v5 - v13) > 0xFF)
          {
            v20 = v17->var0;
            v52 = &v20[v13];
            v21 = *MEMORY[0x1E69E9AC8];
            v22 = -*MEMORY[0x1E69E9AC8];
            v23 = v52->var0 & v22;
            v19 = (v5 - 1);
            v50 = &v20[v19];
            v24 = ((*(v50 + 1) >> 5) & 0xFFFFFFFFFLL) + v50->var0;
            if (v24 >= *(*v10 + 16) + *(*v10 + 8))
            {
              v24 = *(*v10 + 16) + *(*v10 + 8);
            }

            v25 = (v21 + v24 - 1) & v22;
            v26 = v25 - v23;
            if (v25 <= v23)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v39 = v52->var0;
                v42 = (*(v52 + 1) >> 5) & 0xFFFFFFFFFLL;
                v41 = v42 + v52->var0;
                v40 = v50->var0;
                v46 = (*(v50 + 1) >> 5) & 0xFFFFFFFFFLL;
                v44 = v46 + v50->var0;
                v48 = [*v10 description];
                v35 = v48;
                uTF8String = [v48 UTF8String];
                *buf = 67111426;
                *v55 = v13;
                *&v55[4] = 1024;
                *&v55[6] = v5 - v13;
                *v56 = 1024;
                *&v56[2] = v5 - 1;
                *v57 = 2048;
                *&v57[2] = v39;
                v58 = 2048;
                v59 = v41;
                v60 = 2048;
                v61 = v42;
                v62 = 2048;
                v63 = v40;
                v64 = 2048;
                v65 = v44;
                v66 = 2048;
                v67 = v46;
                v68 = 2080;
                v69 = uTF8String;
                _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "VMUTaskMemoryScanner _noteBlocksInRegion startIndex %u count %u lastIndex %u  startBlock %#llx-%#llx[%llu] lastBlock %#llx-%#llx[%llu]  %s\n", buf, 0x5Au);
              }

              if (v25 == v23)
              {
                [VMUKernelCoreMemoryScanner _buildRegionFirstBlockIndexOnPageArrays];
              }

              v21 = *MEMORY[0x1E69E9AC8];
              v19 = (v5 - 1);
              v26 = v25 - v23;
            }

            if (v26 > v21)
            {
              v27 = (v26 >> *MEMORY[0x1E69E9AC0]) + 1;
              v28 = malloc_type_calloc(v27, 4uLL, 0x100004052888210uLL);
              *(v10 + 1) = v28;
              if (!v28)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v43 = v52->var0;
                  v49 = (*(v52 + 1) >> 5) & 0xFFFFFFFFFLL;
                  v47 = v49 + v52->var0;
                  v45 = v50->var0;
                  v51 = (*(v50 + 1) >> 5) & 0xFFFFFFFFFLL;
                  v53 = [*v10 description];
                  v37 = v53;
                  uTF8String2 = [v53 UTF8String];
                  *buf = 134220546;
                  *v55 = v27;
                  *&v55[8] = 1024;
                  *v56 = v13;
                  *&v56[4] = 1024;
                  *v57 = v5 - v13;
                  *&v57[4] = 1024;
                  *&v57[6] = v5 - 1;
                  v58 = 2048;
                  v59 = v43;
                  v60 = 2048;
                  v61 = v47;
                  v62 = 2048;
                  v63 = v49;
                  v64 = 2048;
                  v65 = v45;
                  v66 = 2048;
                  v67 = v51 + v45;
                  v68 = 2048;
                  v69 = v51;
                  v70 = 2080;
                  v71 = uTF8String2;
                  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "numPages: %zu  VMUTaskMemoryScanner _noteBlocksInRegion startIndex %u count %u lastIndex %u  startBlock %#llx-%#llx[%llu] lastBlock %#llx-%#llx[%llu]  %s\n", buf, 0x64u);
                }

                v28 = *(v10 + 1);
                if (!v28)
                {
                  [VMUKernelCoreMemoryScanner _buildRegionFirstBlockIndexOnPageArrays];
                }
              }

              if (v27)
              {
                v29 = 0;
                v30 = *MEMORY[0x1E69E9AC8];
                do
                {
                  v28[v29] = v13;
                  v23 += v30;
                  v31 = v13;
                  v32 = v13 - 1;
                  v33 = &v20[v13];
                  do
                  {
                    ++v32;
                    if (v31 >= v5)
                    {
                      break;
                    }

                    v34 = v33->var0;
                    ++v33;
                    ++v31;
                  }

                  while (v34 < v23);
                  if (((*(&v20[v32 - 1] + 1) >> 5) & 0xFFFFFFFFFLL) + v20[v32 - 1].var0 <= v23)
                  {
                    LODWORD(v13) = v32;
                  }

                  else
                  {
                    LODWORD(v13) = v32 - 1;
                  }

                  v29 = (v29 + 1);
                }

                while (v27 > v29);
              }

              v19 = (v5 - 1);
            }
          }

          else
          {
            v19 = (v5 - 1);
          }

          if (((*(&self->_blocks[v19] + 1) >> 5) & 0xFFFFFFFFFLL) + self->_blocks[v19].var0 > v11)
          {
            LODWORD(v5) = v19;
          }
        }
      }

      ++v4;
    }

    while (v4 < self->_regionsCount);
  }
}

- (const)getCachedScanInfoForClassWithIsa:(unsigned int)isa classInfo:(id)info scanCaches:(_VMUScanLocationCache *)caches
{
  result = 0;
  if (isa)
  {
    if (info)
    {
      result = caches[isa];
      if (!result)
      {
        instanceSize = [info instanceSize];
        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x2020000000;
        v30 = (instanceSize >> 3) + 2;
        caches[isa] = malloc_type_malloc(4 * v30, 0x100004052888210uLL);
        v25 = 0;
        v26 = &v25;
        v27 = 0x2020000000;
        v28 = 0;
        v23[0] = MEMORY[0x1E69E9820];
        v23[1] = 3221225472;
        v23[2] = __84__VMUKernelCoreMemoryScanner_getCachedScanInfoForClassWithIsa_classInfo_scanCaches___block_invoke;
        v23[3] = &unk_1E8277A60;
        v23[4] = &v25;
        v23[5] = v29;
        v23[6] = caches;
        isaCopy = isa;
        [info enumerateScanningLocationsForSize:instanceSize withBlock:v23];
        defaultScanType = [info defaultScanType];
        v12 = caches[isa];
        v13 = *(v26 + 6);
        *(v26 + 6) = v13 + 1;
        defaultScanType2 = [info defaultScanType];
        v15 = (instanceSize + 7) & 0xFFFFF8;
        if (defaultScanType == 1)
        {
          v15 = instanceSize;
        }

        v12[v13] = (v15 & 0xFFFFFF | ((defaultScanType2 & 0x3F) << 24));
        v16 = caches[isa];
        v17 = *(v26 + 6);
        *(v26 + 6) = v17 + 1;
        v16[v17] = ((([info defaultScanType] & 0x3F) << 24) | 0xFFFFFF);
        swiftHeapGenericLocalVariableClassInfoIndex = self->_swiftHeapGenericLocalVariableClassInfoIndex;
        v19 = [info infoType] - 8;
        if (v19 <= 0x38 && ((1 << v19) & 0x100000001000001) != 0)
        {
          v20 = caches[isa];
          v21 = *v20;
        }

        else
        {
          v20 = caches[isa];
          v21 = *v20;
          if (swiftHeapGenericLocalVariableClassInfoIndex != isa)
          {
            v22 = 0;
            goto LABEL_10;
          }
        }

        v22 = 0x80000000;
LABEL_10:
        *v20 = (v22 | *&v21 & 0x7FFFFFFF);
        _Block_object_dispose(&v25, 8);
        _Block_object_dispose(v29, 8);
        return caches[isa];
      }
    }
  }

  return result;
}

void __84__VMUKernelCoreMemoryScanner_getCachedScanInfoForClassWithIsa_classInfo_scanCaches___block_invoke(uint64_t a1, void *a2, int a3, char a4)
{
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 24);
  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 24);
  if (v9 + 2 >= v11)
  {
    *(v10 + 24) = 2 * v11;
    v13 = malloc_type_realloc(*(*(a1 + 48) + 8 * *(a1 + 56)), 4 * *(*(*(a1 + 40) + 8) + 24), 0x100004052888210uLL);
    v12 = *(a1 + 56);
    *(*(a1 + 48) + 8 * v12) = v13;
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 24);
  }

  else
  {
    v12 = *(a1 + 56);
  }

  v14 = *(*(a1 + 48) + 8 * v12);
  *(v8 + 24) = v9 + 1;
  v15 = a3 & 0xFFFFFF | ((a4 & 0x3F) << 24);
  if (a2)
  {
    v16 = [a2 typeName];
    if (v16)
    {
      v18 = v16;
      v17 = [a2 typeName];
      *(v14 + 4 * v9) = v15 | (([v17 length] == 0) << 30);

      v16 = v18;
    }

    else
    {
      *(v14 + 4 * v9) = v15;
    }
  }

  else
  {
    *(v14 + 4 * v9) = v15;
  }
}

- (void)_withOrderedNodeMapper:(id)mapper
{
  mapperCopy = mapper;
  v5 = mapperCopy;
  if (mapperCopy)
  {
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x2020000000;
    v17 = -1;
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2020000000;
    v15 = 0;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2020000000;
    v13[3] = 0;
    v12[0] = 0;
    v12[1] = v12;
    v12[2] = 0x2020000000;
    v12[3] = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __53__VMUKernelCoreMemoryScanner__withOrderedNodeMapper___block_invoke;
    v6[3] = &unk_1E8277A88;
    v8 = v16;
    v9 = v12;
    v10 = v14;
    v11 = v13;
    v6[4] = self;
    v7 = 0;
    (*(mapperCopy + 2))(mapperCopy, v6);

    _Block_object_dispose(v12, 8);
    _Block_object_dispose(v13, 8);
    _Block_object_dispose(v14, 8);
    _Block_object_dispose(v16, 8);
  }
}

void __53__VMUKernelCoreMemoryScanner__withOrderedNodeMapper___block_invoke(void *a1, unsigned int a2, int a3, uint64_t a4)
{
  if (!a4)
  {
    return;
  }

  v6 = a1[4];
  if (*(v6 + 104) <= a2)
  {
    return;
  }

  v7 = (*(v6 + 96) + 16 * a2);
  v8 = v7[1];
  v9 = (v8 >> 5) & 0xFFFFFFFFFLL;
  if (!v9)
  {
    return;
  }

  v12 = *v7;
  v13 = v8 & 7;
  if (!a3)
  {
    v32 = *(*(a1[6] + 8) + 24);
    if (v32 != -1 && *(*(a1[7] + 8) + 24) <= v12)
    {
      v33 = *(v6 + 112);
      v34 = *(v6 + 72);
      v35 = v34;
      v36 = &v33[8 * v32];
      if (v36[6])
      {
        if (v36[7] == v36)
        {
          aBlock = MEMORY[0x1E69E9820];
          v119 = 3221225472;
          v120 = ___unmapRegion_block_invoke_0;
          v121 = &unk_1E8277E50;
          v122 = v34;
          v123 = v36;
          v124 = v33;
          v89 = _Block_copy(&aBlock);
          v89[2]();
        }

        else
        {
          v37 = v36[5] & 1;
          v36[6] = 0;
          v36[7] = 0;
          v36[5] = v37;
        }
      }

      *(*(a1[6] + 8) + 24) = -1;
    }
  }

  if (v13 == 1)
  {
    for (; *(*(a1[7] + 8) + 24) <= v12; *(*(a1[7] + 8) + 24) = *(*(*(a1[4] + 112) + (*(*(a1[8] + 8) + 24) << 6)) + 16) + *(*(a1[9] + 8) + 24))
    {
      *(*(a1[9] + 8) + 24) = *(*(*(a1[4] + 112) + (++*(*(a1[8] + 8) + 24) << 6)) + 8);
    }

    v14 = a1[4];
    v15 = *(*(a1[8] + 8) + 24);
    v16 = (*(v14 + 112) + (v15 << 6));
    if ((*(*v16 + 52) & 3) != 2)
    {
      v17 = *(a1[7] + 8);
      v19 = *(v17 + 24);
      v18 = (v17 + 24);
      if (v19 >= v9 + v12)
      {
        v38 = *(*(a1[9] + 8) + 24);
        v39 = *(v14 + 72);
        v40 = *(v14 + 120);
        v41 = *(v14 + 8);
        v42 = v39;
        v43 = v42;
        if (!v16[6])
        {
          v51 = *v16;
          if ((*(*v16 + 132) & 2) == 0)
          {
            [v42 taskIsTranslated];
            v51 = *v16;
          }

          aBlock = 0;
          v125[0] = 0;
          v52 = [v43 mapAddress:*(v51 + 8) size:*(v51 + 16) returnedAddress:&aBlock returnedSize:v125];
          if (v52)
          {
            v115 = v52;
            if ((*(*v16 + 52) & 3u) - 1 >= 2)
            {
              v53 = task_exists(v41);
              if (v15 != v40 - 1 && v53)
              {
                v112 = *MEMORY[0x1E69E9848];
                v109 = [*v16 address];
                v54 = *(*v16 + 24);
                v106 = (&vm_prot_strings_0)[v54];
                v55 = *(*v16 + 16) + *(*v16 + 8);
                v56 = VMURegionTypeDescriptionForTagShareProtAndPager(*(*v16 + 104), *(*v16 + 50), v54, *(*v16 + 49));
                v57 = [v56 UTF8String];
                v58 = *(*v16 + 16) >> *MEMORY[0x1E69E9AC0];
                v59 = "pages";
                if (v58 == 1)
                {
                  v59 = "page";
                }

                if (v16[3] == v16[4])
                {
                  v60 = "";
                }

                else
                {
                  v60 = " [root]";
                }

                fprintf(v112, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", v109, v55, v106, v57, v58, v59, v60, v115);
              }
            }
          }

          else
          {
            v90 = aBlock;
            v16[5] = v16[5] & 1 | (2 * v125[0]);
            v16[6] = v90;
            v16[7] = v16;
          }
        }

        v44 = *(a1[4] + 112);
        v45 = v15;
        goto LABEL_50;
      }

      v20 = v15 + 1;
      do
      {
        v21 = v20;
        v22 = (*(*(a1[4] + 112) + (v20 << 6)) + 8);
        *v18 = v22[1] + *v22;
        ++v20;
        v23 = *(a1[7] + 8);
        v24 = *(v23 + 24);
        v18 = (v23 + 24);
      }

      while (v24 < v9 + v12);
      v25 = *(*(a1[8] + 8) + 24);
      v26 = v20 - v25;
      v27 = a1[4];
      v108 = *(*(a1[8] + 8) + 24);
      v28 = (*(v27 + 112) + (v25 << 6));
      v29 = *(v27 + 72);
      if (a3 == 1)
      {
        v30 = a1[5];
      }

      else
      {
        v30 = 0;
      }

      v46 = v21;
      v105 = *(v27 + 8);
      v111 = v29;
      v114 = v30;
      v104 = v26;
      if (v26)
      {
        v47 = 0;
        v48 = v20 - v108;
        v49 = v28;
        do
        {
          v50 = *v49;
          v49 += 8;
          v47 += *(v50 + 16);
          --v48;
        }

        while (v48);
      }

      else
      {
        v47 = 0;
      }

      v45 = v20 - 1;
      v125[0] = 0;
      v117 = 0;
      v61 = [(FILE *)v111 findMappedAddress:*(*v28 + 8) size:v47];
      if (v61)
      {
        v62 = v61[1];
        v63 = *(*v28 + 8) - *v61;
        v125[0] = v61[2] + v63;
        v117 = v62 - v63;
      }

      else
      {
        v102 = v46;
        if (v104)
        {
          v71 = v20 - v108;
          v72 = v28;
          v103 = v28;
          do
          {
            v73 = v111;
            v74 = v114;
            if (v72[6])
            {
              if (v72 == v72[7])
              {
                aBlock = MEMORY[0x1E69E9820];
                v119 = 3221225472;
                v120 = ___unmapRegion_block_invoke_0;
                v121 = &unk_1E8277E50;
                v122 = v73;
                v123 = v72;
                v124 = v28;
                v76 = _Block_copy(&aBlock);
                v77 = v76;
                if (v114)
                {
                  dispatch_async(v74, v76);
                }

                else
                {
                  v76[2](v76);
                }

                v28 = v103;
              }

              else
              {
                v75 = v72[5] & 1;
                v72[6] = 0;
                v72[7] = 0;
                v72[5] = v75;
              }
            }

            v72 += 8;
            --v71;
          }

          while (v71);
        }

        v46 = v102;
        v45 = v20 - 1;
        if ([(FILE *)v111 mapAddress:*(*v28 + 8) size:v47 returnedAddress:v125 returnedSize:&v117])
        {
          if (task_exists(v105))
          {
            fprintf(*MEMORY[0x1E69E9848], "Failed to map remote region at [%#llx-%#llx]\n", *(*v28 + 8), *(*v28 + 8) + v47);
          }

          goto LABEL_49;
        }
      }

      if (v104)
      {
        v64 = v117;
        v65 = v125[0];
        v66 = v28 + 5;
        v67 = v20 - v108;
        do
        {
          v66[1] = v65;
          v66[2] = v28;
          *v66 = *v66 & 1 | (2 * v64);
          v68 = *(v66 - 5) + 8;
          v65 += *(*(v66 - 5) + 16);
          v125[0] = v65;
          v64 -= *(v68 + 8);
          v117 = v64;
          v66 += 8;
          --v67;
        }

        while (v67);
      }

LABEL_49:

      v44 = *(a1[4] + 112);
      v38 = *(*(v44 + (v46 << 6)) + 8);
LABEL_50:
      v69 = *(a1[8] + 8);
      v70 = *(v44 + (*(v69 + 24) << 6) + 48);
      if (v70)
      {
        (*(a4 + 16))(a4, v70 + v12 - *(*(a1[9] + 8) + 24));
        v69 = *(a1[8] + 8);
      }

      *(v69 + 24) = v45;
      *(*(a1[9] + 8) + 24) = v38;
    }
  }

  else if (VMUGraphNodeType_IsVMRegion(v13))
  {
    *(*(a1[8] + 8) + 24) = *(*(a1[4] + 96) + 16 * a2 + 8) >> 41;
    v78 = *(*(a1[4] + 112) + (*(*(a1[8] + 8) + 24) << 6));
    if ([(VMUKernelCoreMemoryScanner *)a1[4] _shouldScanVMregion:?])
    {
      *(*(a1[9] + 8) + 24) = [v78 address];
      v79 = *(*(a1[9] + 8) + 24);
      *(*(a1[7] + 8) + 24) = [v78 length] + v79;
      v80 = a1[4];
      v81 = *(*(a1[8] + 8) + 24);
      v82 = (*(v80 + 112) + (v81 << 6));
      v83 = *(v80 + 72);
      v84 = *(v80 + 120);
      v85 = *(v80 + 8);
      v86 = v83;
      v87 = v86;
      if (!v82[6])
      {
        v91 = *v82;
        if ((*(*v82 + 132) & 2) == 0)
        {
          [v86 taskIsTranslated];
          v91 = *v82;
        }

        aBlock = 0;
        v125[0] = 0;
        v92 = [v87 mapAddress:*(v91 + 8) size:*(v91 + 16) returnedAddress:&aBlock returnedSize:v125];
        if (v92)
        {
          v116 = v92;
          if ((*(*v82 + 52) & 3u) - 1 >= 2)
          {
            v93 = task_exists(v85);
            if (v81 != v84 - 1 && v93)
            {
              v113 = *MEMORY[0x1E69E9848];
              v110 = [*v82 address];
              v94 = *(*v82 + 24);
              v107 = (&vm_prot_strings_0)[v94];
              v95 = *(*v82 + 16) + *(*v82 + 8);
              v96 = VMURegionTypeDescriptionForTagShareProtAndPager(*(*v82 + 104), *(*v82 + 50), v94, *(*v82 + 49));
              v97 = [v96 UTF8String];
              v98 = *(*v82 + 16) >> *MEMORY[0x1E69E9AC0];
              v99 = "pages";
              if (v98 == 1)
              {
                v99 = "page";
              }

              if (v82[3] == v82[4])
              {
                v100 = "";
              }

              else
              {
                v100 = " [root]";
              }

              fprintf(v113, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", v110, v95, v107, v97, v98, v99, v100, v116);
            }
          }
        }

        else
        {
          v101 = aBlock;
          v82[5] = v82[5] & 1 | (2 * v125[0]);
          v82[6] = v101;
          v82[7] = v82;
        }
      }

      v88 = *(*(a1[4] + 112) + (*(*(a1[8] + 8) + 24) << 6) + 48);
      if (v88)
      {
        (*(a4 + 16))(a4, v88 + v12 - *(*(a1[9] + 8) + 24));
        if (!a3)
        {
          *(*(a1[6] + 8) + 24) = *(*(a1[8] + 8) + 24);
        }
      }
    }
  }

  else if (v13 == 4)
  {
    v31 = [*(a1[4] + 240) threadStateForThreadNum:*(*(a1[4] + 96) + 16 * a2 + 8) >> 41];
    if (v31)
    {
      (*(a4 + 16))(a4, v31);
    }

    *(*(a1[6] + 8) + 24) = -1;
  }
}

- (void)scanNodesWithReferenceRecorder:(id)recorder
{
  recorderCopy = recorder;
  v5 = _Block_copy(recorderCopy);
  v6 = malloc_type_calloc(self->_classInfosCount, 8uLL, 0x2004093837F09uLL);
  if (self->_referenceLogger || (maxInteriorOffset = self->_maxInteriorOffset, maxInteriorOffset != -1) && (!maxInteriorOffset || (maxInteriorOffset & ~(-1 << *MEMORY[0x1E69E9AC0])) != 0))
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke;
    aBlock[3] = &unk_1E8277AB0;
    aBlock[4] = self;
    v19 = recorderCopy;
    v7 = _Block_copy(aBlock);

    v5 = v7;
  }

  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_2;
  v13 = &unk_1E8277B98;
  v17 = 0;
  v15 = v5;
  v16 = v6;
  selfCopy = self;
  v8 = v5;
  [(VMUKernelCoreMemoryScanner *)self _withOrderedNodeMapper:&v10];
  [(VMUKernelCoreMemoryScanner *)self unmapAllRegions:v10];
}

uint64_t __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  v6 = *(result + 32);
  if ((a6 - *(v6[12] + 16 * a5)) <= v6[44])
  {
    v7 = result;
    if (v6[57])
    {
      v8 = objc_autoreleasePoolPush();
      (*(*(*(v7 + 32) + 456) + 16))();
      objc_autoreleasePoolPop(v8);
    }

    v9 = *(*(v7 + 40) + 16);

    return v9();
  }

  return result;
}

void __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (*(v2 + 104))
  {
    v5 = 0;
    v6 = a2 + 16;
    v106 = a2 + 16;
    while (1)
    {
      v7 = *(*(v2 + 96) + 16 * v5 + 8);
      if (*(v2 + 464))
      {
        v8 = objc_autoreleasePoolPush();
        (*(*(*(a1 + 32) + 464) + 16))();
        objc_autoreleasePoolPop(v8);
      }

      v9 = v7 & 7;
      if (v9 == 1)
      {
        break;
      }

      if (VMUGraphNodeType_IsVMRegion(v7 & 7))
      {
        v13 = *(a1 + 32);
        v14 = (*(v13 + 96) + 16 * v5);
        v15 = *v14;
        v18 = v14[1];
        v16 = v14 + 1;
        v17 = v18;
        kcd_addr_begin[0] = 0;
        kcd_addr_begin[1] = kcd_addr_begin;
        kcd_addr_begin[2] = 0x2020000000;
        kcd_addr_begin[3] = v15;
        kcd_size[0] = 0;
        kcd_size[1] = kcd_size;
        kcd_size[2] = 0x2020000000;
        if ((*v16 >> 5) & 0xFFFFFFFFFLL)
        {
          v19 = ((v17 >> 5) & 0xFFFFFFFFFLL) + v15;
          v20 = *(*(v13 + 112) + ((*v16 >> 35) & 0x1FFFFFC0));
          v21 = _Block_copy(*(a1 + 40));
          v22 = *(a1 + 56);
          v117[0] = MEMORY[0x1E69E9820];
          v117[1] = 3221225472;
          v117[2] = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_6;
          v117[3] = &unk_1E8277B48;
          v117[4] = *(a1 + 32);
          v120 = kcd_size;
          v121 = kcd_addr_begin;
          v122 = v15;
          v125 = v5;
          v23 = *(a1 + 48);
          v123 = v19;
          v124 = v23;
          v24 = v21;
          v119 = v24;
          v25 = v20;
          v118 = v25;
          (*(a2 + 16))(a2, v5, v22, v117);
        }

        _Block_object_dispose(kcd_size, 8);
        _Block_object_dispose(kcd_addr_begin, 8);
        goto LABEL_107;
      }

      if (v9 == 3)
      {
        v29 = *(a1 + 32);
        v28 = *(a1 + 40);
        v30 = *(*(v29 + 96) + 16 * v5);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_8;
        aBlock[3] = &unk_1E8277E00;
        aBlock[4] = v29;
        v31 = v28;
        v113 = v5;
        v111 = v31;
        v112 = v30;
        v32 = _Block_copy(aBlock);
        if ([*(*(a1 + 32) + 8) isCore])
        {
          kcd_addr_begin[0] = 0;
          v33 = [*(*(a1 + 32) + 8) memoryCache];
          v34 = [(VMUTaskMemoryCache *)v33 getCoreFileUdataPointersIntoBuffer:kcd_addr_begin count:?];

          if (!v34 && kcd_addr_begin[0])
          {
            if (kcd_addr_begin[0] >> 61)
            {
              NSLog(&cfstr_FailedToGetUda.isa);
            }

            else
            {
              v98 = malloc_type_malloc(8 * kcd_addr_begin[0], 0xB75341A9uLL);
              if (v98)
              {
                v99 = v98;
                v100 = v6;
                v101 = [*(*(a1 + 32) + 8) memoryCache];
                v102 = [(VMUTaskMemoryCache *)v101 getCoreFileUdataPointersIntoBuffer:v99 count:kcd_addr_begin];

                if (!v102)
                {
                  v32[2](v32, v99, kcd_addr_begin[0]);
                }

                free(v99);
                v6 = v100;
              }
            }
          }

LABEL_106:

          goto LABEL_107;
        }

        kcd_addr_begin[0] = 0;
        kcd_size[0] = 0;
        if (!task_map_corpse_info_64(*MEMORY[0x1E69E9A60], [*(*(a1 + 32) + 8) taskPort], kcd_addr_begin, kcd_size))
        {
          v90 = v32;
          v91 = kcd_addr_begin[0];
          v92 = kcd_size[0];
          v93 = kcd_size[0] + kcd_addr_begin[0];
          v94 = kcd_addr_begin[0] + 16;
          if (v91 + 16 <= kcd_size[0] + v91 && v94 + *(kcd_addr_begin[0] + 4) <= v93 && *kcd_addr_begin[0] == -559025833)
          {
            do
            {
              v95 = v94 + *(v91 + 4);
              if (v95 > v93)
              {
                break;
              }

              v96 = *v91;
              if (*v91 == -242132755)
              {
                break;
              }

              if (v96 == 17 || (v96 & 0xFFFFFFF0) == 0x20)
              {
                v97 = *(v91 + 8);
                if (HIDWORD(v97) == 2076)
                {
                  v90[2](v90, (v91 + 16), v97);
                  v95 = v94 + *(v91 + 4);
                }
              }

              v94 = v95 + 16;
              v91 = v95;
            }

            while (v95 + 16 <= v93);
            v91 = kcd_addr_begin[0];
            v92 = kcd_size[0];
          }

          mach_vm_deallocate(*MEMORY[0x1E69E9A60], v91, v92);
          v32 = v90;
LABEL_101:
          v6 = v106;
          goto LABEL_106;
        }

        [*(a1 + 32) pid];
        v35 = proc_list_uptrs();
        if (v35 < 1)
        {
          goto LABEL_101;
        }

        v36 = v35;
        v104 = v32;
        v37 = malloc_type_malloc((8 * v35), 0x2BA33256uLL);
        [*(a1 + 32) pid];
        proc_list_uptrs();
        v38 = v37;
        v39 = 0;
        v40 = v36;
        v41 = MEMORY[0x1E69E9AC0];
        v109 = v37;
        v105 = v36;
LABEL_23:
        v42 = *(*(a1 + 32) + 128);
        v43 = v42[6];
        v44 = v42[7];
        v45 = v44 >= v43;
        v46 = v44 - v43;
        if (!v45)
        {
          goto LABEL_81;
        }

        v47 = v38[v39];
        if (v47 - v43 >= v46)
        {
          goto LABEL_81;
        }

        v48 = v47 >> *v41;
        if (v48)
        {
          v49 = v42[3];
          v52 = *v49;
          v50 = v49 + 1;
          v51 = v52;
          v53 = v47 >> *v41;
          do
          {
            v54 = v53 & 0x3FFFFFF;
            if (v51 <= v54 || ((*(v50 + (v54 >> 3)) >> (v53 & 7)) & 1) == 0)
            {
              goto LABEL_81;
            }

            v53 >>= 26;
          }

          while (v53);
        }

        v55 = v48 & 0x7FFFF;
        v56 = *(v42 + (v48 & 0x7FFFF) + 16);
        v57 = v42[4];
        if (v56)
        {
          v58 = v57 + ((v56 - 1) << 6);
          if (v47 - *(*v58 + 8) < *(*v58 + 16))
          {
            goto LABEL_33;
          }
        }

        v75 = *(v42 + 10);
        if (!v75)
        {
          goto LABEL_81;
        }

        v76 = v42[4];
        while (1)
        {
          v77 = v75 >> 1;
          v58 = v76 + (v75 >> 1 << 6);
          if (*(*v58 + 8) <= v47)
          {
            if (*(*v58 + 16) + *(*v58 + 8) > v47)
            {
              v78 = [*v58 isSpecialPhysFootprintRegion];
              v40 = v105;
              v38 = v109;
              v41 = MEMORY[0x1E69E9AC0];
              if (v78)
              {
                v79 = 0;
              }

              else
              {
                v79 = v58;
              }

              if (v78)
              {
                goto LABEL_81;
              }

              if ((*(*v79 + 132) & 1) == 0)
              {
                goto LABEL_75;
              }

              v80 = (v79 + 64);
              v81 = *(v42 + 10) - ((v79 + 64 - v42[4]) >> 6);
              if (!v81)
              {
                goto LABEL_72;
              }

              while (2)
              {
                v82 = v81 >> 1;
                v83 = &v80[8 * (v81 >> 1)];
                if (*(*v83 + 1) > v47)
                {
LABEL_67:
                  v84 = v81 > 1;
                  v81 = v82;
                  if (!v84)
                  {
                    v81 = 0;
                    goto LABEL_72;
                  }

                  continue;
                }

                break;
              }

              if (*(*v83 + 2) + *(*v83 + 1) <= v47)
              {
                v80 = v83 + 8;
                v82 = --v81 >> 1;
                goto LABEL_67;
              }

              v103 = v79;
              v85 = [*v83 isSpecialPhysFootprintRegion];
              v79 = v103;
              v40 = v105;
              v38 = v109;
              v41 = MEMORY[0x1E69E9AC0];
              if (v85)
              {
                v81 = 0;
              }

              else
              {
                v81 = v83;
              }

LABEL_72:
              if (v81)
              {
                v79 = v81;
              }

              v58 = v79;
LABEL_75:
              *(v42 + v55 + 16) = ((v79 - v57) >> 6) + 1;
LABEL_33:
              v59 = *(v58 + 20);
              if (v59)
              {
                v60 = *(v58 + 8);
                v61 = *v42;
                v62 = *(v58 + 16);
                v63 = (*v42 + 16 * v62);
                if (v60)
                {
                  if (*v63 > v47)
                  {
                    goto LABEL_81;
                  }

                  v64 = (v61 + 16 * (v59 + v62 - 1));
                  if (((v64[1] >> 5) & 0xFFFFFFFFFuLL) + *v64 <= v47)
                  {
                    goto LABEL_81;
                  }

                  v65 = (v60 + 4 * ((v47 - (*v63 & -*MEMORY[0x1E69E9AC8])) >> *v41));
                  v66 = *v65;
                  v67 = (v61 + 16 * v66);
                  if (*v67 > v47)
                  {
                    goto LABEL_81;
                  }

                  v68 = v65[1];
                  if (v68 < *(v42 + 2) && (v69 = (v61 + 16 * v68), v70 = *v69, *v69 <= v47))
                  {
                    v73 = v69[1];
LABEL_77:
                    if ((v73 & 7) - 2 >= 3)
                    {
                      v86 = (v69 - v61) >> 4;
                      v87 = v42[2];
                      if (v47 - v70 >= v87)
                      {
                        if (((v73 >> 5) & 0xFFFFFFFFFLL) - (v47 - v70) > v87 || v86 == -1)
                        {
                          goto LABEL_81;
                        }
                      }

                      else if (v86 == -1)
                      {
                        goto LABEL_81;
                      }

                      v88 = v40;
                      (*(*(a1 + 40) + 16))();
                      v40 = v88;
                      v38 = v109;
                      v41 = MEMORY[0x1E69E9AC0];
                    }
                  }

                  else
                  {
                    v71 = v68 - v66;
                    if (v71)
                    {
                      do
                      {
                        v72 = v71 >> 1;
                        v69 = &v67[2 * (v71 >> 1)];
                        v70 = *v69;
                        if (*v69 <= v47)
                        {
                          v73 = v69[1];
                          if (((v73 >> 5) & 0xFFFFFFFFFLL) + v70 > v47)
                          {
                            goto LABEL_77;
                          }

                          v67 = v69 + 2;
                          v72 = --v71 >> 1;
                        }

                        v45 = v71 >= 2;
                        v71 = v72;
                      }

                      while (v45);
                    }
                  }
                }

                else
                {
                  do
                  {
                    v74 = v59 >> 1;
                    v69 = &v63[2 * (v59 >> 1)];
                    v70 = *v69;
                    if (*v69 <= v47)
                    {
                      v73 = v69[1];
                      if (((v73 >> 5) & 0xFFFFFFFFFLL) + v70 > v47)
                      {
                        goto LABEL_77;
                      }

                      v63 = v69 + 2;
                      v74 = --v59 >> 1;
                    }

                    v45 = v59 >= 2;
                    v59 = v74;
                  }

                  while (v45);
                }
              }

LABEL_81:
              if (++v39 == v40)
              {
                free(v38);
                v32 = v104;
                goto LABEL_101;
              }

              goto LABEL_23;
            }

            v76 = v58 + 64;
            v77 = --v75 >> 1;
          }

          v45 = v75 >= 2;
          v75 = v77;
          if (!v45)
          {
            goto LABEL_81;
          }
        }
      }

      if (v9 == 4)
      {
        v26 = *(a1 + 56);
        v114[0] = MEMORY[0x1E69E9820];
        v114[1] = 3221225472;
        v114[2] = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_7;
        v114[3] = &unk_1E8277B20;
        v114[4] = *(a1 + 32);
        v116 = v5;
        v108 = *(a1 + 40);
        v27 = v108;
        v115 = v108;
        (*(a2 + 16))(a2, v5, v26, v114);
        v12 = v115;
        goto LABEL_7;
      }

LABEL_107:
      ++v5;
      v2 = *(a1 + 32);
      if (v5 >= *(v2 + 104))
      {
        return;
      }
    }

    v10 = *(a1 + 56);
    v129[0] = MEMORY[0x1E69E9820];
    v129[1] = 3221225472;
    v129[2] = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_3;
    v129[3] = &unk_1E8277B20;
    v129[4] = *(a1 + 32);
    v131 = v5;
    v107 = *(a1 + 40);
    v11 = v107;
    v130 = v107;
    (*(a2 + 16))(a2, v5, v10, v129);
    v12 = v130;
LABEL_7:

    goto LABEL_107;
  }
}

void __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  v6 = *(*(v4 + 96) + 16 * v5 + 8);
  v7 = (v6 >> 5) & 0xFFFFFFFFFLL;
  if (v7 >= 0x100 && (*a2 == -1583242847 && !strncmp((a2 + 4), "AUTORELEASE!", 0xCuLL) || v7 == 10240 && *(a2 + 2048) == -1583242847 && !strncmp((a2 + 2052), "AUTORELEASE!", 0xCuLL)))
  {
    v21 = *(v4 + 348);
    *(v4 + 300) = 1;
    *(*(a1 + 32) + 348) = 0;
    v22 = *(a1 + 32);
    v23 = (*(v22 + 96) + 16 * *(a1 + 56));
    v24 = *v23;
    v25 = (v23[1] >> 5) & 0xFFFFFFFFFLL;
    v26 = *(a2 + *[*(v22 + 80) autoreleasePoolPageLayout]) - v24;
    if (v25 < v26)
    {
      v26 = v25;
    }

    if (v26 >= 0x4000)
    {
      v27 = 0x4000;
    }

    else
    {
      v27 = v26;
    }

    [(VMUKernelCoreMemoryScanner *)*(a1 + 32) scanLocalMemory:a2 atOffset:0 node:*(a1 + 56) length:v27 isa:*(*(*(a1 + 32) + 96) + 16 * *(a1 + 56) + 8) >> 41 scanCaches:*(a1 + 48) fieldInfo:0 stride:8u recorder:*(a1 + 40)];
    *(*(a1 + 32) + 348) = v21;
    *(*(a1 + 32) + 300) = 0;
  }

  else
  {
    v8 = [v4 zoneNameForNode:v5];
    if (([*(*(a1 + 32) + 528) containsObject:v8] & 1) == 0)
    {
      [(VMUKernelCoreMemoryScanner *)*(a1 + 32) scanLocalMemory:a2 atOffset:0 node:*(a1 + 56) length:(v6 >> 5) & 0xFFFFFFFFFLL isa:*(*(*(a1 + 32) + 96) + 16 * *(a1 + 56) + 8) >> 41 scanCaches:*(a1 + 48) fieldInfo:0 stride:1u recorder:*(a1 + 40)];
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 256);
    v11 = *(v9 + 264);
    __compar[0] = MEMORY[0x1E69E9820];
    __compar[1] = 3221225472;
    __compar[2] = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_4;
    __compar[3] = &__block_descriptor_36_e15_i24__0r_v8r_v16l;
    v34 = *(a1 + 56);
    v12 = bsearch_b(0, v10, v11, 0x10uLL, __compar);
    if (v12)
    {
      v13 = v6 >> 5;
      v14 = *(a1 + 32);
      v15 = *(a1 + 56);
      v16 = *(*(v14 + 272) + ((*(*(v14 + 96) + 16 * v15 + 8) >> 38) & 0x3FFFFF8));
      v17 = v12[1];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_5;
      v28[3] = &unk_1E8277AF8;
      v28[4] = v14;
      v32 = v15;
      v19 = *(a1 + 40);
      v18 = *(a1 + 48);
      v30 = a2;
      v31 = v18;
      v29 = v19;
      v20 = v16;
      [v20 enumerateStoredEntriesForObject:a2 ofSize:v13 externalValues:v17 block:v28];
    }
  }
}

uint64_t __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v3 = *(a1 + 32);
  v4 = *a3 > v3;
  v5 = *a3 != v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

void __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_6(uint64_t a1, uint64_t a2)
{
  if (*MEMORY[0x1E69E9AB0] >= *MEMORY[0x1E69E9AC8])
  {
    v4 = *MEMORY[0x1E69E9AC8];
  }

  else
  {
    v4 = *MEMORY[0x1E69E9AB0];
  }

  if (*MEMORY[0x1E69E9AA0] >= *MEMORY[0x1E69E9AB8])
  {
    v5 = *MEMORY[0x1E69E9AB8];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9AA0];
  }

  v6 = *(a1 + 72) & ~v5;
  v7 = ((*(a1 + 80) + v5) & ~v5) - v6;
  v30 = v7 / v4;
  v8 = malloc_type_malloc(4 * (v7 / v4) + 4, 0x100004052888210uLL);
  v8[v7 / v4] = 0;
  v9 = [*(*(a1 + 32) + 8) memoryCache];
  LODWORD(v6) = [v9 machVMPageRangeQueryWithAddress:v6 size:v7 dispositions:v8 dispositionsCount:&v30];

  if (v6)
  {
    free(v8);
  }

  else
  {
    v29 = a2;
    v10 = *(a1 + 56);
    v11 = *(*(v10 + 8) + 24);
    if (v11)
    {
      v12 = ~v5;
      v13 = *(a1 + 72) & ~v5;
      v14 = -1;
      v15 = v8;
      do
      {
        v16 = *v15++;
        v17 = (v16 & 0x11) == 0 || v13 >= *(a1 + 80);
        v18 = !v17;
        if (v17)
        {
          v19 = *(a1 + 64);
          if (v14 == -1)
          {
            v20 = *(*(v19 + 8) + 24);
            if (v13 > v20)
            {
              if (v11 >= v13 - v20)
              {
                v28 = v13 - v20;
              }

              else
              {
                v28 = v11;
              }

              [(VMUKernelCoreMemoryScanner *)*(a1 + 32) scanLocalMemory:v29 atOffset:v20 - *(a1 + 72) node:*(a1 + 96) length:v28 isa:0 scanCaches:*(a1 + 88) fieldInfo:0 stride:8u recorder:*(a1 + 48)];
              *(*(*(a1 + 64) + 8) + 24) += v28;
              *(*(*(a1 + 56) + 8) + 24) -= v28;
              v19 = *(a1 + 64);
            }
          }

          v21 = *(v19 + 8);
          v22 = *(v21 + 24);
          *(v21 + 24) = (v22 & v12) + v4;
          v23 = *(*(*(a1 + 64) + 8) + 24) - v22;
          v24 = *(*(a1 + 56) + 8);
          v25 = *(v24 + 24);
          v17 = v25 >= v23;
          v26 = v25 - v23;
          if (!v17)
          {
            v26 = 0;
          }

          *(v24 + 24) = v26;
          v10 = *(a1 + 56);
        }

        if (v14 >= v13)
        {
          v27 = v13;
        }

        else
        {
          v27 = v14;
        }

        if (v18)
        {
          v14 = -1;
        }

        else
        {
          v14 = v27;
        }

        v13 += v4;
        v11 = *(*(v10 + 8) + 24);
      }

      while (v11);
    }

    free(v8);
    if (*(*(a1 + 40) + 49))
    {
      [*(a1 + 32) clearCrashReporterInfoForMappedFileRegion];
    }
  }
}

uint64_t __61__VMUKernelCoreMemoryScanner_scanNodesWithReferenceRecorder___block_invoke_8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return result;
  }

  v5 = result;
  v6 = 0;
  v7 = MEMORY[0x1E69E9AC0];
  v8 = &OBJC_IVAR___VMUVMRegion_range;
  do
  {
    v9 = *(*(v5 + 32) + 128);
    v10 = v9[6];
    v11 = v9[7];
    v12 = v11 >= v10;
    v13 = v11 - v10;
    if (!v12)
    {
      goto LABEL_61;
    }

    v14 = *(a2 + 8 * v6);
    if (v14 - v10 >= v13)
    {
      goto LABEL_61;
    }

    v15 = v14 >> *v7;
    if (v15)
    {
      v16 = v9[3];
      v19 = *v16;
      v17 = v16 + 1;
      v18 = v19;
      v20 = v14 >> *v7;
      do
      {
        v21 = v20 & 0x3FFFFFF;
        if (v18 <= v21 || ((*(v17 + (v21 >> 3)) >> (v20 & 7)) & 1) == 0)
        {
          goto LABEL_61;
        }

        v20 >>= 26;
      }

      while (v20);
    }

    v22 = v15 & 0x7FFFF;
    v23 = *(v9 + (v15 & 0x7FFFF) + 16);
    v24 = v9[4];
    if (v23)
    {
      v25 = v24 + ((v23 - 1) << 6);
      if (v14 - *(*v25 + *v8) < *(*v25 + *v8 + 8))
      {
        goto LABEL_13;
      }
    }

    v42 = *(v9 + 10);
    if (!v42)
    {
      goto LABEL_61;
    }

    v43 = v9[4];
    while (1)
    {
      v44 = v42 >> 1;
      v25 = v43 + (v42 >> 1 << 6);
      result = *v25;
      v45 = (*v25 + *v8);
      if (*v45 <= v14)
      {
        break;
      }

LABEL_36:
      v12 = v42 >= 2;
      v42 = v44;
      if (!v12)
      {
        goto LABEL_61;
      }
    }

    if (v45[1] + *v45 <= v14)
    {
      v43 = v25 + 64;
      v44 = --v42 >> 1;
      goto LABEL_36;
    }

    result = [result isSpecialPhysFootprintRegion];
    v8 = &OBJC_IVAR___VMUVMRegion_range;
    v7 = MEMORY[0x1E69E9AC0];
    if (result)
    {
      v46 = 0;
    }

    else
    {
      v46 = v25;
    }

    if (result)
    {
      goto LABEL_61;
    }

    if ((*(*v46 + 132) & 1) == 0)
    {
      goto LABEL_55;
    }

    v47 = v46 + 64;
    v48 = *(v9 + 10) - ((v46 + 64 - v9[4]) >> 6);
    if (!v48)
    {
      goto LABEL_52;
    }

    while (2)
    {
      v49 = v48 >> 1;
      v50 = v47 + (v48 >> 1 << 6);
      result = *v50;
      if (*(*v50 + 8) > v14)
      {
LABEL_47:
        v51 = v48 > 1;
        v48 = v49;
        if (!v51)
        {
          v48 = 0;
          goto LABEL_52;
        }

        continue;
      }

      break;
    }

    if (*(*v50 + 16) + *(*v50 + 8) <= v14)
    {
      v47 = v50 + 64;
      v49 = --v48 >> 1;
      goto LABEL_47;
    }

    v57 = v46;
    result = [result isSpecialPhysFootprintRegion];
    v46 = v57;
    v8 = &OBJC_IVAR___VMUVMRegion_range;
    v7 = MEMORY[0x1E69E9AC0];
    if (result)
    {
      v48 = 0;
    }

    else
    {
      v48 = v50;
    }

LABEL_52:
    if (v48)
    {
      v46 = v48;
    }

    v25 = v46;
LABEL_55:
    *(v9 + v22 + 16) = ((v46 - v24) >> 6) + 1;
LABEL_13:
    v26 = *(v25 + 20);
    if (v26)
    {
      v27 = *(v25 + 8);
      v28 = *v9;
      v29 = *(v25 + 16);
      v30 = (*v9 + 16 * v29);
      if (v27)
      {
        if (*v30 > v14)
        {
          goto LABEL_61;
        }

        v31 = (v28 + 16 * (v26 + v29 - 1));
        if (((v31[1] >> 5) & 0xFFFFFFFFFuLL) + *v31 <= v14)
        {
          goto LABEL_61;
        }

        v32 = (v27 + 4 * ((v14 - (*v30 & -*MEMORY[0x1E69E9AC8])) >> *v7));
        v33 = *v32;
        v34 = (v28 + 16 * v33);
        if (*v34 > v14)
        {
          goto LABEL_61;
        }

        v35 = v32[1];
        if (v35 < *(v9 + 2) && (v36 = (v28 + 16 * v35), v37 = *v36, *v36 <= v14))
        {
          v40 = v36[1];
LABEL_57:
          if ((v40 & 7) - 2 >= 3)
          {
            v52 = (v36 - v28) >> 4;
            v53 = v9[2];
            if (v14 - v37 >= v53)
            {
              if (((v40 >> 5) & 0xFFFFFFFFFLL) - (v14 - v37) > v53 || v52 == -1)
              {
                goto LABEL_61;
              }
            }

            else if (v52 == -1)
            {
              goto LABEL_61;
            }

            v54 = v7;
            v55 = v8;
            result = (*(*(v5 + 40) + 16))();
            v8 = v55;
            v7 = v54;
          }
        }

        else
        {
          v38 = v35 - v33;
          if (v38)
          {
            do
            {
              v39 = v38 >> 1;
              v36 = &v34[2 * (v38 >> 1)];
              v37 = *v36;
              if (*v36 <= v14)
              {
                v40 = v36[1];
                if (((v40 >> 5) & 0xFFFFFFFFFLL) + v37 > v14)
                {
                  goto LABEL_57;
                }

                v34 = v36 + 2;
                v39 = --v38 >> 1;
              }

              v12 = v38 >= 2;
              v38 = v39;
            }

            while (v12);
          }
        }
      }

      else
      {
        do
        {
          v41 = v26 >> 1;
          v36 = &v30[2 * (v26 >> 1)];
          v37 = *v36;
          if (*v36 <= v14)
          {
            v40 = v36[1];
            if (((v40 >> 5) & 0xFFFFFFFFFLL) + v37 > v14)
            {
              goto LABEL_57;
            }

            v30 = v36 + 2;
            v41 = --v26 >> 1;
          }

          v12 = v26 >= 2;
          v26 = v41;
        }

        while (v12);
      }
    }

LABEL_61:
    ++v6;
  }

  while (v6 != a3);
  return result;
}

- (unsigned)_removeFalsePositiveLeakedVMregionsFromNodes:(unsigned int *)nodes nodeCount:(unsigned int)count recorder:(id)recorder
{
  recorderCopy = recorder;
  if (!count)
  {
    v32 = 0;
    goto LABEL_5;
  }

  v9 = getenv("DT_REPORT_IOKIT_REGION_LEAKS");
  if (v9)
  {
    v10 = ((*v9 - 89) & 0xDF) == 0;
  }

  else
  {
    v10 = 0;
  }

  blocksCount = self->_blocksCount;
  if (blocksCount)
  {
    v13 = 0;
    v14 = self->_blocks + 1;
    do
    {
      v15 = *v14;
      v14 += 2;
      if ((v15 & 7) == 3)
      {
        break;
      }

      ++v13;
    }

    while (blocksCount != v13);
  }

  v16 = 0;
  v33 = 0;
  v32 = 0;
  v17 = 0xFFFFFFFFLL;
  v28 = -1;
  v31 = recorderCopy;
  v30 = v10;
  do
  {
    v18 = nodes[v16];
    if (!v18 || !VMUGraphNodeType_IsVMRegion(*(&self->_blocks[v18] + 2) & 7))
    {
      goto LABEL_47;
    }

    v19 = *(&self->_regions->var0 + ((*(&self->_blocks[v18] + 1) >> 35) & 0x1FFFFFC0));
    v20 = v19;
    v21 = v19[26];
    if (v21 > 87)
    {
      if (v21 == 88 || v21 == 100)
      {
LABEL_20:
        if (v10)
        {
          if (v33)
          {
            v33 = 1;
          }

          else
          {
            v33 = 1;
            fwrite("The DT_REPORT_IOKIT_REGION_LEAKS env var is set so leaked IOKit, IOSurface, or IOAccelerator regions will be reported, if -vmalso is passed to 'leaks'\n", 0x97uLL, 1uLL, *MEMORY[0x1E69E9848]);
          }
        }

        else
        {
          recorderCopy[2](recorderCopy);
        }

LABEL_45:
        v18 = v17;
        goto LABEL_46;
      }
    }

    else if (v21)
    {
      if (v21 == 21)
      {
        goto LABEL_20;
      }
    }

    else if (*(v19 + 50) == 5)
    {
      goto LABEL_20;
    }

    if (v18 == 1)
    {
      goto LABEL_45;
    }

    v22 = (16 * (v18 - 1)) | 8;
    v29 = v18 - 1;
    v23 = v18 - 1;
    while (1)
    {
      if (!VMUGraphNodeType_IsVMRegion(*(&self->_blocks->var0 + v22) & 7))
      {
        nodes[v32] = v18;
        v18 = v17;
        ++v32;
        goto LABEL_50;
      }

      v24 = *(&self->_regions->var0 + ((*(&self->_blocks->var0 + v22) >> 35) & 0x1FFFFFC0));
      if (([v24 isSubmap] & 1) == 0)
      {
        break;
      }

LABEL_42:

      v22 -= 16;
      if (!--v23)
      {
        v18 = v17;
LABEL_50:
        recorderCopy = v31;
        v10 = v30;
        goto LABEL_46;
      }
    }

    v25 = *(v24 + 26);
    if (v25 != *(v20 + 26))
    {
      v25 = *(v20 + 26);
      goto LABEL_36;
    }

    if (*(v24 + 49) || *(v20 + 49))
    {
      goto LABEL_36;
    }

    if (v24[1] + v24[2] != *(v20 + 1) && ([v20 isJavascriptJitExecutableAllocator] & 1) == 0)
    {
      v25 = *(v20 + 26);
LABEL_36:
      if (v25 || *(v24 + 26) || v24[1] + v24[2] != *(v20 + 1) || ![*(v20 + 4) isEqualToString:VMUmappedFileLabel[0]] || !objc_msgSend(v24[4], "isEqualToString:", @"__LINKEDIT") || !objc_msgSend(*(v20 + 5), "isEqualToString:", v24[5]))
      {
        goto LABEL_42;
      }

      if (v17 == v29)
      {
        v27 = v28;
      }

      else
      {
        v27 = v23;
      }

      recorderCopy = v31;
      (v31[2])(v31, v27, self->_blocks[v27].var0, 1, v18, self->_blocks[v18].var0);
      v28 = v27;
LABEL_62:
      v10 = v30;
      goto LABEL_63;
    }

    if (v17 == v29)
    {
      v26 = v28;
    }

    else
    {
      v26 = v23;
    }

    recorderCopy = v31;
    (v31[2])(v31, v26, self->_blocks[v26].var0, 1, v18, self->_blocks[v18].var0);
    v28 = v26;
    if (!v32)
    {
      v32 = 0;
      goto LABEL_62;
    }

    v10 = v30;
    if (nodes[v32 - 1] >= v26)
    {
      nodes[v32++] = v18;
    }

LABEL_63:

LABEL_46:
    v17 = v18;
LABEL_47:
    ++v16;
  }

  while (v16 != count);
LABEL_5:

  return v32;
}

- (id)processSnapshotGraphWithOptions:(unint64_t)options
{
  v125 = *MEMORY[0x1E69E9840];
  v4 = [VMUProcessObjectGraph alloc];
  pid = self->_pid;
  blocksCount = self->_blocksCount;
  zoneNames = self->_zoneNames;
  classInfoIndexer = self->_classInfoIndexer;
  blocks = self->_blocks;
  regions = [(VMUVMRegionIdentifier *)self->_regionIdentifier regions];
  v11 = [(VMUProcessObjectGraph *)v4 initWithPid:pid nodes:blocks nodeCount:blocksCount zoneNames:zoneNames classInfoMap:classInfoIndexer regions:regions pthreadOffsets:0 userMarked:self->_userMarkedAbandoned autoreleasePoolOffsets:[(VMUObjectIdentifier *)self->_objectIdentifier autoreleasePoolPageLayout]];
  processObjectGraph = self->_processObjectGraph;
  self->_processObjectGraph = v11;

  [(VMUProcessObjectGraph *)self->_processObjectGraph setSnapshotMachTime:self->_suspendTime];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setSnapshotDate:self->_suspendDate];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setScanner:self];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setDebugTimer:self->_debugTimer];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setShowRawClassNames:self->_showRawClassNames];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setProcessDescriptionString:self->_processDescriptionString];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setIsTranslatedByRosetta:[(VMUKernelCoreMemoryScanner *)self isTranslatedByRosetta]];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setProcessName:self->_processName];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setBinaryImagesDescription:self->_binaryImagesDescription];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setPhysicalFootprint:self->_physicalFootprint];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setLedger:self->_ledger];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setPhysicalFootprintPeak:self->_physicalFootprintPeak];
  taskDyldSharedCacheRange = [(VMUTask *)self->_task taskDyldSharedCacheRange];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setDyldSharedCacheRange:taskDyldSharedCacheRange, v14];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setObjectContentLevel:[(VMUKernelCoreMemoryScanner *)self objectContentLevel]];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setObjectContentLevelForNodeLabels:[(VMUKernelCoreMemoryScanner *)self objectContentLevel]];
  [(VMUProcessObjectGraph *)self->_processObjectGraph setSrcAddressToExtraAutoreleaseCountDict:self->_srcAddressToExtraAutoreleaseCountDict];
  if ((self->_regionDescriptionOptions & 0x10000) != 0)
  {
    [(VMUProcessObjectGraph *)self->_processObjectGraph setShowsPhysFootprint:1];
  }

  v15 = [(VMUTask *)self->_task createSymbolicatorWithFlags:0 andNotification:0];
  v17 = v16;
  v82 = 0;
  v18 = 0;
  if (self->_targetProcessHasObjCPatches)
  {
    v18 = CSSymbolicatorCreateForTaskSharedCache();
    v82 = v19;
  }

  v123[0] = 0;
  v123[1] = v123;
  v123[2] = 0x3010000000;
  v123[5] = 0;
  v123[3] = &unk_1C6872315;
  v123[4] = 0;
  v122[0] = 0;
  v122[1] = v122;
  v122[2] = 0x3010000000;
  v122[5] = 0;
  v122[3] = &unk_1C6872315;
  v122[4] = 0;
  v120[0] = 0;
  v120[1] = v120;
  v120[2] = 0x2020000000;
  v121 = 0;
  debugTimer = self->_debugTimer;
  if (debugTimer)
  {
    signpostID = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->_debugTimer;
    if (signpostID)
    {
      logHandle = [(VMUDebugTimer *)debugTimer logHandle];
      signpostID2 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "processSnapshotGraph", "", buf, 2u);
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"processSnapshotGraph"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"sampling all threads"];
  v24 = self->_debugTimer;
  if (v24)
  {
    logHandle2 = [(VMUDebugTimer *)v24 logHandle];
    signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "processSnapshotGraph", "sampling all threads", buf, 2u);
    }
  }

  if ([(VMUTask *)self->_task isCore])
  {
    sampleAllThreadsOnce = 0;
    v81 = 0;
  }

  else
  {
    v28 = [[VMUSampler alloc] initWithTask:[(VMUTask *)self->_task taskPort] options:2305];
    sampleAllThreadsOnce = [(VMUSampler *)v28 sampleAllThreadsOnce];
    v81 = v28;
  }

  v29 = getenv("PreserveMemgraphSampleAndSymbolStore");
  if (v29 && ([MEMORY[0x1E696AEC0] stringWithUTF8String:v29], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "uppercaseString"), v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqualToString:", @"NO"), v31, v30, (v32 & 1) != 0))
  {
    v33 = 0;
  }

  else
  {
    [(VMUProcessObjectGraph *)self->_processObjectGraph setBacktraces:sampleAllThreadsOnce];
    v33 = [[VMUSymbolStore alloc] initWithSymbolicator:v15 debugTimer:v17, self->_debugTimer];
    [(VMUProcessObjectGraph *)self->_processObjectGraph setSymbolStore:v33];
    v34 = self->_processObjectGraph;
    symbolStore = [(VMUProcessObjectGraph *)v34 symbolStore];
    [symbolStore setGraph:v34];
  }

  if (sampleAllThreadsOnce)
  {
    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    v36 = sampleAllThreadsOnce;
    v37 = [v36 countByEnumeratingWithState:&v116 objects:v124 count:16];
    if (v37)
    {
      v38 = *v117;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v117 != v38)
          {
            objc_enumerationMutation(v36);
          }

          [(VMUSymbolStore *)v33 addBacktrace:*(*(&v116 + 1) + 8 * i) origin:0];
        }

        v37 = [v36 countByEnumeratingWithState:&v116 objects:v124 count:16];
      }

      while (v37);
    }
  }

  *buf = 0;
  v111 = buf;
  v112 = 0x3010000000;
  v115 = 0;
  v113 = &unk_1C6872315;
  v114 = 0;
  v109[0] = 0;
  v109[1] = v109;
  v109[2] = 0x3010000000;
  v109[4] = 0;
  v109[5] = 0;
  v109[3] = &unk_1C6872315;
  v107[0] = 0;
  v107[1] = v107;
  v107[2] = 0x3032000000;
  v107[3] = __Block_byref_object_copy__0;
  v107[4] = __Block_byref_object_dispose__0;
  v108 = 0;
  v105[0] = 0;
  v105[1] = v105;
  v105[2] = 0x2020000000;
  v106 = 0;
  if ((options & 2) != 0 && ([(VMUKernelCoreMemoryScanner *)self objectContentLevel]& 0xFFFFFFFE) == 2)
  {
    v40 = self->_debugTimer;
    if (v40)
    {
      signpostID4 = [(VMUDebugTimer *)v40 signpostID];
      v40 = self->_debugTimer;
      if (signpostID4)
      {
        logHandle3 = [(VMUDebugTimer *)v40 logHandle];
        signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
        {
          *v104 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID5, "processSnapshotGraph", "", v104, 2u);
        }

        v40 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v40 endEvent:"processSnapshotGraph"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"getting node labels"];
    v44 = self->_debugTimer;
    if (v44)
    {
      logHandle4 = [(VMUDebugTimer *)v44 logHandle];
      signpostID6 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
      {
        *v104 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID6, "processSnapshotGraph", "getting node labels", v104, 2u);
      }
    }

    v103[0] = MEMORY[0x1E69E9820];
    v103[1] = 3221225472;
    v103[2] = __62__VMUKernelCoreMemoryScanner_processSnapshotGraphWithOptions___block_invoke;
    v103[3] = &unk_1E8277BC0;
    v103[4] = self;
    [(VMUKernelCoreMemoryScanner *)self enumerateObjectsWithBlock:v103];
  }

  regionsCount = self->_regionsCount;
  if (regionsCount)
  {
    v48 = self->_debugTimer;
    if (v48)
    {
      signpostID7 = [(VMUDebugTimer *)v48 signpostID];
      v48 = self->_debugTimer;
      if (signpostID7)
      {
        logHandle5 = [(VMUDebugTimer *)v48 logHandle];
        signpostID8 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
        {
          *v104 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, signpostID8, "processSnapshotGraph", "", v104, 2u);
        }

        v48 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v48 endEvent:"processSnapshotGraph"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"scan nodes into the graph, while recording symbols of __DATA regions and stacks"];
    v52 = self->_debugTimer;
    if (v52)
    {
      logHandle6 = [(VMUDebugTimer *)v52 logHandle];
      signpostID9 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
      {
        *v104 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID9, "processSnapshotGraph", "scan nodes into the graph, while recording symbols of __DATA regions and stacks", v104, 2u);
      }
    }

    v55 = malloc_type_calloc(regionsCount, 4uLL, 0x100004052888210uLL);
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __62__VMUKernelCoreMemoryScanner_processSnapshotGraphWithOptions___block_invoke_170;
    v86[3] = &unk_1E8277E28;
    v97 = v55;
    optionsCopy = options;
    v99 = v18;
    v100 = v82;
    v101 = v15;
    v102 = v17;
    v86[4] = self;
    v90 = v123;
    v91 = v120;
    v92 = v122;
    v87 = v33;
    v93 = buf;
    v94 = v109;
    v95 = v107;
    v96 = v105;
    v88 = sampleAllThreadsOnce;
    v89 = v81;
    [(VMUKernelCoreMemoryScanner *)self scanNodesWithReferenceRecorder:v86];
    v56 = self->_debugTimer;
    if (v56)
    {
      signpostID10 = [(VMUDebugTimer *)v56 signpostID];
      v56 = self->_debugTimer;
      if (signpostID10)
      {
        logHandle7 = [(VMUDebugTimer *)v56 logHandle];
        signpostID11 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle7))
        {
          *v104 = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, signpostID11, "processSnapshotGraph", "", v104, 2u);
        }

        v56 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v56 endEvent:"processSnapshotGraph"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"processSnapshotGraph" message:"find unreferenced VM regions"];
    v60 = self->_debugTimer;
    if (v60)
    {
      logHandle8 = [(VMUDebugTimer *)v60 logHandle];
      signpostID12 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle8))
      {
        *v104 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID12, "processSnapshotGraph", "find unreferenced VM regions", v104, 2u);
      }
    }

    v63 = malloc_type_malloc(4 * regionsCount, 0x100004052888210uLL);
    v64 = v63;
    v65 = self->_blocksCount;
    if (v65)
    {
      v66 = 0;
      v67 = 0;
      v68 = self->_blocks + 1;
      do
      {
        v70 = *v68;
        v68 += 2;
        v69 = v70;
        if ((v70 & 7) == 5 && !*&v55[(v69 >> 39) & 0x1FFFFFC])
        {
          *(v63 + v67) = v66;
          v67 = (v67 + 1);
          v65 = self->_blocksCount;
        }

        ++v66;
      }

      while (v66 < v65);
      if (v67)
      {
        v85[0] = MEMORY[0x1E69E9820];
        v85[1] = 3221225472;
        v85[2] = __62__VMUKernelCoreMemoryScanner_processSnapshotGraphWithOptions___block_invoke_187;
        v85[3] = &unk_1E8277C60;
        v85[4] = self;
        [(VMUKernelCoreMemoryScanner *)self _removeFalsePositiveLeakedVMregionsFromNodes:v63 nodeCount:v67 recorder:v85];
      }
    }

    free(v64);
    free(v55);
  }

  CSRelease();
  [(VMUKernelCoreMemoryScanner *)self unmapAllRegions];
  v71 = self->_debugTimer;
  if (v71)
  {
    signpostID13 = [(VMUDebugTimer *)v71 signpostID];
    v71 = self->_debugTimer;
    if (signpostID13)
    {
      logHandle9 = [(VMUDebugTimer *)v71 logHandle];
      signpostID14 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle9))
      {
        *v104 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, signpostID14, "processSnapshotGraph", "", v104, 2u);
      }

      v71 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v71 endEvent:"processSnapshotGraph"];
  if (options)
  {
    v75 = [VMUGraphStackLogReader alloc];
    LODWORD(v80) = self->_zonesCount;
    v76 = [(VMUGraphStackLogReader *)v75 initWithCore:self->_memoryCache symbolicator:v15 graph:v17 debugTimer:self->_processObjectGraph zones:self->_debugTimer zonesCount:self->_zones, v80];
    if (v76)
    {
      [(VMUProcessObjectGraph *)self->_processObjectGraph setStackLogReader:v76];
      v77 = self->_classInfoIndexer;
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __62__VMUKernelCoreMemoryScanner_processSnapshotGraphWithOptions___block_invoke_189;
      v84[3] = &unk_1E8277A38;
      v84[4] = self;
      [(VMUStackLogReaderBase *)v76 identifyNonObjectsUsingStackBacktraces:self classInfoMap:v77 classInfoSetterBlock:v84];
      [(VMUKernelCoreMemoryScanner *)self _updateLinearClassInfos];
    }
  }

  [(VMUProcessObjectGraph *)self->_processObjectGraph setIdleExitStatus:self->_idleExitStatus];
  CSRelease();
  v78 = self->_processObjectGraph;
  _Block_object_dispose(v105, 8);
  _Block_object_dispose(v107, 8);

  _Block_object_dispose(v109, 8);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(v120, 8);
  _Block_object_dispose(v122, 8);
  _Block_object_dispose(v123, 8);

  return v78;
}

void __62__VMUKernelCoreMemoryScanner_processSnapshotGraphWithOptions___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) >> 60 == 1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [*(a1 + 32) labelForNode:a2];
    if (v7)
    {
      [*(*(a1 + 32) + 480) setLabel:v7 forNode:a2];
    }

    objc_autoreleasePoolPop(v6);
  }
}

void __62__VMUKernelCoreMemoryScanner_processSnapshotGraphWithOptions___block_invoke_170(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a2;
  if ([*(*(a1 + 32) + 480) addEdgeFromNode:a2 sourceOffset:a3 - *(*(*(a1 + 32) + 96) + 16 * a2) withScanType:a4 toNode:a5 destinationOffset:a6 - *(*(*(a1 + 32) + 96) + 16 * a5)] != -1)
  {
    if (v8 != a5 && (*(*(*(a1 + 32) + 96) + 16 * a5 + 8) & 7) == 5)
    {
      v10 = *(*(*(a1 + 32) + 96) + 16 * a5 + 8);
      ++*(*(a1 + 120) + ((v10 >> 39) & 0x1FFFFFC));
    }

    if ((*(a1 + 128) & 4) != 0)
    {
      v11 = v8;
      if (VMUGraphNodeType_IsVMRegion(*(*(*(a1 + 32) + 96) + 16 * v8 + 8) & 7))
      {
        v12 = objc_autoreleasePoolPush();
        v13 = *(*(*(a1 + 32) + 112) + ((*(*(*(a1 + 32) + 96) + 16 * v11 + 8) >> 35) & 0x1FFFFFC0));
        v14 = v13;
        if ((*(v13 + 132) & 2) != 0)
        {
          if ((*(v13 + 132) & 4) == 0)
          {
            goto LABEL_17;
          }
        }

        else if ((*(v13 + 132) & 4) == 0)
        {
          if (*(v13 + 26) != 30 || a3 - *(*(*(a1 + 88) + 8) + 32) < *(*(*(a1 + 88) + 8) + 40))
          {
            goto LABEL_32;
          }

          if (a3 - *(*(*(a1 + 96) + 8) + 32) >= *(*(*(a1 + 96) + 8) + 40))
          {
            v15 = [*(*(a1 + 32) + 152) indexForLocation:a3];
            if (v15 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v16 = *(*(a1 + 96) + 8);
              *(v16 + 32) = 0;
              *(v16 + 40) = 0;
              v17 = *(*(a1 + 104) + 8);
              v18 = *(v17 + 40);
              *(v17 + 40) = 0;

              *(*(*(a1 + 112) + 8) + 24) = 0;
            }

            else
            {
              v33 = v15;
              v34 = [*(*(a1 + 32) + 152) rangeAtIndex:v15];
              v35 = *(*(a1 + 96) + 8);
              *(v35 + 32) = v34;
              *(v35 + 40) = v36;
              if ([*(a1 + 48) count])
              {
                v37 = 0;
                v38 = 0;
                while (1)
                {
                  v39 = [*(a1 + 48) objectAtIndexedSubscript:v37];
                  if ([v39 backtraceLength])
                  {
                    if ([v39 backtraceLength])
                    {
                      v40 = 0;
                      while (!*([v39 stackFramePointers] + 8 * v40))
                      {
                        if (++v40 >= [v39 backtraceLength])
                        {
                          goto LABEL_42;
                        }
                      }

                      v41 = *([v39 stackFramePointers] + 8 * v40);
                    }

                    else
                    {
LABEL_42:
                      v41 = 0;
                    }

                    if ((v41 - *(*(*(a1 + 96) + 8) + 32)) < *(*(*(a1 + 96) + 8) + 40))
                    {
                      break;
                    }
                  }

                  v37 = ++v38;
                  if ([*(a1 + 48) count] <= v38)
                  {
                    goto LABEL_48;
                  }
                }

                v42 = *(*(a1 + 104) + 8);
                v43 = *(v42 + 40);
                *(v42 + 40) = v39;
              }

LABEL_48:
              if (*(*(*(a1 + 104) + 8) + 40))
              {
                *(*(*(a1 + 112) + 8) + 24) = 0;
                v44 = [*(a1 + 56) threadDescriptionStringForBacktrace:*(*(*(a1 + 104) + 8) + 40) returnedAddress:0];
                [*(*(a1 + 32) + 480) setThreadName:v44 forRange:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
                [*(*(a1 + 32) + 480) setThreadName:v44 forRange:{v33, 1}];
              }

              else
              {
                if ([*(*(a1 + 32) + 8) isCore])
                {
                  v45 = &stru_1F461F9C8;
                }

                else
                {
                  v45 = [*(a1 + 56) threadDescriptionStringForBacktrace:*(*(*(a1 + 104) + 8) + 40) returnedAddress:0];
                }

                v46 = [(__CFString *)v45 stringByAppendingString:@"  no associated pthread"];

                [*(*(a1 + 32) + 480) setThreadName:v46 forRange:{*(*(*(a1 + 96) + 8) + 32), *(*(*(a1 + 96) + 8) + 40)}];
                [*(*(a1 + 32) + 480) setThreadName:v46 forRange:{v33, 1}];
              }
            }
          }

          v47 = *(*(*(a1 + 104) + 8) + 40);
          if (!v47)
          {
            goto LABEL_32;
          }

          v48 = [v47 backtraceLength];
          if (*(*(*(a1 + 112) + 8) + 24) >= v48)
          {
            goto LABEL_32;
          }

          v49 = v48;
          while (1)
          {
            v50 = *([*(*(*(a1 + 104) + 8) + 40) stackFramePointers] + 8 * *(*(*(a1 + 112) + 8) + 24));
            v51 = [*(*(*(a1 + 104) + 8) + 40) backtrace];
            v52 = *(*(a1 + 112) + 8);
            v53 = *(v52 + 24);
            if (v50 > a3)
            {
              break;
            }

            *(v52 + 24) = v53 + 1;
            if (*(*(*(a1 + 112) + 8) + 24) >= v49)
            {
              goto LABEL_32;
            }
          }

          v54 = *(v51 + 8 * v53);
          v55 = *(*(a1 + 88) + 8);
          *(v55 + 32) = a3;
          *(v55 + 40) = v50 - a3;
          CSSymbolicatorGetSymbolWithAddressAtTime();
          CSSymbolGetSymbolOwner();
          Name = CSSymbolOwnerGetName();
          if (CSSymbolIsUnnamed())
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%#llx (in %s)", v54, Name];
          }

          else
          {
            [MEMORY[0x1E696AEC0] stringWithFormat:@"%s (in %s)", CSSymbolGetName(), Name];
          }
          v27 = ;
          if (!v27)
          {
            goto LABEL_32;
          }

          v31 = *(*(a1 + 32) + 480);
          v32 = *(a1 + 88);
          goto LABEL_31;
        }

        CSIsNull();
LABEL_17:
        if (a3 - *(*(*(a1 + 64) + 8) + 32) >= *(*(*(a1 + 64) + 8) + 40))
        {
          CSSymbolicatorGetSectionWithAddressAtTime();
          v19 = CSRegionGetName();
          if (v19)
          {
            v20 = v19;
            v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v19];
            Range = CSRegionGetRange();
            v23 = *(*(a1 + 64) + 8);
            *(v23 + 32) = Range;
            *(v23 + 40) = v24;
            [*(*(a1 + 32) + 480) setBinarySectionName:v21 forRange:{*(*(*(a1 + 64) + 8) + 32), *(*(*(a1 + 64) + 8) + 40)}];
            v25 = !strncmp(v20, "__DATA __objc_", 0xEuLL) || !strncmp(v20, "__AUTH __objc_", 0xEuLL) || !strncmp(v20, "__DATA_DIRTY __objc_", 0x14uLL) || !strncmp(v20, "__DATA_CONST __objc_", 0x14uLL) || !strncmp(v20, "__AUTH_CONST __objc_", 0x14uLL) || strncmp(v20, "__OBJC ", 7uLL) == 0;
            *(*(*(a1 + 72) + 8) + 24) = v25;
          }
        }

        if (*(*(*(a1 + 72) + 8) + 24))
        {
          goto LABEL_32;
        }

        if (a3 - *(*(*(a1 + 80) + 8) + 32) < *(*(*(a1 + 80) + 8) + 40))
        {
          goto LABEL_32;
        }

        [*(a1 + 40) addAddress:a3 origin:2];
        CSSymbolicatorGetSymbolWithAddressAtTime();
        v26 = CSSymbolGetName();
        if (!v26)
        {
          goto LABEL_32;
        }

        v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v26];
        v28 = CSSymbolGetRange();
        v29 = *(*(a1 + 80) + 8);
        *(v29 + 32) = v28;
        *(v29 + 40) = v30;
        v31 = *(*(a1 + 32) + 480);
        v32 = *(a1 + 80);
LABEL_31:
        [v31 setRegionSymbolName:v27 forRange:{*(*(v32 + 8) + 32), *(*(v32 + 8) + 40)}];

LABEL_32:

        objc_autoreleasePoolPop(v12);
      }
    }
  }
}

uint64_t __62__VMUKernelCoreMemoryScanner_processSnapshotGraphWithOptions___block_invoke_189(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = *(*(result + 32) + 96) + 16 * a2;
  *(v3 + 8) = *(v3 + 8) & 0x1FFFFFFFFFFLL | (a3 << 41);
  return result;
}

- (BOOL)hasClassInfosDerivedFromStackBacktraces
{
  realizedClasses = [(VMUKernelCoreMemoryScanner *)self realizedClasses];
  hasClassInfosDerivedFromStackBacktraces = [realizedClasses hasClassInfosDerivedFromStackBacktraces];

  return hasClassInfosDerivedFromStackBacktraces;
}

- ($61A80719B04F7407D3E47539F1B23CAA)nodeDetails:(VMUKernelCoreMemoryScanner *)self
{
  v3 = v2;
  if (self->_blocksCount <= v1)
  {
    *v2 = 0;
    v2[1] = 0;
    v2[2] = 0;
  }

  else
  {
    v4 = v1;
    *v2 = 0;
    v2[1] = 0;
    selfCopy = self;
    v6 = &selfCopy->_blocks[v4];
    v7 = *(v6 + 1);
    if ((v7 & 7) == 1)
    {
      classInfosCount = selfCopy->_classInfosCount;
      *v3 = v6->var0;
      v3[1] = (v7 >> 5) & 0xFFFFFFFFFLL | 0x1000000000000000;
      if (classInfosCount <= v7 >> 41)
      {
        v9 = 0;
      }

      else
      {
        v9 = selfCopy->_classInfos[v7 >> 41];
      }
    }

    else
    {
      v9 = 0;
      *v3 = v6->var0;
      v3[1] = ((v7 >> 5) | (v7 << 60)) & 0x7000000FFFFFFFFFLL;
    }

    v3[2] = v9;
  }

  return self;
}

- (id)vmuVMRegionForAddress:(unint64_t)address
{
  v4 = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v8 = var7 - var6;
  v9 = var7 < var6;
  if (address - var6 >= v8 || v9)
  {
    goto LABEL_23;
  }

  v11 = address >> *MEMORY[0x1E69E9AC0];
  if (v11)
  {
    var3 = regionMap->var3;
    v15 = *var3;
    v13 = var3 + 1;
    v14 = v15;
    v16 = address >> *MEMORY[0x1E69E9AC0];
    do
    {
      v17 = v16 & 0x3FFFFFF;
      if (v14 <= v17 || ((*(v13 + (v17 >> 3)) >> (v16 & 7)) & 1) == 0)
      {
LABEL_22:
        v4 = 0;
        goto LABEL_23;
      }

      v16 >>= 26;
    }

    while (v16);
  }

  v18 = v11 & 0x7FFFF;
  var8 = regionMap->var8;
  v20 = regionMap->var8[v11 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v20)
  {
    v22 = &var4->var0 + 8 * (v20 - 1);
    if (address - *(*v22 + 1) < *(*v22 + 2))
    {
      goto LABEL_10;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_22;
  }

  v24 = regionMap->var4;
  while (1)
  {
    v25 = var5 >> 1;
    v22 = &v24->var0 + 8 * (var5 >> 1);
    if (*(*v22 + 1) <= address)
    {
      break;
    }

LABEL_16:
    v26 = var5 >= 2;
    var5 = v25;
    if (!v26)
    {
      goto LABEL_22;
    }
  }

  if (*(*v22 + 2) + *(*v22 + 1) <= address)
  {
    v24 = (v22 + 8);
    v25 = --var5 >> 1;
    goto LABEL_16;
  }

  isSpecialPhysFootprintRegion = [*v22 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v28 = 0;
  }

  else
  {
    v28 = v22;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_22;
  }

  if ((*(*v28 + 132) & 1) == 0)
  {
    goto LABEL_39;
  }

  v30 = v28 + 8;
  v31 = regionMap->var5 - (((v28 + 8) - regionMap->var4) >> 6);
  if (!v31)
  {
    goto LABEL_36;
  }

  while (2)
  {
    v32 = v31 >> 1;
    v33 = &v30[8 * (v31 >> 1)];
    if (*(*v33 + 1) > address)
    {
LABEL_31:
      v34 = v31 > 1;
      v31 = v32;
      if (!v34)
      {
        v31 = 0;
        goto LABEL_36;
      }

      continue;
    }

    break;
  }

  if (*(*v33 + 2) + *(*v33 + 1) <= address)
  {
    v30 = v33 + 8;
    v32 = --v31 >> 1;
    goto LABEL_31;
  }

  if ([*v33 isSpecialPhysFootprintRegion])
  {
    v31 = 0;
  }

  else
  {
    v31 = v33;
  }

LABEL_36:
  if (v31)
  {
    v28 = v31;
  }

  v22 = v28;
LABEL_39:
  var8[v18] = ((v28 - var4) >> 6) + 1;
LABEL_10:
  v4 = *v22;
LABEL_23:

  return v4;
}

- (id)vmuVMRegionForNode:(unsigned int)node
{
  if ([(VMUKernelCoreMemoryScanner *)self nodeNamespaceSize]<= node)
  {
    v4 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    objc_msgSend_nodeDetails_(self);
    v4 = [(VMUKernelCoreMemoryScanner *)self vmuVMRegionForAddress:v6];
  }

  return v4;
}

- (id)zoneNameForNode:(unsigned int)node
{
  if (self->_blocksCount <= node)
  {
    v9 = 0;

    return v9;
  }

  nodeCopy = node;
  if (VMUGraphNodeType_IsVMRegion(*(&self->_blocks[node] + 2) & 7))
  {
    v6 = &self->_regions->var0 + 8 * (*(&self->_blocks[nodeCopy] + 1) >> 41);
    if (!v6)
    {
      goto LABEL_46;
    }

    goto LABEL_4;
  }

  v11 = &self->_blocks[nodeCopy];
  if ((*(v11 + 1) & 7) != 1)
  {
    goto LABEL_46;
  }

  v9 = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v15 = var7 >= var6;
  v16 = var7 - var6;
  if (!v15)
  {
    goto LABEL_47;
  }

  var0 = v11->var0;
  if (v11->var0 - var6 >= v16)
  {
    goto LABEL_47;
  }

  v18 = var0 >> *MEMORY[0x1E69E9AC0];
  if (v18)
  {
    var3 = regionMap->var3;
    v22 = *var3;
    v20 = var3 + 1;
    v21 = v22;
    v23 = var0 >> *MEMORY[0x1E69E9AC0];
    do
    {
      v24 = v23 & 0x3FFFFFF;
      if (v21 <= v24 || ((*(v20 + (v24 >> 3)) >> (v23 & 7)) & 1) == 0)
      {
        goto LABEL_46;
      }

      v23 >>= 26;
    }

    while (v23);
  }

  v25 = v18 & 0x7FFFF;
  var8 = regionMap->var8;
  v27 = regionMap->var8[v18 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v27)
  {
    v7 = *(&var4->var0 + 8 * (v27 - 1));
    if (var0 - *(v7 + 1) < *(v7 + 2))
    {
      goto LABEL_5;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_46;
  }

  v30 = regionMap->var4;
  while (1)
  {
    v31 = var5 >> 1;
    v6 = &v30->var0 + 8 * (var5 >> 1);
    if (*(*v6 + 1) <= var0)
    {
      break;
    }

LABEL_26:
    v9 = 0;
    v15 = var5 >= 2;
    var5 = v31;
    if (!v15)
    {
      goto LABEL_47;
    }
  }

  if (*(*v6 + 2) + *(*v6 + 1) <= var0)
  {
    v30 = (v6 + 8);
    v31 = --var5 >> 1;
    goto LABEL_26;
  }

  isSpecialPhysFootprintRegion = [*v6 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v33 = 0;
  }

  else
  {
    v33 = v6;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_46;
  }

  if ((*(*v33 + 132) & 1) == 0)
  {
    goto LABEL_45;
  }

  v34 = v33 + 8;
  v35 = regionMap->var5 - (((v33 + 8) - regionMap->var4) >> 6);
  if (!v35)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v36 = v35 >> 1;
    v37 = &v34[8 * (v35 >> 1)];
    if (*(*v37 + 1) > var0)
    {
LABEL_37:
      v38 = v35 > 1;
      v35 = v36;
      if (!v38)
      {
        v35 = 0;
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (*(*v37 + 2) + *(*v37 + 1) <= var0)
  {
    v34 = v37 + 8;
    v36 = --v35 >> 1;
    goto LABEL_37;
  }

  if ([*v37 isSpecialPhysFootprintRegion])
  {
    v35 = 0;
  }

  else
  {
    v35 = v37;
  }

LABEL_42:
  if (v35)
  {
    v6 = v35;
  }

  else
  {
    v6 = v33;
  }

LABEL_45:
  var8[v25] = ((v6 - var4) >> 6) + 1;
  if (!v6)
  {
LABEL_46:
    v9 = 0;
    goto LABEL_47;
  }

LABEL_4:
  v7 = *v6;
LABEL_5:
  v8 = *(v7 + 37);
  if (self->_zonesCount <= v8)
  {
    goto LABEL_46;
  }

  v9 = [self->_zones[v8].var1 copy];
LABEL_47:

  return v9;
}

- (id)zoneNameForIndex:(unsigned int)index
{
  if (self->_zonesCount <= index)
  {
    return 0;
  }

  else
  {
    return self->_zones[index].var1;
  }
}

- (id)labelForNode:(unsigned int)node
{
  if (self->_blocksCount > node && (v3 = *&node, v5 = &self->_blocks[node], (*(v5 + 1) & 7) == 1))
  {
    v6 = *(v5 + 1) >> 41;
    if (v6 && self->_classInfosCount > v6)
    {
      v7 = self->_classInfos[v6];
    }

    else
    {
      v7 = 0;
    }

    v8 = [(VMUObjectIdentifier *)self->_objectIdentifier labelForMemory:[(VMUKernelCoreMemoryScanner *)self contentForNode:v3] length:(*(v5 + 1) >> 5) & 0xFFFFFFFFFLL remoteAddress:v5->var0 classInfo:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)shortLabelForNode:(unsigned int)node
{
  v3 = [(VMUKernelCoreMemoryScanner *)self labelForNode:*&node];
  if (v3)
  {
    v4 = v3;
    v5 = shortenString(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)contentForNode:(unsigned int)node
{
  if (self->_blocksCount <= node)
  {
    return 0;
  }

  v92[2] = v6;
  v92[3] = v5;
  v92[14] = v3;
  v92[15] = v4;
  result = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v12 = var7 >= var6;
  v13 = var7 - var6;
  if (v12)
  {
    var0 = self->_blocks[node].var0;
    if (var0 - var6 < v13)
    {
      v16 = MEMORY[0x1E69E9AC0];
      v17 = var0 >> *MEMORY[0x1E69E9AC0];
      if (v17)
      {
        var3 = regionMap->var3;
        v21 = *var3;
        v19 = var3 + 1;
        v20 = v21;
        v22 = var0 >> *MEMORY[0x1E69E9AC0];
        do
        {
          v23 = v22 & 0x3FFFFFF;
          if (v20 <= v23 || ((*(v19 + (v23 >> 3)) >> (v22 & 7)) & 1) == 0)
          {
            return 0;
          }

          v22 >>= 26;
        }

        while (v22);
      }

      v24 = v17 & 0x7FFFF;
      v25 = regionMap->var8[v17 & 0x7FFFF];
      var4 = regionMap->var4;
      if (v25)
      {
        v27 = var4 + 64 * (v25 - 1);
        if (var0 - *(*v27 + 8) < *(*v27 + 16))
        {
          goto LABEL_12;
        }
      }

      var5 = regionMap->var5;
      if (var5)
      {
        v49 = regionMap->var4;
        do
        {
          v50 = var5 >> 1;
          v27 = v49 + 64 * (var5 >> 1);
          if (*(*v27 + 8) <= var0)
          {
            if (*(*v27 + 16) + *(*v27 + 8) > var0)
            {
              isSpecialPhysFootprintRegion = [*v27 isSpecialPhysFootprintRegion];
              if (isSpecialPhysFootprintRegion)
              {
                v57 = 0;
              }

              else
              {
                v57 = v27;
              }

              if (isSpecialPhysFootprintRegion)
              {
                return 0;
              }

              if ((*(*v57 + 132) & 1) == 0)
              {
                goto LABEL_77;
              }

              v58 = (v57 + 64);
              v59 = regionMap->var5 - ((v57 + 64 - regionMap->var4) >> 6);
              if (!v59)
              {
                goto LABEL_74;
              }

              while (1)
              {
                v60 = v59 >> 1;
                v61 = &v58[8 * (v59 >> 1)];
                if (*(*v61 + 1) <= var0)
                {
                  if (*(*v61 + 2) + *(*v61 + 1) > var0)
                  {
                    v82 = v57;
                    isSpecialPhysFootprintRegion2 = [*v61 isSpecialPhysFootprintRegion];
                    v57 = v82;
                    if (isSpecialPhysFootprintRegion2)
                    {
                      v59 = 0;
                    }

                    else
                    {
                      v59 = v61;
                    }

LABEL_74:
                    if (v59)
                    {
                      v57 = v59;
                    }

                    v27 = v57;
LABEL_77:
                    regionMap->var8[v24] = ((v57 - var4) >> 6) + 1;
LABEL_12:
                    nodeCopy = node;
                    v29 = &self->_blocks[node];
                    v30 = ((*(v29 + 1) >> 5) & 0xFFFFFFFFFLL) + v29->var0;
                    if (*(*v27 + 16) + *(*v27 + 8) >= v30)
                    {
                      memoryCache = self->_memoryCache;
                      regions = self->_regions;
                      regionsCount = self->_regionsCount;
                      v47 = self->_task;
                      v54 = memoryCache;
                      v35 = v54;
                      if (!*(v27 + 6))
                      {
                        if ((*(*v27 + 132) & 2) == 0)
                        {
                          [(VMUTaskMemoryCache *)v54 taskIsTranslated];
                        }

                        aBlock[0] = 0;
                        v92[0] = 0;
                        v69 = [(VMUTaskMemoryCache *)v35 mapAddress:*(*v27 + 8) size:*(*v27 + 16) returnedAddress:aBlock returnedSize:v92];
                        if (v69)
                        {
                          if ((*(*v27 + 52) & 3u) - 1 >= 2)
                          {
                            v70 = v69;
                            v71 = task_exists(v47);
                            if (v27 != regions + 64 * (regionsCount - 1) && v71)
                            {
                              v86 = *MEMORY[0x1E69E9848];
                              address = [*v27 address];
                              v72 = *(*v27 + 24);
                              v73 = (&vm_prot_strings_0)[v72];
                              v74 = *(*v27 + 16) + *(*v27 + 8);
                              VMURegionTypeDescriptionForTagShareProtAndPager(*(*v27 + 104), *(*v27 + 50), v72, *(*v27 + 49));
                              v76 = v75 = v47;
                              uTF8String = [v76 UTF8String];
                              v78 = *(*v27 + 16) >> *v16;
                              v79 = "pages";
                              if (v78 == 1)
                              {
                                v79 = "page";
                              }

                              if (*(v27 + 3) == *(v27 + 4))
                              {
                                v80 = "";
                              }

                              else
                              {
                                v80 = " [root]";
                              }

                              fprintf(v86, "Failed to map remote region: [%#llx-%#llx] %s %s (%llu %s)%s (error: %d)\n", address, v74, v73, uTF8String, v78, v79, v80, v70);

                              v47 = v75;
                            }
                          }
                        }

                        else
                        {
                          v81 = aBlock[0];
                          *(v27 + 5) = *(v27 + 5) & 1 | (2 * v92[0]);
                          *(v27 + 6) = v81;
                          *(v27 + 7) = v27;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v31) = 1;
                      do
                      {
                        v32 = (*&v27[64 * v31] + 8);
                        v31 = (v31 + 1);
                      }

                      while (v32[1] + *v32 < v30);
                      v33 = self->_memoryCache;
                      v85 = self->_task;
                      v34 = v33;
                      v35 = v34;
                      v36 = 0;
                      if (v31)
                      {
                        v37 = v31;
                        v38 = v27;
                        do
                        {
                          v39 = *v38;
                          v38 += 8;
                          v36 += *(v39 + 16);
                          --v37;
                        }

                        while (v37);
                      }

                      v92[0] = 0;
                      v87 = 0;
                      v40 = [(VMUTaskMemoryCache *)v34 findMappedAddress:*(*v27 + 8) size:v36];
                      if (v40)
                      {
                        var1 = v40->var1;
                        v42 = *(*v27 + 8) - v40->var0;
                        v92[0] = v40->var2 + v42;
                        v87 = var1 - v42;
                        goto LABEL_20;
                      }

                      if (v31)
                      {
                        v63 = v31;
                        v64 = v27;
                        do
                        {
                          v65 = v35;
                          v66 = v65;
                          if (v64[6])
                          {
                            if (v64 == v64[7])
                            {
                              aBlock[0] = MEMORY[0x1E69E9820];
                              aBlock[1] = 3221225472;
                              aBlock[2] = ___unmapRegion_block_invoke_0;
                              aBlock[3] = &unk_1E8277E50;
                              v89 = v65;
                              v90 = v64;
                              v91 = v27;
                              v68 = _Block_copy(aBlock);
                              v68[2]();
                            }

                            else
                            {
                              v67 = v64[5] & 1;
                              v64[6] = 0;
                              v64[7] = 0;
                              v64[5] = v67;
                            }
                          }

                          v64 += 8;
                          --v63;
                        }

                        while (v63);
                      }

                      if ([(VMUTaskMemoryCache *)v35 mapAddress:*(*v27 + 8) size:v36 returnedAddress:v92 returnedSize:&v87])
                      {
                        if (task_exists(v85))
                        {
                          fprintf(*MEMORY[0x1E69E9848], "Failed to map remote region at [%#llx-%#llx]\n", *(*v27 + 8), *(*v27 + 8) + v36);
                        }
                      }

                      else
                      {
LABEL_20:
                        if (v31)
                        {
                          v43 = v87;
                          v44 = (v27 + 40);
                          do
                          {
                            v44[2] = v27;
                            *v44 = *v44 & 1 | (2 * v43);
                            v45 = v92[0];
                            v44[1] = v92[0];
                            v46 = *(v44 - 5) + 8;
                            v92[0] = *(*(v44 - 5) + 16) + v45;
                            v43 = v87 - *(v46 + 8);
                            v87 = v43;
                            v44 += 8;
                            --v31;
                          }

                          while (v31);
                        }
                      }

                      v47 = v85;
                    }

                    v55 = *(v27 + 6);
                    if (v55)
                    {
                      return (v55 + self->_blocks[nodeCopy].var0 - *(*v27 + 8));
                    }

                    return 0;
                  }

                  v58 = v61 + 8;
                  v60 = --v59 >> 1;
                }

                v62 = v59 > 1;
                v59 = v60;
                if (!v62)
                {
                  v59 = 0;
                  goto LABEL_74;
                }
              }
            }

            v49 = (v27 + 64);
            v50 = --var5 >> 1;
          }

          v12 = var5 >= 2;
          var5 = v50;
        }

        while (v12);
      }

      return 0;
    }
  }

  return result;
}

- (unsigned)mallocNodeCount
{
  blocksCount = self->_blocksCount;
  if (!blocksCount)
  {
    return 0;
  }

  result = 0;
  v5 = self->_blocks + 1;
  do
  {
    v6 = *v5;
    v5 += 2;
    if ((v6 & 7) == 1)
    {
      ++result;
    }

    --blocksCount;
  }

  while (blocksCount);
  return result;
}

- (id)classInfoForObjectAtAddress:(unint64_t)address
{
  0xFFFFFFFFFLL = 0;
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v8 = var7 - var6;
  v9 = var7 < var6;
  if (address - var6 >= v8 || v9)
  {
    goto LABEL_63;
  }

  v11 = MEMORY[0x1E69E9AC0];
  v12 = address >> *MEMORY[0x1E69E9AC0];
  if (v12)
  {
    var3 = regionMap->var3;
    v16 = *var3;
    v14 = var3 + 1;
    v15 = v16;
    v17 = address >> *MEMORY[0x1E69E9AC0];
    do
    {
      v18 = v17 & 0x3FFFFFF;
      if (v15 <= v18 || ((*(v14 + (v18 >> 3)) >> (v17 & 7)) & 1) == 0)
      {
        goto LABEL_62;
      }

      v17 >>= 26;
    }

    while (v17);
  }

  v19 = v12 & 0x7FFFF;
  v20 = regionMap->var8[v12 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v20)
  {
    v22 = var4 + 64 * (v20 - 1);
    if (address - *(*v22 + 8) < *(*v22 + 16))
    {
      goto LABEL_10;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_62;
  }

  v41 = regionMap->var4;
  while (1)
  {
    v42 = var5 >> 1;
    v22 = v41 + 64 * (var5 >> 1);
    if (*(*v22 + 8) <= address)
    {
      break;
    }

LABEL_33:
    v38 = var5 >= 2;
    var5 = v42;
    if (!v38)
    {
      goto LABEL_62;
    }
  }

  if (*(*v22 + 16) + *(*v22 + 8) <= address)
  {
    v41 = (v22 + 64);
    v42 = --var5 >> 1;
    goto LABEL_33;
  }

  isSpecialPhysFootprintRegion = [*v22 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v44 = 0;
  }

  else
  {
    v44 = v22;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_62;
  }

  if ((*(*v44 + 132) & 1) == 0)
  {
    goto LABEL_52;
  }

  v45 = (v44 + 64);
  v46 = regionMap->var5 - ((v44 + 64 - regionMap->var4) >> 6);
  if (!v46)
  {
    goto LABEL_49;
  }

  while (2)
  {
    v47 = v46 >> 1;
    v48 = &v45[8 * (v46 >> 1)];
    if (*(*v48 + 1) > address)
    {
LABEL_44:
      v49 = v46 > 1;
      v46 = v47;
      if (!v49)
      {
        v46 = 0;
        goto LABEL_49;
      }

      continue;
    }

    break;
  }

  if (*(*v48 + 2) + *(*v48 + 1) <= address)
  {
    v45 = v48 + 8;
    v47 = --v46 >> 1;
    goto LABEL_44;
  }

  if ([*v48 isSpecialPhysFootprintRegion])
  {
    v46 = 0;
  }

  else
  {
    v46 = v48;
  }

LABEL_49:
  if (v46)
  {
    v44 = v46;
  }

  v22 = v44;
LABEL_52:
  regionMap->var8[v19] = ((v44 - var4) >> 6) + 1;
LABEL_10:
  v23 = *(v22 + 5);
  if (!v23)
  {
    goto LABEL_62;
  }

  v24 = *(v22 + 1);
  var0 = regionMap->var0;
  v26 = *(v22 + 4);
  v27 = &regionMap->var0[v26];
  if (v24)
  {
    if (v27->var0 <= address)
    {
      v28 = &var0[v23 - 1 + v26];
      if (((*(v28 + 1) >> 5) & 0xFFFFFFFFFLL) + v28->var0 > address)
      {
        v29 = (v24 + 4 * ((address - (v27->var0 & -*MEMORY[0x1E69E9AC8])) >> *v11));
        v30 = *v29;
        p_var0 = &var0[v30].var0;
        if (*p_var0 <= address)
        {
          v32 = v29[1];
          if (v32 < regionMap->var1 && (v33 = &var0[v32].var0, v34 = *v33, *v33 <= address))
          {
            v37 = v33[1];
LABEL_54:
            if ((v37 & 7) - 2 >= 3)
            {
              v50 = address - v34;
              var2 = regionMap->var2;
              if (v50 < var2 || ((v37 >> 5) & 0xFFFFFFFFFLL) - v50 <= var2)
              {
                v52 = v33 - var0;
                if (self->_blocksCount > (v52 >> 4))
                {
                  blocks = self->_blocks;
                  v54 = *(&blocks[(v52 >> 4)] + 1);
                  if ((v54 & 7) == 1)
                  {
                    v55 = v54 >> 41;
                    if (v54 >> 41 && self->_classInfosCount > v55)
                    {
                      0xFFFFFFFFFLL = self->_classInfos[v55];
                    }

                    else
                    {
                      0xFFFFFFFFFLL = [(VMUObjectIdentifier *)self->_objectIdentifier classInfoForObjectWithRange:blocks[(v52 >> 4)].var0, (v54 >> 5) & 0xFFFFFFFFFLL];
                    }

                    goto LABEL_63;
                  }
                }
              }
            }
          }

          else
          {
            v35 = v32 - v30;
            if (v35)
            {
              do
              {
                v36 = v35 >> 1;
                v33 = &p_var0[2 * (v35 >> 1)];
                v34 = *v33;
                if (*v33 <= address)
                {
                  v37 = v33[1];
                  if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > address)
                  {
                    goto LABEL_54;
                  }

                  p_var0 = v33 + 2;
                  v36 = --v35 >> 1;
                }

                0xFFFFFFFFFLL = 0;
                v38 = v35 >= 2;
                v35 = v36;
              }

              while (v38);
              goto LABEL_63;
            }
          }
        }
      }
    }

LABEL_62:
    0xFFFFFFFFFLL = 0;
    goto LABEL_63;
  }

  do
  {
    v39 = v23 >> 1;
    v33 = &v27[v23 >> 1].var0;
    v34 = *v33;
    if (*v33 <= address)
    {
      v37 = v33[1];
      if (((v37 >> 5) & 0xFFFFFFFFFLL) + v34 > address)
      {
        goto LABEL_54;
      }

      v27 = (v33 + 2);
      v39 = --v23 >> 1;
    }

    0xFFFFFFFFFLL = 0;
    v38 = v23 >= 2;
    v23 = v39;
  }

  while (v38);
LABEL_63:

  return 0xFFFFFFFFFLL;
}

- (unsigned)enumerateObjectsWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v16 = 0;
    if (self->_blocksCount)
    {
      v5 = 0;
      v6 = 0;
      do
      {
        selfCopy = self;
        v8 = &self->_blocks[v5];
        v9 = *(v8 + 1);
        if ((v9 & 7) == 1)
        {
          var0 = v8->var0;
          v11 = (v9 >> 5) & 0xFFFFFFFFFLL | 0x1000000000000000;
          if (self->_classInfosCount <= v9 >> 41)
          {
            v12 = 0;
          }

          else
          {
            v12 = self->_classInfos[v9 >> 41];
          }
        }

        else
        {
          v12 = 0;
          var0 = v8->var0;
          v11 = ((v9 >> 5) | (v9 << 60)) & 0x7000000FFFFFFFFFLL;
        }

        v13 = blockCopy[2];
        v15[0] = var0;
        v15[1] = v11;
        v15[2] = v12;
        v13(blockCopy, v6++, v15, &v16);
        if (v6 >= self->_blocksCount)
        {
          break;
        }

        ++v5;
      }

      while ((v16 & 1) == 0);
    }

    else
    {
      LODWORD(v6) = 0;
    }
  }

  else
  {
    LODWORD(v6) = self->_blocksCount;
  }

  return v6;
}

- (unsigned)enumerateMarkedObjects:(void *)objects withBlock:(id)block
{
  blockCopy = block;
  if (objects && (v21 = 0, blocksCount = self->_blocksCount, blocksCount))
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v10 < *objects && ((*(objects + (v10 >> 3) + 4) >> (v10 & 7)) & 1) != 0)
      {
        selfCopy = self;
        v13 = &self->_blocks[v8];
        v14 = *(v13 + 1);
        if ((v14 & 7) == 1)
        {
          var0 = v13->var0;
          v16 = (v14 >> 5) & 0xFFFFFFFFFLL | 0x1000000000000000;
          if (self->_classInfosCount <= v14 >> 41)
          {
            v17 = 0;
          }

          else
          {
            v17 = self->_classInfos[v14 >> 41];
          }
        }

        else
        {
          v17 = 0;
          var0 = v13->var0;
          v16 = ((v14 >> 5) | (v14 << 60)) & 0x7000000FFFFFFFFFLL;
        }

        if (blockCopy)
        {
          v18 = blockCopy[2];
          v20[0] = var0;
          v20[1] = v16;
          v20[2] = v17;
          v18(blockCopy, v10, v20, &v21);
        }

        ++v11;
        blocksCount = self->_blocksCount;
        v9 = v21;
      }

      if (++v10 >= blocksCount)
      {
        break;
      }

      ++v8;
    }

    while ((v9 & 1) == 0);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unsigned)enumerateRegionsWithBlock:(id)block
{
  v8 = 0;
  if (self->_regionsCount)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      (*(block + 2))(block, *(&self->_regions->var0 + v5), &v8);
      if (++v6 >= self->_regionsCount)
      {
        break;
      }

      v5 += 64;
    }

    while ((v8 & 1) == 0);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  return v6;
}

- (unsigned)enumerateReferencesWithBlock:(id)block
{
  blockCopy = block;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__VMUKernelCoreMemoryScanner_enumerateReferencesWithBlock___block_invoke;
  v7[3] = &unk_1E8277C88;
  v9 = v15;
  v7[4] = self;
  v5 = blockCopy;
  v8 = v5;
  v10 = &v11;
  [(VMUKernelCoreMemoryScanner *)self scanNodesWithReferenceRecorder:v7];
  LODWORD(self) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(v15, 8);

  return self;
}

void *__59__VMUKernelCoreMemoryScanner_enumerateReferencesWithBlock___block_invoke(void *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v5 = result;
    v6 = result[4];
    if (v6)
    {
      objc_msgSend_nodeDetails_(v6, a2, a2);
      v7 = v5[4];
      if (v7)
      {
        objc_msgSend_nodeDetails_(v7);
      }
    }

    result = (*(v5[5] + 16))();
    ++*(*(v5[7] + 8) + 24);
  }

  return result;
}

- (unsigned)nodeForAddress:(unint64_t)address
{
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v6 = var7 - var6;
  v7 = var7 < var6;
  LODWORD(self) = -1;
  if (address - var6 >= v6 || v7)
  {
    return self;
  }

  v9 = MEMORY[0x1E69E9AC0];
  v10 = address >> *MEMORY[0x1E69E9AC0];
  if (v10)
  {
    var3 = regionMap->var3;
    v14 = *var3;
    v12 = var3 + 1;
    v13 = v14;
    v15 = address >> *MEMORY[0x1E69E9AC0];
    do
    {
      v16 = v15 & 0x3FFFFFF;
      if (v13 <= v16 || ((*(v12 + (v16 >> 3)) >> (v15 & 7)) & 1) == 0)
      {
        goto LABEL_39;
      }

      v15 >>= 26;
    }

    while (v15);
  }

  v17 = v10 & 0x7FFFF;
  v18 = regionMap->var8[v10 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v18)
  {
    v20 = var4 + 64 * (v18 - 1);
    if (address - *(*v20 + 8) < *(*v20 + 16))
    {
      goto LABEL_10;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_39;
  }

  v38 = regionMap->var4;
  while (1)
  {
    v39 = var5 >> 1;
    v20 = v38 + 64 * (var5 >> 1);
    if (*(*v20 + 8) <= address)
    {
      break;
    }

LABEL_33:
    v35 = var5 >= 2;
    var5 = v39;
    if (!v35)
    {
      goto LABEL_39;
    }
  }

  if (*(*v20 + 16) + *(*v20 + 8) <= address)
  {
    v38 = (v20 + 64);
    v39 = --var5 >> 1;
    goto LABEL_33;
  }

  isSpecialPhysFootprintRegion = [*v20 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v41 = 0;
  }

  else
  {
    v41 = v20;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_39;
  }

  if ((*(*v41 + 132) & 1) == 0)
  {
    goto LABEL_55;
  }

  v42 = (v41 + 64);
  v43 = regionMap->var5 - ((v41 + 64 - regionMap->var4) >> 6);
  if (!v43)
  {
    goto LABEL_52;
  }

  while (2)
  {
    v44 = v43 >> 1;
    v45 = &v42[8 * (v43 >> 1)];
    if (*(*v45 + 1) > address)
    {
LABEL_46:
      v46 = v43 > 1;
      v43 = v44;
      if (!v46)
      {
        v43 = 0;
        goto LABEL_52;
      }

      continue;
    }

    break;
  }

  if (*(*v45 + 2) + *(*v45 + 1) <= address)
  {
    v42 = v45 + 8;
    v44 = --v43 >> 1;
    goto LABEL_46;
  }

  if ([*v45 isSpecialPhysFootprintRegion])
  {
    v43 = 0;
  }

  else
  {
    v43 = v45;
  }

LABEL_52:
  if (v43)
  {
    v41 = v43;
  }

  v20 = v41;
LABEL_55:
  regionMap->var8[v17] = ((v41 - var4) >> 6) + 1;
LABEL_10:
  v21 = *(v20 + 5);
  if (!v21)
  {
    goto LABEL_39;
  }

  v22 = *(v20 + 1);
  var0 = regionMap->var0;
  v24 = *(v20 + 4);
  v25 = &regionMap->var0[v24];
  if (v22)
  {
    v26 = v25->var0;
    if (v26 <= address)
    {
      v27 = &var0[v21 - 1 + v24];
      if (((*(v27 + 1) >> 5) & 0xFFFFFFFFFLL) + v27->var0 > address)
      {
        v28 = (v22 + 4 * ((address - (v26 & -*MEMORY[0x1E69E9AC8])) >> *v9));
        v29 = *v28;
        p_var0 = &var0[v29].var0;
        if (*p_var0 <= address)
        {
          v31 = v28[1];
          if (v31 < regionMap->var1)
          {
            v32 = &var0[v31].var0;
            if (*v32 <= address)
            {
              return (v32 - var0) >> 4;
            }
          }

          v33 = v31 - v29;
          if (v33)
          {
            do
            {
              v34 = v33 >> 1;
              v32 = &p_var0[2 * (v33 >> 1)];
              if (*v32 <= address)
              {
                if (((v32[1] >> 5) & 0xFFFFFFFFFLL) + *v32 > address)
                {
                  return (v32 - var0) >> 4;
                }

                p_var0 = v32 + 2;
                v34 = --v33 >> 1;
              }

              LODWORD(self) = -1;
              v35 = v33 >= 2;
              v33 = v34;
            }

            while (v35);
            return self;
          }
        }
      }
    }

LABEL_39:
    LODWORD(self) = -1;
    return self;
  }

  do
  {
    v36 = v21 >> 1;
    v32 = &v25[v21 >> 1].var0;
    if (*v32 <= address)
    {
      if (((v32[1] >> 5) & 0xFFFFFFFFFLL) + *v32 > address)
      {
        return (v32 - var0) >> 4;
      }

      v25 = (v32 + 2);
      v36 = --v21 >> 1;
    }

    LODWORD(self) = -1;
    v35 = v21 >= 2;
    v21 = v36;
  }

  while (v35);
  return self;
}

- (unsigned)_nodeForAddress:(unint64_t)address checkMaxInteriorOffset:(BOOL)offset
{
  regionMap = self->_regionMap;
  var6 = regionMap->var6;
  var7 = regionMap->var7;
  v7 = var7 - var6;
  v8 = var7 < var6;
  LODWORD(self) = -1;
  if (address - var6 >= v7 || v8)
  {
    return self;
  }

  offsetCopy = offset;
  v11 = MEMORY[0x1E69E9AC0];
  v12 = address >> *MEMORY[0x1E69E9AC0];
  if (v12)
  {
    var3 = regionMap->var3;
    v16 = *var3;
    v14 = var3 + 1;
    v15 = v16;
    v17 = address >> *MEMORY[0x1E69E9AC0];
    do
    {
      v18 = v17 & 0x3FFFFFF;
      if (v15 <= v18 || ((*(v14 + (v18 >> 3)) >> (v17 & 7)) & 1) == 0)
      {
        goto LABEL_39;
      }

      v17 >>= 26;
    }

    while (v17);
  }

  v19 = v12 & 0x7FFFF;
  v20 = regionMap->var8[v12 & 0x7FFFF];
  var4 = regionMap->var4;
  if (v20)
  {
    v22 = var4 + 64 * (v20 - 1);
    if (address - *(*v22 + 8) < *(*v22 + 16))
    {
      goto LABEL_10;
    }
  }

  var5 = regionMap->var5;
  if (!var5)
  {
    goto LABEL_39;
  }

  v40 = regionMap->var4;
  while (1)
  {
    v41 = var5 >> 1;
    v22 = v40 + 64 * (var5 >> 1);
    if (*(*v22 + 8) <= address)
    {
      break;
    }

LABEL_33:
    v37 = var5 >= 2;
    var5 = v41;
    if (!v37)
    {
      goto LABEL_39;
    }
  }

  if (*(*v22 + 16) + *(*v22 + 8) <= address)
  {
    v40 = (v22 + 64);
    v41 = --var5 >> 1;
    goto LABEL_33;
  }

  isSpecialPhysFootprintRegion = [*v22 isSpecialPhysFootprintRegion];
  if (isSpecialPhysFootprintRegion)
  {
    v43 = 0;
  }

  else
  {
    v43 = v22;
  }

  if (isSpecialPhysFootprintRegion)
  {
    goto LABEL_39;
  }

  if ((*(*v43 + 132) & 1) == 0)
  {
    goto LABEL_59;
  }

  v44 = (v43 + 64);
  v45 = regionMap->var5 - ((v43 + 64 - regionMap->var4) >> 6);
  if (!v45)
  {
    goto LABEL_56;
  }

  while (2)
  {
    v46 = v45 >> 1;
    v47 = &v44[8 * (v45 >> 1)];
    if (*(*v47 + 1) > address)
    {
LABEL_46:
      v48 = v45 > 1;
      v45 = v46;
      if (!v48)
      {
        v45 = 0;
        goto LABEL_56;
      }

      continue;
    }

    break;
  }

  if (*(*v47 + 2) + *(*v47 + 1) <= address)
  {
    v44 = v47 + 8;
    v46 = --v45 >> 1;
    goto LABEL_46;
  }

  if ([*v47 isSpecialPhysFootprintRegion])
  {
    v45 = 0;
  }

  else
  {
    v45 = v47;
  }

LABEL_56:
  if (v45)
  {
    v43 = v45;
  }

  v22 = v43;
LABEL_59:
  regionMap->var8[v19] = ((v43 - var4) >> 6) + 1;
LABEL_10:
  v23 = *(v22 + 5);
  if (!v23)
  {
    goto LABEL_39;
  }

  v24 = *(v22 + 1);
  var0 = regionMap->var0;
  v26 = *(v22 + 4);
  v27 = &regionMap->var0[v26];
  if (v24)
  {
    if (v27->var0 <= address)
    {
      v28 = &var0[v23 - 1 + v26];
      if (((*(v28 + 1) >> 5) & 0xFFFFFFFFFLL) + v28->var0 > address)
      {
        v29 = (v24 + 4 * ((address - (v27->var0 & -*MEMORY[0x1E69E9AC8])) >> *v11));
        v30 = *v29;
        p_var0 = &var0[v30].var0;
        if (*p_var0 <= address)
        {
          v32 = v29[1];
          if (v32 < regionMap->var1 && (v33 = &var0[v32].var0, v34 = *v33, *v33 <= address))
          {
LABEL_48:
            if (!offsetCopy)
            {
              return (v33 - var0) >> 4;
            }

            v49 = v33[1];
            if ((v49 & 7) - 2 >= 3)
            {
              v50 = address - v34;
              var2 = regionMap->var2;
              if (v50 < var2 || ((v49 >> 5) & 0xFFFFFFFFFLL) - v50 <= var2)
              {
                return (v33 - var0) >> 4;
              }
            }
          }

          else
          {
            v35 = v32 - v30;
            if (v35)
            {
              do
              {
                v36 = v35 >> 1;
                v33 = &p_var0[2 * (v35 >> 1)];
                v34 = *v33;
                if (*v33 <= address)
                {
                  if (((v33[1] >> 5) & 0xFFFFFFFFFLL) + v34 > address)
                  {
                    goto LABEL_48;
                  }

                  p_var0 = v33 + 2;
                  v36 = --v35 >> 1;
                }

                LODWORD(self) = -1;
                v37 = v35 >= 2;
                v35 = v36;
              }

              while (v37);
              return self;
            }
          }
        }
      }
    }

LABEL_39:
    LODWORD(self) = -1;
    return self;
  }

  do
  {
    v38 = v23 >> 1;
    v33 = &v27[v23 >> 1].var0;
    v34 = *v33;
    if (*v33 <= address)
    {
      if (((v33[1] >> 5) & 0xFFFFFFFFFLL) + v34 > address)
      {
        goto LABEL_48;
      }

      v27 = (v33 + 2);
      v38 = --v23 >> 1;
    }

    LODWORD(self) = -1;
    v37 = v23 >= 2;
    v23 = v38;
  }

  while (v37);
  return self;
}

- (void)copyUserMarked
{
  userMarkedAbandoned = self->_userMarkedAbandoned;
  if (!userMarkedAbandoned)
  {
    return 0;
  }

  v3 = ((*userMarkedAbandoned + 7) >> 3) + 4;
  v4 = malloc_type_malloc(v3, 0xEE1F7B8EuLL);

  return memcpy(v4, userMarkedAbandoned, v3);
}

- (unint64_t)ledgerValueForKey:(id)key keyExists:(BOOL *)exists
{
  keyCopy = key;
  ledger = [(VMUKernelCoreMemoryScanner *)self ledger];
  v8 = [ledger objectForKeyedSubscript:keyCopy];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (exists)
    {
      *exists = 1;
    }

    unsignedLongLongValue = [v8 unsignedLongLongValue];
  }

  else
  {
    unsignedLongLongValue = 0;
    if (exists)
    {
      *exists = 0;
    }
  }

  return unsignedLongLongValue;
}

- (void)setNodeScanningLogger:(id)logger
{
  if (self->_nodeLogger != logger)
  {
    v5 = _Block_copy(logger);
    nodeLogger = self->_nodeLogger;
    self->_nodeLogger = v5;
  }
}

- (void)setReferenceScanningLogger:(id)logger
{
  if (self->_referenceLogger != logger)
  {
    v5 = _Block_copy(logger);
    referenceLogger = self->_referenceLogger;
    self->_referenceLogger = v5;
  }
}

- (uint64_t)_shouldScanVMregion:(uint64_t)mregion
{
  mregionCopy = mregion;
  if (mregion)
  {
    v4 = *a2;
    v5 = v4;
    if (*(a2 + 32) - *(a2 + 24) < 8uLL)
    {
      goto LABEL_11;
    }

    if (*(v4 + 49))
    {
      if (*(mregionCopy + 348) == 1 && (*(v4 + 132) & 2) == 0)
      {
        goto LABEL_11;
      }

      if (qword_1EC1D09D8 != -1)
      {
        dispatch_once(&qword_1EC1D09D8, &__block_literal_global_52);
      }

      if (!_MergedGlobals_0)
      {
        path = [v5 path];
        v7 = [path hasPrefix:kVMUUnknownMappedFileNamePrefix[0]];

        if (v7)
        {
          goto LABEL_11;
        }
      }
    }

    if ((*(v5 + 13) & 3) == 2)
    {
LABEL_11:
      mregionCopy = 0;
    }

    else
    {
      mregionCopy = [v5 protection] != 1 || *(v5 + 26) == 1 || (objc_msgSend(v5[4], "isEqualToString:", @"MALLOC metadata") & 1) != 0 || *(v5 + 26) == 78;
    }
  }

  return mregionCopy;
}

- (void)scanLocalMemory:(uint64_t)memory atOffset:(unsigned int)offset node:(unint64_t)node length:(uint64_t)length isa:(uint64_t)isa scanCaches:(void *)caches fieldInfo:(unsigned int)info stride:(uint64_t)self0 recorder:
{
  if (self)
  {
    strideCopy = stride;
    swiftRuntimeInfoStableABI = [*(self + 80) swiftRuntimeInfoStableABI];
    v17 = swiftRuntimeInfoStableABI;
    if (swiftRuntimeInfoStableABI)
    {
      swiftRuntimeInfoPreABI = swiftRuntimeInfoStableABI;
    }

    else
    {
      swiftRuntimeInfoPreABI = [*(self + 80) swiftRuntimeInfoPreABI];
    }

    v195 = swiftRuntimeInfoPreABI;

    hasSwiftContent = [*(self + 80) hasSwiftContent];
    if (length && *(self + 348) == 1)
    {
      v19 = node - 8;
      if (node >= 8)
      {
        v20 = *(*(self + 272) + 8 * length);
        v21 = [self getCachedScanInfoForClassWithIsa:length classInfo:v20 scanCaches:isa];
        v22 = v21;
        v188 = v20;
        if (v21)
        {
          v200 = *v21 >> 31;
        }

        else
        {
          LOBYTE(v200) = 0;
        }

        v133 = 0;
        v134 = 0;
        v199 = a2 + memory;
        v135 = 0xFFFFFF;
        do
        {
          v136 = v22[v133];
          v137 = HIBYTE(v136) & 0x3F;
          v138 = *&v136 & 0xFFFFFFLL;
          v139 = v134 + 8;
          if (v137 == 1)
          {
            v139 = v134 + 1;
          }

          if (v138 == v135)
          {
            v134 = v139;
          }

          else
          {
            v134 = v138;
          }

          if (v138 == v135)
          {
            v140 = v133;
          }

          else
          {
            v140 = v133 + 1;
          }

          if (((*(self + 360) >> HIBYTE(v22[v133])) & 1) != 0 && v134 <= v19)
          {
            v141 = *(v199 + v134);
            if (v137 == 3)
            {
              v141 &= ~1uLL;
              v137 = (*(v199 + v134) & 1) != 0 ? 2 : 3;
            }

            else if (v137 == 5)
            {
              v142 = v188;
              v143 = v195;
              if (v195)
              {
                if ([v142 usesSwiftRefcounting] && v134 == objc_msgSend(v142, "pointerSize"))
                {
                  v144 = v143;
                  v193 = [v144 refcountIsSideTableMarkerMask] & v141;
                  if (v193 == [v144 refcountIsSideTableMarkerValue])
                  {
                    v145 = [v144 sideTablePointerMask] & v141;
                    v146 = v145 >> [v144 sideTablePointerRightShift];
                    v141 = v146 << [v144 sideTablePointerLeftShift];
                  }

                  else
                  {
                    v141 = 0;
                  }
                }

                else
                {
                  v141 &= [v143 nativeWeakReferencePointerMask];
                }
              }

              v137 = 5;
              v135 = 0xFFFFFF;
            }

            if ((v200 & 1) != 0 || (v22[v133] & 0x40000000) != 0)
            {
              v141 &= 0xFFFFFFFFFFFFF8uLL;
            }

            if (v141)
            {
              v194 = *(*(self + 96) + 16 * offset);
              v147 = *(self + 128);
              [VMUTask ptrauthStripDataPointer:?];
              v135 = 0xFFFFFF;
              if (*(v147 + 56) >= *(v147 + 48))
              {
                OUTLINED_FUNCTION_10();
                if (!v33)
                {
                  v148 = v141 >> *MEMORY[0x1E69E9AC0];
                  if (v148)
                  {
                    v149 = **(v147 + 24);
                    v150 = v141 >> *MEMORY[0x1E69E9AC0];
                    do
                    {
                      if (v149 <= (v150 & 0x3FFFFFF))
                      {
                        goto LABEL_279;
                      }

                      OUTLINED_FUNCTION_2();
                      if ((v152 & 1) == 0)
                      {
                        goto LABEL_279;
                      }

                      v150 = v151 >> 26;
                    }

                    while (v150);
                  }

                  v153 = v148 & 0x7FFFF;
                  v154 = *(v147 + 64 + 4 * (v148 & 0x7FFFF));
                  v155 = *(v147 + 32);
                  if (v154)
                  {
                    v156 = v155 + ((v154 - 1) << 6);
                    if (v141 - *(*v156 + 8) < *(*v156 + 16))
                    {
                      goto LABEL_229;
                    }
                  }

                  v162 = *(v147 + 40);
                  if (v162)
                  {
                    v163 = *(v147 + 32);
                    do
                    {
                      v164 = v162 >> 1;
                      v156 = v163 + (v162 >> 1 << 6);
                      if (*(*v156 + 8) <= v141)
                      {
                        if (*(*v156 + 16) + *(*v156 + 8) > v141)
                        {
                          v186 = v153;
                          isSpecialPhysFootprintRegion = [*v156 isSpecialPhysFootprintRegion];
                          v167 = v147 + 64;
                          v166 = v186;
                          v135 = 0xFFFFFF;
                          if (isSpecialPhysFootprintRegion)
                          {
                            v168 = 0;
                          }

                          else
                          {
                            v168 = v156;
                          }

                          if (isSpecialPhysFootprintRegion)
                          {
                            break;
                          }

                          if ((*(*v168 + 132) & 1) == 0)
                          {
                            goto LABEL_273;
                          }

                          v169 = (v168 + 64);
                          v170 = *(v147 + 40) - ((v168 + 64 - *(v147 + 32)) >> 6);
                          if (!v170)
                          {
                            goto LABEL_270;
                          }

                          while (1)
                          {
                            v171 = v170 >> 1;
                            v172 = &v169[8 * (v170 >> 1)];
                            if (*(*v172 + 1) <= v141)
                            {
                              if (*(*v172 + 2) + *(*v172 + 1) > v141)
                              {
                                v181 = v168;
                                isSpecialPhysFootprintRegion2 = [*v172 isSpecialPhysFootprintRegion];
                                v168 = v181;
                                v167 = v147 + 64;
                                v166 = v186;
                                v135 = 0xFFFFFF;
                                if (isSpecialPhysFootprintRegion2)
                                {
                                  v170 = 0;
                                }

                                else
                                {
                                  v170 = v172;
                                }

LABEL_270:
                                if (v170)
                                {
                                  v168 = v170;
                                }

                                v156 = v168;
LABEL_273:
                                *(v167 + 4 * v166) = ((v168 - v155) >> 6) + 1;
LABEL_229:
                                if (*(v156 + 20))
                                {
                                  if (*(v156 + 8))
                                  {
                                    if (*(*v147 + 16 * *(v156 + 16)) <= v141)
                                    {
                                      OUTLINED_FUNCTION_0();
                                      if (!v64 && v33)
                                      {
                                        OUTLINED_FUNCTION_14();
                                        OUTLINED_FUNCTION_1();
                                        if (v64 || !v33)
                                        {
                                          v159 = *(v157 + 4);
                                          if (v159 >= *(v147 + 8) || (OUTLINED_FUNCTION_13(), !v64 && v33))
                                          {
                                            if (v159 != v158)
                                            {
                                              do
                                              {
                                                OUTLINED_FUNCTION_6();
                                                if (v64 || !v33)
                                                {
                                                  OUTLINED_FUNCTION_4();
                                                  if (!v64 && v33)
                                                  {
                                                    goto LABEL_274;
                                                  }

                                                  OUTLINED_FUNCTION_11();
                                                }
                                              }

                                              while (v160 >= 2);
                                            }
                                          }

                                          else
                                          {
LABEL_274:
                                            OUTLINED_FUNCTION_8();
                                            if (!v33)
                                            {
                                              goto LABEL_279;
                                            }

                                            OUTLINED_FUNCTION_7();
                                            if (v175 < *(v147 + 16))
                                            {
                                              if (v174 == -1)
                                              {
                                                goto LABEL_279;
                                              }

                                              goto LABEL_278;
                                            }

                                            OUTLINED_FUNCTION_12();
                                            if ((v64 || !v33) && v176 != -1)
                                            {
LABEL_278:
                                              (*(stride + 16))(stride, offset, v134 + memory + v194, v137);
                                              v135 = 0xFFFFFF;
                                              goto LABEL_279;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }

                                  else
                                  {
                                    do
                                    {
                                      OUTLINED_FUNCTION_3();
                                      if (v64 || !v33)
                                      {
                                        OUTLINED_FUNCTION_5();
                                        if (!v64 && v33)
                                        {
                                          goto LABEL_274;
                                        }

                                        OUTLINED_FUNCTION_9();
                                      }
                                    }

                                    while (v161 >= 2);
                                  }
                                }

                                goto LABEL_279;
                              }

                              v169 = v172 + 8;
                              v171 = --v170 >> 1;
                            }

                            v59 = v170 > 1;
                            v170 = v171;
                            if (!v59)
                            {
                              v170 = 0;
                              goto LABEL_270;
                            }
                          }
                        }

                        v163 = v156 + 64;
                        v164 = --v162 >> 1;
                      }

                      v33 = v162 >= 2;
                      v162 = v164;
                    }

                    while (v33);
                  }
                }
              }
            }
          }

LABEL_279:
          v133 = v140;
        }

        while (v134 <= v19);
        v69 = v188;
LABEL_287:
      }
    }

    else
    {
      if (caches && *(self + 348) == 1)
      {
        v23 = ((memory + 7) & 0xFFFFFFF8) - memory;
        v24 = (v23 + 8);
        if (v24 <= node)
        {
          v201 = a2 + memory;
          do
          {
            v25 = v23;
            v23 = v24;
            v203 = 0;
            v26 = [caches getLeafFieldAtOffset:v25 leafOffset:&v203];
            v27 = v203 + 8;
            if (v27 <= [v26 size])
            {
              v28 = *(v201 + v25);
              v29 = *(self + 8);
              v196 = *(*(self + 96) + 16 * offset);
              scanType = [v26 scanType];
              if (v28)
              {
                v31 = scanType;
                v32 = *(self + 128);
                [VMUTask ptrauthStripDataPointer:v29];
                if (*(v32 + 56) >= *(v32 + 48))
                {
                  OUTLINED_FUNCTION_10();
                  if (!v33)
                  {
                    v34 = v28 >> *MEMORY[0x1E69E9AC0];
                    if (v34)
                    {
                      v35 = **(v32 + 24);
                      v36 = v28 >> *MEMORY[0x1E69E9AC0];
                      do
                      {
                        if (v35 <= (v36 & 0x3FFFFFF))
                        {
                          goto LABEL_75;
                        }

                        OUTLINED_FUNCTION_2();
                        if ((v38 & 1) == 0)
                        {
                          goto LABEL_75;
                        }

                        v36 = v37 >> 26;
                      }

                      while (v36);
                    }

                    v39 = v34 & 0x7FFFF;
                    v40 = *(v32 + 64 + 4 * (v34 & 0x7FFFF));
                    if (v40)
                    {
                      v41 = *(v32 + 32) + ((v40 - 1) << 6);
                      if (v28 - *(*v41 + 8) < *(*v41 + 16))
                      {
                        goto LABEL_25;
                      }
                    }

                    v47 = *(v32 + 40);
                    if (v47)
                    {
                      v48 = *(v32 + 32);
                      do
                      {
                        v49 = v47 >> 1;
                        v41 = v48 + (v47 >> 1 << 6);
                        if (*(*v41 + 8) <= v28)
                        {
                          if (*(*v41 + 16) + *(*v41 + 8) > v28)
                          {
                            v192 = v39;
                            v184 = *(v32 + 32);
                            isSpecialPhysFootprintRegion3 = [*v41 isSpecialPhysFootprintRegion];
                            v52 = v184;
                            v51 = v32 + 64;
                            v53 = v192;
                            if (isSpecialPhysFootprintRegion3)
                            {
                              v54 = 0;
                            }

                            else
                            {
                              v54 = v41;
                            }

                            if (isSpecialPhysFootprintRegion3)
                            {
                              break;
                            }

                            if ((*(*v54 + 132) & 1) == 0)
                            {
                              goto LABEL_69;
                            }

                            v55 = (v54 + 64);
                            v56 = *(v32 + 40) - ((v54 + 64 - *(v32 + 32)) >> 6);
                            if (!v56)
                            {
                              goto LABEL_66;
                            }

                            while (1)
                            {
                              v57 = v56 >> 1;
                              v58 = &v55[8 * (v56 >> 1)];
                              if (*(*v58 + 1) <= v28)
                              {
                                if (*(*v58 + 2) + *(*v58 + 1) > v28)
                                {
                                  v183 = v54;
                                  isSpecialPhysFootprintRegion4 = [*v58 isSpecialPhysFootprintRegion];
                                  v54 = v183;
                                  v52 = v184;
                                  v51 = v32 + 64;
                                  v53 = v192;
                                  if (isSpecialPhysFootprintRegion4)
                                  {
                                    v56 = 0;
                                  }

                                  else
                                  {
                                    v56 = v58;
                                  }

LABEL_66:
                                  if (v56)
                                  {
                                    v54 = v56;
                                  }

                                  v41 = v54;
LABEL_69:
                                  *(v51 + 4 * v53) = ((v54 - v52) >> 6) + 1;
LABEL_25:
                                  if (*(v41 + 20))
                                  {
                                    if (*(v41 + 8))
                                    {
                                      if (*(*v32 + 16 * *(v41 + 16)) <= v28)
                                      {
                                        OUTLINED_FUNCTION_0();
                                        if (!v64 && v33)
                                        {
                                          OUTLINED_FUNCTION_14();
                                          OUTLINED_FUNCTION_1();
                                          if (v64 || !v33)
                                          {
                                            v44 = *(v42 + 4);
                                            if (v44 >= *(v32 + 8) || (OUTLINED_FUNCTION_13(), !v64 && v33))
                                            {
                                              if (v44 != v43)
                                              {
                                                do
                                                {
                                                  OUTLINED_FUNCTION_6();
                                                  if (v64 || !v33)
                                                  {
                                                    OUTLINED_FUNCTION_4();
                                                    if (!v64 && v33)
                                                    {
                                                      goto LABEL_70;
                                                    }

                                                    OUTLINED_FUNCTION_11();
                                                  }
                                                }

                                                while (v45 >= 2);
                                              }
                                            }

                                            else
                                            {
LABEL_70:
                                              OUTLINED_FUNCTION_8();
                                              if (!v33)
                                              {
                                                goto LABEL_75;
                                              }

                                              OUTLINED_FUNCTION_7();
                                              if (v62 < *(v32 + 16))
                                              {
                                                if (v61 == -1)
                                                {
                                                  goto LABEL_75;
                                                }

                                                goto LABEL_74;
                                              }

                                              OUTLINED_FUNCTION_12();
                                              v64 = !v64 && v33 || v63 == -1;
                                              if (!v64)
                                              {
LABEL_74:
                                                (*(stride + 16))(stride, offset, memory + v25 + v196, v31);
                                                goto LABEL_75;
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }

                                    else
                                    {
                                      do
                                      {
                                        OUTLINED_FUNCTION_3();
                                        if (v64 || !v33)
                                        {
                                          OUTLINED_FUNCTION_5();
                                          if (!v64 && v33)
                                          {
                                            goto LABEL_70;
                                          }

                                          OUTLINED_FUNCTION_9();
                                        }
                                      }

                                      while (v46 >= 2);
                                    }
                                  }

                                  goto LABEL_75;
                                }

                                v55 = v58 + 8;
                                v57 = --v56 >> 1;
                              }

                              v59 = v56 > 1;
                              v56 = v57;
                              if (!v59)
                              {
                                v56 = 0;
                                goto LABEL_66;
                              }
                            }
                          }

                          v48 = v41 + 64;
                          v49 = --v47 >> 1;
                        }

                        v33 = v47 >= 2;
                        v47 = v49;
                      }

                      while (v33);
                    }
                  }
                }
              }
            }

LABEL_75:

            v24 = (v23 + 8);
          }

          while (v24 <= node);
        }

        goto LABEL_288;
      }

      if ((*(self + 360) & 2) != 0)
      {
        v65 = (a2 + memory) % info;
        if (v65)
        {
          v66 = (a2 + memory + info - v65);
        }

        else
        {
          v66 = (a2 + memory);
        }

        if (length)
        {
          v67 = *(*(self + 272) + 8 * length);
        }

        else
        {
          v67 = 0;
        }

        v68 = hasSwiftContent;
        v202 = a2 + memory + node - 8;
        v69 = v67;
        if (*(self + 300))
        {
          v197 = *([*(self + 80) autoreleasePoolPageLayout] + 16);
        }

        else
        {
          v197 = 0;
        }

        if (v66 <= v202)
        {
          v185 = stride + 16;
          do
          {
            v70 = v66 - a2;
            v71 = *(*(self + 96) + 16 * offset);
            v72 = *v66;
            if (*v66)
            {
              if (v68)
              {
                if (v69 && v70 == 8 && [v69 infoType] == 8 && objc_msgSend(v69, "usesSwiftRefcounting"))
                {
                  v73 = v195;
                  v74 = v73;
                  if (v195 && (v75 = [v73 refcountIsSideTableMarkerMask] & v72, v75 == objc_msgSend(v74, "refcountIsSideTableMarkerValue")))
                  {
                    v76 = [v74 sideTablePointerMask] & v72;
                    v77 = v76 >> [v74 sideTablePointerRightShift];
                    v72 = v77 << [v74 sideTablePointerLeftShift];
                  }

                  else
                  {
                    v72 = 0;
                  }
                }

                else if ((*(*(self + 96) + 16 * offset + 8) & 7u) - 2 < 3)
                {
                  v72 &= 0xFFFFFFFFFFFFF8uLL;
                }
              }

              if (v197 && ([*(self + 80) isTaggedPointer:v72] & 1) == 0)
              {
                v86 = a2;
                v87 = v69;
                v88 = v72 & v197;
                if (v72 != (v72 & v197))
                {
                  v89 = [*(self + 80) countFromPointerInAutoreleasePool:v72];
                  v90 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:(v89 + 1)];
                  v91 = *(self + 504);
                  v92 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v71 + v70];
                  [v91 setObject:v90 forKeyedSubscript:v92];

                  v72 = v88;
                }

                v69 = v87;
                a2 = v86;
                v68 = hasSwiftContent;
              }

              v93 = *(self + 312);
              if (v93)
              {
                if ((*(*(self + 96) + 16 * offset + 8) & 7) == 2)
                {
                  v94 = NSMapGet(v93, (v71 + v70));
                  if (v94)
                  {
                    v72 = v94;
                  }
                }
              }

              if (([*(self + 520) containsLocation:v71 + v70] & 1) == 0)
              {
                if (v72)
                {
                  v95 = *(self + 128);
                  [VMUTask ptrauthStripDataPointer:?];
                  if (*(v95 + 56) >= *(v95 + 48))
                  {
                    OUTLINED_FUNCTION_10();
                    if (!v33)
                    {
                      v96 = v72 >> *MEMORY[0x1E69E9AC0];
                      if (v96)
                      {
                        v97 = **(v95 + 24);
                        v98 = v72 >> *MEMORY[0x1E69E9AC0];
                        do
                        {
                          if (v97 <= (v98 & 0x3FFFFFF))
                          {
                            goto LABEL_180;
                          }

                          OUTLINED_FUNCTION_2();
                          if ((v100 & 1) == 0)
                          {
                            goto LABEL_180;
                          }

                          v98 = v99 >> 26;
                        }

                        while (v98);
                      }

                      v101 = v96 & 0x7FFFF;
                      v102 = *(v95 + 64 + 4 * (v96 & 0x7FFFF));
                      if (v102)
                      {
                        v103 = *(v95 + 32) + ((v102 - 1) << 6);
                        if (v72 - *(*v103 + 8) < *(*v103 + 16))
                        {
                          goto LABEL_130;
                        }
                      }

                      v109 = *(v95 + 40);
                      if (v109)
                      {
                        v110 = *(v95 + 32);
                        do
                        {
                          v111 = v109 >> 1;
                          v103 = v110 + (v109 >> 1 << 6);
                          if (*(*v103 + 8) <= v72)
                          {
                            if (*(*v103 + 16) + *(*v103 + 8) > v72)
                            {
                              v180 = v95 + 64;
                              v182 = v101;
                              v179 = *(v95 + 32);
                              isSpecialPhysFootprintRegion5 = [*v103 isSpecialPhysFootprintRegion];
                              v114 = v179;
                              v113 = v95 + 64;
                              v115 = v182;
                              if (isSpecialPhysFootprintRegion5)
                              {
                                v116 = 0;
                              }

                              else
                              {
                                v116 = v103;
                              }

                              if (isSpecialPhysFootprintRegion5)
                              {
                                break;
                              }

                              if ((*(*v116 + 132) & 1) == 0)
                              {
                                goto LABEL_178;
                              }

                              v117 = (v116 + 64);
                              v118 = *(v95 + 40) - ((v116 + 64 - *(v95 + 32)) >> 6);
                              if (!v118)
                              {
                                goto LABEL_175;
                              }

                              v187 = v69;
                              while (1)
                              {
                                v119 = v118 >> 1;
                                v120 = &v117[8 * (v118 >> 1)];
                                if (*(*v120 + 1) <= v72)
                                {
                                  if (*(*v120 + 2) + *(*v120 + 1) > v72)
                                  {
                                    v121 = v116;
                                    isSpecialPhysFootprintRegion6 = [*v120 isSpecialPhysFootprintRegion];
                                    v116 = v121;
                                    v114 = v179;
                                    v113 = v95 + 64;
                                    v115 = v182;
                                    if (isSpecialPhysFootprintRegion6)
                                    {
                                      v118 = 0;
                                    }

                                    else
                                    {
                                      v118 = v120;
                                    }

LABEL_174:
                                    v69 = v187;
LABEL_175:
                                    if (v118)
                                    {
                                      v116 = v118;
                                    }

                                    v103 = v116;
LABEL_178:
                                    *(v113 + 4 * v115) = ((v116 - v114) >> 6) + 1;
LABEL_130:
                                    if (*(v103 + 20))
                                    {
                                      if (*(v103 + 8))
                                      {
                                        if (*(*v95 + 16 * *(v103 + 16)) <= v72)
                                        {
                                          OUTLINED_FUNCTION_0();
                                          if (!v64 && v33)
                                          {
                                            OUTLINED_FUNCTION_14();
                                            OUTLINED_FUNCTION_1();
                                            if (v64 || !v33)
                                            {
                                              v106 = *(v104 + 4);
                                              if (v106 >= *(v95 + 8) || (OUTLINED_FUNCTION_13(), !v64 && v33))
                                              {
                                                if (v106 != v105)
                                                {
                                                  do
                                                  {
                                                    OUTLINED_FUNCTION_6();
                                                    if (v64 || !v33)
                                                    {
                                                      OUTLINED_FUNCTION_4();
                                                      if (!v64 && v33)
                                                      {
                                                        goto LABEL_179;
                                                      }

                                                      OUTLINED_FUNCTION_11();
                                                    }
                                                  }

                                                  while (v107 >= 2);
                                                }
                                              }

                                              else
                                              {
LABEL_179:
                                                OUTLINED_FUNCTION_8();
                                                if (!v33)
                                                {
                                                  goto LABEL_180;
                                                }

                                                OUTLINED_FUNCTION_7();
                                                if (v131 < *(v95 + 16))
                                                {
                                                  if (v127 == -1)
                                                  {
                                                    goto LABEL_180;
                                                  }

LABEL_189:
                                                  v84 = OUTLINED_FUNCTION_15_0(v123, v124, v125, v126, v127, v128, v129, v130, v178, v179, v180, v182, v185, v187, strideCopy);
LABEL_107:
                                                  v85(v84);
                                                  goto LABEL_180;
                                                }

                                                OUTLINED_FUNCTION_12();
                                                if ((v64 || !v33) && v127 != -1)
                                                {
                                                  goto LABEL_189;
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }

                                      else
                                      {
                                        do
                                        {
                                          OUTLINED_FUNCTION_3();
                                          if (v64 || !v33)
                                          {
                                            OUTLINED_FUNCTION_5();
                                            if (!v64 && v33)
                                            {
                                              goto LABEL_179;
                                            }

                                            OUTLINED_FUNCTION_9();
                                          }
                                        }

                                        while (v108 >= 2);
                                      }
                                    }

                                    goto LABEL_180;
                                  }

                                  v117 = v120 + 8;
                                  v119 = --v118 >> 1;
                                }

                                v59 = v118 > 1;
                                v118 = v119;
                                if (!v59)
                                {
                                  v118 = 0;
                                  goto LABEL_174;
                                }
                              }
                            }

                            v110 = v103 + 64;
                            v111 = --v109 >> 1;
                          }

                          v33 = v109 >= 2;
                          v109 = v111;
                        }

                        while (v33);
                      }
                    }
                  }
                }
              }
            }

            else if (*(self + 300))
            {
              autoreleasePoolPageLayout = [*(self + 80) autoreleasePoolPageLayout];
              if (v70 >= *(autoreleasePoolPageLayout + 8))
              {
                v84 = OUTLINED_FUNCTION_15_0(autoreleasePoolPageLayout, v79, v80, v81, *(self + 296), *(*(self + 96) + 16 * *(self + 296)), v82, v83, v178, v179, v180, v182, v185, v187, strideCopy);
                goto LABEL_107;
              }
            }

LABEL_180:
            v66 = (v66 + info);
          }

          while (v66 <= v202);
        }

        goto LABEL_287;
      }
    }

LABEL_288:
  }
}

- (void)initWithVMUTask:(void *)a3 options:.cold.1(unint64_t a1, uint8_t *buf, void *a3)
{
  v4 = *MEMORY[0x1E69E9AC8] >> 10;
  *buf = 67109376;
  *(buf + 1) = a1 >> 10;
  *(buf + 4) = 1024;
  *(buf + 10) = v4;
  _os_log_error_impl(&dword_1C679D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "error: core's page size doesn't match the host system (%u KB vs %u KB), cannot continue", buf, 0xEu);
}

- (uint64_t)addRootNodesFromTaskWithError:(void *)a3 .cold.1(unsigned int *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v5 = 1;
  fwrite("Region state after claims:\n", 0x1BuLL, 1uLL, *MEMORY[0x1E69E9848]);
  v23 = a1;
  if (*a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v28 = *MEMORY[0x1E69E9848];
      v27 = [*(*a3 + v6) address];
      v8 = *(*a3 + v6);
      v9 = *(v8 + 24);
      v11 = *(v8 + 8);
      v10 = *(v8 + 16);
      v12 = (&vm_prot_strings_0)[v9];
      v13 = VMURegionTypeDescriptionForTagShareProtAndPager(*(v8 + 104), *(v8 + 50), v9, *(v8 + 49));
      v14 = [v13 UTF8String];
      v15 = (*a3 + v6);
      v16 = *(*v15 + 16) >> *MEMORY[0x1E69E9AC0];
      if (v16 == 1)
      {
        v17 = "page";
      }

      else
      {
        v17 = "pages";
      }

      v18 = "";
      if (v15[3] == v15[4])
      {
        v19 = "";
      }

      else
      {
        v19 = " [root]";
      }

      v20 = *(*v15 + 148);
      if (v20 < *(a2 + 232))
      {
        v18 = [*(*(a2 + 224) + 24 * v20 + 8) UTF8String];
      }

      fprintf(v28, "region: [%#llx-%#llx] %s %s (%llu %s)%s  %s\n", v27, v10 + v11, v12, v14, v16, v17, v19, v18);

      ++v7;
      v21 = *v23;
      *a4 = v21;
      v6 += 64;
    }

    while (v7 < v21);
    return 0;
  }

  return v5;
}

@end