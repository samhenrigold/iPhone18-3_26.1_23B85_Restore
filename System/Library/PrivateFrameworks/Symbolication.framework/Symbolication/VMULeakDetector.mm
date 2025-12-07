@interface VMULeakDetector
+ (id)_consolidatedRootLeakDescriptionsForTree:(id)tree;
+ (id)referenceDescription:(id *)description dstDescription:(id)dstDescription is64bit:(BOOL)is64bit;
- (VMULeakDetector)initWithTask:(unsigned int)task graph:(id)graph scanner:(id)scanner stackLogReader:(id)reader;
- (VMULeakDetector)initWithVMUTask:(id)task graph:(id)graph scanner:(id)scanner stackLogReader:(id)reader;
- (id)labelForNode:(unsigned int)node details:(id)details shortLabel:(id)label;
- (id)nodeDescription:(unsigned int)description;
- (id)nodeDescription:(unsigned int)description usingDetails:(id *)details;
- (id)nodeTypeDescription:(unsigned int)description details:(id *)details mallocBySize:(id)size;
- (id)referenceDescription:(id *)description dstDescription:(id)dstDescription is64bit:(BOOL)is64bit;
- (id)scannerOrGraph;
- (unsigned)detectLeaksWithError:(id *)error;
- (unsigned)doNormalLeakDetectionWithError:(id *)error;
- (void)buildLeakTree;
- (void)dealloc;
- (void)printContents:(void *)contents size:(unint64_t)size;
- (void)printLeak:(const char *)leak node:(unsigned int)node details:(id)details region:(id)region stop:;
- (void)printLeakTree;
- (void)printout:(const char *)printout;
@end

@implementation VMULeakDetector

- (VMULeakDetector)initWithTask:(unsigned int)task graph:(id)graph scanner:(id)scanner stackLogReader:(id)reader
{
  v8 = *&task;
  readerCopy = reader;
  scannerCopy = scanner;
  graphCopy = graph;
  v13 = [[VMUTask alloc] initWithTask:v8];
  v14 = [(VMULeakDetector *)self initWithVMUTask:v13 graph:graphCopy scanner:scannerCopy stackLogReader:readerCopy];

  return v14;
}

- (VMULeakDetector)initWithVMUTask:(id)task graph:(id)graph scanner:(id)scanner stackLogReader:(id)reader
{
  taskCopy = task;
  graphCopy = graph;
  scannerCopy = scanner;
  readerCopy = reader;
  v21.receiver = self;
  v21.super_class = VMULeakDetector;
  v15 = [(VMULeakDetector *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_scanner, scanner);
    objc_storeStrong(&v16->_stackLogReader, reader);
    objc_storeStrong(&v16->_graph, graph);
    objc_storeStrong(&v16->_task, task);
    v16->_showBinaryContents = 0;
    *&v16->_showLeakedVMregions = 0;
    scanner = v16->_scanner;
    if (scanner)
    {
      objectContentLevel = [(VMUTaskMemoryScanner *)scanner objectContentLevel];
    }

    else
    {
      objectContentLevel = 3;
    }

    v16->_objectContentLevel = objectContentLevel;
    *&v16->_checkAbandoned = 0;
    v16->_referenceTreeShowRegionVirtualSize = 0;
    v16->_max_contents_bytes = 128;
    v16->_numExcluded = 0;
    v16->_outputFile = *MEMORY[0x1E69E9858];
    outputString = v16->_outputString;
    v16->_outputString = 0;
  }

  return v16;
}

- (void)printout:(const char *)printout
{
  if (self->_outputString || self->_outputFile)
  {
    v8 = &v9;
    if (self->_outputString)
    {
      v7 = 0;
      if (vasprintf(&v7, printout, v8) < 0 || !v7)
      {
        [VMULeakDetector printout:];
      }

      outputString = self->_outputString;
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      [(NSMutableString *)outputString appendString:v5];

      free(v7);
    }

    else
    {
      outputFile = self->_outputFile;
      if (outputFile)
      {
        vfprintf(outputFile, printout, v8);
      }
    }
  }
}

- (id)scannerOrGraph
{
  scanner = self->_scanner;
  if (!scanner)
  {
    scanner = self->_graph;
  }

  return scanner;
}

- (id)labelForNode:(unsigned int)node details:(id)details shortLabel:(id)label
{
  labelCopy = label;
  v7 = *&node;
  if (VMUGraphNodeType_IsVMRegion(*(details.var0 + 8) >> 60) && (-[VMUTask isCore](self->_task, "isCore") || -[VMUTask taskPort](self->_task, "taskPort") && -[VMUTask taskPort](self->_task, "taskPort") != -1) && ((v9 = *details.var0, v10 = *MEMORY[0x1E69E9AA0], v19 = 0, -[VMUTask memoryCache](self->_task, "memoryCache", 1), v11 = objc_claimAutoreleasedReturnValue(), LODWORD(v9) = [v11 machVMPageRangeQueryWithAddress:v9 & ~v10 size:*MEMORY[0x1E69E9AC8] dispositions:&v19 dispositionsCount:&v18], v12 = v19 & 0x11, v11, !v9) ? (v13 = v12 == 0) : (v13 = 1), v13))
  {
    v14 = 0;
  }

  else
  {
    scannerOrGraph = [(VMULeakDetector *)self scannerOrGraph];
    v16 = scannerOrGraph;
    if (labelCopy)
    {
      [scannerOrGraph shortLabelForNode:v7];
    }

    else
    {
      [scannerOrGraph labelForNode:v7];
    }
    v14 = ;
  }

  return v14;
}

- (void)printContents:(void *)contents size:(unint64_t)size
{
  if (!contents)
  {
    v17 = "< content unavailable >\n";
    goto LABEL_24;
  }

  max_contents_bytes = self->_max_contents_bytes;
  if (max_contents_bytes >= size)
  {
    sizeCopy = size;
  }

  else
  {
    sizeCopy = self->_max_contents_bytes;
  }

  if (sizeCopy >= 4)
  {
    contentsCopy = contents;
    sizeCopy2 = size;
    v8 = sizeCopy >> 2;
    do
    {
      [(VMULeakDetector *)self printout:"\t"];
      if (v8 >= 4)
      {
        v9 = 4;
      }

      else
      {
        v9 = v8;
      }

      v10 = v9;
      v11 = contentsCopy;
      do
      {
        v12 = *v11++;
        [(VMULeakDetector *)self printout:"0x%08x ", v12];
        --v10;
      }

      while (v10);
      [(VMULeakDetector *)self printout:"\t"];
      if ((4 * v9) <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = (4 * v9);
      }

      v14 = contentsCopy;
      do
      {
        v16 = *v14;
        v14 = (v14 + 1);
        v15 = v16;
        if ((v16 - 32) >= 0x5F)
        {
          v15 = 46;
        }

        [(VMULeakDetector *)self printout:"%c", v15];
        --v13;
      }

      while (v13);
      [(VMULeakDetector *)self printout:"\n"];
      contentsCopy += v9;
      v8 -= v9;
    }

    while (v8);
    max_contents_bytes = self->_max_contents_bytes;
    size = sizeCopy2;
  }

  if (max_contents_bytes < size)
  {
    v17 = "\t...\n";
LABEL_24:

    [(VMULeakDetector *)self printout:v17];
  }
}

- (void)printLeak:(const char *)leak node:(unsigned int)node details:(id)details region:(id)region stop:
{
  v7 = *&node;
  regionCopy = region;
  IsVMRegion = VMUGraphNodeType_IsVMRegion(*(details.var0 + 8) >> 60);
  if ((self->_showLeakedVMregions || !IsVMRegion) && (IsVMRegion || !self->_showOnlyVMregions))
  {
    stackLogReader = self->_stackLogReader;
    if (stackLogReader)
    {
      if ([(VMUStackLogReader *)stackLogReader usesLiteMode])
      {
        v13 = [(VMUProcessObjectGraph *)self->_graph zoneNameForIndex:regionCopy[37]];
      }

      else
      {
        v13 = 0;
      }

      v15 = v13;
      if ([v15 hasPrefix:@"MallocStackLoggingLiteZone"])
      {
        v16 = [v15 hasPrefix:@"MallocStackLoggingLiteZone_Wrapper"] ^ 1;
      }

      else
      {
        v16 = 0;
      }

      if (self->_fullStacks)
      {
        v17 = 4;
      }

      else
      {
        v17 = 0;
      }

      v18 = self->_stackLogReader;
      v34 = *details.var0;
      v35 = *(details.var0 + 16);
      v14 = [(VMUStackLogReader *)v18 symbolicatedBacktraceForNode:v7 nodeDetails:&v34 isLiteZone:v16 options:v17];
    }

    else
    {
      v14 = 0;
    }

    if (v14 == VMUBacktraceIsExcludedMarker)
    {
      ++self->_numExcluded;
      goto LABEL_38;
    }

    [(VMULeakDetector *)self printout:"%s: %#llx  size=%llu  ", leak, *details.var0, *(details.var0 + 8) & 0xFFFFFFFFFFFFFFFLL];
    if (VMUGraphNodeType_IsVMRegion(*(details.var0 + 8) >> 60))
    {
      type = [regionCopy type];
      v20 = [type length];

      if (v20)
      {
        v21 = MEMORY[0x1E696AEC0];
        v22 = [regionCopy descriptionWithOptions:513 maximumLength:0];
        v23 = [v21 stringWithFormat:@"VM: %@", v22];
      }

      else
      {
        v23 = @"VM: unknown region type";
      }

      [(VMULeakDetector *)self printout:"%s", [(__CFString *)v23 UTF8String]];
    }

    else
    {
      v24 = [(VMUProcessObjectGraph *)self->_graph zoneNameForIndex:regionCopy[37]];
      -[VMULeakDetector printout:](self, "printout:", "zone: %s", [v24 UTF8String]);

      v25 = *(details.var0 + 16);
      if (!v25)
      {
LABEL_29:
        if ((self->_objectContentLevel & 0xFFFFFFFE) == 2)
        {
          v34 = *details.var0;
          v35 = *(details.var0 + 16);
          v30 = [(VMULeakDetector *)self labelForNode:v7 details:&v34 shortLabel:0];
          v31 = v30;
          if (v30)
          {
            -[VMULeakDetector printout:](self, "printout:", "   %s\n", [v30 UTF8String]);
          }

          else
          {
            showBinaryContents = self->_showBinaryContents;
            [(VMULeakDetector *)self printout:"\n"];
            if (showBinaryContents)
            {
              scannerOrGraph = [(VMULeakDetector *)self scannerOrGraph];
              -[VMULeakDetector printContents:size:](self, "printContents:size:", [scannerOrGraph contentForNode:v7], *(details.var0 + 8) & 0xFFFFFFFFFFFFFFFLL);
            }
          }

          if (!v14)
          {
            goto LABEL_38;
          }
        }

        else
        {
          [(VMULeakDetector *)self printout:"\n"];
          if (!v14)
          {
            goto LABEL_38;
          }
        }

        [(VMULeakDetector *)self printout:"\tCall stack: %s\n", [(__CFString *)v14 UTF8String]];
        [(VMULeakDetector *)self printout:"\n"];
LABEL_38:

        goto LABEL_39;
      }

      if (self->_showRawClassNames)
      {
        [v25 className];
      }

      else
      {
        [v25 displayName];
      }
      v23 = ;
      uTF8String = [(__CFString *)v23 UTF8String];
      typeName = [*(details.var0 + 16) typeName];
      uTF8String2 = [typeName UTF8String];
      binaryName = [*(details.var0 + 16) binaryName];
      -[VMULeakDetector printout:](self, "printout:", "   %s  %s  %s", uTF8String, uTF8String2, [binaryName UTF8String]);
    }

    goto LABEL_29;
  }

LABEL_39:
}

- (id)nodeTypeDescription:(unsigned int)description details:(id *)details mallocBySize:(id)size
{
  if (details)
  {
    v7 = details[1].var0 >> 60;
    if (v7 == 1)
    {
      sizeCopy = size;
      var0 = details[2].var0;
      if (self->_showRawClassNames)
      {
        [var0 className];
      }

      else
      {
        [var0 displayName];
      }
      v10 = ;
      if (v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = @"malloc-block";
      }

      if (!v10 && sizeCopy)
      {
        v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"malloc<%s>", VMUMemorySizeString(details[1].var0 & 0xFFFFFFFFFFFFFFFLL)];
      }
    }

    else
    {
      v12 = *&description;
      if (VMUGraphNodeType_IsVMRegion(v7))
      {
        v13 = [(VMUProcessObjectGraph *)self->_graph vmuVMRegionForNode:v12];
        v14 = MEMORY[0x1E696AEC0];
        type = [v13 type];
        v11 = [v14 stringWithFormat:@"VM: %@", type];
      }

      else
      {
        v16 = details[1].var0 >> 60;
        v17 = @"thread";
        if (v16 != 4)
        {
          v17 = 0;
        }

        if (v16 == 3)
        {
          v11 = @"kernel";
        }

        else
        {
          v11 = v17;
        }
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)nodeDescription:(unsigned int)description usingDetails:(id *)details
{
  if (self->_groupByType)
  {
    [(VMULeakDetector *)self nodeTypeDescription:*&description details:details mallocBySize:1];
  }

  else
  {
    [(VMUProcessObjectGraph *)self->_graph nodeDescription:*&description withOffset:0 showLabel:(self->_objectContentLevel & 0xFFFFFFFE) == 2];
  }
  v5 = ;

  return v5;
}

- (id)nodeDescription:(unsigned int)description
{
  v3 = *&description;
  memset(v8, 0, sizeof(v8));
  graph = self->_graph;
  if (graph)
  {
    objc_msgSend_nodeDetails_(graph, a2, *&description);
  }

  v6 = [(VMULeakDetector *)self nodeDescription:v3 usingDetails:v8];

  return v6;
}

- (id)referenceDescription:(id *)description dstDescription:(id)dstDescription is64bit:(BOOL)is64bit
{
  is64bitCopy = is64bit;
  dstDescriptionCopy = dstDescription;
  v8 = objc_opt_class();
  v9 = *&description->var1.var1;
  v12[0] = *&description->var0;
  v12[1] = v9;
  var2 = description->var2;
  v10 = [v8 referenceDescription:v12 dstDescription:dstDescriptionCopy is64bit:is64bitCopy];

  return v10;
}

+ (id)referenceDescription:(id *)description dstDescription:(id)dstDescription is64bit:(BOOL)is64bit
{
  is64bitCopy = is64bit;
  dstDescriptionCopy = dstDescription;
  v8 = *(description->var0 + 2);
  v9 = 3;
  if (is64bitCopy)
  {
    v9 = 7;
  }

  if ((description->var1.var0 & v9) != 0 && *(description->var0 + 1) >> 60 != 3)
  {
    dstDescriptionCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"unaligned +%lld:  --> %@", description->var1.var0, dstDescriptionCopy];

    dstDescriptionCopy = dstDescriptionCopy;
  }

  else
  {
    displayName = [*(description->var2 + 2) displayName];
    v11 = [displayName hasSuffix:@"Storage"]);

    if ((v11 & 1) == 0)
    {
      v12 = [v8 fieldAtOrBeforeOffset:LODWORD(description->var1.var0)];
      v13 = v12;
      if (v12)
      {
        var0 = description->var1.var0;
        v15 = var0 - [v12 offset];
        v23 = 0;
        v16 = [v13 getLeafFieldAtOffset:v15 leafOffset:&v23];
        v17 = [v13 fullIvarNameAtOffset:v15];
        v18 = VMUScanTypeKeywordDescription([v16 scanType]);
        if (v18 && *v18)
        {
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s ", v18];
        }

        else
        {
          v19 = &stru_1F461F9C8;
        }

        dstDescriptionCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@ --> %@", v19, v17, dstDescriptionCopy];

        dstDescriptionCopy = dstDescriptionCopy2;
      }
    }
  }

  return dstDescriptionCopy;
}

- (void)buildLeakTree
{
  v164 = *MEMORY[0x1E69E9840];
  v2 = [(VMUDirectedGraph *)self->_graph subgraphWithMarkedNodes:self->_leakedNodes];
  [(VMULeakDetector *)self setLeakedGraph:v2];

  v120 = malloc_type_calloc([(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize], 8uLL, 0x80040B8603338uLL);
  v112 = [[VMUCallTreeRootWithBacktrace alloc] initWithSymbolicator:0 sampler:0 options:0, 0];
  v159 = 0;
  v160 = &v159;
  v161 = 0x2020000000;
  v162 = 0;
  v3 = 4 * [(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize];
  LODWORD(__pattern4._pi) = -1;
  v111 = malloc_type_malloc(v3, 0x100004052888210uLL);
  memset_pattern4(v111, &__pattern4, v3);
  LODWORD(v3) = [(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize];
  v4 = malloc_type_calloc(1uLL, ((v3 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v4 = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __32__VMULeakDetector_buildLeakTree__block_invoke;
  aBlock[3] = &unk_1E8277FE8;
  aBlock[5] = v111;
  aBlock[4] = &v159;
  v110 = v4;
  aBlock[6] = v4;
  v5 = _Block_copy(aBlock);
  selfCopy5 = self;
  v7 = [(VMUProcessObjectGraph *)self->_leakedGraph copy];
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
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy5 = self;
      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"buildLeakTree"];
  [(VMUDebugTimer *)selfCopy5->_debugTimer startWithCategory:"buildLeakTree" message:"identifying strongly-connected-components (cycles) in the graph"];
  v12 = selfCopy5->_debugTimer;
  if (v12)
  {
    logHandle2 = [(VMUDebugTimer *)v12 logHandle];
    signpostID3 = [(VMUDebugTimer *)selfCopy5->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "buildLeakTree", "identifying strongly-connected-components (cycles) in the graph", &__pattern4, 2u);
    }

    selfCopy5 = self;
  }

  leakedGraph = selfCopy5->_leakedGraph;
  v157[0] = MEMORY[0x1E69E9820];
  v157[1] = 3221225472;
  v157[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_63;
  v157[3] = &unk_1E8278010;
  v157[4] = selfCopy5;
  [(VMUObjectGraph *)leakedGraph stronglyConnectedComponentSearch:0xFFFFFFFFLL withRecorder:v157];
  v16 = selfCopy5->_debugTimer;
  if (v16)
  {
    signpostID4 = [(VMUDebugTimer *)v16 signpostID];
    v16 = selfCopy5->_debugTimer;
    if (signpostID4)
    {
      logHandle3 = [(VMUDebugTimer *)v16 logHandle];
      signpostID5 = [(VMUDebugTimer *)selfCopy5->_debugTimer signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID5, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy5 = self;
      v16 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v16 endEvent:"buildLeakTree"];
  [(VMUDebugTimer *)selfCopy5->_debugTimer startWithCategory:"buildLeakTree" message:"identifying root leaks and cycles"];
  v20 = selfCopy5->_debugTimer;
  if (v20)
  {
    logHandle4 = [(VMUDebugTimer *)v20 logHandle];
    signpostID6 = [(VMUDebugTimer *)selfCopy5->_debugTimer signpostID];
    if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle4))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle4, OS_SIGNPOST_INTERVAL_BEGIN, signpostID6, "buildLeakTree", "identifying root leaks and cycles", &__pattern4, 2u);
    }

    selfCopy5 = self;
  }

  v113 = selfCopy5->_stackLogReader;
  if (v113)
  {
    v23 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:256];
    if ([(VMUStackLogReader *)v113 inspectingLiveProcess]&& [(VMUStackLogReader *)v113 usesLiteMode])
    {
      for (i = 0; i < [v7 zoneCount]; i = (i + 1))
      {
        v25 = [v7 zoneNameForIndex:i];
        if ([v25 hasPrefix:@"MallocStackLoggingLiteZone"])
        {
          v26 = [v25 hasPrefix:@"MallocStackLoggingLiteZone_Wrapper"];

          if ((v26 & 1) == 0)
          {

            goto LABEL_35;
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v23 = 0;
  }

  LODWORD(i) = -1;
LABEL_35:
  nodeNamespaceSize = [(VMUDirectedGraph *)self->_leakedGraph nodeNamespaceSize];
  v119 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v119 = nodeNamespaceSize;
  invertedGraph = [(VMUDirectedGraph *)self->_leakedGraph invertedGraph];
  v29 = objc_opt_new();
  v147[0] = MEMORY[0x1E69E9820];
  v147[1] = 3221225472;
  v147[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_68;
  v147[3] = &unk_1E8278060;
  v30 = invertedGraph;
  v148 = v30;
  selfCopy6 = self;
  v105 = v29;
  v150 = v105;
  v155 = v119;
  v109 = v5;
  v154 = v109;
  v116 = v113;
  v151 = v116;
  v115 = v7;
  v152 = v115;
  v156 = i;
  table = v23;
  v153 = table;
  [v30 enumerateObjectsWithBlock:v147];

  if (v113 && (![(VMUStackLogReader *)v116 usesLiteMode]|| ([(VMUStackLogReader *)v116 inspectingLiveProcess]& 1) == 0))
  {
    v31 = self->_debugTimer;
    if (v31)
    {
      signpostID7 = [(VMUDebugTimer *)v31 signpostID];
      v31 = self->_debugTimer;
      if (signpostID7)
      {
        logHandle5 = [(VMUDebugTimer *)v31 logHandle];
        signpostID8 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle5))
        {
          LOWORD(__pattern4._pi) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle5, OS_SIGNPOST_INTERVAL_END, signpostID8, "buildLeakTree", "", &__pattern4, 2u);
        }

        v31 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v31 endEvent:"buildLeakTree"];
    [(VMUDebugTimer *)self->_debugTimer startWithCategory:"buildLeakTree" message:"enumerate stack logs to populate rootLeakAddressToStackIDMap"];
    v35 = self->_debugTimer;
    if (v35)
    {
      logHandle6 = [(VMUDebugTimer *)v35 logHandle];
      signpostID9 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle6))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle6, OS_SIGNPOST_INTERVAL_BEGIN, signpostID9, "buildLeakTree", "enumerate stack logs to populate rootLeakAddressToStackIDMap", &__pattern4, 2u);
      }
    }

    v145[0] = MEMORY[0x1E69E9820];
    v145[1] = 3221225472;
    v145[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_79;
    v145[3] = &unk_1E8278088;
    v146 = table;
    [(VMUStackLogReader *)v116 enumerateMSLRecordsAndPayloads:v145];
  }

  v38 = objc_opt_new();
  [(VMULeakDetector *)self setLeakTreeRootsArray:v38];

  if (v113)
  {
    selfCopy8 = self;
    v40 = self->_debugTimer;
    if (v40)
    {
      signpostID10 = [(VMUDebugTimer *)v40 signpostID];
      v40 = self->_debugTimer;
      if (signpostID10)
      {
        logHandle7 = [(VMUDebugTimer *)v40 logHandle];
        signpostID11 = [(VMUDebugTimer *)self->_debugTimer signpostID];
        if (signpostID11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle7))
        {
          LOWORD(__pattern4._pi) = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle7, OS_SIGNPOST_INTERVAL_END, signpostID11, "buildLeakTree", "", &__pattern4, 2u);
        }

        selfCopy8 = self;
        v40 = self->_debugTimer;
      }
    }

    [(VMUDebugTimer *)v40 endEvent:"buildLeakTree", v105];
    [(VMUDebugTimer *)selfCopy8->_debugTimer startWithCategory:"buildLeakTree" message:"invert rootLeakAddressToStackIDMap to produce stackID --> {size, count, root-leak-call-tree-root} map"];
    v44 = selfCopy8->_debugTimer;
    if (v44)
    {
      logHandle8 = [(VMUDebugTimer *)v44 logHandle];
      signpostID12 = [(VMUDebugTimer *)selfCopy8->_debugTimer signpostID];
      if (signpostID12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle8))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle8, OS_SIGNPOST_INTERVAL_BEGIN, signpostID12, "buildLeakTree", "invert rootLeakAddressToStackIDMap to produce stackID --> {size,count,root-leak-call-tree-root} map", &__pattern4, 2u);
      }
    }

    v118 = malloc_type_calloc([v115 nodeNamespaceSize], 8uLL, 0x80040B8603338uLL);
    v117 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:258 valueOptions:0];
    memset(&__pattern4, 0, sizeof(__pattern4));
    NSEnumerateMapTable(&__pattern4, table);
    value = 0;
    key = 0;
    while (NSNextMapEnumeratorPair(&__pattern4, &key, &value))
    {
      v47 = NSMapGet(v117, value);
      if (!v47)
      {
        v48 = objc_autoreleasePoolPush();
        v47 = [[VMUCallTreeRootWithBacktrace alloc] initWithSymbolicator:0 sampler:0 options:0, 0];
        if (self->_fullStacks)
        {
          v49 = 68;
        }

        else
        {
          v49 = 64;
        }

        v50 = [(VMUStackLogReader *)v116 symbolicatedBacktraceForStackID:value options:v49];
        [(VMUCallTreeRootWithBacktrace *)v47 setBacktraceString:v50];

        [(NSMutableArray *)self->_leakTreeRootsArray addObject:v47];
        NSMapInsert(v117, value, v47);
        objc_autoreleasePoolPop(v48);
      }
    }

    NSEndMapTableEnumeration(&__pattern4);
  }

  else
  {
    v117 = 0;
    v118 = 0;
  }

  selfCopy10 = self;
  v114 = kVMURootRetainCycle[0];
  v108 = [(__CFString *)v114 length];
  v52 = self->_debugTimer;
  if (v52)
  {
    signpostID13 = [(VMUDebugTimer *)v52 signpostID];
    v52 = self->_debugTimer;
    if (signpostID13)
    {
      logHandle9 = [(VMUDebugTimer *)v52 logHandle];
      signpostID14 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle9))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle9, OS_SIGNPOST_INTERVAL_END, signpostID14, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy10 = self;
      v52 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v52 endEvent:"buildLeakTree", v105];
  [(VMUDebugTimer *)selfCopy10->_debugTimer startWithCategory:"buildLeakTree" message:"building call tree from references"];
  v56 = selfCopy10->_debugTimer;
  if (v56)
  {
    logHandle10 = [(VMUDebugTimer *)v56 logHandle];
    signpostID15 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle10))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle10, OS_SIGNPOST_INTERVAL_BEGIN, signpostID15, "buildLeakTree", "building call tree from references", &__pattern4, 2u);
    }
  }

  if (*(v160 + 6))
  {
    v59 = 0;
    do
    {
      v60 = objc_autoreleasePoolPush();
      v61 = v111[v59];
      v62 = v112;
      v63 = v120[v61];
      if (v63)
      {
        v64 = v63;
        if (v113)
        {
          v65 = v118[v61];

          v62 = v65;
        }
      }

      else
      {
        memset(&__pattern4, 0, sizeof(__pattern4));
        selfCopy12 = self;
        if (v115)
        {
          objc_msgSend_nodeDetails_(v115);
        }

        if ([(VMUDirectedGraph *)self->_leakedGraph parentGroupForNode:v61]== -1)
        {
          v67 = @"ROOT LEAK: ";
        }

        else
        {
          v67 = v114;
        }

        if (v113)
        {
          v68 = NSMapGet(table, __pattern4._pi);
          if (v68)
          {
            v69 = NSMapGet(v117, v68);

            v118[v61] = v69;
            v62 = v69;
            selfCopy12 = self;
          }
        }

        v70 = [(VMULeakDetector *)selfCopy12 nodeDescription:v61 usingDetails:&__pattern4];
        v71 = [(__CFString *)v67 stringByAppendingString:v70];

        if (self->_groupByType)
        {
          [(VMUCallTreeRoot *)v62 addChildWithName:v71 address:0 count:1 numBytes:__pattern4._si & 0xFFFFFFFFFFFFFFFLL toNode:v62];
        }

        else
        {
          [(VMUCallTreeRoot *)v62 addUniqueChildWithName:v71 address:__pattern4._pi count:1 numBytes:__pattern4._si & 0xFFFFFFFFFFFFFFFLL toNode:v62 isLeafNode:0];
        }
        v64 = ;
        v120[v61] = v64;
      }

      if (*v119 > v61 && ((*(v119 + (v61 >> 3) + 4) >> (v61 & 7)) & 1) != 0 && (v72 = v64) != 0)
      {
        v73 = v72;
        v74 = 0;
        do
        {
          parent = [v73 parent];
          if (parent)
          {
            parent2 = [v73 parent];
            v76Parent = [parent2 parent];
            v78 = v76Parent == 0;

            if (v78)
            {
              name = [v73 name];

              v74 = name;
            }
          }

          parent3 = [v73 parent];

          v73 = parent3;
        }

        while (parent3);
      }

      else
      {
        v74 = 0;
      }

      __pattern4._pi = 0;
      __pattern4._si = &__pattern4;
      __pattern4._bs = 0x2020000000;
      v142 = 0;
      v126[0] = MEMORY[0x1E69E9820];
      v126[1] = 3221225472;
      v126[2] = __32__VMULeakDetector_buildLeakTree__block_invoke_87;
      v126[3] = &unk_1E82780B0;
      v136 = v120;
      v81 = v74;
      v127 = v81;
      p_pattern4 = &__pattern4;
      v137 = v108;
      v82 = v115;
      v128 = v82;
      v83 = v62;
      v129 = v83;
      v84 = v64;
      v130 = v84;
      v138 = v110;
      v134 = v109;
      selfCopy13 = self;
      v139 = v119;
      v132 = v114;
      v133 = v116;
      v140 = v118;
      [v82 enumerateReferencesOfNode:v61 withBlock:v126];

      _Block_object_dispose(&__pattern4, 8);
      objc_autoreleasePoolPop(v60);
      ++v59;
    }

    while (v59 != *(v160 + 6));
  }

  v85 = self->_debugTimer;
  if (v85)
  {
    signpostID16 = [(VMUDebugTimer *)v85 signpostID];
    v85 = self->_debugTimer;
    if (signpostID16)
    {
      logHandle11 = [(VMUDebugTimer *)v85 logHandle];
      signpostID17 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID17 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle11))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle11, OS_SIGNPOST_INTERVAL_END, signpostID17, "buildLeakTree", "", &__pattern4, 2u);
      }

      v85 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v85 endEvent:"buildLeakTree"];
  free(v111);
  free(v110);
  free(v119);
  free(v120);
  free(v118);

  selfCopy16 = self;
  if ([(VMUCallTreeNode *)v112 numChildren])
  {
    [(NSMutableArray *)self->_leakTreeRootsArray addObject:v112];
  }

  v90 = self->_debugTimer;
  if (v90)
  {
    signpostID18 = [(VMUDebugTimer *)v90 signpostID];
    v90 = self->_debugTimer;
    if (signpostID18)
    {
      logHandle12 = [(VMUDebugTimer *)v90 logHandle];
      signpostID19 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle12))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle12, OS_SIGNPOST_INTERVAL_END, signpostID19, "buildLeakTree", "", &__pattern4, 2u);
      }

      selfCopy16 = self;
      v90 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v90 endEvent:"buildLeakTree"];
  [(VMUDebugTimer *)selfCopy16->_debugTimer startWithCategory:"buildLeakTree" message:"addChildCountsIntoNode"];
  v94 = selfCopy16->_debugTimer;
  if (v94)
  {
    logHandle13 = [(VMUDebugTimer *)v94 logHandle];
    signpostID20 = [(VMUDebugTimer *)selfCopy16->_debugTimer signpostID];
    if (signpostID20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle13))
    {
      LOWORD(__pattern4._pi) = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle13, OS_SIGNPOST_INTERVAL_BEGIN, signpostID20, "buildLeakTree", "addChildCountsIntoNode", &__pattern4, 2u);
    }

    selfCopy16 = self;
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v97 = selfCopy16->_leakTreeRootsArray;
  v98 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v122 objects:v163 count:16];
  if (v98)
  {
    v99 = *v123;
    do
    {
      for (j = 0; j != v98; ++j)
      {
        if (*v123 != v99)
        {
          objc_enumerationMutation(v97);
        }

        [*(*(&v122 + 1) + 8 * j) addChildCountsIntoNode];
      }

      v98 = [(NSMutableArray *)v97 countByEnumeratingWithState:&v122 objects:v163 count:16];
    }

    while (v98);
  }

  [(NSMutableArray *)self->_leakTreeRootsArray sortUsingSelector:sel_comparePuttingRetainCycleNodesAtTop_];
  v101 = self->_debugTimer;
  if (v101)
  {
    signpostID21 = [(VMUDebugTimer *)v101 signpostID];
    v101 = self->_debugTimer;
    if (signpostID21)
    {
      logHandle14 = [(VMUDebugTimer *)v101 logHandle];
      signpostID22 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle14))
      {
        LOWORD(__pattern4._pi) = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle14, OS_SIGNPOST_INTERVAL_END, signpostID22, "buildLeakTree", "", &__pattern4, 2u);
      }

      v101 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v101 endEvent:"buildLeakTree"];

  _Block_object_dispose(&v159, 8);
}

void *__32__VMULeakDetector_buildLeakTree__block_invoke(void *result, unsigned int a2)
{
  v2 = result[5];
  v3 = *(result[4] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  *(v2 + 4 * v4) = a2;
  v5 = result[6];
  if (*v5 > a2)
  {
    *(v5 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
  }

  return result;
}

void *__32__VMULeakDetector_buildLeakTree__block_invoke_63(void *result, uint64_t a2, uint64_t a3)
{
  if (a3 >= 2)
  {
    return [*(result[4] + 128) addGroupNodeForNodes:a2 count:a3];
  }

  return result;
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_68(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if ([*(a1 + 32) isRootNode:a2])
  {
    if ([*(*(a1 + 40) + 128) isGroupNode:v2])
    {
      v40[0] = 0;
      v40[1] = v40;
      v40[2] = 0x2020000000;
      v41 = 0;
      v36 = 0;
      v37 = &v36;
      v38 = 0x2020000000;
      v39 = 0;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = -1;
      key = 0;
      p_key = &key;
      v26 = 0x3032000000;
      v27 = __Block_byref_object_copy__2;
      v28 = __Block_byref_object_dispose__2;
      v29 = 0;
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      v6 = *(v5 + 128);
      v12 = MEMORY[0x1E69E9820];
      v13 = 3221225472;
      v14 = __32__VMULeakDetector_buildLeakTree__block_invoke_69;
      v15 = &unk_1E8278038;
      v16 = v5;
      v17 = v4;
      v18 = &key;
      v19 = &v36;
      v20 = &v30;
      v7 = *(a1 + 88);
      v22 = v40;
      v23 = v7;
      v21 = v34;
      [v6 enumerateMembersOfGroupNode:v2 withBlock:&v12];
      v2 = *(v31 + 6);
      if (*(v37 + 6) == 6)
      {
        [*(a1 + 48) addObject:{p_key[5], v12, v13, v14, v15, v16}];
      }

      _Block_object_dispose(&key, 8);
      _Block_object_dispose(&v30, 8);
      _Block_object_dispose(v34, 8);
      _Block_object_dispose(&v36, 8);
      _Block_object_dispose(v40, 8);
    }

    (*(*(a1 + 80) + 16))();
    v8 = *(a1 + 56);
    if (v8)
    {
      key = 0;
      p_key = 0;
      v26 = 0;
      if (*(a1 + 64))
      {
        objc_msgSend_nodeDetails_(*(a1 + 64));
        v8 = *(a1 + 56);
      }

      if ([v8 inspectingLiveProcess] && objc_msgSend(*(a1 + 56), "usesLiteMode"))
      {
        v9 = [*(a1 + 64) vmuVMRegionForNode:v2];
        v10 = v9;
        if (v9 && *(v9 + 148) == *(a1 + 96))
        {
          [*(a1 + 56) liteMSLPayloadforMallocAddress:key size:p_key & 0xFFFFFFFFFFFFFFFLL];
          uniquing_table_index = msl_payload_get_uniquing_table_index();
        }

        else
        {
          uniquing_table_index = -1;
        }
      }

      else
      {
        uniquing_table_index = -1;
      }

      NSMapInsert(*(a1 + 72), key, uniquing_table_index);
    }
  }
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_69(void *a1, const char *a2)
{
  v2 = a2;
  v4 = *(a1[4] + 128);
  if (v4)
  {
    objc_msgSend_nodeDetails_(v4, a2, a2);
  }

  v5 = *(a1[7] + 8);
  if (!*(v5 + 24))
  {
    *(v5 + 24) = 1;
    *(*(a1[8] + 8) + 24) = v2;
  }

  if (*(*(a1[7] + 8) + 24) != 5)
  {
    *(*(a1[9] + 8) + 24) = 0;
  }

  v6 = a1[11];
  if (*v6 > v2)
  {
    *(v6 + (v2 >> 3) + 4) |= 1 << (v2 & 7);
  }

  ++*(*(a1[10] + 8) + 24);
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_79(uint64_t a1, char a2, void *key, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x12) != 0)
  {
    if (!NSMapGet(*(a1 + 32), key))
    {
      return;
    }

    uniquing_table_index = msl_payload_get_uniquing_table_index();
    v8 = *(a1 + 32);
    v9 = key;
  }

  else
  {
    if ((a2 & 0x24) == 0 || !NSMapGet(*(a1 + 32), key))
    {
      return;
    }

    v8 = *(a1 + 32);
    v9 = key;
    uniquing_table_index = -1;
  }

  NSMapInsert(v8, v9, uniquing_table_index);
}

void __32__VMULeakDetector_buildLeakTree__block_invoke_87(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v8 = objc_autoreleasePoolPush();
  if (VMUIsOwningReference(*(a5 + 4)))
  {
    v9 = *(*(a1 + 104) + 8 * a4);
    v10 = v9;
    if (v9 && (v11 = *(a1 + 32), [v9 name], v12 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend(v11, "isEqualToString:", v12), v12, v11))
    {
      if (*(*(*(a1 + 96) + 8) + 24))
      {
LABEL_25:

        goto LABEL_26;
      }

      v13 = [v10 name];
      v14 = [v13 substringFromIndex:*(a1 + 112)];

      v15 = [@"CYCLE BACK TO " stringByAppendingString:v14];
      v16 = [*(a1 + 40) is64bit];
      v17 = a5[1];
      v35 = *a5;
      v36 = v17;
      v37 = *(a5 + 4);
      v18 = [VMULeakDetector referenceDescription:&v35 dstDescription:v15 is64bit:v16];

      v19 = [*(a1 + 48) addChildWithName:v18 address:0 count:0 numBytes:0 toNode:*(a1 + 56)];
      *(*(*(a1 + 96) + 8) + 24) = 1;
    }

    else
    {
      v20 = *(a1 + 120);
      if (*v20 > a4 && ((*(v20 + (a4 >> 3) + 4) >> (a4 & 7)) & 1) != 0)
      {
        goto LABEL_25;
      }

      (*(*(a1 + 88) + 16))();
      v21 = *(a5 + 4);
      v22 = [*(a1 + 64) nodeDescription:a4 usingDetails:v21];
      v23 = *(a1 + 128);
      if (*v23 > a4 && ((*(v23 + (a4 >> 3) + 4) >> (a4 & 7)) & 1) != 0)
      {
        v24 = [*(a1 + 72) stringByAppendingString:v22];

        v22 = v24;
      }

      v25 = [*(a1 + 40) is64bit];
      v26 = a5[1];
      v35 = *a5;
      v36 = v26;
      v37 = *(a5 + 4);
      v14 = [VMULeakDetector referenceDescription:&v35 dstDescription:v22 is64bit:v25];

      if ((*(*(a1 + 64) + 17) & 1) == 0 && VMUGraphNodeType_IsVMRegion(v21[1] >> 60))
      {
        v27 = [*(a1 + 40) vmuVMRegionForNode:a4];
        v28 = v27;
        v21[1] = v21[1] & 0xF000000000000000 | (v27[22] + v27[23] - v27[24]) & 0xFFFFFFFFFFFFFFFLL;
        if ((*(*(a1 + 64) + 16) & 1) == 0)
        {
          v29 = MEMORY[0x1E696AEC0];
          v30 = VMUMemorySizeString(v27[23]);
          v31 = [v29 stringWithFormat:@"%@  dirty: %s  swapped: %s", v14, v30, VMUMemorySizeString(v28[22])];

          v32 = v28[24];
          if (v32)
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  purgableVolatile: %s", v31, VMUMemorySizeString(v32)];
          }

          else
          {
            v14 = v31;
          }
        }
      }

      v18 = *(a1 + 56);
      v33 = *(a1 + 48);
      if (*(*(a1 + 64) + 16) == 1)
      {
        [v33 addChildWithName:v14 address:0 count:1 numBytes:v21[1] & 0xFFFFFFFFFFFFFFFLL toNode:v18];
      }

      else
      {
        [v33 addUniqueChildWithName:v14 address:*v21 count:1 numBytes:v21[1] & 0xFFFFFFFFFFFFFFFLL toNode:v18 isLeafNode:0];
      }
      v34 = ;

      *(*(a1 + 104) + 8 * a4) = v34;
      if (*(a1 + 80))
      {
        *(*(a1 + 136) + 8 * a4) = *(a1 + 48);
      }

      v10 = v34;
    }

    goto LABEL_25;
  }

LABEL_26:
  objc_autoreleasePoolPop(v8);
}

+ (id)_consolidatedRootLeakDescriptionsForTree:(id)tree
{
  v32 = *MEMORY[0x1E69E9840];
  treeCopy = tree;
  if (_consolidatedRootLeakDescriptionsForTree__onceToken != -1)
  {
    +[VMULeakDetector _consolidatedRootLeakDescriptionsForTree:];
  }

  v4 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = treeCopy;
  obj = [treeCopy sortedChildren];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v27 + 1) + 8 * i);
        name = [v9 name];
        v11 = [name containsString:@": 0x"];

        if (v11)
        {
          v12 = &_consolidatedRootLeakDescriptionsForTree__rootLeakMallocTypeNameRegex;
          v13 = @"$1: malloc[$2]";
        }

        else
        {
          name2 = [v9 name];
          v15 = [name2 containsString:@": VM: "];

          v12 = &_consolidatedRootLeakDescriptionsForTree__rootLeakTypeNameRegex;
          if (v15)
          {
            v12 = &_consolidatedRootLeakDescriptionsForTree__rootLeakVMRegionTypeNameRegex;
            v13 = @"$1: $2";
          }

          else
          {
            v13 = @"$1: <$2>";
          }
        }

        v16 = *v12;
        name3 = [v9 name];
        name4 = [v9 name];
        v19 = [v16 stringByReplacingMatchesInString:name3 options:0 range:0 withTemplate:{objc_msgSend(name4, "length"), v13}];

        LODWORD(name4) = [v9 count];
        v20 = name4 - [v9 sumOfChildCounts];
        v21 = [v4 objectForKeyedSubscript:v19];
        v22 = v21;
        if (v21)
        {
          v20 = [v21 unsignedIntValue] + v20;
        }

        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v20];
        [v4 setObject:v23 forKeyedSubscript:v19];
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v6);
  }

  return v4;
}

void __60__VMULeakDetector__consolidatedRootLeakDescriptionsForTree___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(ROOT LEAK|CYCLE): 0x[0-9a-f]+ \\[(.*)\\].*" options:0 error:0];
  v1 = _consolidatedRootLeakDescriptionsForTree__rootLeakMallocTypeNameRegex;
  _consolidatedRootLeakDescriptionsForTree__rootLeakMallocTypeNameRegex = v0;

  v2 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(ROOT LEAK|CYCLE): (VM: .*)  0x.*" options:0 error:0];
  v3 = _consolidatedRootLeakDescriptionsForTree__rootLeakVMRegionTypeNameRegex;
  _consolidatedRootLeakDescriptionsForTree__rootLeakVMRegionTypeNameRegex = v2;

  v4 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(ROOT LEAK|CYCLE): <(.*) 0x[0-9a-f]+>* \\[\\d+\\].*" options:0 error:0];
  v5 = _consolidatedRootLeakDescriptionsForTree__rootLeakTypeNameRegex;
  _consolidatedRootLeakDescriptionsForTree__rootLeakTypeNameRegex = v4;
}

- (void)printLeakTree
{
  v58 = *MEMORY[0x1E69E9840];
  debugTimer = self->_debugTimer;
  if (debugTimer)
  {
    signpostID = [(VMUDebugTimer *)debugTimer signpostID];
    debugTimer = self->_debugTimer;
    if (signpostID)
    {
      logHandle = [(VMUDebugTimer *)debugTimer logHandle];
      signpostID2 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v7 = signpostID2;
        if (os_signpost_enabled(logHandle))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, v7, "printLeakTree", "", buf, 2u);
        }
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"printLeakTree"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"printLeakTree" message:""];
  v8 = self->_debugTimer;
  if (v8)
  {
    logHandle2 = [(VMUDebugTimer *)v8 logHandle];
    signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v11 = signpostID3;
      if (os_signpost_enabled(logHandle2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, v11, "printLeakTree", "", buf, 2u);
      }
    }
  }

  if ([(NSMutableArray *)self->_leakTreeRootsArray count]== 1)
  {
    v12 = 74;
  }

  else
  {
    v12 = 76;
  }

  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = self->_leakTreeRootsArray;
  v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v52;
    v41 = *v52;
    v42 = v12;
    do
    {
      v16 = 0;
      v43 = v14;
      do
      {
        if (*v52 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v51 + 1) + 8 * v16);
        if (self->_stackLogReader)
        {
          backtraceString = [*(*(&v51 + 1) + 8 * v16) backtraceString];
          v19 = VMUBacktraceIsExcludedMarker;

          if (backtraceString == v19)
          {
            self->_numExcluded += [v17 count];
            goto LABEL_41;
          }

          v46 = v16;
          backtraceString2 = [v17 backtraceString];
          v21 = [backtraceString2 length];

          if (v21)
          {
            v44 = v17;
            v22 = [VMULeakDetector _consolidatedRootLeakDescriptionsForTree:v17];
            v23 = [v22 keysSortedByValueUsingComparator:&__block_literal_global_134];
            lastObject = [v23 lastObject];
            [(VMULeakDetector *)self printout:"STACK OF "];
            v49 = 0u;
            v50 = 0u;
            v47 = 0u;
            v48 = 0u;
            v25 = v23;
            v26 = [v25 countByEnumeratingWithState:&v47 objects:v56 count:16];
            if (v26)
            {
              v27 = v26;
              v28 = *v48;
              do
              {
                for (i = 0; i != v27; ++i)
                {
                  if (*v48 != v28)
                  {
                    objc_enumerationMutation(v25);
                  }

                  v30 = *(*(&v47 + 1) + 8 * i);
                  v31 = [v22 objectForKeyedSubscript:v30];
                  unsignedIntValue = [v31 unsignedIntValue];

                  if (unsignedIntValue <= 1)
                  {
                    v33 = "INSTANCE";
                  }

                  else
                  {
                    v33 = "INSTANCES";
                  }

                  -[VMULeakDetector printout:](self, "printout:", "%u %s OF '%s'", unsignedIntValue, v33, [v30 UTF8String]);
                  if (v30 == lastObject)
                  {
                    v34 = ":";
                  }

                  else
                  {
                    v34 = ", ";
                  }

                  [(VMULeakDetector *)self printout:v34];
                }

                v27 = [v25 countByEnumeratingWithState:&v47 objects:v56 count:16];
              }

              while (v27);
            }

            v17 = v44;
            backtraceString3 = [v44 backtraceString];
            -[VMULeakDetector printout:](self, "printout:", "%s\n", [backtraceString3 UTF8String]);

            v12 = v42;
            v14 = v43;
            v15 = v41;
          }

          else
          {
            [(VMULeakDetector *)self printout:"NO STACK\n"];
          }

          [(VMULeakDetector *)self printout:"====\n"];
          v16 = v46;
        }

        [v17 printCallTreeToFile:self->_outputFile cumulativeOutput:self->_outputString options:v12];
        [(VMULeakDetector *)self printout:"\n"];
LABEL_41:
        ++v16;
      }

      while (v16 != v14);
      v14 = [(NSMutableArray *)obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v14);
  }

  v36 = self->_debugTimer;
  if (v36)
  {
    signpostID4 = [(VMUDebugTimer *)v36 signpostID];
    v36 = self->_debugTimer;
    if (signpostID4)
    {
      logHandle3 = [(VMUDebugTimer *)v36 logHandle];
      signpostID5 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v40 = signpostID5;
        if (os_signpost_enabled(logHandle3))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, v40, "printLeakTree", "", buf, 2u);
        }
      }

      v36 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v36 endEvent:"printLeakTree"];
}

- (unsigned)detectLeaksWithError:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40__VMULeakDetector_detectLeaksWithError___block_invoke;
  aBlock[3] = &unk_1E82780F8;
  aBlock[4] = self;
  aBlock[5] = &v40;
  aBlock[6] = &v36;
  v5 = _Block_copy(aBlock);
  [(VMUObjectGraph *)self->_graph enumerateObjectsWithBlock:v5];
  self->_allocationsCount = *(v37 + 6);
  self->_allocationsSize = v41[3];
  if (![(VMULeakDetector *)self checkTaskExistence])
  {
LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  if (!self->_allocationsCount)
  {
    if (error)
    {
      v23 = MEMORY[0x1E696ABC0];
      v44 = @"message";
      v45[0] = @"unable to inspect heap ranges of target process; it may be using a malloc replacement library without the required support";
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
      *error = [v23 errorWithDomain:@"VMULeakDetectorDomain" code:1 userInfo:v24];
    }

    goto LABEL_25;
  }

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
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle, OS_SIGNPOST_INTERVAL_END, signpostID2, "VMULeakDetector", "", buf, 2u);
      }

      debugTimer = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)debugTimer endEvent:"VMULeakDetector"];
  [(VMUDebugTimer *)self->_debugTimer startWithCategory:"VMULeakDetector" message:"scan for leaks"];
  v10 = self->_debugTimer;
  if (v10)
  {
    logHandle2 = [(VMUDebugTimer *)v10 logHandle];
    signpostID3 = [(VMUDebugTimer *)self->_debugTimer signpostID];
    if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle2, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "VMULeakDetector", "scan for leaks", buf, 2u);
    }
  }

  nodeNamespaceSize = [(VMUDirectedGraph *)self->_graph nodeNamespaceSize];
  v14 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v14 = nodeNamespaceSize;
  [(VMULeakDetector *)self setLeakedNodes:v14];
  if (self->_checkAbandoned)
  {
    [(VMULeakDetector *)self setAbandoned:[(VMUProcessObjectGraph *)self->_graph copyUserMarked]];
  }

  graph = self->_graph;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __40__VMULeakDetector_detectLeaksWithError___block_invoke_157;
  v29 = &unk_1E8278120;
  selfCopy = self;
  v32 = &v40;
  v33 = &v36;
  v31 = v5;
  VMUWithRootNodeMarkingMap(graph, &v26);
  v16 = self->_debugTimer;
  if (v16)
  {
    v17 = [(VMUDebugTimer *)v16 signpostID:v26];
    v16 = self->_debugTimer;
    if (v17)
    {
      logHandle3 = [(VMUDebugTimer *)v16 logHandle];
      signpostID4 = [(VMUDebugTimer *)self->_debugTimer signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(logHandle3))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C679D000, logHandle3, OS_SIGNPOST_INTERVAL_END, signpostID4, "VMULeakDetector", "", buf, 2u);
      }

      v16 = self->_debugTimer;
    }
  }

  [(VMUDebugTimer *)v16 endEvent:"VMULeakDetector", v26, v27, v28, v29, selfCopy];
  leakedAllocationsCount = self->_leakedAllocationsCount;
  numExcluded = self->_numExcluded;

  v22 = leakedAllocationsCount - numExcluded;
LABEL_26:

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);
  return v22;
}

BOOL __40__VMULeakDetector_detectLeaksWithError___block_invoke(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1[4] + 8) & 1) != 0 || !(result = VMUGraphNodeType_IsVMRegion(*(a3 + 8) >> 60)))
  {
    result = VMUGraphNodeIsRoot(a3);
    if (!result)
    {
      *(*(a1[5] + 8) + 24) += *(a3 + 8) & 0xFFFFFFFFFFFFFFFLL;
      ++*(*(a1[6] + 8) + 24);
    }
  }

  return result;
}

void *__40__VMULeakDetector_detectLeaksWithError___block_invoke_157(void *a1, uint64_t a2)
{
  [*(a1[4] + 48) markReachableNodesFromRoots:a2 inMap:*(a1[4] + 112) options:*(a1[4] + 8)];
  v3 = *(a1[4] + 112);
  v4 = *v3;
  v5 = (*v3 + 7);
  if (v5 >= 8)
  {
    v6 = v3 + 1;
    v7 = v5 >> 3;
    do
    {
      *v6 = ~*v6;
      ++v6;
      --v7;
    }

    while (v7);
  }

  v8 = v4 & 7;
  if (v8)
  {
    *(v3 + (v5 >> 3) + 3) ^= 255 << v8;
  }

  *(*(a1[7] + 8) + 24) = 0;
  *(*(a1[6] + 8) + 24) = 0;
  [*(a1[4] + 48) enumerateMarkedObjects:*(a1[4] + 112) withBlock:a1[5]];
  *(a1[4] + 144) = *(*(a1[7] + 8) + 24);
  *(a1[4] + 160) = *(*(a1[6] + 8) + 24);
  *(*(a1[7] + 8) + 24) = 0;
  *(*(a1[6] + 8) + 24) = 0;
  result = [*(a1[4] + 48) enumerateMarkedObjects:*(a1[4] + 104) withBlock:a1[5]];
  *(a1[4] + 148) = *(*(a1[7] + 8) + 24);
  *(a1[4] + 168) = *(*(a1[6] + 8) + 24);
  return result;
}

- (unsigned)doNormalLeakDetectionWithError:(id *)error
{
  [(VMULeakDetector *)self detectLeaksWithError:?];
  if (*error)
  {
    return 0;
  }

  result = [(VMULeakDetector *)self checkTaskExistence];
  if (result)
  {
    [(VMULeakDetector *)self printout:"Process %d: %u nodes malloced for %llu KB\n", [(VMUProcessObjectGraph *)self->_graph pid], self->_allocationsCount, (self->_allocationsSize + 1023) >> 10];
    v6 = [(VMUProcessObjectGraph *)self->_graph pid];
    leakedAllocationsCount = self->_leakedAllocationsCount;
    if (leakedAllocationsCount == 1)
    {
      v8 = "";
    }

    else
    {
      v8 = "s";
    }

    [(VMULeakDetector *)self printout:"Process %d: %u leak%s for %llu total leaked bytes.\n", v6, leakedAllocationsCount, v8, self->_leakedAllocationsSize];
    if (self->_abandonedSize)
    {
      v9 = [(VMUProcessObjectGraph *)self->_graph pid];
      abandonedCount = self->_abandonedCount;
      if (abandonedCount == 1)
      {
        v11 = "";
      }

      else
      {
        v11 = "s";
      }

      [(VMULeakDetector *)self printout:"Process %d: %u object%s abandoned for %llu total abandoned bytes.\n", v9, abandonedCount, v11, self->_abandonedSize];
    }

    if (!self->_suppressOutput)
    {
      [(VMULeakDetector *)self printout:"\n"];
      if (self->_abandoned || self->_showListOfLeaks)
      {
        graph = self->_graph;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __50__VMULeakDetector_doNormalLeakDetectionWithError___block_invoke;
        v16[3] = &unk_1E8278148;
        v16[4] = self;
        VMUEnumerateVMAnnotatedMallocObjectsWithBlock(graph, v16);
      }

      else
      {
        [(VMULeakDetector *)self buildLeakTree];
        if ([(VMULeakDetector *)self outputFile]|| ([(VMULeakDetector *)self outputString], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
        {
          [(VMULeakDetector *)self printLeakTree];
        }
      }
    }

    numExcluded = self->_numExcluded;
    if (numExcluded)
    {
      if (numExcluded == 1)
      {
        v14 = "";
      }

      else
      {
        v14 = "s";
      }

      [(VMULeakDetector *)self printout:"\n%u leak%s excluded (not printed)\n", self->_numExcluded, v14];
    }

    if ([(VMULeakDetector *)self outputFile])
    {
      fflush([(VMULeakDetector *)self outputFile]);
    }

    return self->_leakedAllocationsCount - self->_numExcluded;
  }

  return result;
}

void *__50__VMULeakDetector_doNormalLeakDetectionWithError___block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  result = *(a1 + 32);
  v6 = result[14];
  if (*v6 > a2 && ((*(v6 + (a2 >> 3) + 4) >> (a2 & 7)) & 1) != 0)
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v7 = "Leak";
    return [result printLeak:v7 node:a2 details:&v9 region:a4 stop:a5];
  }

  v8 = result[13];
  if (v8 && *v8 > a2 && ((*(v8 + (a2 >> 3) + 4) >> (a2 & 7)) & 1) != 0)
  {
    v9 = *a3;
    v10 = *(a3 + 2);
    v7 = "Abandoned";
    return [result printLeak:v7 node:a2 details:&v9 region:a4 stop:a5];
  }

  return result;
}

- (void)dealloc
{
  abandoned = self->_abandoned;
  if (abandoned)
  {
    free(abandoned);
    self->_abandoned = 0;
  }

  leakedNodes = self->_leakedNodes;
  if (leakedNodes)
  {
    free(leakedNodes);
    self->_leakedNodes = 0;
  }

  if (self->_fcloseOutput)
  {
    outputFile = self->_outputFile;
    if (outputFile)
    {
      fclose(outputFile);
      self->_outputFile = 0;
    }
  }

  v6.receiver = self;
  v6.super_class = VMULeakDetector;
  [(VMULeakDetector *)&v6 dealloc];
}

@end