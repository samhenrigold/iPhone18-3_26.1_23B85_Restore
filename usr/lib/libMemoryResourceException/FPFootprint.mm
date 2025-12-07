@interface FPFootprint
+ (BOOL)breakDownPhysFootprint;
+ (id)installCancelHandler:(id)handler;
+ (int)vmRegionInfoFlags;
+ (void)setBreakDownPhysFootprint:(BOOL)footprint;
+ (void)setVmRegionInfoFlags:(int)flags;
- (BOOL)gatherData:(unint64_t)data;
- (FPFootprint)initWithProcesses:(id)processes;
- (id)ioAccelMemoryInfoDetailsAtAddress:(unint64_t)address for:(int)for error:(id *)error;
- (id)ioSurfaceExtendedInfoDetailsAtAddress:(unint64_t)address for:(int)for;
- (void)analyzeData;
- (void)dealloc;
- (void)printOutputVerbose:(BOOL)verbose summarize:(BOOL)summarize noCategories:(BOOL)categories;
@end

@implementation FPFootprint

+ (BOOL)breakDownPhysFootprint
{
  v2 = byte_2A18A6000;
  if (byte_2A18A6000 == 2)
  {
    v5 = 0;
    v4 = 4;
    if (sysctlbyname("vm.self_region_footprint", &v5, &v4, 0, 0) && *__error() != 2)
    {
      perror("Unable to retrieve status of physical footprint data collection");
      v5 = 0;
    }

    v2 = v5 != 0;
    byte_2A18A6000 = v5 != 0;
  }

  return v2 == 1;
}

+ (void)setBreakDownPhysFootprint:(BOOL)footprint
{
  footprintCopy = footprint;
  if (sysctlbyname("vm.self_region_footprint", 0, 0, &footprintCopy, 4uLL) && *__error() != 2)
  {
    perror("Unable to configure physical footprint data collection");
  }

  byte_2A18A6000 = 2;
}

+ (int)vmRegionInfoFlags
{
  v4 = 0;
  v3 = 4;
  if (sysctlbyname("vm.self_region_info_flags", &v4, &v3, 0, 0) && *__error() != 2)
  {
    perror("Unable to retrieve current VM region info flags");
  }

  return v4;
}

+ (void)setVmRegionInfoFlags:(int)flags
{
  flagsCopy = flags;
  if (sysctlbyname("vm.self_region_info_flags", 0, 0, &flagsCopy, 4uLL))
  {
    if (*__error() != 2)
    {
      perror("Unable to configure VM region info flags");
    }
  }
}

- (FPFootprint)initWithProcesses:(id)processes
{
  processesCopy = processes;
  v11.receiver = self;
  v11.super_class = FPFootprint;
  v6 = [(FPFootprint *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_processes, processes);
    v7->_earlyExit = 0;
    v8 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    outputFormatters = v7->_outputFormatters;
    v7->_outputFormatters = v8;

    v7->_qualityOfService = 17;
    v7->_allPIDsIOSurfaceDescriptionsLock._os_unfair_lock_opaque = 0;
    v7->_allPIDsIOAccelMemoryInfosLock._os_unfair_lock_opaque = 0;
    v7->_memoryObjectMapsInitialized = 0;
  }

  return v7;
}

- (void)dealloc
{
  sub_297E37154(self);
  v3.receiver = self;
  v3.super_class = FPFootprint;
  [(FPFootprint *)&v3 dealloc];
}

+ (id)installCancelHandler:(id)handler
{
  handlerCopy = handler;
  v4 = dispatch_source_create(MEMORY[0x29EDCA5C0], 2uLL, 0, 0);
  dispatch_source_set_event_handler(v4, handlerCopy);

  signal(2, 1);
  dispatch_resume(v4);

  return v4;
}

- (BOOL)gatherData:(unint64_t)data
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x29EDCA580], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, self->_qualityOfService, 0);

  v7 = dispatch_queue_create("com.apple.footprint.gatherdata", v6);
  processes = [(FPFootprint *)self processes];
  objc_opt_self();
  v9 = [processes sortedArrayUsingComparator:&unk_2A1E8FA70];

  v10 = +[FPTime now];
  gatherStartTime = self->_gatherStartTime;
  self->_gatherStartTime = v10;

  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v12 = [v9 count];
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = sub_297E375B8;
  v22 = &unk_29EE854A0;
  selfCopy = self;
  v25 = &v27;
  v13 = v9;
  v24 = v13;
  dataCopy = data;
  dispatch_apply(v12, v7, &v19);
  if (*(v28 + 24) == 1)
  {
    lastObject = [v13 lastObject];
    [lastObject _addGlobalError:@"Footprint exited early due to SIGINT and did not finish gathering all data"];
  }

  v15 = [FPTime now:v19];
  gatherEndTime = self->_gatherEndTime;
  self->_gatherEndTime = v15;

  v17 = *(v28 + 24);
  _Block_object_dispose(&v27, 8);

  return v17;
}

- (void)analyzeData
{
  v108 = *MEMORY[0x29EDCA608];
  if (self->_memoryObjectMapsInitialized)
  {
LABEL_85:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_86;
  }

  selfCopy = self;
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  pidToFootprint = selfCopy->_pidToFootprint;
  selfCopy->_pidToFootprint = v3;

  v92 = "memory_objects";
  v93 = 224;
  p_memoryObjects = &selfCopy->_memoryObjects;
  os_map_64_init();
  v90 = "text_memory_objects";
  v91 = 224;
  p_textMemoryObjects = &selfCopy->_textMemoryObjects;
  os_map_64_init();
  v88 = "linkedit_memory_objects";
  v89 = 224;
  p_linkeditMemoryObjects = &selfCopy->_linkeditMemoryObjects;
  os_map_64_init();
  v7 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  sharedCacheMemoryObjectsTable = selfCopy->_sharedCacheMemoryObjectsTable;
  selfCopy->_sharedCacheMemoryObjectsTable = v7;

  selfCopy->_memoryObjectMapsInitialized = 1;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v9 = selfCopy->_processes;
  v70 = selfCopy;
  v67 = [(NSArray *)v9 countByEnumeratingWithState:&v84 objects:v102 count:16];
  if (v67)
  {
    v68 = *v85;
    v66 = v9;
    do
    {
      v10 = 0;
      do
      {
        if (*v85 != v68)
        {
          objc_enumerationMutation(v9);
        }

        v11 = *(*(&v84 + 1) + 8 * v10);
        if (!selfCopy->_memoryObjectMapsInitialized)
        {
LABEL_84:
          _os_assert_log();
          _os_crash();
          __break(1u);
          goto LABEL_85;
        }

        v78 = +[FPFootprint breakDownPhysFootprint];
        sharedCache = [v11 sharedCache];
        baseAddress = [sharedCache baseAddress];
        v72 = sharedCache;
        v69 = v10;
        if (sharedCache)
        {
          v13 = sharedCache;
          v14 = selfCopy->_sharedCacheMemoryObjectsTable;
          uuid = [v13 uuid];
          v16 = [(NSMutableDictionary *)v14 objectForKeyedSubscript:uuid];

          if (!v16)
          {
            v17 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
            v107[0] = xmmword_29EE854E0;
            os_map_64_init();
            v16 = [MEMORY[0x29EDBA168] valueWithPointer:v17];
            v18 = selfCopy->_sharedCacheMemoryObjectsTable;
            uuid2 = [v72 uuid];
            [(NSMutableDictionary *)v18 setObject:v16 forKeyedSubscript:uuid2];
          }

          [v16 pointerValue];

          sharedCache = v72;
        }

        v105 = 0u;
        v106 = 0u;
        v103 = 0u;
        v104 = 0u;
        context = v11;
        obj = [v11 memoryRegions];
        v20 = [obj countByEnumeratingWithState:&v103 objects:v107 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v104;
          v76 = *v104;
          do
          {
            v23 = 0;
            v80 = v21;
            do
            {
              if (*v104 != v22)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v103 + 1) + 8 * v23);
              if ([(FPMemoryObject *)v24 inSharedCache])
              {
                if (!sharedCache)
                {
                  _os_assert_log();
                  _os_crash();
                  __break(1u);
                  goto LABEL_84;
                }

                if (([(FPMemoryObject *)v24 privateSharedCacheRegion]& 1) != 0)
                {
LABEL_23:
                  [(FPMemoryObject *)v24 setMemoryObject:v24];
                  goto LABEL_40;
                }

                object_id = [(FPMemoryObject *)v24 start]- baseAddress + 1;
              }

              else
              {
                object_id = [(FPMemoryObject *)v24 object_id];
                [(FPMemoryObject *)v24 segment];
              }

              if ((object_id + 1) <= 1)
              {
                goto LABEL_23;
              }

              if (v78)
              {
                ownedExclusivelyByParentProcess = [(FPMemoryObject *)v24 ownedExclusivelyByParentProcess];
              }

              else
              {
                ownedExclusivelyByParentProcess = 0;
              }

              v27 = os_map_64_find();
              if (!v27)
              {
                if ((ownedExclusivelyByParentProcess & 1) != 0 || [(FPMemoryObject *)v24 eligibleForProcessView])
                {
                  v28 = objc_alloc_init(FPMemoryObject);
                }

                else
                {
                  v28 = v24;
                }

                v27 = v28;
                os_map_64_insert();
              }

              if (v27 != v24)
              {
                v29 = p_linkeditMemoryObjects;
                ensureMemoryObject = [(FPMemoryObject *)v27 ensureMemoryObject];
                v31 = ensureMemoryObject;
                if (ensureMemoryObject != v27)
                {
                  v32 = p_memoryObjects;
                  v33 = ensureMemoryObject;

                  v27 = v33;
                  v34 = os_map_64_delete();
                  os_map_64_insert();

                  p_memoryObjects = v32;
                }

                sub_297E3398C(v31, v24, context);
                if (ownedExclusivelyByParentProcess)
                {
                  -[FPMemoryObject setOwnerPid:](v31, "setOwnerPid:", [context pid]);
                }

                p_linkeditMemoryObjects = v29;
                sharedCache = v72;
              }

              [(FPMemoryObject *)v24 setMemoryObject:v27];

              v22 = v76;
              v21 = v80;
LABEL_40:
              ++v23;
            }

            while (v21 != v23);
            v21 = [obj countByEnumeratingWithState:&v103 objects:v107 count:16];
          }

          while (v21);
        }

        selfCopy = v70;
        v10 = v69 + 1;
        v9 = v66;
      }

      while (v69 + 1 != v67);
      v67 = [(NSArray *)v66 countByEnumeratingWithState:&v84 objects:v102 count:16];
    }

    while (v67);
  }

  v35 = objc_autoreleasePoolPush();
  if (!selfCopy->_memoryObjectMapsInitialized)
  {
LABEL_86:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  contexta = v35;
  sub_297E37F6C(p_memoryObjects, "finalized_memory_objects");
  sub_297E37F6C(p_textMemoryObjects, "finalized_text_objects");
  sub_297E37F6C(p_linkeditMemoryObjects, "finalized_linkedit_objects");
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  objectEnumerator = [(NSMutableDictionary *)selfCopy->_sharedCacheMemoryObjectsTable objectEnumerator];
  v37 = [objectEnumerator countByEnumeratingWithState:&v103 objects:v107 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v104;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v104 != v39)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v41 = sub_297E37F6C([*(*(&v103 + 1) + 8 * i) pointerValue], "finalized_shared_cache");
      }

      v38 = [objectEnumerator countByEnumeratingWithState:&v103 objects:v107 count:{16, v41}];
    }

    while (v38);
  }

  [(NSMutableDictionary *)selfCopy->_pidToFootprint removeAllObjects];
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v79 = sub_297E39B8C(selfCopy);
  v81 = [v79 countByEnumeratingWithState:&v94 objects:&v103 count:16];
  if (v81)
  {
    v42 = *v95;
    v77 = *v95;
    do
    {
      for (j = 0; j != v81; ++j)
      {
        if (*v95 != v42)
        {
          objc_enumerationMutation(v79);
        }

        v44 = MEMORY[0x29EDBA070];
        v45 = *(*(&v94 + 1) + 8 * j);
        if (+[FPFootprint breakDownPhysFootprint])
        {
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          memoryRegions = [v45 memoryRegions];
          v47 = [memoryRegions countByEnumeratingWithState:&v98 objects:v107 count:16];
          if (!v47)
          {
            v49 = 0;
            goto LABEL_80;
          }

          v48 = v47;
          obja = v44;
          v49 = 0;
          v50 = *v99;
          do
          {
            for (k = 0; k != v48; ++k)
            {
              if (*v99 != v50)
              {
                objc_enumerationMutation(memoryRegions);
              }

              v52 = *(*(&v98 + 1) + 8 * k);
              dirtySize = [v52 dirtySize];
              v49 += dirtySize + [v52 swappedSize];
            }

            v48 = [memoryRegions countByEnumeratingWithState:&v98 objects:v107 count:16];
          }

          while (v48);
          selfCopy = v70;
        }

        else
        {
          obja = v44;
          v54 = objc_alloc(MEMORY[0x29EDB8E20]);
          memoryRegions2 = [v45 memoryRegions];
          memoryRegions = [v54 initWithCapacity:{objc_msgSend(memoryRegions2, "count")}];

          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          memoryRegions3 = [v45 memoryRegions];
          v57 = [memoryRegions3 countByEnumeratingWithState:&v98 objects:v107 count:16];
          if (v57)
          {
            v58 = v57;
            v49 = 0;
            v59 = *v99;
            do
            {
              for (m = 0; m != v58; ++m)
              {
                if (*v99 != v59)
                {
                  objc_enumerationMutation(memoryRegions3);
                }

                memoryObject = [*(*(&v98 + 1) + 8 * m) memoryObject];
                if (([memoryRegions containsObject:memoryObject] & 1) == 0)
                {
                  dirtySize2 = [memoryObject dirtySize];
                  v49 += dirtySize2 + [memoryObject swappedSize];
                  [memoryRegions addObject:memoryObject];
                }
              }

              v58 = [memoryRegions3 countByEnumeratingWithState:&v98 objects:v107 count:16];
            }

            while (v58);
          }

          else
          {
            v49 = 0;
          }

          selfCopy = v70;
          v42 = v77;
        }

        v44 = obja;
LABEL_80:

        v63 = [v44 numberWithUnsignedLongLong:v49];
        v64 = selfCopy->_pidToFootprint;
        v65 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v45, "pid")}];
        [(NSMutableDictionary *)v64 setObject:v63 forKeyedSubscript:v65];
      }

      v81 = [v79 countByEnumeratingWithState:&v94 objects:&v103 count:16];
    }

    while (v81);
  }

  objc_autoreleasePoolPop(contexta);
}

- (void)printOutputVerbose:(BOOL)verbose summarize:(BOOL)summarize noCategories:(BOOL)categories
{
  categoriesCopy = categories;
  summarizeCopy = summarize;
  verboseCopy = verbose;
  v354 = *MEMORY[0x29EDCA608];
  v7 = sub_297E39B8C(self);
  v8 = v7;
  if (self)
  {
    *&v351 = MEMORY[0x29EDCA5F8];
    *(&v351 + 1) = 3221225472;
    *&v352 = sub_297E3A2BC;
    *(&v352 + 1) = &unk_29EE85540;
    *&v353 = self;
    v214 = [v7 sortedArrayUsingComparator:&v351];
  }

  else
  {
    v214 = 0;
  }

  v288 = 0u;
  v289 = 0u;
  v286 = 0u;
  v287 = 0u;
  selfCopy = self;
  v9 = self->_outputFormatters;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v286 objects:v333 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v287;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v287 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v286 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v14 startAtTime:selfCopy->_gatherStartTime];
        }
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v286 objects:v333 count:16];
    }

    while (v11);
  }

  p_isa = &selfCopy->super.isa;
  if (verboseCopy)
  {
    v16 = v214;
    if (selfCopy)
    {
      v234 = objc_opt_new();
      v342 = 0u;
      v343 = 0u;
      v344 = 0u;
      v345 = 0u;
      v17 = selfCopy->_outputFormatters;
      v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v342 objects:&v351 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v343;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v343 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v342 + 1) + 8 * j);
            if (objc_opt_respondsToSelector())
            {
              [v234 addObject:v22];
            }
          }

          v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v342 objects:&v351 count:16];
        }

        while (v19);
      }

      if ([v234 count])
      {
        v341 = 0u;
        v340 = 0u;
        v339 = 0u;
        v338 = 0u;
        context = v16;
        obj = v16;
        v23 = [obj countByEnumeratingWithState:&v338 objects:v350 count:16];
        if (v23)
        {
          v24 = v23;
          v231 = *v339;
          do
          {
            for (k = 0; k != v24; ++k)
            {
              if (*v339 != v231)
              {
                objc_enumerationMutation(obj);
              }

              v26 = *(*(&v338 + 1) + 8 * k);
              v334 = 0u;
              v335 = 0u;
              v336 = 0u;
              v337 = 0u;
              v27 = v234;
              v28 = [v27 countByEnumeratingWithState:&v334 objects:&v346 count:16];
              if (v28)
              {
                v29 = v28;
                v30 = *v335;
                do
                {
                  for (m = 0; m != v29; ++m)
                  {
                    if (*v335 != v30)
                    {
                      objc_enumerationMutation(v27);
                    }

                    v32 = *(*(&v334 + 1) + 8 * m);
                    v33 = objc_autoreleasePoolPush();
                    memoryRegions = [v26 memoryRegions];
                    [v32 printVmmapLikeOutputForProcess:v26 regions:memoryRegions];

                    objc_autoreleasePoolPop(v33);
                  }

                  v29 = [v27 countByEnumeratingWithState:&v334 objects:&v346 count:16];
                }

                while (v29);
              }
            }

            v24 = [obj countByEnumeratingWithState:&v338 objects:v350 count:16];
          }

          while (v24);
        }

        v16 = context;
      }

      p_isa = &selfCopy->super.isa;
    }
  }

  v209 = objc_opt_new();
  v208 = objc_opt_new();
  v201 = 0;
  if ([v214 count] >= 2 && !categoriesCopy)
  {
    if (p_isa)
    {
      v35 = objc_alloc_init(MEMORY[0x29EDB8E00]);
      v346 = 0u;
      v347 = 0u;
      v348 = 0u;
      v349 = 0u;
      v36 = p_isa[1];
      v37 = [v36 countByEnumeratingWithState:&v346 objects:&v351 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v347;
        do
        {
          for (n = 0; n != v38; ++n)
          {
            if (*v347 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v346 + 1) + 8 * n);
            sharedCache = [v41 sharedCache];
            if (sharedCache)
            {
              initUniqueProcessGroup = [v35 objectForKeyedSubscript:sharedCache];
              if (!initUniqueProcessGroup)
              {
                initUniqueProcessGroup = [[FPProcessGroupMinimal alloc] initUniqueProcessGroup];
                [v35 setObject:initUniqueProcessGroup forKeyedSubscript:sharedCache];
              }

              [initUniqueProcessGroup addProcess:v41];
            }
          }

          v38 = [v36 countByEnumeratingWithState:&v346 objects:&v351 count:16];
        }

        while (v38);
      }

      v201 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:{objc_msgSend(v35, "count")}];
      v342 = 0u;
      v343 = 0u;
      v344 = 0u;
      v345 = 0u;
      v44 = v35;
      v45 = [v44 countByEnumeratingWithState:&v342 objects:v350 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v343;
        do
        {
          for (ii = 0; ii != v46; ++ii)
          {
            if (*v343 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v342 + 1) + 8 * ii);
            v50 = [v44 objectForKeyedSubscript:v49];
            v51 = sub_297E3BA18(v50);
            [v201 setObject:v51 forKeyedSubscript:v49];
          }

          v46 = [v44 countByEnumeratingWithState:&v342 objects:v350 count:16];
        }

        while (v46);
      }
    }

    else
    {
      v201 = 0;
    }

    p_isa = &selfCopy->super.isa;
  }

  if (categoriesCopy)
  {
    dictionary2 = 0;
  }

  else
  {
    contexta = v201;
    if (p_isa)
    {
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      v53 = sub_297E39B8C(p_isa);
      v235 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithCapacity:{objc_msgSend(v53, "count")}];
      v317 = 0u;
      v318 = 0u;
      v319 = 0u;
      v320 = 0u;
      v54 = v53;
      v55 = [v54 countByEnumeratingWithState:&v317 objects:&v351 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v318;
        do
        {
          for (jj = 0; jj != v56; ++jj)
          {
            if (*v318 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(*(*(&v317 + 1) + 8 * jj), "pid")}];
            [v235 addObject:v59];
          }

          v56 = [v54 countByEnumeratingWithState:&v317 objects:&v351 count:16];
        }

        while (v56);
      }

      v211 = v54;

      v316 = 0u;
      v315 = 0u;
      v314 = 0u;
      v313 = 0u;
      obja = selfCopy->_processes;
      v60 = [(NSArray *)obja countByEnumeratingWithState:&v313 objects:v350 count:16];
      if (v60)
      {
        v61 = v60;
        v233 = *v314;
        do
        {
          for (kk = 0; kk != v61; ++kk)
          {
            if (*v314 != v233)
            {
              objc_enumerationMutation(obja);
            }

            v63 = *(*(&v313 + 1) + 8 * kk);
            hiddenFromDisplay = [v63 hiddenFromDisplay];
            sharedCache2 = [v63 sharedCache];
            if (sharedCache2)
            {
              v66 = contexta;
              v67 = [contexta objectForKeyedSubscript:sharedCache2];
            }

            else
            {
              v67 = 0;
              v66 = contexta;
            }

            memoryRegions2 = [v63 memoryRegions];
            v306[0] = MEMORY[0x29EDCA5F8];
            v306[1] = 3221225472;
            v306[2] = sub_297E3A0E8;
            v306[3] = &unk_29EE854F8;
            v312 = hiddenFromDisplay;
            v307 = v235;
            v308 = v66;
            v309 = v67;
            v310 = dictionary;
            v311 = v63;
            v69 = v67;
            [memoryRegions2 fp_enumerateObjectsWithBatchSize:256 usingBlock:v306];
          }

          v61 = [(NSArray *)obja countByEnumeratingWithState:&v313 objects:v350 count:16];
        }

        while (v61);
      }

      v70 = [objc_alloc(MEMORY[0x29EDB8E20]) initWithCapacity:{3 * objc_msgSend(v235, "count")}];
      v302 = 0u;
      v303 = 0u;
      v304 = 0u;
      v305 = 0u;
      allKeys = [dictionary allKeys];
      v72 = [allKeys countByEnumeratingWithState:&v302 objects:&v346 count:16];
      if (v72)
      {
        v73 = v72;
        v74 = *v303;
        do
        {
          for (mm = 0; mm != v73; ++mm)
          {
            if (*v303 != v74)
            {
              objc_enumerationMutation(allKeys);
            }

            v76 = *(*(&v302 + 1) + 8 * mm);
            v77 = [dictionary objectForKeyedSubscript:v76];
            v78 = [v70 member:v77];
            if (!v78)
            {
              v78 = sub_297E3BA18(v77);
              [v70 addObject:v78];
            }

            [dictionary setObject:v78 forKeyedSubscript:v76];
          }

          v73 = [allKeys countByEnumeratingWithState:&v302 objects:&v346 count:16];
        }

        while (v73);
      }

      v301 = 0u;
      v300 = 0u;
      v299 = 0u;
      v298 = 0u;
      v79 = dictionary;
      v80 = [v79 countByEnumeratingWithState:&v298 objects:&v342 count:16];
      if (v80)
      {
        v81 = v80;
        v82 = *v299;
        do
        {
          for (nn = 0; nn != v81; ++nn)
          {
            if (*v299 != v82)
            {
              objc_enumerationMutation(v79);
            }

            v84 = *(*(&v298 + 1) + 8 * nn);
            v85 = [v79 objectForKeyedSubscript:v84];
            nonretainedObjectValue = [v84 nonretainedObjectValue];
            sub_297E3BC44(v85, nonretainedObjectValue);
          }

          v81 = [v79 countByEnumeratingWithState:&v298 objects:&v342 count:16];
        }

        while (v81);
      }

      dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
      v294 = 0u;
      v295 = 0u;
      v296 = 0u;
      v297 = 0u;
      v216 = v70;
      objb = [v216 countByEnumeratingWithState:&v294 objects:&v338 count:16];
      if (objb)
      {
        v219 = *v295;
        do
        {
          for (i1 = 0; i1 != objb; i1 = i1 + 1)
          {
            if (*v295 != v219)
            {
              objc_enumerationMutation(v216);
            }

            v88 = *(*(&v294 + 1) + 8 * i1);
            processes = [v88 processes];
            v90 = [processes count];

            v293 = 0u;
            v292 = 0u;
            v290 = 0u;
            v291 = 0u;
            processes2 = [v88 processes];
            v92 = [processes2 countByEnumeratingWithState:&v290 objects:&v334 count:16];
            if (v92)
            {
              v93 = v92;
              v94 = *v291;
              do
              {
                for (i2 = 0; i2 != v93; ++i2)
                {
                  if (*v291 != v94)
                  {
                    objc_enumerationMutation(processes2);
                  }

                  v96 = *(*(&v290 + 1) + 8 * i2);
                  asNumber = [v96 asNumber];
                  v98 = [dictionary2 objectForKeyedSubscript:asNumber];

                  if (!v98)
                  {
                    v98 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
                    asNumber2 = [v96 asNumber];
                    [dictionary2 setObject:v98 forKeyedSubscript:asNumber2];
                  }

                  if (v90 == 1)
                  {
                    [v98 insertObject:v88 atIndex:0];
                  }

                  else
                  {
                    [v98 addObject:v88];
                  }
                }

                v93 = [processes2 countByEnumeratingWithState:&v290 objects:&v334 count:16];
              }

              while (v93);
            }
          }

          objb = [v216 countByEnumeratingWithState:&v294 objects:&v338 count:16];
        }

        while (objb);
      }
    }

    else
    {
      dictionary2 = 0;
    }

    p_isa = &selfCopy->super.isa;
    sub_297E37154(selfCopy);
  }

  v200 = objc_autoreleasePoolPush();
  v282 = 0u;
  v283 = 0u;
  v284 = 0u;
  v285 = 0u;
  v100 = p_isa[18];
  v101 = [v100 countByEnumeratingWithState:&v282 objects:v332 count:16];
  if (v101)
  {
    v102 = v101;
    v103 = *v283;
    do
    {
      for (i3 = 0; i3 != v102; ++i3)
      {
        if (*v283 != v103)
        {
          objc_enumerationMutation(v100);
        }

        v105 = *(*(&v282 + 1) + 8 * i3);
        v106 = objc_autoreleasePoolPush();
        if (objc_opt_respondsToSelector())
        {
          [v105 printHeader];
        }

        objc_autoreleasePoolPop(v106);
      }

      v102 = [v100 countByEnumeratingWithState:&v282 objects:v332 count:16];
    }

    while (v102);
  }

  v280 = 0u;
  v281 = 0u;
  v278 = 0u;
  v279 = 0u;
  v202 = v214;
  v206 = [v202 countByEnumeratingWithState:&v278 objects:v331 count:16];
  if (v206)
  {
    v204 = *v279;
    v207 = MEMORY[0x29EDB8EA0];
    v107 = selfCopy;
    do
    {
      v108 = 0;
      do
      {
        if (*v279 != v204)
        {
          objc_enumerationMutation(v202);
        }

        v212 = v108;
        v109 = *(*(&v278 + 1) + 8 * v108);
        errors = [v109 errors];
        v236 = [errors count];

        warnings = [v109 warnings];
        v112 = [warnings count];

        if (v112)
        {
          [v208 addObject:v109];
        }

        if (v236)
        {
          [v209 addObject:v109];
        }

        else
        {
          auxData = [v109 auxData];
          v114 = auxData;
          if (auxData)
          {
            v115 = [auxData fp_mergeWithData:v207];

            v207 = v115;
          }
        }

        pidToFootprint = v107->_pidToFootprint;
        v117 = [MEMORY[0x29EDBA070] numberWithInt:{objc_msgSend(v109, "pid")}];
        v118 = [(NSMutableDictionary *)pidToFootprint objectForKeyedSubscript:v117];

        v276 = 0u;
        v277 = 0u;
        v274 = 0u;
        v275 = 0u;
        v119 = v107->_outputFormatters;
        v120 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v274 objects:v330 count:16];
        if (v120)
        {
          v121 = v120;
          v122 = *v275;
          do
          {
            for (i4 = 0; i4 != v121; ++i4)
            {
              if (*v275 != v122)
              {
                objc_enumerationMutation(v119);
              }

              v124 = *(*(&v274 + 1) + 8 * i4);
              v125 = objc_autoreleasePoolPush();
              [v124 printProcessHeader:v109];
              if (!v236)
              {
                [v124 printProcessTotal:v118 forProcess:v109];
              }

              [v124 endProcessHeader:v109];
              objc_autoreleasePoolPop(v125);
            }

            v121 = [(NSMutableArray *)v119 countByEnumeratingWithState:&v274 objects:v330 count:16];
          }

          while (v121);
        }

        v210 = v118;

        v126 = selfCopy;
        if (!categoriesCopy)
        {
          asNumber3 = [v109 asNumber];
          v128 = [dictionary2 objectForKeyedSubscript:asNumber3];

          v203 = v128;
          if (v128)
          {
            v268 = 0uLL;
            v269 = 0uLL;
            v266 = 0uLL;
            v267 = 0uLL;
            v215 = v128;
            v220 = [v215 countByEnumeratingWithState:&v266 objects:v328 count:16];
            if (v220)
            {
              v217 = *v267;
              do
              {
                v129 = 0;
                do
                {
                  if (*v267 != v217)
                  {
                    objc_enumerationMutation(v215);
                  }

                  objc = v129;
                  v130 = *(*(&v266 + 1) + 8 * v129);
                  v131 = sub_297E3BD78(v130);
                  v352 = 0u;
                  v353 = 0u;
                  v351 = 0u;
                  v350[0] = 0;
                  if (!v131)
                  {
                    if (v130)
                    {
                      v132 = v130[4];
                    }

                    else
                    {
                      v132 = 0;
                    }

                    v133 = v132;
                    v134 = objc_autoreleasePoolPush();
                    objectEnumerator = [v133 objectEnumerator];
                    v131 = sub_297E39C10(selfCopy, objectEnumerator, v109, v350, summarizeCopy);

                    objc_autoreleasePoolPop(v134);
                    if (!v350[0])
                    {
                      processes3 = [v130 processes];
                      v137 = [processes3 count];

                      if (v137 >= 0x1A)
                      {
                        processes4 = [v130 processes];
                        sub_297E3BCEC(v130, v131, [processes4 count] - 1);
                      }
                    }
                  }

                  if (!v236)
                  {
                    sub_297E380A4(FPFootprint, v131, &v351);
                  }

                  contextb = objc_autoreleasePoolPush();
                  v262 = 0u;
                  v263 = 0u;
                  v264 = 0u;
                  v265 = 0u;
                  v139 = selfCopy->_outputFormatters;
                  v140 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v262 objects:v327 count:16];
                  if (v140)
                  {
                    v141 = v140;
                    v142 = *v263;
                    do
                    {
                      for (i5 = 0; i5 != v141; ++i5)
                      {
                        if (*v263 != v142)
                        {
                          objc_enumerationMutation(v139);
                        }

                        v144 = *(*(&v262 + 1) + 8 * i5);
                        processes5 = [v130 processes];
                        v146 = [processes5 count];

                        if (v146 == 1)
                        {
                          [v144 printProcessCategories:v131 total:&v351 forProcess:v109];
                        }

                        else
                        {
                          [v144 printSharedCategories:v131 sharedWith:v130 forProcess:v109 hasProcessView:v350[0] == 2 total:&v351];
                        }
                      }

                      v141 = [(NSMutableArray *)v139 countByEnumeratingWithState:&v262 objects:v327 count:16];
                    }

                    while (v141);
                  }

                  objc_autoreleasePoolPop(contextb);
                  v129 = objc + 1;
                }

                while (objc + 1 != v220);
                v147 = [v215 countByEnumeratingWithState:&v266 objects:v328 count:16];
                v220 = v147;
              }

              while (v147);
            }
          }

          else
          {
            v352 = 0uLL;
            v353 = 0uLL;
            v351 = 0uLL;
            v270 = 0uLL;
            v271 = 0uLL;
            v272 = 0uLL;
            v273 = 0uLL;
            v148 = selfCopy->_outputFormatters;
            v149 = [(NSMutableArray *)v148 countByEnumeratingWithState:&v270 objects:v329 count:16];
            if (v149)
            {
              v150 = v149;
              v151 = *v271;
              do
              {
                for (i6 = 0; i6 != v150; ++i6)
                {
                  if (*v271 != v151)
                  {
                    objc_enumerationMutation(v148);
                  }

                  [*(*(&v270 + 1) + 8 * i6) printProcessCategories:MEMORY[0x29EDB8EA0] total:&v351 forProcess:v109];
                }

                v150 = [(NSMutableArray *)v148 countByEnumeratingWithState:&v270 objects:v329 count:16];
              }

              while (v150);
            }
          }

          v126 = selfCopy;
        }

        v153 = objc_autoreleasePoolPush();
        v258 = 0u;
        v259 = 0u;
        v260 = 0u;
        v261 = 0u;
        v154 = v126->_outputFormatters;
        v155 = [(NSMutableArray *)v154 countByEnumeratingWithState:&v258 objects:v326 count:16];
        if (v155)
        {
          v156 = v155;
          v157 = *v259;
          do
          {
            for (i7 = 0; i7 != v156; ++i7)
            {
              if (*v259 != v157)
              {
                objc_enumerationMutation(v154);
              }

              v159 = *(*(&v258 + 1) + 8 * i7);
              auxData2 = [v109 auxData];
              [v159 printProcessAuxData:auxData2 forProcess:v109];
            }

            v156 = [(NSMutableArray *)v154 countByEnumeratingWithState:&v258 objects:v326 count:16];
          }

          while (v156);
        }

        objc_autoreleasePoolPop(v153);
        v108 = v212 + 1;
        v107 = selfCopy;
      }

      while (v212 + 1 != v206);
      v206 = [v202 countByEnumeratingWithState:&v278 objects:v331 count:16];
    }

    while (v206);
  }

  else
  {
    v207 = MEMORY[0x29EDB8EA0];
  }

  objc_autoreleasePoolPop(v200);
  contextc = objc_autoreleasePoolPush();
  v254 = 0u;
  v255 = 0u;
  v256 = 0u;
  v257 = 0u;
  v237 = v201;
  v161 = [v237 countByEnumeratingWithState:&v254 objects:v325 count:16];
  if (v161)
  {
    v162 = v161;
    objd = *v255;
    do
    {
      v163 = 0;
      do
      {
        if (*v255 != objd)
        {
          objc_enumerationMutation(v237);
        }

        v164 = *(*(&v254 + 1) + 8 * v163);
        v165 = [v237 objectForKeyedSubscript:v164];
        v166 = v165;
        if (v165)
        {
          v167 = *(v165 + 32);
        }

        else
        {
          v167 = 0;
        }

        v168 = v167;
        v169 = objc_autoreleasePoolPush();
        objectEnumerator2 = [v168 objectEnumerator];
        v171 = sub_297E39C10(selfCopy, objectEnumerator2, 0, 0, summarizeCopy);

        objc_autoreleasePoolPop(v169);
        v352 = 0u;
        v353 = 0u;
        v351 = 0u;
        sub_297E380A4(FPFootprint, v171, &v351);
        v252 = 0u;
        v253 = 0u;
        v250 = 0u;
        v251 = 0u;
        v172 = selfCopy->_outputFormatters;
        v173 = [(NSMutableArray *)v172 countByEnumeratingWithState:&v250 objects:v324 count:16];
        if (v173)
        {
          v174 = v173;
          v175 = *v251;
          do
          {
            for (i8 = 0; i8 != v174; ++i8)
            {
              if (*v251 != v175)
              {
                objc_enumerationMutation(v172);
              }

              [*(*(&v250 + 1) + 8 * i8) printSharedCache:v164 categories:v171 sharedWith:v166 total:&v351];
            }

            v174 = [(NSMutableArray *)v172 countByEnumeratingWithState:&v250 objects:v324 count:16];
          }

          while (v174);
        }

        ++v163;
      }

      while (v163 != v162);
      v177 = [v237 countByEnumeratingWithState:&v254 objects:v325 count:16];
      v162 = v177;
    }

    while (v177);
  }

  objc_autoreleasePoolPop(contextc);
  v178 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
  v246 = 0u;
  v247 = 0u;
  v248 = 0u;
  v249 = 0u;
  v179 = v202;
  v180 = [v179 countByEnumeratingWithState:&v246 objects:v323 count:16];
  if (v180)
  {
    v181 = v180;
    v182 = *v247;
    do
    {
      for (i9 = 0; i9 != v181; ++i9)
      {
        if (*v247 != v182)
        {
          objc_enumerationMutation(v179);
        }

        globalErrors = [*(*(&v246 + 1) + 8 * i9) globalErrors];
        [v178 addObjectsFromArray:globalErrors];
      }

      v181 = [v179 countByEnumeratingWithState:&v246 objects:v323 count:16];
    }

    while (v181);
  }

  v185 = objc_autoreleasePoolPush();
  v242 = 0u;
  v243 = 0u;
  v244 = 0u;
  v245 = 0u;
  v186 = selfCopy->_outputFormatters;
  v187 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v242 objects:v322 count:16];
  if (v187)
  {
    v188 = v187;
    v189 = *v243;
    do
    {
      for (i10 = 0; i10 != v188; ++i10)
      {
        if (*v243 != v189)
        {
          objc_enumerationMutation(v186);
        }

        [*(*(&v242 + 1) + 8 * i10) printProcessesWithWarnings:v208 processesWithErrors:v209 globalErrors:v178];
      }

      v188 = [(NSMutableArray *)v186 countByEnumeratingWithState:&v242 objects:v322 count:16];
    }

    while (v188);
  }

  objc_autoreleasePoolPop(v185);
  v352 = 0u;
  v353 = 0u;
  v351 = 0u;
  obje = sub_297E39E48(selfCopy, summarizeCopy);
  sub_297E380A4(FPFootprint, obje, &v351);
  if ([v178 count])
  {
    v191 = 1;
  }

  else
  {
    v191 = [v209 count] != 0;
  }

  v240 = 0u;
  v241 = 0u;
  v238 = 0u;
  v239 = 0u;
  v192 = selfCopy->_outputFormatters;
  v193 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v238 objects:v321 count:16];
  if (v193)
  {
    v194 = v193;
    v195 = *v239;
    if (categoriesCopy)
    {
      v196 = 0;
    }

    else
    {
      v196 = obje;
    }

    do
    {
      for (i11 = 0; i11 != v194; ++i11)
      {
        if (*v239 != v195)
        {
          objc_enumerationMutation(v192);
        }

        v198 = *(*(&v238 + 1) + 8 * i11);
        v199 = objc_autoreleasePoolPush();
        [v198 printSummaryCategories:v196 total:&v351 hadErrors:v191];
        [v198 printGlobalAuxData:v207];
        [v198 endAtTime:selfCopy->_gatherEndTime];
        objc_autoreleasePoolPop(v199);
      }

      v194 = [(NSMutableArray *)v192 countByEnumeratingWithState:&v238 objects:v321 count:16];
    }

    while (v194);
  }
}

- (id)ioSurfaceExtendedInfoDetailsAtAddress:(unint64_t)address for:(int)for
{
  v4 = *&for;
  v26[4] = *MEMORY[0x29EDCA608];
  os_unfair_lock_lock(&self->_allPIDsIOSurfaceDescriptionsLock);
  allPIDsIOSurfaceDescriptions = self->_allPIDsIOSurfaceDescriptions;
  if (!allPIDsIOSurfaceDescriptions)
  {
    surfaceDescriptions = [MEMORY[0x29EDBB120] surfaceDescriptions];
    v9 = self->_allPIDsIOSurfaceDescriptions;
    self->_allPIDsIOSurfaceDescriptions = surfaceDescriptions;

    allPIDsIOSurfaceDescriptions = self->_allPIDsIOSurfaceDescriptions;
  }

  v10 = [MEMORY[0x29EDBA070] numberWithInt:v4];
  v11 = [(NSDictionary *)allPIDsIOSurfaceDescriptions objectForKey:v10];

  os_unfair_lock_unlock(&self->_allPIDsIOSurfaceDescriptionsLock);
  if (v11)
  {
    v24[0] = MEMORY[0x29EDCA5F8];
    v24[1] = 3221225472;
    v24[2] = sub_297E3A6A8;
    v24[3] = &unk_29EE85588;
    v24[4] = address;
    v12 = [MEMORY[0x29EDBA0A8] predicateWithBlock:v24];
    v13 = [v11 filteredArrayUsingPredicate:v12];
    firstObject = [v13 firstObject];

    if (firstObject)
    {
      v25[0] = @"surfaceID";
      v15 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(firstObject, "surfaceID")}];
      v26[0] = v15;
      v25[1] = @"PixelFormat";
      v16 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(firstObject, "pixelFormat")}];
      v26[1] = v16;
      v25[2] = @"Width";
      v17 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(firstObject, "width")}];
      v26[2] = v17;
      v25[3] = @"Height";
      v18 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(firstObject, "height")}];
      v26[3] = v18;
      v19 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v26 forKeys:v25 count:4];
      v20 = [v19 mutableCopy];

      name = [firstObject name];

      if (name)
      {
        name2 = [firstObject name];
        [v20 setObject:name2 forKey:@"Name"];
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (id)ioAccelMemoryInfoDetailsAtAddress:(unint64_t)address for:(int)for error:(id *)error
{
  v6 = *&for;
  v72[1] = *MEMORY[0x29EDCA608];
  objc_opt_self();
  if (objc_opt_class())
  {
    os_unfair_lock_lock(&self->_allPIDsIOAccelMemoryInfosLock);
    if (!self->_allPIDsIOAccelMemoryInfos)
    {
      v63 = 0;
      v64 = &v63;
      v65 = 0x3032000000;
      v66 = sub_297E3ADAC;
      v67 = sub_297E3ADBC;
      dictionary = [MEMORY[0x29EDB8E00] dictionary];
      v57 = 0;
      v58 = &v57;
      v59 = 0x3032000000;
      v60 = sub_297E3ADAC;
      v61 = sub_297E3ADBC;
      v62 = 0;
      v9 = dispatch_semaphore_create(0);
      v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v11 = dispatch_queue_create("com.apple.footprint.ioaccelmemoryinfo", v10);

      v12 = MEMORY[0x29EDC55A0];
      v53[0] = MEMORY[0x29EDCA5F8];
      v53[1] = 3221225472;
      v53[2] = sub_297E3ADC4;
      v53[3] = &unk_29EE855E8;
      v55 = &v57;
      v56 = &v63;
      v13 = v9;
      v54 = v13;
      [v12 collectDataWithCompletionQueue:v11 completionBlock:v53];
      v14 = dispatch_time(0, 60000000000);
      if (dispatch_semaphore_wait(v13, v14))
      {
        if (error)
        {
          v15 = MEMORY[0x29EDB9FA0];
          v71 = *MEMORY[0x29EDB9ED8];
          v72[0] = @"Timed out waiting to fetch IOAccelMemory region infos";
          v16 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
          *error = [v15 errorWithDomain:@"FootprintErrorDomain" code:1 userInfo:v16];
        }
      }

      else if (error)
      {
        v18 = v58[5];
        if (v18)
        {
          *error = v18;
        }
      }

      v19 = [v64[5] copy];
      allPIDsIOAccelMemoryInfos = self->_allPIDsIOAccelMemoryInfos;
      self->_allPIDsIOAccelMemoryInfos = v19;

      _Block_object_dispose(&v57, 8);
      _Block_object_dispose(&v63, 8);
    }

    os_unfair_lock_unlock(&self->_allPIDsIOAccelMemoryInfosLock);
    v21 = self->_allPIDsIOAccelMemoryInfos;
    v22 = [MEMORY[0x29EDBA070] numberWithInt:v6];
    v23 = [(NSDictionary *)v21 objectForKeyedSubscript:v22];

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v24 = v23;
    v25 = [v24 countByEnumeratingWithState:&v49 objects:v70 count:16];
    if (v25)
    {
      v26 = *v50;
      while (2)
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v50 != v26)
          {
            objc_enumerationMutation(v24);
          }

          v28 = *(*(&v49 + 1) + 8 * i);
          mappings = [v28 mappings];
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v30 = mappings;
          v31 = [v30 countByEnumeratingWithState:&v45 objects:v69 count:16];
          if (v31)
          {
            v32 = *v46;
LABEL_18:
            v33 = 0;
            while (1)
            {
              if (*v46 != v32)
              {
                objc_enumerationMutation(v30);
              }

              if ([*(*(&v45 + 1) + 8 * v33) address] == address)
              {
                break;
              }

              if (v31 == ++v33)
              {
                v31 = [v30 countByEnumeratingWithState:&v45 objects:v69 count:16];
                if (v31)
                {
                  goto LABEL_18;
                }

                goto LABEL_24;
              }
            }

            v34 = v28;

            if (!v34)
            {
              continue;
            }

            dictionary2 = [MEMORY[0x29EDB8E00] dictionary];
            v35 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:{objc_msgSend(v34, "surfaceID")}];
            [dictionary2 setObject:v35 forKeyedSubscript:@"SurfaceID"];

            v36 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v34, "length")}];
            [dictionary2 setObject:v36 forKeyedSubscript:@"Size"];

            v37 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v34, "dirtyLength")}];
            [dictionary2 setObject:v37 forKeyedSubscript:@"DirtySize"];

            v38 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(v34, "residentLength")}];
            [dictionary2 setObject:v38 forKeyedSubscript:@"ResidentSize"];

            v39 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v34, "wired")}];
            [dictionary2 setObject:v39 forKeyedSubscript:@"IsWired"];

            v40 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v34, "purgeable")}];
            [dictionary2 setObject:v40 forKeyedSubscript:@"IsPurgeable"];

            v41 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v34, "cachedCopy")}];
            [dictionary2 setObject:v41 forKeyedSubscript:@"CachedCopy"];

            v42 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v34, "memoryPool")}];
            [dictionary2 setObject:v42 forKeyedSubscript:@"MemoryPool"];

            formattedDescriptions = [v34 formattedDescriptions];
            [dictionary2 setObject:formattedDescriptions forKeyedSubscript:@"Descriptions"];

            goto LABEL_30;
          }

LABEL_24:
        }

        v25 = [v24 countByEnumeratingWithState:&v49 objects:v70 count:16];
        if (v25)
        {
          continue;
        }

        break;
      }
    }

    dictionary2 = 0;
    v34 = v24;
LABEL_30:
  }

  else
  {
    dictionary2 = 0;
  }

  return dictionary2;
}

@end