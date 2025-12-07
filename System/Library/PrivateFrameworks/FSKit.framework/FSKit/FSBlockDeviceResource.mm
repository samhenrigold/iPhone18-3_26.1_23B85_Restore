@interface FSBlockDeviceResource
+ (id)getDeviceName:(id)name;
+ (id)proxyResourceForBSDName:(id)name isWritable:(BOOL)writable;
+ (id)resourceWithBSDName:(id)name devicePath:(id)path fileDescriptor:(int)descriptor writable:(BOOL)writable;
+ (void)openWithBSDName:(id)name writable:(BOOL)writable auditToken:(id)token replyHandler:(id)handler;
- (BOOL)asynchronousMetadataFlushWithError:(id *)error;
- (BOOL)delayedMetadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (BOOL)metadataClear:(id)clear withDelayedWrites:(BOOL)writes error:(id *)error;
- (BOOL)metadataFlushWithError:(id *)error;
- (BOOL)metadataPurge:(id)purge error:(id *)error;
- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length readAheadExtents:(id *)extents readAheadCount:(int64_t)count error:(id *)error;
- (BOOL)metadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (BOOL)terminated;
- (FSBlockDeviceResource)initWithBSDName:(id)name devicePath:(id)path fileDescriptor:(int)descriptor writable:(BOOL)writable;
- (FSBlockDeviceResource)initWithCoder:(id)coder;
- (FSBlockDeviceResource)initWithResource:(id)resource;
- (id)getProgressURLKey;
- (id)initProxyForBSDName:(id)name isWritable:(BOOL)writable;
- (id)makeProxy;
- (id)startUsingResource:(id)resource;
- (id)stopUsingResource:(id)resource;
- (unint64_t)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (unint64_t)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)readFirstSectorAndLog;
- (void)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler;
- (void)releaseNotification;
- (void)revoke;
- (void)terminate;
- (void)terminateLocked;
- (void)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler;
@end

@implementation FSBlockDeviceResource

+ (id)getDeviceName:(id)name
{
  v19 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v4 = nameCopy;
  if ([nameCopy hasPrefix:@"/dev/"])
  {
    v4 = [nameCopy substringFromIndex:{objc_msgSend(@"/dev/", "length")}];
  }

  memset(&v17, 0, sizeof(v17));
  if ([v4 hasPrefix:@"fd/"])
  {
    v5 = [v4 substringFromIndex:{objc_msgSend(@"fd/", "length")}];
    intValue = [v5 intValue];

    if (intValue >= 1)
    {
      v7 = fstat(intValue, &v17);
      if (v7)
      {
        v8 = fskit_std_log(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          +[FSBlockDeviceResource getDeviceName:];
        }

LABEL_8:

        v9 = 0;
        goto LABEL_18;
      }

      v10 = fcntl(intValue, 50, v18);
      if (v10 == -1)
      {
        v8 = fskit_std_log(v10);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [(FSBlockDeviceResource *)intValue getDeviceName:v8];
        }

        goto LABEL_8;
      }

      v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:v18];

      v13 = fskit_std_log(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [(FSBlockDeviceResource *)v11 getDeviceName:intValue, v13];
      }

      if ([v11 hasPrefix:@"/dev/"])
      {
        v14 = [v11 substringFromIndex:{objc_msgSend(@"/dev/", "length")}];

        v11 = v14;
      }

      v4 = v11;
    }
  }

  if ([v4 hasPrefix:@"r"])
  {
    v15 = [v4 substringFromIndex:1];

    v4 = v15;
  }

  v4 = v4;
  v9 = v4;
LABEL_18:

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  v20 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = FSBlockDeviceResource;
  [(FSResource *)&v13 encodeWithCoder:coderCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be encoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v12);
  }

  fileDescriptor = self->_fileDescriptor;
  if ((fileDescriptor & 0x80000000) == 0)
  {
    v6 = xpc_fd_create(fileDescriptor);
    if (v6)
    {
      [coderCopy encodeXPCObject:v6 forKey:@"FSResource.fd"];
    }

    else
    {
      v7 = __error();
      v8 = *v7;
      v9 = fskit_std_log(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = self->_fileDescriptor;
        devicePath = self->_devicePath;
        *buf = 67109634;
        v15 = v10;
        v16 = 2114;
        v17 = devicePath;
        v18 = 1024;
        v19 = v8;
        _os_log_fault_impl(&dword_24A929000, v9, OS_LOG_TYPE_FAULT, "error creating fdWrapper for fd %d(%{public}@), maybe error: %d", buf, 0x18u);
      }
    }
  }

  [coderCopy encodeObject:self->_BSDName forKey:@"FSResource.bsdName"];
  [coderCopy encodeObject:self->_devicePath forKey:@"FSResource.path"];
  [coderCopy encodeBool:self->_writable forKey:@"FSResource.writable"];
  [coderCopy encodeBool:self->_supportsBarrier forKey:@"FSResource.supportsBarrier"];
  [coderCopy encodeBool:self->_supportsPriority forKey:@"FSResource.supportsPriority"];
  [coderCopy encodeBool:self->_supportsUnmap forKey:@"FSResource.supportsUnmap"];
  [coderCopy encodeInteger:self->_blockSize forKey:@"FSResource.blockSize"];
  [coderCopy encodeInteger:self->_blockCount forKey:@"FSResource.blockCount"];
  [coderCopy encodeInteger:self->_physicalBlockSize forKey:@"FSResource.physicalBlockSize"];
  [coderCopy encodeInteger:self->_queueDepth forKey:@"FSResource.queueDepth"];
  [coderCopy encodeInteger:self->_partitionBase forKey:@"FSResource.partitionBase"];
  [coderCopy encodeBool:self->_limited forKey:@"FSResource.Limited"];
}

- (FSBlockDeviceResource)initWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"This object may only be decoded by an NSXPCCoder." userInfo:0];
    objc_exception_throw(v18);
  }

  v19.receiver = self;
  v19.super_class = FSBlockDeviceResource;
  v5 = [(FSResource *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.bsdName"];
    BSDName = v5->_BSDName;
    v5->_BSDName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FSResource.path"];
    devicePath = v5->_devicePath;
    v5->_devicePath = v8;

    v5->_writable = [coderCopy decodeBoolForKey:@"FSResource.writable"];
    v5->_supportsBarrier = [coderCopy decodeBoolForKey:@"FSResource.supportsBarrier"];
    v5->_supportsPriority = [coderCopy decodeBoolForKey:@"FSResource.supportsPriority"];
    v5->_supportsUnmap = [coderCopy decodeBoolForKey:@"FSResource.supportsUnmap"];
    v5->_blockSize = [coderCopy decodeIntegerForKey:@"FSResource.blockSize"];
    v5->_blockCount = [coderCopy decodeIntegerForKey:@"FSResource.blockCount"];
    v5->_physicalBlockSize = [coderCopy decodeIntegerForKey:@"FSResource.physicalBlockSize"];
    v5->_queueDepth = [coderCopy decodeIntegerForKey:@"FSResource.queueDepth"];
    v5->_partitionBase = [coderCopy decodeIntegerForKey:@"FSResource.partitionBase"];
    v5->_limited = [coderCopy decodeBoolForKey:@"FSResource.Limited"];
    v10 = [coderCopy decodeXPCObjectOfType:MEMORY[0x277D86488] forKey:@"FSResource.fd"];
    v11 = v10;
    if (v10)
    {
      v12 = xpc_fd_dup(v10);
    }

    else
    {
      v12 = -1;
    }

    v5->_fileDescriptor = v12;
    v5->_terminated = 0;
    v13 = [FSWorkQueue alloc];
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsblockdevice.%@", v5->_BSDName];
    v15 = [(FSWorkQueue *)v13 initQueueWithDomain:v14 concurrency:16];
    fsExecQueue = v5->_fsExecQueue;
    v5->_fsExecQueue = v15;
  }

  return v5;
}

- (id)makeProxy
{
  bSDName = [(FSBlockDeviceResource *)self BSDName];
  v4 = [FSBlockDeviceResource newProxyForBSDName:bSDName isWritable:[(FSBlockDeviceResource *)self isWritable]];

  return v4;
}

- (void)dealloc
{
  [(FSBlockDeviceResource *)self terminate];
  v3.receiver = self;
  v3.super_class = FSBlockDeviceResource;
  [(FSBlockDeviceResource *)&v3 dealloc];
}

- (void)revoke
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FSBlockDeviceResource revoke]";
  OUTLINED_FUNCTION_3_0(&dword_24A929000, self, a3, "%s:end", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __31__FSBlockDeviceResource_revoke__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = fskit_std_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __31__FSBlockDeviceResource_revoke__block_invoke_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

void __31__FSBlockDeviceResource_revoke__block_invoke_77(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __31__FSBlockDeviceResource_revoke__block_invoke_77_cold_1(v3);
  }

  *(*(*(a1 + 32) + 8) + 24) = [v3 code];
}

- (void)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_terminated)
  {
    v12 = fs_errorForPOSIXError(5);
    handlerCopy[2](handlerCopy, 0, v12);

    objc_sync_exit(selfCopy);
LABEL_6:

    goto LABEL_7;
  }

  objc_sync_exit(selfCopy);

  if (!into)
  {
    selfCopy = fs_errorForPOSIXError(14);
    handlerCopy[2](handlerCopy, 0, selfCopy);
    goto LABEL_6;
  }

  objc_initWeak(&location, selfCopy);
  fsExecQueue = selfCopy->_fsExecQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __70__FSBlockDeviceResource_readInto_startingAt_length_completionHandler___block_invoke;
  v14[3] = &unk_278FED420;
  objc_copyWeak(v16, &location);
  v16[1] = into;
  v16[2] = length;
  v16[3] = at;
  v15 = handlerCopy;
  [(FSWorkQueue *)fsExecQueue enqueue:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
LABEL_7:
}

void __70__FSBlockDeviceResource_readInto_startingAt_length_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = pread([WeakRetained fileDescriptor], *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v4 = *(a1 + 32);
    if (v3 < 0)
    {
      v5 = __error();
      v6 = fs_errorForPOSIXError(*v5);
      (*(v4 + 16))(v4, 0, v6);
    }

    else
    {
      (*(v4 + 16))(v4, v3, 0);
    }

    WeakRetained = v7;
  }
}

- (unint64_t)readInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_terminated)
  {
    v11 = fs_errorForPOSIXError(5);
    if (error)
    {
      v11 = v11;
      *error = v11;
    }

    objc_sync_exit(selfCopy);
    return 0;
  }

  objc_sync_exit(selfCopy);

  result = pread([(FSBlockDeviceResource *)selfCopy fileDescriptor], into, length, at);
  if ((result & 0x8000000000000000) != 0)
  {
    v13 = __error();
    v14 = fs_errorForPOSIXError(*v13);
    if (error)
    {
      v14 = v14;
      *error = v14;
    }

    return 0;
  }

  if (error)
  {
    *error = 0;
  }

  return result;
}

- (void)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length completionHandler:(id)handler
{
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_terminated)
  {
    v12 = fs_errorForPOSIXError(5);
    handlerCopy[2](handlerCopy, 0, v12);

    objc_sync_exit(selfCopy);
LABEL_6:

    goto LABEL_7;
  }

  objc_sync_exit(selfCopy);

  if (!from)
  {
    selfCopy = fs_errorForPOSIXError(14);
    handlerCopy[2](handlerCopy, 0, selfCopy);
    goto LABEL_6;
  }

  objc_initWeak(&location, selfCopy);
  fsExecQueue = selfCopy->_fsExecQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__FSBlockDeviceResource_writeFrom_startingAt_length_completionHandler___block_invoke;
  v14[3] = &unk_278FED420;
  objc_copyWeak(v16, &location);
  v16[1] = from;
  v16[2] = length;
  v16[3] = at;
  v15 = handlerCopy;
  [(FSWorkQueue *)fsExecQueue enqueue:v14];

  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
LABEL_7:
}

void __71__FSBlockDeviceResource_writeFrom_startingAt_length_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = pwrite([WeakRetained fileDescriptor], *(a1 + 48), *(a1 + 56), *(a1 + 64));
    v4 = *(a1 + 32);
    if (v3 < 0)
    {
      v5 = __error();
      v6 = fs_errorForPOSIXError(*v5);
      (*(v4 + 16))(v4, 0, v6);
    }

    else
    {
      (*(v4 + 16))(v4, v3, 0);
    }

    WeakRetained = v7;
  }
}

- (unint64_t)writeFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_terminated)
  {
    v11 = fs_errorForPOSIXError(5);
    if (error)
    {
      v11 = v11;
      *error = v11;
    }

    objc_sync_exit(selfCopy);
    return 0;
  }

  objc_sync_exit(selfCopy);

  result = pwrite([(FSBlockDeviceResource *)selfCopy fileDescriptor], from, length, at);
  if ((result & 0x8000000000000000) != 0)
  {
    v13 = __error();
    v14 = fs_errorForPOSIXError(*v13);
    if (error)
    {
      v14 = v14;
      *error = v14;
    }

    return 0;
  }

  if (error)
  {
    *error = 0;
  }

  return result;
}

- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  v12 = [defaultClient readMeta:self->_fileDescriptor buffer:into offset:at length:length];
  if (v12)
  {
    v13 = fs_errorForPOSIXError(5);
    if (error)
    {
      v13 = v13;
      *error = v13;
    }
  }

  else if (error)
  {
    *error = 0;
  }

  return v12 == 0;
}

- (BOOL)metadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  v12 = [defaultClient writeMeta:self->_fileDescriptor buffer:from offset:at length:length];
  if (v12)
  {
    v13 = fs_errorForPOSIXError(5);
    if (error)
    {
      v13 = v13;
      *error = v13;
    }
  }

  else if (error)
  {
    *error = 0;
  }

  return v12 == 0;
}

- (BOOL)delayedMetadataWriteFrom:(void *)from startingAt:(int64_t)at length:(unint64_t)length error:(id *)error
{
  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  v12 = [defaultClient writeMetaDelayed:self->_fileDescriptor buffer:from offset:at length:length];
  if (v12)
  {
    v13 = fs_errorForPOSIXError(5);
    if (error)
    {
      v13 = v13;
      *error = v13;
    }
  }

  else if (error)
  {
    *error = 0;
  }

  return v12 == 0;
}

- (BOOL)asynchronousMetadataFlushWithError:(id *)error
{
  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  v6 = [defaultClient flushMeta:self->_fileDescriptor wait:0];
  v7 = v6;
  if (v6)
  {
    v8 = fskit_std_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource asynchronousMetadataFlushWithError:];
    }

    v9 = fs_errorForPOSIXError(5);
    if (error)
    {
      v9 = v9;
      *error = v9;
    }
  }

  else if (error)
  {
    *error = 0;
  }

  return v7 == 0;
}

- (BOOL)metadataFlushWithError:(id *)error
{
  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  v6 = [defaultClient flushMeta:self->_fileDescriptor wait:1];
  v7 = v6;
  if (v6)
  {
    v8 = fskit_std_log(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource metadataFlushWithError:];
    }

    v9 = fs_errorForPOSIXError(5);
    if (error)
    {
      v9 = v9;
      *error = v9;
    }
  }

  else if (error)
  {
    *error = 0;
  }

  return v7 == 0;
}

- (BOOL)metadataClear:(id)clear withDelayedWrites:(BOOL)writes error:(id *)error
{
  writesCopy = writes;
  v34 = *MEMORY[0x277D85DE8];
  clearCopy = clear;
  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  v10 = [clearCopy count];
  if (v10 < 9)
  {
    selfCopy = self;
    v27 = defaultClient;
    memset(v33, 0, sizeof(v33));
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v14 = clearCopy;
    v15 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v29;
      do
      {
        v19 = 0;
        v20 = ((v33 | 0xC) + 16 * v17);
        v17 += v16;
        do
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v21 = *(*(&v28 + 1) + 8 * v19);
          *(v20 - 3) = [v21 startOffset];
          *(v20 - 1) = [v21 segmentLength];
          *v20 = [v21 segmentCount];
          v20 += 4;
          ++v19;
        }

        while (v16 != v19);
        v16 = [v14 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    defaultClient = v27;
    v22 = [v27 clearMetaBlocks:selfCopy->_fileDescriptor ranges:v33 rangesCount:objc_msgSend(v14 wait:{"count"), writesCopy}];
    v13 = v22 == 0;
    if (v22)
    {
      v23 = fskit_std_log(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceResource metadataClear:withDelayedWrites:error:];
      }

      v24 = fs_errorForPOSIXError(5);
      if (error)
      {
        v24 = v24;
        *error = v24;
      }
    }

    else if (error)
    {
      *error = 0;
    }
  }

  else
  {
    v11 = fskit_std_log(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource metadataClear:withDelayedWrites:error:];
    }

    v12 = fs_errorForPOSIXError(22);
    if (error)
    {
      v12 = v12;
      *error = v12;
    }

    v13 = 0;
  }

  return v13;
}

- (BOOL)metadataPurge:(id)purge error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  purgeCopy = purge;
  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  v8 = [purgeCopy count];
  if (v8 < 9)
  {
    selfCopy = self;
    v25 = defaultClient;
    memset(v31, 0, sizeof(v31));
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v12 = purgeCopy;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v27;
      do
      {
        v17 = 0;
        v18 = ((v31 | 0xC) + 16 * v15);
        v15 += v14;
        do
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v19 = *(*(&v26 + 1) + 8 * v17);
          *(v18 - 3) = [v19 startOffset];
          *(v18 - 1) = [v19 segmentLength];
          *v18 = [v19 segmentCount];
          v18 += 4;
          ++v17;
        }

        while (v14 != v17);
        v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v14);
    }

    defaultClient = v25;
    v20 = [v25 purgeMetaBlocks:selfCopy->_fileDescriptor ranges:v31 rangesCount:{objc_msgSend(v12, "count")}];
    v11 = v20 == 0;
    if (v20)
    {
      v21 = fskit_std_log(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [FSBlockDeviceResource metadataPurge:error:];
      }

      v22 = fs_errorForPOSIXError(5);
      if (error)
      {
        v22 = v22;
        *error = v22;
      }
    }

    else if (error)
    {
      *error = 0;
    }
  }

  else
  {
    v9 = fskit_std_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource metadataPurge:error:];
    }

    v10 = fs_errorForPOSIXError(22);
    if (error)
    {
      v10 = v10;
      *error = v10;
    }

    v11 = 0;
  }

  return v11;
}

- (void)releaseNotification
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[FSBlockDeviceResource releaseNotification]";
  OUTLINED_FUNCTION_3_0(&dword_24A929000, self, a3, "%s:released", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (BOOL)isEqual:(id)equal
{
  v4 = [(FSResource *)FSBlockDeviceResource dynamicCast:equal];
  v5 = v4;
  if (v4)
  {
    BSDName = self->_BSDName;
    bSDName = [v4 BSDName];
    v8 = [(NSString *)BSDName isEqual:bSDName];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getProgressURLKey
{
  v2 = MEMORY[0x277CBEBC0];
  v3 = MEMORY[0x277CCACA8];
  bsdName = [(FSBlockDeviceResource *)self bsdName];
  v5 = [v3 stringWithFormat:@"/dev/r%@", bsdName];
  v6 = [v2 fileURLWithPath:v5];

  return v6;
}

- (id)initProxyForBSDName:(id)name isWritable:(BOOL)writable
{
  writableCopy = writable;
  v6 = [FSBlockDeviceResource getDeviceName:name];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/r%@", v6];
    self = [(FSBlockDeviceResource *)self initWithBSDName:v6 devicePath:v7 fileDescriptor:0xFFFFFFFFLL writable:writableCopy];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (FSBlockDeviceResource)initWithBSDName:(id)name devicePath:(id)path fileDescriptor:(int)descriptor writable:(BOOL)writable
{
  nameCopy = name;
  pathCopy = path;
  v30.receiver = self;
  v30.super_class = FSBlockDeviceResource;
  initResource = [(FSResource *)&v30 initResource];
  v14 = initResource;
  if (initResource)
  {
    objc_storeStrong(initResource + 6, name);
    objc_storeStrong(&v14->_devicePath, path);
    v14->_fileDescriptor = descriptor;
    v14->_writable = writable;
    v29 = 0;
    v28 = 0;
    if (ioctl(descriptor, 0x40046418uLL, &v29))
    {
      v15 = 512;
    }

    else
    {
      v15 = v29;
    }

    v14->_blockSize = v15;
    v16 = ioctl(v14->_fileDescriptor, 0x40086419uLL, &v28);
    v17 = v28;
    if (v16)
    {
      v17 = 0;
    }

    v14->_blockCount = v17;
    if (ioctl(v14->_fileDescriptor, 0x4004644DuLL, &v29))
    {
      blockSize = v14->_blockSize;
    }

    else
    {
      blockSize = v29;
    }

    v14->_physicalBlockSize = blockSize;
    if (ioctl(v14->_fileDescriptor, 0x4004644EuLL, &v29))
    {
      v19 = 0;
    }

    else
    {
      v19 = v29;
    }

    v14->_queueDepth = v19;
    if (ioctl(v14->_fileDescriptor, 0x4004644CuLL, &v29))
    {
      v14->_supportsUnmap = 0;
      v14->_supportsPriority = 0;
      v14->_supportsBarrier = 0;
    }

    else
    {
      v20 = v29;
      v14->_supportsBarrier = (v29 & 2) != 0;
      v14->_supportsPriority = (v20 & 4) != 0;
      v14->_supportsUnmap = (v20 & 0x10) != 0;
    }

    v21 = ioctl(v14->_fileDescriptor, 0x40086449uLL, &v28);
    v22 = v28;
    if (v21)
    {
      v22 = 0;
    }

    v14->_partitionBase = v22;
    v14->_notification = 0;
    v14->_terminated = 0;
    v23 = [FSWorkQueue alloc];
    v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsblockdevice.%@", v14->_BSDName];
    v25 = [(FSWorkQueue *)v23 initQueueWithDomain:v24 concurrency:16];
    fsExecQueue = v14->_fsExecQueue;
    v14->_fsExecQueue = v25;
  }

  return v14;
}

- (FSBlockDeviceResource)initWithResource:(id)resource
{
  resourceCopy = resource;
  v15.receiver = self;
  v15.super_class = FSBlockDeviceResource;
  initResource = [(FSResource *)&v15 initResource];
  if (initResource)
  {
    bSDName = [resourceCopy BSDName];
    BSDName = initResource->_BSDName;
    initResource->_BSDName = bSDName;

    devicePath = [resourceCopy devicePath];
    devicePath = initResource->_devicePath;
    initResource->_devicePath = devicePath;

    initResource->_fileDescriptor = [resourceCopy fileDescriptor];
    initResource->_writable = [resourceCopy isWritable];
    initResource->_blockSize = [resourceCopy blockSize];
    initResource->_blockCount = [resourceCopy blockCount];
    initResource->_physicalBlockSize = [resourceCopy physicalBlockSize];
    initResource->_queueDepth = *(resourceCopy + 3);
    initResource->_supportsBarrier = *(resourceCopy + 17);
    initResource->_supportsUnmap = *(resourceCopy + 19);
    initResource->_supportsPriority = *(resourceCopy + 18);
    initResource->_partitionBase = [resourceCopy partitionBase];
    initResource->_notification = 0;
    initResource->_terminated = [resourceCopy terminated];
    v10 = [FSWorkQueue alloc];
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"fsblockdevice.%@", initResource->_BSDName];
    v12 = [(FSWorkQueue *)v10 initQueueWithDomain:v11 concurrency:16];
    fsExecQueue = initResource->_fsExecQueue;
    initResource->_fsExecQueue = v12;
  }

  return initResource;
}

+ (id)resourceWithBSDName:(id)name devicePath:(id)path fileDescriptor:(int)descriptor writable:(BOOL)writable
{
  writableCopy = writable;
  v7 = *&descriptor;
  pathCopy = path;
  nameCopy = name;
  v12 = [[self alloc] initWithBSDName:nameCopy devicePath:pathCopy fileDescriptor:v7 writable:writableCopy];

  return v12;
}

+ (void)openWithBSDName:(id)name writable:(BOOL)writable auditToken:(id)token replyHandler:(id)handler
{
  writableCopy = writable;
  v86 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  tokenCopy = token;
  handlerCopy = handler;
  v12 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
  }

  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/r%@", nameCopy];
  v14 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.fskit.fskit_helper" options:4096];
  v15 = +[FSKitConstants FSKitHelperProtocol];
  [v14 setRemoteObjectInterface:v15];

  [v14 resume];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__1;
  v78 = __Block_byref_object_dispose__1;
  v79 = 0;
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__1;
  v72 = __Block_byref_object_dispose__1;
  v73 = 0;
  v67[0] = MEMORY[0x277D85DD0];
  v67[1] = 3221225472;
  v67[2] = __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke;
  v67[3] = &unk_278FECF30;
  v67[4] = &v74;
  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v67];
  v17 = v16;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209;
  v66[3] = &unk_278FED448;
  if (writableCopy)
  {
    v18 = 2;
  }

  else
  {
    v18 = 0;
  }

  v66[4] = &v68;
  v66[5] = &v74;
  [v16 openDevice:nameCopy devicePath:nameCopy flags:v18 auditToken:tokenCopy replyHandler:v66];
  v19 = v69[5];
  if (!v19 || (v19 = [v19 fileDescriptor], (v19 & 0x80000000) != 0))
  {
    v22 = fskit_std_log(v19);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v42 = v75[5];
      notification = 136315650;
      v81 = "+[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:]";
      v82 = 2112;
      v83 = nameCopy;
      v84 = 2112;
      v85 = v42;
      _os_log_impl(&dword_24A929000, v22, OS_LOG_TYPE_INFO, "%s: failed to open device %@, %@", &notification, 0x20u);
    }
  }

  else
  {
    v20 = MEMORY[0x277CCACA8];
    bSDName = [v69[5] BSDName];
    v22 = [v20 stringWithFormat:@"com.apple.fskit.iokit.queue.%@.%d", bSDName, objc_msgSend(v69[5], "fileDescriptor")];

    v23 = v22;
    v24 = dispatch_queue_create([v22 UTF8String], 0);
    [v69[5] setIoKitQueue:v24];

    ioKitQueue = [v69[5] ioKitQueue];

    if (ioKitQueue)
    {
      v27 = IONotificationPortCreate(*MEMORY[0x277CD2898]);
      v28 = fskit_std_log(v27);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
      }

      ioKitQueue2 = [v69[5] ioKitQueue];
      IONotificationPortSetDispatchQueue(v27, ioKitQueue2);

      [v69[5] setNotifyPort:v27];
      v30 = nameCopy;
      uTF8String = [nameCopy UTF8String];
      v32 = *MEMORY[0x277CD28A0];
      v33 = IOBSDNameMatching(*MEMORY[0x277CD28A0], 0, uTF8String);
      MatchingService = IOServiceGetMatchingService(v32, v33);
      v35 = MatchingService;
      notification = 0;
      if (MatchingService)
      {
        notifyPort = [v69[5] notifyPort];
        v37 = IOServiceAddInterestNotification(notifyPort, v35, "IOGeneralInterest", deviceNotificationCallback, v69[5], &notification);
        v38 = IOObjectRelease(v35);
        if (!v37)
        {
          v49 = fskit_std_log([v69[5] setNotification:notification]);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
          {
            [(FSBlockDeviceResource(Project) *)v49 openWithBSDName:v59 writable:v60 auditToken:v61 replyHandler:v62, v63, v64, v65];
          }

          goto LABEL_25;
        }

        v39 = fskit_std_log(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
        }

        [v69[5] terminate];
        v40 = v69[5];
        v69[5] = 0;

        v41 = fs_errorForMachError(v37);
      }

      else
      {
        v47 = fskit_std_log(MatchingService);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
        }

        [v69[5] terminate];
        v48 = v69[5];
        v69[5] = 0;

        v41 = fs_errorForPOSIXError(2);
      }

      v49 = v75[5];
      v75[5] = v41;
LABEL_25:

      goto LABEL_26;
    }

    v43 = fskit_std_log(v26);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      +[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:];
    }

    [v69[5] terminate];
    v44 = v69[5];
    v69[5] = 0;

    v45 = fs_errorForPOSIXError(12);
    v46 = v75[5];
    v75[5] = v45;
  }

LABEL_26:

  [v14 invalidate];
  v51 = fskit_std_log(v50);
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
  {
    [(FSBlockDeviceResource(Project) *)v51 openWithBSDName:v52 writable:v53 auditToken:v54 replyHandler:v55, v56, v57, v58];
  }

  handlerCopy[2](handlerCopy, v69[5], v75[5]);
  _Block_object_dispose(&v68, 8);

  _Block_object_dispose(&v74, 8);
}

void __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fskit_std_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __31__FSBlockDeviceResource_revoke__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  v11 = *(*(a1 + 32) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
}

void __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v10 = fskit_std_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209_cold_1(v10, v11, v12, v13, v14, v15, v16, v17);
    }
  }

  else
  {
    v18 = fskit_std_log(v7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 136315394;
      v22 = "+[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:]_block_invoke";
      v23 = 2112;
      v24 = v8;
      _os_log_impl(&dword_24A929000, v18, OS_LOG_TYPE_DEFAULT, "%s: Open device returned error %@", &v21, 0x16u);
    }

    v19 = *(*(a1 + 40) + 8);
    v20 = v8;
    v10 = *(v19 + 40);
    *(v19 + 40) = v20;
  }
}

- (id)startUsingResource:(id)resource
{
  resourceCopy = resource;
  v6 = resourceCopy;
  if (self->_usingResourcePurpose)
  {
    v7 = fskit_std_log(resourceCopy);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [FSBlockDeviceResource(Project) startUsingResource:];
    }

    v8 = 16;
LABEL_16:
    v18 = fs_errorForPOSIXError(v8);
    goto LABEL_17;
  }

  defaultClient = [MEMORY[0x277D23DB8] defaultClient];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v19 = fskit_std_log(v11);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource(Project) startUsingResource:];
    }

    v8 = 22;
    goto LABEL_16;
  }

  defaultClient2 = [MEMORY[0x277D23DB8] defaultClient];
  v13 = defaultClient2;
  if (self->_writable)
  {
    v14 = 2;
  }

  else
  {
    v14 = 0;
  }

  v15 = [defaultClient2 openFileDescriptorForKernel:self->_fileDescriptor flags:v14];
  if (v15)
  {
    v16 = v15;
    v17 = fskit_std_log(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource(Project) startUsingResource:];
    }

    v18 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v16 userInfo:0];
  }

  else
  {
    objc_storeStrong(&self->_usingResourcePurpose, resource);
    v22 = fskit_std_log(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [FSBlockDeviceResource(Project) startUsingResource:?];
    }

    v18 = 0;
  }

LABEL_17:

  return v18;
}

- (id)stopUsingResource:(id)resource
{
  resourceCopy = resource;
  usingResourcePurpose = self->_usingResourcePurpose;
  if (usingResourcePurpose)
  {
    usingResourcePurpose = [(NSString *)usingResourcePurpose length];
    if (usingResourcePurpose)
    {
      if (-[NSString isEqualToString:](self->_usingResourcePurpose, "isEqualToString:", resourceCopy) || (v6 = [resourceCopy isEqualToString:@"serviceTerminated"], (v6 & 1) != 0))
      {
        defaultClient = [MEMORY[0x277D23DB8] defaultClient];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          defaultClient2 = [MEMORY[0x277D23DB8] defaultClient];
          v11 = [defaultClient2 closeFileDescriptorForKernel:self->_fileDescriptor];
          v12 = v11;
          v13 = fskit_std_log(v11);
          v14 = v13;
          if (v12)
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              [FSBlockDeviceResource(Project) stopUsingResource:];
            }

            v15 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:v12 userInfo:0];
          }

          else
          {
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              [FSBlockDeviceResource(Project) stopUsingResource:?];
            }

            v15 = 0;
          }

          goto LABEL_24;
        }

        v24 = fskit_std_log(v9);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [FSBlockDeviceResource(Project) stopUsingResource:];
        }
      }

      else
      {
        v25 = fskit_std_log(v6);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          [FSBlockDeviceResource(Project) stopUsingResource:];
        }
      }

      v15 = fs_errorForPOSIXError(22);
      goto LABEL_24;
    }
  }

  v16 = fskit_std_log(usingResourcePurpose);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [(FSBlockDeviceResource(Project) *)v16 stopUsingResource:v17, v18, v19, v20, v21, v22, v23];
  }

  v15 = 0;
LABEL_24:

  return v15;
}

- (void)terminateLocked
{
  [(FSBlockDeviceResource *)self releaseNotification];
  notifyPort = self->_notifyPort;
  if (notifyPort)
  {
    IONotificationPortDestroy(notifyPort);
    self->_notifyPort = 0;
  }

  if (!self->_terminated)
  {
    fileDescriptor = self->_fileDescriptor;
    if ((fileDescriptor & 0x80000000) == 0)
    {
      close(fileDescriptor);
      self->_fileDescriptor = -1;
    }

    self->_terminated = 1;
  }
}

+ (id)proxyResourceForBSDName:(id)name isWritable:(BOOL)writable
{
  writableCopy = writable;
  v6 = [FSBlockDeviceResource getDeviceName:name];
  if (v6)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/r%@", v6];
    v8 = [self resourceWithBSDName:v6 devicePath:v7 fileDescriptor:0xFFFFFFFFLL writable:writableCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)readFirstSectorAndLog
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = malloc_type_malloc(self->_blockSize, 0xBE4DBB4CuLL);
  blockSize = self->_blockSize;
  v15 = 0;
  v5 = [(FSBlockDeviceResource *)self readInto:v3 startingAt:0 length:blockSize error:&v15];
  v6 = v15;
  v7 = fskit_std_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    fileDescriptor = self->_fileDescriptor;
    *buf = 67109634;
    v17 = fileDescriptor;
    v18 = 2048;
    *v19 = v5;
    *&v19[8] = 2112;
    v20 = v6;
    _os_log_impl(&dword_24A929000, v7, OS_LOG_TYPE_DEFAULT, "readFirstSectorAndLog reading from %d got rv %zu error %@", buf, 0x1Cu);
  }

  if (v5 >= 5)
  {
    v10 = fskit_std_log(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *v3;
      v12 = v3[1];
      v13 = v3[2];
      v14 = v3[3];
      *buf = 67109888;
      v17 = v11;
      v18 = 1024;
      *v19 = v12;
      *&v19[4] = 1024;
      *&v19[6] = v13;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v14;
      _os_log_impl(&dword_24A929000, v10, OS_LOG_TYPE_DEFAULT, "Successful read, first characters %02x%02x:%02x%02x", buf, 0x1Au);
    }
  }

  if (v3)
  {
    free(v3);
  }
}

- (BOOL)metadataReadInto:(void *)into startingAt:(int64_t)at length:(unint64_t)length readAheadExtents:(id *)extents readAheadCount:(int64_t)count error:(id *)error
{
  if (count)
  {
    defaultClient = [MEMORY[0x277D23DB8] defaultClient];
    v16 = [defaultClient readMetaWithRA:self->_fileDescriptor buffer:into offset:at length:length raList:extents raListCount:count];
    v17 = v16 == 0;
    if (v16)
    {
      v18 = fs_errorForPOSIXError(5);
      if (error)
      {
        v18 = v18;
        *error = v18;
      }
    }

    else if (error)
    {
      *error = 0;
    }
  }

  else
  {
    v19 = fskit_std_log(self);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [FSBlockDeviceResource(Private) metadataReadInto:startingAt:length:readAheadExtents:readAheadCount:error:];
    }

    v20 = fs_errorForPOSIXError(22);
    if (error)
    {
      v20 = v20;
      *error = v20;
    }

    return 0;
  }

  return v17;
}

- (BOOL)terminated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  terminated = selfCopy->_terminated;
  objc_sync_exit(selfCopy);

  return terminated;
}

- (void)terminate
{
  if (!self->_terminated)
  {
    ioKitQueue = self->_ioKitQueue;
    if (ioKitQueue)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __43__FSBlockDeviceResource_Private__terminate__block_invoke;
      block[3] = &unk_278FED278;
      block[4] = self;
      dispatch_sync(ioKitQueue, block);
    }

    else
    {
      obj = self;
      objc_sync_enter(obj);
      [(FSBlockDeviceResource *)obj terminateLocked];
      fsExecQueue = obj->_fsExecQueue;
      obj->_fsExecQueue = 0;

      objc_sync_exit(obj);
    }
  }
}

void __43__FSBlockDeviceResource_Private__terminate__block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) terminateLocked];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;

  objc_sync_exit(obj);
}

+ (void)getDeviceName:(os_log_t)log .cold.2(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "Got device path %@ for fd: %d", &v3, 0x12u);
}

+ (void)getDeviceName:(int)a1 .cold.3(int a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = __error();
  v5 = strerror(*v4);
  v6[0] = 67109378;
  v6[1] = a1;
  v7 = 2080;
  v8 = v5;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "Unable to get device path from fd %d: %s", v6, 0x12u);
}

void __31__FSBlockDeviceResource_revoke__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a2, a3, "%@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __31__FSBlockDeviceResource_revoke__block_invoke_77_cold_1(void *a1)
{
  [a1 code];
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)asynchronousMetadataFlushWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)metadataFlushWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)metadataClear:withDelayedWrites:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

- (void)metadataPurge:error:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void __83__FSBlockDeviceResource_Project__openWithBSDName_writable_auditToken_replyHandler___block_invoke_209_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[FSBlockDeviceResource(Project) openWithBSDName:writable:auditToken:replyHandler:]_block_invoke";
  OUTLINED_FUNCTION_3_0(&dword_24A929000, a1, a3, "%s: created a block device resource sucessfully", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end