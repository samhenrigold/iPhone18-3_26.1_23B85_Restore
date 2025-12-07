@interface FPUserProcess
+ (unsigned)_dirtyFlagsFromEntryState:(unsigned int)state;
- (BOOL)_populateMemoryRegionWithPageQueries:(id)queries regionInfo:(vm_region_submap_info_64 *)info;
- (BOOL)_populateTask;
- (FPUserProcess)initWithBsdInfo:(proc_bsdinfo *)info;
- (id)_gatherOwnedVmObjects;
- (id)auxData;
- (id)extendedInfoForRegionType:(int)type at:(unint64_t)at extendedInfoProvider:(id)provider;
- (void)_addSubrangesForRegion:(id)region purgeState:(int)state;
- (void)_drainDeferredReclaim;
- (void)_gatherImageData;
- (void)_gatherLedgers;
- (void)_gatherProcessState;
- (void)_gatherSharedCacheFromDyldSnapshot:(dyld_process_snapshot_s *)snapshot;
- (void)_setIdleExitStatusFromDirtyFlags:(unsigned int)flags;
- (void)addLedgerData:(unint64_t *)data count:(unint64_t)count;
- (void)dealloc;
- (void)enumerateRegions:(id)regions;
- (void)gatherData:(unint64_t)data extendedInfoProvider:(id)provider;
@end

@implementation FPUserProcess

- (FPUserProcess)initWithBsdInfo:(proc_bsdinfo *)info
{
  self->super._pid = info->pbi_pid;
  [(FPUserProcess *)self _gatherIsTranslated];
  v9.receiver = self;
  v9.super_class = FPUserProcess;
  v5 = [(FPProcess *)&v9 initWithBsdInfo:info];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    images = v5->_images;
    v5->_images = v6;

    [(FPUserProcess *)v5 _gatherLedgers];
    [(FPUserProcess *)v5 _gatherProcessState];
  }

  return v5;
}

- (void)dealloc
{
  task = self->_task;
  if (task)
  {
    mach_port_deallocate(*MEMORY[0x29EDCA6B0], task);
  }

  v4.receiver = self;
  v4.super_class = FPUserProcess;
  [(FPUserProcess *)&v4 dealloc];
}

- (void)gatherData:(unint64_t)data extendedInfoProvider:(id)provider
{
  dataCopy = data;
  v97 = *MEMORY[0x29EDCA608];
  providerCopy = provider;
  memoryRegions = [(FPProcess *)self memoryRegions];

  if (!memoryRegions)
  {
    if (![(FPUserProcess *)self _configurePageSize])
    {
      self->_bailedOut = 1;
      v8 = *MEMORY[0x29EDCA610];
      images = [(FPProcess *)self displayString];
      fprintf(v8, "%s: skipping due to an error configuring page size for analysis\n", [images UTF8String]);
LABEL_41:

      goto LABEL_42;
    }

    if ([(FPProcess *)self hiddenFromDisplay])
    {
      v7 = providerCopy;
      if (!self)
      {
LABEL_40:

        images = self->_images;
        self->_images = 0;
        goto LABEL_41;
      }
    }

    else
    {
      if ((dataCopy & 8) != 0)
      {
        [(FPUserProcess *)self _drainDeferredReclaim];
      }

      v10 = objc_autoreleasePoolPush();
      [(FPUserProcess *)self _gatherImageData];
      objc_autoreleasePoolPop(v10);
      [(FPUserProcess *)self _gatherLedgers];
      _gatherOwnedVmObjects = [(FPUserProcess *)self _gatherOwnedVmObjects];
      ownedVmObjects = self->_ownedVmObjects;
      self->_ownedVmObjects = _gatherOwnedVmObjects;

      v13 = providerCopy;
    }

    v14 = sub_297E3B29C([FPImageEnumerator alloc], self->_images);
    v15 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    hiddenFromDisplay = [(FPProcess *)self hiddenFromDisplay];
    breakDownPhysFootprint = [(FPProcess *)self breakDownPhysFootprint];
    v17 = +[FPFootprint isSharingAnalysisDisabled];
    doOwnedAccountingAdjustments = [(FPUserProcess *)self doOwnedAccountingAdjustments];
    v92 = 0;
    v93 = &v92;
    v94 = 0x2020000000;
    v95 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x3032000000;
    v89 = sub_297E313BC;
    v90 = sub_297E313CC;
    v91 = 0;
    baseAddress = [(FPSharedCache *)self->super._sharedCache baseAddress];
    mappedSize = [(FPSharedCache *)self->super._sharedCache mappedSize];
    v72[0] = MEMORY[0x29EDCA5F8];
    v72[1] = 3221225472;
    v72[2] = sub_297E313D4;
    v72[3] = &unk_29EE84B18;
    v78 = baseAddress;
    v79 = mappedSize;
    v80 = hiddenFromDisplay;
    v72[4] = self;
    v58 = v15;
    v73 = v58;
    v81 = breakDownPhysFootprint;
    v52 = v14;
    v74 = v52;
    v76 = &v86;
    v82 = (dataCopy & 2) != 0;
    v83 = (dataCopy & 4) != 0;
    v84 = doOwnedAccountingAdjustments;
    v75 = providerCopy;
    v77 = &v92;
    v85 = v17;
    [(FPUserProcess *)self enumerateRegions:v72];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    objectEnumerator = [(NSMutableDictionary *)self->_ownedVmObjects objectEnumerator];
    v21 = [objectEnumerator countByEnumeratingWithState:&v68 objects:v96 count:16];
    if (v21)
    {
      obj = objectEnumerator;
      v57 = *v69;
      v22 = 0x2A18A5000uLL;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v69 != v57)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v68 + 1) + 8 * i);
          v67 = 0;
          v65 = 0u;
          v66 = 0u;
          v64 = 0u;
          [v24 getBytes:&v64 length:56];
          v25 = objc_alloc_init((v22 + 3736));
          [v25 setObject_id:v64];
          [v25 setOwnedExclusivelyByParentProcess:1];
          [v25 setUser_tag:0xFFFFFFFFLL];
          v26 = [v22 + 3736 vmLedgerNameForTag:(v67 >> 1) & 7];
          v27 = [v22 + 3736 categoryNameForTag:0xFFFFFFFFLL];
          if (v26)
          {
            v28 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithFormat:@"%@ (%@)", v27, v26];
            [v25 setName:v28];
          }

          else
          {
            [v25 setName:v27];
          }

          [v25 setStart:-1];
          [v25 setShare_mode:4];
          v59 = v26;
          v60 = 0;
          v29 = v22;
          v30 = v21;
          selfCopy = self;
          v62 = 0;
          v63 = 0;
          v61 = 0;
          sub_297E31EE4(&v64, &v63, &v62, &v61, &v60);
          v32 = v62;
          [v25 setSwappedSize:v62];
          v33 = v63;
          [v25 setDirtySize:v63];
          v34 = v61;
          [v25 setCleanSize:v61];
          v35 = v60;
          [v25 setReclaimableSize:v60];
          if (*(&v64 + 1))
          {
            v36 = *(&v64 + 1);
          }

          else
          {
            v36 = v33 + v32 + v34 + v35;
          }

          [v25 setSize:v36];
          [v25 setWired:*(&v65 + 1) != 0];
          [v58 addObject:v25];

          self = selfCopy;
          v21 = v30;
          v22 = v29;
        }

        objectEnumerator = obj;
        v21 = [obj countByEnumeratingWithState:&v68 objects:v96 count:16];
      }

      while (v21);
    }

    v37 = self->_ownedVmObjects;
    self->_ownedVmObjects = 0;

    v38 = v87[5];
    if (v38)
    {
      if (doOwnedAccountingAdjustments)
      {
        dirtySize = [v38 dirtySize];
        if (dirtySize >= v93[3])
        {
          [v87[5] setDirtySize:{objc_msgSend(v87[5], "dirtySize") - v93[3]}];
        }

        else
        {
          dirtySize2 = [v87[5] dirtySize];
          v93[3] -= dirtySize2;
          [v87[5] setDirtySize:0];
          swappedSize = [v87[5] swappedSize];
          v42 = v93;
          v43 = v87[5];
          if (swappedSize >= v93[3])
          {
            v48 = [v87[5] swappedSize] - v42[3];
          }

          else
          {
            swappedSize2 = [v87[5] swappedSize];
            v45 = v93[3] - swappedSize2;
            v93[3] = v45;
            warnings = self->super._warnings;
            v47 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Footprint changed while analyzing – unmapped owned physical footprint may be over-counted by %llu bytes", v45];
            [(NSMutableArray *)warnings addObject:v47];

            v48 = 0;
            v43 = v87[5];
          }

          [v43 setSwappedSize:v48];
        }
      }

      dirtySize3 = [v87[5] dirtySize];
      if (dirtySize3 + [v87[5] swappedSize])
      {
        [v87[5] setStart:-1];
        [v58 addObject:v87[5]];
      }
    }

    if (breakDownPhysFootprint && self->_ledgers[0])
    {
      v50 = objc_alloc_init(FPMemoryRegion);
      [(FPMemoryRegion *)v50 setSize:self->_ledgers[0]];
      [(FPMemoryRegion *)v50 setDirtySize:self->_ledgers[0]];
      [(FPMemoryRegion *)v50 setStart:-1];
      [(FPMemoryRegion *)v50 setName:@"page table"];
      [(FPMemoryRegion *)v50 setObject_id:-1];
      [(FPMemoryRegion *)v50 setShare_mode:2];
      [v58 addObject:v50];
    }

    if ((os_variant_has_internal_content() & breakDownPhysFootprint) == 1 && self->_ledgers[3])
    {
      v51 = objc_alloc_init(FPMemoryRegion);
      [(FPMemoryRegion *)v51 setSize:self->_ledgers[3]];
      [(FPMemoryRegion *)v51 setCleanSize:self->_ledgers[3]];
      [(FPMemoryRegion *)v51 setStart:-1];
      [(FPMemoryRegion *)v51 setName:@"Conclave"];
      [(FPMemoryRegion *)v51 setObject_id:-1];
      [(FPMemoryRegion *)v51 setShare_mode:2];
      [v58 addObject:v51];
    }

    [(FPProcess *)self setMemoryRegions:v58];

    _Block_object_dispose(&v86, 8);
    _Block_object_dispose(&v92, 8);

    goto LABEL_40;
  }

LABEL_42:
}

- (void)_drainDeferredReclaim
{
  if ([(FPUserProcess *)self _isAlive])
  {
    v3 = [(FPProcess *)self pid];
    if (sysctlbyname("vm.reclaim.drain_pid", 0, 0, &v3, 4uLL))
    {
      if (*__error() != 2 && *__error() != 1)
      {
        sub_297E2FECC(self, @"vm.reclaim.drain_pid");
      }
    }
  }
}

- (id)_gatherOwnedVmObjects
{
  if (![(FPUserProcess *)self doOwnedAccountingAdjustments])
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v13 = 0;
  if (sysctlbyname("vm.get_owned_vmobjects", 0, &v13, &self->_task, 4uLL))
  {
    if (*__error() != 2)
    {
      sub_297E2FECC(self, @"vm.get_owned_vmobjects");
    }

    goto LABEL_17;
  }

  v3 = v13;
  if (v13)
  {
    v4 = 0;
    v12 = 0;
    do
    {
      v3 += 896;
      v4 = malloc_type_realloc(v4, v3, 0x6DCDC830uLL);
      v12 = v3;
      if (sysctlbyname("vm.get_owned_vmobjects", v4, &v12, &self->_task, 4uLL))
      {
        sub_297E2FECC(self, @"vm.get_owned_vmobjects");
        free(v4);
        goto LABEL_17;
      }
    }

    while (v3 == v12);
    if (v12)
    {
      if (v12 <= 7)
      {
        _os_assert_log();
        _os_crash();
        __break(1u);
      }

      else if (v12 - 8 >= 56 * *v4)
      {
        v5 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:*v4];
        if (*v4)
        {
          v6 = 0;
          v7 = (v4 + 1);
          do
          {
            v8 = [objc_alloc(MEMORY[0x29EDB8DA0]) initWithBytes:v7 length:56];
            v9 = *v7;
            v7 += 7;
            v10 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v9];
            [v5 setObject:v8 forKeyedSubscript:v10];

            ++v6;
          }

          while (v6 < *v4);
        }

        free(v4);
        goto LABEL_18;
      }

      _os_assert_log();
      result = _os_crash();
      __break(1u);
      return result;
    }

    free(v4);
  }

  v5 = [objc_alloc(MEMORY[0x29EDB8E00]) initWithCapacity:0];
LABEL_18:

  return v5;
}

- (BOOL)_populateMemoryRegionWithPageQueries:(id)queries regionInfo:(vm_region_submap_info_64 *)info
{
  queriesCopy = queries;
  pageSize = [(FPProcess *)self pageSize];
  v7 = [queriesCopy start] & -pageSize;
  v8 = (pageSize + [queriesCopy end] - 1) & -pageSize;
  v9 = v7 != [queriesCopy start];
  v29 = v8;
  v27 = [queriesCopy end];
  v10 = v8 != v27;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  if ([queriesCopy dirtySize])
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else if (![queriesCopy swappedSize])
  {
    v25 = v10;
    v26 = v9;
    cachedDispositionAddress = self->_cachedDispositionAddress;
    v28 = (v29 - v7) / pageSize;
    if (v7 == cachedDispositionAddress)
    {
      cachedDisposition = self->_cachedDisposition;
      v13 = v45;
      v24 = v41;
      v14 = queriesCopy;
      start = [v14 start];
      v16 = [v14 size];
      v17 = pageSize - start + (start & -pageSize);
      if (v16 < v17)
      {
        v17 = [v14 size];
      }

      v18 = v7 + pageSize;
      --v28;
      if ((cachedDisposition & 8) != 0 || (cachedDisposition & 0x81) == 1 || (v13 = v24, (cachedDisposition & 0x10) != 0))
      {
        v13[3] += v17;
      }
    }

    else
    {
      v18 = v7;
    }

    if ([queriesCopy unusedSharedCacheRegion])
    {
      if (v7 == cachedDispositionAddress)
      {
        [queriesCopy setDirtySize:v45[3]];
        [queriesCopy setSwappedSize:v41[3]];
      }

      v19 = 1;
      if (v29 == v27 || !v28)
      {
        goto LABEL_20;
      }

      v20 = queriesCopy;
      pendingUnusedSharedRegion = self->_pendingUnusedSharedRegion;
      self->_pendingUnusedSharedRegion = v20;
      v19 = 1;
    }

    else
    {
      v30[0] = MEMORY[0x29EDCA5F8];
      v30[1] = 3221225472;
      v30[2] = sub_297E30554;
      v30[3] = &unk_29EE84AC8;
      v37 = v7 == cachedDispositionAddress;
      v38 = v26;
      v39 = v25;
      v22 = queriesCopy;
      v33 = &v44;
      v34 = &v40;
      v31 = v22;
      selfCopy = self;
      v35 = pageSize;
      v36 = v29;
      v19 = sub_297E30808(self, v18, v28, v30);
      [(FPMemoryRegion *)v22 setSwappedSize:v41[3]];
      [(FPMemoryRegion *)v22 setDirtySize:v45[3]];
      pendingUnusedSharedRegion = v31;
    }

LABEL_20:
    _Block_object_dispose(&v40, 8);
    _Block_object_dispose(&v44, 8);

    return v19;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)enumerateRegions:(id)regions
{
  v49 = *MEMORY[0x29EDCA608];
  regionsCopy = regions;
  memset(v40, 0, 76);
  v39 = 0;
  *v37 = 0u;
  v38 = 0u;
  v35 = 0;
  v36 = 0;
  baseAddress = [(FPSharedCache *)self->super._sharedCache baseAddress];
  slide = [(FPSharedCache *)self->super._sharedCache slide];
  mappedSize = [(FPSharedCache *)self->super._sharedCache mappedSize];
  slide2 = [(FPSharedCache *)self->super._sharedCache slide];
  baseAddress2 = [(FPSharedCache *)self->super._sharedCache baseAddress];
  v9 = (baseAddress2 - [(FPSharedCache *)self->super._sharedCache slide]);
  firstObject = [(NSMutableArray *)self->_images firstObject];
  v29 = slide2;
  v30 = mappedSize;
  if (firstObject)
  {
    v11 = firstObject[3] + firstObject[2];
  }

  else
  {
LABEL_53:
    v11 = 0;
  }

  v31 = baseAddress - slide;
  v41 = 0;
  *nesting_depth = 0;
  v33 = 0;

  size = 0;
  v48 = 0;
  *info = 0u;
  v47 = 0u;
  object_name = 0;
  pageSize = [(FPProcess *)self pageSize];
  if (v9)
  {
    v13 = pageSize;
    v14 = v9;
    v15 = v11;
    do
    {
      address = (v11 >> 1) + (v14 >> 1);
      infoCnt = 9;
      if (mach_vm_region(self->_task, &address, &size, 9, info, &infoCnt, &object_name))
      {
        break;
      }

      if (size + address <= v9)
      {
        v15 = address;
        v11 = size + address;
      }

      else
      {
        if (v11 == address)
        {
          break;
        }

        v14 = (v11 >> 1) + (v14 >> 1) - v13;
      }
    }

    while (v14 > v11 && v14 - v11 > 0x1000000);
  }

  else
  {
    v15 = 0;
  }

  baseAddress = 0;
  v16 = v15;
  v17 = v15 - 1;
  slide = v30 + v31 + v29;
  while (1)
  {
    v9 = objc_autoreleasePoolPush();
    nesting_depth[1] = -1;
    v41 = 9;
    v18 = v36;
    if (v17 >= v36 || slide <= v36)
    {
      goto LABEL_23;
    }

    v20 = mach_vm_region(self->_task, &v36, &v35, 9, v37, &v41, &v33);
    if (v20)
    {
      break;
    }

    v21 = v36;
    if (v36 < v18)
    {
      v36 = v18;
LABEL_23:
      v21 = v18;
    }

    if (v21 < v16 || (v31 < v35 + v21 ? (v22 = v21 >= slide) : (v22 = 1), v22))
    {
      v41 = 19;
      v23 = mach_vm_region_recurse(self->_task, &v36, &v35, &nesting_depth[1], v40, &v41);
      v24 = v23;
      if (v41 <= 0x12)
      {
        *&v40[17] = v40[14];
      }

      if (v23 == 1 || (baseAddress & (v40[5] != -1)) != 0)
      {
        goto LABEL_46;
      }

      if (v23)
      {
        v28 = @"mach_vm_region_recurse";
        goto LABEL_50;
      }

      v25 = v40[5] == -1;
      if (mach_vm_purgable_control(self->_task, v36, 1, nesting_depth))
      {
        nesting_depth[0] = 3;
      }

      if (v40[12])
      {
        _os_assert_log();
        firstObject = _os_crash();
        __break(1u);
        goto LABEL_53;
      }

      baseAddress = v25 | baseAddress;
      if (BYTE2(v40[11]) && [(FPUserProcess *)self _isAlive]&& (v26 = proc_regionfilename(self->super._pid, v36, info, 0x400u)) != 0)
      {
        *(info + v26) = 0;
        v27 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithUTF8String:info];
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v27 = 0;
      v40[2] = v37[2];
      *v40 = *v37;
      *&v40[3] = *(&v38 + 4);
      memset(&v40[5], 0, 24);
      v40[11] = 16842752;
      v40[12] = v38;
      v40[13] = HIDWORD(v38);
      v40[14] = 1;
      v40[15] = v39;
      v40[16] = 0;
      *&v40[17] = 1;
      nesting_depth[0] = 3;
    }

    if ((*(regionsCopy + 2))(regionsCopy, v36, v35, v40, nesting_depth[0], v27, 0, 0))
    {
      goto LABEL_47;
    }

    v36 += v35;
    objc_autoreleasePoolPop(v9);
  }

  v24 = v20;
  if (v20 == 1)
  {
LABEL_46:
    v27 = 0;
LABEL_47:

    goto LABEL_51;
  }

  v28 = @"mach_vm_region";
LABEL_50:
  sub_297E30E28(self, v24, v28);
LABEL_51:
  objc_autoreleasePoolPop(v9);
}

- (void)_addSubrangesForRegion:(id)region purgeState:(int)state
{
  regionCopy = region;
  pageSize = [(FPProcess *)self pageSize];
  start = [regionCopy start];
  v9 = [regionCopy end];
  wired = [regionCopy wired];
  if ([regionCopy ownedExclusivelyByParentProcess])
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  else
  {
    v11 = start & -pageSize;
    v12 = ((pageSize + v9 - 1) & -pageSize) - v11;
    if (state == 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2048;
    }

    v25[0] = 0;
    v25[1] = v25;
    v25[2] = 0x3010000000;
    offset = 0;
    v27 = 0;
    v25[3] = &unk_297E43A25;
    v14 = v12 / pageSize;
    offset = [regionCopy offset];
    v27 = 0;
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = sub_297E311C8;
    v16[3] = &unk_29EE84AF0;
    v21 = 8;
    v22 = v13;
    v18 = v24;
    v19 = v25;
    v23 = wired;
    v15 = regionCopy;
    v17 = v15;
    v20 = pageSize;
    sub_297E30808(self, v11, v14, v16);

    _Block_object_dispose(v24, 8);
    _Block_object_dispose(v25, 8);
  }
}

- (BOOL)_populateTask
{
  [(FPProcess *)self pid];
  v2 = task_read_for_pid();
  if (v2)
  {
    mach_error("task_read_for_pid", v2);
  }

  return v2 == 0;
}

- (void)_setIdleExitStatusFromDirtyFlags:(unsigned int)flags
{
  if ((flags & 4) != 0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if ((flags & 1) == 0)
  {
    v3 = 1;
  }

  self->super._idleExitStatus = v3;
}

- (void)_gatherProcessState
{
  v9 = *MEMORY[0x29EDCA608];
  if ([(FPUserProcess *)self _isAlive])
  {
    flags = 0;
    v3 = [(FPProcess *)self pid];
    objc_opt_self();
    *buf = 0;
    v7 = 0;
    v8 = 0;
    if ((memorystatus_control() & 0x80000000) != 0)
    {
      dirty = proc_get_dirty(v3, &flags);
      if (os_variant_has_internal_content() && dirty && os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = dirty;
        _os_log_error_impl(&dword_297E24000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "Unable to fetch process info: %d", buf, 8u);
      }
    }

    else
    {
      [(FPUserProcess *)self _setPriority:*&buf[4]];
      flags = [FPUserProcess _dirtyFlagsFromEntryState:HIDWORD(v8)];
    }

    [(FPUserProcess *)self _setIdleExitStatusFromDirtyFlags:flags];
  }
}

+ (unsigned)_dirtyFlagsFromEntryState:(unsigned int)state
{
  if ((state & 0x20) != 0)
  {
    v3 = 5;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 | (state >> 3) & 2;
  if ((state & 8) != 0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (void)_gatherLedgers
{
  if ([(FPUserProcess *)self _isAlive])
  {
    v3 = sub_297E3B408([(FPProcess *)self pid]);
    if (v3)
    {
      v4 = v3;
      for (i = 0; i != 5; ++i)
      {
        if (sub_297E3B4DC(i, v4) < 0)
        {
          v6 = 0;
        }

        else
        {
          v6 = sub_297E3B4DC(i, v4);
        }

        self->_ledgers[i] = v6;
      }

      free(v4);
    }

    else
    {

      sub_297E2FECC(self, @"Unable to retrieve ledger entry info");
    }
  }
}

- (void)_gatherSharedCacheFromDyldSnapshot:(dyld_process_snapshot_s *)snapshot
{
  v4 = [FPSharedCache sharedCacheForDyldSnapshot:snapshot];
  sharedCache = self->super._sharedCache;
  self->super._sharedCache = v4;

  MEMORY[0x2A1C71028](v4, sharedCache);
}

- (void)_gatherImageData
{
  v9 = 0;
  if (dyld_process_create_for_task())
  {
    v9 = 0;
    v3 = dyld_process_snapshot_create_for_process();
    dyld_process_dispose();
    if (v3)
    {
      [(FPUserProcess *)self _gatherSharedCacheFromDyldSnapshot:v3];
      v7[0] = 0;
      v7[1] = v7;
      v7[2] = 0x2020000000;
      v8 = 0;
      v5[0] = 0;
      v5[1] = v5;
      v5[2] = 0x3032000000;
      v5[3] = sub_297E313BC;
      v5[4] = sub_297E313CC;
      v6 = objc_alloc_init(MEMORY[0x29EDB8E20]);
      v4 = MEMORY[0x29EDCA5F8];
      dyld_process_snapshot_for_each_image();
      dyld_process_snapshot_dispose();
      [(NSMutableArray *)self->_images sortUsingComparator:&unk_2A1E8F9D0, v4, 3221225472, sub_297E324B8, &unk_29EE84B68, self, v5, v7];
      _Block_object_dispose(v5, 8);

      _Block_object_dispose(v7, 8);
    }
  }

  else
  {
    sub_297E30E28(self, v9, @"dyld_process_create_for_task");
  }
}

- (id)auxData
{
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  priority = [(FPProcess *)self priority];
  if (os_variant_has_internal_content() && (priority & 0x80000000) == 0)
  {
    v5 = [[FPAuxData alloc] initWithValue:priority shouldAggregate:0];
    [(FPAuxData *)v5 setFormatter:&unk_2A1E8F9F0];
    [v3 setObject:v5 forKeyedSubscript:@"jetsam priority"];
  }

  idleExitStatus = [(FPProcess *)self idleExitStatus];
  if (os_variant_has_internal_content() && idleExitStatus)
  {
    v7 = [[FPAuxData alloc] initWithValue:idleExitStatus shouldAggregate:0];
    [(FPAuxData *)v7 setFormatter:&unk_2A1E8FA10];
    [v3 setObject:v7 forKeyedSubscript:@"dirty"];
  }

  ledgers = self->_ledgers;
  if (self->_ledgers[1])
  {
    v9 = [[FPAuxData alloc] initWithValue:self->_ledgers[1] shouldAggregate:0];
    [v3 setObject:v9 forKeyedSubscript:@"phys_footprint"];

    v10 = [[FPAuxData alloc] initWithValue:ledgers[2] shouldAggregate:0];
    [v3 setObject:v10 forKeyedSubscript:@"phys_footprint_peak"];
  }

  if (ledgers[4])
  {
    v11 = [[FPAuxData alloc] initWithValue:ledgers[4] shouldAggregate:0];
    v12 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:"neural_peak"];
    [v3 setObject:v11 forKeyedSubscript:v12];
  }

  if ([v3 count])
  {
    v13 = v3;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)extendedInfoForRegionType:(int)type at:(unint64_t)at extendedInfoProvider:(id)provider
{
  v66 = *MEMORY[0x29EDCA608];
  providerCopy = provider;
  v9 = providerCopy;
  if (type != 100)
  {
    if (type != 88 || !self)
    {
      __str = 0;
      goto LABEL_38;
    }

    v10 = providerCopy;
    v11 = [v10 ioSurfaceExtendedInfoDetailsAtAddress:at for:{-[FPProcess pid](self, "pid")}];

    if (!v11)
    {
      __str = 0;
LABEL_22:

      goto LABEL_38;
    }

    v12 = [v11 objectForKeyedSubscript:0x2A1E91DD0];
    unsignedIntValue = [v12 unsignedIntValue];

    v14 = [v11 objectForKeyedSubscript:0x2A1E90E30];
    unsignedIntValue2 = [v14 unsignedIntValue];

    if ((unsignedIntValue2 & 0x80000000) != 0)
    {
      if (__maskrune(HIBYTE(unsignedIntValue2), 0x800uLL))
      {
        goto LABEL_7;
      }
    }

    else if ((*(MEMORY[0x29EDCA600] + 4 * HIBYTE(unsignedIntValue2) + 60) & 0x800) != 0)
    {
LABEL_7:
      __str[0] = HIBYTE(unsignedIntValue2);
      __str[1] = BYTE2(unsignedIntValue2);
      __str[2] = BYTE1(unsignedIntValue2);
      __str[3] = unsignedIntValue2;
      __str[4] = 0;
LABEL_19:
      v29 = objc_alloc(MEMORY[0x29EDBA050]);
      v30 = [v11 objectForKeyedSubscript:0x2A1E90DF0];
      unsignedIntValue3 = [v30 unsignedIntValue];
      v32 = [v11 objectForKeyedSubscript:0x2A1E90E10];
      __str = [v29 initWithFormat:@"SID: %#x  %ux%u (%s)", unsignedIntValue, unsignedIntValue3, objc_msgSend(v32, "unsignedIntValue"), __str];

      v33 = [v11 objectForKeyedSubscript:0x2A1E90DD0];
      if ([v33 length])
      {
        [__str appendFormat:@"  '%@'", v33];
      }

      goto LABEL_22;
    }

    snprintf(__str, 5uLL, "%4d", unsignedIntValue2);
    goto LABEL_19;
  }

  v17 = providerCopy;
  if (self)
  {
    v64 = 0;
    v18 = [v17 ioAccelMemoryInfoDetailsAtAddress:at for:-[FPProcess pid](self error:{"pid"), &v64}];
    v19 = v64;
    v20 = v19;
    if (v19)
    {
      localizedDescription = [v19 localizedDescription];
      [(FPProcess *)self _addGlobalError:localizedDescription];
    }

    if (v18)
    {
      v56 = v20;
      v58 = v9;
      v22 = [v18 objectForKeyedSubscript:0x2A1E8FE10];
      v23 = [v18 objectForKeyedSubscript:0x2A1E90EB0];
      v24 = [v18 objectForKeyedSubscript:0x2A1E90E90];
      v25 = [v18 objectForKeyedSubscript:0x2A1E90DB0];
      v26 = [v18 objectForKeyedSubscript:0x2A1E90ED0];
      v59 = [v18 objectForKeyedSubscript:0x2A1E90EF0];
      v27 = [v18 objectForKeyedSubscript:0x2A1E90E50];
      if ([v25 unsignedLongLongValue])
      {
        v28 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%llu", objc_msgSend(v25, "unsignedLongLongValue")];
      }

      else
      {
        v28 = @"-";
      }

      v55 = v25;
      v53 = v28;
      v34 = v24;
      if (objc_msgSend_BOOLValue(v26))
      {
        v35 = @"Wired";
      }

      else
      {
        v36 = objc_msgSend_BOOLValue(v59);
        v35 = @"Normal";
        if (v36)
        {
          v35 = @"Purgeable";
        }
      }

      v52 = v35;
      v54 = v26;
      v57 = v17;
      string = [MEMORY[0x29EDBA050] string];
      v60 = 0u;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v38 = v27;
      v39 = [v38 countByEnumeratingWithState:&v60 objects:__str count:16];
      if (v39)
      {
        v40 = v39;
        v41 = *v61;
        do
        {
          for (i = 0; i != v40; ++i)
          {
            if (*v61 != v41)
            {
              objc_enumerationMutation(v38);
            }

            [string appendString:*(*(&v60 + 1) + 8 * i)];
          }

          v40 = [v38 countByEnumeratingWithState:&v60 objects:__str count:16];
        }

        while (v40);
      }

      v51 = MEMORY[0x29EDBA0F8];
      v48 = v22;
      [v22 unsignedLongLongValue];
      v43 = NSLocalizedFileSizeDescription();
      uTF8String = [v43 UTF8String];
      [v23 unsignedLongLongValue];
      v44 = NSLocalizedFileSizeDescription();
      uTF8String2 = [v44 UTF8String];
      [v34 unsignedLongLongValue];
      NSLocalizedFileSizeDescription();
      v45 = v50 = v23;
      __str = [v51 stringWithFormat:@"Size:%s Resident:%s Dirty:%s IOSurfaceID:%s State:%s %s", uTF8String, uTF8String2, objc_msgSend(v45, "UTF8String"), -[__CFString UTF8String](v53, "UTF8String"), -[__CFString UTF8String](v52, "UTF8String"), objc_msgSend(string, "UTF8String")];

      v17 = v57;
      v9 = v58;
      v20 = v56;
    }

    else
    {
      __str = 0;
    }
  }

  else
  {
    __str = 0;
  }

LABEL_38:

  return __str;
}

- (void)addLedgerData:(unint64_t *)data count:(unint64_t)count
{
  countCopy = 5;
  if (count < 5)
  {
    countCopy = count;
  }

  memcpy(self->_ledgers, data, 8 * countCopy);
}

@end