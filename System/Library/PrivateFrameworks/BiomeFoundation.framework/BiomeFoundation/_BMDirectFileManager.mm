@interface _BMDirectFileManager
- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error;
- (BOOL)_removeFileAtPath:(id)path error:(id *)error;
- (BOOL)replaceFileAtPath:(id)path withData:(id)data protection:(int)protection flags:(int)flags error:(id *)error;
- (BOOL)setUpWithError:(id *)error;
- (_BMDirectFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options;
- (id)_fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error;
- (id)_openTemporaryDirectoryWithError:(id *)error;
- (id)_temporaryFileHandleWithProtection:(int)protection unlink:(BOOL)unlink error:(id *)error;
- (id)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags error:(id *)error;
@end

@implementation _BMDirectFileManager

- (_BMDirectFileManager)initWithDirectory:(id)directory cachingOptions:(int64_t)options
{
  directoryCopy = directory;
  v12.receiver = self;
  v12.super_class = _BMDirectFileManager;
  v7 = [(BMFileManager *)&v12 initWithDirectory:directoryCopy cachingOptions:options];
  if (v7)
  {
    v8 = +[BMProcess current];
    [v8 enforceDatavaultEntitlementRestrictions];

    v7->_setUpLock._os_unfair_lock_opaque = 0;
    v9 = [directoryCopy copy];
    directory = v7->_directory;
    v7->_directory = v9;
  }

  return v7;
}

- (BOOL)setUpWithError:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_setUpLock);
  if (self->_directoryHandle)
  {
    goto LABEL_4;
  }

  v5 = bm_openat_dprotected(4294967293, self->_directory, 1049344, 3);
  if ((v5 & 0x80000000) == 0)
  {
    v6 = [[BMFileAttributes alloc] initWithPath:self->_directory mode:1 protectionClass:BMDataProtectionClassFromOSProtectionClass(3)];
    v7 = [[BMFileHandle alloc] initWithFileDescriptor:v5 attributes:v6];
    directoryHandle = self->_directoryHandle;
    self->_directoryHandle = v7;

LABEL_4:
    LOBYTE(error) = 1;
    goto LABEL_5;
  }

  if (error)
  {
    v10 = *__error();
    v11 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:strerror(v10)];
    v15[0] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *error = [v11 errorWithDomain:*MEMORY[0x1E696A798] code:v10 userInfo:v13];

    LOBYTE(error) = 0;
  }

LABEL_5:
  os_unfair_lock_unlock(&self->_setUpLock);
  return error;
}

- (id)_fileHandleForFileAtPath:(id)path flags:(int)flags protection:(int)protection error:(id *)error
{
  lastPathComponent = *&protection;
  v47[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (![(_BMDirectFileManager *)self setUpWithError:error])
  {
    goto LABEL_14;
  }

  if (pathCopy)
  {
    v11 = pathCopy;
    v12 = bm_subpath(self->_directory, v11);
    v13 = v11;
    if (!v12)
    {
      v13 = [(NSString *)self->_directory stringByAppendingPathComponent:v11];
      v12 = v11;
    }

    v14 = bm_openat_dprotected([(BMFileHandle *)self->_directoryHandle fd], v12, flags, lastPathComponent);
    if ((v14 & 0x80000000) != 0)
    {
      if (!error)
      {
        v20 = 0;
        goto LABEL_30;
      }

      v39 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A798];
      v22 = *__error();
      v23 = *MEMORY[0x1E696A578];
      v44 = *MEMORY[0x1E696A578];
      v24 = MEMORY[0x1E696AEC0];
      v25 = __error();
      v26 = [v24 stringWithUTF8String:strerror(*v25)];
      v45 = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      v28 = [v39 errorWithDomain:v21 code:v22 userInfo:v27];

      v29 = MEMORY[0x1E696ABC0];
      v30 = @"Create failed";
      if ((flags & 0x200) == 0)
      {
        v30 = @"Open failed";
      }

      v31 = *MEMORY[0x1E696AA08];
      v42[0] = v23;
      v42[1] = v31;
      v43[0] = v30;
      v43[1] = v28;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:2];
      v33 = [v29 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v32];
      v20 = 0;
    }

    else
    {
      v15 = v14;
      if (lastPathComponent == -1)
      {
        LODWORD(lastPathComponent) = fcntl(v14, 63);
        if ((lastPathComponent & 0x80000000) != 0)
        {
          if (*__error() != 45)
          {
            __error();
            v34 = __biome_log_for_category(2);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [_BMDirectFileManager _fileHandleForFileAtPath:flags:protection:error:];
            }
          }

          LODWORD(lastPathComponent) = -1;
        }
      }

      else if (lastPathComponent == 4)
      {
        lastPathComponent = [v11 lastPathComponent];
        v16 = +[BMStoreDirectory lock];
        v17 = [lastPathComponent isEqualToString:v16];

        LODWORD(lastPathComponent) = 4;
        if (v17)
        {
          fcntl(v15, 64, 4);
        }
      }

      v35 = BMDataProtectionClassFromOSProtectionClass(lastPathComponent);
      v28 = [[BMFileAttributes alloc] initWithPath:v13 mode:BMFileAccessModeFromOFlags(flags) protectionClass:v35];
      v36 = [[BMFileHandle alloc] initWithFileDescriptor:v15 attributes:v28];
      v20 = v36;
      if (!error || v36)
      {
        goto LABEL_29;
      }

      v37 = MEMORY[0x1E696ABC0];
      v40 = *MEMORY[0x1E696A578];
      v41 = @"Unspecified failure";
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v33 = [v37 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v32];
    }

    *error = v33;

LABEL_29:
LABEL_30:

    goto LABEL_31;
  }

  v18 = __biome_log_for_category(2);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (!error)
  {
LABEL_14:
    v20 = 0;
    goto LABEL_32;
  }

  v19 = MEMORY[0x1E696ABC0];
  v46 = *MEMORY[0x1E696A578];
  v47[0] = @"Invalid path";
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:&v46 count:1];
  [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v13];
  *error = v20 = 0;
LABEL_31:

LABEL_32:

  return v20;
}

- (BOOL)_removeFileAtPath:(id)path error:(id *)error
{
  v26[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([(_BMDirectFileManager *)self setUpWithError:error])
  {
    if (pathCopy)
    {
      v7 = bm_subpath(self->_directory, pathCopy);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = pathCopy;
      }

      v10 = v9;

      if (bm_validate_pathat([(BMFileHandle *)self->_directoryHandle fd], v10))
      {
        if (unlinkat(-[BMFileHandle fd](self->_directoryHandle, "fd"), [v10 fileSystemRepresentation], 0) != -1 || *__error() == 2)
        {
          v11 = 1;
LABEL_19:

          goto LABEL_20;
        }

        v19 = __biome_log_for_category(2);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          [_BMDirectFileManager _removeFileAtPath:error:];
        }

        if (error)
        {
          v20 = MEMORY[0x1E696ABC0];
          v21 = *MEMORY[0x1E696A578];
          v22 = @"Unlink failed";
          v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
          v16 = v20;
          v17 = 1;
          goto LABEL_17;
        }
      }

      else if (error)
      {
        v14 = MEMORY[0x1E696ABC0];
        v23 = *MEMORY[0x1E696A578];
        v24 = @"Invalid parameter";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
        v16 = v14;
        v17 = 2;
LABEL_17:
        *error = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];
      }

      v11 = 0;
      goto LABEL_19;
    }

    v12 = __biome_log_for_category(2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A578];
      v26[0] = @"Invalid path";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      [v13 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v10];
      *error = v11 = 0;
      goto LABEL_19;
    }
  }

  v11 = 0;
LABEL_20:

  return v11;
}

- (BOOL)_removeDirectoryAtPath:(id)path error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if ([(_BMDirectFileManager *)self setUpWithError:error])
  {
    if (pathCopy)
    {
      v7 = bm_subpath(self->_directory, pathCopy);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = pathCopy;
      }

      v10 = v9;

      if (bm_validate_pathat([(BMFileHandle *)self->_directoryHandle fd], v10))
      {
        v11 = [(BMFileHandle *)self->_directoryHandle fd];
        v12 = 1;
        if ((removefileat(v11, [v10 fileSystemRepresentation], 0, 1u) & 0x80000000) == 0 || *__error() == 2)
        {
          goto LABEL_22;
        }

        v13 = __biome_log_for_category(2);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [_BMDirectFileManager _removeDirectoryAtPath:error:];
        }

        if (!error)
        {
          goto LABEL_21;
        }

        v14 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v23 = @"Remove directory failed";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
        v16 = v14;
        v17 = 1;
      }

      else
      {
        if (!error)
        {
LABEL_21:
          v12 = 0;
          goto LABEL_22;
        }

        v20 = MEMORY[0x1E696ABC0];
        v24 = *MEMORY[0x1E696A578];
        v25 = @"Invalid parameter";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        v16 = v20;
        v17 = 2;
      }

      *error = [v16 errorWithDomain:@"BiomeStorageError" code:v17 userInfo:v15];

      goto LABEL_21;
    }

    v18 = __biome_log_for_category(2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v19 = MEMORY[0x1E696ABC0];
      v26 = *MEMORY[0x1E696A578];
      v27[0] = @"Invalid path";
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      [v19 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v10];
      *error = v12 = 0;
LABEL_22:

      goto LABEL_23;
    }
  }

  v12 = 0;
LABEL_23:

  return v12;
}

- (id)_openTemporaryDirectoryWithError:(id *)error
{
  v26 = 0;
  directory = [(BMFileManager *)self directory];
  v6 = [BMPaths getServiceDomain:&v26 subpath:0 forPath:directory];

  if (!v6 || ([BMPaths biomeTemporaryDirectoryForDomain:v26], v7 = objc_claimAutoreleasedReturnValue(), v8 = [BMFileAttributes alloc], v9 = BMFileAccessModeFromOFlags(512), v10 = [(BMFileAttributes *)v8 initWithPath:v7 mode:v9 protectionClass:BMDataProtectionClassFromOSProtectionClass(4)], fileHandleCache = self->super._fileHandleCache, v19 = MEMORY[0x1E69E9820], v20 = 3221225472, v21 = __57___BMDirectFileManager__openTemporaryDirectoryWithError___block_invoke, v22 = &unk_1E796B5B8, v25 = 0x420100200, v23 = v7, v24 = v10, v12 = v10, v13 = v7, [(BMCache *)fileHandleCache cachedObjectWithKey:v12 missHandler:&v19], v14 = objc_claimAutoreleasedReturnValue(), v24, v23, v12, v13, !v14))
  {
    directory = self->_directory;
    v16 = [BMStoreDirectory tmp:v19];
    v17 = [(NSString *)directory stringByAppendingPathComponent:v16];

    v14 = [(BMFileManager *)self fileHandleForFileAtPath:v17 flags:537920000 protection:4 error:error];
  }

  return v14;
}

- (id)_temporaryFileHandleWithProtection:(int)protection unlink:(BOOL)unlink error:(id *)error
{
  unlinkCopy = unlink;
  v35[2] = *MEMORY[0x1E69E9840];
  if (![(_BMDirectFileManager *)self setUpWithError:error])
  {
    v15 = 0;
    goto LABEL_20;
  }

  v29 = 0;
  v9 = [(_BMDirectFileManager *)self _openTemporaryDirectoryWithError:&v29];
  v10 = v29;
  v11 = v10;
  if (v9)
  {
    v28 = 0;
    v12 = bm_new_temporary_file([v9 fd], protection, unlinkCopy, &v28);
    v13 = v28;
    if ((v12 & 0x80000000) != 0)
    {
      if (!error)
      {
        v15 = 0;
        goto LABEL_18;
      }

      v14 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:0];
      v18 = MEMORY[0x1E696ABC0];
      v19 = *MEMORY[0x1E696AA08];
      v32[0] = *MEMORY[0x1E696A578];
      v32[1] = v19;
      v33[0] = @"Failed to create temporary file";
      v33[1] = v14;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
      [v18 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v20];
      *error = v15 = 0;
    }

    else
    {
      if (unlinkCopy)
      {
        v14 = @"<tmp>";
      }

      else
      {
        attributes = [v9 attributes];
        path = [attributes path];
        v14 = [path stringByAppendingPathComponent:v13];
      }

      v20 = [[BMFileAttributes alloc] initWithPath:v14 mode:2 protectionClass:BMDataProtectionClassFromOSProtectionClass(protection)];
      v23 = [[BMFileHandle alloc] initWithFileDescriptor:v12 attributes:v20];
      v15 = v23;
      if (v23)
      {
        v24 = v23;
      }

      else if (error)
      {
        v25 = MEMORY[0x1E696ABC0];
        v30 = *MEMORY[0x1E696A578];
        v31 = @"Unspecified failure";
        v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *error = [v25 errorWithDomain:@"BiomeStorageError" code:0 userInfo:v26];
      }
    }
  }

  else
  {
    if (!error)
    {
      v15 = 0;
      goto LABEL_19;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = *MEMORY[0x1E696AA08];
    v34[0] = *MEMORY[0x1E696A578];
    v34[1] = v17;
    v35[0] = @"Failed to open temporary directory";
    v35[1] = v10;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v16 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v13];
    *error = v15 = 0;
  }

LABEL_18:

LABEL_19:
LABEL_20:

  return v15;
}

- (BOOL)replaceFileAtPath:(id)path withData:(id)data protection:(int)protection flags:(int)flags error:(id *)error
{
  v9 = *&protection;
  v70[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dataCopy = data;
  if ([(_BMDirectFileManager *)self setUpWithError:error])
  {
    if ([pathCopy length])
    {
      v14 = bm_subpath(self->_directory, pathCopy);
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = pathCopy;
      }

      v17 = v16;

      if (bm_validate_pathat([(BMFileHandle *)self->_directoryHandle fd], v17))
      {
        v18 = [(_BMDirectFileManager *)self _temporaryFileHandleWithProtection:v9 unlink:0 error:error];
        v19 = v18;
        if (v18)
        {
          v60 = 0;
          v20 = [v18 overwriteWithData:dataCopy error:&v60];
          v21 = v60;
          v22 = v21;
          if (v20)
          {
            v55 = v21;
            v23 = [v17 containsString:@"/"];
            v24 = [(BMFileHandle *)self->_directoryHandle fd];
            v25 = v24;
            if (v23)
            {
              stringByDeletingLastPathComponent = [v17 stringByDeletingLastPathComponent];
              v27 = bm_openat_dprotected(v25, stringByDeletingLastPathComponent, 537920000, 0xFFFFFFFFLL);

              v58 = v27;
              if (v27 < 0)
              {
                v28 = __biome_log_for_category(2);
                if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
                {
                  [_BMDirectFileManager replaceFileAtPath:withData:protection:flags:error:];
                }

                v29 = MEMORY[0x1E696ABC0];
                v63 = *MEMORY[0x1E696A578];
                v64 = @"Failed to open destination directory";
                v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
                v57 = [v29 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v30];

                v31 = 0;
                goto LABEL_35;
              }
            }

            else
            {
              v58 = v24;
            }

            v59 = v55;
            v31 = [(_BMDirectFileManager *)self _openTemporaryDirectoryWithError:&v59];
            v39 = v59;

            if (v31)
            {
              v57 = v39;
              v56 = [v31 fd];
              attributes = [v19 attributes];
              filename = [attributes filename];
              fileSystemRepresentation = [filename fileSystemRepresentation];
              fileSystemRepresentation2 = [pathCopy fileSystemRepresentation];
              if (flags)
              {
                v43 = renameatx_np(v56, fileSystemRepresentation, v58, fileSystemRepresentation2, flags);
              }

              else
              {
                v43 = renameat(v56, fileSystemRepresentation, v58, fileSystemRepresentation2);
              }

              v47 = v43;

              if (!v47)
              {
                LOBYTE(v34) = 1;
                goto LABEL_41;
              }

              v30 = __biome_log_for_category(2);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
              {
                [_BMDirectFileManager replaceFileAtPath:withData:protection:flags:error:];
              }
            }

            else
            {
              v44 = MEMORY[0x1E696ABC0];
              v45 = *MEMORY[0x1E696AA08];
              v61[0] = *MEMORY[0x1E696A578];
              v61[1] = v45;
              v62[0] = @"Failed to open temporary directory";
              v62[1] = v39;
              v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:v61 count:2];
              v46 = [v44 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v30];

              v31 = 0;
              v57 = v46;
            }
          }

          else
          {
            v36 = __biome_log_for_category(2);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              [_BMDirectFileManager replaceFileAtPath:v22 withData:v36 protection:? flags:? error:?];
            }

            v37 = MEMORY[0x1E696ABC0];
            v38 = *MEMORY[0x1E696AA08];
            v65[0] = *MEMORY[0x1E696A578];
            v65[1] = v38;
            v66[0] = @"Failed write data";
            v66[1] = v22;
            v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
            v57 = [v37 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v30];

            v31 = 0;
            v58 = -1;
          }

LABEL_35:

          v48 = [v31 fd];
          attributes2 = [v19 attributes];
          filename2 = [attributes2 filename];
          LODWORD(v34) = unlinkat(v48, [filename2 fileSystemRepresentation], 0);

          if (v34)
          {
            v34 = __biome_log_for_category(2);
            v51 = v58;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              [_BMDirectFileManager _removeFileAtPath:error:];
            }

            LOBYTE(v34) = 0;
            if (v58 < 0)
            {
              goto LABEL_44;
            }

            goto LABEL_42;
          }

LABEL_41:
          v51 = v58;
          if (v58 < 0)
          {
LABEL_44:
            v52 = v57;
            if (error && v57)
            {
              v52 = v57;
              *error = v52;
            }

            goto LABEL_48;
          }

LABEL_42:
          if (v51 != [(BMFileHandle *)self->_directoryHandle fd])
          {
            close(v51);
          }

          goto LABEL_44;
        }

        LOBYTE(v34) = 0;
LABEL_48:

        goto LABEL_49;
      }

      if (error)
      {
        v35 = MEMORY[0x1E696ABC0];
        v67 = *MEMORY[0x1E696A578];
        v68 = @"Invalid path";
        v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        [v35 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v19];
        *error = LOBYTE(v34) = 0;
        goto LABEL_48;
      }

      LOBYTE(v34) = 0;
LABEL_49:

      goto LABEL_50;
    }

    v32 = __biome_log_for_category(2);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      [BMFileManager fileExistsAtPath:error:];
    }

    if (error)
    {
      v33 = MEMORY[0x1E696ABC0];
      v69 = *MEMORY[0x1E696A578];
      v70[0] = @"Missing path";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:&v69 count:1];
      [v33 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v17];
      *error = LOBYTE(v34) = 0;
      goto LABEL_49;
    }
  }

  LOBYTE(v34) = 0;
LABEL_50:

  return v34;
}

- (id)replaceFileAtPath:(id)path withFileHandle:(id)handle protection:(int)protection flags:(int)flags error:(id *)error
{
  v9 = *&protection;
  v71[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handleCopy = handle;
  if (![(_BMDirectFileManager *)self setUpWithError:error])
  {
    goto LABEL_18;
  }

  if ([pathCopy length])
  {
    v14 = bm_subpath(self->_directory, pathCopy);
    v15 = v14;
    if (v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = pathCopy;
    }

    v17 = v16;

    if (bm_validate_pathat([(BMFileHandle *)self->_directoryHandle fd], v17))
    {
      if (handleCopy)
      {
        if ((v9 + 1) < 9)
        {
          v18 = [v17 containsString:@"/"];
          v19 = [(BMFileHandle *)self->_directoryHandle fd];
          v20 = v19;
          if (v18)
          {
            stringByDeletingLastPathComponent = [v17 stringByDeletingLastPathComponent];
            v22 = bm_openat_dprotected(v20, stringByDeletingLastPathComponent, 537920000, 0xFFFFFFFFLL);

            v56 = v22;
            if (v22 < 0)
            {
              v23 = __biome_log_for_category(2);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                [_BMDirectFileManager replaceFileAtPath:withData:protection:flags:error:];
              }

              v24 = MEMORY[0x1E696ABC0];
              v62 = *MEMORY[0x1E696A578];
              v63 = @"Failed to open destination directory";
              v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
              v26 = [v24 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v25];

              v27 = 0;
              v28 = 0xFFFFFFFFLL;
LABEL_44:
              if (error && v26)
              {
                v46 = v26;
                *error = v26;
              }

              if ((v28 & 0x80000000) != 0)
              {
                v31 = 0;
              }

              else
              {
                v47 = [[BMFileAttributes alloc] initWithPath:pathCopy mode:2 protectionClass:BMDataProtectionClassFromOSProtectionClass(v9)];
                v31 = [[BMFileHandle alloc] initWithFileDescriptor:v28 attributes:v47];
              }

              goto LABEL_51;
            }
          }

          else
          {
            v56 = v19;
          }

          v57 = 0;
          v37 = [(_BMDirectFileManager *)self _openTemporaryDirectoryWithError:&v57];
          v38 = v57;
          v26 = v38;
          v55 = v37;
          if (v37)
          {
            v52 = [handleCopy fd];
            v50 = [v37 fd];
            lastPathComponent = [v17 lastPathComponent];
            v40 = bm_replace_file(v52, v50, v56, lastPathComponent, v9, flags);

            v53 = v40;
            if ((v40 & 0x80000000) == 0)
            {
              if (v9 != -1)
              {
                v27 = v55;
                v41 = v56;
                goto LABEL_40;
              }

              v49 = fcntl(v40, 63);
              v27 = v55;
              v41 = v56;
              if ((v49 & 0x80000000) == 0)
              {
                LODWORD(v9) = v49;
                goto LABEL_40;
              }

              if (*__error() == 45)
              {
                LODWORD(v9) = -1;
LABEL_40:
                if ((v41 & 0x80000000) == 0 && v41 != [(BMFileHandle *)self->_directoryHandle fd])
                {
                  close(v41);
                }

                v28 = v53;
                goto LABEL_44;
              }

              __error();
              v43 = __biome_log_for_category(2);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
              {
                [_BMDirectFileManager _fileHandleForFileAtPath:flags:protection:error:];
              }

              LODWORD(v9) = -1;
LABEL_39:

              v27 = v55;
              goto LABEL_40;
            }

            v45 = __biome_log_for_category(2);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              [_BMDirectFileManager replaceFileAtPath:withFileHandle:protection:flags:error:];
            }

            v51 = MEMORY[0x1E696ABC0];
            v58 = *MEMORY[0x1E696A578];
            v59 = @"Replace failed";
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
            v44 = [v51 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v43];
          }

          else
          {
            v54 = MEMORY[0x1E696ABC0];
            v42 = *MEMORY[0x1E696AA08];
            v60[0] = *MEMORY[0x1E696A578];
            v60[1] = v42;
            v61[0] = @"Failed to open temporary directory";
            v61[1] = v38;
            v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
            v44 = [v54 errorWithDomain:@"BiomeStorageError" code:1 userInfo:v43];

            v53 = -1;
          }

          v26 = v44;
          v41 = v56;
          goto LABEL_39;
        }

        if (error)
        {
          v32 = MEMORY[0x1E696ABC0];
          v64 = *MEMORY[0x1E696A578];
          v65 = @"Invalid protection class";
          v33 = MEMORY[0x1E695DF20];
          v34 = &v65;
          v35 = &v64;
          goto LABEL_27;
        }

        goto LABEL_28;
      }

      v36 = __biome_log_for_category(2);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [_BMDirectFileManager replaceFileAtPath:withFileHandle:protection:flags:error:];
      }

      if (error)
      {
        v32 = MEMORY[0x1E696ABC0];
        v66 = *MEMORY[0x1E696A578];
        v67 = @"Invalid file handle";
        v33 = MEMORY[0x1E695DF20];
        v34 = &v67;
        v35 = &v66;
        goto LABEL_27;
      }
    }

    else if (error)
    {
      v32 = MEMORY[0x1E696ABC0];
      v68 = *MEMORY[0x1E696A578];
      v69 = @"Invalid path";
      v33 = MEMORY[0x1E695DF20];
      v34 = &v69;
      v35 = &v68;
LABEL_27:
      v26 = [v33 dictionaryWithObjects:v34 forKeys:v35 count:1];
      [v32 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v26];
      *error = v31 = 0;
LABEL_51:

      goto LABEL_52;
    }

LABEL_28:
    v31 = 0;
    goto LABEL_52;
  }

  v29 = __biome_log_for_category(2);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    [BMFileManager fileExistsAtPath:error:];
  }

  if (!error)
  {
LABEL_18:
    v31 = 0;
    goto LABEL_53;
  }

  v30 = MEMORY[0x1E696ABC0];
  v70 = *MEMORY[0x1E696A578];
  v71[0] = @"Missing path";
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v71 forKeys:&v70 count:1];
  [v30 errorWithDomain:@"BiomeStorageError" code:2 userInfo:v17];
  *error = v31 = 0;
LABEL_52:

LABEL_53:

  return v31;
}

- (void)_removeFileAtPath:error:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v0, v1, "unlinkat() failed: %{darwin.errno}d", v2, v3, v4, v5);
}

- (void)_removeDirectoryAtPath:error:.cold.1()
{
  __error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v0, v1, "removefileat() failed: %{darwin.errno}d", v2, v3, v4, v5);
}

- (void)replaceFileAtPath:(uint64_t)a1 withData:(NSObject *)a2 protection:flags:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1AC15D000, a2, OS_LOG_TYPE_ERROR, "overwriteWithData:error: failed with error %@", &v2, 0xCu);
}

- (void)replaceFileAtPath:withData:protection:flags:error:.cold.2()
{
  __error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v0, v1, "renameat() failed: %{darwin.errno}d", v2, v3, v4, v5);
}

- (void)replaceFileAtPath:withData:protection:flags:error:.cold.3()
{
  __error();
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_0_8(&dword_1AC15D000, v0, v1, "bm_openat_dprotected() failed: %{darwin.errno}d", v2, v3, v4, v5);
}

@end