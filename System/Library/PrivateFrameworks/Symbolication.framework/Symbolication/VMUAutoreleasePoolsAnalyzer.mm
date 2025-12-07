@interface VMUAutoreleasePoolsAnalyzer
- ($51BDE1E611C99AA6751D559730815866)autoreleasePoolsStatsInfo;
- ($938B03310D06493B2963E5A84CB75A7E)offsets;
- ($F98408A3EE049A81EB8D46654FFD7652)options;
- (VMUAutoreleasePoolsAnalyzer)initWithGraph:(id)graph regionIdentifier:(id)identifier debugTimer:(id)timer;
- (id)analysisSummaryWithError:(id *)error;
- (id)memoryTreeHeldByAutoreleasedNode:(id *)node node:(unsigned int)a4;
- (unsigned)findHottestEmptyAutoreleasePoolPage:(unsigned int)page;
- (unsigned)reattachAutoreleasePoolsChainFromHottestToColdest:(unsigned int)coldest;
- (void)dealloc;
- (void)iterateAutoreleasePoolsInThreadsGroupingByType:(BOOL)type showVirtualSize:(BOOL)size extraReleasesCount:(unsigned int *)count withBlock:(id)block;
- (void)iterateThroughPoolsPerThread:(unsigned int)thread withBlock:(id)block;
- (void)populateAutoreleasePoolsDetails;
@end

@implementation VMUAutoreleasePoolsAnalyzer

- (VMUAutoreleasePoolsAnalyzer)initWithGraph:(id)graph regionIdentifier:(id)identifier debugTimer:(id)timer
{
  graphCopy = graph;
  v11.receiver = self;
  v11.super_class = VMUAutoreleasePoolsAnalyzer;
  v8 = [(VMUAutoreleasePoolsAnalyzer *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._graph, graph);
    [(VMUAutoreleasePoolsAnalyzer *)v9 populateAutoreleasePoolsDetails];
  }

  return v9;
}

- (unsigned)findHottestEmptyAutoreleasePoolPage:(unsigned int)page
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -1;
  graph = self->super._graph;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__VMUAutoreleasePoolsAnalyzer_findHottestEmptyAutoreleasePoolPage___block_invoke;
  v6[3] = &unk_1E827A6A0;
  v6[4] = self;
  v6[5] = &v7;
  [(VMUObjectGraph *)graph enumerateReferencesOfNode:*&page withBlock:v6];
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__67__VMUAutoreleasePoolsAnalyzer_findHottestEmptyAutoreleasePoolPage___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v8 = result;
  v9 = result[4];
  if (*(a5 + 8) == *(v9 + 84))
  {
    v10 = a4;
    result = [*(v9 + 8) nodeIsAutoreleasePoolContentPage:a4];
    if (result)
    {
      *(*(v8[5] + 8) + 24) = v10;
    }
  }

  if (*(a5 + 8) >= *(v8[4] + 84))
  {
    *a6 = 1;
  }

  return result;
}

- (id)memoryTreeHeldByAutoreleasedNode:(id *)node node:(unsigned int)a4
{
  v4 = *&a4;
  v20 = [[VMUCallTreeRoot alloc] initWithSymbolicator:0 sampler:0 options:0, 0];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 128;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = malloc_type_malloc(0x200uLL, 0x100004052888210uLL);
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__VMUAutoreleasePoolsAnalyzer_memoryTreeHeldByAutoreleasedNode_node___block_invoke;
  aBlock[3] = &unk_1E827A8C0;
  aBlock[6] = v43;
  aBlock[7] = &v39;
  aBlock[4] = self;
  aBlock[5] = &v35;
  v19 = _Block_copy(aBlock);
  v19[2](v19, v4);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  graph = self->super._graph;
  if (graph)
  {
    objc_msgSend_nodeDetails_(graph);
  }

  v8 = [(VMULeakDetector *)self->_detector nodeDescription:v4];
  if (self->_options.groupByType)
  {
    [(VMUCallTreeRoot *)v20 addChildWithName:v8 address:0 count:1 numBytes:v32 & 0xFFFFFFFFFFFFFFFLL toNode:v20];
  }

  else
  {
    [(VMUCallTreeRoot *)v20 addUniqueChildWithName:v8 address:0 count:1 numBytes:v32 & 0xFFFFFFFFFFFFFFFLL toNode:v20];
  }
  v9 = ;
  node[v4] = v9;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (*(v36 + 6))
  {
    v18 = v8;
    v10 = 0;
    do
    {
      v11 = *(v40[3] + 4 * v10);
      v12 = node[v11];

      v13 = self->super._graph;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __69__VMUAutoreleasePoolsAnalyzer_memoryTreeHeldByAutoreleasedNode_node___block_invoke_2;
      v21[3] = &unk_1E827A8E8;
      v21[4] = self;
      v24 = v19;
      nodeCopy = node;
      v9 = v12;
      v22 = v9;
      v14 = v20;
      v23 = v14;
      v25 = &v27;
      [(VMUObjectGraph *)v13 enumerateReferencesOfNode:v11 withBlock:v21];

      ++v10;
    }

    while (v10 != *(v36 + 6));
    if (v28[3])
    {
      [(VMUCallTreeRoot *)v14 addChildCountsIntoNode];
      v8 = v18;
      v15 = [(VMUCallTreeNode *)v14 stringFromCallTreeWithOptions:56];
    }

    else
    {
      v15 = 0;
      v8 = v18;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = v40[3];
  if (v16)
  {
    free(v16);
  }

  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(v43, 8);

  return v15;
}

void *__69__VMUAutoreleasePoolsAnalyzer_memoryTreeHeldByAutoreleasedNode_node___block_invoke(void *result, unsigned int a2)
{
  v3 = result;
  v4 = *(result[5] + 8);
  v5 = *(v4 + 24);
  v6 = v5 + 1;
  v7 = *(result[6] + 8);
  if (v5 + 1 == *(v7 + 24))
  {
    *(v7 + 24) = 2 * v6;
    result = malloc_type_realloc(*(*(result[7] + 8) + 24), 4 * *(*(result[6] + 8) + 24), 0x100004052888210uLL);
    *(*(v3[7] + 8) + 24) = result;
    v4 = *(v3[5] + 8);
    v5 = *(v4 + 24);
    v6 = v5 + 1;
  }

  v8 = *(*(v3[7] + 8) + 24);
  *(v4 + 24) = v6;
  *(v8 + 4 * v5) = a2;
  v9 = *(v3[4] + 64);
  if (*v9 > a2)
  {
    *(v9 + (a2 >> 3) + 4) |= 1 << (a2 & 7);
  }

  return result;
}

void __69__VMUAutoreleasePoolsAnalyzer_memoryTreeHeldByAutoreleasedNode_node___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = objc_autoreleasePoolPush();
  if (VMUIsOwningReference(*(a5 + 16)))
  {
    v9 = *(*(a1 + 32) + 64);
    if (*v9 <= a4 || ((*(v9 + (a4 >> 3) + 4) >> (a4 & 7)) & 1) == 0)
    {
      (*(*(a1 + 56) + 16))();
      v10 = *(a5 + 32);
      v11 = [*(*(a1 + 32) + 40) nodeDescription:a4 usingDetails:v10];
      v12 = [*(*(a1 + 32) + 8) is64bit];
      v13 = *(a5 + 16);
      v29[0] = *a5;
      v29[1] = v13;
      v30 = *(a5 + 32);
      v14 = [VMULeakDetector referenceDescription:v29 dstDescription:v11 is64bit:v12];

      if ((*(*(a1 + 32) + 97) & 1) == 0 && VMUGraphNodeType_IsVMRegion(*(v10 + 8) >> 60))
      {
        v15 = [*(*(a1 + 32) + 8) vmuVMRegionForNode:a4];
        v16 = v15;
        *(v10 + 8) = *(v10 + 8) & 0xF000000000000000 | (v15[22] + v15[23] - v15[24]) & 0xFFFFFFFFFFFFFFFLL;
        if ((*(*(a1 + 32) + 96) & 1) == 0)
        {
          v17 = MEMORY[0x1E696AEC0];
          v18 = VMUMemorySizeString(v15[23]);
          v19 = [v17 stringWithFormat:@"%@  dirty: %s  swapped: %s", v14, v18, VMUMemorySizeString(v16[22])];

          v20 = v16[24];
          if (v20)
          {
            v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@  purgableVolatile: %s", v19, VMUMemorySizeString(v20)];
          }

          else
          {
            v14 = v19;
          }
        }
      }

      v21 = *(*(a1 + 72) + 8 * a4);
      v22 = *(*(a1 + 32) + 96);
      v23 = *(a1 + 48);
      v24 = *(v10 + 8);
      v25 = *(a1 + 40);
      v26 = v21;
      v27 = v24 & 0xFFFFFFFFFFFFFFFLL;
      if (v22 == 1)
      {
        [v23 addChildWithName:v14 address:0 count:1 numBytes:v27 toNode:v25];
      }

      else
      {
        [v23 addUniqueChildWithName:v14 address:0 count:1 numBytes:v27 toNode:v25];
      }
      v28 = ;

      *(*(a1 + 72) + 8 * a4) = v28;
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  objc_autoreleasePoolPop(v8);
}

- (unsigned)reattachAutoreleasePoolsChainFromHottestToColdest:(unsigned int)coldest
{
  v3 = *&coldest;
  p_offsets = &self->_offsets;
  *&self->_offsets.parentPageOffset = [(VMUProcessObjectGraph *)self->super._graph autoreleasePoolOffsets];
  p_offsets->firstEntryOffset = v6;
  v7 = [(NSMutableSet *)self->_unreferencedAutoreleasePoolNodes count];
  self->_autoreleasePoolChain = malloc_type_malloc(4 * v7, 0x100004052888210uLL);
  v8 = [(VMUAutoreleasePoolsAnalyzer *)self findHottestEmptyAutoreleasePoolPage:v3];
  if (v8 == -1)
  {
    v3 = v3;
  }

  else
  {
    v3 = v8;
  }

  if (v3 == -1)
  {
    LODWORD(v9) = 0;
  }

  else
  {
    v9 = 0;
    v15 = v7;
    v10 = v7;
    while (v10 != v9)
    {
      self->_autoreleasePoolChain[v9] = v3;
      unreferencedAutoreleasePoolNodes = self->_unreferencedAutoreleasePoolNodes;
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v3];
      [(NSMutableSet *)unreferencedAutoreleasePoolNodes removeObject:v12];

      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = -1;
      graph = self->super._graph;
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __81__VMUAutoreleasePoolsAnalyzer_reattachAutoreleasePoolsChainFromHottestToColdest___block_invoke;
      v16[3] = &unk_1E827A6A0;
      v16[4] = self;
      v16[5] = &v17;
      [(VMUObjectGraph *)graph enumerateReferencesOfNode:v3 withBlock:v16];
      ++v9;
      v3 = *(v18 + 6);
      _Block_object_dispose(&v17, 8);
      if (v3 == -1)
      {
        return v9;
      }
    }

    LODWORD(v9) = v15;
    printf("INCORRECT CHAIN OF @autoreleasepool content BLOCKS -- TRUNCATING THE CHAIN (autoreleasePoolChainCount %u, autoreleasePoolChainMax %u\n", v15, v15);
  }

  return v9;
}

uint64_t __81__VMUAutoreleasePoolsAnalyzer_reattachAutoreleasePoolsChainFromHottestToColdest___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a5 + 8);
  v7 = *(*(result + 32) + 80);
  if (v6 == v7)
  {
    *(*(*(result + 40) + 8) + 24) = a4;
  }

  else if (v6 > v7)
  {
    *a6 = 1;
  }

  return result;
}

- (void)iterateThroughPoolsPerThread:(unsigned int)thread withBlock:(id)block
{
  v4 = *&thread;
  blockCopy = block;
  if (!self->_detector)
  {
    v7 = [VMULeakDetector alloc];
    graph = self->super._graph;
    scanner = [(VMUProcessObjectGraph *)graph scanner];
    stackLogReader = [(VMUProcessObjectGraph *)self->super._graph stackLogReader];
    v11 = [(VMULeakDetector *)v7 initWithVMUTask:0 graph:graph scanner:scanner stackLogReader:stackLogReader];
    detector = self->_detector;
    self->_detector = v11;
  }

  v13 = [(VMUAutoreleasePoolsAnalyzer *)self reattachAutoreleasePoolsChainFromHottestToColdest:v4];
  v14 = malloc_type_calloc([(VMUDirectedGraph *)self->super._graph nodeNamespaceSize], 8uLL, 0x80040B8603338uLL);
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  if (!v13)
  {
    goto LABEL_7;
  }

  v15 = 4 * v13 - 4;
  do
  {
    v16 = *(self->_autoreleasePoolChain + v15);
    v17 = [(VMULeakDetector *)self->_detector nodeDescription:v16];
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"    %s\n", objc_msgSend(v17, "UTF8String")];
    blockCopy[2](blockCopy, v18);

    v19 = self->super._graph;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __70__VMUAutoreleasePoolsAnalyzer_iterateThroughPoolsPerThread_withBlock___block_invoke;
    v20[3] = &unk_1E827A910;
    v20[4] = self;
    v21 = blockCopy;
    v22 = &v24;
    v23 = v14;
    [(VMUObjectGraph *)v19 enumerateReferencesOfNode:v16 withBlock:v20];

    v15 -= 4;
  }

  while (v15 != -4);
  if (!*(v25 + 6))
  {
LABEL_7:
    blockCopy[2](blockCopy, @"        Empty\n");
  }

  if (v14)
  {
    free(v14);
  }

  _Block_object_dispose(&v24, 8);
}

void __70__VMUAutoreleasePoolsAnalyzer_iterateThroughPoolsPerThread_withBlock___block_invoke(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a1[4];
  v9 = *(v8 + 8);
  if (v9)
  {
    objc_msgSend_nodeDetails_(v9, a2, a3);
    v8 = a1[4];
  }

  if (*(a5 + 8) >= *(v8 + 88))
  {
    v10 = *(a5 + 32);
    if ((*(v10 + 8) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      v11 = [*(v10 + 16) className];
      v12 = [v11 isEqualToString:kVMUAutoreleasePoolBoundaryClassName];

      if (v12)
      {
        (*(a1[5] + 16))();
        return;
      }
    }

    v13 = objc_autoreleasePoolPush();
    v14 = *(a1[4] + 8);
    if (v14)
    {
      objc_msgSend_nodeDetails_(v14);
      v15 = v51;
      v14 = *(a1[4] + 8);
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
    v17 = *(a5 + 8);
    v18 = [v14 srcAddressToExtraAutoreleaseCountDict];
    v19 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v16 + v17];
    v20 = [v18 objectForKeyedSubscript:v19];

    if (v20)
    {
      v21 = [v20 unsignedIntValue];
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"   COALESCED AUTORELEASES: %u", v21];
      **(a1[4] + 104) = v21 + **(a1[4] + 104) - 1;
    }

    else
    {
      v22 = &stru_1F461F9C8;
    }

    v23 = *(a1[4] + 64);
    v24 = @"     ** %u:  ";
    v25 = a4 >> 3;
    if (*v23 > a4 && ((*(v23 + v25 + 4) >> (a4 & 7)) & 1) != 0)
    {
      v24 = @"        %u:  ";
    }

    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:v24, *(*(a1[6] + 8) + 24)];
    (*(a1[5] + 16))();
    v27 = [v26 length];
    ++*(*(a1[6] + 8) + 24);
    v28 = a1[4];
    v29 = *(v28 + 64);
    if (*v29 <= a4 || ((*(v29 + v25 + 4) >> (a4 & 7)) & 1) == 0)
    {
      v30 = [v28 memoryTreeHeldByAutoreleasedNode:a1[7] node:a4];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 componentsSeparatedByString:@"\n"];
        v33 = [v32 count];
        v34 = v33 - 1;
        if (v33 != 1)
        {
          v47 = v31;
          v48 = v26;
          v49 = v20;
          v50 = v13;
          v35 = 0;
          v36 = 1;
          v37 = v27;
          v38 = 0x1E696A000uLL;
          do
          {
            if (v36 != 1)
            {
              v39 = a1[5];
              v40 = [*(v38 + 3776) stringWithFormat:@"%*s", v37, ""];
              (*(v39 + 16))(v39, v40);
            }

            v41 = a1[5];
            v42 = *(v38 + 3776);
            v43 = [v32 objectAtIndexedSubscript:v35];
            v44 = [v42 stringWithFormat:@"%s%s\n", objc_msgSend(v43, "UTF8String"), -[__CFString UTF8String](v22, "UTF8String")];
            (*(v41 + 16))(v41, v44);

            if (v36 == 1)
            {

              v22 = &stru_1F461F9C8;
            }

            v35 = v36;
            v45 = v34 > v36++;
            v38 = 0x1E696A000;
          }

          while (v45);
          v20 = v49;
          v13 = v50;
          v31 = v47;
          v26 = v48;
        }

        goto LABEL_29;
      }

      v28 = a1[4];
    }

    v31 = [*(v28 + 40) nodeDescription:a4];
    v46 = a1[5];
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s%s\n", objc_msgSend(v31, "UTF8String"), -[__CFString UTF8String](v22, "UTF8String")];
    (*(v46 + 16))(v46, v32);
LABEL_29:

    objc_autoreleasePoolPop(v13);
  }
}

- (void)dealloc
{
  reachableOutsideOfAutoreleasePoolsMap = self->_reachableOutsideOfAutoreleasePoolsMap;
  if (reachableOutsideOfAutoreleasePoolsMap)
  {
    free(reachableOutsideOfAutoreleasePoolsMap);
  }

  autoreleasePoolNodesByThreadIndex = self->_autoreleasePoolNodesByThreadIndex;
  if (autoreleasePoolNodesByThreadIndex)
  {
    free(autoreleasePoolNodesByThreadIndex);
  }

  autoreleasePoolChain = self->_autoreleasePoolChain;
  if (autoreleasePoolChain)
  {
    free(autoreleasePoolChain);
  }

  v6.receiver = self;
  v6.super_class = VMUAutoreleasePoolsAnalyzer;
  [(VMUAutoreleasePoolsAnalyzer *)&v6 dealloc];
}

- (void)iterateAutoreleasePoolsInThreadsGroupingByType:(BOOL)type showVirtualSize:(BOOL)size extraReleasesCount:(unsigned int *)count withBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  self->_options.groupByType = type;
  self->_options.referenceTreeShowRegionVirtualSize = size;
  self->_options.autoreleasePoolsExtraReleasesCount = count;
  threadNamesByThreadIndex = self->_threadNamesByThreadIndex;
  if (threadNamesByThreadIndex && self->_autoreleasePoolNodesByThreadIndex)
  {
    if ([(NSMutableArray *)threadNamesByThreadIndex count])
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v14 = [(NSMutableArray *)self->_threadNamesByThreadIndex objectAtIndexedSubscript:v12];
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = &stru_1F461F9C8;
        }

        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Thread %u  %s\n", v13, -[__CFString UTF8String](v15, "UTF8String")];
        blockCopy[2](blockCopy, v16);

        v17 = self->_autoreleasePoolNodesByThreadIndex[v12];
        if (v17)
        {
          [(VMUAutoreleasePoolsAnalyzer *)self iterateThroughPoolsPerThread:v17 withBlock:blockCopy];
        }

        else
        {
          blockCopy[2](blockCopy, @"    no autorelease pool\n");
        }

        blockCopy[2](blockCopy, @"\n");

        v12 = (v13 + 1);
        v13 = v12;
      }

      while ([(NSMutableArray *)self->_threadNamesByThreadIndex count]> v12);
    }

    if ([(NSMutableSet *)self->_unreferencedAutoreleasePoolNodes count])
    {
      blockCopy[2](blockCopy, @"Autorelease pool pages not associated with a thread\n");
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      obj = self->_unreferencedAutoreleasePoolNodes;
      v18 = [(NSMutableSet *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v27;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v27 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = MEMORY[0x1E696AEC0];
            v23 = -[VMUProcessObjectGraph nodeDescription:](self->super._graph, "nodeDescription:", [*(*(&v26 + 1) + 8 * i) unsignedIntValue]);
            v24 = [v22 stringWithFormat:@"    %s\n", objc_msgSend(v23, "UTF8String")];
            blockCopy[2](blockCopy, v24);
          }

          v19 = [(NSMutableSet *)obj countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v19);
      }

      blockCopy[2](blockCopy, @"\n");
    }
  }

  else
  {
    blockCopy[2](blockCopy, @"Error occured while printing autoreleasePools per thread.\n");
  }
}

- (void)populateAutoreleasePoolsDetails
{
  v3 = objc_opt_new();
  threadNamesByThreadIndex = self->_threadNamesByThreadIndex;
  self->_threadNamesByThreadIndex = v3;

  v5 = objc_opt_new();
  unreferencedAutoreleasePoolNodes = self->_unreferencedAutoreleasePoolNodes;
  self->_unreferencedAutoreleasePoolNodes = v5;

  v38[0] = 0;
  v38[1] = v38;
  v38[2] = 0x2020000000;
  v39 = 0;
  *&self->_offsets.parentPageOffset = [(VMUProcessObjectGraph *)self->super._graph autoreleasePoolOffsets];
  self->_offsets.firstEntryOffset = v7;
  v8 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:1282 valueOptions:259];
  v9 = VMUCreateRootNodeMarkingMap(self->super._graph);
  nodeNamespaceSize = [(VMUDirectedGraph *)self->super._graph nodeNamespaceSize];
  v11 = malloc_type_calloc(1uLL, ((nodeNamespaceSize + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v11 = nodeNamespaceSize;
  self->_reachableOutsideOfAutoreleasePoolsMap = v11;
  [(VMUProcessObjectGraph *)self->super._graph markReachableNodesFromRoots:v9 inMap:v11 options:2];
  v29 = v8;
  LODWORD(v8) = [(VMUDirectedGraph *)self->super._graph nodeNamespaceSize];
  v12 = malloc_type_calloc(1uLL, ((v8 + 7) >> 3) + 4, 0xB2EC2458uLL);
  *v12 = v8;
  [(VMUProcessObjectGraph *)self->super._graph markReachableNodesFromRoots:v9 inMap:v12];
  v28 = v9;
  reachableOutsideOfAutoreleasePoolsMap = self->_reachableOutsideOfAutoreleasePoolsMap;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke;
  v35 = &unk_1E82785F8;
  v27 = v12;
  selfCopy = self;
  v37 = v12;
  v14 = v33;
  v17 = *reachableOutsideOfAutoreleasePoolsMap;
  v15 = reachableOutsideOfAutoreleasePoolsMap + 1;
  v16 = v17;
  if (v17)
  {
    v18 = 0;
    v19 = 8;
    do
    {
      v20 = *(v15 + (v18 >> 3));
      if (v16 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v16;
      }

      v22 = (v18 + 8);
      if (v22 >= v16)
      {
        v23 = v16;
      }

      else
      {
        v23 = v18 + 8;
      }

      if (v20 != 255 && v18 < v23)
      {
        do
        {
          if ((v20 & 1) == 0)
          {
            v34(v14, v18);
          }

          v18 = (v18 + 1);
          v20 >>= 1;
        }

        while (v21 != v18);
      }

      v19 += 8;
      v18 = v22;
    }

    while (v22 < v16);
  }

  free(v27);
  if (v28)
  {
    free(v28);
  }

  graph = self->super._graph;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_2;
  v30[3] = &unk_1E827A9B0;
  v30[4] = self;
  v32 = v38;
  v26 = v29;
  v31 = v26;
  [(VMUObjectGraph *)graph enumerateObjectsWithBlock:v30];

  _Block_object_dispose(v38, 8);
}

void *__62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke(void *result, const char *a2)
{
  v4 = result[5];
  if (*v4 > a2 && ((*(v4 + (a2 >> 3) + 4) >> (a2 & 7)) & 1) != 0)
  {
    v11 = v2;
    v12 = v3;
    v5 = result;
    ++*(result[4] + 144);
    v6 = result[4];
    result = *(v6 + 8);
    if (result)
    {
      result = objc_msgSend_nodeDetails_(result, a2, a2);
      v6 = v5[4];
      v7 = v9 & 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    *(v6 + 152) += v7;
  }

  return result;
}

void __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_2(void *a1, uint64_t a2, void *a3)
{
  v6 = a3[1] >> 60;
  v7 = a1[4];
  if (v6 == 2)
  {
    if (!*(v7 + 48))
    {
      *(a1[4] + 48) = malloc_type_calloc([*(v7 + 72) count], 4uLL, 0x100004052888210uLL);
      v7 = a1[4];
    }

    v10 = [*(v7 + 8) vmuVMRegionForNode:a2];
    if ([v10 isStack])
    {
      v11 = [v10[5] UTF8String];
      if (v11)
      {
        v12 = v11;
        if (strlen(v11) >= 8)
        {
          __endptr[0] = 0;
          v13 = strtol(v12 + 7, __endptr, 10);
          if (__endptr[0] > v12 + 7)
          {
            v14 = v13;
            if (v13 > 0 || (*(*(a1[6] + 8) + 24) & 1) == 0)
            {
              v15 = a1[4];
              v16 = *(v15 + 8);
              v44[0] = MEMORY[0x1E69E9820];
              v44[1] = 3221225472;
              v44[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_3;
              v44[3] = &unk_1E827A938;
              v44[4] = v15;
              v45 = v10;
              v46 = v14;
              [v16 enumerateReferencesOfNode:a2 withBlock:v44];
            }
          }
        }
      }
    }

    else if ((*(*(a1[6] + 8) + 24) & 1) == 0)
    {
      v23 = [v10 type];
      if ([v23 hasPrefix:@"__DATA"])
      {
        v24 = [v10 path];
        v25 = [v24 lastPathComponent];
        v26 = [v25 hasPrefix:@"dyld"];

        if (v26)
        {
          v27 = [*(a1[4] + 8) rangeForSymbolName:@"_main_thread" inRegion:v10];
          v28 = a1[4];
          v29 = *(v28 + 8);
          if (v27 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v42[0] = MEMORY[0x1E69E9820];
            v42[1] = 3221225472;
            v42[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_5;
            v42[3] = &unk_1E827A6A0;
            v30 = a1[6];
            v42[4] = v28;
            v42[5] = v30;
            v31 = v42;
          }

          else
          {
            v32 = [v29 is64bit];
            v33 = 348;
            if (v32)
            {
              v33 = 568;
            }

            v34 = v27 - *a3 + v33;
            v35 = a1[4];
            v29 = *(v35 + 8);
            v43[0] = MEMORY[0x1E69E9820];
            v43[1] = 3221225472;
            v43[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_4;
            v43[3] = &unk_1E827A960;
            v43[6] = v34;
            v36 = a1[6];
            v43[4] = v35;
            v43[5] = v36;
            v31 = v43;
          }

          [v29 enumerateReferencesOfNode:a2 withBlock:v31];
        }
      }

      else
      {
      }
    }
  }

  else if (v6 == 4)
  {
    v8 = [*(v7 + 8) threadNameForAddress:a2];
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"no posix thread";
    }

    v37 = v9;
    [*(a1[4] + 72) addObject:?];
  }

  else
  {
    v17 = *(v7 + 8);
    *__endptr = *a3;
    v41 = a3[2];
    if ([v17 nodeDetailIsAutoreleasePoolContentPage:__endptr])
    {
      v18 = *(a1[4] + 32);
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
      [v18 addObject:v19];

      ++*(a1[4] + 120);
      *(a1[4] + 124) += *(a3 + 2);
      v21 = a1[4];
      v20 = a1[5];
      v22 = *(v21 + 8);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_6;
      v38[3] = &unk_1E827A988;
      v38[4] = v21;
      v39 = v20;
      [v22 enumerateReferencesOfNode:a2 withBlock:v38];
    }
  }
}

void __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([*(a1[4] + 8) nodeIsAutoreleasePoolContentPage:a4])
  {
    v9 = *(a1[4] + 8);
    v11 = *(a5 + 8);
    v12 = *(a5 + 24);
    v10 = [v9 nodeDescription:a3 withDestinationNode:a4 referenceInfo:&v11];
    if (([v10 containsString:kVMUAutoreleasePoolThreadSpecificDataKeyString] & 1) != 0 || *(a1[5] + 232) == 1 && objc_msgSend(v10, "containsString:", @"+ 960"))
    {
      *(*(a1[4] + 48) + 4 * a1[6]) = a4;
    }
  }
}

void *__62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_4(void *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, _BYTE *a6)
{
  if (*(a5 + 8) == result[6])
  {
    **(result[4] + 48) = a4;
    *(*(result[5] + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

void *__62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_5(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v7 = a4;
  v13 = 0uLL;
  v14 = 0;
  v9 = *(*(a1 + 32) + 8);
  if (v9)
  {
    objc_msgSend_nodeDetails_(v9, a2, a4, a4, a5);
    v9 = *(*(a1 + 32) + 8);
  }

  v11 = v13;
  v12 = v14;
  result = [v9 nodeDetailIsAutoreleasePoolContentPage:{&v11, a4, a5}];
  if (result)
  {
    **(*(a1 + 32) + 48) = v7;
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

void __62__VMUAutoreleasePoolsAnalyzer_populateAutoreleasePoolsDetails__block_invoke_6(uint64_t a1, int a2, uint64_t a3, void *key, uint64_t a5)
{
  v5 = *(a1 + 32);
  if (*(a5 + 8) >= *(v5 + 88))
  {
    v6 = key;
    v8 = *(a5 + 32);
    if ((*(v8 + 8) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      v9 = [*(v8 + 16) className];
      v10 = [v9 isEqualToString:kVMUAutoreleasePoolBoundaryClassName];

      if (v10)
      {
        return;
      }

      v5 = *(a1 + 32);
    }

    ++*(v5 + 112);
    v11 = NSMapGet(*(a1 + 40), v6);
    if (v11)
    {
      ++v11[2];
    }

    else
    {
      ++*(*(a1 + 32) + 116);
      v12 = *(a1 + 32);
      v13 = *(v12 + 64);
      if (*v13 <= v6 || ((*(v13 + (v6 >> 3) + 4) >> (v6 & 7)) & 1) == 0)
      {
        ++*(v12 + 128);
        *(*(a1 + 32) + 136) += *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
      }

      v14 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040D9A13B51uLL);
      v14[2] = 1;
      *v14 = *(v8 + 8) & 0xFFFFFFFFFFFFFFFLL;
      v15 = *(a1 + 40);

      NSMapInsert(v15, v6, v14);
    }
  }
}

- (id)analysisSummaryWithError:(id *)error
{
  v4 = objc_opt_new();
  p_autoreleasePoolsStatsInfo = &self->_autoreleasePoolsStatsInfo;
  LODWORD(self) = self->_autoreleasePoolsStatsInfo.autoreleasePoolContentPageCount;
  v6 = [VMUAnalyzerSummaryField alloc];
  if (self)
  {
    v7 = [(VMUAnalyzerSummaryField *)v6 initWithKey:@"Total entries in autoreleasepools" numericalValue:p_autoreleasePoolsStatsInfo->totalEntriesInAutoreleasePools objectValue:0 fieldType:1];
    [v4 addObject:v7];
    v8 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Unique entries in autoreleasepools" numericalValue:p_autoreleasePoolsStatsInfo->uniqueEntriesInAutoreleasePools objectValue:0 fieldType:1];

    [v4 addObject:v8];
    autoreleasePoolContentPageCount = p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageCount;
    if (autoreleasePoolContentPageCount == 1)
    {
      v10 = " ";
    }

    else
    {
      v10 = "s";
    }

    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", autoreleasePoolContentPageCount, v10, VMUMemorySizeString(p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageTotalSize)];
    v12 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Memory size of autoreleasepool content blocks" numericalValue:0 objectValue:v11 fieldType:0];

    [v4 addObject:v12];
    directlyHeldOnlyInAutoreleasePoolsCount = p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsCount;
    if (directlyHeldOnlyInAutoreleasePoolsCount == 1)
    {
      v14 = " ";
    }

    else
    {
      v14 = "s";
    }

    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", directlyHeldOnlyInAutoreleasePoolsCount, v14, VMUMemorySizeString(p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsSize)];

    v16 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Memory directly held only by autorelease pools" numericalValue:0 objectValue:v15 fieldType:0];
    [v4 addObject:v16];
    v17 = p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsCount - p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsCount;
    if (v17 == 1)
    {
      v18 = " ";
    }

    else
    {
      v18 = "s";
    }

    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", v17, v18, VMUMemorySizeString(p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsSize - p_autoreleasePoolsStatsInfo->directlyHeldOnlyInAutoreleasePoolsSize)];

    v20 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Memory indirectly held only by autorelease pools" numericalValue:0 objectValue:v19 fieldType:0];
    [v4 addObject:v20];
    autoreleasePoolContentPageTotalSize = p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageTotalSize;
    v22 = p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsCount + p_autoreleasePoolsStatsInfo->autoreleasePoolContentPageCount;
    reachableOnlyFromAutoreleasePoolsSize = p_autoreleasePoolsStatsInfo->reachableOnlyFromAutoreleasePoolsSize;
    if (v22 == 1)
    {
      v24 = " ";
    }

    else
    {
      v24 = "s";
    }

    v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u block%s  %s bytes", v22, v24, VMUMemorySizeString(reachableOnlyFromAutoreleasePoolsSize + autoreleasePoolContentPageTotalSize)];

    v26 = [[VMUAnalyzerSummaryField alloc] initWithKey:@"Total memory of autorelease pools and content blocks" numericalValue:0 objectValue:v25 fieldType:0];
    [v4 addObject:v26];
  }

  else
  {
    v26 = [(VMUAnalyzerSummaryField *)v6 initWithKey:kVMUAnalysisSummaryKey[0] numericalValue:0 objectValue:@"No autorelease pools" fieldType:0];
    [v4 addObject:v26];
  }

  return v4;
}

- ($51BDE1E611C99AA6751D559730815866)autoreleasePoolsStatsInfo
{
  v3 = *&self[2].var6;
  *&retstr->var0 = *&self[2].var4;
  *&retstr->var4 = v3;
  *&retstr->var6 = *&self[3].var0;
  return self;
}

- ($938B03310D06493B2963E5A84CB75A7E)offsets
{
  p_offsets = &self->_offsets;
  v3 = *&self->_offsets.parentPageOffset;
  firstEntryOffset = p_offsets->firstEntryOffset;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = firstEntryOffset;
  return result;
}

- ($F98408A3EE049A81EB8D46654FFD7652)options
{
  p_options = &self->_options;
  v3 = *&self->_options.groupByType;
  autoreleasePoolsExtraReleasesCount = p_options->autoreleasePoolsExtraReleasesCount;
  result.var2 = autoreleasePoolsExtraReleasesCount;
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  return result;
}

@end