@interface DIStatFS
- (DIStatFS)initWithCoder:(id)coder;
- (DIStatFS)initWithFileDescriptor:(int)descriptor error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)logWithHeader:(id)header;
@end

@implementation DIStatFS

- (DIStatFS)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = DIStatFS;
  v5 = [(DIStatFS *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mountedOnURL"];
    mountedOnURL = v5->_mountedOnURL;
    v5->_mountedOnURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mountedFrom"];
    mountedFrom = v5->_mountedFrom;
    v5->_mountedFrom = v8;

    v5->_blockSize = [coderCopy decodeIntegerForKey:@"blockSize"];
    v5->_supportsBarrier = [coderCopy decodeBoolForKey:@"supportsBarrier"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  mountedOnURL = [(DIStatFS *)self mountedOnURL];
  [coderCopy encodeObject:mountedOnURL forKey:@"mountedOnURL"];

  mountedFrom = [(DIStatFS *)self mountedFrom];
  [coderCopy encodeObject:mountedFrom forKey:@"mountedFrom"];

  [coderCopy encodeInteger:-[DIStatFS blockSize](self forKey:{"blockSize"), @"blockSize"}];
  [coderCopy encodeBool:-[DIStatFS supportsBarrier](self forKey:{"supportsBarrier"), @"supportsBarrier"}];
}

- (DIStatFS)initWithFileDescriptor:(int)descriptor error:(id *)error
{
  v40 = *MEMORY[0x277D85DE8];
  v32.receiver = self;
  v32.super_class = DIStatFS;
  v6 = [(DIStatFS *)&v32 init];
  if (!v6)
  {
LABEL_26:
    v21 = v6;
    goto LABEL_27;
  }

  if (fstatfs(descriptor, &v39) < 0)
  {
    v21 = [DIError nilWithPOSIXCode:*__error() verboseInfo:@"fstatfs failed" error:error];
LABEL_27:
    v22 = v21;
    goto LABEL_28;
  }

  v7 = MEMORY[0x277CBEBC0];
  v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:v39.f_mntonname];
  v9 = [v7 fileURLWithPath:v8 isDirectory:1];
  mountedOnURL = v6->_mountedOnURL;
  v6->_mountedOnURL = v9;

  v6->_blockSize = v39.f_bsize;
  v11 = [DIHelpers copyDevicePathWithStatfs:&v39];
  v12 = v11;
  if ((v39.f_flags & 0x1000) == 0 || ![v11 hasPrefix:@"/dev/disk"])
  {
LABEL_16:
    v23 = *__error();
    v24 = DIForwardLogs();
    if (v24)
    {
      v31 = 0;
      v26 = getDIOSLog(v24, v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      *buf = 68158210;
      v34 = 41;
      v35 = 2080;
      v36 = "[DIStatFS initWithFileDescriptor:error:]";
      v37 = 2082;
      f_fstypename = v39.f_fstypename;
      v28 = _os_log_send_and_compose_impl(v27, &v31, 0, 0, &dword_248DE0000, v26, 0, "%.*s: File system is %{public}s", buf, 28);

      if (v28)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v28);
        free(v28);
      }
    }

    else
    {
      v29 = getDIOSLog(v24, v25);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v34 = 41;
        v35 = 2080;
        v36 = "[DIStatFS initWithFileDescriptor:error:]";
        v37 = 2082;
        f_fstypename = v39.f_fstypename;
        _os_log_impl(&dword_248DE0000, v29, OS_LOG_TYPE_DEFAULT, "%.*s: File system is %{public}s", buf, 0x1Cu);
      }
    }

    *__error() = v23;

    goto LABEL_26;
  }

  objc_storeStrong(&v6->_mountedFrom, v12);
  v13 = [[DIIOMedia alloc] initWithDevName:v12 error:error];
  v14 = v13;
  if (v13)
  {
    v15 = [(DIIOMedia *)v13 copyBlockDeviceWithError:error];
    if (v15)
    {
      v16 = [v15 copyPropertyWithClass:objc_opt_class() key:@"IOStorageFeatures"];
      v17 = v16;
      if (v16)
      {
        v18 = [v16 objectForKeyedSubscript:@"Barrier"];
        v19 = v18;
        if (v18)
        {
          bOOLValue = [v18 BOOLValue];
        }

        else
        {
          bOOLValue = 0;
        }

        v6->_supportsBarrier = bOOLValue;
      }

      goto LABEL_16;
    }
  }

  v22 = 0;
LABEL_28:

  return v22;
}

- (void)logWithHeader:(id)header
{
  v45 = *MEMORY[0x277D85DE8];
  headerCopy = header;
  v6 = *__error();
  v7 = DIForwardLogs();
  if (v7)
  {
    v30 = 0;
    v9 = getDIOSLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    mountedOnURL = [(DIStatFS *)self mountedOnURL];
    path = [mountedOnURL path];
    blockSize = [(DIStatFS *)self blockSize];
    mountedFrom = [(DIStatFS *)self mountedFrom];
    if (mountedFrom)
    {
      v15 = MEMORY[0x277CCACA8];
      mountedFrom2 = [(DIStatFS *)self mountedFrom];
      v16 = [v15 stringWithFormat:@"locally mounted from %@", mountedFrom2];
    }

    else
    {
      v16 = @"remote mount";
    }

    supportsBarrier = [(DIStatFS *)self supportsBarrier];
    v32 = 26;
    v25 = @"not ";
    v33 = 2080;
    v34 = "[DIStatFS logWithHeader:]";
    *buf = 68159235;
    v35 = 2114;
    if (supportsBarrier)
    {
      v25 = &stru_285C05C28;
    }

    v36 = headerCopy;
    v37 = 2113;
    v38 = path;
    v39 = 1024;
    v40 = blockSize;
    v41 = 2114;
    v42 = v16;
    v43 = 2112;
    v44 = v25;
    v26 = _os_log_send_and_compose_impl(v10, &v30, 0, 0, &dword_248DE0000, v9, 0, "%.*s: %{public}@: mounted on %{private}@, %u bytes block size, %{public}@, barriers %@supported", buf, 64);
    if (mountedFrom)
    {
    }

    if (v26)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v26);
      free(v26);
    }
  }

  else
  {
    v17 = getDIOSLog(v7, v8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      mountedOnURL2 = [(DIStatFS *)self mountedOnURL];
      path2 = [mountedOnURL2 path];
      blockSize2 = [(DIStatFS *)self blockSize];
      mountedFrom3 = [(DIStatFS *)self mountedFrom];
      if (mountedFrom3)
      {
        v22 = MEMORY[0x277CCACA8];
        mountedFrom4 = [(DIStatFS *)self mountedFrom];
        v23 = [v22 stringWithFormat:@"locally mounted from %@", mountedFrom4];
      }

      else
      {
        v23 = @"remote mount";
      }

      supportsBarrier2 = [(DIStatFS *)self supportsBarrier];
      v32 = 26;
      v28 = @"not ";
      v33 = 2080;
      v34 = "[DIStatFS logWithHeader:]";
      *buf = 68159235;
      v35 = 2114;
      if (supportsBarrier2)
      {
        v28 = &stru_285C05C28;
      }

      v36 = headerCopy;
      v37 = 2113;
      v38 = path2;
      v39 = 1024;
      v40 = blockSize2;
      v41 = 2114;
      v42 = v23;
      v43 = 2112;
      v44 = v28;
      _os_log_impl(&dword_248DE0000, v17, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@: mounted on %{private}@, %u bytes block size, %{public}@, barriers %@supported", buf, 0x40u);
      if (mountedFrom3)
      {
      }
    }
  }

  *__error() = v6;
}

@end