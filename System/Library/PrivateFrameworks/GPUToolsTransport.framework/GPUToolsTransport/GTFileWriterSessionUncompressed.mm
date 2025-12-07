@interface GTFileWriterSessionUncompressed
+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (BOOL)_closeCurrentFileDescriptor:(id *)descriptor;
- (BOOL)_writeUncompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error;
- (BOOL)finish:(id *)finish;
- (GTFileWriterSessionUncompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
- (int)_getCurrentFileDescriptor:(id *)descriptor;
- (int)_openNextFile:(id *)file;
- (void)writeFileData:(id)data completionHandler:(id)handler;
@end

@implementation GTFileWriterSessionUncompressed

+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  entriesCopy = entries;
  v13 = [[self alloc] initWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];

  return v13;
}

- (GTFileWriterSessionUncompressed)initWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  v94 = *MEMORY[0x277D85DE8];
  entriesCopy = entries;
  lCopy = l;
  optionsCopy = options;
  v83.receiver = self;
  v83.super_class = GTFileWriterSessionUncompressed;
  v14 = [(GTFileWriterSessionUncompressed *)&v83 init];
  v15 = v14;
  if (!v14)
  {
    goto LABEL_53;
  }

  objc_storeStrong(&v14->_fileEntries, entries);
  objc_storeStrong(&v15->_baseURL, l);
  v15->_currentFileIndex = 0;
  v15->_currentFileBytesWritten = 0;
  v15->_fd = -1;
  v16 = entriesCopy;
  v79 = lCopy;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = v16;
  v82 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
  if (!v82)
  {
    v17 = 0;
    v36 = 1;
    goto LABEL_50;
  }

  errorCopy = error;
  v74 = v15;
  v75 = optionsCopy;
  v76 = lCopy;
  v17 = 0;
  v81 = *v86;
  v77 = *MEMORY[0x277CCA450];
  v78 = *MEMORY[0x277CCA5B8];
  v18 = v79;
  do
  {
    v19 = 0;
    v20 = v17;
    do
    {
      if (*v86 != v81)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v85 + 1) + 8 * v19);
      v22 = objc_autoreleasePoolPush();
      v84 = v20;
      v23 = v21;
      v24 = MEMORY[0x277CBEBC0];
      v25 = v18;
      v26 = [v24 alloc];
      path = [v23 path];
      v28 = [v26 initFileURLWithPath:path isDirectory:0 relativeToURL:v25];

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      uRLByDeletingLastPathComponent = [v28 URLByDeletingLastPathComponent];
      LODWORD(v25) = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v84];

      if (!v25)
      {
LABEL_20:
        v36 = 0;
        goto LABEL_44;
      }

      destination = [v23 destination];

      if (destination)
      {
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        path2 = [v28 path];
        destination2 = [v23 destination];
        v35 = [defaultManager2 createSymbolicLinkAtPath:path2 withDestinationPath:destination2 error:&v84];

        if ((v35 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v37 = objc_alloc_init(MEMORY[0x277CBEA90]);
        v38 = [v37 writeToURL:v28 options:0 error:&v84];

        if (!v38)
        {
          goto LABEL_20;
        }

        v39 = open([v28 fileSystemRepresentation], 1, 0);
        if (v39 < 0)
        {
          v44 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v45 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v28;
              v92 = 1024;
              v93 = v44;
              _os_log_error_impl(&dword_24DBC9000, v45, OS_LOG_TYPE_ERROR, "Failed to open file %@ for writing (%d)", buf, 0x12u);
            }
          }

          else
          {
            v49 = *MEMORY[0x277D85DF8];
            v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing (%d)", v28, v44];
            fprintf(v49, "%s\n", [v45 UTF8String]);
          }

          v50 = v44;

          v51 = MEMORY[0x277CCA9B8];
          v90 = v77;
          v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing", v28];
          *buf = v52;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v90 count:1];
          v54 = v51;
          v55 = v78;
          v56 = v50;
          goto LABEL_41;
        }

        v40 = v39;
        if (ftruncate(v39, [v23 fileSize]) < 0)
        {
          v46 = *__error();
          v72 = entriesCopy;
          if (GTCoreLogUseOsLog())
          {
            v47 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v28;
              v92 = 1024;
              v93 = v46;
              _os_log_error_impl(&dword_24DBC9000, v47, OS_LOG_TYPE_ERROR, "Failed to resize file %@ (%d)", buf, 0x12u);
            }

            v48 = 0x277CCA000;
          }

          else
          {
            v60 = *MEMORY[0x277D85DF8];
            v48 = 0x277CCA000uLL;
            v47 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to resize file %@ (%d)", v28, v46];
            fprintf(v60, "%s\n", [v47 UTF8String]);
          }

          v61 = v46;

          v62 = MEMORY[0x277CCA9B8];
          v90 = v77;
          v63 = [*(v48 + 3240) stringWithFormat:@"Failed to resize file %@", v28];
          *buf = v63;
          v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v90 count:1];
          v84 = [v62 errorWithDomain:v78 code:v61 userInfo:v64];

          close(v40);
          v36 = 0;
          entriesCopy = v72;
          goto LABEL_43;
        }

        if (fsync(v40) < 0)
        {
          v57 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v58 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v28;
              v92 = 1024;
              v93 = v57;
              _os_log_error_impl(&dword_24DBC9000, v58, OS_LOG_TYPE_ERROR, "Failed to flush file %@ (%d)", buf, 0x12u);
            }

            v59 = 0x277CCA000;
          }

          else
          {
            v65 = *MEMORY[0x277D85DF8];
            v59 = 0x277CCA000uLL;
            v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to flush file %@ (%d)", v28, v57];
            fprintf(v65, "%s\n", [v58 UTF8String]);
          }

          v66 = v57;

          v67 = MEMORY[0x277CCA9B8];
          v90 = v77;
          [*(v59 + 3240) stringWithFormat:@"Failed to flush file %@", v28];
          v52 = LABEL_40:;
          *buf = v52;
          v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:&v90 count:1];
          v54 = v67;
          v55 = v78;
          v56 = v66;
LABEL_41:
          v84 = [v54 errorWithDomain:v55 code:v56 userInfo:v53];

LABEL_42:
          v36 = 0;
          goto LABEL_43;
        }

        if (close(v40) < 0)
        {
          v41 = *__error();
          if (GTCoreLogUseOsLog())
          {
            v42 = gt_tagged_log(0x10u);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = v28;
              v92 = 1024;
              v93 = v41;
              _os_log_error_impl(&dword_24DBC9000, v42, OS_LOG_TYPE_ERROR, "Failed to close file %@ (%d)", buf, 0x12u);
            }

            v43 = 0x277CCA000;
          }

          else
          {
            v68 = *MEMORY[0x277D85DF8];
            v43 = 0x277CCA000uLL;
            v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close file %@ (%d)", v28, v41];
            fprintf(v68, "%s\n", [v42 UTF8String]);
          }

          v66 = v41;

          v67 = MEMORY[0x277CCA9B8];
          v90 = v77;
          [*(v43 + 3240) stringWithFormat:@"Failed to close file %@", v28];
          goto LABEL_40;
        }
      }

      v36 = 1;
LABEL_43:
      v18 = v79;
LABEL_44:

      v17 = v84;
      objc_autoreleasePoolPop(v22);
      if (!v36)
      {
        goto LABEL_48;
      }

      ++v19;
      v20 = v17;
    }

    while (v82 != v19);
    v82 = [obj countByEnumeratingWithState:&v85 objects:v89 count:16];
  }

  while (v82);
  v36 = 1;
LABEL_48:
  optionsCopy = v75;
  lCopy = v76;
  error = errorCopy;
  v15 = v74;
LABEL_50:

  if (error)
  {
    v69 = v17;
    *error = v17;
  }

  if (v36)
  {
LABEL_53:
    v70 = v15;
  }

  else
  {
    v70 = 0;
  }

  return v70;
}

- (int)_openNextFile:(id *)file
{
  v32[1] = *MEMORY[0x277D85DE8];
  currentFileIndex = self->_currentFileIndex;
  if (currentFileIndex >= [(NSArray *)self->_fileEntries count])
  {
    v6 = 0;
LABEL_9:
    if (GTCoreLogUseOsLog())
    {
      v10 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _openNextFile:];
      }

      if (file)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = *MEMORY[0x277D85DF8];
      v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"No more files to write to"];
      fprintf(v15, "%s\n", [v16 UTF8String]);

      if (file)
      {
LABEL_13:
        v11 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277CCA5B8];
        v31 = *MEMORY[0x277CCA450];
        v32[0] = @"No more files to write to";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
        *file = [v11 errorWithDomain:v12 code:2 userInfo:v13];
LABEL_14:
        v14 = -1;
        goto LABEL_15;
      }
    }

    v14 = -1;
    goto LABEL_18;
  }

  v6 = 0;
  while (1)
  {
    v7 = v6;
    v6 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:self->_currentFileIndex];

    destination = [v6 destination];
    if (!destination)
    {
      break;
    }

LABEL_6:
    v9 = self->_currentFileIndex + 1;
    self->_currentFileIndex = v9;
    if (v9 >= [(NSArray *)self->_fileEntries count])
    {
      goto LABEL_9;
    }
  }

  if (![v6 fileSize])
  {
    goto LABEL_6;
  }

  v18 = objc_alloc(MEMORY[0x277CBEBC0]);
  path = [v6 path];
  v13 = [v18 initFileURLWithPath:path isDirectory:0 relativeToURL:self->_baseURL];

  v20 = open([v13 fileSystemRepresentation], 1, 0);
  if (v20 < 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v21 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _openNextFile:];
      }
    }

    else
    {
      v22 = *MEMORY[0x277D85DF8];
      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing", v13];
      fprintf(v22, "%s\n", [v23 UTF8String]);
    }

    if (file)
    {
      v24 = MEMORY[0x277CCA9B8];
      v25 = *MEMORY[0x277CCA5B8];
      v26 = *__error();
      v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to open file %@ for writing", v13, *MEMORY[0x277CCA450]];
      v30 = v27;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      *file = [v24 errorWithDomain:v25 code:v26 userInfo:v28];
    }

    goto LABEL_14;
  }

  v14 = v20;
LABEL_15:

LABEL_18:
  return v14;
}

- (void)writeFileData:(id)data completionHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v11 = [dataCopy2 length];

  v13 = 0;
  [(GTFileWriterSessionUncompressed *)self _writeUncompressedFileData:bytes length:v11 error:&v13];
  v12 = v13;
  handlerCopy[2](handlerCopy, v12);
}

- (BOOL)_writeUncompressedFileData:(const char *)data length:(unint64_t)length error:(id *)error
{
  v32[1] = *MEMORY[0x277D85DE8];
  if (length)
  {
    v9 = 0;
    while (1)
    {
      v10 = [(GTFileWriterSessionUncompressed *)self _getCurrentFileDescriptor:error];
      if ((v10 & 0x80000000) != 0)
      {
        goto LABEL_21;
      }

      v11 = v10;
      v12 = length - v9;
      v13 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:self->_currentFileIndex];
      v14 = [v13 fileSize] - self->_currentFileBytesWritten;

      v15 = 0;
      if (length - v9 >= v14)
      {
        v12 = v14;
      }

      do
      {
        v16 = write(v11, &data[v9 + v15], v12 - v15);
        if (v16 < 0)
        {
          goto LABEL_14;
        }

        v15 += v16;
      }

      while (v15 != v12);
      if ((v12 & 0x8000000000000000) != 0)
      {
        break;
      }

      currentFileIndex = self->_currentFileIndex;
      v18 = self->_currentFileBytesWritten + v12;
      self->_currentFileBytesWritten = v18;
      v19 = [(NSArray *)self->_fileEntries objectAtIndexedSubscript:currentFileIndex];
      fileSize = [v19 fileSize];

      if (v18 == fileSize)
      {
        v21 = [(GTFileWriterSessionUncompressed *)self _closeCurrentFileDescriptor:error];
        if (!v21)
        {
          return v21;
        }

        ++self->_currentFileIndex;
        self->_currentFileBytesWritten = 0;
      }

      v9 += v12;
      if (v9 >= length)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    if (GTCoreLogUseOsLog())
    {
      v22 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _writeUncompressedFileData:length:error:];
      }

      if (!error)
      {
LABEL_21:
        LOBYTE(v21) = 0;
        return v21;
      }
    }

    else
    {
      v23 = *MEMORY[0x277D85DF8];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to fd (%d)", v11];
      fprintf(v23, "%s\n", [v24 UTF8String]);

      if (!error)
      {
        goto LABEL_21;
      }
    }

    v25 = MEMORY[0x277CCA9B8];
    v26 = *MEMORY[0x277CCA5B8];
    v27 = *__error();
    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to write to fd (%d)", v11, *MEMORY[0x277CCA450]];
    v32[0] = v28;
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    *error = [v25 errorWithDomain:v26 code:v27 userInfo:v29];

    goto LABEL_21;
  }

LABEL_13:
  LOBYTE(v21) = 1;
  return v21;
}

- (int)_getCurrentFileDescriptor:(id *)descriptor
{
  result = self->_fd;
  if (result < 0)
  {
    result = [(GTFileWriterSessionUncompressed *)self _openNextFile:descriptor];
    self->_fd = result;
  }

  return result;
}

- (BOOL)finish:(id *)finish
{
  baseURL = self->_baseURL;
  self->_baseURL = 0;

  fileEntries = self->_fileEntries;
  self->_fileEntries = 0;

  self->_currentFileIndex = 0;
  self->_currentFileBytesWritten = 0;

  return [(GTFileWriterSessionUncompressed *)self _closeCurrentFileDescriptor:finish];
}

- (BOOL)_closeCurrentFileDescriptor:(id *)descriptor
{
  v25[1] = *MEMORY[0x277D85DE8];
  fd = self->_fd;
  if ((fd & 0x80000000) != 0)
  {
    return 1;
  }

  self->_fd = -1;
  if (fsync(fd) < 0)
  {
    if (GTCoreLogUseOsLog())
    {
      v7 = gt_tagged_log(0x10u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [GTFileWriterSessionUncompressed _closeCurrentFileDescriptor:];
      }

      if (!descriptor)
      {
        return 0;
      }
    }

    else
    {
      v10 = *MEMORY[0x277D85DF8];
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to flush fd (%d)", fd];
      fprintf(v10, "%s\n", [v11 UTF8String]);

      if (!descriptor)
      {
        return 0;
      }
    }

    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA5B8];
    v14 = *__error();
    v24 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to flush fd (%d)", fd];
    v25[0] = v15;
    v16 = MEMORY[0x277CBEAC0];
    v17 = v25;
    v18 = &v24;
LABEL_19:
    v21 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
    *descriptor = [v12 errorWithDomain:v13 code:v14 userInfo:v21];

    return 0;
  }

  v5 = close(fd);
  if ((v5 & 0x80000000) == 0)
  {
    return 1;
  }

  v8 = v5;
  if (GTCoreLogUseOsLog())
  {
    v9 = gt_tagged_log(0x10u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [GTFileWriterSessionUncompressed _closeCurrentFileDescriptor:];
    }

    if (!descriptor)
    {
      return 0;
    }

    goto LABEL_18;
  }

  v19 = *MEMORY[0x277D85DF8];
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close fd (%d), status %d", fd, v8];
  fprintf(v19, "%s\n", [v20 UTF8String]);

  if (descriptor)
  {
LABEL_18:
    v12 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA5B8];
    v14 = *__error();
    v22 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to close fd (%d), status %d", fd, v8];
    v23 = v15;
    v16 = MEMORY[0x277CBEAC0];
    v17 = &v23;
    v18 = &v22;
    goto LABEL_19;
  }

  return 0;
}

- (void)_openNextFile:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end