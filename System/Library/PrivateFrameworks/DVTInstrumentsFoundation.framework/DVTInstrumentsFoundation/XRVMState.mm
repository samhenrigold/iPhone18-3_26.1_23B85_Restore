@interface XRVMState
+ (id)currentStateForTask:(unsigned int)task pid:(int)pid previousState:(id)state dehydratedDiffVersion:(BOOL)version;
+ (id)stateFrom:(id)from;
+ (void)initialize;
- (XRVMState)init;
- (XRVMState)initWithCoder:(id)coder;
- (id)_annotationForRegion:(id)region;
- (id)description;
- (id)detailsForRegion:(id)region;
- (id)regionForAddress:(unint64_t)address;
- (id)regionsWithOptions:(int)options;
- (id)summaryRegionsWithOptions:(int)options;
- (void)_addRegion:(id)region annotation:(id)annotation new:(BOOL)new;
- (void)_annotateRange:(_CSRange)range withPath:(id)path type:(id)type;
- (void)_recalculateSizes;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)hydrateWithPreviousState:(id)state;
- (void)setPageSize:(unint64_t)size;
@end

@implementation XRVMState

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    MEMORY[0x2821F9670](self, sel_setVersion_);
  }
}

- (XRVMState)init
{
  v6.receiver = self;
  v6.super_class = XRVMState;
  v2 = [(XRVMState *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    regions = v2->_regions;
    v2->_regions = v3;

    v2->_pageAnnotationsByRegion = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    v2->_machAbsolute = mach_absolute_time();
  }

  return v2;
}

- (void)dealloc
{
  pageAnnotationsByRegion = self->_pageAnnotationsByRegion;
  if (pageAnnotationsByRegion)
  {
    CFRelease(pageAnnotationsByRegion);
  }

  v4.receiver = self;
  v4.super_class = XRVMState;
  [(XRVMState *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeInteger:5 forKey:@"VMStateVersion"];
    [coderCopy encodeInt64:self->_machAbsolute forKey:@"VMStateMachAbsolute"];
    [coderCopy encodeInt64:self->_totalSize forKey:@"VMStateTotalSize"];
    [coderCopy encodeInt64:self->_sharedRegionStart forKey:@"VMStateSharedStart"];
    [coderCopy encodeInt64:self->_sharedRegionLength forKey:@"VMStateSharedLength"];
    [coderCopy encodeObject:self->_regions forKey:@"VMStateRegions"];
    Count = CFDictionaryGetCount(self->_pageAnnotationsByRegion);
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:Count];
    [coderCopy encodeObject:v6 forKey:@"VMStateAnnotationCount"];

    v7 = Count;
    v8 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    v9 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
    CFDictionaryGetKeysAndValues(self->_pageAnnotationsByRegion, v8, v9);
    array = [MEMORY[0x277CBEB18] array];
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:Count];
    if (Count)
    {
      v12 = v9;
      v13 = v8;
      do
      {
        v15 = *v13++;
        v14 = v15;
        v16 = *v12++;
        v17 = v16;
        v18 = v14;
        [array addObject:v18];
        [v11 addObject:v17];

        --v7;
      }

      while (v7);
    }

    [coderCopy encodeObject:array forKey:@"VMStateAnnotationRegionsKeys"];
    [coderCopy encodeObject:v11 forKey:@"VMSTateAnnotations"];
    if (v8)
    {
      free(v8);
    }

    if (v9)
    {
      free(v9);
    }

    goto LABEL_18;
  }

  [coderCopy encodeValueOfObjCType:"Q" at:&self->_machAbsolute];
  [coderCopy encodeObject:self->_regions];
  [coderCopy encodeValueOfObjCType:"Q" at:&self->_totalSize];
  [coderCopy encodeValueOfObjCType:"Q" at:&self->_sharedRegionStart];
  [coderCopy encodeValueOfObjCType:"Q" at:&self->_sharedRegionLength];
  v22 = CFDictionaryGetCount(self->_pageAnnotationsByRegion);
  [coderCopy encodeValueOfObjCType:"I" at:&v22];
  v19 = malloc_type_malloc(8 * v22, 0x80040B8603338uLL);
  v20 = malloc_type_malloc(8 * v22, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(self->_pageAnnotationsByRegion, v19, v20);
  if (v22)
  {
    for (i = 0; i < v22; [coderCopy encodeObject:v20[i++]])
    {
      [coderCopy encodeObject:v19[i]];
    }
  }

  else if (!v19)
  {
    goto LABEL_16;
  }

  free(v19);
LABEL_16:
  if (v20)
  {
    free(v20);
  }

LABEL_18:
}

- (XRVMState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v6 = [v5 decodeIntegerForKey:@"VMStateVersion"];
    }

    else
    {
      v6 = [v5 versionForClassName:@"XRVMState"];
    }

    v7 = v6;
    self->_pageAnnotationsByRegion = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
    if (v7 > 4)
    {
      self->_machAbsolute = [v5 decodeInt64ForKey:@"VMStateMachAbsolute"];
      self->_totalSize = [v5 decodeInt64ForKey:@"VMStateTotalSize"];
      self->_sharedRegionStart = [v5 decodeInt64ForKey:@"VMStateSharedStart"];
      self->_sharedRegionLength = [v5 decodeInt64ForKey:@"VMStateSharedLength"];
      v10 = MEMORY[0x277CBEB98];
      v11 = objc_opt_class();
      v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
      v13 = [v5 decodeObjectOfClasses:v12 forKey:@"VMStateRegions"];
      v14 = [v13 mutableCopy];
      regions = self->_regions;
      self->_regions = v14;

      v16 = MEMORY[0x277CBEB98];
      v17 = objc_opt_class();
      v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
      v19 = [v5 decodeObjectOfClasses:v18 forKey:@"VMStateAnnotationRegionsKeys"];

      v20 = MEMORY[0x277CBEB98];
      v21 = objc_opt_class();
      v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
      v23 = [v5 decodeObjectOfClasses:v22 forKey:@"VMSTateAnnotations"];

      if ([v23 count])
      {
        v24 = 0;
        v25 = 1;
        do
        {
          pageAnnotationsByRegion = self->_pageAnnotationsByRegion;
          v27 = [v19 objectAtIndexedSubscript:v24];
          v28 = [v23 objectAtIndexedSubscript:v24];
          CFDictionarySetValue(pageAnnotationsByRegion, v27, v28);

          v24 = v25;
        }

        while ([v23 count] > v25++);
      }
    }

    else
    {
      v37 = 0;
      [v5 decodeValueOfObjCType:"Q" at:&v37 size:8];
      if (v7 > 1)
      {
        v8 = v37;
        v9 = 8;
        if (v7 == 2)
        {
          v9 = 16;
        }
      }

      else
      {
        v8 = (1000 * v37);
        v9 = 16;
      }

      *(&self->super.isa + v9) = v8;
      decodeObject = [v5 decodeObject];
      v31 = self->_regions;
      self->_regions = decodeObject;

      if (v7 != 4)
      {
        v36 = 0;
        [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
        [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
        [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
      }

      [v5 decodeValueOfObjCType:"Q" at:&self->_totalSize size:8];
      [v5 decodeValueOfObjCType:"Q" at:&self->_sharedRegionStart size:8];
      [v5 decodeValueOfObjCType:"Q" at:&self->_sharedRegionLength size:8];
      v36 = 0;
      [v5 decodeValueOfObjCType:"I" at:&v36 size:4];
      if (v36)
      {
        for (i = 0; i < v36; ++i)
        {
          decodeObject2 = [v5 decodeObject];
          decodeObject3 = [v5 decodeObject];
          CFDictionarySetValue(self->_pageAnnotationsByRegion, decodeObject2, decodeObject3);
        }
      }
    }

    [(XRVMState *)self _recalculateSizes];
  }

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = XRVMState;
  v4 = [(XRVMState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@\nRegions: %@", v4, self->_regions];

  return v5;
}

+ (id)currentStateForTask:(unsigned int)task pid:(int)pid previousState:(id)state dehydratedDiffVersion:(BOOL)version
{
  versionCopy = version;
  v8 = *&task;
  v105 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v9 = objc_alloc_init(XRVMState);
  context = objc_autoreleasePoolPush();
  size = 0;
  address = 0;
  infoCnt = 19;
  nesting_depth = 0;
  v79 = 0u;
  memset(v80, 0, 28);
  *info = 0u;
  v78 = 0u;
  if (!mach_vm_region_recurse(v8, &address, &size, &nesting_depth, info, &infoCnt))
  {
    v11 = 0;
    do
    {
      if (v80[0])
      {
        ++nesting_depth;
        v12 = mach_vm_region_recurse(v8, &address, &size, &nesting_depth, info, &infoCnt);
      }

      else
      {
        v13 = [(CFDictionaryRef *)stateCopy regionForAddress:address];
        v14 = v13;
        if (v13 && [v13 matchesAddr:address size:size regionInfo:info])
        {
          [(XRVMState *)v9 _addRegion:v14 annotation:CFDictionaryGetValue(stateCopy[10] new:v14), !versionCopy];
        }

        else
        {
          v15 = [XRVMRegion alloc];
          v16 = [(XRVMRegion *)v15 initWithAddress:address size:size regionInfo:info];
          v17 = v16;
          if (BYTE14(v79))
          {
            v18 = proc_regionfilename(pid, address, &buffer, 0x400u);
            if (v18 < 1)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"Object_id=%x", v80[2]];
            }

            else
            {
              *(&buffer + v18) = 0;
              [MEMORY[0x277CCACA8] stringWithUTF8String:&buffer];
            }
            v19 = ;
            [(XRVMRegion *)v17 setPath:v19 type:0];
          }

          else if ([(XRVMRegion *)v16 isNullRegion])
          {
            if (v11)
            {
              [(XRVMRegion *)v17 setPath:@"GPU Carveout (reserved)" type:0];
            }

            else
            {
              [(XRVMRegion *)v17 setPath:@"Commpage (reserved)" type:0];
            }

            v11 = 1;
          }

          [(XRVMState *)v9 _addRegion:v17 annotation:0 new:1];
        }

        if (!v80[0])
        {
          address += size;
        }

        v12 = mach_vm_region_recurse(v8, &address, &size, &nesting_depth, info, &infoCnt);
      }
    }

    while (!v12);
  }

  v75[0] = 0;
  v75[1] = v75;
  v75[2] = 0x2020000000;
  v76 = 0;
  CSSymbolicatorGetFlagsForNListOnlyData();
  CSSymbolicatorCreateWithTaskFlagsAndNotification();
  v68 = MEMORY[0x277D85DD0];
  v69 = 3221225472;
  v70 = sub_247FFA024;
  v71 = &unk_278EF4300;
  v73 = v75;
  v74 = 10;
  v10 = v9;
  v72 = v10;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  CSRelease();
  suspend_token = 0;
  if (task_suspend2(v8, &suspend_token))
  {
    v54 = 0;
    goto LABEL_89;
  }

  LODWORD(buffer) = 0;
  task_info_outCnt[0] = 1;
  v20 = task_info(v8, 0x1Cu, &buffer, task_info_outCnt);
  v22 = (buffer & 2) == 0 || v20 != 0;
  LODWORD(buffer) = 0;
  base_address = dyld_process_create_for_task();
  if (!base_address)
  {
    goto LABEL_37;
  }

  LODWORD(buffer) = 0;
  v24 = dyld_process_snapshot_create_for_process();
  dyld_process_dispose();
  if (!v24)
  {
LABEL_36:
    base_address = 0;
LABEL_37:
    shared_cache = 0;
    goto LABEL_38;
  }

  shared_cache = dyld_process_snapshot_get_shared_cache();
  if (shared_cache)
  {
    if (dyld_shared_cache_is_mapped_private())
    {
      goto LABEL_36;
    }

    base_address = dyld_shared_cache_get_base_address();
    shared_cache = dyld_shared_cache_get_mapped_size();
    dyld_process_snapshot_dispose();
  }

  else
  {
    base_address = 0;
  }

LABEL_38:
  v10->_sharedRegionStart = base_address;
  v10->_sharedRegionLength = shared_cache;
  *task_info_outCnt = 0;
  act_listCnt = 0;
  v26 = task_threads(v8, task_info_outCnt, &act_listCnt);
  v54 = v26 == 0;
  if (v26)
  {
    task_resume2(suspend_token);
  }

  else
  {
    if (act_listCnt)
    {
      for (i = 0; i < act_listCnt; ++i)
      {
        v28 = *(*task_info_outCnt + 4 * i);
        if (v22)
        {
          LODWORD(v92) = 0;
          v90 = 0u;
          v91 = 0u;
          buffer = 0u;
          v89 = 0u;
          old_stateCnt = 17;
          if (thread_get_state(v28, 1, &buffer, &old_stateCnt))
          {
            v29 = 0;
          }

          else
          {
            v29 = DWORD1(v91);
          }
        }

        else
        {
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v89 = 0u;
          v90 = 0u;
          buffer = 0u;
          old_stateCnt = 68;
          if (thread_get_state(v28, 6, &buffer, &old_stateCnt))
          {
            v29 = 0;
          }

          else
          {
            v29 = *(&v103 + 1);
          }
        }

        if (v29)
        {
          v30 = [(XRVMState *)v10 regionForAddress:v29];
          if (v30)
          {
            buffer = 0uLL;
            *&v89 = 0;
            old_stateCnt = 6;
            if (thread_info(*(*task_info_outCnt + 4 * i), 4u, &buffer, &old_stateCnt))
            {
              NSLog(&cfstr_UnableToObtain.isa, *(*task_info_outCnt + 4 * i), v30);
              buffer = @"unknown thread";
            }

            else
            {
              buffer = [MEMORY[0x277CCACA8] stringWithFormat:@"thread %qx", buffer];
            }

            path = [v30 path];
            v33 = [path isEqualToString:buffer];

            if (v33)
            {
              v34 = v30;
            }

            else
            {
              v35 = [XRVMRegion regionIndexInArray:v10->_regions forAddress:v29];
              v34 = [v30 copy];
              [(NSMutableArray *)v10->_regions replaceObjectAtIndex:v35 withObject:v34];
            }

            [v34 setPath:buffer type:0];
          }
        }
      }

      if (act_listCnt)
      {
        v36 = 0;
        v37 = MEMORY[0x277D85F48];
        do
        {
          mach_port_deallocate(*v37, *(*task_info_outCnt + 4 * v36++));
        }

        while (v36 < act_listCnt);
        mach_vm_deallocate(*v37, *task_info_outCnt, 4 * act_listCnt);
      }
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v38 = v10->_regions;
    v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v61 objects:v87 count:16];
    if (v39)
    {
      v40 = *v62;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v62 != v40)
          {
            objc_enumerationMutation(v38);
          }

          v42 = *(*(&v61 + 1) + 8 * j);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [v42 location];
            [v42 virtualSize];
            if (CSRangeContainsRange())
            {
              type = [v42 type];
              v44 = type == 0;

              if (v44)
              {
                [v42 setPath:@"unused shared library" type:0];
              }

              v45 = [[XRVMRegionAnnotation alloc] initSamplingRegion:v42 inTask:v8];
              CFDictionarySetValue(v10->_pageAnnotationsByRegion, v42, v45);
            }
          }
        }

        v39 = [(NSMutableArray *)v38 countByEnumeratingWithState:&v61 objects:v87 count:16];
      }

      while (v39);
    }

    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v46 = v10->_regions;
    v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v57 objects:v86 count:16];
    if (v47)
    {
      v48 = *v58;
      do
      {
        for (k = 0; k != v47; ++k)
        {
          if (*v58 != v48)
          {
            objc_enumerationMutation(v46);
          }

          v50 = *(*(&v57 + 1) + 8 * k);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 && !CFDictionaryContainsKey(v10->_pageAnnotationsByRegion, v50) && [v50 location] && (objc_msgSend(v50, "residentSize") || objc_msgSend(v50, "swappedSize")))
          {
            v51 = [[XRVMRegionAnnotation alloc] initSamplingRegion:v50 inTask:v8];
            CFDictionarySetValue(v10->_pageAnnotationsByRegion, v50, v51);
          }
        }

        v47 = [(NSMutableArray *)v46 countByEnumeratingWithState:&v57 objects:v86 count:16];
      }

      while (v47);
    }

    task_resume2(suspend_token);
    v10->_task = v8;
    [(XRVMState *)v10 _recalculateSizes];
  }

LABEL_89:

  _Block_object_dispose(v75, 8);
  objc_autoreleasePoolPop(context);
  if (v54)
  {
    v52 = v10;
  }

  else
  {
    v52 = 0;
  }

  return v52;
}

+ (id)stateFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v4 = objc_alloc_init(XRVMState);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = fromCopy;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(XRVMState *)v4 _addRegion:*(*(&v11 + 1) + 8 * i) annotation:0 new:1, v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

- (void)_recalculateSizes
{
  v16 = *MEMORY[0x277D85DE8];
  *&self->_residentSize = 0u;
  *&self->_dirtySize = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_regions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          path = [v8 path];
          v10 = [path isEqualToString:@"unused shared library"];

          if ((v10 & 1) == 0 && ([v8 isSubmapRegion] & 1) == 0 && (objc_msgSend(v8, "isNullRegion") & 1) == 0)
          {
            self->_totalSize += [v8 virtualSize];
            self->_residentSize += [v8 residentSize];
            self->_dirtySize += [v8 dirtySize];
            self->_swapSize += [v8 swappedSize];
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (id)detailsForRegion:(id)region
{
  if (region)
  {
    v4 = CFDictionaryGetValue(self->_pageAnnotationsByRegion, region);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setPageSize:(unint64_t)size
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_regions;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if ([v10 pageSize] == size)
        {

          return;
        }

        [v10 setPageSize:size];
        v11 = [(XRVMState *)self _annotationForRegion:v10];
        [v11 setPageSize:size];
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  [(XRVMState *)self _recalculateSizes];
}

- (void)hydrateWithPreviousState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if (stateCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    selfCopy = self;
    v6 = self->_regions;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        v10 = 0;
        do
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * v10);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(NSMutableArray *)v5 addObject:v11];
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v12 = [stateCopy regionForAddress:{objc_msgSend(v11, "unsignedLongLongValue")}];
              if (v12)
              {
                [(NSMutableArray *)v5 addObject:v12];
                v13 = [stateCopy _annotationForRegion:v12];
                if (v13)
                {
                  CFDictionarySetValue(selfCopy->_pageAnnotationsByRegion, v12, v13);
                }
              }
            }
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    regions = selfCopy->_regions;
    selfCopy->_regions = v5;

    [(XRVMState *)selfCopy _recalculateSizes];
  }
}

- (id)regionForAddress:(unint64_t)address
{
  v4 = [XRVMRegion regionIndexInArray:self->_regions forAddress:address];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSMutableArray *)self->_regions objectAtIndex:v4];
  }

  return v5;
}

- (void)_addRegion:(id)region annotation:(id)annotation new:(BOOL)new
{
  newCopy = new;
  key = region;
  annotationCopy = annotation;
  if (key)
  {
    if (newCopy)
    {
      v9 = key;
      if (annotationCopy)
      {
        CFDictionarySetValue(self->_pageAnnotationsByRegion, key, annotationCopy);
        v9 = key;
      }

      [(NSMutableArray *)self->_regions addObject:v9];
    }

    else
    {
      regions = self->_regions;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(key, "location")}];
      [(NSMutableArray *)regions addObject:v11];
    }
  }
}

- (id)_annotationForRegion:(id)region
{
  if (region)
  {
    v4 = CFDictionaryGetValue(self->_pageAnnotationsByRegion, region);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_annotateRange:(_CSRange)range withPath:(id)path type:(id)type
{
  var1 = range.var1;
  var0 = range.var0;
  pathCopy = path;
  typeCopy = type;
  v10 = [XRVMRegion regionIndexInArray:self->_regions forAddress:var0];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v10;
    v12 = [(NSMutableArray *)self->_regions objectAtIndex:v10];
    location = [v12 location];
    v14 = var0 - location;
    if (var0 > location)
    {
      v15 = location;
      v16 = [v12 copy];
      [v16 setAddress:v15 size:v14];
      [(NSMutableArray *)self->_regions insertObject:v16 atIndex:v11++];
    }

    v17 = var0 + var1;
    var1 = [XRVMRegion regionIndexInArray:self->_regions forAddress:var0 + var1];
    if (var1 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = var1;
      v20 = [(NSMutableArray *)self->_regions objectAtIndex:var1];
      location2 = [v20 location];
      virtualSize = [v20 virtualSize];
      if (virtualSize + location2 > v17)
      {
        v24 = virtualSize + location2 - v17;
        if (v20 == v12)
        {
          v23 = [v20 copy];
          [(NSMutableArray *)self->_regions insertObject:v23 atIndex:v11 + 1];
        }

        else
        {
          v23 = v20;
          --v19;
        }

        [v23 setAddress:var0 + var1 size:{v24, v24}];
      }

      if (v19 > v11)
      {
        [(NSMutableArray *)self->_regions removeObjectsInRange:v11 + 1, v19 - v11];
      }
    }

    [v12 setAddress:var0 size:var1];
    [v12 setPath:pathCopy type:typeCopy];
  }
}

- (id)regionsWithOptions:(int)options
{
  optionsCopy = options;
  v26 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_regions;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (!v5)
  {
    v8 = 0;
LABEL_32:

    goto LABEL_33;
  }

  v6 = v5;
  v7 = 0;
  v8 = 0;
  v9 = *v22;
  do
  {
    v10 = 0;
    do
    {
      v11 = v7;
      if (*v22 != v9)
      {
        objc_enumerationMutation(v4);
      }

      v12 = *(*(&v21 + 1) + 8 * v10);
      path = [v12 path];
      v14 = [path isEqualToString:@"unused shared library"];

      if (v14)
      {
        if (v11)
        {
          [array addObject:v11];
        }

        v7 = 0;
      }

      else if ((optionsCopy & 1) != 0 && v11 && [v12 typeMatches:v11] && objc_msgSend(v12, "isAdjacentTo:", v11))
      {
        if (v8)
        {
          [v8 addObject:v12];
        }

        else
        {
          v8 = [MEMORY[0x277CBEB18] arrayWithObjects:{v11, v12, 0}];
        }

        v7 = v12;
      }

      else
      {
        if (v8)
        {
          v15 = [[XRVMCoalescedRegion alloc] initWithRegions:v8 groupName:0];
          [array addObject:v15];
        }

        else if (v11)
        {
          [array addObject:v11];
        }

        v7 = v12;
        v8 = 0;
      }

      ++v10;
    }

    while (v6 != v10);
    v16 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    v6 = v16;
  }

  while (v16);

  if (v8)
  {
    v17 = [[XRVMCoalescedRegion alloc] initWithRegions:v8 groupName:0];
    [array addObject:v17];

LABEL_31:
    v4 = v7;
    goto LABEL_32;
  }

  if (v7)
  {
    [array addObject:v7];
    v8 = 0;
    goto LABEL_31;
  }

  v8 = 0;
LABEL_33:

  return array;
}

- (id)summaryRegionsWithOptions:(int)options
{
  v3 = *&options;
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  context = objc_autoreleasePoolPush();
  [(XRVMState *)self regionsWithOptions:v3];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    v10 = *v27;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        displayType = [v12 displayType];
        if ([v12 location])
        {
          if (v9)
          {
            [(XRVMCoalescedRegion *)v9 addRegion:v12];
          }

          else
          {
            v14 = [XRVMCoalescedRegion alloc];
            v15 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
            v9 = [(XRVMCoalescedRegion *)v14 initWithRegions:v15 groupName:XRVMAllRegionAggregateName];

            [v5 setObject:v9 forKey:XRVMAllRegionAggregateName];
          }

          if ([v12 dirtySize])
          {
            if (v8)
            {
              [(XRVMCoalescedRegion *)v8 addRegion:v12];
            }

            else
            {
              v16 = [XRVMCoalescedRegion alloc];
              v17 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
              v8 = [(XRVMCoalescedRegion *)v16 initWithRegions:v17 groupName:XRVMDirtyRegionAggregateName];

              [v5 setObject:v8 forKey:XRVMDirtyRegionAggregateName];
            }
          }

          v18 = [v5 objectForKey:displayType];
          if (v18)
          {
            v19 = v18;
            [(XRVMCoalescedRegion *)v18 addRegion:v12];
          }

          else
          {
            v20 = [XRVMCoalescedRegion alloc];
            v21 = [MEMORY[0x277CBEA60] arrayWithObject:v12];
            v19 = [(XRVMCoalescedRegion *)v20 initWithRegions:v21 groupName:displayType];

            [v5 setObject:v19 forKey:displayType];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  objc_autoreleasePoolPop(context);
  allValues = [v5 allValues];

  return allValues;
}

@end