@interface SRFrameStore
+ (void)initialize;
- (SRFramesStoreOffsetEnumerator)enumerateFromOffset:(SRFramesStoreOffsetEnumerator *)result;
- (uint64_t)initWithFileHandle:(unint64_t)handle maxSize:(uint64_t)size permission:(uint64_t)permission defaults:;
- (uint64_t)isValidFrame:(uint64_t)result;
- (uint64_t)resizeBackingFileTo:(uint64_t)result;
- (uint64_t)resizeMappedRegionTo:(uint64_t)to;
- (uint64_t)writeFrameForBytes:(z_size_t)bytes length:(SRError *)length timestamp:(double)timestamp error:;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)dealloc;
- (void)sync;
@end

@implementation SRFrameStore

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogFrameStore = os_log_create("com.apple.SensorKit", "FrameStore");
  }
}

- (uint64_t)initWithFileHandle:(unint64_t)handle maxSize:(uint64_t)size permission:(uint64_t)permission defaults:
{
  v62 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v53.receiver = self;
  v53.super_class = SRFrameStore;
  v9 = objc_msgSendSuper2(&v53, sel_init);
  v10 = v9;
  if (!v9)
  {
    return v10;
  }

  if (permission)
  {
    v11 = *(permission + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v11 >= 0xFFFFFFFF)
  {
    v12 = -1;
  }

  else
  {
    v12 = v11;
  }

  v9[2] = v12;
  v56 = 0;
  v55 = 0u;
  memset(v54, 0, sizeof(v54));
  objc_opt_self();
  seekToEndOfFile = [a2 seekToEndOfFile];
  [a2 seekToFileOffset:0];
  if (a2)
  {
    lastPathComponent = [-[NSFileHandle pathname](a2) lastPathComponent];
    if (!seekToEndOfFile)
    {
      goto LABEL_21;
    }
  }

  else
  {
    lastPathComponent = 0;
    if (!seekToEndOfFile)
    {
      goto LABEL_21;
    }
  }

  pathname = [(NSFileHandle *)a2 pathname];
  if (seekToEndOfFile > 0x37)
  {
    v21 = [a2 readDataOfLength:56];
    [a2 seekToFileOffset:0];
    if (v21 && [v21 length] > 0x37)
    {
      bytes = [v21 bytes];
      v25 = bytes;
      if (*bytes == 1195725633)
      {
        v52 = *(bytes + 16);
        v54[0] = *bytes;
        v54[1] = v52;
        v55 = *(bytes + 32);
        v56 = *(bytes + 48);
        goto LABEL_22;
      }

      v26 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68289794;
        *v58 = 4;
        *&v58[4] = 2082;
        *&v58[6] = "ASEG";
        *&v58[14] = 1042;
        *&v58[16] = 4;
        *v59 = 2082;
        *&v59[2] = v25;
        v60 = 2114;
        v61 = pathname;
        v17 = "Segment header magic number %{public}.4s doesn't match %{public}.4s in file %{public}@. Potentially overwriting whatever data is currently there";
        v18 = v26;
        v19 = OS_LOG_TYPE_DEFAULT;
        v20 = 44;
        goto LABEL_20;
      }
    }

    else
    {
      v22 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
      {
        v23 = [v21 length];
        *buf = 138543618;
        *v58 = pathname;
        *&v58[8] = 2050;
        *&v58[10] = v23;
        v17 = "Unable to read frames file segment header %{public}@. Received data of %{public}lu length. Potentially overwriting whatever data is currently there";
        v18 = v22;
        v19 = OS_LOG_TYPE_INFO;
        v20 = 22;
        goto LABEL_20;
      }
    }
  }

  else
  {
    v16 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      *v58 = pathname;
      v17 = "Frames file %{public}@ is invalid because the current size is less than a valid segment header. Potentially overwriting whatever data is currently there.";
      v18 = v16;
      v19 = OS_LOG_TYPE_INFO;
      v20 = 12;
LABEL_20:
      _os_log_impl(&dword_26561F000, v18, v19, v17, buf, v20);
    }
  }

LABEL_21:
  SRMakeSegmentHeader(v54, 0, lastPathComponent, v12);
LABEL_22:
  seekToEndOfFile2 = [a2 seekToEndOfFile];
  [a2 seekToFileOffset:0];
  pathname2 = [(NSFileHandle *)a2 pathname];
  v30 = *(v54 + 4);
  if (*(v54 + 4) > seekToEndOfFile2)
  {
    v31 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      *buf = 138543874;
      *v58 = pathname2;
      *&v58[8] = 2048;
      *&v58[10] = v30;
      *&v58[18] = 2050;
      *v59 = handle;
      v32 = "Segment header in %{public}@ says file size is %llu but that is larger than the max size (%{public}lu) we can support.";
      v33 = v31;
      v34 = OS_LOG_TYPE_INFO;
      v35 = 32;
LABEL_43:
      _os_log_impl(&dword_26561F000, v33, v34, v32, buf, v35);
      goto LABEL_44;
    }

    goto LABEL_44;
  }

  if (!(*(v54 + 4) | size & 0xFFFFFFFFFFFFFFFDLL))
  {
    v45 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *v58 = pathname2;
      v32 = "Not mapping an empty file %{public}@";
      v33 = v45;
      v34 = OS_LOG_TYPE_DEFAULT;
      v35 = 12;
      goto LABEL_43;
    }

LABEL_44:

    return 0;
  }

  v36 = DWORD1(v54[1]);
  v37 = *(v10 + 8);
  if (DWORD1(v54[1]) != v37)
  {
    v38 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
    {
      v39 = "";
      *buf = 138544130;
      *v58 = pathname2;
      *&v58[8] = 1026;
      if (size == 1)
      {
        v39 = "Potentially overwriting whatever data is currently there";
      }

      *&v58[10] = v36;
      *&v58[14] = 1026;
      *&v58[16] = v37;
      *v59 = 2080;
      *&v59[2] = v39;
      _os_log_impl(&dword_26561F000, v38, OS_LOG_TYPE_DEFAULT, "Segment versions of %{public}@ don't match. Received %{public}d, expected %{public}d.%s", buf, 0x22u);
    }

    v30 = 0;
    *(v54 + 4) = 0;
  }

  if (a2)
  {
    lastPathComponent2 = [-[NSFileHandle pathname](a2) lastPathComponent];
  }

  else
  {
    lastPathComponent2 = 0;
  }

  objc_setProperty_nonatomic_copy(v10, v28, lastPathComponent2, 40);
  if (v30 <= handle)
  {
    handleCopy = handle;
  }

  else
  {
    handleCopy = v30;
  }

  *(v10 + 32) = size;
  v42 = memoryMappingsForPermission(size, v54, handleCopy, v30);
  *(v10 + 56) = a2;
  if (size == 1 && ([(SRFrameStore *)v10 resizeBackingFileTo:handleCopy]& 1) == 0)
  {
    v51 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26561F000, v51, OS_LOG_TYPE_ERROR, "Failed to resize backing file", buf, 2u);
    }

    goto LABEL_44;
  }

  *(v10 + 16) = [v42 lastObject];
  if ([v42 count] <= 1)
  {
    firstObject = *(v10 + 24);
  }

  else
  {
    firstObject = [v42 firstObject];
    *(v10 + 24) = firstObject;
  }

  Property = objc_getProperty(v10, v43, 56, 1);
  [(SRMemoryMapping *)firstObject mapWithFileHandle:?];
  v47 = *(v10 + 16);
  v49 = objc_getProperty(v10, v48, 56, 1);
  [(SRMemoryMapping *)v47 mapWithFileHandle:v49];
  *(v10 + 48) = *(v54 + 12);
  return v10;
}

- (uint64_t)resizeBackingFileTo:(uint64_t)result
{
  v10 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = result;
    v3 = SRLogFrameStore;
    if (*(result + 32) == 1)
    {
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
      {
        pathname = [(NSFileHandle *)*(v2 + 56) pathname];
        v6 = 138478083;
        v7 = pathname;
        v8 = 2048;
        v9 = a2;
        _os_log_impl(&dword_26561F000, v3, OS_LOG_TYPE_INFO, "Resizing file %{private}@ to %llu bytes", &v6, 0x16u);
      }

      [*(v2 + 56) truncateFileAtOffset:a2];
      return 1;
    }

    else
    {
      result = os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v6) = 0;
        _os_log_error_impl(&dword_26561F000, v3, OS_LOG_TYPE_ERROR, "Attempting to resize a non-writable file", &v6, 2u);
        return 0;
      }
    }
  }

  return result;
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    header = self->_header;
    if (header && (start = header->_start) != 0)
    {
      v5 = *(start + 4);
    }

    else
    {
      frames = self->_frames;
      if (frames)
      {
        v5 = frames->_currentPosition - frames->_start + 56;
      }

      else
      {
        v5 = 56;
      }
    }

    v7 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      Property = objc_getProperty(self, v8, 56, 1);
LABEL_9:
      *buf = 138543362;
      pathname = [(NSFileHandle *)Property pathname];
      _os_log_impl(&dword_26561F000, v7, OS_LOG_TYPE_INFO, "Tearing down frame store for %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v7 = SRLogFrameStore;
    v5 = 0;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      Property = 0;
      goto LABEL_9;
    }
  }

  self->_header = 0;
  self->_frames = 0;
  if (self->_permission == 1)
  {
    v11 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO))
    {
      v13 = objc_getProperty(self, v12, 56, 1);
      pathname2 = [(NSFileHandle *)v13 pathname];
      *buf = 138543618;
      pathname = pathname2;
      v18 = 2050;
      v19 = v5;
      _os_log_impl(&dword_26561F000, v11, OS_LOG_TYPE_INFO, "Finalizing %{public}@ to %{public}llu bytes", buf, 0x16u);
    }

    [(SRFrameStore *)self resizeBackingFileTo:v5];
  }

  objc_setProperty_atomic(self, v10, 0, 56);

  self->_segmentName = 0;
  v15.receiver = self;
  v15.super_class = SRFrameStore;
  [(SRFrameStore *)&v15 dealloc];
}

- (uint64_t)resizeMappedRegionTo:(uint64_t)to
{
  if (!to)
  {
    return 0;
  }

  v3 = NSRoundUpToMultipleOfPageSize(bytes);
  if (![(SRFrameStore *)to resizeBackingFileTo:v3])
  {
    return 0;
  }

  v4 = *(to + 24);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 16);
  if (!v5)
  {
    return 0;
  }

  v6 = memoryMappingsForPermission(*(to + 32), v5, v3, *(v5 + 4));

  lastObject = [v6 lastObject];
  *(to + 16) = lastObject;
  v8 = *(to + 56);

  return [(SRMemoryMapping *)lastObject mapWithFileHandle:v8];
}

- (uint64_t)isValidFrame:(uint64_t)result
{
  v15 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = *(result + 16);
    if (!v2)
    {
      return 0;
    }

    v4 = (a2 + 20);
    v5 = *(a2 + 16);
    if (a2 + 20 + v5 > *(v2 + 24))
    {
      return 0;
    }

    v6 = adler32(0, 0, 0);
    v7 = adler32_z(v6, v4, v5);
    v8 = *(a2 + 8);
    result = v7 == v8;
    if (v7 != v8 && v8 != 0)
    {
      v10 = SRLogFrameStore;
      result = os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_INFO);
      if (result)
      {
        v11 = 134218240;
        v12 = v8;
        v13 = 2050;
        v14 = v7;
        _os_log_impl(&dword_26561F000, v10, OS_LOG_TYPE_INFO, "Checksums don't match. Header: %llu, Generated checksum: %{public}lu. Skipping frame.", &v11, 0x16u);
        return 0;
      }
    }
  }

  return result;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  frames = self->_frames;
  if (frames)
  {
    v10 = 0;
    var0 = (frames->_start + state->var0);
    while (var0 < frames->_currentPosition && v10 < count)
    {
      if ([(SRFrameStore *)self isValidFrame:?])
      {
        objects[v10++] = var0;
      }

      var0 = (var0 + var0[4] + 20);
      frames = self->_frames;
      if (!frames)
      {
        goto LABEL_12;
      }
    }

    frames = frames->_start;
  }

  else
  {
    v10 = 0;
    var0 = state->var0;
  }

LABEL_12:
  state->var0 = var0 - frames;
  state->var1 = objects;
  state->var2 = self;
  return v10;
}

- (SRFramesStoreOffsetEnumerator)enumerateFromOffset:(SRFramesStoreOffsetEnumerator *)result
{
  if (result)
  {
    v3 = result;
    v4 = [SRFramesStoreOffsetEnumerator alloc];
    if (v4)
    {
      v5.receiver = v4;
      v5.super_class = SRFramesStoreOffsetEnumerator;
      v4 = [(SRFramesStoreOffsetEnumerator *)&v5 init];
      if (v4)
      {
        v4->_framesStore = v3;
        v4->_offset = a2;
      }
    }

    return v4;
  }

  return result;
}

- (uint64_t)writeFrameForBytes:(z_size_t)bytes length:(SRError *)length timestamp:(double)timestamp error:
{
  v39 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v6 = result;
    v7 = *(result + 24);
    if (!v7 || (v8 = *(v7 + 16)) == 0)
    {
      v20 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26561F000, v20, OS_LOG_TYPE_ERROR, "Failed to find a segment header while writing. Dropping incoming data", buf, 2u);
        if (!length)
        {
          return 0;
        }
      }

      else if (!length)
      {
        return 0;
      }

      v19 = 12294;
      goto LABEL_25;
    }

    if (!*(v8 + 4))
    {
      v38 = 0;
      v37 = 0u;
      memset(buf, 0, sizeof(buf));
      SRMakeSegmentHeader(buf, 56, *(result + 40), *(result + 8));
      v12 = *(v6 + 24);
      if (v12)
      {
        v13 = *(v12 + 16);
        if ([(SRMemoryMapping *)v12 isValidWriteToDestinationAddress:v13 withLength:0x38uLL bytes:buf])
        {
          v14 = *buf;
          v15 = *&buf[16];
          v16 = v37;
          *(v13 + 48) = v38;
          *(v13 + 16) = v15;
          *(v13 + 32) = v16;
          *v13 = v14;
        }
      }
    }

    v17 = *(v6 + 16);
    if (v17)
    {
      v17 = (v17[6] - v17[3] + v17[2]);
    }

    if (v17 < bytes + 20)
    {
      v18 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26561F000, v18, OS_LOG_TYPE_ERROR, "No space left to write to the mapped region", buf, 2u);
        if (length)
        {
          goto LABEL_13;
        }
      }

      else if (length)
      {
LABEL_13:
        v19 = 12291;
LABEL_25:
        v26 = [SRError errorWithCode:v19];
        result = 0;
        *length = v26;
        return result;
      }

      return 0;
    }

    v21 = *(v6 + 48);
    if (v21 >= timestamp)
    {
      v25 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = timestamp;
        *&buf[12] = 2048;
        *&buf[14] = v21;
        _os_log_error_impl(&dword_26561F000, v25, OS_LOG_TYPE_ERROR, "Frame should come in chronological order. Input %f < last %f", buf, 0x16u);
        if (!length)
        {
          return 0;
        }
      }

      else if (!length)
      {
        return 0;
      }

      v19 = 12292;
      goto LABEL_25;
    }

    v22 = mach_continuous_time();
    v23 = SRAbsoluteTimeFromContinuousTime(v22);
    if (v23 + 10.0 < timestamp)
    {
      v24 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        *&buf[4] = timestamp;
        *&buf[12] = 2048;
        *&buf[14] = v23;
        _os_log_error_impl(&dword_26561F000, v24, OS_LOG_TYPE_ERROR, "Timestamp is from the future. Input %f, Current: %f", buf, 0x16u);
        if (length)
        {
          goto LABEL_21;
        }
      }

      else if (length)
      {
LABEL_21:
        v19 = 12296;
        goto LABEL_25;
      }

      return 0;
    }

    if (HIDWORD(bytes))
    {
      v27 = SRLogFrameStore;
      if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_ERROR))
      {
        *buf = 134349312;
        *&buf[4] = bytes;
        *&buf[12] = 1024;
        *&buf[14] = -1;
        _os_log_error_impl(&dword_26561F000, v27, OS_LOG_TYPE_ERROR, "Sample too large %{public}zu but only %u supported", buf, 0x12u);
        if (!length)
        {
          return 0;
        }
      }

      else if (!length)
      {
        return 0;
      }

      v19 = 12293;
      goto LABEL_25;
    }

    v28 = adler32(0, 0, 0);
    v29 = adler32_z(v28, a2, bytes);
    *buf = timestamp;
    *&buf[8] = v29;
    *&buf[16] = bytes;
    [(SRMemoryMapping *)*(v6 + 16) appendBytes:buf length:0x14uLL];
    [(SRMemoryMapping *)*(v6 + 16) appendBytes:a2 length:bytes];
    *(v6 + 48) = timestamp;
    v30 = *(v6 + 16);
    if (v30)
    {
      v30 = (v30[3] + v30[4] - v30[2]);
    }

    v35 = v30;
    v31 = *(v6 + 24);
    if (v31)
    {
      v32 = *(v31 + 16);
      if ([(SRMemoryMapping *)v31 isValidWriteToDestinationAddress:8uLL withLength:&v35 bytes:?])
      {
        *(v32 + 4) = v35;
      }

      v33 = *(v6 + 24);
      if (v33)
      {
        v34 = *(v33 + 16);
        if ([(SRMemoryMapping *)v33 isValidWriteToDestinationAddress:8uLL withLength:v6 + 48 bytes:?])
        {
          *(v34 + 12) = *(v6 + 48);
        }
      }
    }

    return 1;
  }

  return result;
}

- (void)sync
{
  v11 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = SRLogFrameStore;
    if (os_log_type_enabled(SRLogFrameStore, OS_LOG_TYPE_DEFAULT))
    {
      v4 = result[2];
      if (v4)
      {
        v5 = *(v4 + 24) - *(v4 + 16);
      }

      else
      {
        v5 = 0;
      }

      Property = objc_getProperty(result, v3, 56, 1);
      v7 = 134349314;
      v8 = v5;
      v9 = 2114;
      pathname = [(NSFileHandle *)Property pathname];
      _os_log_impl(&dword_26561F000, v2, OS_LOG_TYPE_DEFAULT, "Syncing %{public}zu bytes from segment %{public}@ to disk", &v7, 0x16u);
    }

    [(SRMemoryMapping *)result[3] sync];
    [(SRMemoryMapping *)result[2] sync];
  }
}

@end