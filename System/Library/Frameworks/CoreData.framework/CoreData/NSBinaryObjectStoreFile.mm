@interface NSBinaryObjectStoreFile
- (BOOL)_writeMetadataData:(id)data andMapDataData:(id)dataData toFile:(id)file error:(id *)error;
- (BOOL)readFromFile:(void *)file error:;
- (uint64_t)readMetadataFromFile:(int)file securely:(void *)securely error:;
- (uint64_t)writeMetadataToFile:(id *)file error:;
- (uint64_t)writeToFile:(uint64_t)file error:;
- (void)clearCurrentValues;
- (void)dealloc;
@end

@implementation NSBinaryObjectStoreFile

- (void)dealloc
{
  self->_fullMetadata = 0;

  self->_mapData = 0;
  self->_storeOptions = 0;
  v3.receiver = self;
  v3.super_class = NSBinaryObjectStoreFile;
  [(NSBinaryObjectStoreFile *)&v3 dealloc];
}

- (void)clearCurrentValues
{
  *(self + 8) = 0;
  if (*(self + 16))
  {
    v2 = [0 copy];

    *(self + 16) = v2;
  }

  *(self + 24) = 0;

  [(NSXPCStoreServerConnectionContext *)self setActiveStore:?];
}

- (BOOL)readFromFile:(void *)file error:
{
  v61 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  [(NSBinaryObjectStoreFile *)self clearCurrentValues];
  v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:a2 options:1 error:file];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = [v6 length];
  if (v8)
  {
    if (v8 <= 0x3F)
    {

      if (file)
      {
        v9 = objc_alloc(MEMORY[0x1E695DF20]);
        v10 = [v9 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A250];
        v13 = 259;
LABEL_11:
        *file = [v11 errorWithDomain:v12 code:v13 userInfo:v10];

        return 0;
      }

      return 0;
    }

    if (*[v7 bytes] != 0x6174614465726F43)
    {

      if (file)
      {
        v15 = objc_alloc(MEMORY[0x1E695DF20]);
        v10 = [v15 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v11 = MEMORY[0x1E696ABC0];
        v12 = *MEMORY[0x1E696A250];
        v13 = 134000;
        goto LABEL_11;
      }

      return 0;
    }

    if ([v7 length] > 0x3F)
    {
      v53 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      if (byte_1ED4BEEC6 == 1)
      {
        v19 = [*(self + 40) objectForKey:@"_NSBinaryStoreInsecureDecodingCompatibilityOption"];
        if (v19)
        {
          v20 = [v19 BOOLValue] ^ 1;
        }

        else
        {
          v20 = 1;
        }
      }

      else
      {
        v20 = 0;
      }

      error = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      *&v21 = SetHostHeaderWithBigHeader(&v57, [v7 bytes]);
      v14 = DWORD2(v57) == 1;
      if (DWORD2(v57) == 1)
      {
        *(self + 8) = HIDWORD(v57);
        v22 = [v7 subdataWithRange:{v58, v21}];
        v23 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v22 error:&error];
        if (error)
        {
          code = [error code];
          v55 = *MEMORY[0x1E696AA08];
          v56 = error;
          v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v43 = [_NSCoreDataException exceptionWithName:code code:@"Keyed archiver failure" reason:v42 userInfo:?];
          objc_exception_throw(v43);
        }

        v24 = +[_PFRoutines plistClassesForSecureCoding];
        if (v20)
        {
          [v23 setRequiresSecureCoding:1];
          [v23 _allowDecodingCyclesInSecureMode];
          v25 = [*(self + 40) objectForKey:@"NSBinaryStoreSecureDecodingClasses"];
          if (v25)
          {
            v24 = [v24 mutableCopy];
            [v24 unionSet:v25];
          }
        }

        else
        {
          [v23 setRequiresSecureCoding:0];
        }

        [v23 setDecodingFailurePolicy:1];
        v30 = [v23 decodeObjectOfClasses:v24 forKey:@"metadata"];
        if ([v23 error])
        {
          error = [v23 error];
          code2 = [error code];
          v55 = *MEMORY[0x1E696AA08];
          v56 = error;
          v45 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v46 = [_NSCoreDataException exceptionWithName:code2 code:@"Keyed archiver failure" reason:v45 userInfo:?];
          objc_exception_throw(v46);
        }

        [v23 finishDecoding];

        if (*(self + 16) != v30)
        {
          v31 = [v30 copy];

          *(self + 16) = v31;
        }

        v32 = *(&v59 + 1);
        *(self + 24) = v60;
        v33 = [v7 subdataWithRange:{v59, v32}];
        v34 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v33 error:&error];
        if (error)
        {
          code3 = [error code];
          v55 = *MEMORY[0x1E696AA08];
          v56 = error;
          v48 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v49 = [_NSCoreDataException exceptionWithName:code3 code:@"Keyed archiver failure" reason:v48 userInfo:?];
          objc_exception_throw(v49);
        }

        v35 = +[NSBinaryObjectStore _classesForPropertyValues];
        if (v20)
        {
          [v34 setRequiresSecureCoding:1];
          [v34 _allowDecodingCyclesInSecureMode];
          v36 = [*(self + 40) objectForKey:@"NSBinaryStoreSecureDecodingClasses"];
          if (v36)
          {
            v35 = [v35 mutableCopy];
            [v35 unionSet:v36];
          }
        }

        else
        {
          [v34 setRequiresSecureCoding:0];
        }

        [v34 setDecodingFailurePolicy:1];
        v37 = [v34 decodeObjectOfClasses:v35 forKey:@"mapData"];
        if ([v34 error])
        {
          error = [v34 error];
          code4 = [error code];
          v55 = *MEMORY[0x1E696AA08];
          v56 = error;
          v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v52 = [_NSCoreDataException exceptionWithName:code4 code:@"Keyed archiver failure" reason:v51 userInfo:?];
          objc_exception_throw(v52);
        }

        [v34 finishDecoding];

        [(NSXPCStoreServerConnectionContext *)self setActiveStore:v37];
        v29 = 0;
      }

      else if (file)
      {
        v26 = objc_alloc(MEMORY[0x1E695DF20]);
        v27 = [v26 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v29 = [v28 initWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v27];
      }

      else
      {
        v29 = 0;
      }

      v38 = v29;

      [v53 drain];
      v39 = 0;
      v40 = v29;
      if (file && v29)
      {
        *file = v29;
      }
    }

    else
    {
      if (file)
      {
        v17 = objc_alloc(MEMORY[0x1E695DF20]);
        v18 = [v17 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        *file = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v18];
      }

      v14 = 0;
    }
  }

  else
  {

    return 1;
  }

  return v14;
}

- (uint64_t)writeMetadataToFile:(id *)file error:
{
  v28 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v6 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v24 = 0;
  v7 = [MEMORY[0x1E696AC00] fileHandleForUpdatingAtPath:a2];
  if (!v7)
  {
    [v6 drain];
    if (file)
    {
      v13 = objc_alloc(MEMORY[0x1E695DF20]);
      v14 = [v13 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      *file = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v14];
    }

    return 0;
  }

  v8 = v7;
  v9 = [v7 readDataOfLength:64];
  if (*[v9 bytes] == 0x6174614465726F43)
  {
    v26 = 0u;
    v27 = 0u;
    memset(v25, 0, sizeof(v25));
    *&v15 = SetHostHeaderWithBigHeader(v25, [v9 bytes]);
    if (DWORD2(v25[0]) == 1)
    {
      [v8 seekToFileOffset:{v26, v15}];
      v16 = [v8 readDataOfLength:*(&v26 + 1)];
      v17 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:512];
      v18 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v17];
      [v18 encodeObject:self[2] forKey:@"metadata"];
      [v18 finishEncoding];

      v12 = [self _writeMetadataData:v17 andMapDataData:v16 toFile:a2 error:&v24];
    }

    else
    {
      if (file)
      {
        v19 = objc_alloc(MEMORY[0x1E695DF20]);
        v20 = [v19 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v20];
      }

      v12 = 0;
    }
  }

  else
  {
    if (file)
    {
      v10 = objc_alloc(MEMORY[0x1E695DF20]);
      v11 = [v10 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v11];
    }

    v12 = 0;
  }

  v21 = v24;
  [v8 closeFile];
  [v6 drain];
  v22 = v24;
  if (file && v24)
  {
    *file = v24;
  }

  return v12;
}

- (uint64_t)readMetadataFromFile:(int)file securely:(void *)securely error:
{
  v55 = *MEMORY[0x1E69E9840];
  if (!self)
  {
LABEL_9:
    v18 = 0;
    return v18 & 1;
  }

  [(NSBinaryObjectStoreFile *)self clearCurrentValues];
  v8 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v9 = [MEMORY[0x1E696AC00] fileHandleForReadingAtPath:a2];
  if (!v9)
  {
    [v8 drain];
    if (securely)
    {
      v16 = objc_alloc(MEMORY[0x1E695DF20]);
      v17 = [v16 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      *securely = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v17];
    }

    goto LABEL_9;
  }

  v10 = v9;
  error = 0;
  v11 = [v9 readDataOfLength:64];
  v12 = [v11 length];
  if (!v12)
  {
    v19 = 0;
    v15 = 0;
    v20 = 0;
    v46 = 1;
    goto LABEL_34;
  }

  if (v12 <= 0x3F)
  {
    if (securely)
    {
      v13 = objc_alloc(MEMORY[0x1E695DF20]);
      v14 = [v13 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v14];
    }

    else
    {
      v15 = 0;
    }

    v19 = 0;
    v20 = 0;
    v46 = 0;
    goto LABEL_34;
  }

  if (*[v11 bytes] != 0x6174614465726F43)
  {
    if (securely)
    {
      v21 = objc_alloc(MEMORY[0x1E695DF20]);
      v22 = [v21 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
      v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v22];
    }

    else
    {
      v15 = 0;
    }

    v20 = 0;
    goto LABEL_33;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  *&v23 = SetHostHeaderWithBigHeader(&v51, [v11 bytes]);
  v20 = DWORD2(v51) == 1;
  if (DWORD2(v51) == 1)
  {
    *(self + 8) = HIDWORD(v51);
    v24 = v52;
    *(self + 24) = v54;
    [v10 seekToFileOffset:{v24, v23}];
    v25 = [v10 readDataOfLength:*(&v52 + 1)];
    v26 = [v25 length];
    if (v26 != *(&v52 + 1))
    {
      if (securely)
      {
        v32 = objc_alloc(MEMORY[0x1E695DF20]);
        v33 = [v32 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
        v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:259 userInfo:v33];
      }

      else
      {
        v15 = 0;
      }

      v46 = 0;
      v19 = 0;
      v20 = 0;
      goto LABEL_34;
    }

    v27 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v25 error:&error];
    if (error)
    {
      code = [error code];
      v49 = *MEMORY[0x1E696AA08];
      v50 = error;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v41 = [_NSCoreDataException exceptionWithName:code code:@"Keyed archiver failure" reason:v40 userInfo:?];
      objc_exception_throw(v41);
    }

    v28 = +[_PFRoutines plistClassesForSecureCoding];
    if (file)
    {
      [v27 setRequiresSecureCoding:1];
      [v27 _allowDecodingCyclesInSecureMode];
      v29 = objc_msgSend_valueForKey_(*(self + 40));
      if (v29)
      {
        v28 = [v28 mutableCopy];
        [v28 unionSet:v29];
      }
    }

    else
    {
      [v27 setRequiresSecureCoding:0];
    }

    [v27 setDecodingFailurePolicy:1];
    v34 = [v27 decodeObjectOfClasses:v28 forKey:@"metadata"];
    if ([v27 error])
    {
      error = [v27 error];
      code2 = [error code];
      v47 = *MEMORY[0x1E696AA08];
      v48 = error;
      v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      v44 = [_NSCoreDataException exceptionWithName:code2 code:@"Keyed archiver failure" reason:v43 userInfo:?];
      objc_exception_throw(v44);
    }

    [v27 finishDecoding];

    if (*(self + 16) != v34)
    {
      v35 = [v34 copy];

      v15 = 0;
      *(self + 16) = v35;
      goto LABEL_33;
    }

LABEL_32:
    v15 = 0;
    goto LABEL_33;
  }

  if (!securely)
  {
    goto LABEL_32;
  }

  v30 = objc_alloc(MEMORY[0x1E695DF20]);
  v31 = [v30 initWithObjectsAndKeys:{a2, *MEMORY[0x1E696A368], 0}];
  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:134000 userInfo:v31];

LABEL_33:
  v19 = 1;
LABEL_34:
  v36 = v15;
  [v10 closeFile];
  [v8 drain];
  v37 = v15;
  if (securely && v15)
  {
    *securely = v15;
  }

  v18 = v46;
  if (v19)
  {
    v18 = v20;
  }

  return v18 & 1;
}

- (BOOL)_writeMetadataData:(id)data andMapDataData:(id)dataData toFile:(id)file error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  v29 = 0;
  v11 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  v34 = 0x6174614465726F43;
  v35 = 0x1000000;
  if (self)
  {
    databaseVersion = self->_databaseVersion;
  }

  else
  {
    databaseVersion = 0;
  }

  v41 = 0u;
  v36 = bswap32(databaseVersion);
  v37 = bswap64([dataData length] + 64);
  v38 = bswap64([data length]);
  v39 = 0x4000000000000000;
  v40 = bswap64([dataData length]);
  if (self)
  {
    primaryKeyGeneration = self->_primaryKeyGeneration;
  }

  else
  {
    primaryKeyGeneration = 0;
  }

  v41 = bswap64(primaryKeyGeneration);
  v14 = [dataData length];
  v15 = [data length];
  v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:v14 + v15 + 64];
  [v16 appendBytes:&v34 length:64];
  [v16 appendData:dataData];
  [v16 appendData:data];
  v17 = objc_msgSend_valueForKey_(self->_storeOptions);
  if (v17)
  {
    if ([*MEMORY[0x1E696A3A8] isEqualToString:v17])
    {
      v18 = 268435457;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A388] isEqualToString:v17])
    {
      v18 = 1073741825;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A380] isEqualToString:v17])
    {
      v18 = 805306369;
      goto LABEL_23;
    }

    if ([*MEMORY[0x1E696A378] isEqualToString:v17])
    {
      v18 = 536870913;
      goto LABEL_23;
    }

    v19 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_22;
    }

    if (_pflogging_catastrophic_mode)
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v17;
LABEL_36:
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey\n", buf, 0xCu);
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(1);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v31 = v17;
        goto LABEL_36;
      }
    }

LABEL_22:
    _NSCoreDataLog_console(1, "Unrecognized value '%@' passed into options for NSPersistentStoreFileProtectionKey", v17);
    objc_autoreleasePoolPop(v19);
    v18 = 1;
    goto LABEL_23;
  }

  if (BYTE5(z9dsptsiQ80etb9782fsrs98bfdle88))
  {
    v18 = 1073741825;
  }

  else
  {
    v18 = 1;
  }

LABEL_23:
  v21 = [v16 writeToFile:file options:v18 error:&v29];
  if ((v21 & 1) == 0)
  {
    v22 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      if (_pflogging_catastrophic_mode)
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_34;
        }
      }

      else
      {
        v23 = _PFLogGetLogStream(1);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
LABEL_34:
          v27 = v29;
          userInfo = [v29 userInfo];
          *buf = 138412546;
          v31 = v27;
          v32 = 2112;
          v33 = userInfo;
          _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: Binary store: writeToFile error = %@ and userInfo = %@\n", buf, 0x16u);
        }
      }
    }

    _NSCoreDataLog_console(1, "Binary store: writeToFile error = %@ and userInfo = %@", v29, [v29 userInfo]);
    objc_autoreleasePoolPop(v22);
  }

  v24 = v29;
  [v11 drain];
  if (v29)
  {
    v25 = v29;
    if (error)
    {
      *error = v29;
    }
  }

  return v21;
}

- (uint64_t)writeToFile:(uint64_t)file error:
{
  if (!self)
  {
    return 0;
  }

  v6 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:512];
  v7 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v6];
  [v7 encodeObject:self[2] forKey:@"metadata"];
  [v7 finishEncoding];

  v8 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
  v9 = [objc_alloc(MEMORY[0x1E696ACC8]) initForWritingWithMutableData:v8];
  [v9 encodeObject:self[4] forKey:@"mapData"];
  [v9 finishEncoding];
  v10 = [self _writeMetadataData:v6 andMapDataData:v8 toFile:a2 error:file];
  [v9 finishEncoding];

  return v10;
}

@end