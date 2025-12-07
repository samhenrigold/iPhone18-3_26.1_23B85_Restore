@interface BMFrameStore
+ (BOOL)writeEmptyFrameStoreWithFileHandle:(id)handle fileSize:(unint64_t)size datastoreVersion:(unint64_t)version;
+ (BOOL)writeEmptySegmentHeaderWithFileHandleV1:(id)v1 segmentHeaderSize:(unint64_t *)size;
+ (BOOL)writeEmptySegmentHeaderWithFileHandleV2:(id)v2 segmentHeaderSize:(unint64_t *)size;
+ (unint64_t)maxEventsPerFrameStoreVersion:(unint64_t)version averageEventSize:(unint64_t)size segmentSize:(unint64_t)segmentSize;
+ (unsigned)getSegmentVersion:(id)version config:(id)config stream:(id)stream;
- ($327AC5C1B3A50B4987650045CBFB5127)offsetTablePtrFromFrameNumberV2:(unsigned int)v2;
- (BMFrameStore)initWithFileHandle:(id)handle permission:(unint64_t)permission datastoreVersion:(unint64_t)version;
- (BMFrameStore)initWithFileHandleV1:(id)v1 permission:(unint64_t)permission;
- (BMFrameStore)initWithFileHandleV2:(id)v2 permission:(unint64_t)permission;
- (BOOL)getSegmentHeader:(id *)header fromFileV1:(id)v1 fileSize:(unint64_t *)size;
- (BOOL)getSegmentHeader:(id *)header fromFileV2:(id)v2 fileSize:(unint64_t *)size;
- (BOOL)isCheckSumValidAtOffsetV1:(unint64_t)v1;
- (BOOL)isCheckSumValidAtOffsetV2:(unint64_t)v2 frameNumber:(int)number;
- (BOOL)isValidFrameV1:(void *)v1 expectedState:(unsigned int)state copyOfData:(id *)data frameStatus:(id)status validations:(BOOL)validations enumerationOptions:(unint64_t)options errorCode:(int *)code;
- (BOOL)isValidFrameV2:(void *)v2 currentFrame:(unsigned int)frame expectedState:(unsigned int)state copyOfData:(id *)data frameState:(unsigned int)frameState frameSize:(unsigned int)size validations:(BOOL)validations enumerationOptions:(unint64_t)self0 errorCode:(int *)self1;
- (BOOL)offsetIsStartOfFrameStore:(unint64_t)store;
- (BOOL)validOffsetTableEntry:(id)entry frameNumber:(int)number;
- (BOOL)validOffsetTableEntryAtFrame:(int)frame;
- (NSString)segmentName;
- (NSString)segmentPath;
- (double)creationTimeOfFrameV2:(unsigned int)v2;
- (id)_printablePath;
- (id)_printablePathV2;
- (id)frameWithOffset:(unint64_t)offset expectedState:(unsigned int)state;
- (id)frameWithOffsetV1:(unint64_t)v1 expectedState:(unsigned int)state;
- (id)frameWithOffsetV2:(unint64_t)v2 expectedState:(unsigned int)state;
- (int)eraseFrameAtOffsetTableV2:(id *)v2;
- (int)findValidOffsetTableEntryToReplaceMidFrame:(int)frame bottomFrame:(int)bottomFrame topFrame:(int)topFrame reverse:(BOOL)reverse;
- (int)firstFrameNumberForTimestampV2:(double)v2 reverse:(BOOL)reverse;
- (int)frameCount;
- (int)frameCountFromStartTime:(double)time endTime:(double)endTime;
- (int)frameCountFromStartTimeV2:(double)v2 endTime:(double)time;
- (int)frameCountV2;
- (int)frameNumberFromFrameOffsetV2:(unsigned int)v2;
- (int)frameNumberFromOffsetToOffsetTableEntryV2:(unsigned int)v2;
- (int64_t)getReverseOffsetIndex:(unint64_t)index;
- (uint64_t)atomicReadSixteenByteValueAtAddress:;
- (uint64_t)sizeToNextWord:(uint64_t)result;
- (uint64_t)updateFrameStoreIndex;
- (unsigned)appendFrameHeaderV1:(id *)v1 offset:(unint64_t *)offset;
- (unsigned)atomicReadTotalFramesV2;
- (unsigned)bytesUsed;
- (unsigned)bytesUsedV1;
- (unsigned)bytesUsedV2;
- (unsigned)checkBoundsLength:(unint64_t)length;
- (unsigned)countFrameStateInOffsetTable:(unsigned int)table startingFrame:(int)frame endingFrame:(int)endingFrame;
- (unsigned)determineFrameNumberToBeWritten:(unsigned int *)written;
- (unsigned)frameOffsetFromOffsetTableV2:(id *)v2;
- (unsigned)offsetOfFrameV2:(unsigned int)v2;
- (unsigned)offsetTableOffsetFromFrameNumberV2:(unsigned int)v2;
- (unsigned)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:(double)timestamp state:(unsigned int)state length:(unsigned int)length outFrameNumber:(unsigned int *)number;
- (unsigned)sizeOfFrameV2:(unsigned int)v2;
- (unsigned)stateOfFrameV2:(unsigned int)v2;
- (unsigned)validateOrUpdateTimestamp:(double *)timestamp frameNumberToBeWritten:(unsigned int)written;
- (unsigned)writeFrameForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset;
- (unsigned)writeFrameV1ForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset;
- (unsigned)writeFrameV2ForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset;
- (void)addToValueAtOffset:(unsigned int)offset increment:(unsigned int)increment;
- (void)dealloc;
- (void)enumerateWithOptions:(unint64_t)options fromOffset:(unint64_t)offset usingBlock:(id)block;
- (void)enumerateWithOptionsV1:(unint64_t)v1 fromOffset:(unint64_t)offset usingBlock:(id)block;
- (void)enumerateWithOptionsV2:(unint64_t)v2 fromOffset:(unint64_t)offset usingBlock:(id)block;
- (void)markFrameAsRemoved:(id)removed;
- (void)markFrameAsRemovedV1:(id)v1;
- (void)markFrameAsRemovedV2:(id)v2;
- (void)setBackingFile:(id)file;
- (void)sync;
- (void)updateFrameStoreIndex;
- (void)updateHeader;
- (void)updateHighestDeletedFrame:(id)frame;
- (void)updateHighestDeletedFrameV2:(id)v2 addToDeletedFrameCount:(unsigned int)count;
- (void)updateToMaxOfValueAtOffset:(unsigned int)offset newValue:(int)value;
@end

@implementation BMFrameStore

- (NSString)segmentName
{
  attributes = [(BMFileHandle *)self->_backingFile attributes];
  filename = [attributes filename];

  return filename;
}

- (unsigned)atomicReadTotalFramesV2
{
  v15 = *MEMORY[0x1E69E9840];
  header = [(BMFrameStore *)self header];
  start = [header start];

  if (*(start + 16) == 10)
  {
    return atomic_load((start + 4));
  }

  v6 = __biome_log_for_category();
  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__BMFrameStore_V2__atomicReadTotalFramesV2__block_invoke;
  block[3] = &unk_1E8338B28;
  block[4] = &buf;
  if (atomicReadTotalFramesV2_onceToken != -1)
  {
    dispatch_once(&atomicReadTotalFramesV2_onceToken, block);
  }

  v7 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = MEMORY[0x1E698E9C8];
    segmentPath = [(BMFrameStore *)self segmentPath];
    v10 = [v8 privacyPathname:segmentPath];
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_1C928A000, v6, v7, "Seeking totalFrames but not a V2 frameStore: %{public}@", &buf, 0xCu);
  }

  return 0;
}

- (NSString)segmentPath
{
  attributes = [(BMFileHandle *)self->_backingFile attributes];
  path = [attributes path];

  return path;
}

- (void)dealloc
{
  if (self->_permission)
  {
    [(BMFrameStore *)self sync];
  }

  v3.receiver = self;
  v3.super_class = BMFrameStore;
  [(BMFrameStore *)&v3 dealloc];
}

- (int)frameCount
{
  if ([(BMFrameStore *)self datastoreVersion]== 9)
  {
    v6 = 0;
    v7 = &v6;
    v8 = 0x2020000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __26__BMFrameStore_frameCount__block_invoke;
    v5[3] = &unk_1E8338C10;
    v5[4] = &v6;
    [(BMFrameStore *)self enumerateFromOffset:0 withCallback:v5];
    v3 = *(v7 + 6);
    _Block_object_dispose(&v6, 8);
    return v3;
  }

  if ([(BMFrameStore *)self datastoreVersion]!= 10)
  {
    return 0;
  }

  return [(BMFrameStore *)self frameCountV2];
}

- (int)frameCountV2
{
  start = [(BMFrameStore *)self start];
  v3 = atomic_load(start - 7);
  v4 = atomic_load(start - 2);
  return v3 - v4;
}

- (void)sync
{
  obj = self;
  objc_sync_enter(obj);
  [(BMMemoryMapping *)obj->_header sync];
  [(BMMemoryMapping *)obj->_frames sync];
  objc_sync_exit(obj);
}

+ (unsigned)getSegmentVersion:(id)version config:(id)config stream:(id)stream
{
  v24 = *MEMORY[0x1E69E9840];
  configCopy = config;
  versionCopy = version;
  v9 = [configCopy resolvedPathWithStreamIdentifier:stream];
  if (([MEMORY[0x1E698E9C8] isTestPathOverridden] & 1) != 0 || (objc_msgSend(MEMORY[0x1E698E9D8], "current"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "reliesOnDirectAccessForDomain:", objc_msgSend(configCopy, "domain")), v10, v11))
  {
    v12 = [MEMORY[0x1E698E9B8] fileManagerWithDirectAccessToDirectory:v9 cachingOptions:0];
  }

  else
  {
    v12 = [MEMORY[0x1E698E9B8] fileManagerWithMediatedAccessToDirectory:v9 useCase:*MEMORY[0x1E698E958] domain:0 user:geteuid()];
  }

  v13 = v12;
  v14 = [[BMSegmentManager alloc] initWithDirectory:v9 fileManager:v12 permission:0 config:configCopy];
  path = [(BMSegmentManager *)v14 path];
  v16 = [path stringByAppendingPathComponent:versionCopy];

  v17 = [v13 fileHandleForFileAtPath:v16 flags:0 protection:objc_msgSend(MEMORY[0x1E698E998] error:{"biomeProtectionClassToOSProtectionClass:", objc_msgSend(configCopy, "protectionClass")), 0}];

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  if (pread([v17 fd], &v20, 0x38uLL, 0) < 0)
  {
    v18 = -1;
  }

  else
  {
    v18 = v21;
  }

  return v18;
}

- (BOOL)getSegmentHeader:(id *)header fromFileV1:(id)v1 fileSize:(unint64_t *)size
{
  v20 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  memset(&v15.st_size, 0, 48);
  if (fstat([v1Copy fd], &v15))
  {
    __error();
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:fromFileV1:fileSize:];
    }

LABEL_4:

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if (!v15.st_size)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v15.st_size <= 0x37uLL)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:? fileSize:?];
    }

LABEL_23:

    goto LABEL_24;
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  __buf = 0u;
  v10 = pread([v1Copy fd], &__buf, 0x38uLL, 0);
  if (v10 < 0)
  {
    __error();
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:fromFileV1:fileSize:];
    }

    goto LABEL_4;
  }

  if (v10 != 56)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v17 == 9)
  {
    v11 = 52;
  }

  else
  {
    v11 = 0;
  }

  if (*(&__buf + v11) != 1111967059)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v1Copy fromFileV1:v9 fileSize:?];
    }

    goto LABEL_23;
  }

  if (size)
  {
    *size = v15.st_size;
  }

  if (header)
  {
    v14 = v17;
    *header->var0.var0 = __buf;
    *&header->var2.var3 = v14;
    *(&header->var2 + 2) = v18;
    *(&header->var2 + 6) = v19;
  }

  v12 = 1;
LABEL_25:

  return v12;
}

+ (BOOL)writeEmptyFrameStoreWithFileHandle:(id)handle fileSize:(unint64_t)size datastoreVersion:(unint64_t)version
{
  v32 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  memset(&v29, 0, sizeof(v29));
  if (!fstat([handleCopy fd], &v29))
  {
    if (v29.st_size)
    {
      v9 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v31 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __77__BMFrameStore_writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken != -1)
      {
        dispatch_once(&writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken, block);
      }

      v10 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = MEMORY[0x1E698E9C8];
        attributes = [handleCopy attributes];
        path = [attributes path];
        v14 = [v11 privacyPathname:path];
        *buf = 138543362;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C928A000, v9, v10, "Attempted to write a non-empty file %{public}@ with an empty frame store", buf, 0xCu);
      }
    }

    else
    {
      if (version - 11 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v8 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v31 = 16;
        v23 = MEMORY[0x1E69E9820];
        v24 = 3221225472;
        v25 = __77__BMFrameStore_writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion___block_invoke_32;
        v26 = &unk_1E8338B28;
        v27 = buf;
        if (writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken_31 != -1)
        {
          dispatch_once(&writeEmptyFrameStoreWithFileHandle_fileSize_datastoreVersion__onceToken_31, &v23);
        }

        v17 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v8, v17))
        {
          v18 = MEMORY[0x1E698E9C8];
          attributes2 = [handleCopy attributes];
          path2 = [attributes2 path];
          v21 = [v18 privacyPathname:path2];
          *buf = 138543618;
          *&buf[4] = v21;
          *&buf[12] = 2048;
          *&buf[14] = version;
          _os_log_impl(&dword_1C928A000, v8, v17, "Segment version of %{public}@ doesn't match expected versions: %lu.", buf, 0x16u);
        }

        goto LABEL_4;
      }

      *buf = -1;
      v22 = objc_opt_class();
      if (version == 9)
      {
        if (([v22 writeEmptySegmentHeaderWithFileHandleV1:handleCopy segmentHeaderSize:buf] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (![v22 writeEmptySegmentHeaderWithFileHandleV2:handleCopy segmentHeaderSize:buf])
      {
        goto LABEL_11;
      }

      if (*buf <= size)
      {
        if (!ftruncate([handleCopy fd], size))
        {
          v15 = 1;
          goto LABEL_12;
        }

        __error();
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          +[BMFrameStore writeEmptyFrameStoreWithFileHandle:fileSize:datastoreVersion:];
        }
      }

      else
      {
        v9 = __biome_log_for_category();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          [BMFrameStore writeEmptyFrameStoreWithFileHandle:handleCopy fileSize:? datastoreVersion:?];
        }
      }
    }

    goto LABEL_11;
  }

  __error();
  v8 = __biome_log_for_category();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [BMFrameStore getSegmentHeader:fromFileV1:fileSize:];
  }

LABEL_4:

LABEL_11:
  v15 = 0;
LABEL_12:

  return v15;
}

+ (BOOL)writeEmptySegmentHeaderWithFileHandleV1:(id)v1 segmentHeaderSize:(unint64_t *)size
{
  v24 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  v6 = v1Copy;
  if (size)
  {
    *size = 56;
  }

  attributes = [v1Copy attributes];
  filename = [attributes filename];
  v9 = filename;
  memset(v22, 0, sizeof(v22));
  v23 = 1111967059;
  v20[0] = 56;
  v20[1] = 0;
  v21 = 9;
  if (filename)
  {
    v10 = strlen([filename UTF8String]);
    if (v10 >= 0x20)
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[BMFrameStore writeEmptySegmentHeaderWithFileHandleV1:segmentHeaderSize:];
      }

      v10 = 31;
    }

    __memcpy_chk();
    bzero(v22 + v10, 32 - v10);
  }

  else
  {
    v12 = __biome_log_for_category();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C928A000, v12, OS_LOG_TYPE_INFO, "No segment name provided for the segment header", buf, 2u);
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:56];
  v18 = 0;
  v14 = [v6 overwriteWithData:v13 error:&v18];
  v15 = v18;
  if (v15)
  {
    v14 = 0;
  }

  if ((v14 & 1) == 0)
  {
    v16 = __biome_log_for_category();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeEmptySegmentHeaderWithFileHandleV1:v6 segmentHeaderSize:?];
    }
  }

  return v14;
}

- (BMFrameStore)initWithFileHandle:(id)handle permission:(unint64_t)permission datastoreVersion:(unint64_t)version
{
  v21 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  if (version == 10)
  {
    v9 = [(BMFrameStore *)self initWithFileHandleV2:handleCopy permission:permission];
    goto LABEL_5;
  }

  if (version == 9)
  {
    v9 = [(BMFrameStore *)self initWithFileHandleV1:handleCopy permission:permission];
LABEL_5:
    self = v9;
    selfCopy = self;
    goto LABEL_11;
  }

  v11 = __biome_log_for_category();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v20 = 16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__BMFrameStore_initWithFileHandle_permission_datastoreVersion___block_invoke;
  block[3] = &unk_1E8338B28;
  block[4] = buf;
  if (initWithFileHandle_permission_datastoreVersion__onceToken != -1)
  {
    dispatch_once(&initWithFileHandle_permission_datastoreVersion__onceToken, block);
  }

  v12 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if (os_log_type_enabled(v11, v12))
  {
    v13 = MEMORY[0x1E698E9C8];
    attributes = [handleCopy attributes];
    path = [attributes path];
    v16 = [v13 privacyPathname:path];
    *buf = 138543618;
    *&buf[4] = v16;
    *&buf[12] = 2048;
    *&buf[14] = version;
    _os_log_impl(&dword_1C928A000, v11, v12, "Segment version of %{public}@ doesn't match expected versions: %lu.", buf, 0x16u);
  }

  selfCopy = 0;
LABEL_11:

  return selfCopy;
}

- (BMFrameStore)initWithFileHandleV1:(id)v1 permission:(unint64_t)permission
{
  v52 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  v45.receiver = self;
  v45.super_class = BMFrameStore;
  v7 = [(BMFrameStore *)&v45 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_51;
  }

  [(BMFrameStore *)v7 setBackingFile:v1Copy];
  *(v8 + 28) = 9;
  v44 = 0;
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v48 = 0u;
  if (([v8 getSegmentHeader:&v48 fromFileV1:v1Copy fileSize:&v44] & 1) == 0)
  {
    v11 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v47) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__BMFrameStore_initWithFileHandleV1_permission___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (initWithFileHandleV1_permission__onceToken != -1)
    {
      dispatch_once(&initWithFileHandleV1_permission__onceToken, block);
    }

    v12 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_18;
    }

    v13 = MEMORY[0x1E698E9C8];
    attributes = [v1Copy attributes];
    path = [attributes path];
    v16 = [v13 privacyPathname:path];
    *buf = 138543362;
    *&buf[4] = v16;
    v17 = "Cannot create frame store from segment file: %{public}@";
    v18 = v11;
    v19 = v12;
    v20 = 12;
    goto LABEL_17;
  }

  v9 = v49;
  *(v8 + 28) = v49;
  if (v9 != 9)
  {
    if (v9 == 10)
    {
      v10 = [v8 initWithFileHandleV2:v1Copy permission:permission];
LABEL_52:
      v8 = v10;
      v29 = v10;
      goto LABEL_53;
    }

    v11 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v47) = 16;
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __48__BMFrameStore_initWithFileHandleV1_permission___block_invoke_35;
    v42[3] = &unk_1E8338B28;
    v42[4] = buf;
    if (initWithFileHandleV1_permission__onceToken_34 != -1)
    {
      dispatch_once(&initWithFileHandleV1_permission__onceToken_34, v42);
    }

    v26 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v11, v26))
    {
      goto LABEL_18;
    }

    v27 = MEMORY[0x1E698E9C8];
    attributes = [*(v8 + 64) attributes];
    path = [attributes path];
    v16 = [v27 privacyPathname:path];
    v28 = *(v8 + 28);
    *buf = 138543874;
    *&buf[4] = v16;
    *&buf[12] = 1026;
    *&buf[14] = v49;
    *&buf[18] = 1026;
    *&buf[20] = v28;
    v17 = "Segment version of %{public}@ doesn't match expected versions. Header set to %{public}d, preferred %{public}d.";
    v18 = v11;
    v19 = v26;
    v20 = 24;
LABEL_17:
    _os_log_impl(&dword_1C928A000, v18, v19, v17, buf, v20);

    goto LABEL_18;
  }

  v21 = v44;
  if (v48 <= v44)
  {
    if (permission == 1 && v44 - 1 < v48)
    {
      v11 = __biome_log_for_category();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_18;
      }

      v30 = MEMORY[0x1E698E9C8];
      attributes2 = [*(v8 + 64) attributes];
      path2 = [attributes2 path];
      v25 = [v30 privacyPathname:path2];
      *buf = 138543874;
      *&buf[4] = v25;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      *&buf[22] = 2048;
      v47 = v44;
      _os_log_impl(&dword_1C928A000, v11, OS_LOG_TYPE_INFO, "Attempted to open %{public}@ for writing but the file is already full, byteUsed:%llu, fileSize:%zu", buf, 0x20u);
LABEL_24:

      goto LABEL_18;
    }

    if (!(v48 | permission & 0xFFFFFFFFFFFFFFFDLL))
    {
      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:v8 permission:?];
      }

      goto LABEL_18;
    }

    *(v8 + 40) = v44;
    *(v8 + 72) = permission;
    v31 = memoryMappingsForPermissionV1(permission, &v48, v21);
    lastObject = [v31 lastObject];
    v33 = *(v8 + 56);
    *(v8 + 56) = lastObject;

    if ([v31 count] >= 2)
    {
      firstObject = [v31 firstObject];
      v35 = *(v8 + 48);
      *(v8 + 48) = firstObject;
    }

    v36 = *(v8 + 48);
    if (permission && !v36)
    {
      v37 = __biome_log_for_category();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }

      v36 = *(v8 + 48);
    }

    if (v36 && ([v36 mapWithFileHandle:*(v8 + 64) fileSize:v44] & 1) == 0)
    {
      v38 = __biome_log_for_category();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }
    }

    if (([*(v8 + 56) mapWithFileHandle:*(v8 + 64) fileSize:v44] & 1) == 0)
    {
      v39 = __biome_log_for_category();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }

      goto LABEL_19;
    }

    if (*(v8 + 28) == 9)
    {
      *(v8 + 80) = *(&v48 + 1);
    }

    if (![BMFrameStore expectedTimestamp:?])
    {
      v40 = __biome_log_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore initWithFileHandleV1:permission:];
      }

      *(v8 + 80) = CFAbsoluteTimeGetCurrent();
    }

LABEL_51:
    v10 = v8;
    goto LABEL_52;
  }

  v11 = __biome_log_for_category();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v22 = MEMORY[0x1E698E9C8];
    attributes2 = [*(v8 + 64) attributes];
    path2 = [attributes2 path];
    v25 = [v22 privacyPathname:path2];
    *buf = 138543874;
    *&buf[4] = v25;
    *&buf[12] = 2050;
    *&buf[14] = v48;
    *&buf[22] = 2050;
    v47 = v44;
    _os_log_error_impl(&dword_1C928A000, v11, OS_LOG_TYPE_ERROR, "Segment header in %{public}@ says file size is %{public}llu but that is larger than the actual file size(%{public}lu).", buf, 0x20u);
    goto LABEL_24;
  }

LABEL_18:

LABEL_19:
  v29 = 0;
LABEL_53:

  return v29;
}

- (void)setBackingFile:(id)file
{
  fileCopy = file;
  objc_storeStrong(&self->_backingFile, file);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  remoteDevices = [MEMORY[0x1E698EA08] remoteDevices];
  v7 = [v5 initWithFormat:@"/%@/", remoteDevices];

  segmentPath = [(BMFrameStore *)self segmentPath];
  v9 = [segmentPath containsString:v7];

  if (v9)
  {
    self->_isRemoteSegment = 1;
  }

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  tombstones = [MEMORY[0x1E698EA08] tombstones];
  v12 = [v10 initWithFormat:@"/%@/", tombstones];

  segmentPath2 = [(BMFrameStore *)self segmentPath];
  v14 = [segmentPath2 containsString:v12];

  if (v14)
  {
    self->_isTombstoneSegment = 1;
  }
}

- (id)_printablePath
{
  cachedPrintablePath = self->_cachedPrintablePath;
  if (!cachedPrintablePath)
  {
    v4 = MEMORY[0x1E698E9C8];
    attributes = [(BMFileHandle *)self->_backingFile attributes];
    path = [attributes path];
    v7 = [v4 privacyPathname:path];
    v8 = self->_cachedPrintablePath;
    self->_cachedPrintablePath = v7;

    cachedPrintablePath = self->_cachedPrintablePath;
  }

  return cachedPrintablePath;
}

- (BOOL)isValidFrameV1:(void *)v1 expectedState:(unsigned int)state copyOfData:(id *)data frameStatus:(id)status validations:(BOOL)validations enumerationOptions:(unint64_t)options errorCode:(int *)code
{
  optionsCopy = options;
  selfCopy3 = self;
  v63[1] = *MEMORY[0x1E69E9840];
  if ((v1 & 7) != 0)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isValidFrame: Frame is not 8-byte aligned:%d", v1];
    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v62 = *MEMORY[0x1E696A578];
    v63[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v63 forKeys:&v62 count:1];
    v14 = [v12 initWithDomain:@"com.apple.Biome.BMFramestore" code:1 userInfo:v13];

    p_frames = &selfCopy3->_frames;
    [(BMMemoryMapping *)selfCopy3->_frames end];
    goto LABEL_19;
  }

  validationsCopy = validations;
  p_frames = &self->_frames;
  v20 = [(BMMemoryMapping *)self->_frames end]- (v1 + 32);
  if (v20 < 0 || status.var0 > v20)
  {
    v23 = (v1 - [(BMMemoryMapping *)*p_frames start]);
    v24 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isValidFrame: Frame size:%d runs past the remaining free space in the segment:%td, frame intended to start at offset:%td", status, v20, v23];
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v60 = *MEMORY[0x1E696A578];
    v61 = v24;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v61 forKeys:&v60 count:1];
    v26 = selfCopy3 = self;
    v14 = [v25 initWithDomain:@"com.apple.Biome.BMFramestore" code:2 userInfo:v26];

    goto LABEL_19;
  }

  if (validationsCopy && status.var1 != state)
  {
    v21 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (state >= 6)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", state];
      v22 = selfCopy3 = self;
    }

    else
    {
      v22 = off_1E8338C90[state];
      selfCopy3 = self;
    }

    if (*&status >> 33 >= 3)
    {
      v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", HIDWORD(*&status)];
    }

    else
    {
      v33 = off_1E8338C90[HIDWORD(*&status)];
    }

    v34 = [v21 initWithFormat:@"isValidFrame: Unexpected frame state. Expected: %@, found: %@", v22, v33];

    v35 = objc_alloc(MEMORY[0x1E696ABC0]);
    v58 = *MEMORY[0x1E696A578];
    v59 = v34;
    v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v14 = [v35 initWithDomain:@"com.apple.Biome.BMFramestore" code:3 userInfo:v36];

    goto LABEL_19;
  }

  if (data)
  {
    v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v1 + 32 length:status.var0];
    v28 = *data;
    *data = v27;

    v14 = 0;
    v29 = state - 1;
    v30 = 1;
    if (v29 <= 1 && validationsCopy)
    {
      v31 = *data;
      v32 = crc32(0, [v31 bytes], status.var0);

LABEL_40:
      selfCopy3 = self;
      if (*(v1 + 6) == v32)
      {
        v14 = 0;
        goto LABEL_36;
      }

      v47 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Checksums don't match. Header: %u, Generated checksum: %u. Skipping frame.", *(v1 + 6), v32];
      v48 = objc_alloc(MEMORY[0x1E696ABC0]);
      v56 = *MEMORY[0x1E696A578];
      v57 = v47;
      v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      v14 = [v48 initWithDomain:@"com.apple.Biome.BMFramestore" code:5 userInfo:v49];

      if (data)
      {
        v50 = *data;
        *data = 0;
      }

LABEL_19:
      code = [v14 code];
      if (code)
      {
        *code = code;
      }

      if (code == 3 || code == 5)
      {
        v38 = atomic_load(v1);
        v39 = HIDWORD(v38);
        if ((optionsCopy & 1) != 0 && v39 == 3 || (optionsCopy & 2) != 0 && v39 == 2)
        {
          [(BMMemoryMapping *)*p_frames start];
          v30 = 1;
          goto LABEL_36;
        }

        v41 = v38 >> 33 == 1;
        start = [(BMMemoryMapping *)*p_frames start];
        if (v41)
        {
LABEL_35:
          v30 = 0;
          goto LABEL_36;
        }
      }

      else
      {
        start = [(BMMemoryMapping *)*p_frames start];
      }

      v42 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      LOBYTE(v55) = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __109__BMFrameStore_isValidFrameV1_expectedState_copyOfData_frameStatus_validations_enumerationOptions_errorCode___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (isValidFrameV1_expectedState_copyOfData_frameStatus_validations_enumerationOptions_errorCode__onceToken != -1)
      {
        dispatch_once(&isValidFrameV1_expectedState_copyOfData_frameStatus_validations_enumerationOptions_errorCode__onceToken, block);
      }

      v43 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v42, v43))
      {
        _printablePath = [(BMFrameStore *)selfCopy3 _printablePath];
        *buf = 138543874;
        *&buf[4] = _printablePath;
        *&buf[12] = 2048;
        *&buf[14] = v1 - start;
        *&buf[22] = 2112;
        v55 = v14;
        _os_log_impl(&dword_1C928A000, v42, v43, "isValidFrame failed, path:%{public}@, offset:%td error:%@", buf, 0x20u);
      }

      goto LABEL_35;
    }
  }

  else
  {
    v14 = 0;
    v46 = state - 1;
    v30 = 1;
    if (v46 <= 1 && validationsCopy)
    {
      v32 = crc32(0, v1 + 32, status.var0);
      goto LABEL_40;
    }
  }

LABEL_36:

  return v30;
}

- (id)frameWithOffsetV1:(unint64_t)v1 expectedState:(unsigned int)state
{
  if ((v1 & 7) != 0)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore frameWithOffsetV1:expectedState:];
    }

LABEL_10:

    v9 = 0;
    goto LABEL_11;
  }

  v6 = *&state;
  p_frames = &self->_frames;
  if ([(BMMemoryMapping *)self->_frames size]< v1)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore frameWithOffsetV1:expectedState:];
    }

    goto LABEL_10;
  }

  if ([(BMMemoryMapping *)*p_frames size]- v1 <= 0x1F)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore frameWithOffsetV1:expectedState:];
    }

    goto LABEL_10;
  }

  v11 = ([(BMMemoryMapping *)self->_frames start]+ v1);
  v12 = atomic_load(v11);
  v13 = *(v11 + 1);
  v26 = *(v11 + 1);
  v25 = 0;
  if (v6 == 3)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2 * (v6 == 2);
  }

  v9 = 0;
  if ([(BMFrameStore *)self isValidFrameV1:v11 expectedState:v6 copyOfData:&v25 frameStatus:v12 validations:1 enumerationOptions:v14 errorCode:0])
  {
    v15 = &v11[[(BMFrameStore *)self sizeToNextWord:v12]];
    v16 = [BMFrame alloc];
    attributes = [(BMFileHandle *)self->_backingFile attributes];
    path = [attributes path];
    v19 = v25;
    v20 = &v11[[(BMMemoryMapping *)self->_frames]];
    start = [(BMMemoryMapping *)self->_frames start];
    v23[0] = v12;
    *&v23[1] = v13;
    v24 = v26;
    LODWORD(v22) = HIDWORD(v12);
    v9 = [(BMFrame *)v16 initWithHeader:v23 storePath:path data:v19 framePtr:v11 offset:v20 nextOffset:v15 - start + 32 timestamp:v13 datastoreVersion:9 state:v22];
  }

LABEL_11:

  return v9;
}

- (id)frameWithOffset:(unint64_t)offset expectedState:(unsigned int)state
{
  v16 = *MEMORY[0x1E69E9840];
  datastoreVersion = self->_datastoreVersion;
  if (datastoreVersion == 10)
  {
    v6 = [(BMFrameStore *)self frameWithOffsetV2:offset expectedState:*&state];
  }

  else if (datastoreVersion == 9)
  {
    v6 = [(BMFrameStore *)self frameWithOffsetV1:offset expectedState:*&state];
  }

  else
  {
    v7 = __biome_log_for_category();
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    v15 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__BMFrameStore_frameWithOffset_expectedState___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (frameWithOffset_expectedState__onceToken != -1)
    {
      dispatch_once(&frameWithOffset_expectedState__onceToken, block);
    }

    v8 = v13[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_1C928A000, v7, v8, "[BMFrameStore frameWithOffset:expectedState:] with unexpected dataVersion:%d", buf, 8u);
    }

    v6 = 0;
  }

  return v6;
}

- (void)updateFrameStoreIndex
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion == 9)
  {
    p_framePointers = &self->_framePointers;
    framePointers = self->_framePointers;
    if (framePointers)
    {
      if ([(NSMutableOrderedSet *)framePointers count])
      {
        [BMFrameStore updateFrameStoreIndex];
        v5 = *buf;
LABEL_12:
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __37__BMFrameStore_updateFrameStoreIndex__block_invoke_65;
        v11[3] = &unk_1E8338BC8;
        v11[4] = self;
        [(BMFrameStore *)self enumerateWithOptions:35 fromOffset:v5 usingBlock:v11];
        return;
      }
    }

    else
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA0]);
      v10 = *p_framePointers;
      *p_framePointers = v9;
    }

    v5 = 0;
    goto LABEL_12;
  }

  v6 = __biome_log_for_category();
  *buf = 0;
  v14 = buf;
  v15 = 0x2020000000;
  v16 = 16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__BMFrameStore_updateFrameStoreIndex__block_invoke;
  block[3] = &unk_1E8338B28;
  block[4] = buf;
  if (updateFrameStoreIndex_onceToken != -1)
  {
    dispatch_once(&updateFrameStoreIndex_onceToken, block);
  }

  v7 = v14[24];
  _Block_object_dispose(buf, 8);
  if (os_log_type_enabled(v6, v7))
  {
    datastoreVersion = self->_datastoreVersion;
    *buf = 67109120;
    *&buf[4] = datastoreVersion;
    _os_log_impl(&dword_1C928A000, v6, v7, "updateFrameStoreIndex called with unexpected dataVersion:%d", buf, 8u);
  }
}

void __37__BMFrameStore_updateFrameStoreIndex__block_invoke_65(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{objc_msgSend(a2, "framePtr")}];
  [v2 addObject:v3];
}

- (int64_t)getReverseOffsetIndex:(unint64_t)index
{
  v18 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion != 9)
  {
    v8 = __biome_log_for_category();
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__BMFrameStore_getReverseOffsetIndex___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (getReverseOffsetIndex__onceToken != -1)
    {
      dispatch_once(&getReverseOffsetIndex__onceToken, block);
    }

    v9 = v15[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v8, v9))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v8, v9, "updateFrameStoreIndex called with unexpected dataVersion:%d", buf, 8u);
    }

    return -1;
  }

  [(BMFrameStore *)self updateFrameStoreIndex];
  framePointers = self->_framePointers;
  if (!framePointers || ![(NSMutableOrderedSet *)framePointers count])
  {
    return -1;
  }

  v6 = self->_framePointers;
  if (index == 0xFFFFFFFF)
  {
    return [(NSMutableOrderedSet *)self->_framePointers count]- 1;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{-[BMMemoryMapping start](self->_frames, "start") + index}];
  v12 = [(NSMutableOrderedSet *)v6 indexOfObject:v11];

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return -1;
  }

  else
  {
    return v12;
  }
}

- (void)enumerateWithOptions:(unint64_t)options fromOffset:(unint64_t)offset usingBlock:(id)block
{
  v18 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  datastoreVersion = self->_datastoreVersion;
  if (datastoreVersion == 10)
  {
    [(BMFrameStore *)self enumerateWithOptionsV2:options fromOffset:offset usingBlock:blockCopy];
  }

  else if (datastoreVersion == 9)
  {
    [(BMFrameStore *)self enumerateWithOptionsV1:options fromOffset:offset usingBlock:blockCopy];
  }

  else
  {
    v10 = __biome_log_for_category();
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__BMFrameStore_enumerateWithOptions_fromOffset_usingBlock___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (enumerateWithOptions_fromOffset_usingBlock__onceToken != -1)
    {
      dispatch_once(&enumerateWithOptions_fromOffset_usingBlock__onceToken, block);
    }

    v11 = v15[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_1C928A000, v10, v11, "[BMFrameStore enumerateWithOptions:fromOffset:usingBlock:] called with unexpected dataVersion:%d", buf, 8u);
    }
  }
}

- (void)enumerateWithOptionsV1:(unint64_t)v1 fromOffset:(unint64_t)offset usingBlock:(id)block
{
  v134 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    [BMFrameStore enumerateWithOptionsV1:a2 fromOffset:self usingBlock:?];
  }

  if ([(BMFrameStore *)self bytesUsed]>= 0x38)
  {
    bytesUsed = [(BMFrameStore *)self bytesUsed];
    if (offset != 4294967294)
    {
      if (offset == 0xFFFFFFFF)
      {
        offsetCopy = 0;
      }

      else
      {
        offsetCopy = offset;
      }

      if ((offsetCopy & 7) != 0)
      {
        v12 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v120[0] = MEMORY[0x1E69E9820];
        v120[1] = 3221225472;
        v120[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke;
        v120[3] = &unk_1E8338B28;
        v120[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken, v120);
        }

        v13 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v12, v13))
        {
          *buf = 134217984;
          *&buf[4] = offsetCopy;
          _os_log_impl(&dword_1C928A000, v12, v13, "enumerateWithOptions: startingOffset (%lu) is not 8-byte aligned", buf, 0xCu);
        }

        goto LABEL_26;
      }

      v14 = bytesUsed;
      if (offsetCopy == [(BMMemoryMapping *)self->_frames size])
      {
        goto LABEL_26;
      }

      if (offsetCopy > [(BMMemoryMapping *)self->_frames size])
      {
        v15 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_79;
        v119[3] = &unk_1E8338B28;
        v119[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_78 != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_78, v119);
        }

        v16 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v15, v16))
        {
          v17 = [(BMMemoryMapping *)self->_frames size];
          v18 = MEMORY[0x1E698E9C8];
          segmentPath = [(BMFrameStore *)self segmentPath];
          v20 = [v18 privacyPathname:segmentPath];
          *buf = 134218498;
          *&buf[4] = offsetCopy;
          *&buf[12] = 2048;
          *&buf[14] = v17;
          *&buf[22] = 2112;
          *&buf[24] = v20;
          _os_log_impl(&dword_1C928A000, v15, v16, "enumerateWithOptions: offset (%lu) beyond segment size (%lu) segment:%@", buf, 0x20u);
        }

LABEL_25:

        goto LABEL_26;
      }

      v21 = v14 - 56;
      if (offsetCopy > v21)
      {
        v15 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v118[0] = MEMORY[0x1E69E9820];
        v118[1] = 3221225472;
        v118[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_81;
        v118[3] = &unk_1E8338B28;
        v118[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_80 != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_80, v118);
        }

        v22 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v15, v22))
        {
          v23 = MEMORY[0x1E698E9C8];
          segmentPath2 = [(BMFrameStore *)self segmentPath];
          v25 = [v23 privacyPathname:segmentPath2];
          *buf = 134218498;
          *&buf[4] = offsetCopy;
          *&buf[12] = 1024;
          *&buf[14] = v21;
          *&buf[18] = 2112;
          *&buf[20] = v25;
          _os_log_impl(&dword_1C928A000, v15, v22, "enumerateWithOptions: offset (%lu) beyond the bytesUsed (%u) segment:%@", buf, 0x1Cu);
        }

        goto LABEL_25;
      }

      if (offsetCopy == v21)
      {
        goto LABEL_26;
      }

      v117 = 0;
      distantPast = [MEMORY[0x1E695DF00] distantPast];
      [distantPast timeIntervalSinceReferenceDate];
      v28 = v27;

      start = [(BMMemoryMapping *)self->_frames start];
      v30 = v1 & 8;
      if (!self->_permission && self->_pruneOnAccess && self->_filterByAgeOnRead && self->_maxAge > 0.0)
      {
        v95 = 0;
        v28 = CFAbsoluteTimeGetCurrent() - self->_maxAge;
      }

      else
      {
        v95 = 1;
      }

      if ((v1 & 8) == 0)
      {
        v31 = -1;
LABEL_44:
        if (v117)
        {
          goto LABEL_26;
        }

        v105 = 0;
        v101 = 0;
        v88 = v30 >> 3;
        v100 = 1;
        while (1)
        {
          v38 = objc_autoreleasePoolPush();
          v115 = 0;
          if (v30)
          {
            if (v31 < 0)
            {
              goto LABEL_156;
            }

            v40 = v31--;
            v41 = [(NSMutableOrderedSet *)self->_framePointers objectAtIndexedSubscript:v40];
            integerValue = [v41 integerValue];
          }

          else if (v105)
          {
            integerValue = v101 + offsetCopy;
          }

          else
          {
            integerValue = start + offsetCopy;
          }

          v42 = integerValue - [(BMMemoryMapping *)self->_frames start];
          if (v42 >= v21 || ([(BMMemoryMapping *)self->_frames end]- integerValue) < 0x20)
          {
LABEL_156:

            objc_autoreleasePoolPop(v38);
            goto LABEL_26;
          }

          v99 = v31;
          v43 = atomic_load(integerValue);
          v44 = HIDWORD(v43);
          v114 = 0uLL;
          v45 = *(integerValue + 8);
          v114 = *(integerValue + 16);
          v46 = [(BMFrameStore *)self sizeToNextWord:v43];
          v47 = v44;
          v48 = 0;
          v96 = v46;
          v98 = v38;
          v92 = v47;
          if (v47 > 2)
          {
            break;
          }

          if (!v47)
          {
            v48 = 1;
            v49 = 1;
            if (v46)
            {
              goto LABEL_77;
            }

LABEL_75:
            v49 = 0;
LABEL_76:
            v117 = 1;
            goto LABEL_77;
          }

          if (v47 == 1)
          {
            v52 = v95;
            if (v45 >= v28)
            {
              v52 = 1;
            }

            v49 = v52 ^ 1;
            v48 = 1;
            if ((v1 & 8) != 0 && (v52 & 1) == 0)
            {
              goto LABEL_75;
            }
          }

          else
          {
            v49 = 0;
            if (v47 == 2)
            {
              v48 = 1;
              v49 = (v1 & 2) == 0;
            }
          }

LABEL_77:
          v104 = integerValue + 32;
          frameStoreSize = [(BMFrameStore *)self frameStoreSize];
          v54 = 8;
          v55 = v96;
          if ((v105 & 1) == 0)
          {
            v54 = v96;
          }

          if (frameStoreSize >= v96)
          {
            v54 = v96;
          }

          v91 = v54;
          if (!v48 || frameStoreSize < v96)
          {
            if (v105)
            {
              v38 = v98;
              v31 = v99;
              start = (integerValue + 32);
              v57 = v92;
            }

            else
            {
              v38 = v98;
              v86 = frameStoreSize;
              if (v101)
              {
                v77 = atomic_load(v101);
                v85 = [(BMFrameStore *)self sizeToNextWord:v77];
                v84 = HIDWORD(v77);
                if (HIDWORD(v77) == 1)
                {
                  *buf = 0;
                  v78 = [(BMFrameStore *)self isValidFrameV1:v101 expectedState:1 copyOfData:buf frameStatus:v77 validations:1 enumerationOptions:v1 errorCode:0];
                  v79 = @"Not Valid";
                  if (v78)
                  {
                    v79 = @"Valid";
                  }

                  v87 = v79;
                  v80 = *buf;
                  *buf = 0;

                  v84 = 1;
                }

                else
                {
                  v87 = @"Not Checked";
                }

                v38 = v98;
              }

              else
              {
                v85 = 0;
                v87 = @"Not Checked";
                v84 = 5;
              }

              v58 = __biome_log_for_category();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
              {
                osloga = [(BMFrameStore *)self _printablePath];
                *buf = 67109378;
                *&buf[4] = v92;
                *&buf[8] = 2114;
                *&buf[10] = osloga;
                _os_log_error_impl(&dword_1C928A000, v58, OS_LOG_TYPE_ERROR, "Unrecognized frame state:%d in segment: %{public}@", buf, 0x12u);
              }

              oslog = __biome_log_for_category();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              buf[24] = 16;
              v112[0] = MEMORY[0x1E69E9820];
              v112[1] = 3221225472;
              v112[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_97;
              v112[3] = &unk_1E8338B28;
              v112[4] = buf;
              if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_96 != -1)
              {
                dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_96, v112);
              }

              v59 = *(*&buf[8] + 24);
              _Block_object_dispose(buf, 8);
              if (os_log_type_enabled(oslog, v59))
              {
                _printablePath = [(BMFrameStore *)self _printablePath];
                v83 = _printablePath;
                if (v101)
                {
                  if (v84 >= 6)
                  {
                    v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", v84];
                    v61 = v82;
                    _printablePath = v83;
                  }

                  else
                  {
                    v61 = off_1E8338C90[v84];
                    v82 = v61;
                  }
                }

                else
                {
                  v61 = @"no prev frame";
                }

                *buf = 67111426;
                *&buf[4] = v92;
                *&buf[8] = 2114;
                *&buf[10] = _printablePath;
                *&buf[18] = 2048;
                *&buf[20] = v42;
                *&buf[28] = 2048;
                *&buf[30] = v91;
                v122 = 1024;
                v123 = v88;
                v124 = 1024;
                v125 = v100;
                v126 = 2114;
                v127 = v61;
                v128 = 2114;
                v129 = v87;
                v130 = 2048;
                v131 = offsetCopy;
                v132 = 2048;
                v133 = v85;
                _os_log_impl(&dword_1C928A000, oslog, v59, "Unrecognized frame state: %d, segment:%{public}@ frame offset:%td frame size:%zu reverse:%d, frameCount=%d, prevFrameState:%{public}@, prevFrameValid:%{public}@ prevLastSize/offset:%zu prevStateSize:%zu", buf, 0x5Au);
                if (v101)
                {
                }
              }

              v31 = v99;
              start = (integerValue + 32);

              v57 = v92;
              v55 = v96;
              frameStoreSize = v86;
            }

            v117 = 1;
            goto LABEL_128;
          }

          if (v105)
          {
            v56 = 0;
          }

          else
          {
            v56 = v105;
          }

          if (v117)
          {
            v105 = v56;
            v38 = v98;
            v31 = v99;
            start = (integerValue + 32);
            v57 = v92;
LABEL_128:
            if ((v1 & 0x10) != 0 || frameStoreSize >= v55 && (v57 == 1 || v57 == 4) || start - [(BMMemoryMapping *)self->_frames start]+ 8 >= v21)
            {
              goto LABEL_156;
            }

            v117 = 0;
            if (v105)
            {
              offsetCopy = 8;
            }

            else
            {
              v68 = __biome_log_for_category();
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2020000000;
              buf[24] = 16;
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_102;
              block[3] = &unk_1E8338B28;
              block[4] = buf;
              if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_101 != -1)
              {
                dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_101, block);
              }

              v69 = *(*&buf[8] + 24);
              _Block_object_dispose(buf, 8);
              if (os_log_type_enabled(v68, v69))
              {
                _printablePath2 = [(BMFrameStore *)self _printablePath];
                *buf = 138543362;
                *&buf[4] = _printablePath2;
                _os_log_impl(&dword_1C928A000, v68, v69, "After unrecognized frame in %{public}@, skipping ahead to find valid frames", buf, 0xCu);
              }

              v105 = 1;
              offsetCopy = 8;
              v38 = v98;
              v31 = v99;
            }

            goto LABEL_140;
          }

          v31 = v99;
          if ((v49 & 1) == 0)
          {
            v62 = atomic_load(integerValue);
            v63 = HIDWORD(v62);
            v110 = 0;
            if ((v1 & 0x20) == 0 && HIDWORD(v62) == 1)
            {
              v64 = &v115;
            }

            else
            {
              v64 = 0;
            }

            v102 = v62;
            if ([BMFrameStore isValidFrameV1:"isValidFrameV1:expectedState:copyOfData:frameStatus:validations:enumerationOptions:errorCode:" expectedState:integerValue copyOfData:1 frameStatus:v64 validations:&v110 enumerationOptions:? errorCode:?])
            {
              v97 = v63;
              if (v105)
              {
                start2 = [(BMMemoryMapping *)self->_frames start];
                v65 = __biome_log_for_category();
                *buf = 0;
                *&buf[8] = buf;
                *&buf[16] = 0x2020000000;
                buf[24] = 16;
                v109[0] = MEMORY[0x1E69E9820];
                v109[1] = 3221225472;
                v109[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_104;
                v109[3] = &unk_1E8338B28;
                v109[4] = buf;
                if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_103 != -1)
                {
                  dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_103, v109);
                }

                v66 = *(*&buf[8] + 24);
                _Block_object_dispose(buf, 8);
                if (os_log_type_enabled(v65, v66))
                {
                  v93 = integerValue - start2;
                  _printablePath3 = [(BMFrameStore *)self _printablePath];
                  *buf = 138543618;
                  *&buf[4] = _printablePath3;
                  *&buf[12] = 2048;
                  *&buf[14] = v93;
                  _os_log_impl(&dword_1C928A000, v65, v66, "After a corrupted frame found a valid frame in %{public}@ at offset: %td", buf, 0x16u);
                }

                v31 = v99;
              }

              if ((v1 & 8) != 0)
              {
                if (v31 < 0)
                {
                  goto LABEL_145;
                }

                v71 = [(NSMutableOrderedSet *)self->_framePointers objectAtIndexedSubscript:v31];
                integerValue2 = [v71 integerValue];
                v108 = integerValue2 - [(BMMemoryMapping *)self->_frames start];
              }

              else
              {
                if (v104 < [(BMMemoryMapping *)self->_frames end]- v91)
                {
                  v67 = v104 + v91 - [(BMMemoryMapping *)self->_frames start];
                  goto LABEL_146;
                }

LABEL_145:
                v67 = 4294967294;
LABEL_146:
                v108 = v67;
              }

              v73 = [BMFrame alloc];
              attributes = [(BMFileHandle *)self->_backingFile attributes];
              path = [attributes path];
              *buf = v102;
              *&buf[8] = v45;
              *&buf[16] = v114;
              LODWORD(v81) = v97;
              v75 = [(BMFrame *)v73 initWithHeader:buf storePath:path data:v115 framePtr:integerValue offset:v42 nextOffset:v108 timestamp:v45 datastoreVersion:9 state:v81];

              v76 = v115;
              v115 = 0;

              blockCopy[2](blockCopy, v75, &v117);
              v31 = v99;
LABEL_148:
              start = (integerValue + 32);
              v38 = v98;
            }

            else
            {
              if ((v1 & 0x10) != 0 || v110 > 5)
              {
                goto LABEL_148;
              }

              start = (integerValue + 32);
              v38 = v98;
              if (((1 << v110) & 0x2C) != 0)
              {
                if ((v56 & 1) == 0)
                {
                  v56 = 1;
                }

                v91 = 8;
              }
            }

            v105 = v56;
            offsetCopy = v91;
            goto LABEL_141;
          }

          v105 = v56;
          start = (integerValue + 32);
          v38 = v98;
          offsetCopy = v54;
LABEL_140:

LABEL_141:
          objc_autoreleasePoolPop(v38);
          ++v100;
          v101 = integerValue;
          v30 = v1 & 8;
          if (v117)
          {
            goto LABEL_26;
          }
        }

        if (v47 == 3)
        {
          v48 = 1;
          v49 = v1 ^ 1;
          goto LABEL_77;
        }

        if (v47 != 4)
        {
          v49 = 0;
          if (v47 != 5)
          {
            goto LABEL_77;
          }

          v50 = __biome_log_for_category();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 16;
          v113[0] = MEMORY[0x1E69E9820];
          v113[1] = 3221225472;
          v113[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_86;
          v113[3] = &unk_1E8338B28;
          v113[4] = buf;
          if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_85 != -1)
          {
            dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_85, v113);
          }

          v51 = *(*&buf[8] + 24);
          _Block_object_dispose(buf, 8);
          if (os_log_type_enabled(v50, v51))
          {
            *buf = 0;
            _os_log_impl(&dword_1C928A000, v50, v51, "Found frame with state: BMFrameStateUnknown", buf, 2u);
          }
        }

        v49 = 0;
        v48 = 1;
        goto LABEL_76;
      }

      if (self->_permission)
      {
        v103 = start;
        v32 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v116[0] = MEMORY[0x1E69E9820];
        v116[1] = 3221225472;
        v116[2] = __61__BMFrameStore_enumerateWithOptionsV1_fromOffset_usingBlock___block_invoke_84;
        v116[3] = &unk_1E8338B28;
        v116[4] = buf;
        if (enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_83 != -1)
        {
          dispatch_once(&enumerateWithOptionsV1_fromOffset_usingBlock__onceToken_83, v116);
        }

        v33 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (!os_log_type_enabled(v32, v33))
        {
          goto LABEL_42;
        }

        *buf = 0;
        v34 = "Use of reverse enumeration is only supported for reading.";
        v35 = v32;
        v36 = v33;
        v37 = 2;
      }

      else
      {
        v31 = [(BMFrameStore *)self getReverseOffsetIndex:offset];
        if (v31 != -1)
        {
          goto LABEL_44;
        }

        v103 = start;
        v32 = __biome_log_for_category();
        if (!os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          goto LABEL_42;
        }

        *buf = 134217984;
        *&buf[4] = offset;
        v34 = "Reverse enumeration offset not found %zu.";
        v35 = v32;
        v36 = OS_LOG_TYPE_INFO;
        v37 = 12;
      }

      _os_log_impl(&dword_1C928A000, v35, v36, v34, buf, v37);
LABEL_42:

      v31 = -1;
      start = v103;
      goto LABEL_44;
    }
  }

LABEL_26:
}

- (void)updateHeader
{
  OUTLINED_FUNCTION_1_1();
  v7 = *MEMORY[0x1E69E9840];
  attributes = [*(v2 + 64) attributes];
  filename = [attributes filename];
  OUTLINED_FUNCTION_3_0();
  v6 = v1;
  _os_log_debug_impl(&dword_1C928A000, v0, OS_LOG_TYPE_DEBUG, "Frame store: %@, bytesUsed: %llu", v5, 0x16u);
}

- (unsigned)appendFrameHeaderV1:(id *)v1 offset:(unint64_t *)offset
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion != 9)
  {
    v5 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v29) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__BMFrameStore_appendFrameHeaderV1_offset___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (appendFrameHeaderV1_offset__onceToken != -1)
    {
      dispatch_once(&appendFrameHeaderV1_offset__onceToken, block);
    }

    v6 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v5, v6))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v5, v6, "[BMFrameStore appendFrameHeaderV1:offset:] called with unexpected dataVersion:%d", buf, 8u);
    }

    return 1;
  }

  v26 = 0;
  v11 = [(BMFrameStore *)self sizeToNextWord:?]+ 32;
  if ([(BMMemoryMapping *)self->_frames atomicWriteEightBytes:v1->var0.var1 toOffset:*offset expected:&v26]== 1)
  {
LABEL_9:
    [(BMMemoryMapping *)self->_frames updateToMaxOfCurrentWriteOffsetAnd:v11 + *offset];
    self->_lastAbsoluteTimestamp = v1->var1.var0;
    var0 = v1->var1.var0;
    start = [(BMMemoryMapping *)self->_frames start];
    v14 = *offset;
    v15 = *&start[*offset + 8];
    v25 = v15;
    v16 = [(BMMemoryMapping *)self->_frames atomicWriteEightBytes:*&var0 toOffset:v14 + 8 expected:&v25];
    if (v16 != 1)
    {
      v22 = v16;
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218496;
        *&buf[4] = v15;
        *&buf[12] = 2048;
        *&buf[14] = v25;
        *&buf[22] = 1024;
        v29 = v22;
        _os_log_error_impl(&dword_1C928A000, v23, OS_LOG_TYPE_ERROR, "Unable to update creationTimestamp. We expect to see %llu, but instead are seeing %llu. The write status is %d", buf, 0x1Cu);
      }

      return 1;
    }

    [(BMMemoryMapping *)self->_frames writeBytes:&v1->var1.var1 toOffset:*offset + 16 length:16];
    return 2 * (v1->var0.var0.var1 == 4);
  }

  else
  {
    while (1)
    {
      v17 = *([(BMMemoryMapping *)self->_frames start]+ *offset + 8);
      Current = CFAbsoluteTimeGetCurrent();
      if (v17 >= Current)
      {
        Current = v17;
      }

      v1->var1.var0 = Current;
      v1->var1.var1 = Current;
      if (HIDWORD(v26) == 4)
      {
        return 2;
      }

      v19 = *offset;
      *offset = v19 + [(BMFrameStore *)self sizeToNextWord:v26]+ 32;
      v26 = 0;
      if (![BMMemoryMapping isValidReadFromOffset:"isValidReadFromOffset:withLength:" withLength:?])
      {
        if (![(BMMemoryMapping *)self->_frames isValidReadFromOffset:*offset withLength:32])
        {
          v24 = __biome_log_for_category();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [BMFrameStore appendFrameHeaderV1:offset:];
          }

          return 2;
        }

        v20 = [(BMMemoryMapping *)self->_frames size]- *offset - 32;
        v21 = v1->var1.var0;
        v1->var0.var0.var0 = v20;
        v1->var0.var0.var1 = 4;
        v1->var1.var1 = v21;
        *&v1->var1.var2 = 0;
      }

      if ([(BMMemoryMapping *)self->_frames atomicWriteEightBytes:v1->var0.var1 toOffset:*offset expected:&v26]== 1)
      {
        goto LABEL_9;
      }
    }
  }
}

- (BOOL)offsetIsStartOfFrameStore:(unint64_t)store
{
  if (!store)
  {
    return 1;
  }

  return [(BMFrameStore *)self datastoreVersion]== 10 && [(BMFrameStore *)self frameStoreSize]- 48 == store;
}

- (unsigned)writeFrameV1ForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset
{
  v62 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (length >> 31)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

LABEL_27:

LABEL_28:
    LOBYTE(v15) = 1;
    goto LABEL_29;
  }

  if (!length)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    goto LABEL_27;
  }

  if (length + 88 <= selfCopy->_frameStoreSize)
  {
    if (![(BMMemoryMapping *)selfCopy->_header start])
    {
      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
      }

      goto LABEL_27;
    }

    currentWriteOffset = [(BMMemoryMapping *)selfCopy->_frames currentWriteOffset];
    if ([(BMMemoryMapping *)selfCopy->_frames isValidReadFromOffset:currentWriteOffset withLength:length + 32])
    {
      if (selfCopy->_lastAbsoluteTimestamp > timestamp)
      {
        if ([(BMFrameStore *)selfCopy isRemoteSegment]&& ![(BMFrameStore *)selfCopy isTombstoneSegment])
        {
          v21 = objc_alloc_init(MEMORY[0x1E696AB78]);
          [v21 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
          v22 = __biome_log_for_category();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            lastAbsoluteTimestamp = selfCopy->_lastAbsoluteTimestamp;
            v44 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:timestamp];
            v45 = [v21 stringFromDate:v44];
            v43 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:selfCopy->_lastAbsoluteTimestamp];
            v38 = [v21 stringFromDate:v43];
            v39 = MEMORY[0x1E698E9C8];
            segmentPath = [(BMFrameStore *)selfCopy segmentPath];
            v41 = [v39 privacyPathname:segmentPath];
            *buf = 136316418;
            *&buf[4] = "[BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:]";
            *&buf[12] = 2048;
            *&buf[14] = timestamp;
            *&buf[22] = 2048;
            v55 = *&lastAbsoluteTimestamp;
            v56 = 2112;
            v57 = v45;
            v58 = 2112;
            v59 = v38;
            v60 = 2114;
            v61 = v41;
            _os_log_error_impl(&dword_1C928A000, v22, OS_LOG_TYPE_ERROR, "[%s] WARNING (remote data) frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
          }
        }

        else
        {
          if (selfCopy->_lastAbsoluteTimestamp - timestamp >= 3.0)
          {
            goto LABEL_22;
          }

          v16 = CFAbsoluteTimeGetCurrent() - timestamp;
          if (v16 < 0.0)
          {
            v16 = -v16;
          }

          if (v16 > 60.0)
          {
LABEL_22:
            v17 = objc_alloc_init(MEMORY[0x1E696AB78]);
            [v17 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
            v18 = __biome_log_for_category();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              v30 = selfCopy->_lastAbsoluteTimestamp;
              v31 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:timestamp];
              v32 = [v17 stringFromDate:v31];
              v33 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:selfCopy->_lastAbsoluteTimestamp];
              v34 = [v17 stringFromDate:v33];
              v35 = MEMORY[0x1E698E9C8];
              segmentPath2 = [(BMFrameStore *)selfCopy segmentPath];
              v37 = [v35 privacyPathname:segmentPath2];
              *buf = 136316418;
              *&buf[4] = "[BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:]";
              *&buf[12] = 2048;
              *&buf[14] = timestamp;
              *&buf[22] = 2048;
              v55 = *&v30;
              v56 = 2112;
              v57 = v32;
              v58 = 2112;
              v59 = v34;
              v60 = 2114;
              v61 = v37;
              _os_log_error_impl(&dword_1C928A000, v18, OS_LOG_TYPE_ERROR, "[%s] Frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
            }

            goto LABEL_28;
          }

          timestamp = selfCopy->_lastAbsoluteTimestamp + 0.0000001;
        }
      }

      v23 = crc32(0, bytes, length);
      *buf = length;
      *&buf[4] = 0;
      *&buf[8] = timestamp;
      *&buf[16] = timestamp;
      v55 = __PAIR64__(version, v23);
      v15 = [(BMFrameStore *)selfCopy appendFrameHeaderV1:buf offset:&currentWriteOffset];
      if (v15)
      {
        v24 = __biome_log_for_category();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          v25 = NSStringFromBMFrameWriteStatus(v15);
          [BMFrameStore writeFrameV1ForBytes:v25 length:v48 dataVersion:v24 timestamp:? outOffset:?];
        }
      }

      else
      {
        [(BMMemoryMapping *)selfCopy->_frames writeBytes:bytes toOffset:currentWriteOffset + 32 length:length];
        v46 = *buf;
        *&buf[4] = 1;
        v26 = *buf;
        v27 = [(BMMemoryMapping *)selfCopy->_frames atomicWriteEightBytes:*buf toOffset:currentWriteOffset expected:&v46];
        [(BMFrameStore *)selfCopy updateHeader];
        if (v27 != 1)
        {
          v29 = __biome_log_for_category();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v48 = 134218496;
            v49 = v46;
            v50 = 2048;
            v51 = v26;
            v52 = 1024;
            v53 = v27;
            _os_log_error_impl(&dword_1C928A000, v29, OS_LOG_TYPE_ERROR, "Unable to update status to written, someone else seems to have overwritten the value. We expect to see %llu, but instead are seeing %llu. The write status is %d", v48, 0x1Cu);
          }

          goto LABEL_28;
        }

        if (offset)
        {
          offset = [(BMMemoryMapping *)selfCopy->_frames offset];
          LOBYTE(v15) = 0;
          *offset = currentWriteOffset + offset;
        }

        else
        {
          LOBYTE(v15) = 0;
        }
      }
    }

    else
    {
      if ([(BMMemoryMapping *)selfCopy->_frames isValidReadFromOffset:currentWriteOffset withLength:32])
      {
        *buf = [(BMMemoryMapping *)selfCopy->_frames freeSpace]- 32;
        *&buf[4] = 4;
        *&buf[8] = timestamp;
        *&buf[16] = timestamp;
        v55 = 0;
        [(BMFrameStore *)selfCopy appendFrameHeaderV1:buf offset:&currentWriteOffset];
      }

      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [BMFrameStore appendFrameHeaderV1:offset:];
      }

      LOBYTE(v15) = 2;
    }
  }

  else
  {
    v14 = __biome_log_for_category();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    LOBYTE(v15) = 3;
  }

LABEL_29:
  objc_sync_exit(selfCopy);

  return v15;
}

- (unsigned)writeFrameForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset
{
  v18 = *MEMORY[0x1E69E9840];
  datastoreVersion = self->_datastoreVersion;
  if (datastoreVersion == 10)
  {

    return [(BMFrameStore *)self writeFrameV2ForBytes:bytes length:length dataVersion:*&version timestamp:offset outOffset:timestamp];
  }

  else if (datastoreVersion == 9)
  {

    return [(BMFrameStore *)self writeFrameV1ForBytes:bytes length:length dataVersion:*&version timestamp:offset outOffset:timestamp];
  }

  else
  {
    v10 = __biome_log_for_category();
    *buf = 0;
    v15 = buf;
    v16 = 0x2020000000;
    v17 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__BMFrameStore_writeFrameForBytes_length_dataVersion_timestamp_outOffset___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (writeFrameForBytes_length_dataVersion_timestamp_outOffset__onceToken != -1)
    {
      dispatch_once(&writeFrameForBytes_length_dataVersion_timestamp_outOffset__onceToken, block);
    }

    v11 = v15[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = v12;
      _os_log_impl(&dword_1C928A000, v10, v11, "writeFrameForBytes with unexpected dataVersion:%d", buf, 8u);
    }

    return 1;
  }
}

- (int)frameCountFromStartTime:(double)time endTime:(double)endTime
{
  if ([(BMFrameStore *)self datastoreVersion]== 9)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__BMFrameStore_frameCountFromStartTime_endTime___block_invoke;
    v9[3] = &unk_1E8338C38;
    *&v9[5] = endTime;
    *&v9[6] = time;
    v9[4] = &v10;
    [(BMFrameStore *)self enumerateFromOffset:0 withCallback:v9];
    v7 = *(v11 + 6);
    _Block_object_dispose(&v10, 8);
    return v7;
  }

  if ([(BMFrameStore *)self datastoreVersion]!= 10)
  {
    return 0;
  }

  return [(BMFrameStore *)self frameCountFromStartTimeV2:time endTime:endTime];
}

void __48__BMFrameStore_frameCountFromStartTime_endTime___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  [v7 creationTimestamp];
  if (v5 <= *(a1 + 40))
  {
    [v7 creationTimestamp];
    if (v6 >= *(a1 + 48))
    {
      ++*(*(*(a1 + 32) + 8) + 24);
    }
  }

  else
  {
    *a3 = 1;
  }
}

- (void)markFrameAsRemoved:(id)removed
{
  v16 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  datastoreVersion = self->_datastoreVersion;
  if (datastoreVersion == 10)
  {
    [(BMFrameStore *)self markFrameAsRemovedV2:removedCopy];
  }

  else if (datastoreVersion == 9)
  {
    [(BMFrameStore *)self markFrameAsRemovedV1:removedCopy];
  }

  else
  {
    v6 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v15 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BMFrameStore_markFrameAsRemoved___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (markFrameAsRemoved__onceToken != -1)
    {
      dispatch_once(&markFrameAsRemoved__onceToken, block);
    }

    v7 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = MEMORY[0x1E698E9C8];
      attributes = [(BMFileHandle *)self->_backingFile attributes];
      path = [attributes path];
      v11 = [v8 privacyPathname:path];
      v12 = self->_datastoreVersion;
      *buf = 138543618;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = v12;
      _os_log_impl(&dword_1C928A000, v6, v7, "Segment version of %{public}@ doesn't match expected versions: %lu.", buf, 0x16u);
    }
  }
}

- (void)markFrameAsRemovedV1:(id)v1
{
  v21 = *MEMORY[0x1E69E9840];
  v1Copy = v1;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = atomic_load([v1Copy framePtr]);
  framePtr = [v1Copy framePtr];
  v8 = v6 | 0x200000000;
  v9 = v6;
  atomic_compare_exchange_strong(framePtr, &v9, v8);
  if (v9 == v6)
  {
    framePtr2 = [v1Copy framePtr];
    framePtr3 = [v1Copy framePtr];
    *(framePtr2 + 24) = 0;
    v12 = memset_s((framePtr3 + 32), v6, 0, v6);
    if (v12)
    {
      v13 = __biome_log_for_category();
      *buf = 0;
      v18 = buf;
      v19 = 0x2020000000;
      v20 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __37__BMFrameStore_markFrameAsRemovedV1___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (markFrameAsRemovedV1__onceToken != -1)
      {
        dispatch_once(&markFrameAsRemovedV1__onceToken, block);
      }

      v14 = v18[24];
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v13, v14))
      {
        *buf = 67240192;
        *&buf[4] = v12;
        _os_log_impl(&dword_1C928A000, v13, v14, "Failed to zero out memory. %{public, darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      v15 = v6 | 0x200000000;
      atomic_compare_exchange_strong(framePtr, &v15, v6 | 0x300000000);
      if (v15 == v8)
      {
        goto LABEL_10;
      }

      v13 = __biome_log_for_category();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore markFrameAsRemovedV1:];
      }
    }
  }

  else
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore markFrameAsRemovedV1:];
    }
  }

LABEL_10:
  objc_sync_exit(selfCopy);
}

+ (unint64_t)maxEventsPerFrameStoreVersion:(unint64_t)version averageEventSize:(unint64_t)size segmentSize:(unint64_t)segmentSize
{
  v5 = 3;
  if (version == 9)
  {
    v5 = 7;
  }

  v6 = -4;
  if (version == 9)
  {
    v6 = -8;
  }

  v7 = -32;
  if (version == 9)
  {
    v7 = -56;
  }

  v8 = 24;
  if (version == 9)
  {
    v8 = 32;
  }

  return (v7 + segmentSize) / (v8 + ((v5 + size) & v6));
}

- (unsigned)bytesUsed
{
  v12 = *MEMORY[0x1E69E9840];
  if ([(BMFrameStore *)self datastoreVersion]== 9)
  {

    return [(BMFrameStore *)self bytesUsedV1];
  }

  else if ([(BMFrameStore *)self datastoreVersion]== 10)
  {

    return [(BMFrameStore *)self bytesUsedV2];
  }

  else
  {
    v4 = __biome_log_for_category();
    *buf = 0;
    v9 = buf;
    v10 = 0x2020000000;
    v11 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __37__BMFrameStore_Inspection__bytesUsed__block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (bytesUsed_onceToken != -1)
    {
      dispatch_once(&bytesUsed_onceToken, block);
    }

    v5 = v9[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v4, v5))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v4, v5, "bytesUsed called with a framestore with an unexpected datastoreVersion:%d", buf, 8u);
    }

    return [(BMFrameStore *)self frameStoreSize];
  }
}

- (unsigned)bytesUsedV1
{
  v11 = *MEMORY[0x1E69E9840];
  v8 = 0;
  if ([(BMMemoryMapping *)self->_header atomicReadAtOffset:0 value:&v8]== 1)
  {
    return v8;
  }

  v4 = __biome_log_for_category();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v10 = 16;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__BMFrameStore_Inspection__bytesUsedV1__block_invoke;
  v7[3] = &unk_1E8338B28;
  v7[4] = buf;
  if (bytesUsedV1_onceToken != -1)
  {
    dispatch_once(&bytesUsedV1_onceToken, v7);
  }

  v5 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if (os_log_type_enabled(v4, v5))
  {
    header = self->_header;
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2112;
    *&buf[14] = header;
    _os_log_impl(&dword_1C928A000, v4, v5, "Unable to atomically read the bytesUsed value from the frame header %@ %@", buf, 0x16u);
  }

  return 0;
}

- (unsigned)bytesUsedV2
{
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  frames = [(BMFrameStore *)self frames];
  v5 = ([frames end] - (16 * atomicReadTotalFramesV2));

  return ((*v5 + 3) & 0xFFFFFFFC) + 16 * atomicReadTotalFramesV2 + 32;
}

- (BOOL)isCheckSumValidAtOffsetV1:(unint64_t)v1
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_datastoreVersion != 9)
  {
    v8 = __biome_log_for_category();
    *buf = 0;
    v13 = buf;
    v14 = 0x2020000000;
    v15 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__BMFrameStore_Inspection__isCheckSumValidAtOffsetV1___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (isCheckSumValidAtOffsetV1__onceToken != -1)
    {
      dispatch_once(&isCheckSumValidAtOffsetV1__onceToken, block);
    }

    v9 = v13[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v8, v9))
    {
      datastoreVersion = self->_datastoreVersion;
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v8, v9, "isCheckSumValidAtOffsetV1 called with unexpected dataVersion:%d", buf, 8u);
    }

    return 0;
  }

  if ((v1 & 7) != 0)
  {
    return 0;
  }

  v5 = [(BMMemoryMapping *)self->_frames start]+ v1;
  if ((v5 + 8) > [(BMMemoryMapping *)self->_frames end])
  {
    return 0;
  }

  v6 = atomic_load(v5);
  if (v1 + v6 > [(BMMemoryMapping *)self->_frames size])
  {
    return 0;
  }

  return HIDWORD(v6) != 1 || *(v5 + 6) == crc32(0, v5 + 32, v6);
}

- (uint64_t)atomicReadSixteenByteValueAtAddress:
{
  _X0 = 0;
  _X1 = 0;
  __asm { CASPAL          X0, X1, X0, X1, [X2] }

  return result;
}

- (int)frameNumberFromFrameOffsetV2:(unsigned int)v2
{
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (!atomicReadTotalFramesV2)
  {
    return -1;
  }

  v6 = atomicReadTotalFramesV2;
  v7 = -1;
  if ([(BMFrameStore *)self offsetOfFrameV2:atomicReadTotalFramesV2]> v2)
  {
    v8 = v6 - 1;
    if ((v8 & 0x80000000) == 0)
    {
      v9 = 0;
      while (1)
      {
        v7 = v9 + (v8 - v9) / 2;
        v10 = [(BMFrameStore *)self offsetOfFrameV2:v7];
        if (v10 == v2)
        {
          break;
        }

        if (v10 < v2)
        {
          v9 = v7 + 1;
        }

        else
        {
          v8 = v7 - 1;
        }

        if (v8 < v9)
        {
          return -1;
        }
      }
    }
  }

  return v7;
}

- (BOOL)validOffsetTableEntry:(id)entry frameNumber:(int)number
{
  v24 = *MEMORY[0x1E69E9840];
  if (!(entry.var0.var0.var0.var1 | *&entry.var0.var0.var1))
  {
    return 0;
  }

  var0 = entry.var0.var0.var0.var0.var0;
  var1 = entry.var0.var0.var0.var0.var1;
  if (entry.var0.var0.var0.var0.var1 >= 5)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v11 = [v9 privacyPathname:segmentPath];
      v21 = 67109634;
      *v22 = var1;
      *&v22[4] = 1024;
      *&v22[6] = number;
      *v23 = 2112;
      *&v23[2] = v11;
      v12 = "Invalid BMFrameState (%d) for frame %d in segment: %@";
LABEL_8:
      _os_log_error_impl(&dword_1C928A000, v8, OS_LOG_TYPE_ERROR, v12, &v21, 0x18u);

      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v13 = entry.var0.var0.var1;
  if ([(BMFrameStore *)self frameStoreSize]< entry.var0.var0.var0.var0.var0)
  {
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v11 = [v14 privacyPathname:segmentPath];
      v21 = 67109634;
      *v22 = var0;
      *&v22[4] = 1024;
      *&v22[6] = number;
      *v23 = 2112;
      *&v23[2] = v11;
      v12 = "Invalid offset (%d) for frame %d in segment: %@";
      goto LABEL_8;
    }

LABEL_14:

    return 0;
  }

  if (CFAbsoluteTimeGetCurrent() + 315360000.0 < v13)
  {
    v8 = __biome_log_for_category();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v15 = MEMORY[0x1E698E9C8];
    segmentPath2 = [(BMFrameStore *)self segmentPath];
    v17 = [v15 privacyPathname:segmentPath2];
    v21 = 134218498;
    *v22 = v13;
    *&v22[8] = 1024;
    *v23 = number;
    *&v23[4] = 2112;
    *&v23[6] = v17;
    v18 = "Invalid timestamp (%f), too far in the future, for frame %d in segment: %@";
LABEL_18:
    _os_log_error_impl(&dword_1C928A000, v8, OS_LOG_TYPE_ERROR, v18, &v21, 0x1Cu);

    goto LABEL_14;
  }

  if (v13 < 599558401.0)
  {
    v8 = __biome_log_for_category();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    v20 = MEMORY[0x1E698E9C8];
    segmentPath2 = [(BMFrameStore *)self segmentPath];
    v17 = [v20 privacyPathname:segmentPath2];
    v21 = 134218498;
    *v22 = v13;
    *&v22[8] = 1024;
    *v23 = number;
    *&v23[4] = 2112;
    *&v23[6] = v17;
    v18 = "Invalid timestamp (%f), too far in the past, for frame %d in segment: %@";
    goto LABEL_18;
  }

  return 1;
}

- (BOOL)validOffsetTableEntryAtFrame:(int)frame
{
  v3 = *&frame;
  v18 = *MEMORY[0x1E69E9840];
  v5 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:?];
  if (v5)
  {
    var1 = v5->var0.var0.var0.var1;
    v7 = v5->var0.var0.var1;

    return [(BMFrameStore *)self validOffsetTableEntry:var1 frameNumber:*&v7, v3];
  }

  else
  {
    v9 = __biome_log_for_category();
    *buf = 0;
    *&v16 = buf;
    *(&v16 + 1) = 0x2020000000;
    v17 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BMFrameStore_V2__validOffsetTableEntryAtFrame___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (validOffsetTableEntryAtFrame__onceToken != -1)
    {
      dispatch_once(&validOffsetTableEntryAtFrame__onceToken, block);
    }

    v10 = *(v16 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v13 = [v11 privacyPathname:segmentPath];
      *buf = 67109378;
      *&buf[4] = v3;
      LOWORD(v16) = 2114;
      *(&v16 + 2) = v13;
      _os_log_impl(&dword_1C928A000, v9, v10, "validOffsetTableEntryAtFrame: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
    }

    return 0;
  }
}

- (int)findValidOffsetTableEntryToReplaceMidFrame:(int)frame bottomFrame:(int)bottomFrame topFrame:(int)topFrame reverse:(BOOL)reverse
{
  frameCopy = frame;
  if (reverse)
  {
    LODWORD(v12) = frame;
    while (1)
    {
      v13 = v12;
      v12 = (v12 - 1);
      if (bottomFrame == v13)
      {
        break;
      }

      if ([(BMFrameStore *)self validOffsetTableEntryAtFrame:v12])
      {
        return v12;
      }
    }

    frameCopy = v12;
  }

  LODWORD(v12) = frame;
  while (topFrame != v12)
  {
    v12 = (v12 + 1);
    if ([(BMFrameStore *)self validOffsetTableEntryAtFrame:v12])
    {
      return v12;
    }
  }

  if (!reverse)
  {
    LODWORD(v12) = frameCopy;
    while (bottomFrame != v12)
    {
      v12 = (v12 - 1);
      if ([(BMFrameStore *)self validOffsetTableEntryAtFrame:v12])
      {
        return v12;
      }
    }
  }

  LODWORD(v12) = frame;
  return v12;
}

- (int)firstFrameNumberForTimestampV2:(double)v2 reverse:(BOOL)reverse
{
  reverseCopy = reverse;
  v60 = *MEMORY[0x1E69E9840];
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (!atomicReadTotalFramesV2)
  {
    return -1;
  }

  v8 = atomicReadTotalFramesV2;
  v9 = atomicReadTotalFramesV2 - 1;
  v10 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:v9];
  if (!v10)
  {
    v14 = __biome_log_for_category();
    *buf = 0;
    *&v58 = buf;
    *(&v58 + 1) = 0x2020000000;
    v59 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __59__BMFrameStore_V2__firstFrameNumberForTimestampV2_reverse___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (firstFrameNumberForTimestampV2_reverse__onceToken != -1)
    {
      dispatch_once(&firstFrameNumberForTimestampV2_reverse__onceToken, block);
    }

    v15 = *(v58 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v18 = [v16 privacyPathname:segmentPath];
      *buf = 67109378;
      *&buf[4] = v9;
      LOWORD(v58) = 2114;
      *(&v58 + 2) = v18;
      _os_log_impl(&dword_1C928A000, v14, v15, "firstFrameNumberForTimestampV2: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
    }

    goto LABEL_27;
  }

  v11 = v10;
  v12 = [(BMFrameStore *)self atomicReadFourByteValueAtAddress:&v10->var0.var0.var0.var1 + 4];
  if (v12 == 4)
  {
    v9 = v8 - 2;
  }

  else
  {
    v9 = v9;
  }

  if ((v9 & 0x80000000) != 0)
  {
    if (v9 == -1)
    {
      return -1;
    }
  }

  else
  {
    v13 = &v11[v12 == 4];
    while (![(BMFrameStore *)self atomicReadEightByteValueAtAddress:v13])
    {
      ++v13;
      v46 = v9 <= 0;
      v9 = (v9 - 1);
      if (v46)
      {
        return -1;
      }
    }
  }

  v19 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:0];
  if (!v19)
  {
    v14 = __biome_log_for_category();
    *buf = 0;
    *&v58 = buf;
    *(&v58 + 1) = 0x2020000000;
    v59 = 16;
    v51 = MEMORY[0x1E69E9820];
    v52 = 3221225472;
    v53 = __59__BMFrameStore_V2__firstFrameNumberForTimestampV2_reverse___block_invoke_2;
    v54 = &unk_1E8338B28;
    v55 = buf;
    if (firstFrameNumberForTimestampV2_reverse__onceToken_1 != -1)
    {
      dispatch_once(&firstFrameNumberForTimestampV2_reverse__onceToken_1, &v51);
    }

    v22 = *(v58 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v14, v22))
    {
      v23 = MEMORY[0x1E698E9C8];
      v24 = [(BMFrameStore *)self segmentPath:v51];
      v25 = [v23 privacyPathname:v24];
      *buf = 67109378;
      *&buf[4] = 0;
      LOWORD(v58) = 2114;
      *(&v58 + 2) = v25;
      _os_log_impl(&dword_1C928A000, v14, v22, "firstFrameNumberForTimestampV2: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
    }

LABEL_27:

    return -1;
  }

  if (v9 < 1)
  {
    v21 = 0;
  }

  else
  {
    v20 = v19;
    v21 = 0;
    while (![(BMFrameStore *)self atomicReadEightByteValueAtAddress:v20])
    {
      --v20;
      v21 = (v21 + 1);
      if (v9 == v21)
      {
        v21 = v9;
        break;
      }
    }
  }

  [(BMFrameStore *)self creationTimeOfFrameV2:v21];
  if (v28 > v2)
  {
    if (reverseCopy)
    {
      return -1;
    }

    else
    {
      return v21;
    }
  }

  if (v28 == v2)
  {
    if (reverseCopy)
    {
      v29 = v28;
      if (v9 <= v21)
      {
        v26 = v21;
      }

      else
      {
        v26 = v9;
      }

      v30 = (v21 + 1);
      while (v30 - v26 != 1)
      {
        [(BMFrameStore *)self creationTimeOfFrameV2:v30];
        v30 = (v30 + 1);
        if (v31 != v29)
        {
          return v30 - 2;
        }
      }
    }

    else
    {
      return v21;
    }
  }

  else
  {
    [(BMFrameStore *)self creationTimeOfFrameV2:v9];
    if (v32 < v2)
    {
      if (reverseCopy)
      {
        return v9;
      }

      else
      {
        return -1;
      }
    }

    if (v32 == v2)
    {
      if (reverseCopy)
      {
        return v9;
      }

      v35 = v32;
      do
      {
        v26 = v9;
        v36 = __OFSUB__(v9, 1);
        v9 = (v9 - 1);
        if (v9 < 0 != v36)
        {
          break;
        }

        [(BMFrameStore *)self creationTimeOfFrameV2:v9];
      }

      while (v37 == v35);
      return v26;
    }

    if (v9 >= v21)
    {
      v38 = v21;
      v39 = v9;
      do
      {
        v33 = (v38 + (v39 - v38) / 2);
        [(BMFrameStore *)self creationTimeOfFrameV2:v33];
        v34 = v40;
        if (v40 == v2)
        {
          break;
        }

        if (v40 == 0.0)
        {
          v41 = [(BMFrameStore *)self findValidOffsetTableEntryToReplaceMidFrame:(v38 + (v39 - v38) / 2) bottomFrame:v38 topFrame:v39 reverse:reverseCopy];
          [(BMFrameStore *)self creationTimeOfFrameV2:v41];
          v34 = v42;
          v43 = v42 == v2 ? v41 : v33;
          v33 = v42 == 0.0 ? v33 : v43;
          if (v42 == 0.0 || v42 == v2)
          {
            break;
          }
        }

        v39 = v34 >= v2 ? (v33 - 1) : v39;
        v38 = v34 < v2 ? (v33 + 1) : v38;
      }

      while (v39 >= v38);
      if (v34 != v2)
      {
        if (v34 != 0.0)
        {
          v33 = (v38 - reverseCopy);
          [(BMFrameStore *)self creationTimeOfFrameV2:v33];
          v26 = v38 - reverseCopy;
          if (v48 != 0.0)
          {
            return v26;
          }
        }

        goto LABEL_97;
      }
    }

    else
    {
      v33 = 0;
      v34 = 0.0;
      if (v2 != 0.0)
      {
LABEL_97:
        if (reverseCopy)
        {
          if (v33 >= v21)
          {
            while (1)
            {
              [(BMFrameStore *)self creationTimeOfFrameV2:v33];
              if (v49 != 0.0)
              {
                break;
              }

              v26 = v33 - 1;
              v46 = v33 <= v21;
              v33 = (v33 - 1);
              if (v46)
              {
                return v26;
              }
            }
          }
        }

        else if (v33 <= v9)
        {
          v26 = v9 + 1;
          while (1)
          {
            [(BMFrameStore *)self creationTimeOfFrameV2:v33];
            if (v50 != 0.0)
            {
              break;
            }

            v33 = (v33 + 1);
            if (v26 == v33)
            {
              return v26;
            }
          }
        }

        return v33;
      }
    }

    if (reverseCopy)
    {
      if (v9 <= v33)
      {
        v26 = v33;
      }

      else
      {
        v26 = v9;
      }

      v30 = (v33 + 1);
      while (v30 - v26 != 1)
      {
        [(BMFrameStore *)self creationTimeOfFrameV2:v30];
        v30 = (v30 + 1);
        v46 = v45 != 0.0 && v45 <= v34;
        if (!v46)
        {
          return v30 - 2;
        }
      }
    }

    else
    {
      do
      {
        v26 = v33;
        v36 = __OFSUB__(v33, 1);
        v33 = (v33 - 1);
        if (v33 < 0 != v36)
        {
          break;
        }

        [(BMFrameStore *)self creationTimeOfFrameV2:v33];
      }

      while (v47 >= v34);
    }
  }

  return v26;
}

- (unsigned)frameOffsetFromOffsetTableV2:(id *)v2
{
  if (!v2)
  {
    return 0;
  }

  v3 = v2 + 1;
  frames = [(BMFrameStore *)self frames];
  v5 = [frames end];

  if (v5 == v3)
  {
    return 0;
  }

  else
  {
    return (v3->var0.var0.var0.var0.var0 + 3) & 0xFFFFFFFC;
  }
}

- (int)frameNumberFromOffsetToOffsetTableEntryV2:(unsigned int)v2
{
  frames = [(BMFrameStore *)self frames];
  v6 = [frames size];

  if (v6 < v2)
  {
    return -1;
  }

  frames2 = [(BMFrameStore *)self frames];
  v7 = (([frames2 size] - v2) >> 4) - 1;

  return v7;
}

- (unsigned)offsetTableOffsetFromFrameNumberV2:(unsigned int)v2
{
  v4 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v6 = [frames size];

  if (v4 > v6)
  {
    return -2;
  }

  frames2 = [(BMFrameStore *)self frames];
  v7 = [frames2 size] - v4;

  return v7;
}

- ($327AC5C1B3A50B4987650045CBFB5127)offsetTablePtrFromFrameNumberV2:(unsigned int)v2
{
  v4 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v6 = [frames size];

  if (v4 > v6)
  {
    return 0;
  }

  frames2 = [(BMFrameStore *)self frames];
  v7 = ([frames2 end] - v4);

  return v7;
}

- (int)frameCountFromStartTimeV2:(double)v2 endTime:(double)time
{
  result = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (result)
  {
    v8 = result;
    v9 = [(BMFrameStore *)self firstFrameNumberForTimestampV2:0 reverse:v2];
    v10 = [(BMFrameStore *)self firstFrameNumberForTimestampV2:1 reverse:time];
    start = [(BMFrameStore *)self start];
    v12 = atomic_load(start - 2);
    v13 = atomic_load(start - 3);
    if (v12)
    {
      v14 = v13 >= v9;
    }

    else
    {
      v14 = 0;
    }

    if (v14)
    {
      if (v9 || v10 != v8 - 1)
      {

        return [(BMFrameStore *)self countFrameStateInOffsetTable:1 startingFrame:v9 endingFrame:v10];
      }

      else
      {
        return v8 - v12;
      }
    }

    else
    {
      return v10 - v9 + 1;
    }
  }

  return result;
}

- (int)eraseFrameAtOffsetTableV2:(id *)v2
{
  v5 = v2 + 1;
  frames = [(BMFrameStore *)self frames];
  if ([frames end] == v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = (v5->var0.var0.var0.var0.var0 + 3) & 0xFFFFFFFC;
  }

  v8 = v2->var0.var0.var0.var0.var0 - v7 - 8;
  frames2 = [(BMFrameStore *)self frames];
  v10 = ([frames2 start] + v7);

  result = memset_s(v10 + 2, v8, 0, v8);
  *v10 = 0;
  return result;
}

- (unsigned)stateOfFrameV2:(unsigned int)v2
{
  v23 = *MEMORY[0x1E69E9840];
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 <= v2)
  {
    v12 = atomicReadTotalFramesV2;
    v13 = __biome_log_for_category();
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __35__BMFrameStore_V2__stateOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (stateOfFrameV2__onceToken != -1)
    {
      dispatch_once(&stateOfFrameV2__onceToken, block);
    }

    v14 = v20[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v17 = [v15 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v12;
      HIWORD(v20) = 2114;
      v21 = v17;
      _os_log_impl(&dword_1C928A000, v13, v14, "stateOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    return 5;
  }

  v6 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v8 = [frames size];

  if (v6 > v8)
  {
    return 5;
  }

  frames2 = [(BMFrameStore *)self frames];
  v10 = [frames2 end];

  return [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v10 - v6 + 4];
}

- (double)creationTimeOfFrameV2:(unsigned int)v2
{
  v26 = *MEMORY[0x1E69E9840];
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 <= v2)
  {
    v12 = atomicReadTotalFramesV2;
    v13 = __biome_log_for_category();
    *buf = 0;
    v23 = buf;
    v24 = 0x2020000000;
    v25 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __42__BMFrameStore_V2__creationTimeOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (creationTimeOfFrameV2__onceToken != -1)
    {
      dispatch_once(&creationTimeOfFrameV2__onceToken, block);
    }

    v14 = v23[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v17 = [v15 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v23) = 1024;
      *(&v23 + 2) = v12;
      HIWORD(v23) = 2114;
      v24 = v17;
      _os_log_impl(&dword_1C928A000, v13, v14, "creationTimeOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v9 = v19;
  }

  else
  {
    v6 = 16 * (v2 + 1);
    frames = [(BMFrameStore *)self frames];
    v8 = [frames size];

    v9 = 0.0;
    if (v6 <= v8)
    {
      frames2 = [(BMFrameStore *)self frames];
      v11 = [frames2 end] - v6;

      return *(v11 + 8);
    }
  }

  return v9;
}

- (unsigned)sizeOfFrameV2:(unsigned int)v2
{
  v23 = *MEMORY[0x1E69E9840];
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 <= v2)
  {
    v12 = atomicReadTotalFramesV2;
    v13 = __biome_log_for_category();
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__BMFrameStore_V2__sizeOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (sizeOfFrameV2__onceToken != -1)
    {
      dispatch_once(&sizeOfFrameV2__onceToken, block);
    }

    v14 = v20[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v13, v14))
    {
      v15 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v17 = [v15 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v20) = 1024;
      *(&v20 + 2) = v12;
      HIWORD(v20) = 2114;
      v21 = v17;
      _os_log_impl(&dword_1C928A000, v13, v14, "sizeOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    return 0;
  }

  v6 = 16 * (v2 + 1);
  frames = [(BMFrameStore *)self frames];
  v8 = [frames size];

  if (v6 > v8)
  {
    return 0;
  }

  frames2 = [(BMFrameStore *)self frames];
  v10 = ([frames2 end] - v6);

  result = *v10;
  if (v2)
  {
    result -= (v10[4] + 3) & 0xFFFFFFFC;
  }

  return result;
}

- (unsigned)offsetOfFrameV2:(unsigned int)v2
{
  v24 = *MEMORY[0x1E69E9840];
  if (!v2)
  {
    return 0;
  }

  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (atomicReadTotalFramesV2 < v2)
  {
    v6 = atomicReadTotalFramesV2;
    v7 = __biome_log_for_category();
    *buf = 0;
    v21 = buf;
    v22 = 0x2020000000;
    v23 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__BMFrameStore_V2__offsetOfFrameV2___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (offsetOfFrameV2__onceToken != -1)
    {
      dispatch_once(&offsetOfFrameV2__onceToken, block);
    }

    v8 = v21[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v11 = [v9 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = v2;
      LOWORD(v21) = 1024;
      *(&v21 + 2) = v6;
      HIWORD(v21) = 2114;
      v22 = v11;
      _os_log_impl(&dword_1C928A000, v7, v8, "offsetOfFrame requested for frame:%u is beyond totalFrames:%u: %{public}@", buf, 0x18u);
    }

    return 0;
  }

  v12 = 16 * v2;
  frames = [(BMFrameStore *)self frames];
  v14 = [frames size];

  if (v12 > v14)
  {
    return 0;
  }

  frames2 = [(BMFrameStore *)self frames];
  v17 = ([frames2 end] - v12);

  v18 = *v17;
  if (!*v17)
  {
    if ([(BMFrameStore *)self atomicReadFourByteValueAtAddress:v17 + 1]== 4)
    {
      v18 = [(BMFrameStore *)self offsetOfFrameV2:v2 - 1];
    }

    else
    {
      v18 = 0;
    }
  }

  return (v18 + 3) & 0xFFFFFFFC;
}

- (BOOL)getSegmentHeader:(id *)header fromFileV2:(id)v2 fileSize:(unint64_t *)size
{
  v20 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  memset(&v15.st_size, 0, 48);
  if (fstat([v2Copy fd], &v15))
  {
    __error();
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

LABEL_4:

LABEL_24:
    v12 = 0;
    goto LABEL_25;
  }

  if (!v15.st_size)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore getSegmentHeader:v2Copy fromFileV1:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v15.st_size <= 0x37uLL)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

LABEL_23:

    goto LABEL_24;
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  __buf = 0u;
  v10 = pread([v2Copy fd], &__buf, 0x38uLL, 0);
  if (v10 < 0)
  {
    __error();
    v8 = __biome_log_for_category();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

    goto LABEL_4;
  }

  if (v10 != 56)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:? fileSize:?];
    }

    goto LABEL_23;
  }

  if (v17 == 9)
  {
    v11 = 52;
  }

  else
  {
    v11 = 0;
  }

  if (*(&__buf + v11) != *"SEGB")
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) getSegmentHeader:v2Copy fromFileV2:v9 fileSize:?];
    }

    goto LABEL_23;
  }

  if (size)
  {
    *size = v15.st_size;
  }

  if (header)
  {
    v14 = v17;
    *header->var0.var0 = __buf;
    *&header->var2.var3 = v14;
    *(&header->var2 + 2) = v18;
    *(&header->var2 + 6) = v19;
  }

  v12 = 1;
LABEL_25:

  return v12;
}

+ (BOOL)writeEmptySegmentHeaderWithFileHandleV2:(id)v2 segmentHeaderSize:(unint64_t *)size
{
  v2Copy = v2;
  if (size)
  {
    *size = 32;
  }

  v12[0] = *"SEGB";
  v12[1] = 0;
  Current = CFAbsoluteTimeGetCurrent();
  v14 = xmmword_1C92B8400;
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v12 length:32];
  v11 = 0;
  v7 = [v2Copy overwriteWithData:v6 error:&v11];
  v8 = v11;
  if (v8)
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeEmptySegmentHeaderWithFileHandleV1:v2Copy segmentHeaderSize:?];
    }
  }

  return v7;
}

- (BMFrameStore)initWithFileHandleV2:(id)v2 permission:(unint64_t)permission
{
  v89 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  v81.receiver = self;
  v81.super_class = BMFrameStore;
  v8 = [(BMFrameStore *)&v81 init];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_57;
  }

  [(BMFrameStore *)v8 setBackingFile:v2Copy];
  [(BMFrameStore *)v9 setDatastoreVersion:10];
  v80 = 0;
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  if (![(BMFrameStore *)v9 getSegmentHeader:&v85 fromFileV2:v2Copy fileSize:&v80])
  {
    v4 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (initWithFileHandleV2_permission__onceToken != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken, block);
    }

    v11 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v4, v11))
    {
      goto LABEL_11;
    }

    v12 = MEMORY[0x1E698E9C8];
    attributes = [v2Copy attributes];
    path = [attributes path];
    v15 = [v12 privacyPathname:path];
    *buf = 138543362;
    *&buf[4] = v15;
    _os_log_impl(&dword_1C928A000, v4, v11, "Cannot create frame store from segment file: %{public}@", buf, 0xCu);

    goto LABEL_9;
  }

  [(BMFrameStore *)v9 setDatastoreVersion:v86];
  if ([(BMFrameStore *)v9 datastoreVersion]== 9)
  {
    v10 = [(BMFrameStore *)v9 initWithFileHandleV1:v2Copy permission:permission];
LABEL_58:
    v9 = v10;
    v16 = v10;
    goto LABEL_59;
  }

  if (v86 != 10)
  {
    v4 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v78[0] = MEMORY[0x1E69E9820];
    v78[1] = 3221225472;
    v78[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke_6;
    v78[3] = &unk_1E8338B28;
    v78[4] = buf;
    if (initWithFileHandleV2_permission__onceToken_5 != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken_5, v78);
    }

    v17 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v4, v17))
    {
      v18 = MEMORY[0x1E698E9C8];
      backingFile = [(BMFrameStore *)v9 backingFile];
      attributes2 = [backingFile attributes];
      path2 = [attributes2 path];
      v22 = [v18 privacyPathname:path2];
      v23 = v86;
      datastoreVersion = [(BMFrameStore *)v9 datastoreVersion];
      *buf = 138543874;
      *&buf[4] = v22;
      *&buf[12] = 1026;
      *&buf[14] = v23;
      *&buf[18] = 1026;
      *&buf[20] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v4, v17, "Segment version of %{public}@ doesn't match expected versions. Header set to %{public}d, preferred %{public}d.", buf, 0x18u);
    }

    goto LABEL_11;
  }

  if ((permission & 0xFFFFFFFFFFFFFFFDLL) == 0 && !DWORD1(v85))
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) initWithFileHandleV2:v9 permission:?];
    }

    goto LABEL_11;
  }

  v25 = (v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  [(BMFrameStore *)v9 setFrameStoreSize:v25];
  [(BMFrameStore *)v9 setPermission:permission];
  if (permission == 2 || permission == 1)
  {
    v26 = [[BMMemoryMapping alloc] initWithSize:32 protection:2 advice:1 offset:0];
    v27 = [BMMemoryMapping alloc];
    v28 = v25 - 32;
    v29 = 2;
    goto LABEL_26;
  }

  if (!permission)
  {
    v26 = [[BMMemoryMapping alloc] initWithSize:32 protection:1 advice:1 offset:0];
    v27 = [BMMemoryMapping alloc];
    v28 = v25 - 32;
    v29 = 1;
LABEL_26:
    v30 = [(BMMemoryMapping *)v27 initWithSize:v28 protection:v29 advice:2 offset:32];
    *buf = v26;
    *&buf[8] = v30;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
  }

  lastObject = [v4 lastObject];
  [(BMFrameStore *)v9 setFrames:lastObject];

  if ([v4 count]>= 2)
  {
    firstObject = [v4 firstObject];
    [(BMFrameStore *)v9 setHeader:firstObject];
  }

  header = [(BMFrameStore *)v9 header];

  if (permission && !header)
  {
    v34 = __biome_log_for_category();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore initWithFileHandleV1:permission:];
    }
  }

  header2 = [(BMFrameStore *)v9 header];
  if (header2)
  {
    v36 = header2;
    header3 = [(BMFrameStore *)v9 header];
    backingFile2 = [(BMFrameStore *)v9 backingFile];
    v39 = [header3 mapWithFileHandle:backingFile2 fileSize:v25];

    if ((v39 & 1) == 0)
    {
      v40 = __biome_log_for_category();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore(V2) initWithFileHandleV2:v9 permission:?];
      }
    }
  }

  frames = [(BMFrameStore *)v9 frames];
  backingFile3 = [(BMFrameStore *)v9 backingFile];
  v43 = [frames mapWithFileHandle:backingFile3 fileSize:v25];

  if ((v43 & 1) == 0)
  {
    v15 = __biome_log_for_category();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) initWithFileHandleV2:v9 permission:?];
    }

    goto LABEL_10;
  }

  if (permission != 1 || !DWORD1(v85))
  {
    goto LABEL_56;
  }

  if (v25 < 16 * DWORD1(v85))
  {
    v15 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v77[0] = MEMORY[0x1E69E9820];
    v77[1] = 3221225472;
    v77[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke_8;
    v77[3] = &unk_1E8338B28;
    v77[4] = buf;
    if (initWithFileHandleV2_permission__onceToken_7 != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken_7, v77);
    }

    v44 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v15, v44))
    {
      v45 = MEMORY[0x1E698E9C8];
      backingFile4 = [(BMFrameStore *)v9 backingFile];
      attributes3 = [backingFile4 attributes];
      path3 = [attributes3 path];
      v49 = [v45 privacyPathname:path3];
      *buf = 138543874;
      *&buf[4] = v49;
      *&buf[12] = 2048;
      *&buf[14] = v80;
      *&buf[22] = 1024;
      *&buf[24] = DWORD1(v85);
      _os_log_impl(&dword_1C928A000, v15, v44, "Attempted to open %{public}@ for writing but the file size is: %zu, which lacks space for an offsetTable with %d frames", buf, 0x1Cu);
    }

    goto LABEL_10;
  }

  v50 = 16 * DWORD1(v85);
  frames2 = [(BMFrameStore *)v9 frames];
  v52 = ([frames2 end] - v50);

  if ([(BMFrameStore *)v9 atomicReadFourByteValueAtAddress:v52 + 1]== 4)
  {
    v15 = __biome_log_for_category();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    v53 = MEMORY[0x1E698E9C8];
    backingFile5 = [(BMFrameStore *)v9 backingFile];
    attributes4 = [backingFile5 attributes];
    path4 = [attributes4 path];
    attributes = [v53 privacyPathname:path4];
    *buf = 138543618;
    *&buf[4] = attributes;
    *&buf[12] = 2048;
    *&buf[14] = v80;
    v57 = "Attempted to open %{public}@ for writing but the file is already full, and has an EOF, fileSize:%zu";
    v58 = v15;
    v59 = 22;
    goto LABEL_52;
  }

  v60 = *v52 + 3;
  v61 = v60 & 0xFFFFFFFC;
  frames3 = [(BMFrameStore *)v9 frames];
  v63 = [frames3 size] - v50;

  if (v63 < (v60 & 0xFFFFFFFC) || v60 < 0)
  {
    v15 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v76[0] = MEMORY[0x1E69E9820];
    v76[1] = 3221225472;
    v76[2] = __52__BMFrameStore_V2__initWithFileHandleV2_permission___block_invoke_10;
    v76[3] = &unk_1E8338B28;
    v76[4] = buf;
    if (initWithFileHandleV2_permission__onceToken_9 != -1)
    {
      dispatch_once(&initWithFileHandleV2_permission__onceToken_9, v76);
    }

    v67 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v15, v67))
    {
      v68 = MEMORY[0x1E698E9C8];
      backingFile6 = [(BMFrameStore *)v9 backingFile];
      attributes5 = [backingFile6 attributes];
      path5 = [attributes5 path];
      v69 = [v68 privacyPathname:path5];
      frames4 = [(BMFrameStore *)v9 frames];
      start = [frames4 start];
      *buf = 138544130;
      *&buf[4] = v69;
      *&buf[12] = 1024;
      *&buf[14] = v61;
      *&buf[18] = 2048;
      *&buf[20] = v52 - start;
      v83 = 2048;
      v84 = v80;
      _os_log_impl(&dword_1C928A000, v15, v67, "Segment %{public}@ indicates an endOfFrames value: %d in the last offsetTableEntry (offset): %ld beyond the data space size: %zu", buf, 0x26u);
    }

    goto LABEL_10;
  }

  frames5 = [(BMFrameStore *)v9 frames];
  v65 = [frames5 size] - v50 - v61;

  if (v65 > 0x17)
  {
LABEL_56:

LABEL_57:
    v10 = v9;
    goto LABEL_58;
  }

  v15 = __biome_log_for_category();
  if (!os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    goto LABEL_10;
  }

  v72 = MEMORY[0x1E698E9C8];
  backingFile5 = [(BMFrameStore *)v9 backingFile];
  attributes4 = [backingFile5 attributes];
  path4 = [attributes4 path];
  attributes = [v72 privacyPathname:path4];
  *buf = 138543874;
  *&buf[4] = attributes;
  *&buf[12] = 1024;
  *&buf[14] = v65;
  *&buf[18] = 2048;
  *&buf[20] = v80;
  v57 = "Attempted to open %{public}@ for writing but the file is already full, remaining space:%d, fileSize:%zu";
  v58 = v15;
  v59 = 28;
LABEL_52:
  _os_log_impl(&dword_1C928A000, v58, OS_LOG_TYPE_INFO, v57, buf, v59);

LABEL_9:
LABEL_10:

LABEL_11:
  v16 = 0;
LABEL_59:

  return v16;
}

- (id)_printablePathV2
{
  cachedPrintablePathV2 = [(BMFrameStore *)self cachedPrintablePathV2];

  if (!cachedPrintablePathV2)
  {
    v4 = MEMORY[0x1E698E9C8];
    backingFile = [(BMFrameStore *)self backingFile];
    attributes = [backingFile attributes];
    path = [attributes path];
    v8 = [v4 privacyPathname:path];
    [(BMFrameStore *)self setCachedPrintablePathV2:v8];
  }

  return [(BMFrameStore *)self cachedPrintablePathV2];
}

- (BOOL)isValidFrameV2:(void *)v2 currentFrame:(unsigned int)frame expectedState:(unsigned int)state copyOfData:(id *)data frameState:(unsigned int)frameState frameSize:(unsigned int)size validations:(BOOL)validations enumerationOptions:(unint64_t)self0 errorCode:(int *)self1
{
  v11 = *&size;
  v68[1] = *MEMORY[0x1E69E9840];
  v15 = v2 & 3;
  if ((v2 & 3) != 0)
  {
    v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isValidFrameV2: Frame is not 4-byte aligned:%d", v2];
    v17 = objc_alloc(MEMORY[0x1E696ABC0]);
    v67 = *MEMORY[0x1E696A578];
    v68[0] = v16;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    v19 = [v17 initWithDomain:@"com.apple.Biome.BMFramestore" code:1 userInfo:v18];
  }

  else
  {
    v19 = 0;
  }

  v20 = v15 == 0;
  frames = [(BMFrameStore *)self frames];
  v22 = [frames end];

  if (!v20)
  {
    goto LABEL_23;
  }

  v23 = v22 - (v2 + 8);
  if ((v23 & 0x8000000000000000) != 0 || v23 < v11)
  {
    frames2 = [(BMFrameStore *)self frames];
    start = [frames2 start];

    v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"isValidFrameV2: Frame size:%d runs past the remaining free space in the segment:%td, frame intended to start at offset:%td", v11, v23, v2 - start];
    v29 = objc_alloc(MEMORY[0x1E696ABC0]);
    v65 = *MEMORY[0x1E696A578];
    v66 = v28;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
    v31 = [v29 initWithDomain:@"com.apple.Biome.BMFramestore" code:2 userInfo:v30];

LABEL_22:
    v19 = v31;
    goto LABEL_23;
  }

  if (frameState != state && validations)
  {
    v24 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (state >= 6)
    {
      state = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", state];
    }

    else
    {
      state = *(&off_1E8338F30 + state);
    }

    if (frameState >= 6)
    {
      frameState = [MEMORY[0x1E696AEC0] stringWithFormat:@"BMFrameStateUnknown(%lu)", frameState];
    }

    else
    {
      frameState = *(&off_1E8338F30 + frameState);
    }

    v38 = [v24 initWithFormat:@"isValidFrame: Unexpected frame state. Expected: %@, found: %@", state, frameState];

    v39 = objc_alloc(MEMORY[0x1E696ABC0]);
    v63 = *MEMORY[0x1E696A578];
    v64 = v38;
    v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v31 = [v39 initWithDomain:@"com.apple.Biome.BMFramestore" code:3 userInfo:v40];

    goto LABEL_22;
  }

  if (!data)
  {
    goto LABEL_16;
  }

  v32 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v2 + 8 length:v11 - 8];
  v33 = *data;
  *data = v32;

  v34 = 1;
  if (state - 1 > 1 || !validations)
  {
    goto LABEL_40;
  }

  v35 = *data;
  Checksum = bm_generateChecksum([v35 bytes], v11 - 8);

  if (Checksum == *v2)
  {
LABEL_16:
    v34 = 1;
    goto LABEL_40;
  }

  checksum = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Checksums don't match. Header: %u, Generated checksum: %u. Skipping frame.", *v2, Checksum];
  v51 = objc_alloc(MEMORY[0x1E696ABC0]);
  v61 = *MEMORY[0x1E696A578];
  v62 = checksum;
  v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  v53 = [v51 initWithDomain:@"com.apple.Biome.BMFramestore" code:5 userInfo:v52];

  v54 = *data;
  *data = 0;

  v19 = v53;
LABEL_23:
  code = [v19 code];
  if (code)
  {
    *code = code;
  }

  if (code == 5 || code == 3)
  {
    v42 = [(BMFrameStore *)self stateOfFrameV2:frame];
    if ((options & 1) != 0 && v42 == 3 || (options & 2) != 0 && v42 == 2)
    {
      v43 = 0;
      v34 = 1;
    }

    else
    {
      v34 = 0;
      v43 = (v42 & 0xFFFFFFFE) != 2;
    }
  }

  else
  {
    v34 = 0;
    v43 = 1;
  }

  frames3 = [(BMFrameStore *)self frames];
  start2 = [frames3 start];

  if (v43)
  {
    v46 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v60) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __135__BMFrameStore_V2__isValidFrameV2_currentFrame_expectedState_copyOfData_frameState_frameSize_validations_enumerationOptions_errorCode___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (isValidFrameV2_currentFrame_expectedState_copyOfData_frameState_frameSize_validations_enumerationOptions_errorCode__onceToken != -1)
    {
      dispatch_once(&isValidFrameV2_currentFrame_expectedState_copyOfData_frameState_frameSize_validations_enumerationOptions_errorCode__onceToken, block);
    }

    v47 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v46, v47))
    {
      _printablePathV2 = [(BMFrameStore *)self _printablePathV2];
      *buf = 138543874;
      *&buf[4] = _printablePathV2;
      *&buf[12] = 2048;
      *&buf[14] = v2 - start2;
      *&buf[22] = 2112;
      v60 = v19;
      _os_log_impl(&dword_1C928A000, v46, v47, "isValidFrame failed, path:%{public}@, offset:%td error:%@", buf, 0x20u);
    }
  }

LABEL_40:

  return v34;
}

- (id)frameWithOffsetV2:(unint64_t)v2 expectedState:(unsigned int)state
{
  v40 = *MEMORY[0x1E69E9840];
  if ((v2 & 3) != 0)
  {
    v5 = __biome_log_for_category();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) frameWithOffsetV2:expectedState:];
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v6 = *&state;
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  v2Copy = v2;
  if (!v2)
  {
    frames = [(BMFrameStore *)self frames];
    v2Copy = [frames size] - 16;
  }

  frames2 = [(BMFrameStore *)self frames];
  v12 = [frames2 size] - 16 * atomicReadTotalFramesV2;

  if (v2Copy < v12)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      frames3 = [(BMFrameStore *)self frames];
      *buf = 134218496;
      *&buf[4] = v2;
      *&buf[12] = 2048;
      *&buf[14] = [frames3 size] - 16 * atomicReadTotalFramesV2;
      *&buf[22] = 1024;
      LODWORD(v39) = atomicReadTotalFramesV2;
      _os_log_error_impl(&dword_1C928A000, v13, OS_LOG_TYPE_ERROR, "frameWithOffsetV2: offset (%lu) is above the offset table (%lu), totalFrames:%d", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  v16 = [(BMFrameStore *)self frameNumberFromOffsetToOffsetTableEntryV2:v2Copy];
  v17 = [(BMFrameStore *)self offsetOfFrameV2:v16];
  frames4 = [(BMFrameStore *)self frames];
  v19 = ([frames4 start] + v17);

  frames5 = [(BMFrameStore *)self frames];
  v21 = [frames5 start] + v2Copy;

  v37 = 0;
  v22 = 2 * (v6 == 2);
  if (v6 == 3)
  {
    v22 = 1;
  }

  LOBYTE(v35) = 1;
  v23 = [(BMFrameStore *)self isValidFrameV2:v19 currentFrame:v16 expectedState:v6 copyOfData:&v37 frameState:*(v21 + 4) frameSize:*v21 - v17 validations:v35 enumerationOptions:v22 errorCode:0];
  v14 = 0;
  if (v23)
  {
    v24 = *v19;
    v25 = [BMFrame alloc];
    backingFile = [(BMFrameStore *)self backingFile];
    attributes = [backingFile attributes];
    path = [attributes path];
    v29 = v37;
    frames6 = [(BMFrameStore *)self frames];
    start = [frames6 start];
    v32 = *(v21 + 8);
    v33 = *(v21 + 4);
    *buf = v24;
    *&buf[16] = 0;
    v39 = 0;
    *&buf[8] = 0;
    LODWORD(v36) = v33;
    v14 = [(BMFrame *)v25 initWithHeader:buf storePath:path data:v29 framePtr:v21 offset:v2 nextOffset:v21 - start + 16 timestamp:v32 datastoreVersion:10 state:v36];
  }

LABEL_12:

  return v14;
}

- (void)enumerateWithOptionsV2:(unint64_t)v2 fromOffset:(unint64_t)offset usingBlock:(id)block
{
  v150 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (!blockCopy)
  {
    [BMFrameStore(V2) enumerateWithOptionsV2:a2 fromOffset:self usingBlock:?];
  }

  if (offset == 4294967294)
  {
    goto LABEL_65;
  }

  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (!atomicReadTotalFramesV2)
  {
    goto LABEL_65;
  }

  v11 = atomicReadTotalFramesV2;
  if ([(BMFrameStore *)self frameStoreSize]< 16 * atomicReadTotalFramesV2)
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v148[0] = MEMORY[0x1E69E9820];
    v148[1] = 3221225472;
    v148[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke;
    v148[3] = &unk_1E8338B28;
    v148[4] = buf;
    if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken != -1)
    {
      dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken, v148);
    }

    v13 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_64;
    }

    frameStoreSize = [(BMFrameStore *)self frameStoreSize];
    v15 = MEMORY[0x1E698E9C8];
    segmentPath = [(BMFrameStore *)self segmentPath];
    v17 = [v15 privacyPathname:segmentPath];
    *buf = 67109634;
    *&buf[4] = v11;
    *&buf[8] = 2048;
    *&buf[10] = frameStoreSize;
    *&buf[18] = 2114;
    *&buf[20] = v17;
    v18 = "enumerateWithOptions: frameStore has totalFrames: %d but file size is too small: %zu in segment: %{public}@";
    v19 = v12;
    v20 = v13;
    v21 = 28;
    goto LABEL_10;
  }

  if (offset != 0xFFFFFFFF && offset)
  {
    LODWORD(v22) = [(BMFrameStore *)self frameNumberFromOffsetToOffsetTableEntryV2:offset];
    frames = [(BMFrameStore *)self frames];
    v24 = [frames start] + offset;
  }

  else
  {
    if ((v2 & 8) != 0)
    {
      v22 = (v11 - 1);
    }

    else
    {
      v22 = 0;
    }

    v23 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:v22];
    if (!v23)
    {
      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 16;
      v147[0] = MEMORY[0x1E69E9820];
      v147[1] = 3221225472;
      v147[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_42;
      v147[3] = &unk_1E8338B28;
      v147[4] = buf;
      if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_41 != -1)
      {
        dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_41, v147);
      }

      v33 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (!os_log_type_enabled(v12, v33))
      {
        goto LABEL_64;
      }

      v34 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v36 = [v34 privacyPathname:segmentPath2];
      *buf = 67109378;
      *&buf[4] = v22;
      *&buf[8] = 2114;
      *&buf[10] = v36;
      v37 = "enumerateWithOptionsV2: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@";
      v38 = v12;
      v39 = v33;
      v40 = 18;
LABEL_39:
      _os_log_impl(&dword_1C928A000, v38, v39, v37, buf, v40);

      goto LABEL_64;
    }

    v24 = v23;
  }

  if (v22 == v11)
  {
    if ((v2 & 8) == 0)
    {
      goto LABEL_65;
    }

    LODWORD(v22) = v11 - 1;
    v24 += 16;
  }

  if ((v22 & 0x80000000) != 0 || v22 > v11 || !v24)
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v146[0] = MEMORY[0x1E69E9820];
    v146[1] = 3221225472;
    v146[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_44;
    v146[3] = &unk_1E8338B28;
    v146[4] = buf;
    if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_43 != -1)
    {
      dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_43, v146);
    }

    v29 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v12, v29))
    {
      v30 = MEMORY[0x1E698E9C8];
      segmentPath3 = [(BMFrameStore *)self segmentPath];
      v32 = [v30 privacyPathname:segmentPath3];
      *buf = 134218754;
      *&buf[4] = offset;
      *&buf[12] = 1024;
      *&buf[14] = v22;
      *&buf[18] = 1024;
      *&buf[20] = v11;
      *&buf[24] = 2114;
      *&buf[26] = v32;
      _os_log_impl(&dword_1C928A000, v12, v29, "enumerateWithOptions: offset:%zu outside of range for frames, mapping to frame: %d when segment has only %d frames in segment: %{public}@", buf, 0x22u);
    }

    goto LABEL_64;
  }

  v26 = (v11 - 1);
  v27 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:v26];
  if (!v27)
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    buf[24] = 16;
    v145[0] = MEMORY[0x1E69E9820];
    v145[1] = 3221225472;
    v145[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_46;
    v145[3] = &unk_1E8338B28;
    v145[4] = buf;
    if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_45 != -1)
    {
      dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_45, v145);
    }

    v41 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (!os_log_type_enabled(v12, v41))
    {
      goto LABEL_64;
    }

    v42 = MEMORY[0x1E698E9C8];
    segmentPath = [(BMFrameStore *)self segmentPath];
    v17 = [v42 privacyPathname:segmentPath];
    *buf = 67109634;
    *&buf[4] = v22;
    *&buf[8] = 1024;
    *&buf[10] = v11;
    *&buf[14] = 2114;
    *&buf[16] = v17;
    v18 = "enumerateWithOptionsV2: lastOffsetTable:NULL outside of range for frames, mapping to frame: %d when segment has only %d frames in segment: %{public}@";
    v19 = v12;
    v20 = v41;
    v21 = 24;
LABEL_10:
    _os_log_impl(&dword_1C928A000, v19, v20, v18, buf, v21);

LABEL_64:
    goto LABEL_65;
  }

  v28 = v27;
  if ([(BMFrameStore *)self atomicReadFourByteValueAtAddress:&v27->var0.var0.var0.var1 + 4]!= 4)
  {
LABEL_45:
    v26 = v11;
    if ((v2 & 8) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_50;
  }

  ++v28;
  if ((v2 & 8) == 0 || v26 != v22)
  {
    v11 = (v11 - 1);
    goto LABEL_45;
  }

  LODWORD(v22) = v11 - 2;
  if (v11 - 2 < 0)
  {
    goto LABEL_65;
  }

  v24 += 16;
LABEL_50:
  while (![(BMFrameStore *)self atomicReadEightByteValueAtAddress:v24])
  {
    v24 += 16;
    v76 = v22 <= 0;
    LODWORD(v22) = v22 - 1;
    if (v76)
    {
      goto LABEL_65;
    }
  }

LABEL_46:
  if (v26)
  {
    while (![(BMFrameStore *)self atomicReadEightByteValueAtAddress:v28])
    {
      ++v28;
      v26 = (v26 - 1);
      if (!v26)
      {
        goto LABEL_65;
      }
    }

    v43 = (v28->var0.var0.var0.var0.var0 + 3) & 0xFFFFFFFC;
    if ([(BMFrameStore *)self frameStoreSize]< v43)
    {
      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 16;
      v144[0] = MEMORY[0x1E69E9820];
      v144[1] = 3221225472;
      v144[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_48;
      v144[3] = &unk_1E8338B28;
      v144[4] = buf;
      if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_47 != -1)
      {
        dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_47, v144);
      }

      v44 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (!os_log_type_enabled(v12, v44))
      {
        goto LABEL_64;
      }

      frameStoreSize2 = [(BMFrameStore *)self frameStoreSize];
      v46 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v36 = [v46 privacyPathname:segmentPath2];
      *buf = 67109634;
      *&buf[4] = v43;
      *&buf[8] = 2048;
      *&buf[10] = frameStoreSize2;
      *&buf[18] = 2114;
      *&buf[20] = v36;
      v37 = "enumerateWithOptions: byteAfterLastFramesDataAtEnumerationStart: %u is larger than the segmentSize: %zu in segment: %{public}@";
      v38 = v12;
      v39 = v44;
      v40 = 28;
      goto LABEL_39;
    }

    v47 = [(BMFrameStore *)self offsetTableOffsetFromFrameNumberV2:(v26 - 1)];
    if (v47 < v43)
    {
      v48 = v47;
      v12 = __biome_log_for_category();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      buf[24] = 16;
      v143[0] = MEMORY[0x1E69E9820];
      v143[1] = 3221225472;
      v143[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_50;
      v143[3] = &unk_1E8338B28;
      v143[4] = buf;
      if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_49 != -1)
      {
        dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_49, v143);
      }

      v49 = *(*&buf[8] + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v12, v49))
      {
        v50 = MEMORY[0x1E698E9C8];
        segmentPath4 = [(BMFrameStore *)self segmentPath];
        v52 = [v50 privacyPathname:segmentPath4];
        *buf = 67109634;
        *&buf[4] = v43;
        *&buf[8] = 1024;
        *&buf[10] = v48;
        *&buf[14] = 2114;
        *&buf[16] = v52;
        _os_log_impl(&dword_1C928A000, v12, v49, "enumerateWithOptions: byteAfterLastFramesDataAtEnumerationStart: %u is beyond the offset for the last table offset entry %u in segment: %{public}@", buf, 0x18u);
      }

      goto LABEL_64;
    }

    v142 = 0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v55 = v54;

    if (![(BMFrameStore *)self permission]&& [(BMFrameStore *)self pruneOnAccess]&& [(BMFrameStore *)self filterByAgeOnRead]&& ([(BMFrameStore *)self maxAge], v56 > 0.0))
    {
      Current = CFAbsoluteTimeGetCurrent();
      [(BMFrameStore *)self maxAge];
      v55 = Current - v58;
      v116 = 1;
    }

    else
    {
      v116 = 0;
    }

    v126 = v43;
    v122 = v43 - 1;
    v59 = v22 - 1;
    if ((v2 & 8) != 0)
    {
      v60 = -16;
    }

    else
    {
      v60 = 16;
    }

    v61 = -16;
    if ((v2 & 8) != 0)
    {
      v61 = 16;
      v62 = -1;
    }

    else
    {
      v62 = 1;
    }

    if ((v2 & 8) != 0)
    {
      v59 = v22 + 1;
    }

    v63 = v59 + v62;
    v123 = v62;
    v64 = v59 + 2 * v62;
    v124 = v61;
    v128 = v24 + 2 * v61;
    v130 = v24 + v61;
    v134 = v24 + v61;
    v125 = v60;
    do
    {
      v129 = v64;
      context = objc_autoreleasePoolPush();
      if ((v63 & 0x80000000) != 0 || v63 >= v26)
      {
LABEL_161:
        objc_autoreleasePoolPop(context);
        break;
      }

      v133 = v63;
      if (v63)
      {
        v65 = *(v134 + v60 + 16);
        v66 = (v65 + 3) & 0xFFFFFFFC;
        if (v122 < v66)
        {
          if (v66 == v126)
          {
            goto LABEL_161;
          }

          v67 = __biome_log_for_category();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x2020000000;
          buf[24] = 16;
          v141[0] = MEMORY[0x1E69E9820];
          v141[1] = 3221225472;
          v141[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_52;
          v141[3] = &unk_1E8338B28;
          v141[4] = buf;
          if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_51 != -1)
          {
            dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_51, v141);
          }

          v68 = *(*&buf[8] + 24);
          _Block_object_dispose(buf, 8);
          if (os_log_type_enabled(v67, v68))
          {
            v69 = MEMORY[0x1E698E9C8];
            segmentPath5 = [(BMFrameStore *)self segmentPath];
            v71 = [v69 privacyPathname:segmentPath5];
            *buf = 67109890;
            *&buf[4] = (v65 + 3) & 0xFFFFFFFC;
            *&buf[8] = 1024;
            *&buf[10] = v126;
            *&buf[14] = 1024;
            *&buf[16] = v26;
            *&buf[20] = 2112;
            *&buf[22] = v71;
            _os_log_impl(&dword_1C928A000, v67, v68, "enumerateWithOptions: offset (%u) beyond the space used:%u by the currentFrameCount:%d  segment:%@", buf, 0x1Eu);
          }

          v60 = v125;
          v66 = (v65 + 3) & 0xFFFFFFFC;
          if ((v2 & 8) == 0)
          {
            goto LABEL_157;
          }
        }
      }

      else
      {
        v65 = 0;
        v66 = 0;
      }

      v72 = v134 + v60 + 4;
      v131 = v66;
      v73 = *(v134 + v60) - v66;
      v74 = [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v72];
      v75 = v74;
      if (v126)
      {
        v76 = v73 > v126;
      }

      else
      {
        v76 = 0;
      }

      v77 = v76;
      if (v65)
      {
        v78 = 1;
      }

      else
      {
        v78 = v133 == 0;
      }

      if (!v78 || v77)
      {
        v80 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_54;
        block[3] = &unk_1E8338B28;
        block[4] = buf;
        if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_53 != -1)
        {
          dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_53, block);
        }

        v81 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v80, v81))
        {
          v82 = MEMORY[0x1E698E9C8];
          [(BMFrameStore *)self segmentPath];
          v83 = loga = v80;
          v84 = [v82 privacyPathname:v83];
          *buf = 67110402;
          *&buf[4] = v131;
          *&buf[8] = 1024;
          *&buf[10] = v126;
          *&buf[14] = 1024;
          *&buf[16] = v26;
          *&buf[20] = 1024;
          *&buf[22] = v75;
          *&buf[26] = 1024;
          *&buf[28] = v65;
          *&buf[32] = 2112;
          *&buf[34] = v84;
          _os_log_impl(&dword_1C928A000, loga, v81, "enumerateWithOptions: offset (%u) beyond the space used:%u by the currentFrameCount:%d, state:%d prevOffsetToByteAFterFrame:%d  segment:%@", buf, 0x2Au);

          v80 = loga;
        }

LABEL_115:
        v60 = v125;
LABEL_116:

        goto LABEL_157;
      }

      if (v74 > 2)
      {
        v79 = v131;
        switch(v74)
        {
          case 3:
            if ((v2 & 1) == 0)
            {
              goto LABEL_157;
            }

            goto LABEL_135;
          case 4:
            goto LABEL_134;
          case 5:
            v85 = __biome_log_for_category();
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            buf[24] = 16;
            v139[0] = MEMORY[0x1E69E9820];
            v139[1] = 3221225472;
            v139[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_56;
            v139[3] = &unk_1E8338B28;
            v139[4] = buf;
            if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_55 != -1)
            {
              dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_55, v139);
            }

            v86 = *(*&buf[8] + 24);
            _Block_object_dispose(buf, 8);
            if (os_log_type_enabled(v85, v86))
            {
              v87 = MEMORY[0x1E698E9C8];
              segmentPath6 = [(BMFrameStore *)self segmentPath];
              v89 = [v87 privacyPathname:segmentPath6];
              *buf = 67109378;
              *&buf[4] = v131;
              *&buf[8] = 2114;
              *&buf[10] = v89;
              _os_log_impl(&dword_1C928A000, v85, v86, "Found frame with state: BMFrameStateUnknown at offset:%u in segment: %{public}@", buf, 0x12u);
            }

            v60 = v125;
            v80 = v85;
            goto LABEL_116;
        }

LABEL_127:
        v80 = __biome_log_for_category();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        buf[24] = 16;
        v138[0] = MEMORY[0x1E69E9820];
        v138[1] = 3221225472;
        v138[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_58;
        v138[3] = &unk_1E8338B28;
        v138[4] = buf;
        if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_57 != -1)
        {
          dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_57, v138);
        }

        v90 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
        if (os_log_type_enabled(v80, v90))
        {
          _printablePathV2 = [(BMFrameStore *)self _printablePathV2];
          *buf = 67110402;
          *&buf[4] = v75;
          *&buf[8] = 1024;
          *&buf[10] = v133;
          *&buf[14] = 2114;
          *&buf[16] = _printablePathV2;
          *&buf[24] = 1024;
          *&buf[26] = v131;
          *&buf[30] = 1024;
          *&buf[32] = v73;
          *&buf[36] = 1024;
          *&buf[38] = (v2 & 8) >> 3;
          _os_log_impl(&dword_1C928A000, v80, v90, "Unrecognized frame state: %d, frame number:%d, segment:%{public}@ offset:%u frame size:%u reverse:%d", buf, 0x2Au);
        }

        goto LABEL_115;
      }

      v79 = v131;
      if (v74)
      {
        if (v74 == 1)
        {
          if (v116)
          {
            v92 = *(v134 + v60 + 8);
            if ((v2 & 8) != 0 && v92 < v55)
            {
LABEL_134:
              v142 = 1;
            }

            else if (v92 < v55)
            {
              goto LABEL_157;
            }
          }

LABEL_135:
          if (v142)
          {
            goto LABEL_161;
          }

          v93 = v73;
          v94 = v79;
          log = [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v72];
          v137 = 0;
          frames2 = [(BMFrameStore *)self frames];
          v96 = [frames2 start] + v94;

          v97 = v96;
          v136 = 0;
          if (log == 1)
          {
            v98 = &v137;
          }

          else
          {
            v98 = 0;
          }

          LOBYTE(v114) = log == 1;
          if ([(BMFrameStore *)self isValidFrameV2:v96 currentFrame:v133 expectedState:1 copyOfData:v98 frameState:log frameSize:v93 validations:v114 enumerationOptions:v2 errorCode:&v136])
          {
            frames3 = [(BMFrameStore *)self frames];
            start = [frames3 start];

            if ((v129 & 0x80000000) != 0 || v129 > v26)
            {
              if ((v2 & 8) != 0)
              {
                v108 = 4294967294;
              }

              else
              {
                v108 = [(BMFrameStore *)self offsetTableOffsetFromFrameNumberV2:v26];
              }

              v132 = v108;
              v101 = v125;
            }

            else
            {
              v101 = v125;
              v132 = v125 + v128 - start;
            }

            v119 = v101 + v130 - start;
            v117 = *v97;
            v118 = [BMFrame alloc];
            backingFile = [(BMFrameStore *)self backingFile];
            attributes = [backingFile attributes];
            path = [attributes path];
            v112 = *(v134 + v101 + 8);
            *buf = v117;
            memset(&buf[8], 0, 24);
            LODWORD(v115) = log;
            v102 = [(BMFrame *)v118 initWithHeader:buf storePath:path data:v137 framePtr:v134 + v101 offset:v119 nextOffset:v132 timestamp:v112 datastoreVersion:10 state:v115];

            v113 = v137;
            v137 = 0;

            blockCopy[2](blockCopy, v102, &v142);
            v60 = v101;
            goto LABEL_155;
          }

          v60 = v125;
          if (v136 != 5 || [(BMFrameStore *)self atomicReadFourByteValueAtAddress:v72]== 1)
          {
            v102 = __biome_log_for_category();
            *buf = 0;
            *&buf[8] = buf;
            *&buf[16] = 0x2020000000;
            buf[24] = 16;
            v135[0] = MEMORY[0x1E69E9820];
            v135[1] = 3221225472;
            v135[2] = __65__BMFrameStore_V2__enumerateWithOptionsV2_fromOffset_usingBlock___block_invoke_60;
            v135[3] = &unk_1E8338B28;
            v135[4] = buf;
            if (enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_59 != -1)
            {
              dispatch_once(&enumerateWithOptionsV2_fromOffset_usingBlock__onceToken_59, v135);
            }

            v103 = *(*&buf[8] + 24);
            _Block_object_dispose(buf, 8);
            if (os_log_type_enabled(v102, v103))
            {
              v104 = v136;
              v105 = MEMORY[0x1E698E9C8];
              segmentPath7 = [(BMFrameStore *)self segmentPath];
              v107 = [v105 privacyPathname:segmentPath7];
              *buf = 67109890;
              *&buf[4] = v104;
              *&buf[8] = 1024;
              *&buf[10] = v133;
              *&buf[14] = 1024;
              *&buf[16] = v131;
              *&buf[20] = 2114;
              *&buf[22] = v107;
              _os_log_impl(&dword_1C928A000, v102, v103, "isValidFrame returned a %d error for frame number:%d at offset %u, skipping frame in segment: %{public}@", buf, 0x1Eu);
            }

            v60 = v125;
LABEL_155:
          }

          goto LABEL_157;
        }

        if (v74 == 2)
        {
          if ((v2 & 2) == 0)
          {
            goto LABEL_157;
          }

          goto LABEL_135;
        }

        goto LABEL_127;
      }

LABEL_157:
      objc_autoreleasePoolPop(context);
      v63 = v133 + v123;
      v64 = v129 + v123;
      v134 += v124;
      v130 += v124;
      v128 += v124;
    }

    while (!v142);
  }

LABEL_65:
}

- (void)updateToMaxOfValueAtOffset:(unsigned int)offset newValue:(int)value
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(BMFrameStore *)self datastoreVersion]== 10)
  {
    header = [(BMFrameStore *)self header];
    start = [header start];

    v9 = atomic_load((start + offset));
    if (v9 < value)
    {
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong((start + offset), &v10, value);
        if (v10 == v9)
        {
          break;
        }

        v9 = v10;
      }

      while (v10 < value);
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __56__BMFrameStore_V2__updateToMaxOfValueAtOffset_newValue___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (updateToMaxOfValueAtOffset_newValue__onceToken != -1)
    {
      dispatch_once(&updateToMaxOfValueAtOffset_newValue__onceToken, block);
    }

    v12 = v16[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v11, v12))
    {
      datastoreVersion = [(BMFrameStore *)self datastoreVersion];
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v11, v12, "updateToMaxOfValueAtOffset called with unexpected datastoreVersion:%d", buf, 8u);
    }
  }
}

- (void)addToValueAtOffset:(unsigned int)offset increment:(unsigned int)increment
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(BMFrameStore *)self datastoreVersion]== 10)
  {
    header = [(BMFrameStore *)self header];
    start = [header start];

    v9 = atomic_load((start + offset));
    if (increment)
    {
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong((start + offset), &v10, v9 + increment);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  else
  {
    v12 = __biome_log_for_category();
    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__BMFrameStore_V2__addToValueAtOffset_increment___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (addToValueAtOffset_increment__onceToken != -1)
    {
      dispatch_once(&addToValueAtOffset_increment__onceToken, block);
    }

    v13 = v17[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v12, v13))
    {
      datastoreVersion = [(BMFrameStore *)self datastoreVersion];
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v12, v13, "addToValueAtOffset called with unexpected datastoreVersion:%d", buf, 8u);
    }
  }
}

- (unsigned)determineFrameNumberToBeWritten:(unsigned int *)written
{
  v25 = *MEMORY[0x1E69E9840];
  if (!written)
  {
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) determineFrameNumberToBeWritten:?];
    }

    goto LABEL_19;
  }

  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  if (!atomicReadTotalFramesV2)
  {
    *written = 0;
    return atomicReadTotalFramesV2;
  }

  v6 = atomicReadTotalFramesV2;
  v7 = atomicReadTotalFramesV2 - 1;
  v8 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:v7];
  if (!v8)
  {
    v14 = __biome_log_for_category();
    *buf = 0;
    *&v23 = buf;
    *(&v23 + 1) = 0x2020000000;
    v24 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__BMFrameStore_V2__determineFrameNumberToBeWritten___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (determineFrameNumberToBeWritten__onceToken != -1)
    {
      dispatch_once(&determineFrameNumberToBeWritten__onceToken, block);
    }

    v15 = *(v23 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v14, v15))
    {
      v16 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v18 = [v16 privacyPathname:segmentPath];
      *buf = 67109378;
      *&buf[4] = v7;
      LOWORD(v23) = 2114;
      *(&v23 + 2) = v18;
      _os_log_impl(&dword_1C928A000, v14, v15, "determineFrameNumberToBeWritten: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
    }

LABEL_19:
    LOBYTE(atomicReadTotalFramesV2) = 1;
    return atomicReadTotalFramesV2;
  }

  if ((v7 & 0x80000000) != 0)
  {
LABEL_21:
    *written = v7 + 1;
    if (v7 + 1 != v6)
    {
      *buf = v6;
      header = [(BMFrameStore *)self header];
      [header atomicWriteFourBytes:*written toOffset:4 expected:buf];
    }

    LOBYTE(atomicReadTotalFramesV2) = 0;
  }

  else
  {
    v9 = v8;
    v10 = v6;
    while (1)
    {
      v11 = [(BMFrameStore *)self atomicReadSixteenByteValueAtAddress:v9];
      if (HIDWORD(v11) == 4)
      {
        break;
      }

      if (v11 | v12)
      {
        v7 = v10 - 1;
        if ([(BMFrameStore *)self validOffsetTableEntry:v11 frameNumber:v12, v7])
        {
          goto LABEL_21;
        }

        break;
      }

      ++v9;
      if (--v10 <= 0)
      {
        LODWORD(v7) = -1;
        goto LABEL_21;
      }
    }

    LOBYTE(atomicReadTotalFramesV2) = 2;
  }

  return atomicReadTotalFramesV2;
}

- (unsigned)validateOrUpdateTimestamp:(double *)timestamp frameNumberToBeWritten:(unsigned int)written
{
  v47 = *MEMORY[0x1E69E9840];
  if (!written)
  {
    return 0;
  }

  v6 = written - 1;
  v7 = [(BMFrameStore *)self offsetTablePtrFromFrameNumberV2:written - 1];
  if (!v7)
  {
    v15 = __biome_log_for_category();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v40) = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__BMFrameStore_V2__validateOrUpdateTimestamp_frameNumberToBeWritten___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (validateOrUpdateTimestamp_frameNumberToBeWritten__onceToken != -1)
    {
      dispatch_once(&validateOrUpdateTimestamp_frameNumberToBeWritten__onceToken, block);
    }

    v16 = *(*&buf[8] + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v19 = [v17 privacyPathname:segmentPath];
      *buf = 67109378;
      *&buf[4] = v6;
      *&buf[8] = 2114;
      *&buf[10] = v19;
      _os_log_impl(&dword_1C928A000, v15, v16, "validateOrUpdateTimestamp: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
    }

    return 2;
  }

  v8 = v7;
  if ([(BMFrameStore *)self atomicReadFourByteValueAtAddress:&v7->var0.var0.var0.var1 + 4]== 4)
  {
    return 2;
  }

  [(BMFrameStore *)self atomicReadDoubleByteValueAtAddress:&v8->var0.var0.var1];
  v10 = v9;
  if (*timestamp >= v9)
  {
    return 0;
  }

  if ([(BMFrameStore *)self isRemoteSegment]&& ![(BMFrameStore *)self isTombstoneSegment])
  {
    v20 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v20 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v21 = __biome_log_for_category();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v30 = *timestamp;
      v31 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:*timestamp];
      v32 = [v20 stringFromDate:v31];
      v33 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v10];
      v34 = [v20 stringFromDate:v33];
      v35 = MEMORY[0x1E698E9C8];
      segmentPath2 = [(BMFrameStore *)self segmentPath];
      v37 = [v35 privacyPathname:segmentPath2];
      *buf = 136316418;
      *&buf[4] = "[BMFrameStore(V2) validateOrUpdateTimestamp:frameNumberToBeWritten:]";
      *&buf[12] = 2048;
      *&buf[14] = v30;
      *&buf[22] = 2048;
      v40 = v10;
      v41 = 2112;
      v42 = v32;
      v43 = 2112;
      v44 = v34;
      v45 = 2114;
      v46 = v37;
      _os_log_error_impl(&dword_1C928A000, v21, OS_LOG_TYPE_ERROR, "[%s] WARNING (remote data) frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
    }

    return 0;
  }

  if (v10 - *timestamp >= 3.0)
  {
    goto LABEL_11;
  }

  v11 = CFAbsoluteTimeGetCurrent() - *timestamp;
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  if (v11 <= 60.0)
  {
    result = 0;
    *timestamp = v10 + 0.0000001;
  }

  else
  {
LABEL_11:
    v12 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v12 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    v13 = __biome_log_for_category();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v22 = *timestamp;
      v23 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:*timestamp];
      v24 = [v12 stringFromDate:v23];
      v25 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate:v10];
      v26 = [v12 stringFromDate:v25];
      v27 = MEMORY[0x1E698E9C8];
      segmentPath3 = [(BMFrameStore *)self segmentPath];
      v29 = [v27 privacyPathname:segmentPath3];
      *buf = 136316418;
      *&buf[4] = "[BMFrameStore(V2) validateOrUpdateTimestamp:frameNumberToBeWritten:]";
      *&buf[12] = 2048;
      *&buf[14] = v22;
      *&buf[22] = 2048;
      v40 = v10;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = v26;
      v45 = 2114;
      v46 = v29;
      _os_log_error_impl(&dword_1C928A000, v13, OS_LOG_TYPE_ERROR, "[%s] Frame should come in chronological order. Input %f < last %f, (%@ < %@) segment:%{public}@", buf, 0x3Eu);
    }

    return 1;
  }

  return result;
}

- (unsigned)reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:(double)timestamp state:(unsigned int)state length:(unsigned int)length outFrameNumber:(unsigned int *)number
{
  LODWORD(v8) = state;
  v40 = *MEMORY[0x1E69E9840];
  timestampCopy = timestamp;
  if ([(BMFrameStore *)self datastoreVersion]!= 10)
  {
    v27 = __biome_log_for_category();
    *buf = 0;
    v37 = COERCE_DOUBLE(buf);
    v38 = 0x2020000000;
    v39 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __100__BMFrameStore_V2__reserveSpaceAndAssignAnOffsetTableEntryForTimestamp_state_length_outFrameNumber___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (reserveSpaceAndAssignAnOffsetTableEntryForTimestamp_state_length_outFrameNumber__onceToken != -1)
    {
      dispatch_once(&reserveSpaceAndAssignAnOffsetTableEntryForTimestamp_state_length_outFrameNumber__onceToken, block);
    }

    v28 = *(*&v37 + 24);
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v27, v28))
    {
      datastoreVersion = [(BMFrameStore *)self datastoreVersion];
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v27, v28, "reserveSpaceAndAssignAnOffsetTableEntryForTimestamp called with unexpected dataVersion:%d", buf, 8u);
    }

LABEL_36:
    LOBYTE(v11) = 1;
    return v11;
  }

  if (!number)
  {
    v26 = __biome_log_for_category();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:state:length:outFrameNumber:];
    }

LABEL_35:

    goto LABEL_36;
  }

  v33 = -1;
  v11 = [(BMFrameStore *)self determineFrameNumberToBeWritten:&v33];
  if (!v11)
  {
    v11 = [(BMFrameStore *)self validateOrUpdateTimestamp:&timestampCopy frameNumberToBeWritten:v33];
    if (!v11)
    {
      v12 = [(BMFrameStore *)self offsetOfFrameV2:v33];
      v13 = timestampCopy - timestamp;
      if (timestampCopy - timestamp > 3.0)
      {
LABEL_26:
        v26 = __biome_log_for_category();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:state:length:outFrameNumber:];
        }

        goto LABEL_35;
      }

      v14 = v12;
      v15 = 0;
      v16 = timestampCopy;
      while (1)
      {
        frames = [(BMFrameStore *)self frames];
        v18 = [frames isValidReadFromOffsetV2:v14 withLength:(length + 3) & 0xFFFFFFFC currentFrameCount:v33];

        if (v18)
        {
          v19 = v8 == 4;
          if (v8 == 4)
          {
            v8 = 4;
          }

          else
          {
            v8 = v8;
          }

          if (!v19)
          {
            v15 = v14 + length + 8;
          }
        }

        else
        {
          frames2 = [(BMFrameStore *)self frames];
          v21 = [frames2 isValidReadFromOffsetV2:v14 withLength:0 currentFrameCount:v33];

          if ((v21 & 1) == 0)
          {
            v30 = __biome_log_for_category();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:state:length:outFrameNumber:];
            }

LABEL_43:
            LOBYTE(v11) = 2;
            return v11;
          }

          v15 = 0;
          length = 0;
          v8 = 4;
        }

        v22 = v33 + 1;
        *buf = 0;
        v37 = 0.0;
        frames3 = [(BMFrameStore *)self frames];
        frames4 = [(BMFrameStore *)self frames];
        v25 = [frames3 atomicWriteSixteenBytes:v15 | (v8 << 32) toOffset:*&v16 expected:{objc_msgSend(frames4, "size") - 16 * v22, buf}];

        if (v25 <= 1)
        {
          if (!v25)
          {
            goto LABEL_38;
          }

          if (v25 == 1)
          {
            v31 = v33;
            *number = v33;
            v33 = v31 + 1;
            [(BMFrameStore *)self updateToMaxOfTotalFramesAnd:?];
            LOBYTE(v11) = 2 * (v8 == 4);
            return v11;
          }
        }

        else if (v25 == 2)
        {
          if (*&buf[4] == 4)
          {
            goto LABEL_43;
          }
        }

        else if (v25 == 3)
        {
LABEL_38:
          v26 = __biome_log_for_category();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [BMFrameStore(V2) reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:state:length:outFrameNumber:];
          }

          goto LABEL_35;
        }

        ++v33;
        if (v16 < v37)
        {
          v16 = v37;
        }

        v14 = (*buf + 3) & 0xFFFFFFFC;
        v13 = timestampCopy - timestamp;
        if (timestampCopy - timestamp > 3.0)
        {
          goto LABEL_26;
        }
      }
    }
  }

  return v11;
}

- (unsigned)checkBoundsLength:(unint64_t)length
{
  v19 = *MEMORY[0x1E69E9840];
  if (length >> 31)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore(V2) checkBoundsLength:];
    }

LABEL_20:
    v5 = 1;
LABEL_21:

    return v5;
  }

  if (!length)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    goto LABEL_20;
  }

  if (((length + 3) & 0xFFFFFFFC) + 56 > [(BMFrameStore *)self frameStoreSize])
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    v5 = 3;
    goto LABEL_21;
  }

  header = [(BMFrameStore *)self header];
  start = [header start];

  if (!start)
  {
    v3 = __biome_log_for_category();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:];
    }

    goto LABEL_20;
  }

  if (*(start + 16) != 10)
  {
    v3 = __biome_log_for_category();
    *buf = 0;
    v16 = buf;
    v17 = 0x2020000000;
    v18 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __38__BMFrameStore_V2__checkBoundsLength___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (checkBoundsLength__onceToken != -1)
    {
      dispatch_once(&checkBoundsLength__onceToken, block);
    }

    v8 = v16[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v3, v8))
    {
      v9 = *(start + 16);
      v10 = MEMORY[0x1E698E9C8];
      segmentPath = [(BMFrameStore *)self segmentPath];
      v12 = [v10 privacyPathname:segmentPath];
      *buf = 67109634;
      *&buf[4] = 10;
      LOWORD(v16) = 1024;
      *(&v16 + 2) = v9;
      HIWORD(v16) = 2114;
      v17 = v12;
      _os_log_impl(&dword_1C928A000, v3, v8, "Segment is the wrong version, expected: %d, found %d in segment: %{public}@", buf, 0x18u);
    }

    goto LABEL_20;
  }

  return 0;
}

- (unsigned)writeFrameV2ForBytes:(const void *)bytes length:(unint64_t)length dataVersion:(unsigned int)version timestamp:(double)timestamp outOffset:(unint64_t *)offset
{
  v9 = *&version;
  v41 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = [(BMFrameStore *)selfCopy checkBoundsLength:length];
  if (v13)
  {
    goto LABEL_20;
  }

  v38 = -1;
  v13 = [(BMFrameStore *)selfCopy reserveSpaceAndAssignAnOffsetTableEntryForTimestamp:0 state:length length:&v38 outFrameNumber:timestamp];
  if (!v13 && v38 != -1)
  {
    v14 = [(BMFrameStore *)selfCopy offsetTablePtrFromFrameNumberV2:?];
    if (v14)
    {
      var0 = v14->var0.var0.var0.var0.var0;
      *buf = bm_generateChecksum(bytes, length) | (v9 << 32);
      frames = [(BMFrameStore *)selfCopy frames];
      v17 = var0 - length - 8;
      [frames writeBytes:buf toOffset:v17 length:8];

      frames2 = [(BMFrameStore *)selfCopy frames];
      [frames2 writeBytes:bytes toOffset:v17 + 8 length:length];

      LODWORD(v17) = [(BMFrameStore *)selfCopy offsetTableOffsetFromFrameNumberV2:v38];
      v36 = 0;
      frames3 = [(BMFrameStore *)selfCopy frames];
      v20 = v17;
      v21 = [frames3 atomicWriteFourBytes:1 toOffset:v17 + 4 expected:&v36];

      if (v21 == 1)
      {
        LOBYTE(v13) = 0;
        if (offset)
        {
          *offset = v20;
        }

        goto LABEL_20;
      }

      v29 = __biome_log_for_category();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore(V2) writeFrameV2ForBytes:v21 length:v29 dataVersion:? timestamp:? outOffset:?];
      }
    }

    else
    {
      v23 = __biome_log_for_category();
      *buf = 0;
      *v40 = buf;
      *&v40[8] = 0x2020000000;
      v40[16] = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __80__BMFrameStore_V2__writeFrameV2ForBytes_length_dataVersion_timestamp_outOffset___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (writeFrameV2ForBytes_length_dataVersion_timestamp_outOffset__onceToken != -1)
      {
        dispatch_once(&writeFrameV2ForBytes_length_dataVersion_timestamp_outOffset__onceToken, block);
      }

      v24 = *(*v40 + 24);
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v38;
        v26 = MEMORY[0x1E698E9C8];
        segmentPath = [(BMFrameStore *)selfCopy segmentPath];
        v28 = [v26 privacyPathname:segmentPath];
        *buf = 67109378;
        *&buf[4] = v25;
        *v40 = 2114;
        *&v40[2] = v28;
        _os_log_impl(&dword_1C928A000, v23, v24, "writeFrameV2ForBytes: offsetTableEntryPtr:NULL outside of range for frames, frameNumber=%d for segment: %{public}@", buf, 0x12u);
      }
    }

    LOBYTE(v13) = 1;
    goto LABEL_20;
  }

  v22 = __biome_log_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    v31 = v38;
    v32 = NSStringFromBMFrameWriteStatus(v13);
    v33 = MEMORY[0x1E698E9C8];
    segmentName = [(BMFrameStore *)selfCopy segmentName];
    v35 = [v33 privacyPathname:segmentName];
    *buf = 67109634;
    *&buf[4] = v31;
    *v40 = 2112;
    *&v40[2] = v32;
    *&v40[10] = 2112;
    *&v40[12] = v35;
    _os_log_debug_impl(&dword_1C928A000, v22, OS_LOG_TYPE_DEBUG, "Unable to write frame (%d) for reason: %@ for segment: %@", buf, 0x1Cu);
  }

LABEL_20:
  objc_sync_exit(selfCopy);

  return v13;
}

- (void)updateHighestDeletedFrameV2:(id)v2 addToDeletedFrameCount:(unsigned int)count
{
  v4 = *&count;
  [(BMFrameStore *)self updateHighestDeletedFrame:v2];

  [(BMFrameStore *)self addToDeletedFrameCount:v4];
}

- (void)updateHighestDeletedFrame:(id)frame
{
  frameCopy = frame;
  if ([(BMFrameStore *)self datastoreVersion]== 10)
  {
    framePtr = [frameCopy framePtr];
    frames = [(BMFrameStore *)self frames];
    v6 = framePtr - [frames start];

    [(BMFrameStore *)self updateToMaxOfHighestDeletedFrameAnd:[(BMFrameStore *)self frameNumberFromOffsetToOffsetTableEntryV2:v6]];
  }
}

- (void)markFrameAsRemovedV2:(id)v2
{
  v19 = *MEMORY[0x1E69E9840];
  v2Copy = v2;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  framePtr = [v2Copy framePtr];
  v7 = *framePtr;
  v8 = *framePtr | 0x200000000;
  v9 = *framePtr;
  atomic_compare_exchange_strong(framePtr, &v9, v8);
  if (v9 == v7)
  {
    v10 = [(BMFrameStore *)selfCopy eraseFrameAtOffsetTableV2:framePtr];
    if (v10)
    {
      v11 = __biome_log_for_category();
      *buf = 0;
      v16 = buf;
      v17 = 0x2020000000;
      v18 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__BMFrameStore_V2__markFrameAsRemovedV2___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (markFrameAsRemovedV2__onceToken != -1)
      {
        dispatch_once(&markFrameAsRemovedV2__onceToken, block);
      }

      v12 = v16[24];
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v11, v12))
      {
        *buf = 67240192;
        *&buf[4] = v10;
        _os_log_impl(&dword_1C928A000, v11, v12, "Failed to zero out memory. %{public, darwin.errno}d", buf, 8u);
      }
    }

    else
    {
      v13 = v8;
      atomic_compare_exchange_strong(framePtr, &v13, v7 | 0x300000000);
      if (v13 == v8)
      {
        goto LABEL_10;
      }

      v11 = __biome_log_for_category();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [BMFrameStore markFrameAsRemovedV1:];
      }
    }
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BMFrameStore markFrameAsRemovedV1:];
    }
  }

LABEL_10:
  objc_sync_exit(selfCopy);
}

- (unsigned)countFrameStateInOffsetTable:(unsigned int)table startingFrame:(int)frame endingFrame:(int)endingFrame
{
  v6 = *&frame;
  atomicReadTotalFramesV2 = [(BMFrameStore *)self atomicReadTotalFramesV2];
  v10 = 0;
  if ((v6 & 0x80000000) == 0 && atomicReadTotalFramesV2)
  {
    endingFrameCopy = atomicReadTotalFramesV2 - 1;
    if (atomicReadTotalFramesV2 > endingFrame)
    {
      endingFrameCopy = endingFrame;
    }

    if (endingFrameCopy >= v6)
    {
      v10 = 0;
      v12 = endingFrameCopy + 1;
      do
      {
        if ([(BMFrameStore *)self stateOfFrameV2:v6]== table)
        {
          ++v10;
        }

        v6 = (v6 + 1);
      }

      while (v12 != v6);
    }

    else
    {
      return 0;
    }
  }

  return v10;
}

- (BOOL)isCheckSumValidAtOffsetV2:(unint64_t)v2 frameNumber:(int)number
{
  v4 = *&number;
  v2Copy = v2;
  v22 = *MEMORY[0x1E69E9840];
  if ([(BMFrameStore *)self datastoreVersion]!= 10)
  {
    v14 = __biome_log_for_category();
    *buf = 0;
    v19 = buf;
    v20 = 0x2020000000;
    v21 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__BMFrameStore_V2__isCheckSumValidAtOffsetV2_frameNumber___block_invoke;
    block[3] = &unk_1E8338B28;
    block[4] = buf;
    if (isCheckSumValidAtOffsetV2_frameNumber__onceToken != -1)
    {
      dispatch_once(&isCheckSumValidAtOffsetV2_frameNumber__onceToken, block);
    }

    v15 = v19[24];
    _Block_object_dispose(buf, 8);
    if (os_log_type_enabled(v14, v15))
    {
      datastoreVersion = [(BMFrameStore *)self datastoreVersion];
      *buf = 67109120;
      *&buf[4] = datastoreVersion;
      _os_log_impl(&dword_1C928A000, v14, v15, "isCheckSumValidAtOffsetV2 called with unexpected dataVersion:%d", buf, 8u);
    }

    return 0;
  }

  if ((v2Copy & 7) != 0)
  {
    return 0;
  }

  v7 = [(BMFrameStore *)self offsetOfFrameV2:v4];
  v8 = [(BMFrameStore *)self sizeOfFrameV2:v4];
  frames = [(BMFrameStore *)self frames];
  v10 = [frames size];

  if (v10 < v8 + v7)
  {
    return 0;
  }

  frames2 = [(BMFrameStore *)self frames];
  start = [frames2 start];

  return [(BMFrameStore *)self stateOfFrameV2:v4]!= 1 || bm_generateChecksum((start + v7 + 8), v8 - 8) == *(start + v7);
}

- (uint64_t)sizeToNextWord:(uint64_t)result
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    if (*(result + 28) != 9)
    {
      v4 = __biome_log_for_category();
      *buf = 0;
      v9 = buf;
      v10 = 0x2020000000;
      v11 = 16;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__BMFrameStore_sizeToNextWord___block_invoke;
      block[3] = &unk_1E8338B28;
      block[4] = buf;
      if (sizeToNextWord__onceToken != -1)
      {
        dispatch_once(&sizeToNextWord__onceToken, block);
      }

      v5 = v9[24];
      _Block_object_dispose(buf, 8);
      if (os_log_type_enabled(v4, v5))
      {
        v6 = *(v3 + 28);
        *buf = 67109120;
        *&buf[4] = v6;
        _os_log_impl(&dword_1C928A000, v4, v5, "sizeToNextWord called with unexpected dataVersion:%d", buf, 8u);
      }
    }

    return (a2 + 7) & 0xFFFFFFF8;
  }

  return result;
}

- (void)getSegmentHeader:fromFileV1:fileSize:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  v2 = [v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)getSegmentHeader:(void *)a1 fromFileV1:fileSize:.cold.2(void *a1)
{
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)getSegmentHeader:(_DWORD *)a1 fromFileV1:(void *)a2 fileSize:(NSObject *)a3 .cold.3(_DWORD *a1, void *a2, NSObject *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = MEMORY[0x1E698E9C8];
  v7 = [a2 attributes];
  v8 = [v7 path];
  v9 = [v6 privacyPathname:v8];
  v10[0] = 68290050;
  v10[1] = 4;
  v11 = 2082;
  v12 = a1;
  v13 = 1024;
  v14 = v5;
  v15 = 2114;
  v16 = v9;
  v17 = 1042;
  v18 = 4;
  v19 = 2082;
  v20 = "SEGB";
  _os_log_error_impl(&dword_1C928A000, a3, OS_LOG_TYPE_ERROR, "Segment header magic '%{public}.4s' (0x%04X) in file %{public}@ doesn't match expected magic '%{public}.4s'.", v10, 0x32u);
}

- (void)getSegmentHeader:fromFileV1:fileSize:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v2 = [v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

- (void)getSegmentHeader:(void *)a1 fromFileV1:fileSize:.cold.5(void *a1)
{
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)getSegmentHeader:(void *)a1 fromFileV1:fileSize:.cold.6(void *a1)
{
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

+ (void)writeEmptyFrameStoreWithFileHandle:fileSize:datastoreVersion:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v2 = [v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
}

+ (void)writeEmptyFrameStoreWithFileHandle:(void *)a1 fileSize:datastoreVersion:.cold.3(void *a1)
{
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

+ (void)writeEmptySegmentHeaderWithFileHandleV1:segmentHeaderSize:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)writeEmptySegmentHeaderWithFileHandleV1:(void *)a1 segmentHeaderSize:.cold.2(void *a1)
{
  v2 = [a1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)initWithFileHandleV1:permission:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithFileHandleV1:permission:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  v2 = [*v1 attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_5_0() privacyPathname:?];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)initWithFileHandleV1:permission:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  v0 = MEMORY[0x1E698E9C8];
  v2 = [v1 segmentPath];
  v3 = [v0 privacyPathname:v2];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
}

- (void)initWithFileHandleV1:permission:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  v1 = [v0 _printablePath];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)initWithFileHandleV1:(uint64_t)a1 permission:.cold.5(uint64_t a1)
{
  v2 = [*(a1 + 64) attributes];
  [v2 path];
  objc_claimAutoreleasedReturnValue();
  v3 = [OUTLINED_FUNCTION_2_1() privacyPathname:?];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

- (void)frameWithOffsetV1:expectedState:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)frameWithOffsetV1:expectedState:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  [*v0 size];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)frameWithOffsetV1:expectedState:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  [*v0 size];
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (uint64_t)updateFrameStoreIndex
{
  OUTLINED_FUNCTION_1_1();
  lastObject = [*v2 lastObject];
  unsignedLongValue = [lastObject unsignedLongValue];

  LODWORD(lastObject) = atomic_load(unsignedLongValue);
  start = [*(v1 + 56) start];
  result = [(BMFrameStore *)v1 sizeToNextWord:lastObject];
  *v0 = unsignedLongValue + result - start + 32;
  return result;
}

- (void)enumerateWithOptionsV1:(uint64_t)a1 fromOffset:(uint64_t)a2 usingBlock:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"BMFrameStore.m" lineNumber:925 description:{@"Invalid parameter not satisfying: %@", @"block"}];
}

- (void)writeFrameV1ForBytes:(os_log_t)log length:dataVersion:timestamp:outOffset:.cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1C928A000, log, OS_LOG_TYPE_DEBUG, "Unable to write frame for reason: %@", buf, 0xCu);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.3()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.4()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.5()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)writeFrameV1ForBytes:length:dataVersion:timestamp:outOffset:.cold.6()
{
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)markFrameAsRemovedV1:.cold.1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)markFrameAsRemovedV1:.cold.2()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end