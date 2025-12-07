@interface VMUVMRegionIdentifier
+ (id)descriptionForRange:(_VMURange)range inSortedRegions:(id)regions options:(unint64_t)options;
- ($B3784314699B2BBEAD7DAC31D728563A)computedStatisticsForZoneWithName:(SEL)name;
- ($B3784314699B2BBEAD7DAC31D728563A)summaryStatisticsOfAllZones;
- (NSArray)zoneNames;
- (VMUVMRegionIdentifier)init;
- (VMUVMRegionIdentifier)initWithGraph:(id)graph options:(unint64_t)options;
- (VMUVMRegionIdentifier)initWithTask:(unsigned int)task options:(unint64_t)options;
- (VMUVMRegionIdentifier)initWithTask:(unsigned int)task pid:(int)pid options:(unint64_t)options;
- (VMUVMRegionIdentifier)initWithVMUTask:(id)task options:(unint64_t)options;
- (id)descriptionForMallocZoneTotals:(unint64_t)totals memorySizeDivisor:(unsigned int)divisor;
- (id)descriptionForRegionTotals:(unint64_t)totals memorySizeDivisor:(unsigned int)divisor;
- (id)descriptionOfRegionsAroundAddress:(unint64_t)address options:(unint64_t)options maximumLength:(unint64_t)length memorySizeDivisor:(unsigned int)divisor;
- (id)nonSubmapRegionContainingAddress:(unint64_t)address;
- (int)_recordRegionsAroundAddress:(unint64_t)address regionDescriptionOptions:(unint64_t)options;
- (void)_computeStatistics:(id *)statistics;
@end

@implementation VMUVMRegionIdentifier

- (VMUVMRegionIdentifier)init
{
  v8.receiver = self;
  v8.super_class = VMUVMRegionIdentifier;
  v2 = [(VMUVMRegionIdentifier *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    regions = v2->_regions;
    v2->_regions = v3;

    v5 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:0 valueOptions:259];
    mallocZoneStatisticsMap = v2->_mallocZoneStatisticsMap;
    v2->_mallocZoneStatisticsMap = v5;
  }

  return v2;
}

- (VMUVMRegionIdentifier)initWithTask:(unsigned int)task pid:(int)pid options:(unint64_t)options
{
  v7 = [[VMUTask alloc] initWithTask:*&task];
  v8 = [(VMUVMRegionIdentifier *)self initWithVMUTask:v7 options:options];

  return v8;
}

- (VMUVMRegionIdentifier)initWithTask:(unsigned int)task options:(unint64_t)options
{
  v6 = [[VMUTask alloc] initWithTask:*&task];
  v7 = [(VMUVMRegionIdentifier *)self initWithVMUTask:v6 options:options];

  return v7;
}

- (VMUVMRegionIdentifier)initWithVMUTask:(id)task options:(unint64_t)options
{
  taskCopy = task;
  v8 = [(VMUVMRegionIdentifier *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_task, task);
    v10 = [[VMUTaskThreadStates alloc] initWithVMUTask:taskCopy];
    threadStates = v9->_threadStates;
    v9->_threadStates = v10;

    v12 = [VMUProcessLedger ledgerForVMUTask:v9->_task];
    ledger = v9->_ledger;
    v9->_ledger = v12;

    if ([(VMUTask *)v9->_task isCore]|| (v14 = [(VMUTask *)v9->_task taskPort], (options & 0x1000) == 0) && v14)
    {
      if ([(VMUVMRegionIdentifier *)v9 _recordRegionsAroundAddress:0 regionDescriptionOptions:options])
      {

        v9 = 0;
      }
    }
  }

  return v9;
}

- (VMUVMRegionIdentifier)initWithGraph:(id)graph options:(unint64_t)options
{
  graphCopy = graph;
  v7 = [(VMUVMRegionIdentifier *)self init];
  if (v7)
  {
    if ([graphCopy zoneCount])
    {
      v8 = malloc_type_malloc(8 * [graphCopy zoneCount], 0x2004093837F09uLL);
      if ([graphCopy zoneCount])
      {
        v9 = 0;
        do
        {
          v8[v9] = malloc_type_calloc(1uLL, 0x50uLL, 0x10000404247E4FDuLL);
          NSMapInsertKnownAbsent(v7->_mallocZoneStatisticsMap, [graphCopy zoneNameForIndex:v9], v8[v9]);
          ++v9;
        }

        while (v9 < [graphCopy zoneCount]);
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke;
      v22[3] = &unk_1E8278E38;
      v23 = graphCopy;
      v24 = v8;
      VMUEnumerateVMAnnotatedMallocObjectsWithBlock(v23, v22);
    }

    else
    {
      v8 = 0;
    }

    v10 = [graphCopy vmPageSize] - 1;
    v20[0] = 0;
    v20[1] = v20;
    v20[2] = 0x3032000000;
    v20[3] = __Block_byref_object_copy__7;
    v20[4] = __Block_byref_object_dispose__7;
    v21 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke_137;
    v13[3] = &unk_1E8278E60;
    v11 = v7;
    v14 = v11;
    v15 = graphCopy;
    v16 = v20;
    v17 = v8;
    optionsCopy = options;
    v19 = v10;
    [v15 enumerateRegionsWithBlock:v13];
    coalesceIdenticalRegions(v11->_regions, options);
    free(v8);
    v11->_recordedPhysFootprint = BYTE2(options) & 1;
    if ((options & 0x10000) != 0)
    {
      v11->_didPhysFootprintDirtyAccounting = 1;
    }

    _Block_object_dispose(v20, 8);
  }

  return v7;
}

int64x2_t __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*(a3 + 8) >> 60 == 1)
  {
    v7 = a4[37];
    if (v7 != -1 && v7 >= [*(a1 + 32) zoneCount])
    {
      v8 = [*(a1 + 32) zoneCount];
      v9 = [a4 description];
      NSLog(&cfstr_MallocZoneCoun.isa, v8, v7, v9);
    }

    if (v7 < [*(a1 + 32) zoneCount])
    {
      v11 = *(*(a1 + 40) + 8 * v7);
      v12 = vdupq_n_s64(1uLL);
      v12.i64[0] = *(a3 + 8) & 0xFFFFFFFFFFFFFFFLL;
      result = vaddq_s64(*v11, v12);
      *v11 = result;
    }
  }

  return result;
}

void __47__VMUVMRegionIdentifier_initWithGraph_options___block_invoke_137(uint64_t a1, void *a2)
{
  v16 = a2;
  v4 = objc_autoreleasePoolPush();
  [*(*(a1 + 32) + 24) addObject:v16];
  v5 = [*(a1 + 40) zoneCount];
  v6 = v16;
  if (v5)
  {
    v7 = v16[37];
    v8 = [*(a1 + 40) zoneCount];
    v6 = v16;
    if (v7 < v8 && v16[37] != -1 && (*(v16 + 17) || v16[36]))
    {
      v9 = [*(a1 + 40) zoneNameForIndex:?];
      v10 = *(v16 + 5);
      *(v16 + 5) = v9;

      addMallocRegionPageStatistics(v16, *(*(a1 + 56) + 8 * v16[37]));
      v6 = v16;
      v11 = *(*(*(a1 + 48) + 8) + 40);
      if (v11)
      {
        if ((*(a1 + 64) & 0x80) == 0)
        {
          v12 = v11;
          v13 = v16;
          if (shouldProbablyCoalesceRegions(v12, v13) && [v12 hasSameInfoAsRegion:v13])
          {

            v6 = v16;
            goto LABEL_13;
          }

          v6 = v16;
        }

        v14 = *(*(a1 + 56) + 8 * v6[37]);
        ++*(v14 + 56);
      }
    }
  }

LABEL_13:
  setTypeIfMallocRegion(v6);
  v15 = *(a1 + 32);
  if ((*(v15 + 48) & 1) == 0)
  {
    *(v15 + 48) = ((*(v16 + 20) | *(v16 + 2) | *(v16 + 23)) & *(a1 + 72)) != 0;
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_autoreleasePoolPop(v4);
}

- (id)nonSubmapRegionContainingAddress:(unint64_t)address
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_regions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isSubmap] & 1) == 0 && address - v9[1] < v9[2])
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (int)_recordRegionsAroundAddress:(unint64_t)address regionDescriptionOptions:(unint64_t)options
{
  v27 = *MEMORY[0x1E69E9840];
  if (_recordRegionsAroundAddress_regionDescriptionOptions__onceToken != -1)
  {
    [VMUVMRegionIdentifier _recordRegionsAroundAddress:regionDescriptionOptions:];
  }

  v7 = getprogname();
  v8 = strcmp(v7, "ReportCrash");
  optionsCopy = options | 0x500;
  if (v8)
  {
    optionsCopy = options;
  }

  v10 = optionsCopy & 0x30000;
  v11 = optionsCopy & 0xFFFFFFFFFFFDFFFFLL;
  if ((optionsCopy & 0x30000) == 0)
  {
    optionsCopy |= 0x10000uLL;
  }

  if (v10 == 196608)
  {
    v12 = v11;
  }

  else
  {
    v12 = optionsCopy;
  }

  self->_recordedPhysFootprint = BYTE2(v12) & 1;
  if ((v12 & 0x10000) != 0)
  {
    self->_didPhysFootprintDirtyAccounting = 1;
  }

  [_recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock lock];
  v13 = recordRegions(self->_task, address, self->_regions, self->_threadStates, self->_mallocZoneStatisticsMap, self->_ledger, v12);
  [_recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock unlock];
  if (!v13)
  {
    if (*MEMORY[0x1E69E9AA0] >= *MEMORY[0x1E69E9AB8])
    {
      v14 = *MEMORY[0x1E69E9AB8];
    }

    else
    {
      v14 = *MEMORY[0x1E69E9AA0];
    }

    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_regions;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
LABEL_18:
      v19 = 0;
      while (1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v15);
        }

        if (!self->_hasFractionalPageSizes)
        {
          v20 = (*(*(*(&v22 + 1) + 8 * v19) + 160) | *(*(*(&v22 + 1) + 8 * v19) + 16) | *(*(*(&v22 + 1) + 8 * v19) + 184)) & v14;
          self->_hasFractionalPageSizes = v20 != 0;
          if (v20)
          {
            break;
          }
        }

        if (v17 == ++v19)
        {
          v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v17)
          {
            goto LABEL_18;
          }

          break;
        }
      }
    }

    return 0;
  }

  return v13;
}

void __78__VMUVMRegionIdentifier__recordRegionsAroundAddress_regionDescriptionOptions___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E696AD10]);
  v1 = _recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock;
  _recordRegionsAroundAddress_regionDescriptionOptions__recordRegionsLock = v0;
}

- (NSArray)zoneNames
{
  mallocZoneStatisticsMap = self->_mallocZoneStatisticsMap;
  if (mallocZoneStatisticsMap)
  {
    v3 = NSAllMapTableKeys(mallocZoneStatisticsMap);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v3 copy];

  return v4;
}

- ($B3784314699B2BBEAD7DAC31D728563A)computedStatisticsForZoneWithName:(SEL)name
{
  v8 = a4;
  v6 = NSMapGet(self->_mallocZoneStatisticsMap, v8);
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  if (v6)
  {
    *&retstr->var0 = *v6;
    *&retstr->var2 = v6[1];
    *&retstr->var4 = v6[2];
    *&retstr->var6 = v6[3];
  }

  else
  {
    NSLog(&cfstr_NoMallocZoneSt.isa, v8);
  }

  [(VMUVMRegionIdentifier *)self _computeStatistics:retstr];

  return result;
}

- ($B3784314699B2BBEAD7DAC31D728563A)summaryStatisticsOfAllZones
{
  v21 = *MEMORY[0x1E69E9840];
  *&retstr->var6 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var2 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var0 = 0u;
  zoneNames = [(VMUVMRegionIdentifier *)self zoneNames];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = 0u;
  v6 = [zoneNames countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v17;
    v13 = 0u;
    v14 = 0u;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(zoneNames);
        }

        v11 = NSMapGet(self->_mallocZoneStatisticsMap, *(*(&v16 + 1) + 8 * v10));
        if (v11)
        {
          v14 = vaddq_s64(v14, *(v11 + 1));
          *&retstr->var2 = v14;
          v13 = vaddq_s64(v13, *(v11 + 40));
          *&retstr->var5 = v13;
          v15 = vaddq_s64(v15, *v11);
          *&retstr->var0 = v15;
          v8 += *(v11 + 7);
          retstr->var7 = v8;
        }

        ++v10;
      }

      while (v7 != v10);
      v7 = [zoneNames countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(VMUVMRegionIdentifier *)self _computeStatistics:retstr, *&v13, *&v14];

  return result;
}

- (void)_computeStatistics:(id *)statistics
{
  if (statistics)
  {
    var0 = statistics->var0;
    v4 = statistics->var5 + statistics->var6;
    if (v4)
    {
      v5 = v4 > var0;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      v6 = 100 - 100 * var0 / v4;
      v7 = v4 - var0;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }

    statistics->var8 = v6;
    statistics->var9 = v7;
  }
}

+ (id)descriptionForRange:(_VMURange)range inSortedRegions:(id)regions options:(unint64_t)options
{
  length = range.length;
  location = range.location;
  regionsCopy = regions;
  string = [MEMORY[0x1E696AD60] string];
  v10 = [regionsCopy count];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = 0;
    v25 = location + length;
    v23 = location;
    v24 = length;
    optionsCopy = options;
    do
    {
      v14 = [regionsCopy objectAtIndexedSubscript:{v12, optionsCopy}];
      if (VMURangeIntersectsRange(location, length, *(v14 + 8), *(v14 + 16)))
      {
        if ([v14 isSubmap])
        {
          v12 = (v13 + 1);
          if (v11 > v12)
          {
            address = [v14 address];
            v16 = [regionsCopy objectAtIndexedSubscript:(v13 + 1)];
            address2 = [v16 address];

            v18 = address == address2;
            location = v23;
            length = v24;
            options = optionsCopy;
            if (v18)
            {
              goto LABEL_12;
            }
          }
        }

        if ([string length])
        {
          [string appendString:@"\n"];
        }

        v19 = objc_autoreleasePoolPush();
        v20 = [v14 descriptionWithOptions:options maximumLength:0];
        [string appendString:v20];

        objc_autoreleasePoolPop(v19);
        location = v23;
        length = v24;
      }

      if (*(v14 + 8) >= v25)
      {

        break;
      }

      v12 = (v13 + 1);
LABEL_12:

      v13 = v12;
    }

    while (v11 > v12);
  }

  return string;
}

- (id)descriptionOfRegionsAroundAddress:(unint64_t)address options:(unint64_t)options maximumLength:(unint64_t)length memorySizeDivisor:(unsigned int)divisor
{
  v6 = *&divisor;
  v51 = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_regions count])
  {
    options |= 0x80uLL;
    [(VMUVMRegionIdentifier *)self _recordRegionsAroundAddress:address regionDescriptionOptions:options];
  }

  selfCopy = self;
  optionsCopy = options;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v11 = self->_regions;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (!v12)
  {
    v24 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_20;
  }

  v13 = v12;
  v14 = 0;
  v15 = 0;
  v16 = *v47;
  v35 = v6;
  lengthCopy = length;
  while (2)
  {
    v17 = v15;
    for (i = 0; i != v13; ++i)
    {
      if (*v47 != v16)
      {
        objc_enumerationMutation(v11);
      }

      v19 = *(*(&v46 + 1) + 8 * i);
      if ([v19 isOwnedUnmappedMemory] & 1) != 0 || (objc_msgSend(v19, "isKernelPageTableMemory"))
      {
        v24 = 0;
LABEL_18:
        v15 = v17;
        v6 = v35;
        length = lengthCopy;
        goto LABEL_20;
      }

      v20 = v19[1];
      v21 = v19[2];
      if (v20 + v21 - 1 < address)
      {
        v22 = v17;
        v17 = v19;
        goto LABEL_14;
      }

      if (address - v20 >= v21)
      {
        v24 = v19;
        goto LABEL_18;
      }

      v22 = v14;
      v14 = v19;
LABEL_14:
      v23 = v19;
    }

    v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v46 objects:v50 count:16];
    v24 = 0;
    v15 = v17;
    v6 = v35;
    length = lengthCopy;
    if (v13)
    {
      continue;
    }

    break;
  }

LABEL_20:

  string = [MEMORY[0x1E696AD60] string];
  if (length <= 0x50)
  {
    lengthCopy2 = length;
  }

  else
  {
    lengthCopy2 = length - 6;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __99__VMUVMRegionIdentifier_descriptionOfRegionsAroundAddress_options_maximumLength_memorySizeDivisor___block_invoke;
  aBlock[3] = &unk_1E8278E88;
  v27 = string;
  v43 = optionsCopy;
  v44 = lengthCopy2;
  v45 = v6;
  v41 = v27;
  v42 = selfCopy;
  v28 = _Block_copy(aBlock);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __99__VMUVMRegionIdentifier_descriptionOfRegionsAroundAddress_options_maximumLength_memorySizeDivisor___block_invoke_2;
  v38[3] = &unk_1E8278EB0;
  v29 = v27;
  v39 = v29;
  v30 = _Block_copy(v38);
  if (v14)
  {
    [v29 appendFormat:@"%#llx is in %#llx-%#llx;  bytes after start: %llu  bytes before end: %llu\n", address, v14[1], v14[2] + v14[1], address - v14[1], v14[2] + v14[1] + ~address];
  }

  else
  {
    [v29 appendFormat:@"%#llx is not in any region.  ", address];
    if (v15)
    {
      [v29 appendFormat:@"Bytes after previous region: %llu  ", address - (v15[1] + v15[2]) + 1];
    }

    if (v24)
    {
      [v29 appendFormat:@"Bytes before following region: %llu", v24[1] - address];
    }

    [v29 appendString:@"\n"];
  }

  [v29 appendString:@"\n"];
  v31 = [VMUVMRegion columnHeadersWithOptions:optionsCopy maximumLength:lengthCopy2 memorySizeDivisor:v6 hasFractionalPageSizes:selfCopy->_hasFractionalPageSizes];
  [v29 appendFormat:@"%s%@\n", "      ", v31];

  if (v15)
  {
    v28[2](v28, "      ", v15);
  }

  else
  {
    [v29 appendFormat:@"%sUNUSED SPACE AT START\n", "      "];
  }

  (*(v30 + 2))(v30, "      ", v15, v14);
  if (v14)
  {
    v28[2](v28, "--->  ", v14);
    goto LABEL_39;
  }

  if (v24 && v15)
  {
    (*(v30 + 2))(v30, "--->  ", v15, v24);
    (*(v30 + 2))(v30, "      ", 0, v24);
    goto LABEL_40;
  }

  [v29 appendFormat:@"%s\n", "--->  "];
LABEL_39:
  (*(v30 + 2))(v30, "      ", v14, v24);
  if (v24)
  {
LABEL_40:
    v28[2](v28, "      ", v24);
  }

  else
  {
    [v29 appendFormat:@"%sUNUSED SPACE AT END\n", "      "];
  }

  v32 = v29;

  return v29;
}

void __99__VMUVMRegionIdentifier_descriptionOfRegionsAroundAddress_options_maximumLength_memorySizeDivisor___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = [a3 descriptionWithOptions:*(a1 + 48) maximumLength:*(a1 + 56) memorySizeDivisor:*(a1 + 64) hasFractionalPageSizes:*(*(a1 + 40) + 48)];
    [v4 appendFormat:@"%s%@\n", a2, v5];
  }

  else
  {
    [v4 appendFormat:@"%s%@\n", a2, &stru_1F461F9C8];
  }
}

void __99__VMUVMRegionIdentifier_descriptionOfRegionsAroundAddress_options_maximumLength_memorySizeDivisor___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      v8 = v12[2] + v12[1];
      v9 = v7[1];
      v10 = v9 > v8;
      v11 = v9 - v8;
      if (v10)
      {
        [*(a1 + 32) appendFormat:@"%sGAP OF %#llx BYTES\n", a2, v11];
      }
    }
  }
}

- (id)descriptionForMallocZoneTotals:(unint64_t)totals memorySizeDivisor:(unsigned int)divisor
{
  totalsCopy = totals;
  v64 = *MEMORY[0x1E69E9840];
  v6 = objc_opt_new();
  zoneNames = [(VMUVMRegionIdentifier *)self zoneNames];
  v37 = totalsCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke;
  aBlock[3] = &__block_descriptor_33_e22_Q16__0____QQQQQQQQQQ_8l;
  v61 = (totalsCopy & 0x100000) != 0;
  v8 = _Block_copy(aBlock);
  v58[0] = MEMORY[0x1E69E9820];
  v58[1] = 3221225472;
  v58[2] = __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke_2;
  v58[3] = &unk_1E8278EF8;
  v58[4] = self;
  v36 = v8;
  v59 = v36;
  v9 = [zoneNames sortedArrayUsingComparator:v58];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v54 objects:v63 count:16];
  v12 = v6;
  if (v11)
  {
    v13 = v11;
    v14 = 0;
    v15 = *v55;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v55 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v54 + 1) + 8 * i);
        if ([v17 length] > v14)
        {
          v14 = [v17 length];
        }
      }

      v13 = [v10 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v13);

    if (v14 <= 0xB)
    {
      v18 = 11;
    }

    else
    {
      v18 = v14;
    }

    if (v18 >= 0x3C)
    {
      v19 = 60;
    }

    else
    {
      v19 = v18;
    }

    v6 = v12;
  }

  else
  {

    v19 = 11;
  }

  appendMallocZoneTextLine(v6, v37, v19, ", "VIRTUAL", "RESIDENT", "DIRTY", "SWAPPED", "DIRTY+SWAP", "ALLOCATION", "BYTES", "DIRTY+SWAP", ", "REGION");
  if (divisor <= 1)
  {
    v20 = "SIZE";
  }

  else
  {
    v20 = "PAGES";
  }

  appendMallocZoneTextLine(v6, v37, v19, "MALLOC ZONE", v20, v20, v20, v20, v20, "COUNT", "ALLOCATED", "FRAG SIZE", "% FRAG", "COUNT");
  v21 = objc_opt_new();
  appendMallocZoneTextLine(v21, v37, v19, "===========", "=======", "=========", "=========", "=========", "=========", "=========", "=========", "=========", "======", "======");
  v35 = v21;
  [v6 appendString:v21];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v22 = v10;
  v23 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v51;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v51 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v50 + 1) + 8 * j);
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v45 = 0u;
        objc_msgSend_computedStatisticsForZoneWithName_(self);
        hasFractionalPageSizes = self->_hasFractionalPageSizes;
        uTF8String = [v27 UTF8String];
        v42 = v47;
        v43 = v48;
        v44 = v49;
        v40 = v45;
        v41 = v46;
        v6 = v12;
        appendMallocZoneStatsLine(v12, v37, divisor, hasFractionalPageSizes, v19, uTF8String, &v40);
      }

      v24 = [v22 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v24);
  }

  if (![v22 count])
  {
    [v6 appendString:@"No malloc zones in target process\n"];
    task = self->_task;
    v39 = 0;
    [(VMUTask *)task hasStartedWithErrorString:&v39];
    v31 = v39;
    v32 = v31;
    if (v31)
    {
      [v6 appendFormat:@"%@\n", v31];
    }
  }

  if ([(NSMapTable *)self->_mallocZoneStatisticsMap count]>= 2)
  {
    [v6 appendString:v35];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    objc_msgSend_summaryStatisticsOfAllZones(self);
    v33 = self->_hasFractionalPageSizes;
    v42 = v47;
    v43 = v48;
    v44 = v49;
    v40 = v45;
    v41 = v46;
    appendMallocZoneStatsLine(v6, v37, divisor, v33, v19, "TOTAL", &v40);
  }

  return v6;
}

uint64_t __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a1 + 32) == 1)
  {
    return a2[5] + a2[6];
  }

  return a2[2];
}

uint64_t __74__VMUVMRegionIdentifier_descriptionForMallocZoneTotals_memorySizeDivisor___block_invoke_2(uint64_t a1, const void *a2, void *a3)
{
  v5 = *(*(a1 + 32) + 40);
  v6 = a3;
  NSMapGet(v5, a2);
  NSMapGet(*(*(a1 + 32) + 40), v6);

  v7 = (*(*(a1 + 40) + 16))();
  if (v7 <= (*(*(a1 + 40) + 16))())
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  v9 = (*(*(a1 + 40) + 16))();
  if (v9 < (*(*(a1 + 40) + 16))())
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

- (id)descriptionForRegionTotals:(unint64_t)totals memorySizeDivisor:(unsigned int)divisor
{
  v4 = *&divisor;
  v104[16] = *MEMORY[0x1E69E9840];
  if (![(NSMutableArray *)self->_regions count])
  {
    v35 = &stru_1F461F9C8;
    goto LABEL_99;
  }

  v7 = getprogname();
  if (!strcmp(v7, "ReportCrash"))
  {
    totalsCopy = totals | 0x100;
  }

  else
  {
    totalsCopy = totals;
  }

  v9 = objc_opt_new();
  v104[0] = 0;
  v97 = 0;
  *&v98 = 0;
  cumulateLibraries(self->_regions, @"__TEXT", v104, &v98, &v97);
  cumulateLibraries(self->_regions, @"__LINKEDIT", v104, &v98, &v97);
  v10 = v104[0];
  if (v104[0])
  {
    v11 = memorySizeString(v104[0]);
    v12 = v98;
    v13 = memorySizeString(v98);
    [(__CFString *)v9 appendFormat:@"ReadOnly portion of Libraries: Total=%s resident=%s(%.0f%%) swapped_out_or_unallocated=%s(%.0f%%)\n", v11, v13, ((v12 * 100.0) / v10), memorySizeString(v97), ((v97 * 100.0) / v10)];
  }

  v87 = totalsCopy;
  v83 = v9;
  v14 = self->_regions;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v98 objects:v104 count:16];
  v82 = v4;
  selfCopy = self;
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = *v99;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v99 != v22)
        {
          objc_enumerationMutation(v14);
        }

        v24 = *(*(&v98 + 1) + 8 * i);
        if ((*(v24 + 48) & 1) == 0 && (*(v24 + 24) & 2) != 0 && !*(v24 + 49))
        {
          if (*(v24 + 50) == 2)
          {
            v25 = *(v24 + 160);
            v26 = *(v24 + 176);
            v20 += v25 + v26;
          }

          else
          {
            v20 += *(v24 + 168);
            v25 = *(v24 + 160);
            v26 = *(v24 + 176);
          }

          v27 = *(v24 + 16);
          v21 += v27;
          v19 += v25;
          v17 += v26;
          v18 = v27 + v18 - (v25 + v26);
          *(v24 + 48) = 1;
        }
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v98 objects:v104 count:16];
    }

    while (v16);

    v4 = v82;
    if (v21)
    {
      v28 = memorySizeString(v21);
      v29 = memorySizeString(v20);
      v30 = v21;
      v31 = ((v20 * 100.0) / v21);
      v32 = memorySizeString(v19);
      v33 = ((v19 * 100.0) / v30);
      v34 = memorySizeString(v17);
      [(__CFString *)v83 appendFormat:@"Writable regions: Total=%s written=%s(%.0f%%) resident=%s(%.0f%%) swapped_out=%s(%.0f%%) unallocated=%s(%.0f%%)\n", v28, v29, *&v31, v32, *&v33, v34, ((v17 * 100.0) / v30), memorySizeString(v18), ((v18 * 100.0) / v30)];
    }
  }

  else
  {
  }

  v36 = self->_regions;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v37 = v36;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v98 objects:v104 count:16];
  if (!v38)
  {
    v77 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    goto LABEL_56;
  }

  v39 = v38;
  v77 = 0;
  v75 = 0;
  v76 = 0;
  v73 = 0;
  v74 = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = *v99;
  v88 = v37;
  do
  {
    for (j = 0; j != v39; ++j)
    {
      if (*v99 != v43)
      {
        objc_enumerationMutation(v37);
      }

      v45 = *(*(&v98 + 1) + 8 * j);
      if ((*(v45 + 132) & 1) == 0 && ([*(*(&v98 + 1) + 8 * j) isNullRegion] & 1) == 0 && ((v87 & 0x40) != 0 || (*(v45 + 132) & 8) != 0 || (objc_msgSend(*(v45 + 32), "hasPrefix:", VMUunusedSharedLibLabelPrefix) & 1) == 0))
      {
        v46 = *(v45 + 32);
        if (!v46)
        {
          v46 = @"unknown type";
        }

        v47 = v46;
        if (([(__CFString *)v47 hasPrefix:@"MALLOC"]& 1) != 0)
        {
          if ((v87 & 0x100) == 0)
          {
LABEL_45:
            if ((*(v45 + 132) & 8) != 0)
            {

              v47 = @"unused but dirty shlib __DATA";
            }

            v49 = [dictionary objectForKey:v47];
            if (!v49)
            {
              v49 = objc_alloc_init(VMUVMRegion);
              objc_storeStrong(&v49->type, v47);
              [dictionary setObject:v49 forKey:v47];
            }

            [(VMUVMRegion *)v49 addInfoFromRegion:v45];
            if (([v45 isAnalysisToolRegion] & 1) == 0)
            {
              v73 += *(v45 + 16);
              v76 += *(v45 + 160);
              v75 += *(v45 + 184);
              v74 += *(v45 + 176);
              v41 += *(v45 + 192);
              ++v77;
              v40 += *(v45 + 200);
              v42 += *(v45 + 208);
            }

            v37 = v88;
            continue;
          }
        }

        else
        {
          v48 = [(__CFString *)v47 hasPrefix:@"TC malloc"];
          if ((v87 & 0x100) == 0 || (v48 & 1) == 0)
          {
            goto LABEL_45;
          }
        }

        if (*(v45 + 24) && *(v45 + 50) != 3)
        {

          v47 = @"MALLOC";
        }

        goto LABEL_45;
      }
    }

    v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v98 objects:v104 count:16];
  }

  while (v39);
LABEL_56:
  v70 = v42;
  v71 = v41;
  v72 = v40;

  v35 = v83;
  [(__CFString *)v83 appendString:@"\n"];
  v50 = v87;
  if ((v87 & 0x100000) != 0)
  {
    v52 = [dictionary keysSortedByValueUsingComparator:&__block_literal_global_227];
  }

  else
  {
    allKeys = [dictionary allKeys];
    v52 = [allKeys sortedArrayUsingSelector:sel_compare_];
  }

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v53 = v52;
  v54 = [v53 countByEnumeratingWithState:&v93 objects:v103 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = 0;
    v57 = *v94;
    do
    {
      for (k = 0; k != v55; ++k)
      {
        if (*v94 != v57)
        {
          objc_enumerationMutation(v53);
        }

        v59 = *(*(&v93 + 1) + 8 * k);
        if ([v59 length] > v56)
        {
          v56 = [v59 length];
        }
      }

      v55 = [v53 countByEnumeratingWithState:&v93 objects:v103 count:16];
    }

    while (v55);
  }

  else
  {
    v56 = 0;
  }

  if (v56 >= 0x3C)
  {
    v56 = 60;
  }

  v60 = [@"TOTAL minus reserved VM space"];
  if (v56 <= v60)
  {
    v61 = v60;
  }

  else
  {
    v61 = v56;
  }

  if (v4 <= 1)
  {
    v62 = "SIZE";
  }

  else
  {
    v62 = "PAGES";
  }

  appendTextLine(v83, v87, v4 > 1, v61, ", "VIRTUAL", "RESIDENT", "DIRTY", "SWAPPED", "VOLATILE", "NONVOL", "EMPTY", " REGION", ");
  appendTextLine(v83, v87, v4 > 1, v61, "REGION TYPE", v62, v62, v62, v62, v62, v62, v62, "   COUNT (non-coalesced)", "");
  v63 = objc_opt_new();
  appendTextLine(v63, v87, v4 > 1, v61, "===========", "=======", "========", "=====", "=======", "========", "======", "=====", "=======", "");
  [(__CFString *)v83 appendString:v63];
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  obj = v53;
  v85 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
  v81 = v61;
  if (v85)
  {
    v78 = 0;
    v80 = *v90;
    do
    {
      for (m = 0; m != v85; ++m)
      {
        if (*v90 != v80)
        {
          objc_enumerationMutation(obj);
        }

        v65 = [dictionary objectForKeyedSubscript:*(*(&v89 + 1) + 8 * m)];
        v66 = v65;
        if ((v50 & 0x100) != 0 || ([*(v65 + 32) hasPrefix:@"MALLOC_"] & 1) == 0)
        {
          if ([*(v66 + 32) hasPrefix:off_1EC1CFF18[0]])
          {
            vMUreservedVMaddressSpaceString = @"        not counted in TOTAL below";
          }

          else if ([*(v66 + 32) hasSuffix:VMUreservedLabelSuffix])
          {
            vMUreservedVMaddressSpaceString = [MEMORY[0x1E696AEC0] stringWithFormat:@"        %@", VMUreservedVMaddressSpaceString];
            v78 += *(v66 + 16);
          }

          else
          {
            vMUreservedVMaddressSpaceString = &stru_1F461F9C8;
          }
        }

        else
        {
          vMUreservedVMaddressSpaceString = @"        see MALLOC ZONE table below";
        }

        v35 = v83;
        v50 = v87;
        LODWORD(v61) = v81;
        v4 = v82;
        appendStatsLine(v83, v87, v82, selfCopy->_hasFractionalPageSizes, v81, [*(v66 + 32) UTF8String], *(v66 + 16), *(v66 + 160), *(v66 + 184), *(v66 + 176), *(v66 + 192), *(v66 + 200), *(v66 + 208), *(v66 + 152), -[__CFString UTF8String](vMUreservedVMaddressSpaceString, "UTF8String"));
      }

      v85 = [obj countByEnumeratingWithState:&v89 objects:v102 count:16];
    }

    while (v85);
  }

  else
  {
    v78 = 0;
  }

  [(__CFString *)v35 appendString:v63];
  appendStatsLine(v35, v50, v4, selfCopy->_hasFractionalPageSizes, v61, "TOTAL", v73, v76, v75, v74, v71, v72, v70, v77, "");
  if (v78)
  {
    appendStatsLine(v35, v50, v4, selfCopy->_hasFractionalPageSizes, v81, [@"TOTAL minus reserved VM space"], v73 - v78, v76, v75, v74, v71, v72, v70, v77, "");
  }

  if ((v50 & 0x100) == 0)
  {
    [(__CFString *)v35 appendString:@"\n"];
    v68 = [(VMUVMRegionIdentifier *)selfCopy descriptionForMallocZoneTotals:v50 memorySizeDivisor:v4];
    [(__CFString *)v35 appendString:v68];
  }

LABEL_99:

  return v35;
}

@end