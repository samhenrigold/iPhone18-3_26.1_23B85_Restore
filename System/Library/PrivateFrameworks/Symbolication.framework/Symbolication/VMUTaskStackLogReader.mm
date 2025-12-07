@interface VMUTaskStackLogReader
- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforMallocAddress:(unint64_t)address size:(unint64_t)size;
- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforVMregionAddress:(unint64_t)address;
- (VMUTaskMemoryScanner)scanner;
- (VMUTaskStackLogReader)initWithTask:(unsigned int)task symbolicator:(_CSTypeRef)symbolicator;
- (VMUVMRegionTracker)regionTracker;
- (int)enumerateMSLRecordsAndPayloads:(id)payloads;
- (int64_t)getFramesForAddress:(unint64_t)address size:(unint64_t)size inLiteZone:(BOOL)zone stackFramesBuffer:(unint64_t *)buffer;
- (int64_t)getFramesForNode:(unsigned int)node inLiteZone:(BOOL)zone stackFramesBuffer:(unint64_t *)buffer;
- (unint64_t)nodesInUniquingTable;
- (void)dealloc;
@end

@implementation VMUTaskStackLogReader

- (VMUTaskStackLogReader)initWithTask:(unsigned int)task symbolicator:(_CSTypeRef)symbolicator
{
  selfCopy = self;
  v16 = *MEMORY[0x1E69E9840];
  if (!MEMORY[0x1EEE8C340])
  {
    goto LABEL_21;
  }

  v5 = *&task;
  v14.receiver = self;
  v14.super_class = VMUTaskStackLogReader;
  v6 = [(VMUTaskStackLogReader *)&v14 init];
  selfCopy = v6;
  if (!v6)
  {
LABEL_23:
    selfCopy = selfCopy;
    v12 = selfCopy;
    goto LABEL_24;
  }

  v6->super._task = v5;
  v6->super._usesLiteMode = 0;
  v6->super._symbolicator._opaque_1 = CSRetain();
  selfCopy->super._symbolicator._opaque_2 = v7;
  if (CSIsNull())
  {
    CSSymbolicatorGetFlagsForNListOnlyData();
    CSSymbolicatorCreateWithTaskFlagsAndNotification();
  }

  else
  {
    CSRetain();
  }

  if (CSIsNull())
  {
    NSLog(&cfstr_Getstackloggin.isa);
    goto LABEL_20;
  }

  CSSymbolicatorGetSymbolOwnerWithNameAtTime();
  if (CSIsNull())
  {
    v8 = [[VMUProcInfo alloc] initWithTask:v5];
    v9 = [(VMUProcInfo *)v8 valueForEnvVar:@"DYLD_IMAGE_SUFFIX"];
    uTF8String = [v9 UTF8String];

    if (uTF8String)
    {
      snprintf(__str, 0x7FuLL, "libsystem_malloc%s.dylib", uTF8String);
      CSSymbolicatorGetSymbolOwnerWithNameAtTime();
    }

    if (CSIsNull())
    {
      NSLog(&cfstr_Getstackloggin_0.isa);
      CSRelease();

      goto LABEL_20;
    }
  }

  CSSymbolOwnerGetSymbolWithMangledName();
  Range = CSSymbolGetRange();
  if (Range)
  {
    task_start_peeking(v5);
    *__str = 0;
    if (task_peek(v5, Range, 8uLL, __str))
    {
      NSLog(&cfstr_Getstackloggin_2.isa);
    }

    task_stop_peeking(v5);
  }

  else
  {
    NSLog(&cfstr_Getstackloggin_1.isa);
  }

  CSRelease();
LABEL_20:
  *__str = 0;
  if (!msl_start_reading())
  {
    selfCopy->super._usesLiteMode = *__str != 0;
    selfCopy->_msl_payload_version = msl_payload_version_from_task();
    selfCopy->super._coldestFrameIsNotThreadId = msl_coldest_frame_is_threadid() == 0;
    goto LABEL_23;
  }

LABEL_21:
  v12 = 0;
LABEL_24:

  return v12;
}

- (void)dealloc
{
  if (MEMORY[0x1EEE8C348])
  {
    msl_stop_reading();
  }

  CSRelease();
  v3.receiver = self;
  v3.super_class = VMUTaskStackLogReader;
  [(VMUTaskStackLogReader *)&v3 dealloc];
}

- (VMUVMRegionTracker)regionTracker
{
  regionTracker = self->super._regionTracker;
  if (!regionTracker)
  {
    v4 = [[VMUVMRegionTracker alloc] initWithStackLogReader:self];
    v5 = self->super._regionTracker;
    self->super._regionTracker = v4;

    regionTracker = self->super._regionTracker;
  }

  return regionTracker;
}

- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforMallocAddress:(unint64_t)address size:(unint64_t)size
{
  if (address && size)
  {
    v6 = 0;
    v4 = task_peek(self->super._task, address, size, &v6);
    if (v4)
    {
      NSLog(&cfstr_Vmutaskstacklo.isa, v4);
      return msl_payload_get_invalid();
    }

    else
    {
      return msl_payload_from_lite_zone_ptr();
    }
  }

  else
  {

    return msl_payload_get_invalid();
  }
}

- ($61A80719B04F7407D3E47539F1B23CAA)liteMSLPayloadforVMregionAddress:(unint64_t)address
{
  if (address)
  {
    return MEMORY[0x1EEE1AD40](self->super._task, address);
  }

  else
  {
    return msl_payload_get_invalid();
  }
}

- (int64_t)getFramesForNode:(unsigned int)node inLiteZone:(BOOL)zone stackFramesBuffer:(unint64_t *)buffer
{
  zoneCopy = zone;
  WeakRetained = objc_loadWeakRetained(&self->_scanner);
  v9 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_nodeDetails_(WeakRetained);
  }

  if (!VMUGraphNodeType_IsVMRegion(0))
  {
    return 0;
  }

  if (!self->super._usesLiteMode || !VMUGraphNodeType_IsVMRegion(0))
  {
    return [(VMUTaskStackLogReader *)self getFramesForAddress:0 size:0 inLiteZone:zoneCopy stackFramesBuffer:buffer];
  }

  [(VMUTaskStackLogReader *)self liteMSLPayloadforVMregionAddress:0];
  if (msl_payload_get_uniquing_table_index() == -1)
  {
    return 0;
  }

  if (msl_uniquing_table_get_frames_from_task())
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (int64_t)getFramesForAddress:(unint64_t)address size:(unint64_t)size inLiteZone:(BOOL)zone stackFramesBuffer:(unint64_t *)buffer
{
  if (zone)
  {
    [(VMUTaskStackLogReader *)self liteMSLPayloadforMallocAddress:address size:size, zone, buffer];
    if (msl_payload_get_uniquing_table_index() == -1)
    {
      return 0;
    }

    frames_from_task = msl_uniquing_table_get_frames_from_task();
  }

  else
  {
    frames_from_task = msl_get_frames_for_address();
  }

  if (frames_from_task)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

- (int)enumerateMSLRecordsAndPayloads:(id)payloads
{
  payloadsCopy = payloads;
  v5 = payloadsCopy;
  if (self->super._usesLiteMode)
  {
    task_start_peeking(self->super._task);
    task = self->super._task;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke;
    v19[3] = &unk_1E8278710;
    v19[4] = self;
    v7 = v5;
    v20 = v7;
    task_foreach_malloc_zone(task, v19);
    address = 0;
    v16 = 0u;
    v17 = 0u;
    *info = 0u;
    nesting_depth = 0;
    infoCnt = 12;
    for (size = 0; !mach_vm_region_recurse(self->super._task, &address, &size, &nesting_depth, info, &infoCnt); size = 0)
    {
      if (!v17)
      {
        v8.var0 = [(VMUTaskStackLogReader *)self liteMSLPayloadforVMregionAddress:address];
        if (!msl_payload_is_invalid())
        {
          (*(v7 + 2))(v7, (DWORD1(v16) << 24) | 0x10u, address, size, v8);
        }
      }

      address += size;
      v16 = 0u;
      v17 = 0u;
      *info = 0u;
      nesting_depth = 0;
      infoCnt = 12;
    }

    task_stop_peeking(self->super._task);

    v9 = 0;
  }

  else
  {
    v11 = payloadsCopy;
    v9 = msl_disk_stack_logs_enumerate_from_task_with_block();
  }

  return v9;
}

uint64_t __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke(uint64_t a1, uint64_t a2, uint64_t (**a3)(uint64_t, id, uint64_t, uint64_t, uint64_t, uint64_t (*)(int, void *aBlock)), void *a4)
{
  v7 = a4;
  if ([v7 hasPrefix:@"MallocStackLoggingLiteZone"] && (objc_msgSend(v7, "hasPrefix:", @"MallocStackLoggingLiteZone_Wrapper") & 1) == 0)
  {
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = *(v10 + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke_2;
    v13[3] = &unk_1E82786E8;
    v13[4] = v10;
    v14 = v9;
    v8 = VMUEnumerateMallocBlocksInZone(v11, 1, a2, task_peek_natural_size, a3, v7, v13);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __56__VMUTaskStackLogReader_enumerateMSLRecordsAndPayloads___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = result;
    v5 = a4;
    v6 = (a3 + 8);
    do
    {
      [*(v4 + 32) liteMSLPayloadforMallocAddress:*(v6 - 1) size:*v6];
      result = (*(*(v4 + 40) + 16))();
      v6 += 2;
      --v5;
    }

    while (v5);
  }

  return result;
}

- (unint64_t)nodesInUniquingTable
{
  v2 = msl_uniquing_table_copy_from_task();
  if (v2)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    msl_uniquing_table_enumerate();
    MEMORY[0x1C695EDE0](v2);
    v2 = v5[3];
    _Block_object_dispose(&v4, 8);
  }

  return v2;
}

- (VMUTaskMemoryScanner)scanner
{
  WeakRetained = objc_loadWeakRetained(&self->_scanner);

  return WeakRetained;
}

@end