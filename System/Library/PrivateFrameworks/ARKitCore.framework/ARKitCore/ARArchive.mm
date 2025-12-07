@interface ARArchive
- (ARArchive)init;
- (ARArchive)initWithContentsOfURL:(id)l error:(id *)error;
- (ARArchive)initWithData:(id)data error:(id *)error;
- (BOOL)_loadArchiveFromMemory:(id)memory error:(id *)error;
- (BOOL)_loadArchiveFromURL:(id)l error:(id *)error;
- (BOOL)_readDataForEntry:(archive_entry *)entry archive:(archive *)archive;
- (BOOL)_readDataFromArchive:(archive *)archive;
- (BOOL)_writeToArchive:(archive *)archive;
- (BOOL)writeToURL:(id)l error:(id *)error;
- (archive)_createArchiveForReading;
- (id)dataForResource:(id)resource withExtension:(id)extension;
- (id)dataRepresentation;
- (void)addData:(id)data withFilename:(id)filename extension:(id)extension;
- (void)removeDataWithFilename:(id)filename extension:(id)extension;
@end

@implementation ARArchive

- (ARArchive)init
{
  v6.receiver = self;
  v6.super_class = ARArchive;
  v2 = [(ARArchive *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    dataByPath = v2->_dataByPath;
    v2->_dataByPath = v3;
  }

  return v2;
}

- (ARArchive)initWithContentsOfURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = [(ARArchive *)self init];
  v8 = v7;
  if (v7 && ![(ARArchive *)v7 _loadArchiveFromURL:lCopy error:error])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (ARArchive)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [(ARArchive *)self init];
  v8 = v7;
  if (v7 && ![(ARArchive *)v7 _loadArchiveFromMemory:dataCopy error:error])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  return v9;
}

- (void)addData:(id)data withFilename:(id)filename extension:(id)extension
{
  dataCopy = data;
  v9 = [filename stringByAppendingPathExtension:extension];
  [(ARArchive *)self addData:dataCopy withPath:v9];
}

- (void)removeDataWithFilename:(id)filename extension:(id)extension
{
  v5 = [filename stringByAppendingPathExtension:extension];
  [(ARArchive *)self removeDataWithPath:v5];
}

- (id)dataForResource:(id)resource withExtension:(id)extension
{
  v5 = [resource stringByAppendingPathExtension:extension];
  v6 = [(ARArchive *)self dataForResourceAtPath:v5];

  return v6;
}

- (BOOL)writeToURL:(id)l error:(id *)error
{
  v34 = *MEMORY[0x1E69E9840];
  lCopy = l;
  v7 = archive_write_new();
  if (v7)
  {
    v8 = v7;
    archive_write_set_format_zip();
    [lCopy fileSystemRepresentation];
    if (archive_write_open_filename())
    {
      v9 = archive_write_free();
    }

    else
    {
      v18 = [(ARArchive *)self _writeToArchive:v8];
      v9 = archive_write_free();
      if (v18)
      {
        LOBYTE(error) = 1;
        goto LABEL_15;
      }
    }

    v19 = _ARLogGeneral_47(v9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      path = [lCopy path];
      *buf = 138543875;
      v29 = v21;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2113;
      v33 = path;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to write to archive at path: %{private}@.", buf, 0x20u);
    }

    if (error)
    {
      v24 = *MEMORY[0x1E696A998];
      v25 = lCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      goto LABEL_14;
    }
  }

  else
  {
    v10 = _ARLogGeneral_47(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      path2 = [lCopy path];
      *buf = 138543875;
      v29 = v12;
      v30 = 2048;
      selfCopy2 = self;
      v32 = 2113;
      v33 = path2;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create archive at path: %{private}@.", buf, 0x20u);
    }

    if (error)
    {
      v26 = *MEMORY[0x1E696A588];
      v15 = ARKitCoreBundle(v14);
      v16 = [v15 localizedStringForKey:@"Unable to create archive." value:&stru_1F4208A80 table:@"Localizable"];
      v27 = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

LABEL_14:
      *error = ARErrorWithCodeAndUserInfo(500, v17);

      LOBYTE(error) = 0;
    }
  }

LABEL_15:

  return error;
}

- (id)dataRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = archive_write_new();
  if (v3)
  {
    v4 = v3;
    v5 = objc_opt_new();
    archive_write_set_format_zip();
    if (archive_write_open())
    {
      v6 = archive_write_free();
    }

    else
    {
      v9 = [(ARArchive *)self _writeToArchive:v4];
      v6 = archive_write_free();
      if (v9)
      {
        v5 = v5;
        v10 = v5;
        goto LABEL_12;
      }
    }

    v8 = _ARLogGeneral_47(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v14 = 138543618;
      v15 = v12;
      v16 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1C241C000, v8, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to write archive to memory", &v14, 0x16u);
    }

    goto LABEL_10;
  }

  v5 = _ARLogGeneral_47(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v14 = 138543618;
    v15 = v8;
    v16 = 2048;
    selfCopy2 = self;
    _os_log_impl(&dword_1C241C000, v5, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to create archive.", &v14, 0x16u);
LABEL_10:
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (BOOL)_loadArchiveFromMemory:(id)memory error:(id *)error
{
  v45[1] = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  if (!memoryCopy)
  {
    if (!error)
    {
LABEL_15:
      v24 = 0;
      goto LABEL_16;
    }

    v44 = *MEMORY[0x1E696A588];
    v14 = ARKitCoreBundle(0);
    v15 = [v14 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:@"Localizable"];
    v45[0] = v15;
    v16 = MEMORY[0x1E695DF20];
    v17 = v45;
    v18 = &v44;
LABEL_14:
    v23 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];

    *error = ARErrorWithCodeAndUserInfo(500, v23);

    goto LABEL_15;
  }

  _createArchiveForReading = [(ARArchive *)self _createArchiveForReading];
  if (!_createArchiveForReading)
  {
    v19 = _ARLogGeneral_47(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v41 = v21;
      v42 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from memory", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_15;
    }

    v38 = *MEMORY[0x1E696A588];
    v14 = ARKitCoreBundle(v22);
    v15 = [v14 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:@"Localizable"];
    v39 = v15;
    v16 = MEMORY[0x1E695DF20];
    v17 = &v39;
    v18 = &v38;
    goto LABEL_14;
  }

  v8 = _createArchiveForReading;
  [memoryCopy bytes];
  [memoryCopy length];
  if (archive_read_open_memory())
  {
    free = archive_read_free();
    v10 = _ARLogGeneral_47(free);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      *buf = 138543618;
      v41 = v12;
      v42 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v10, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from memory", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_15;
    }

    v36 = *MEMORY[0x1E696A588];
    v14 = ARKitCoreBundle(v13);
    v15 = [v14 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:@"Localizable"];
    v37 = v15;
    v16 = MEMORY[0x1E695DF20];
    v17 = &v37;
    v18 = &v36;
    goto LABEL_14;
  }

  v26 = [(ARArchive *)self _readDataFromArchive:v8];
  v24 = v26;
  if ((v26 & 1) == 0)
  {
    v27 = _ARLogGeneral_47(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138543618;
      v41 = v29;
      v42 = 2048;
      selfCopy3 = self;
      _os_log_impl(&dword_1C241C000, v27, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from memory", buf, 0x16u);
    }

    if (error)
    {
      v34 = *MEMORY[0x1E696A588];
      v31 = ARKitCoreBundle(v30);
      v32 = [v31 localizedStringForKey:@"Unable to read archive from memory." value:&stru_1F4208A80 table:{@"Localizable", v34}];
      v35 = v32;
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];

      *error = ARErrorWithCodeAndUserInfo(500, v33);
    }
  }

  archive_read_free();
LABEL_16:

  return v24;
}

- (BOOL)_loadArchiveFromURL:(id)l error:(id *)error
{
  v49[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (!lCopy)
  {
    v19 = _ARLogGeneral_47(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v43 = v21;
      v44 = 2048;
      selfCopy4 = self;
      _os_log_impl(&dword_1C241C000, v19, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Cannot read archive from nil URL", buf, 0x16u);
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v48 = *MEMORY[0x1E696A998];
    v49[0] = @"NULL";
    v16 = MEMORY[0x1E695DF20];
    v17 = v49;
    v18 = &v48;
    goto LABEL_16;
  }

  _createArchiveForReading = [(ARArchive *)self _createArchiveForReading];
  if (!_createArchiveForReading)
  {
    v22 = _ARLogGeneral_47(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = objc_opt_class();
      v24 = NSStringFromClass(v23);
      path = [lCopy path];
      *buf = 138543875;
      v43 = v24;
      v44 = 2048;
      selfCopy4 = self;
      v46 = 2113;
      v47 = path;
      _os_log_impl(&dword_1C241C000, v22, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to read archive at path: %{private}@.", buf, 0x20u);
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v40 = *MEMORY[0x1E696A998];
    v41 = lCopy;
    v16 = MEMORY[0x1E695DF20];
    v17 = &v41;
    v18 = &v40;
    goto LABEL_16;
  }

  v8 = _createArchiveForReading;
  path2 = [lCopy path];
  [path2 UTF8String];
  open_filename = archive_read_open_filename();

  if (open_filename)
  {
    free = archive_read_free();
    v12 = _ARLogGeneral_47(free);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      path3 = [lCopy path];
      *buf = 138543875;
      v43 = v14;
      v44 = 2048;
      selfCopy4 = self;
      v46 = 2113;
      v47 = path3;
      _os_log_impl(&dword_1C241C000, v12, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to read archive at path: %{private}@.", buf, 0x20u);
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v38 = *MEMORY[0x1E696A998];
    v39 = lCopy;
    v16 = MEMORY[0x1E695DF20];
    v17 = &v39;
    v18 = &v38;
LABEL_16:
    v26 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    *error = ARErrorWithCodeAndUserInfo(500, v26);

LABEL_17:
    v27 = 0;
    goto LABEL_18;
  }

  v29 = [(ARArchive *)self _readDataFromArchive:v8];
  v27 = v29;
  if ((v29 & 1) == 0)
  {
    v30 = _ARLogGeneral_47(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      path4 = [lCopy path];
      *buf = 138543875;
      v43 = v32;
      v44 = 2048;
      selfCopy4 = self;
      v46 = 2113;
      v47 = path4;
      _os_log_impl(&dword_1C241C000, v30, OS_LOG_TYPE_ERROR, "%{public}@ <%p>: Unable to read archive at path: %{private}@.", buf, 0x20u);
    }

    if (error)
    {
      v36[0] = *MEMORY[0x1E696A588];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s", archive_error_string()];
      v36[1] = *MEMORY[0x1E696A998];
      v37[0] = v34;
      v37[1] = lCopy;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2];

      *error = ARErrorWithCodeAndUserInfo(500, v35);
    }
  }

  archive_read_free();
LABEL_18:

  return v27;
}

- (BOOL)_writeToArchive:(archive *)archive
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_dataByPath;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_dataByPath objectForKeyedSubscript:v9, v15];
        archive_entry_new();
        [v9 fileSystemRepresentation];
        archive_entry_set_pathname();
        [v10 length];
        archive_entry_set_size();
        archive_entry_set_filetype();
        archive_entry_set_perm();
        time(0);
        archive_entry_set_birthtime();
        archive_entry_set_ctime();
        archive_entry_set_mtime();
        archive_entry_set_atime();
        if (archive_write_header())
        {
          archive_entry_free();
LABEL_13:

          v13 = 0;
          goto LABEL_14;
        }

        [v10 bytes];
        [v10 length];
        v11 = archive_write_data();
        v12 = [v10 length];
        archive_entry_free();
        if (v11 != v12)
        {
          goto LABEL_13;
        }
      }

      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 1;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = 1;
  }

LABEL_14:

  return v13;
}

- (archive)_createArchiveForReading
{
  v2 = archive_read_new();
  if (v2)
  {
    archive_read_support_format_zip();
    archive_read_support_filter_compress();
  }

  return v2;
}

- (BOOL)_readDataFromArchive:(archive *)archive
{
  while (1)
  {
    next_header = archive_read_next_header();
    if (next_header)
    {
      break;
    }

    if (archive_entry_filetype() == 0x8000 && [(ARArchive *)self _readDataForEntry:0 archive:archive])
    {
      next_header = 1;
      return next_header < 2;
    }
  }

  return next_header < 2;
}

- (BOOL)_readDataForEntry:(archive_entry *)entry archive:(archive *)archive
{
  v4 = (MEMORY[0x1EEE9AC00])(self, a2, entry, archive);
  v35 = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:archive_entry_pathname()];
  v6 = v5;
  if (!v5)
  {
    if (ARShouldUseLogTypeError_onceToken_53 != -1)
    {
      [ARArchive _readDataForEntry:archive:];
    }

    v10 = ARShouldUseLogTypeError_internalOSVersion_53;
    v11 = _ARLogGeneral_47(v5);
    v7 = v11;
    if (v10 == 1)
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_23;
      }

      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v32 = v13;
      v33 = 2048;
      v34 = v4;
      v14 = "%{public}@ <%p>: Unable to construct path";
      v15 = v7;
      v16 = OS_LOG_TYPE_ERROR;
    }

    else
    {
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v24 = objc_opt_class();
      v13 = NSStringFromClass(v24);
      *buf = 138543618;
      v32 = v13;
      v33 = 2048;
      v34 = v4;
      v14 = "Error: %{public}@ <%p>: Unable to construct path";
      v15 = v7;
      v16 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1C241C000, v15, v16, v14, buf, 0x16u);
    goto LABEL_22;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
  data = archive_read_data();
  v9 = data;
  if (data >= 1)
  {
    do
    {
      [v7 appendBytes:buf length:v9];
      data = archive_read_data();
      v9 = data;
    }

    while (data > 0);
  }

  if (v9 < 0)
  {
    if (ARShouldUseLogTypeError_onceToken_53 != -1)
    {
      [ARArchive _readDataForEntry:archive:];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_53;
    v18 = _ARLogGeneral_47(data);
    v13 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        v27 = 138543618;
        v28 = v20;
        v29 = 2048;
        v30 = v4;
        v21 = "%{public}@ <%p>: Could not read data to buffer.";
        v22 = v13;
        v23 = OS_LOG_TYPE_ERROR;
LABEL_21:
        _os_log_impl(&dword_1C241C000, v22, v23, v21, &v27, 0x16u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v20 = NSStringFromClass(v25);
      v27 = 138543618;
      v28 = v20;
      v29 = 2048;
      v30 = v4;
      v21 = "Error: %{public}@ <%p>: Could not read data to buffer.";
      v22 = v13;
      v23 = OS_LOG_TYPE_INFO;
      goto LABEL_21;
    }

LABEL_22:

    goto LABEL_23;
  }

  [*(v4 + 8) setObject:v7 forKeyedSubscript:v6];
LABEL_23:

  return 0;
}

@end