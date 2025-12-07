@interface SABinaryLoadInfo
+ (id)addBinaryLoadInfoForDyldImage:(void *)image toLoadInfos:(int)infos isKernel:(int)kernel dataGatheringOptions:;
+ (id)binaryLoadInfoForAddress:(unint64_t)address inBinaryLoadInfos:(id)infos;
+ (id)binaryLoadInfoForAddress:(unint64_t)address inBinaryLoadInfos:(id)infos libraryCache:(id)cache;
+ (id)binaryLoadInfoForLiveProcessWithPid:(int)pid dataGatheringOptions:(unint64_t)options additionalCSSymbolicatorFlags:(unsigned int)flags mainBinaryOut:(id *)out sharedCacheOut:(id *)cacheOut;
+ (id)binaryLoadInfoForSymbolicator:(uint64_t)symbolicator isKernel:(char)kernel dataGatheringOptions:(char)options excludeRange:(uint64_t)range ignoreSharedCache:(uint64_t)cache;
+ (id)binaryLoadInfoWithBinary:(uint64_t)binary loadAddress:(int)address isInKernelAddressSpace:(void *)space exclave:;
+ (id)binaryLoadInfoWithSegment:(uint64_t)segment loadAddress:(int)address isInKernelAddressSpace:(void *)space exclave:;
+ (id)loadInfosForSegmentsInBinary:(uint64_t)binary binaryBaseAddress:(int)address isInKernelAddressSpace:(void *)space exclave:;
+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length;
+ (void)binaryLoadInfoWithoutReferencesFromPAStyleSerializedImageInfo:(uint64_t)info;
- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary;
- (NSString)debugDescription;
- (SABinaryLoadInfo)initWithBinary:(id)binary segment:(id)segment loadAddress:(unint64_t)address;
- (id)instructionAtOffsetIntoLoadInfo:(unint64_t)info;
- (unint64_t)length;
- (unint64_t)textSegmentLoadAddress;
- (void)addSelfToSerializationDictionary:(id)dictionary;
- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary;
- (void)populateReferencesUsingPAStyleSerializedImageInfo:(void *)info andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:;
- (void)writeJSONDictionaryEntriesToStream:(id)stream;
@end

@implementation SABinaryLoadInfo

- (unint64_t)length
{
  segment = self->_segment;
  if (!segment)
  {
    segment = self->_binary;
  }

  return [segment length];
}

- (SABinaryLoadInfo)initWithBinary:(id)binary segment:(id)segment loadAddress:(unint64_t)address
{
  v11.receiver = self;
  v11.super_class = SABinaryLoadInfo;
  v8 = [(SABinaryLoadInfo *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_binary, binary);
    objc_storeStrong(&v9->_segment, segment);
    v9->_loadAddress = address;
  }

  return v9;
}

+ (id)binaryLoadInfoWithSegment:(uint64_t)segment loadAddress:(int)address isInKernelAddressSpace:(void *)space exclave:
{
  v35 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  binary = [a2 binary];
  if (!binary)
  {
    v15 = *__error();
    v10 = _sa_logt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      space = [a2 debugDescription];
      *buf = 136315138;
      uTF8String = [space UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v10, OS_LOG_TYPE_ERROR, "Getting a load info for segment %s when the binary has already been deallcoated", buf, 0xCu);
    }

    *__error() = v15;
    a2 = [a2 debugDescription];
    _SASetCrashLogMessage(2857, "Getting a load info for segment %s when the binary has already been deallcoated", [a2 UTF8String]);

    _os_crash();
    __break(1u);
LABEL_16:
    v16 = *__error();
    v17 = _sa_logt();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [v10 debugDescription];
      uTF8String2 = [v18 UTF8String];
      v20 = [a2 debugDescription];
      uTF8String3 = [v20 UTF8String];
      v22 = [space debugDescription];
      uTF8String4 = [v22 UTF8String];
      *buf = 136315650;
      uTF8String = uTF8String2;
      v31 = 2080;
      v32 = uTF8String3;
      v33 = 2080;
      v34 = uTF8String4;
      _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "%s segment %s has exclave %s in user space", buf, 0x20u);
    }

    *__error() = v16;
    v24 = [v10 debugDescription];
    uTF8String5 = [v24 UTF8String];
    v26 = [a2 debugDescription];
    uTF8String6 = [v26 UTF8String];
    v28 = [space debugDescription];
    _SASetCrashLogMessage(2858, "%s segment %s has exclave %s in user space", uTF8String5, uTF8String6, [v28 UTF8String]);

    _os_crash();
    __break(1u);
  }

  v10 = binary;
  if (space && (address & 1) == 0)
  {
    goto LABEL_16;
  }

  if (address)
  {
    if (space)
    {
      v11 = [[SAExclaveBinaryLoadInfo alloc] initWithBinary:binary segment:a2 loadAddress:segment exclave:space];
      goto LABEL_10;
    }

    v12 = SAKernelBinaryLoadInfo;
  }

  else
  {
    v12 = SAUserBinaryLoadInfo;
  }

  v11 = [[v12 alloc] initWithBinary:v10 segment:a2 loadAddress:segment];
LABEL_10:
  v13 = v11;

  return v13;
}

+ (id)binaryLoadInfoWithBinary:(uint64_t)binary loadAddress:(int)address isInKernelAddressSpace:(void *)space exclave:
{
  v24 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (space && (address & 1) == 0)
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [a2 debugDescription];
      uTF8String = [v14 UTF8String];
      v16 = [space debugDescription];
      *buf = 136315394;
      v21 = uTF8String;
      v22 = 2080;
      uTF8String2 = [v16 UTF8String];
      _os_log_error_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_ERROR, "%s has exclave %s in user space", buf, 0x16u);
    }

    *__error() = v12;
    v17 = [a2 debugDescription];
    uTF8String3 = [v17 UTF8String];
    v19 = [space debugDescription];
    _SASetCrashLogMessage(2873, "%s has exclave %s in user space", uTF8String3, [v19 UTF8String]);

    _os_crash();
    __break(1u);
  }

  if (address)
  {
    if (space)
    {
      v9 = [[SAExclaveBinaryLoadInfo alloc] initWithBinary:a2 segment:0 loadAddress:binary exclave:space];
      goto LABEL_9;
    }

    v10 = SAKernelBinaryLoadInfo;
  }

  else
  {
    v10 = SAUserBinaryLoadInfo;
  }

  v9 = [[v10 alloc] initWithBinary:a2 segment:0 loadAddress:binary];
LABEL_9:

  return v9;
}

+ (id)binaryLoadInfoForAddress:(unint64_t)address inBinaryLoadInfos:(id)infos
{
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__SABinaryLoadInfo_binaryLoadInfoForAddress_inBinaryLoadInfos___block_invoke;
  v14[3] = &__block_descriptor_40_e26_q16__0__SABinaryLoadInfo_8l;
  v14[4] = address;
  v6 = SABinarySearchArray(infos, 1536, v14);
  if (v6)
  {
    v7 = [infos objectAtIndexedSubscript:v6 - 1];
    segment = [v7 segment];
    v9 = [segment length];
    if (!v9)
    {
      binary = [v7 binary];
      v11 = [binary length];
      if (v11)
      {
        v9 = v11;
      }

      else
      {
        v9 = 0x10000000;
      }
    }

    if ([v7 loadAddress] + v9 <= address)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t __63__SABinaryLoadInfo_binaryLoadInfoForAddress_inBinaryLoadInfos___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 loadAddress];
  v4 = *(a1 + 32);
  v5 = v4 >= v3;
  v6 = v4 > v3;
  if (v5)
  {
    return v6;
  }

  else
  {
    return -1;
  }
}

+ (id)binaryLoadInfoForAddress:(unint64_t)address inBinaryLoadInfos:(id)infos libraryCache:(id)cache
{
  if (!cache)
  {
    v10 = 0;
    if (!infos)
    {
      goto LABEL_18;
    }

    goto LABEL_11;
  }

  binaryLoadInfos = [cache binaryLoadInfos];
  if (!binaryLoadInfos)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  startAddress = [cache startAddress];
  v10 = 0;
  if (startAddress != -1 && startAddress <= address)
  {
    if ([cache endAddress] > address)
    {
      v10 = [SABinaryLoadInfo binaryLoadInfoForAddress:address inBinaryLoadInfos:binaryLoadInfos];
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_10:

  if (!infos)
  {
    goto LABEL_18;
  }

LABEL_11:
  if (!v10)
  {
    v11 = [SABinaryLoadInfo binaryLoadInfoForAddress:address inBinaryLoadInfos:infos];
    v10 = v11;
    if (cache)
    {
      if (v11)
      {
        if ([cache startAddress] != -1)
        {
          loadAddress = [v10 loadAddress];
          if (loadAddress < [cache startAddress] && objc_msgSend(cache, "startAddress") <= address)
          {

            v10 = 0;
          }
        }
      }
    }
  }

LABEL_18:

  return v10;
}

+ (id)binaryLoadInfoForLiveProcessWithPid:(int)pid dataGatheringOptions:(unint64_t)options additionalCSSymbolicatorFlags:(unsigned int)flags mainBinaryOut:(id *)out sharedCacheOut:(id *)cacheOut
{
  if ((options & 2) != 0 && (!pid || (options & 0x400) != 0))
  {
    v11[1] = v7;
    v12 = v8;
    v11[0] = 0;
    CopyLoadInfosForLiveProcess(*&pid, options, v11, 0, cacheOut, out, 0, *&flags);
    v9 = v11[0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)binaryLoadInfoForSymbolicator:(uint64_t)symbolicator isKernel:(char)kernel dataGatheringOptions:(char)options excludeRange:(uint64_t)range ignoreSharedCache:(uint64_t)cache
{
  v8 = ~options;
  objc_opt_self();
  v9 = objc_autoreleasePoolPush();
  if ((v8 & 5) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = +[SABinaryLocator sharedBinaryLocator];
  }

  v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v12 = v10;
  v13 = v11;
  CSSymbolicatorForeachSymbolOwnerAtTime();
  [v12 done];
  objc_opt_self();
  [v13 sortUsingComparator:&__block_literal_global_361];
  v14 = [v13 copy];

  objc_autoreleasePoolPop(v9);

  return v14;
}

void __111__SABinaryLoadInfo_binaryLoadInfoForSymbolicator_isKernel_dataGatheringOptions_excludeRange_ignoreSharedCache___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 64) != 1 || (CSSymbolOwnerIsDyldSharedCache() & 1) == 0)
  {
    v18[0] = 0;
    v18[1] = 0;
    IsContiguous = SASymbolOwnerIsContiguous(a2, a3, v18, 0);
    if ((CSRangeContainsRange() & 1) == 0)
    {
      v7 = [SABinary binaryWithSymbolOwner:a2 fromDisk:a3, IsContiguous];
      v8 = v7;
      if (v7)
      {
        if (IsContiguous)
        {
          BaseAddress = CSSymbolOwnerGetBaseAddress();
          v10 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v8 loadAddress:BaseAddress isInKernelAddressSpace:*(a1 + 65) exclave:0];
          [*(a1 + 32) addObject:v10];
        }

        else
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 3221225472;
          v11[2] = __111__SABinaryLoadInfo_binaryLoadInfoForSymbolicator_isKernel_dataGatheringOptions_excludeRange_ignoreSharedCache___block_invoke_2;
          v11[3] = &unk_1E86F6AB8;
          v14 = *(a1 + 48);
          v12 = v7;
          v15 = a2;
          v16 = a3;
          v17 = *(a1 + 65);
          v13 = *(a1 + 32);
          SASymbolOwnerForeachSegment(a2, a3, v11);

          v10 = v12;
        }

        if (*(a1 + 40))
        {
          if ((CSSymbolOwnerIsDsym() & 1) == 0)
          {
            [(SABinaryLocator *)*(a1 + 40) addURLForSymbolOwner:a2, a3];
          }
        }
      }
    }
  }
}

void __111__SABinaryLoadInfo_binaryLoadInfoForSymbolicator_isKernel_dataGatheringOptions_excludeRange_ignoreSharedCache___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  CSRegionGetRange();
  if ((CSRangeIntersectsRange() & 1) == 0)
  {
    v6 = *(a1 + 32);
    BaseAddress = CSSymbolOwnerGetBaseAddress();
    v8 = [(SABinary *)v6 segmentWithCSSegment:a2 symbolOwnerLayoutMatchesDisk:a3 symbolOwnerBaseAddress:0, BaseAddress];
    if (v8)
    {
      Range = CSRegionGetRange();
      v10 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v8 loadAddress:Range isInKernelAddressSpace:*(a1 + 80) exclave:0];
      [*(a1 + 40) addObject:v10];
    }

    else
    {
      v11 = *__error();
      v12 = _sa_logt();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        Name = CSRegionGetName();
        v14 = [*(a1 + 32) name];
        v15 = 136315394;
        v16 = Name;
        v17 = 2112;
        v18 = v14;
        _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "Unable to create SASegment for CSSegment %s (from %@)", &v15, 0x16u);
      }

      *__error() = v11;
    }
  }
}

+ (id)addBinaryLoadInfoForDyldImage:(void *)image toLoadInfos:(int)infos isKernel:(int)kernel dataGatheringOptions:
{
  v58 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9 = objc_autoreleasePoolPush();
  v10 = [SABinary binaryForDyldImage:a2 options:kernel];
  v11 = v10;
  if (v10)
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = -1;
    v42 = 0;
    v43 = &v42;
    v44 = 0x2020000000;
    v45 = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v41 = 0;
    v34 = 0;
    v35 = &v34;
    v36 = 0x2020000000;
    v37 = -1;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __92__SABinaryLoadInfo_addBinaryLoadInfoForDyldImage_toLoadInfos_isKernel_dataGatheringOptions___block_invoke;
    v28[3] = &unk_1E86F6970;
    v12 = v10;
    v29 = v12;
    v30 = &v42;
    v31 = &v46;
    v32 = &v38;
    v33 = &v34;
    v13 = DyldImageEnumerateSegments(a2, v28);
    if (v13 < 0 || (v14 = v35[3], v14 == -1) || !v14 || (v15 = v47[3], (v15 + 1) <= 1))
    {
      v16 = *__error();
      v17 = _sa_logt();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v21 = [v12 debugDescription];
        v22 = v35[3];
        v23 = v47[3];
        *buf = 138413058;
        v51 = v21;
        v52 = 2048;
        v53 = v22;
        v54 = 2048;
        v55 = v23;
        v56 = 1024;
        v57 = v13;
        _os_log_error_impl(&dword_1E0E2F000, v17, OS_LOG_TYPE_ERROR, "Bad segments in dyld image for %@: imageTextStartAddress:%llu, imageStartAddress:%llu, ret %d", buf, 0x26u);
      }

      v18 = 0;
      *__error() = v16;
    }

    else
    {
      if (v14 == v15 && v43[3] - v14 == v39[3])
      {
        v20 = [SABinaryLoadInfo binaryLoadInfoWithBinary:v12 loadAddress:v14 isInKernelAddressSpace:infos exclave:0];
        [image addObject:v20];
      }

      else
      {
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __92__SABinaryLoadInfo_addBinaryLoadInfoForDyldImage_toLoadInfos_isKernel_dataGatheringOptions___block_invoke_358;
        v24[3] = &unk_1E86F6B08;
        infosCopy = infos;
        v25 = v12;
        imageCopy = image;
        DyldImageEnumerateSegments(a2, v24);
        v20 = v25;
      }

      v18 = v12;
    }

    _Block_object_dispose(&v34, 8);
    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v46, 8);
  }

  else
  {
    v18 = 0;
  }

  objc_autoreleasePoolPop(v9);

  return v18;
}

uint64_t __92__SABinaryLoadInfo_addBinaryLoadInfoForDyldImage_toLoadInfos_isKernel_dataGatheringOptions___block_invoke(uint64_t a1, char *__s1, unint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 32) debugDescription];
      v14 = 136315650;
      v15 = __s1;
      v16 = 2048;
      v17 = a4;
      v18 = 2112;
      v19 = v13;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "Segment %s load address is 0 (length 0x%llx) for %@", &v14, 0x20u);
    }

    *__error() = v8;
  }

  v10 = *(*(a1 + 40) + 8);
  if (*(v10 + 24) < a4 + a3)
  {
    *(v10 + 24) = a4 + a3;
  }

  v11 = *(*(a1 + 48) + 8);
  if (*(v11 + 24) > a3)
  {
    *(v11 + 24) = a3;
  }

  *(*(*(a1 + 56) + 8) + 24) += a4;
  result = strcmp(__s1, "__TEXT");
  if (!result)
  {
    *(*(*(a1 + 64) + 8) + 24) = a3;
  }

  return result;
}

void __92__SABinaryLoadInfo_addBinaryLoadInfoForDyldImage_toLoadInfos_isKernel_dataGatheringOptions___block_invoke_358(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = *(a1 + 32);
  v8 = SANSStringForCString(a2);
  v10 = [(SABinary *)v7 segmentWithName:v8 length:a4 offsetIntoBinary:0x7FFFFFFFFFFFFFFFLL];

  v9 = [SABinaryLoadInfo binaryLoadInfoWithSegment:v10 loadAddress:a3 isInKernelAddressSpace:*(a1 + 48) exclave:0];
  [*(a1 + 40) addObject:v9];
}

+ (id)loadInfosForSegmentsInBinary:(uint64_t)binary binaryBaseAddress:(int)address isInKernelAddressSpace:(void *)space exclave:
{
  v24 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  segments = [a2 segments];
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(segments, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v11 = segments;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if ([v16 hasOffsetIntoBinary])
        {
          v17 = +[SABinaryLoadInfo binaryLoadInfoWithSegment:loadAddress:isInKernelAddressSpace:exclave:](SABinaryLoadInfo, v16, [v16 offsetIntoBinary] + binary, address, space);
          [v10 addObject:v17];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)instructionAtOffsetIntoLoadInfo:(unint64_t)info
{
  segment = self->_segment;
  if (segment)
  {
    [(SASegment *)segment instructionAtOffsetIntoSegment:info];
  }

  else
  {
    [(SABinary *)self->_binary instructionAtOffsetIntoBinary:info];
  }
  v5 = ;

  return v5;
}

uint64_t __40__SABinaryLoadInfo_sortBinaryLoadInfos___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 loadAddress];
  if (v5 < [a3 loadAddress])
  {
    return -1;
  }

  v7 = [a2 loadAddress];
  return v7 > [a3 loadAddress];
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  isInKernelAddressSpace = [(SABinaryLoadInfo *)self isInKernelAddressSpace];
  segment = self->_segment;
  loadAddress = self->_loadAddress;
  if (!segment)
  {
    segment = self->_binary;
  }

  v7 = [segment debugDescription];
  v8 = v7;
  v9 = @" ";
  if (isInKernelAddressSpace)
  {
    v9 = @"*";
  }

  v10 = [v3 initWithFormat:@"%@0x%llx: %@", v9, loadAddress, v7];

  return v10;
}

- (unint64_t)textSegmentLoadAddress
{
  if (self->_segment)
  {
    return self->_loadAddress;
  }

  v3 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
    if (!v4)
    {
LABEL_7:

      return self->_loadAddress;
    }
  }

  if (([v4 hasOffsetIntoBinary] & 1) == 0)
  {
    goto LABEL_7;
  }

  loadAddress = self->_loadAddress;
  v6 = [v4 offsetIntoBinary] + loadAddress;

  return v6;
}

- (void)writeJSONDictionaryEntriesToStream:(id)stream
{
  uuid = [(SABinary *)self->_binary uuid];
  uUIDString = [uuid UUIDString];
  SAJSONWriteDictionaryFirstEntry(stream, @"binary", uUIDString);

  segment = self->_segment;
  if (segment)
  {
    name = [(SASegment *)segment name];
    SAJSONWriteDictionaryEntry(stream, @"segment", name);
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_loadAddress];
  SAJSONWriteDictionaryEntry(stream, @"loadAddress", v9);

  if ([(SABinaryLoadInfo *)self isInKernelAddressSpace])
  {
    SAJSONWriteDictionaryEntry(stream, @"isInKernelAddressSpace", MEMORY[0x1E695E118]);
    exclave = [(SABinaryLoadInfo *)self exclave];

    if (exclave)
    {
      exclave2 = [(SABinaryLoadInfo *)self exclave];
      name2 = [exclave2 name];
      if (name2)
      {
        SAJSONWriteDictionaryEntry(stream, @"exclave", name2);
      }

      else
      {
        v13 = MEMORY[0x1E696AD98];
        exclave3 = [(SABinaryLoadInfo *)self exclave];
        v15 = [v13 numberWithUnsignedLongLong:{objc_msgSend(exclave3, "identifier")}];
        SAJSONWriteDictionaryEntry(stream, @"exclave", v15);
      }
    }
  }

  path = [(SABinary *)self->_binary path];
  if (path)
  {
    v17 = path;
    uuid2 = [(SABinary *)self->_binary uuid];
    v19 = [SABinary haveMultipleBinariesWithUUID:uuid2];

    if (v19)
    {
      path2 = [(SABinary *)self->_binary path];
      SAJSONWriteDictionaryEntry(stream, @"binaryPath", path2);
    }
  }
}

- (BOOL)addSelfToBuffer:(id *)buffer bufferLength:(unint64_t)length withCompletedSerializationDictionary:(id)dictionary
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(SABinaryLoadInfo *)self sizeInBytesForSerializedVersion]!= length)
  {
    v11 = *__error();
    v12 = _sa_logt();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [(SABinaryLoadInfo *)self debugDescription];
      *buf = 136315650;
      uTF8String = [v13 UTF8String];
      v17 = 2048;
      sizeInBytesForSerializedVersion = [(SABinaryLoadInfo *)self sizeInBytesForSerializedVersion];
      v19 = 2048;
      lengthCopy = length;
      _os_log_error_impl(&dword_1E0E2F000, v12, OS_LOG_TYPE_ERROR, "%s: size %lu != buffer length %lu", buf, 0x20u);
    }

    *__error() = v11;
    v14 = [(SABinaryLoadInfo *)self debugDescription];
    _SASetCrashLogMessage(5141, "%s: size %lu != buffer length %lu", [v14 UTF8String], -[SABinaryLoadInfo sizeInBytesForSerializedVersion](self, "sizeInBytesForSerializedVersion"), length);

    _os_crash();
    __break(1u);
  }

  *&buffer->var0 = 769;
  *(&buffer->var2 + 2) = self->_loadAddress;
  BYTE2(buffer->var3) = BYTE2(buffer->var3) & 0xFE | [(SABinaryLoadInfo *)self isInKernelAddressSpace];
  *(&buffer->var1 + 1) = SASerializableIndexForPointerFromSerializationDictionary(self->_binary, dictionary);
  *(&buffer->var3 + 3) = SASerializableIndexForPointerFromSerializationDictionary(self->_segment, dictionary);
  exclave = [(SABinaryLoadInfo *)self exclave];
  *(&buffer->var4.var1 + 3) = SASerializableIndexForPointerFromSerializationDictionary(exclave, dictionary);

  return 1;
}

- (void)addSelfToSerializationDictionary:(id)dictionary
{
  classDictionaryKey = [objc_opt_class() classDictionaryKey];
  v6 = SASerializableAddInstanceToSerializationDictionaryWithClassKey(dictionary, self, classDictionaryKey);

  if (v6)
  {
    [(SABinary *)self->_binary addSelfToSerializationDictionary:dictionary];
    [(SASegment *)self->_segment addSelfToSerializationDictionary:dictionary];
    exclave = [(SABinaryLoadInfo *)self exclave];
    [exclave addSelfToSerializationDictionary:dictionary];
  }
}

+ (id)newInstanceWithoutReferencesFromSerializedBuffer:(const void *)buffer bufferLength:(unint64_t)length
{
  v15 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_13;
  }

  if (length <= 0x12)
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy = length;
      v13 = 2048;
      v14 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", buf, 0x16u);
    }

    *__error() = v8;
    _SASetCrashLogMessage(5171, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", length, 19);
    _os_crash();
    __break(1u);
LABEL_13:
    v10 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABinaryLoadInfo version" userInfo:0];
    objc_exception_throw(v10);
  }

  if (*(buffer + 18))
  {
    if (*(buffer + 1) < 3u || *(buffer + 27) == -1)
    {
      v6 = off_1E86F4D18;
    }

    else
    {
      v6 = off_1E86F4CC8;
    }
  }

  else
  {
    v6 = off_1E86F4E10;
  }

  result = objc_alloc_init(*v6);
  *(result + 3) = *(buffer + 10);
  return result;
}

- (void)populateReferencesUsingBuffer:(const void *)buffer bufferLength:(unint64_t)length andDeserializationDictionary:(id)dictionary andDataBufferDictionary:(id)bufferDictionary
{
  v40 = *MEMORY[0x1E69E9840];
  if (*buffer >= 4u)
  {
    goto LABEL_29;
  }

  if (length <= 0x12)
  {
    v28 = *__error();
    v29 = _sa_logt();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy3 = length;
      v38 = 2048;
      v39 = 19;
      _os_log_error_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", buf, 0x16u);
    }

    *__error() = v28;
    _SASetCrashLogMessage(5192, "bufferLength %lu < serialized SABinaryLoadInfo struct %lu", length, 19);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  v11 = *(buffer + 2);
  v12 = objc_opt_class();
  v13 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v11, dictionary, bufferDictionary, v12);
  binary = self->_binary;
  self->_binary = v13;

  if (*(buffer + 1) < 2u)
  {
    v22 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
    v23 = v22;
    if (v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = [(SABinary *)self->_binary checkForSegmentWithCleanName:?];
    }

    segment = self->_segment;
    self->_segment = v24;

    goto LABEL_13;
  }

  if (length <= 0x1A)
  {
LABEL_23:
    v30 = *__error();
    v31 = _sa_logt();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy3 = length;
      v38 = 2048;
      v39 = 27;
      _os_log_error_impl(&dword_1E0E2F000, v31, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo v2 struct %lu", buf, 0x16u);
    }

    *__error() = v30;
    _SASetCrashLogMessage(5198, "bufferLength %lu < serialized SABinaryLoadInfo v2 struct %lu", length, 27);
    _os_crash();
    __break(1u);
LABEL_26:
    v32 = *__error();
    v33 = _sa_logt();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      lengthCopy3 = length;
      v38 = 2048;
      v39 = 35;
      _os_log_error_impl(&dword_1E0E2F000, v33, OS_LOG_TYPE_ERROR, "bufferLength %lu < serialized SABinaryLoadInfo v3 struct %lu", buf, 0x16u);
    }

    *__error() = v32;
    _SASetCrashLogMessage(5210, "bufferLength %lu < serialized SABinaryLoadInfo v3 struct %lu", length, 35);
    _os_crash();
    __break(1u);
LABEL_29:
    v34 = [SAException exceptionWithName:@"Decoding failure" reason:@"Unknown SABinaryLoadInfo version" userInfo:0];
    objc_exception_throw(v34);
  }

  v15 = gSASerializationEncodedVersionBeingDecoded();
  if (*v15 <= 30)
  {
    v16 = gBinaryBeingDecoded(&gBinaryBeingDecoded);
    *v16 = v17;
  }

  v18 = *(buffer + 19);
  v19 = objc_opt_class();
  v20 = _SASerializableInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v18, dictionary, bufferDictionary, v19, 0);
  v21 = self->_segment;
  self->_segment = v20;

  if (*v15 <= 30)
  {
    *gBinaryBeingDecoded(&gBinaryBeingDecoded) = 0;
  }

LABEL_13:
  if (*(buffer + 1) < 3u)
  {
    return;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  if (length <= 0x22)
  {
    goto LABEL_26;
  }

  v26 = *(buffer + 27);
  v27 = objc_opt_class();
  v35 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v26, dictionary, bufferDictionary, v27);
  objc_storeWeak(&self[1].super.isa, v35);
}

+ (void)binaryLoadInfoWithoutReferencesFromPAStyleSerializedImageInfo:(uint64_t)info
{
  objc_opt_self();
  if (*(a2 + 16) <= 0x8000000000000000)
  {
    v3 = off_1E86F4E10;
  }

  else
  {
    v3 = off_1E86F4D18;
  }

  v4 = objc_alloc_init(*v3);
  v4[3] = *(a2 + 16);

  return v4;
}

- (void)populateReferencesUsingPAStyleSerializedImageInfo:(void *)info andDeserializationDictionary:(void *)dictionary andDataBufferDictionary:
{
  if (self)
  {
    v7 = *(a2 + 8);
    v8 = objc_opt_class();
    v15 = SASerializableNonnullInstanceForIndexUsingDeserializationDictionaryAndDataBufferDictionaryAndClass(v7, info, dictionary, v8);
    v9 = [SABinary binaryWithUUID:"binaryWithUUID:absolutePath:" absolutePath:?];
    v10 = *(self + 8);
    *(self + 8) = v9;

    v11 = [(SABinary *)*(self + 8) checkForSegmentWithCleanName:?];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [(SABinary *)*(self + 8) checkForSegmentWithCleanName:?];
    }

    v14 = *(self + 16);
    *(self + 16) = v13;
  }
}

@end