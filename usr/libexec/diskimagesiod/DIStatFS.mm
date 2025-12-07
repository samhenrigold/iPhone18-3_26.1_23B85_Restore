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
  v31.receiver = self;
  v31.super_class = DIStatFS;
  v6 = [(DIStatFS *)&v31 init];
  if (!v6)
  {
LABEL_26:
    v20 = v6;
    goto LABEL_27;
  }

  if (fstatfs(descriptor, &v38) < 0)
  {
    v20 = [DIError nilWithPOSIXCode:*__error() verboseInfo:@"fstatfs failed" error:error];
LABEL_27:
    v21 = v20;
    goto LABEL_28;
  }

  v7 = [NSString stringWithUTF8String:v38.f_mntonname];
  v8 = [NSURL fileURLWithPath:v7 isDirectory:1];
  mountedOnURL = v6->_mountedOnURL;
  v6->_mountedOnURL = v8;

  v6->_blockSize = v38.f_bsize;
  v10 = [DIHelpers copyDevicePathWithStatfs:&v38];
  v11 = v10;
  if ((v38.f_flags & 0x1000) == 0 || ![v10 hasPrefix:@"/dev/disk"])
  {
LABEL_16:
    v22 = *__error();
    v23 = sub_1000E95F0();
    if (v23)
    {
      v30 = 0;
      v25 = sub_1000E957C(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      *buf = 68158210;
      v33 = 41;
      v34 = 2080;
      v35 = "[DIStatFS initWithFileDescriptor:error:]";
      v36 = 2082;
      f_fstypename = v38.f_fstypename;
      v27 = _os_log_send_and_compose_impl(v26, &v30, 0, 0, &_mh_execute_header, v25, 0, "%.*s: File system is %{public}s", buf, 28);

      if (v27)
      {
        fprintf(__stderrp, "%s\n", v27);
        free(v27);
      }
    }

    else
    {
      v28 = sub_1000E957C(v23, v24);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v33 = 41;
        v34 = 2080;
        v35 = "[DIStatFS initWithFileDescriptor:error:]";
        v36 = 2082;
        f_fstypename = v38.f_fstypename;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "%.*s: File system is %{public}s", buf, 0x1Cu);
      }
    }

    *__error() = v22;

    goto LABEL_26;
  }

  objc_storeStrong(&v6->_mountedFrom, v11);
  v12 = [[DIIOMedia alloc] initWithDevName:v11 error:error];
  v13 = v12;
  if (v12)
  {
    v14 = [(DIIOMedia *)v12 copyBlockDeviceWithError:error];
    if (v14)
    {
      v15 = [v14 copyPropertyWithClass:objc_opt_class() key:@"IOStorageFeatures"];
      v16 = v15;
      if (v15)
      {
        v17 = [v15 objectForKeyedSubscript:@"Barrier"];
        v18 = v17;
        if (v17)
        {
          bOOLValue = [v17 BOOLValue];
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

  v21 = 0;
LABEL_28:

  return v21;
}

- (void)logWithHeader:(id)header
{
  headerCopy = header;
  v6 = *__error();
  v7 = sub_1000E95F0();
  if (v7)
  {
    v28 = 0;
    v9 = sub_1000E957C(v7, v8);
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
      mountedFrom2 = [(DIStatFS *)self mountedFrom];
      v15 = [NSString stringWithFormat:@"locally mounted from %@", mountedFrom2];
    }

    else
    {
      v15 = @"remote mount";
    }

    supportsBarrier = [(DIStatFS *)self supportsBarrier];
    v30 = 26;
    v23 = @"not ";
    v31 = 2080;
    v32 = "[DIStatFS logWithHeader:]";
    *buf = 68159235;
    v33 = 2114;
    if (supportsBarrier)
    {
      v23 = &stru_100226D78;
    }

    v34 = headerCopy;
    v35 = 2113;
    v36 = path;
    v37 = 1024;
    v38 = blockSize;
    v39 = 2114;
    v40 = v15;
    v41 = 2112;
    v42 = v23;
    v24 = _os_log_send_and_compose_impl(v10, &v28, 0, 0, &_mh_execute_header, v9, 0, "%.*s: %{public}@: mounted on %{private}@, %u bytes block size, %{public}@, barriers %@supported", buf, 64);
    if (mountedFrom)
    {
    }

    if (v24)
    {
      fprintf(__stderrp, "%s\n", v24);
      free(v24);
    }
  }

  else
  {
    v16 = sub_1000E957C(v7, v8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      mountedOnURL2 = [(DIStatFS *)self mountedOnURL];
      path2 = [mountedOnURL2 path];
      blockSize2 = [(DIStatFS *)self blockSize];
      mountedFrom3 = [(DIStatFS *)self mountedFrom];
      if (mountedFrom3)
      {
        mountedFrom4 = [(DIStatFS *)self mountedFrom];
        v21 = [NSString stringWithFormat:@"locally mounted from %@", mountedFrom4];
      }

      else
      {
        v21 = @"remote mount";
      }

      supportsBarrier2 = [(DIStatFS *)self supportsBarrier];
      v30 = 26;
      v26 = @"not ";
      v31 = 2080;
      v32 = "[DIStatFS logWithHeader:]";
      *buf = 68159235;
      v33 = 2114;
      if (supportsBarrier2)
      {
        v26 = &stru_100226D78;
      }

      v34 = headerCopy;
      v35 = 2113;
      v36 = path2;
      v37 = 1024;
      v38 = blockSize2;
      v39 = 2114;
      v40 = v21;
      v41 = 2112;
      v42 = v26;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%.*s: %{public}@: mounted on %{private}@, %u bytes block size, %{public}@, barriers %@supported", buf, 0x40u);
      if (mountedFrom3)
      {
      }
    }
  }

  *__error() = v6;
}

@end