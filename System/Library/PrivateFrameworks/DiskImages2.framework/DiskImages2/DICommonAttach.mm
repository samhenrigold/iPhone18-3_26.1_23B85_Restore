@interface DICommonAttach
+ (BOOL)DI1_attachWithDictionary:(id)dictionary BSDName:(id *)name error:(id *)error;
+ (BOOL)DI2_attachWithParams:(id)params BSDName:(id *)name error:(id *)error;
+ (BOOL)defaultDiskImageAttach:(id)attach BSDName:(id *)name error:(id *)error;
+ (BOOL)diskImageAttach:(id)attach BSDName:(id *)name error:(id *)error;
+ (BOOL)diskImageAttach:(id)attach readOnly:(BOOL)only autoMount:(BOOL)mount BSDName:(id *)name error:(id *)error;
@end

@implementation DICommonAttach

+ (BOOL)DI2_attachWithParams:(id)params BSDName:(id *)name error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  paramsCopy = params;
  v8 = *__error();
  v9 = DIForwardLogs();
  if (v9)
  {
    v32 = 0;
    v11 = getDIOSLog(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    *buf = 68157954;
    *&buf[4] = 53;
    v34 = 2080;
    v35 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
    LODWORD(v30) = 18;
    v13 = _os_log_send_and_compose_impl(v12, &v32, 0, 0, &dword_248DE0000, v11, 0, "%.*s: entry", buf, v30);

    if (v13)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v13);
    }
  }

  else
  {
    v14 = getDIOSLog(v9, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 53;
      v34 = 2080;
      v35 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
      _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEFAULT, "%.*s: entry", buf, 0x12u);
    }
  }

  LOBYTE(v15) = 0;
  *__error() = v8;
  if (paramsCopy && name && error)
  {
    inputURL = [paramsCopy inputURL];
    pathExtension = [inputURL pathExtension];
    v18 = [pathExtension isEqualToString:@"sparseimage"];

    if (v18)
    {
      LOBYTE(v15) = [DIError failWithPOSIXCode:45 verboseInfo:@"Sparse images are not supported by DI2" error:error];
    }

    else
    {
      v31 = 0;
      v15 = [DiskImages2 attachWithParams:paramsCopy handle:&v31 error:error];
      v19 = v31;
      if (v15)
      {
        v20 = *__error();
        v21 = DIForwardLogs();
        if (v21)
        {
          v32 = 0;
          v23 = getDIOSLog(v21, v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = 3;
          }

          else
          {
            v24 = 2;
          }

          bSDName = [v19 BSDName];
          *buf = 0x3504100302;
          v34 = 2080;
          v35 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
          v36 = 2114;
          v37 = bSDName;
          LODWORD(v30) = 28;
          v26 = _os_log_send_and_compose_impl(v24, &v32, 0, 0, &dword_248DE0000, v23, 0, "%.*s: Disk image attached (with DI2) as %{public}@", buf, v30);

          if (v26)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v26);
            free(v26);
          }
        }

        else
        {
          v27 = getDIOSLog(v21, v22);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            bSDName2 = [v19 BSDName];
            *buf = 0x3504100302;
            v34 = 2080;
            v35 = "+[DICommonAttach DI2_attachWithParams:BSDName:error:]";
            v36 = 2114;
            v37 = bSDName2;
            _os_log_impl(&dword_248DE0000, v27, OS_LOG_TYPE_DEFAULT, "%.*s: Disk image attached (with DI2) as %{public}@", buf, 0x1Cu);
          }
        }

        *__error() = v20;
        *name = [v19 BSDName];
      }
    }
  }

  return v15;
}

+ (BOOL)DI1_attachWithDictionary:(id)dictionary BSDName:(id *)name error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = *__error();
  v9 = DIForwardLogs();
  if (v9)
  {
    v18 = 0;
    v11 = getDIOSLog(v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }

    *buf = 68157954;
    v20 = 57;
    v21 = 2080;
    v22 = "+[DICommonAttach DI1_attachWithDictionary:BSDName:error:]";
    LODWORD(v17) = 18;
    v13 = _os_log_send_and_compose_impl(v12, &v18, 0, 0, &dword_248DE0000, v11, 0, "%.*s: entry", buf, v17);

    if (v13)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v13);
      free(v13);
    }
  }

  else
  {
    v14 = getDIOSLog(v9, v10);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v20 = 57;
      v21 = 2080;
      v22 = "+[DICommonAttach DI1_attachWithDictionary:BSDName:error:]";
      _os_log_impl(&dword_248DE0000, v14, OS_LOG_TYPE_DEFAULT, "%.*s: entry", buf, 0x12u);
    }
  }

  v15 = __error();
  result = 0;
  *v15 = v8;
  if (dictionary && name)
  {
    if (error)
    {
      return [DIError failWithPOSIXCode:45 verboseInfo:@"Attach with legacy DiskImages framework is not supported on embedded platforms" error:error];
    }
  }

  return result;
}

+ (BOOL)defaultDiskImageAttach:(id)attach BSDName:(id *)name error:(id *)error
{
  if (attach)
  {
    return [self diskImageAttach:attach readOnly:0 autoMount:1 BSDName:name error:error];
  }

  else
  {
    return [DIError failWithPOSIXCode:22 verboseInfo:@"nil URL specified" error:error];
  }
}

+ (BOOL)diskImageAttach:(id)attach readOnly:(BOOL)only autoMount:(BOOL)mount BSDName:(id *)name error:(id *)error
{
  mountCopy = mount;
  onlyCopy = only;
  v52 = *MEMORY[0x277D85DE8];
  attachCopy = attach;
  if (attachCopy)
  {
    v13 = *__error();
    v14 = DIForwardLogs();
    if (v14)
    {
      v45 = 0;
      v16 = getDIOSLog(v14, v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      path = [attachCopy path];
      *buf = 68158211;
      v47 = 67;
      v48 = 2080;
      v49 = "+[DICommonAttach diskImageAttach:readOnly:autoMount:BSDName:error:]";
      v50 = 2113;
      v51 = path;
      v19 = _os_log_send_and_compose_impl(v17, &v45, 0, 0, &dword_248DE0000, v16, 0, "%.*s: entry with %{private}@", buf, 28);

      if (v19)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v19);
        free(v19);
      }
    }

    else
    {
      v21 = getDIOSLog(v14, v15);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [attachCopy path];
        *buf = 68158211;
        v47 = 67;
        v48 = 2080;
        v49 = "+[DICommonAttach diskImageAttach:readOnly:autoMount:BSDName:error:]";
        v50 = 2113;
        v51 = path2;
        _os_log_impl(&dword_248DE0000, v21, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v13;
    v23 = objc_autoreleasePoolPush();
    v44 = 0;
    v24 = [[DIAttachParams alloc] initWithURL:attachCopy error:&v44];
    v25 = v44;
    v26 = v25;
    if (v24)
    {
      [(DIAttachParams *)v24 setAutoMount:mountCopy];
      if (onlyCopy)
      {
        v27 = 2;
      }

      else
      {
        v27 = 1;
      }

      [(DIAttachParams *)v24 setFileMode:v27];
      v42 = v26;
      v43 = 0;
      v20 = [self diskImageAttach:v24 BSDName:&v43 error:&v42];
      v28 = v43;
      v29 = v42;

      v26 = v29;
    }

    else if ([v25 code] == 45)
    {

      v30 = *__error();
      v31 = DIForwardLogs();
      if (v31)
      {
        v45 = 0;
        v33 = getDIOSLog(v31, v32);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v34 = 3;
        }

        else
        {
          v34 = 2;
        }

        *buf = 68157954;
        v47 = 67;
        v48 = 2080;
        v49 = "+[DICommonAttach diskImageAttach:readOnly:autoMount:BSDName:error:]";
        LODWORD(v39) = 18;
        v35 = _os_log_send_and_compose_impl(v34, &v45, 0, 0, &dword_248DE0000, v33, 0, "%.*s: Falling back to attach with di1", buf, v39);

        if (v35)
        {
          fprintf(*MEMORY[0x277D85DF8], "%s\n", v35);
          free(v35);
        }
      }

      else
      {
        v36 = getDIOSLog(v31, v32);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v47 = 67;
          v48 = 2080;
          v49 = "+[DICommonAttach diskImageAttach:readOnly:autoMount:BSDName:error:]";
          _os_log_impl(&dword_248DE0000, v36, OS_LOG_TYPE_DEFAULT, "%.*s: Falling back to attach with di1", buf, 0x12u);
        }
      }

      *__error() = v30;
      v40 = 0;
      v41 = 0;
      v20 = [self DI1_attachWithDictionary:MEMORY[0x277CBEC10] BSDName:&v41 error:&v40];
      v28 = v41;
      v26 = v40;
    }

    else
    {
      v20 = 0;
      v28 = 0;
    }

    objc_autoreleasePoolPop(v23);
    if (error && (v37 = v26) != 0 || name && (v37 = v28, error = name, !v26))
    {
      *error = v37;
    }
  }

  else
  {
    v20 = [DIError failWithPOSIXCode:22 verboseInfo:@"nil URL specified" error:error];
  }

  return v20;
}

+ (BOOL)diskImageAttach:(id)attach BSDName:(id *)name error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  attachCopy = attach;
  if (attachCopy)
  {
    v9 = *__error();
    v10 = DIForwardLogs();
    if (v10)
    {
      v43 = 0;
      v12 = getDIOSLog(v10, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 3;
      }

      else
      {
        v13 = 2;
      }

      inputURL = [attachCopy inputURL];
      path = [inputURL path];
      *buf = 68158211;
      v45 = 48;
      v46 = 2080;
      v47 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
      v48 = 2113;
      v49 = path;
      v16 = _os_log_send_and_compose_impl(v13, &v43, 0, 0, &dword_248DE0000, v12, 0, "%.*s: entry with %{private}@", buf, 28);

      if (v16)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v16);
        free(v16);
      }
    }

    else
    {
      v18 = getDIOSLog(v10, v11);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        inputURL2 = [attachCopy inputURL];
        path2 = [inputURL2 path];
        *buf = 68158211;
        v45 = 48;
        v46 = 2080;
        v47 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
        v48 = 2113;
        v49 = path2;
        _os_log_impl(&dword_248DE0000, v18, OS_LOG_TYPE_DEFAULT, "%.*s: entry with %{private}@", buf, 0x1Cu);
      }
    }

    *__error() = v9;
    v21 = objc_autoreleasePoolPush();
    v41 = 0;
    v42 = 0;
    v22 = [self DI2_attachWithParams:attachCopy BSDName:&v42 error:&v41];
    v23 = v42;
    v24 = v41;
    v25 = v24;
    if (v22)
    {
      v17 = 1;
    }

    else if ([v24 code] == 45 || objc_msgSend(v25, "code") == 35)
    {
      v26 = [attachCopy toDI1ParamsWithError:0];
      if (v26)
      {
        v27 = *__error();
        v28 = DIForwardLogs();
        if (v28)
        {
          v38 = v27;
          v43 = 0;
          v30 = getDIOSLog(v28, v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 3;
          }

          else
          {
            v31 = 2;
          }

          *buf = 68157954;
          v45 = 48;
          v46 = 2080;
          v47 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
          LODWORD(v37) = 18;
          v32 = _os_log_send_and_compose_impl(v31, &v43, 0, 0, &dword_248DE0000, v30, 0, "%.*s: Falling back to attach with di1", buf, v37);

          if (v32)
          {
            fprintf(*MEMORY[0x277D85DF8], "%s\n", v32);
            free(v32);
          }

          v27 = v38;
        }

        else
        {
          v33 = getDIOSLog(v28, v29);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 68157954;
            v45 = 48;
            v46 = 2080;
            v47 = "+[DICommonAttach diskImageAttach:BSDName:error:]";
            _os_log_impl(&dword_248DE0000, v33, OS_LOG_TYPE_DEFAULT, "%.*s: Falling back to attach with di1", buf, 0x12u);
          }
        }

        *__error() = v27;

        v39 = 0;
        v40 = v23;
        v17 = [self DI1_attachWithDictionary:v26 BSDName:&v40 error:&v39];
        v34 = v40;

        v25 = v39;
        v23 = v34;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }

    objc_autoreleasePoolPop(v21);
    if (error && (v35 = v25) != 0 || name && (v35 = v23, error = name, !v25))
    {
      *error = v35;
    }
  }

  else
  {
    v17 = [DIError failWithPOSIXCode:22 verboseInfo:@"nil params specified" error:error];
  }

  return v17;
}

@end