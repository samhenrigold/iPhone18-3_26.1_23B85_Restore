@interface VMUHeapAndVMAggregator
- (NSArray)heapZoneAggregates;
- (VMUHeapAndVMAggregator)initWithGraph:(id)graph options:(id)options;
- (id)_classDisplayName:(id)name;
- (void)_countAllocation:(id)allocation inRegion:(id)region;
- (void)analyzeMemgraph;
@end

@implementation VMUHeapAndVMAggregator

- (VMUHeapAndVMAggregator)initWithGraph:(id)graph options:(id)options
{
  graphCopy = graph;
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = VMUHeapAndVMAggregator;
  v9 = [(VMUHeapAndVMAggregator *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_heapAndVMOptions, options);
    objc_storeStrong(&v10->_graph, graph);
    classFilterPatternMatcher = [(VMUHeapAndVMAggregatorOptions *)v10->_heapAndVMOptions classFilterPatternMatcher];
    classFilterPatternMatcher = v10->_classFilterPatternMatcher;
    v10->_classFilterPatternMatcher = classFilterPatternMatcher;

    v13 = [VMUClassInfo classInfoWithClassName:@"non-object" binaryPath:&stru_1F461F9C8 type:0];
    nonObjectInfo = v10->_nonObjectInfo;
    v10->_nonObjectInfo = v13;
  }

  return v10;
}

- (NSArray)heapZoneAggregates
{
  v2 = [(NSMutableArray *)self->_heapZoneAggregates copy];

  return v2;
}

- (id)_classDisplayName:(id)name
{
  heapAndVMOptions = self->_heapAndVMOptions;
  nameCopy = name;
  if ([(VMUHeapAndVMAggregatorOptions *)heapAndVMOptions showRawClassNames])
  {
    [nameCopy className];
  }

  else
  {
    [nameCopy displayName];
  }
  v5 = ;

  return v5;
}

- (void)_countAllocation:(id)allocation inRegion:(id)region
{
  regionCopy = region;
  genericInfo = [*(allocation.var0 + 16) genericInfo];
  nonObjectInfo = genericInfo;
  if (!genericInfo)
  {
    nonObjectInfo = self->_nonObjectInfo;
  }

  v8 = nonObjectInfo;

  [(VMUMallocZoneAggregate *)self->_allZonesAggregate incrementAllocationCountForClassInfo:v8 size:*(allocation.var0 + 8) & 0xFFFFFFFFFFFFFFFLL];
  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions separateByZone])
  {
    v9 = [(NSMutableArray *)self->_heapZoneAggregates objectAtIndexedSubscript:regionCopy[37]];
    [v9 incrementAllocationCountForClassInfo:v8 size:*(allocation.var0 + 8) & 0xFFFFFFFFFFFFFFFLL];
  }
}

- (void)analyzeMemgraph
{
  v90 = *MEMORY[0x1E69E9840];
  debugTimer = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  if (debugTimer)
  {
    debugTimer2 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    signpostID = [debugTimer2 signpostID];

    if (signpostID)
    {
      debugTimer3 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      logHandle = [debugTimer3 logHandle];

      debugTimer4 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      signpostID2 = [debugTimer4 signpostID];

      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "VMUHeapAndVMAggregator", "", buf, 2u);
      }
    }
  }

  debugTimer5 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [debugTimer5 endEvent:"VMUHeapAndVMAggregator"];

  debugTimer6 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [debugTimer6 startWithCategory:"VMUHeapAndVMAggregator" message:"counting allocations"];

  debugTimer7 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];

  if (debugTimer7)
  {
    debugTimer8 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    logHandle2 = [debugTimer8 logHandle];

    debugTimer9 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    signpostID3 = [debugTimer9 signpostID];

    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "VMUHeapAndVMAggregator", "counting allocations", buf, 2u);
    }
  }

  v16 = [[VMUMallocZoneAggregate alloc] initWithZoneName:0 options:self->_heapAndVMOptions];
  allZonesAggregate = self->_allZonesAggregate;
  self->_allZonesAggregate = v16;

  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions separateByZone])
  {
    array = [MEMORY[0x1E695DF70] array];
    heapZoneAggregates = self->_heapZoneAggregates;
    self->_heapZoneAggregates = array;

    if ([(VMUCommonGraphInterface *)self->_graph zoneCount])
    {
      v20 = 0;
      do
      {
        v21 = self->_heapZoneAggregates;
        v22 = [[VMUMallocZoneAggregate alloc] initWithZoneName:0 options:self->_heapAndVMOptions];
        [(NSMutableArray *)v21 addObject:v22];

        ++v20;
      }

      while (v20 < [(VMUCommonGraphInterface *)self->_graph zoneCount]);
    }
  }

  v87[0] = 0;
  v87[1] = v87;
  v87[2] = 0x2020000000;
  v88 = 0;
  selfCopy2 = self;
  nodeNamespaceSize = [(VMUCommonGraphInterface *)self->_graph nodeNamespaceSize];
  zoneCount = [(VMUCommonGraphInterface *)self->_graph zoneCount];
  v66 = objc_opt_new();
  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions guessNonObjects])
  {
    __b = malloc_type_malloc(4 * nodeNamespaceSize, 0x100004052888210uLL);
    *buf = -1;
    memset_pattern4(__b, buf, 4 * nodeNamespaceSize);
  }

  else
  {
    __b = 0;
  }

  if (([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions scope]== 2 || [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions scope]== 1) && [(VMUCommonGraphInterface *)self->_graph isMemberOfClass:objc_opt_class()])
  {
    v24 = [[VMUVMRegionIdentifier alloc] initWithGraph:self->_graph options:0];
    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    zoneNames = [(VMUVMRegionIdentifier *)v24 zoneNames];
    v26 = [zoneNames countByEnumeratingWithState:&v83 objects:v89 count:16];
    if (v26)
    {
      v27 = *v84;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v84 != v27)
          {
            objc_enumerationMutation(zoneNames);
          }

          v29 = *(*(&v83 + 1) + 8 * i);
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          *buf = 0u;
          if (v24)
          {
            objc_msgSend_computedStatisticsForZoneWithName_(v24);
            if (*(&v82 + 1))
            {
              v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VM: %@ fragmentation", v29];
              v31 = [VMUClassInfo classInfoWithClassName:v30 binaryPath:&stru_1F461F9C8 type:0];
              [(VMUMallocZoneAggregate *)self->_allZonesAggregate modifySize:*(&v82 + 1) count:1 forClassInfo:v31];
            }
          }
        }

        v26 = [zoneNames countByEnumeratingWithState:&v83 objects:v89 count:16];
      }

      while (v26);
    }

    selfCopy2 = self;
  }

  graph = selfCopy2->_graph;
  v72[0] = MEMORY[0x1E69E9820];
  v72[1] = 3221225472;
  v72[2] = __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke;
  v72[3] = &unk_1E827AB10;
  v76 = nodeNamespaceSize;
  v74 = v87;
  v72[4] = selfCopy2;
  v75 = __b;
  v33 = v66;
  v73 = v33;
  v77 = zoneCount;
  [(VMUCommonGraphInterface *)graph enumerateRegionsWithBlock:v72];

  debugTimer10 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  if (debugTimer10)
  {
    debugTimer11 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    v36 = [debugTimer11 signpostID] == 0;

    if (!v36)
    {
      debugTimer12 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      logHandle3 = [debugTimer12 logHandle];

      debugTimer13 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      signpostID4 = [debugTimer13 signpostID];

      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID4, "VMUHeapAndVMAggregator", "", buf, 2u);
      }
    }
  }

  debugTimer14 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
  [debugTimer14 endEvent:"VMUHeapAndVMAggregator"];

  if ([(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions guessNonObjects])
  {
    debugTimer15 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    if (debugTimer15)
    {
      debugTimer16 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v44 = [debugTimer16 signpostID] == 0;

      if (!v44)
      {
        debugTimer17 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        logHandle4 = [debugTimer17 logHandle];

        debugTimer18 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        signpostID5 = [debugTimer18 signpostID];

        if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_END, signpostID5, "VMUHeapAndVMAggregator", "", buf, 2u);
        }
      }
    }

    debugTimer19 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [debugTimer19 endEvent:"VMUHeapAndVMAggregator"];

    debugTimer20 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [debugTimer20 startWithCategory:"VMUHeapAndVMAggregator" message:"enumerating references for guessNonObjects"];

    debugTimer21 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];

    if (debugTimer21)
    {
      debugTimer22 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      logHandle5 = [debugTimer22 logHandle];

      debugTimer23 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      signpostID6 = [debugTimer23 signpostID];

      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_BEGIN, signpostID6, "VMUHeapAndVMAggregator", "enumerating references for guessNonObjects", buf, 2u);
      }
    }

    v56 = objc_autoreleasePoolPush();
    v57 = self->_graph;
    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke_23;
    v71[3] = &unk_1E827AB38;
    v71[4] = self;
    v71[5] = __b;
    [(VMUCommonGraphInterface *)v57 enumerateReferencesWithBlock:v71];
    objc_autoreleasePoolPop(v56);
    debugTimer24 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    if (debugTimer24)
    {
      debugTimer25 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
      v60 = [debugTimer25 signpostID] == 0;

      if (!v60)
      {
        debugTimer26 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        logHandle6 = [debugTimer26 logHandle];

        debugTimer27 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
        signpostID7 = [debugTimer27 signpostID];

        if (signpostID7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_END, signpostID7, "VMUHeapAndVMAggregator", "", buf, 2u);
        }
      }
    }

    debugTimer28 = [(VMUHeapAndVMAggregatorOptions *)self->_heapAndVMOptions debugTimer];
    [debugTimer28 endEvent:"VMUHeapAndVMAggregator"];

    free(__b);
  }

  _Block_object_dispose(v87, 8);
}

void __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 64))
  {
    v4 = 0x1E8277000uLL;
    do
    {
      v21 = 0;
      v20 = 0uLL;
      v5 = *(a1 + 32);
      v6 = *(v5 + 16);
      if (v6)
      {
        objc_msgSend_nodeDetails_(v6);
        v5 = *(a1 + 32);
      }

      v7 = [*(v5 + 8) scope];
      if (v7 == 2)
      {
        v8 = *(&v20 + 1);
        if (*(&v20 + 1) >> 60 != 5)
        {
          goto LABEL_28;
        }
      }

      else if (v7 == 1)
      {
        v8 = *(&v20 + 1);
        if (*(&v20 + 1) >> 60 != 1)
        {
          if (!VMUGraphNodeType_IsVMRegion(*(&v20 + 1) >> 60))
          {
            goto LABEL_28;
          }

          v8 = *(&v20 + 1);
        }
      }

      else
      {
        if (v7)
        {
          abort();
        }

        v8 = *(&v20 + 1);
        if (*(&v20 + 1) >> 60 != 1)
        {
          goto LABEL_28;
        }
      }

      if ((v8 & 0xFFFFFFFFFFFFFFFLL) != 0)
      {
        if (v20 >= v3[2] + v3[1])
        {
          break;
        }

        v9 = *(*(a1 + 32) + 48);
        if (!v9)
        {
          goto LABEL_19;
        }

        v18 = v20;
        v19 = v21;
        if ([v9 matchesNodeDetails:&v18 orNodeDescription:0])
        {
          v8 = *(&v20 + 1);
LABEL_19:
          if (v8 >> 60 == 1)
          {
            v10 = *(a1 + 32);
            v18 = v20;
            v19 = v21;
            [v10 _countAllocation:&v18 inRegion:v3];
            if ([*(*(a1 + 32) + 8) guessNonObjects])
            {
              *(*(a1 + 56) + 4 * *(*(*(a1 + 48) + 8) + 24)) = *(v3 + 37) + 1;
            }
          }

          else if (VMUGraphNodeType_IsVMRegion(v8 >> 60) && ([v3 isMallocHeapRelated] & 1) == 0)
          {
            v11 = v3[22] + v3[23];
            v12 = v3[24];
            v13 = v11 - v12;
            if (v11 != v12)
            {
              v14 = v4;
              v15 = [*(a1 + 40) objectForKeyedSubscript:v3[4]];
              if (!v15)
              {
                v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"VM: %@", v3[4]];
                v15 = [*(v14 + 408) classInfoWithClassName:v16 binaryPath:&stru_1F461F9C8 type:0];
                [*(a1 + 40) setObject:v15 forKeyedSubscript:v3[4]];
              }

              [*(*(a1 + 32) + 24) modifySize:v13 count:1 forClassInfo:v15];

              v4 = v14;
            }
          }
        }
      }

LABEL_28:
      ++*(*(*(a1 + 48) + 8) + 24);
    }

    while (*(*(*(a1 + 48) + 8) + 24) < *(a1 + 64));
  }

  if ([*(*(a1 + 32) + 8) separateByZone] && *(v3 + 37) < *(a1 + 68))
  {
    v17 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:?];
    [v17 incrementVirtualSize:v3[2]];
  }
}

void __41__VMUHeapAndVMAggregator_analyzeMemgraph__block_invoke_23(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 24))
  {
    v34 = v5;
    v35 = v6;
    v7 = a4;
    v9 = *(a1 + 40);
    v10 = *(v9 + 4 * a4);
    if (v10)
    {
      if (*(v9 + 4 * a3) == v10)
      {
        v32 = 0;
        v33 = 0;
        v31 = 0;
        v11 = *(*(a1 + 32) + 16);
        if (v11 && (objc_msgSend_nodeDetails_(v11, a2, a4), v13 = *(*(a1 + 32) + 16), v29 = 0uLL, v30 = 0, v13))
        {
          objc_msgSend_nodeDetails_(v13);
          v14 = v30;
          v15 = v14;
          if (v14)
          {
            if (!v33)
            {
              v16 = [v14 className];
              v17 = [v16 hasSuffix:@"Storage"]);

              if ((v17 & 1) == 0)
              {
                v18 = *(a1 + 32);
                v19 = *(v18 + 48);
                if (!v19)
                {
LABEL_12:
                  v20 = *(v18 + 24);
                  if ([*(*(a1 + 32) + 8) separateByZone])
                  {
                    v21 = [*(*(a1 + 32) + 32) objectAtIndexedSubscript:(*(*(a1 + 40) + 4 * v7) - 1)];

                    v20 = v21;
                  }

                  [v20 modifySize:-(v32 & 0xFFFFFFFFFFFFFFFLL) count:-1 forClassInfo:*(*(a1 + 32) + 40)];
                  if ([*(*(a1 + 32) + 8) sumObjectFields])
                  {
                    [v20 modifySize:v32 & 0xFFFFFFFFFFFFFFFLL count:0 forClassInfo:v15];
                  }

                  else
                  {
                    v22 = objc_autoreleasePoolPush();
                    v23 = [*(a1 + 32) _classDisplayName:v15];
                    v24 = [v23 stringByAppendingFormat:@"[%llu]", *(a5 + 8)];

                    v25 = [v15 binaryPath];
                    v26 = +[VMUClassInfo classInfoWithClassName:binaryPath:type:](VMUClassInfo, "classInfoWithClassName:binaryPath:type:", v24, v25, [v15 infoType]);

                    [v20 modifySize:v32 & 0xFFFFFFFFFFFFFFFLL count:1 forClassInfo:v26];
                    objc_autoreleasePoolPop(v22);
                  }

                  *(*(a1 + 40) + 4 * v7) = 0;

                  goto LABEL_17;
                }

                v27 = v29;
                v28 = v30;
                if ([v19 matchesNodeDetails:&v27 orNodeDescription:0])
                {
                  v18 = *(a1 + 32);
                  goto LABEL_12;
                }
              }
            }
          }
        }

        else
        {
          v15 = 0;
          v29 = 0uLL;
          v30 = 0;
        }

LABEL_17:
      }
    }
  }
}

@end