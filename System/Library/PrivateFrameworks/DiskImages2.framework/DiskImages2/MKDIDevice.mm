@interface MKDIDevice
- (BOOL)partitionDiskWithGPTTypeID:(unint64_t)d error:(id *)error;
- (BOOL)resizeDataPartitionWithPartitionUUID:(id)d partitionNumBlocks:(unint64_t)blocks error:(id *)error;
- (BOOL)updatePartitionMapWithError:(id *)error;
- (MKDIDevice)initWithBSDName:(id)name numBlocks:(unint64_t)blocks blockSize:(int)size error:(id *)error;
- (void)dealloc;
@end

@implementation MKDIDevice

- (MKDIDevice)initWithBSDName:(id)name numBlocks:(unint64_t)blocks blockSize:(int)size error:(id *)error
{
  v51[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v39.receiver = self;
  v39.super_class = MKDIDevice;
  v11 = [(MKDIDevice *)&v39 init];
  v12 = v11;
  if (v11)
  {
    errorCopy = error;
    v11->_blockSize = size;
    v38 = 0;
    v50 = @"Writable";
    v51[0] = MEMORY[0x277CBEC38];
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v35 = nameCopy;
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", nameCopy];
    v15 = 0;
    sizeCopy = size + 511;
    if (size >= 0)
    {
      sizeCopy = size;
    }

    v17 = (sizeCopy >> 9) * blocks;
    v36 = 68158722;
    while (1)
    {
      v18 = malloc_type_calloc(1uLL, 0x10uLL, 0x10200405730B0C9uLL);
      if (!v18)
      {
        v30 = [DIError nilWithPOSIXCode:12 verboseInfo:@"Failed to allocate refcon" error:errorCopy];
        goto LABEL_25;
      }

      v19 = v18;
      *v18 = v17;
      [nameCopy fileSystemRepresentation];
      v20 = MKCreateMediaDeviceRefcon();
      v38 = v20;
      if (v20)
      {
        v31 = v20;
        free(v19);
        v30 = [DIError nilWithOSStatus:v31 verboseInfo:@"Failed creating MediaKit device refcon" error:errorCopy];
        goto LABEL_25;
      }

      if (v15)
      {
        sleep(1u);
      }

      v21 = MKMediaCreate();
      v12->_mediaRef = v21;
      if (v21)
      {
        break;
      }

      v22 = *__error();
      v23 = DIForwardLogs();
      if (v23)
      {
        v37 = 0;
        v25 = getDIOSLog(v23, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = 3;
        }

        else
        {
          v26 = 2;
        }

        *buf = v36;
        ++v15;
        v41 = 56;
        v42 = 2080;
        v43 = "[MKDIDevice initWithBSDName:numBlocks:blockSize:error:]";
        v44 = 1024;
        v45 = v38;
        v46 = 1024;
        v47 = v15;
        v48 = 1024;
        v49 = 3;
        LODWORD(v33) = 36;
        v27 = _os_log_send_and_compose_impl(v26, &v37, 0, 0, &dword_248DE0000, v25, 16, "%.*s: MKMediaCreate failed with error %d (%d/%d)", buf, v33, errorCopy, v35, v36);

        if (v27)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v27);
          free(v27);
        }
      }

      else
      {
        v28 = getDIOSLog(v23, v24);
        ++v15;
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = v36;
          v41 = 56;
          v42 = 2080;
          v43 = "[MKDIDevice initWithBSDName:numBlocks:blockSize:error:]";
          v44 = 1024;
          v45 = v38;
          v46 = 1024;
          v47 = v15;
          v48 = 1024;
          v49 = 3;
          _os_log_impl(&dword_248DE0000, v28, OS_LOG_TYPE_ERROR, "%.*s: MKMediaCreate failed with error %d (%d/%d)", buf, 0x24u);
        }
      }

      *__error() = v22;
      if (v15 == 3)
      {
        [DIError failWithOSStatus:v38 verboseInfo:@"Failed creating MediaKit object" error:errorCopy];
        v29 = 0;
        goto LABEL_26;
      }
    }

    v30 = v12;
LABEL_25:
    v29 = v30;
LABEL_26:

    nameCopy = v35;
  }

  else
  {
    v29 = 0;
  }

  return v29;
}

- (BOOL)partitionDiskWithGPTTypeID:(unint64_t)d error:(id *)error
{
  v29[1] = *MEMORY[0x277D85DE8];
  v22 = 0;
  v21[1] = 0;
  v5 = MKCFBuildPartition();
  v27 = v5;
  v28 = @"Partitions";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
  v29[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

  v8 = MKCFCreateMedia();
  [(MKDIDevice *)self blockSize];
  mediaRef = [(MKDIDevice *)self mediaRef];
  MKCFCreateMap();
  [(MKDIDevice *)self mediaRef:mediaRef];
  v22 = MKCFWriteMedia();
  if (!v22)
  {
    v9 = *__error();
    v10 = DIForwardLogs();
    if (v10)
    {
      v21[0] = 0;
      v12 = getDIOSLog(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      *buf = 68157954;
      v24 = 47;
      v25 = 2080;
      v26 = "[MKDIDevice partitionDiskWithGPTTypeID:error:]";
      LODWORD(v20) = 18;
      v14 = _os_log_send_and_compose_impl(v13, v21, 0, 0, &dword_248DE0000, v12, 0, "%.*s: Disk partitioning completed", buf, v20);

      if (v14)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v14);
        free(v14);
      }
    }

    else
    {
      v15 = getDIOSLog(v10, v11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v24 = 47;
        v25 = 2080;
        v26 = "[MKDIDevice partitionDiskWithGPTTypeID:error:]";
        _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Disk partitioning completed", buf, 0x12u);
      }
    }

    *__error() = v9;
  }

  if (v8)
  {
    MKCFDisposeMedia();
  }

  if (v22)
  {
    v16 = [DIError failWithOSStatus:"failWithOSStatus:verboseInfo:error:" verboseInfo:v19 error:?];
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (BOOL)resizeDataPartitionWithPartitionUUID:(id)d partitionNumBlocks:(unint64_t)blocks error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v50 = 0;
  [(MKDIDevice *)self mediaRef];
  v9 = MKCFReadMedia();
  v10 = 0;
  if (!v9)
  {
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v10 = v50;
LABEL_11:
    v17 = [DIError failWithOSStatus:v10 verboseInfo:@"MediaKit read error" error:error];
    goto LABEL_37;
  }

  if (DIDebugLogsEnabled())
  {
    v11 = *__error();
    v12 = DIForwardLogs();
    if (v12)
    {
      v49 = 0;
      v14 = getDIOSLog(v12, v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      *buf = 68158210;
      v53 = 76;
      v54 = 2080;
      v55 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
      v56 = 2112;
      v57 = v9;
      v16 = _os_log_send_and_compose_impl(v15, &v49, 0, 0, &dword_248DE0000, v14, 2, "%.*s: MediaKit scan dict: %@", buf, 28);

      if (v16)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
        free(v16);
      }
    }

    else
    {
      v18 = getDIOSLog(v12, v13);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        *buf = 68158210;
        v53 = 76;
        v54 = 2080;
        v55 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
        v56 = 2112;
        v57 = v9;
        _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_DEBUG, "%.*s: MediaKit scan dict: %@", buf, 0x1Cu);
      }
    }

    *__error() = v11;
  }

  v19 = [v9 objectForKeyedSubscript:@"Schemes"];
  if (!v19 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v19 count] != 1)
  {
    v17 = [DIError failWithEnumValue:150 verboseInfo:@"Invalid schemes returned by MediaKit" error:error];
LABEL_36:

    goto LABEL_37;
  }

  v20 = [v19 objectAtIndexedSubscript:0];
  v21 = [v20 objectForKeyedSubscript:@"Sections"];

  if (!v21 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v21 count] != 1)
  {
    v17 = [DIError failWithEnumValue:150 verboseInfo:@"Invalid sections returned by MediaKit" error:error];
LABEL_39:

    goto LABEL_36;
  }

  v22 = [v21 objectAtIndexedSubscript:0];
  v23 = [v22 objectForKeyedSubscript:@"Partitions"];

  if (!v23 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v17 = [DIError failWithEnumValue:150 verboseInfo:@"Invalid partitions returned by MediaKit" error:error];

    goto LABEL_39;
  }

  v42 = v21;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v23;
  v24 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
  if (!v24)
  {
LABEL_34:
    v29 = obj;

LABEL_44:
    v17 = [DIError failWithEnumValue:150 verboseInfo:@"Cannot find the data partition" error:error];

    goto LABEL_36;
  }

  v25 = v24;
  v44 = *v46;
LABEL_26:
  v26 = 0;
  while (1)
  {
    if (*v46 != v44)
    {
      objc_enumerationMutation(obj);
    }

    v27 = *(*(&v45 + 1) + 8 * v26);
    v28 = [v27 objectForKeyedSubscript:@"GUID"];
    if (v28)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 && ([v28 isEqual:dCopy])
      {
        break;
      }
    }

    if (v25 == ++v26)
    {
      v25 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v25)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }
  }

  v31 = v27;

  v29 = obj;
  if (!v31)
  {
    goto LABEL_44;
  }

  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:blocks];
  [v31 setObject:v32 forKeyedSubscript:@"Size"];

  [(MKDIDevice *)self mediaRef];
  v33 = MKCFWriteMedia();
  v50 = v33;
  if (v33)
  {
    v17 = [DIError failWithOSStatus:v33 verboseInfo:@"MediaKit write error" error:error];

    goto LABEL_36;
  }

  v34 = *__error();
  v35 = DIForwardLogs();
  if (v35)
  {
    v49 = 0;
    v37 = getDIOSLog(v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 3;
    }

    else
    {
      v38 = 2;
    }

    *buf = 68157954;
    v53 = 76;
    v54 = 2080;
    v55 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
    LODWORD(v41) = 18;
    v39 = _os_log_send_and_compose_impl(v38, &v49, 0, 0, &dword_248DE0000, v37, 0, "%.*s: Data partition resized", buf, v41);

    if (v39)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v39);
      free(v39);
    }
  }

  else
  {
    v40 = getDIOSLog(v35, v36);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v53 = 76;
      v54 = 2080;
      v55 = "[MKDIDevice resizeDataPartitionWithPartitionUUID:partitionNumBlocks:error:]";
      _os_log_impl(&dword_248DE0000, v40, OS_LOG_TYPE_DEFAULT, "%.*s: Data partition resized", buf, 0x12u);
    }
  }

  *__error() = v34;

  v17 = 1;
LABEL_37:

  return v17;
}

- (BOOL)updatePartitionMapWithError:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  v20 = 0;
  [(MKDIDevice *)self mediaRef];
  v5 = MKCFReadMedia();
  v6 = 0;
  if (!v5)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = v20;
LABEL_6:
    v8 = @"MediaKit read error";
    goto LABEL_7;
  }

  [(MKDIDevice *)self mediaRef];
  v7 = MKCFWriteMedia();
  v20 = v7;
  if (v7)
  {
    v6 = v7;
    v8 = @"MediaKit write error";
LABEL_7:
    v9 = [DIError failWithOSStatus:v6 verboseInfo:v8 error:error];
    goto LABEL_8;
  }

  v11 = *__error();
  v12 = DIForwardLogs();
  if (v12)
  {
    v19 = 0;
    v14 = getDIOSLog(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    *buf = 68157954;
    v22 = 42;
    v23 = 2080;
    v24 = "[MKDIDevice updatePartitionMapWithError:]";
    LODWORD(v18) = 18;
    v16 = _os_log_send_and_compose_impl(v15, &v19, 0, 0, &dword_248DE0000, v14, 0, "%.*s: Partition map updated", buf, v18);

    if (v16)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
      free(v16);
    }
  }

  else
  {
    v17 = getDIOSLog(v12, v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v22 = 42;
      v23 = 2080;
      v24 = "[MKDIDevice updatePartitionMapWithError:]";
      _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_DEFAULT, "%.*s: Partition map updated", buf, 0x12u);
    }
  }

  *__error() = v11;
  v9 = 1;
LABEL_8:

  return v9;
}

- (void)dealloc
{
  mediaRef = self->_mediaRef;
  if (mediaRef)
  {
    CFRelease(mediaRef);
    self->_mediaRef = 0;
  }

  v4.receiver = self;
  v4.super_class = MKDIDevice;
  [(MKDIDevice *)&v4 dealloc];
}

@end