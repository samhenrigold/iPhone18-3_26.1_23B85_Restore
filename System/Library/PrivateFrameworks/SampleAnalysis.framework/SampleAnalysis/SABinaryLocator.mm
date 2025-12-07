@interface SABinaryLocator
+ (id)sharedBinaryLocator;
- (SABinaryLocator)init;
- (_BYTE)addURLForSymbolOwner:(uint64_t)owner;
- (id)mappings;
- (id)urlForUUID:(_BYTE *)d;
- (uint64_t)addURL:(uint64_t)l ForUUID:;
- (uint64_t)removeURLForUUID:(uint64_t)result;
- (void)_saveMappings;
- (void)done;
@end

@implementation SABinaryLocator

+ (id)sharedBinaryLocator
{
  if (qword_1EDD03308 != -1)
  {
    dispatch_once(&qword_1EDD03308, &__block_literal_global_14);
  }

  v2 = qword_1EDD03300;
  objc_sync_enter(v2);
  ++_MergedGlobals_10;
  objc_sync_exit(v2);

  v3 = qword_1EDD03300;

  return v3;
}

- (void)done
{
  obj = self;
  objc_sync_enter(obj);
  if (!--_MergedGlobals_10)
  {
    if (obj->_enabled)
    {
      [(SABinaryLocator *)obj _saveMappings];
    }

    mappings = obj->_mappings;
    obj->_mappings = 0;
  }

  objc_sync_exit(obj);
}

- (void)_saveMappings
{
  v36 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (*(selfCopy + 24) != 1 || geteuid())
    {
      goto LABEL_27;
    }

    if (selfCopy[1])
    {
      v2 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(selfCopy[1], "count") + 1}];
      v3 = selfCopy[1];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __32__SABinaryLocator__saveMappings__block_invoke;
      v28[3] = &unk_1E86F8790;
      v4 = v2;
      v29 = v4;
      [v3 enumerateKeysAndObjectsUsingBlock:v28];
      [v4 setObject:selfCopy[2] forKeyedSubscript:@"build_number"];
      memset(&v27, 0, sizeof(v27));
      if (stat("/var/db/spindump", &v27))
      {
        if (*__error() != 2)
        {
          v7 = *__error();
          v14 = _sa_logt();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v19 = *__error();
            v20 = __error();
            v21 = strerror(*v20);
            *buf = 136315650;
            v31 = "/var/db/spindump";
            v32 = 1024;
            v33 = v19;
            v34 = 2080;
            v35 = v21;
            _os_log_error_impl(&dword_1E0E2F000, v14, OS_LOG_TYPE_ERROR, "Unable to stat %s: %d %s", buf, 0x1Cu);
          }

          v9 = __error();
          goto LABEL_20;
        }

        v5 = *__error();
        v6 = _sa_logt();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315138;
          v31 = "/var/db/spindump";
          _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "Creating nugget directory %s", buf, 0xCu);
        }

        *__error() = v5;
        if (mkdir("/var/db/spindump", 0x1EDu))
        {
          v7 = *__error();
          v8 = _sa_logt();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v22 = *__error();
            v23 = __error();
            v24 = strerror(*v23);
            *buf = 136315650;
            v31 = "/var/db/spindump";
            v32 = 1024;
            v33 = v22;
            v34 = 2080;
            v35 = v24;
            _os_log_error_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_ERROR, "Unable to create %s: %d %s", buf, 0x1Cu);
          }

          v9 = __error();
LABEL_20:
          *v9 = v7;

          goto LABEL_27;
        }
      }

      v10 = [objc_alloc(MEMORY[0x1E695DFC0]) initToFileAtPath:@"/var/db/spindump/UUIDToBinaryLocations" append:0];
      v11 = v10;
      if (!v10)
      {
        v15 = *__error();
        v16 = _sa_logt();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "Unable to create stream for binary locator path", buf, 2u);
        }

        *__error() = v15;
        goto LABEL_27;
      }

      [v10 open];
      v26 = 0;
      v12 = [MEMORY[0x1E696AE40] writePropertyList:v4 toStream:v11 format:200 options:0 error:&v26];
      v13 = v26;
      [v11 close];
      if (!v12)
      {
        v17 = *__error();
        v18 = _sa_logt();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v25 = [v13 debugDescription];
          *buf = 138412290;
          v31 = v25;
          _os_log_error_impl(&dword_1E0E2F000, v18, OS_LOG_TYPE_ERROR, "Unable to save mappings: %@", buf, 0xCu);
        }

        *__error() = v17;
        goto LABEL_27;
      }
    }

    *(selfCopy + 24) = 0;
LABEL_27:
    objc_sync_exit(selfCopy);
  }
}

void __32__SABinaryLocator__saveMappings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v6 = [MEMORY[0x1E695DFB0] null];

    if (v6 != a3)
    {
      v7 = [a3 path];
      if (v7)
      {
        v8 = *(a1 + 32);
        v9 = [a2 UUIDString];
        [v8 setObject:v7 forKey:v9];
      }

      else
      {
        v10 = *__error();
        v11 = _sa_logt();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = 136315138;
          v13 = [a3 fileSystemRepresentation];
          _os_log_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to get path for %s", &v12, 0xCu);
        }

        *__error() = v10;
      }
    }
  }
}

- (SABinaryLocator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:@"You must call sharedBinaryLocator" reason:0 userInfo:0];
  objc_exception_throw(v2);
}

void __38__SABinaryLocator_sharedBinaryLocator__block_invoke()
{
  v0 = [SABinaryLocator alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = SABinaryLocator;
    v0 = objc_msgSendSuper2(&v2, sel_init);
    if (v0)
    {
      v0->_enabled = 1;
    }
  }

  v1 = qword_1EDD03300;
  qword_1EDD03300 = v0;
}

- (id)mappings
{
  v38 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = selfCopy[1];
  if (!v2 && (*(selfCopy + 25) & 1) != 0)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithContentsOfFile:@"/var/db/spindump/UUIDToBinaryLocations"];
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[NSObject count](v3, "count")}];
    v5 = selfCopy[1];
    selfCopy[1] = v4;

    if (selfCopy[2])
    {
      goto LABEL_7;
    }

    v6 = _CFCopySystemVersionDictionary();
    v7 = v6;
    if (v6)
    {
      v8 = CFDictionaryGetValue(v6, *MEMORY[0x1E695E1E8]);
      v9 = selfCopy[2];
      selfCopy[2] = v8;

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_42;
      }

      while (1)
      {
        CFRelease(v7);
LABEL_7:
        if (!v3)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = [v3 objectForKeyedSubscript:@"build_number"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v11 = selfCopy[2];
        if (!v11)
        {
          goto LABEL_12;
        }

        if (!v10)
        {
          v12 = 0;
LABEL_14:
          v10 = @"unknown";
          goto LABEL_15;
        }

        v12 = v10;
        if ([v11 isEqualToString:v10])
        {
          goto LABEL_12;
        }

LABEL_15:
        uTF8String = [@"/var/db/spindump/UUIDToBinaryLocations" UTF8String];
        if (uTF8String)
        {
          if (unlink(uTF8String))
          {
            v15 = *__error();
            v16 = _sa_logt();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              v24 = *__error();
              *buf = 138412546;
              v35 = @"/var/db/spindump/UUIDToBinaryLocations";
              v36 = 1024;
              LODWORD(v37) = v24;
              _os_log_error_impl(&dword_1E0E2F000, v16, OS_LOG_TYPE_ERROR, "Unable to unlink old binary locator file %@: %{errno}d", buf, 0x12u);
            }

            v17 = __error();
          }

          else
          {
            v15 = *__error();
            v23 = _sa_logt();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v25 = [v3 count];
              *buf = 138412546;
              v35 = v10;
              v36 = 2048;
              v37 = v25;
              _os_log_debug_impl(&dword_1E0E2F000, v23, OS_LOG_TYPE_DEBUG, "Deleted old binary locator file from old build %@ with %ld items", buf, 0x16u);
            }

            v17 = __error();
          }

          *v17 = v15;

          v13 = selfCopy[1];
          goto LABEL_34;
        }

        v7 = *__error();
        v3 = _sa_logt();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E0E2F000, v3, OS_LOG_TYPE_ERROR, "No cstring path for nsstring path", buf, 2u);
        }

        *__error() = v7;
        _SASetCrashLogMessage(112, "No cstring path for nsstring path");
        _os_crash();
        __break(1u);
LABEL_42:
        v28 = *__error();
        v29 = _sa_logt();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
        {
          ClassName = object_getClassName(selfCopy[2]);
          *buf = 136315138;
          v35 = ClassName;
          _os_log_fault_impl(&dword_1E0E2F000, v29, OS_LOG_TYPE_FAULT, "Version dict provided invalid build number (class %s)", buf, 0xCu);
        }

        *__error() = v28;
        v30 = selfCopy[2];
        selfCopy[2] = 0;
      }

      v26 = *__error();
      v27 = _sa_logt();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        v31 = object_getClassName(v10);
        *buf = 136315138;
        v35 = v31;
        _os_log_fault_impl(&dword_1E0E2F000, v27, OS_LOG_TYPE_FAULT, "Invalid build number class %s", buf, 0xCu);
      }

      *__error() = v26;
      v12 = 0;
      if (!selfCopy[2])
      {
        v10 = 0;
LABEL_12:
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __27__SABinaryLocator_mappings__block_invoke;
        v33[3] = &unk_1E86F5AC0;
        v33[4] = selfCopy;
        [v3 enumerateKeysAndObjectsUsingBlock:v33];
        v13 = selfCopy[1];

        v12 = v10;
LABEL_34:

        goto LABEL_27;
      }

      goto LABEL_14;
    }

    v18 = *__error();
    v19 = _sa_logt();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1E0E2F000, v19, OS_LOG_TYPE_FAULT, "No system version", buf, 2u);
    }

    *__error() = v18;
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_23:
    v20 = *__error();
    v21 = _sa_logt();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E0E2F000, v21, OS_LOG_TYPE_DEFAULT, "WARNING: Unable to open binary locator database", buf, 2u);
    }

    *__error() = v20;
    v2 = selfCopy[1];
  }

  v13 = v2;
LABEL_27:
  objc_sync_exit(selfCopy);

  return v13;
}

void __27__SABinaryLocator_mappings__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    if (([a2 isEqualToString:@"build_number"] & 1) == 0)
    {
      v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:a3 isDirectory:0];
      v6 = uuidForString(a2);
      if (v6)
      {
        [*(*(a1 + 32) + 8) setObject:v9 forKey:v6];
      }
    }
  }

  else
  {
    v7 = *__error();
    v8 = _sa_logt();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      ClassName = object_getClassName(a2);
      v12 = 2080;
      v13 = object_getClassName(a3);
      _os_log_fault_impl(&dword_1E0E2F000, v8, OS_LOG_TYPE_FAULT, "Invalid entry in UUIDToBinaryLocations: %s -> %s", buf, 0x16u);
    }

    *__error() = v7;
  }
}

- (id)urlForUUID:(_BYTE *)d
{
  v32[2] = *MEMORY[0x1E69E9840];
  if (!d || d[25] != 1)
  {
    v11 = 0;
    goto LABEL_24;
  }

  dCopy = d;
  objc_sync_enter(dCopy);
  mappings = [(SABinaryLocator *)dCopy mappings];
  v5 = [mappings objectForKey:a2];

  objc_sync_exit(dCopy);
  if (!v5)
  {
    goto LABEL_12;
  }

  null = [MEMORY[0x1E695DFB0] null];

  if (v5 == null)
  {
    v11 = 0;
    goto LABEL_23;
  }

  path = [v5 path];
  if (!path || ([MEMORY[0x1E696AC08] defaultManager], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "path"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "fileExistsAtPath:", v9), v9, v8, path, !v10))
  {
    v12 = *__error();
    v13 = _sa_logt();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      uUIDString = [a2 UUIDString];
      path2 = [v5 path];
      *buf = 138412546;
      v29 = uUIDString;
      v30 = 2112;
      v31[0] = path2;
      _os_log_impl(&dword_1E0E2F000, v13, OS_LOG_TYPE_INFO, "Found stale entry for UUID %@, mapping to non-existent path %@. This will be ignored and evicted from the cache.", buf, 0x16u);
    }

    *__error() = v12;
    dCopy[24] = 1;
    v16 = dCopy;
    objc_sync_enter(v16);
    mappings2 = [(SABinaryLocator *)v16 mappings];
    [mappings2 removeObjectForKey:a2];

    objc_sync_exit(v16);
LABEL_12:
    v32[0] = 0;
    v32[1] = 0;
    [a2 getUUIDBytes:v32];
    OSLogLookupPathWithUUID();
    v18 = SAFilepathForCString(0);
    if ([v18 isAbsolutePath])
    {
      v19 = *__error();
      v20 = _sa_logt();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        v29 = v18;
        v30 = 1040;
        LODWORD(v31[0]) = 16;
        WORD2(v31[0]) = 2096;
        *(v31 + 6) = v32;
        _os_log_debug_impl(&dword_1E0E2F000, v20, OS_LOG_TYPE_DEBUG, "Got %@ for %{uuid_t}.16P from libtrace", buf, 0x1Cu);
      }

      *__error() = v19;
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      v22 = [defaultManager fileExistsAtPath:v18];

      if (v22)
      {
        v23 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v18 isDirectory:0];

        [(SABinaryLocator *)dCopy addURL:v23 ForUUID:a2];
        v5 = v23;
        v11 = v5;
      }

      else
      {
        v24 = *__error();
        v25 = _sa_logt();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          uUIDString2 = [a2 UUIDString];
          *buf = 138412546;
          v29 = uUIDString2;
          v30 = 2080;
          v31[0] = 0;
          _os_log_impl(&dword_1E0E2F000, v25, OS_LOG_TYPE_INFO, "OSLogLookupPathWithUUID returned stale entry for UUID %@; path %s doesn't exist. This will be ignored.", buf, 0x16u);
        }

        v11 = 0;
        *__error() = v24;
      }
    }

    else
    {
      v11 = 0;
    }

    goto LABEL_23;
  }

  v5 = v5;
  v11 = v5;
LABEL_23:

LABEL_24:

  return v11;
}

- (uint64_t)addURL:(uint64_t)l ForUUID:
{
  v23 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    return result;
  }

  v3 = result;
  if (*(result + 25) != 1)
  {
    return 0;
  }

  result = 0;
  if (!a2 || !l)
  {
    return result;
  }

  fileSystemRepresentation = [a2 fileSystemRepresentation];
  if (!fileSystemRepresentation)
  {
LABEL_15:
    v13 = v3;
    objc_sync_enter(v13);
    mappings = [(SABinaryLocator *)v13 mappings];
    v15 = [mappings objectForKey:l];
    if (!v15)
    {
      v13[24] = 1;
      [mappings setObject:a2 forKey:l];

      objc_sync_exit(v13);
      return 1;
    }

    objc_sync_exit(v13);
    return 0;
  }

  v7 = fileSystemRepresentation;
  memset(&v17, 0, sizeof(v17));
  if (stat(fileSystemRepresentation, &v17))
  {
    return 0;
  }

  memset(&v22, 0, 512);
  if (statfs(v7, &v22))
  {
    v8 = *__error();
    v9 = _sa_logt();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v16 = *__error();
      *buf = 136315394;
      v19 = v7;
      v20 = 1024;
      v21 = v16;
      _os_log_debug_impl(&dword_1E0E2F000, v9, OS_LOG_TYPE_DEBUG, "Unable to statfs %s: %{errno}d", buf, 0x12u);
    }

    *__error() = v8;
    goto LABEL_15;
  }

  if (v22.f_type != 22)
  {
    goto LABEL_15;
  }

  v10 = *__error();
  v11 = _sa_logt();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v19 = v7;
    _os_log_debug_impl(&dword_1E0E2F000, v11, OS_LOG_TYPE_DEBUG, "Not caching translocated path %s", buf, 0xCu);
  }

  v12 = __error();
  result = 0;
  *v12 = v10;
  return result;
}

- (_BYTE)addURLForSymbolOwner:(uint64_t)owner
{
  selfCopy = self;
  if (self)
  {
    if (self[25] == 1)
    {
      CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
      Path = CSSymbolOwnerGetPath();
      v6 = SAFilepathForCString(Path);
      v7 = v6;
      if (CFUUIDBytes && [v6 isAbsolutePath])
      {
        v8 = uuidForBytes(CFUUIDBytes);
        v9 = [(SABinaryLocator *)selfCopy urlForUUID:v8];

        if (v9)
        {
          selfCopy = 0;
        }

        else
        {
          v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v7 isDirectory:0];
          selfCopy = [(SABinaryLocator *)selfCopy addURL:v10 ForUUID:v8];
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return selfCopy;
}

- (uint64_t)removeURLForUUID:(uint64_t)result
{
  v11 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    result = 0;
    if (a2)
    {
      if (v3[25])
      {
        v4 = [(SABinaryLocator *)v3 urlForUUID:a2];
        if (v4)
        {
          v5 = *__error();
          v6 = _sa_logt();
          if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
          {
            uUIDString = [a2 UUIDString];
            *buf = 138412546;
            *&buf[4] = uUIDString;
            *&buf[12] = 2080;
            *&buf[14] = [v4 fileSystemRepresentation];
            _os_log_debug_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_DEBUG, "Deleted %@ -> %s", buf, 0x16u);
          }

          *__error() = v5;
          v3[24] = 1;
          *buf = 0;
          *&buf[8] = 0;
          [a2 getUUIDBytes:buf];
          OSLogLookupPathWithUUID();
          v7 = v3;
          objc_sync_enter(v7);
          mappings = [(SABinaryLocator *)v7 mappings];
          [mappings removeObjectForKey:a2];

          objc_sync_exit(v3);
          return 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

@end