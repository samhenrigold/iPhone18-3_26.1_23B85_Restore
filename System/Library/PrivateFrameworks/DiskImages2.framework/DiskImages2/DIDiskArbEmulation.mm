@interface DIDiskArbEmulation
- (BOOL)ejectWithBSDName:(id)name error:(id *)error;
- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error;
- (BOOL)unmountWithMountPoint:(id)point error:(id *)error;
@end

@implementation DIDiskArbEmulation

- (BOOL)ejectWithBSDName:(id)name error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  nameCopy = name;
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

    *buf = 68158210;
    v32 = 45;
    v33 = 2080;
    v34 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
    v35 = 2112;
    v36 = nameCopy;
    v11 = _os_log_send_and_compose_impl(v10, &v30, 0, 0, &dword_248DE0000, v9, 0, "%.*s: Ejecting %@", buf, 28);

    if (v11)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = getDIOSLog(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v32 = 45;
      v33 = 2080;
      v34 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
      v35 = 2112;
      v36 = nameCopy;
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Ejecting %@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", nameCopy];
  v14 = open([nameCopy fileSystemRepresentation], 0);
  if (v14 < 0)
  {
    v19 = *__error();
    v18 = @"Failed to eject - cannot open device";
    goto LABEL_14;
  }

  v15 = v14;
  v16 = ioctl(v14, 0x20006415uLL, 0);
  v17 = *__error();
  close(v15);
  if (v16)
  {
    v18 = @"Failed to eject";
    v19 = v17;
LABEL_14:
    v20 = [DIError failWithPOSIXCode:v19 verboseInfo:v18 error:error];
    goto LABEL_25;
  }

  v21 = *__error();
  v22 = DIForwardLogs();
  if (v22)
  {
    v30 = 0;
    v24 = getDIOSLog(v22, v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    *buf = 68158210;
    v32 = 45;
    v33 = 2080;
    v34 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
    v35 = 2112;
    v36 = nameCopy;
    LODWORD(v29) = 28;
    v26 = _os_log_send_and_compose_impl(v25, &v30, 0, 0, &dword_248DE0000, v24, 0, "%.*s: %@ ejected successfully", buf, v29);

    if (v26)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v26);
      free(v26);
    }
  }

  else
  {
    v27 = getDIOSLog(v22, v23);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v32 = 45;
      v33 = 2080;
      v34 = "[DIDiskArbEmulation ejectWithBSDName:error:]";
      v35 = 2112;
      v36 = nameCopy;
      _os_log_impl(&dword_248DE0000, v27, OS_LOG_TYPE_DEFAULT, "%.*s: %@ ejected successfully", buf, 0x1Cu);
    }
  }

  *__error() = v21;
  v20 = 1;
LABEL_25:

  return v20;
}

- (BOOL)mountWithDeviceName:(id)name args:(id)args filesystem:(id)filesystem mountURL:(id)l error:(id *)error
{
  v21[4] = *MEMORY[0x277D85DE8];
  argsCopy = args;
  filesystemCopy = filesystem;
  lCopy = l;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"/dev/%@", name];
  array = [MEMORY[0x277CBEB18] array];
  if (argsCopy && [argsCopy count])
  {
    [array addObject:@"-o"];
    v16 = [argsCopy componentsJoinedByString:{@", "}];
    [array addObject:v16];
  }

  v21[0] = @"-t";
  v21[1] = filesystemCopy;
  v21[2] = name;
  path = [lCopy path];
  v21[3] = path;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:4];
  [array addObjectsFromArray:v18];

  v19 = [DIHelpers executeWithPath:@"/sbin/mount" arguments:array error:error];
  return v19;
}

- (BOOL)unmountWithMountPoint:(id)point error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  pointCopy = point;
  v6 = *__error();
  v7 = DIForwardLogs();
  if (v7)
  {
    v16 = 0;
    v9 = getDIOSLog(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *buf = 68158211;
    v19 = 50;
    v20 = 2080;
    v21 = "[DIDiskArbEmulation unmountWithMountPoint:error:]";
    v22 = 2113;
    v23 = pointCopy;
    v11 = _os_log_send_and_compose_impl(v10, &v16, 0, 0, &dword_248DE0000, v9, 0, "%.*s: Unmounting %{private}@", buf, 28);

    if (v11)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = getDIOSLog(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158211;
      v19 = 50;
      v20 = 2080;
      v21 = "[DIDiskArbEmulation unmountWithMountPoint:error:]";
      v22 = 2113;
      v23 = pointCopy;
      _os_log_impl(&dword_248DE0000, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Unmounting %{private}@", buf, 0x1Cu);
    }
  }

  *__error() = v6;
  v17 = pointCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v14 = [DIHelpers executeWithPath:@"/sbin/umount" arguments:v13 error:error];

  return v14;
}

@end