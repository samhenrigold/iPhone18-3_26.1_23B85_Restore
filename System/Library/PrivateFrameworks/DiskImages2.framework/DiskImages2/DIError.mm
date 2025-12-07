@interface DIError
+ (BOOL)failWithInError:(id)error outError:(id *)outError;
+ (NSBundle)frameworkBundle;
+ (id)copyDefaultLocalizedStringForDIErrorCode:(int64_t)code;
+ (id)errorWithDIException:(const void *)exception description:(id)description prefix:(id)prefix error:(id *)error;
+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description verboseInfo:(id)info error:(id *)error;
+ (id)errorWithEnumValue:(int64_t)value verboseInfo:(id)info;
+ (id)errorWithPOSIXCode:(int)code verboseInfo:(id)info;
+ (id)errorWithUnexpected:(unexpected<std:(id)unexpected :(id *)a5 error_code>)a3 verboseInfo:error:;
@end

@implementation DIError

+ (id)copyDefaultLocalizedStringForDIErrorCode:(int64_t)code
{
  if (code > 165)
  {
    if (code == 166)
    {
      return @"Corrupted shadow file(s) chain";
    }

    if (code != 168)
    {
      if (code == 169)
      {
        return @"Passphrase is too long";
      }

      goto LABEL_12;
    }

    return @"Passphrase cannot be empty";
  }

  else
  {
    if (code == 152)
    {
      return @"The disk image is corrupted";
    }

    if (code != 161)
    {
      if (code == 165)
      {
        return @"Failed to mount filesystems";
      }

LABEL_12:
      [MEMORY[0x277CCACA8] stringWithFormat:@"Disk image operation failed with error code %d", code];
      return objc_claimAutoreleasedReturnValue();
    }

    return @"The disk image format is not supported by this OS";
  }
}

+ (id)errorWithDomain:(id)domain code:(int64_t)code description:(id)description verboseInfo:(id)info error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  domainCopy = domain;
  descriptionCopy = description;
  infoCopy = info;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v15 = [domainCopy isEqualToString:*MEMORY[0x277CCA5B8]];
  if (code >= 0)
  {
    codeCopy = code;
  }

  else
  {
    codeCopy = -code;
  }

  if (v15)
  {
    codeCopy2 = codeCopy;
  }

  else
  {
    codeCopy2 = code;
  }

  if (!descriptionCopy)
  {
    if ([domainCopy isEqualToString:@"com.apple.DiskImages2.ErrorDomain"])
    {
      descriptionCopy = [DIError copyDefaultLocalizedStringForDIErrorCode:codeCopy2];
    }

    else
    {
      descriptionCopy = 0;
    }
  }

  codeCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"(err code %d)", codeCopy2];
  if (descriptionCopy)
  {
    [dictionary setObject:descriptionCopy forKeyedSubscript:*MEMORY[0x277CCA450]];
    if (infoCopy)
    {
      v19 = *__error();
      v20 = DIForwardLogs();
      if (!v20)
      {
        v35 = getDIOSLog(v20, v21);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158722;
          v49 = 62;
          v50 = 2080;
          v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
          v52 = 2114;
          v53 = descriptionCopy;
          v54 = 2114;
          v55 = infoCopy;
          v56 = 2114;
          v57 = codeCopy2;
          _os_log_impl(&dword_248DE0000, v35, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ - %{public}@ %{public}@", buf, 0x30u);
        }

        goto LABEL_45;
      }

      v47 = 0;
      v22 = getDIOSLog(v20, v21);
      *buf = 68158722;
      v49 = 62;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = 3;
      }

      else
      {
        v23 = 2;
      }

      v50 = 2080;
      v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
      v52 = 2114;
      v53 = descriptionCopy;
      v54 = 2114;
      v55 = infoCopy;
      v56 = 2114;
      v57 = codeCopy2;
      v24 = _os_log_send_and_compose_impl(v23, &v47, 0, 0, &dword_248DE0000, v22, 16, "%.*s: %{public}@ - %{public}@ %{public}@", buf, 48);

      if (v24)
      {
        goto LABEL_25;
      }

      goto LABEL_45;
    }

    v29 = *__error();
    v30 = DIForwardLogs();
    if (!v30)
    {
      v41 = getDIOSLog(v30, v31);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158466;
        v49 = 62;
        v50 = 2080;
        v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
        v52 = 2114;
        v53 = descriptionCopy;
        v54 = 2114;
        v55 = codeCopy2;
        _os_log_impl(&dword_248DE0000, v41, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ %{public}@", buf, 0x26u);
      }

      goto LABEL_53;
    }

    v47 = 0;
    v32 = getDIOSLog(v30, v31);
    *buf = 68158466;
    v49 = 62;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = 3;
    }

    else
    {
      v33 = 2;
    }

    v50 = 2080;
    v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
    v52 = 2114;
    v53 = descriptionCopy;
    v54 = 2114;
    v55 = codeCopy2;
    v34 = _os_log_send_and_compose_impl(v33, &v47, 0, 0, &dword_248DE0000, v32, 16, "%.*s: %{public}@ %{public}@", buf, 38);

    if (v34)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (infoCopy)
    {
      v19 = *__error();
      v25 = DIForwardLogs();
      if (!v25)
      {
        v40 = getDIOSLog(v25, v26);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 68158466;
          v49 = 62;
          v50 = 2080;
          v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
          v52 = 2114;
          v53 = infoCopy;
          v54 = 2114;
          v55 = codeCopy2;
          _os_log_impl(&dword_248DE0000, v40, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ %{public}@", buf, 0x26u);
        }

        goto LABEL_45;
      }

      v47 = 0;
      v27 = getDIOSLog(v25, v26);
      *buf = 68158466;
      v49 = 62;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = 3;
      }

      else
      {
        v28 = 2;
      }

      v50 = 2080;
      v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
      v52 = 2114;
      v53 = infoCopy;
      v54 = 2114;
      v55 = codeCopy2;
      v24 = _os_log_send_and_compose_impl(v28, &v47, 0, 0, &dword_248DE0000, v27, 16, "%.*s: %{public}@ %{public}@", buf, 38);

      if (v24)
      {
LABEL_25:
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v24);
        free(v24);
      }

LABEL_45:
      *__error() = v19;
      [dictionary setObject:infoCopy forKeyedSubscript:@"DIErrorVerboseInfo"];
      goto LABEL_54;
    }

    v29 = *__error();
    v36 = DIForwardLogs();
    if (!v36)
    {
      v42 = getDIOSLog(v36, v37);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 68158466;
        v49 = 62;
        v50 = 2080;
        v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
        v52 = 2114;
        v53 = domainCopy;
        v54 = 2114;
        v55 = codeCopy2;
        _os_log_impl(&dword_248DE0000, v42, OS_LOG_TYPE_ERROR, "%.*s: %{public}@ error %{public}@", buf, 0x26u);
      }

      goto LABEL_53;
    }

    v47 = 0;
    v38 = getDIOSLog(v36, v37);
    *buf = 68158466;
    v49 = 62;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = 3;
    }

    else
    {
      v39 = 2;
    }

    v50 = 2080;
    v51 = "+[DIError errorWithDomain:code:description:verboseInfo:error:]";
    v52 = 2114;
    v53 = domainCopy;
    v54 = 2114;
    v55 = codeCopy2;
    v34 = _os_log_send_and_compose_impl(v39, &v47, 0, 0, &dword_248DE0000, v38, 16, "%.*s: %{public}@ error %{public}@", buf, 38);

    if (v34)
    {
LABEL_41:
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v34);
      free(v34);
    }
  }

LABEL_53:
  *__error() = v29;
LABEL_54:
  v43 = [MEMORY[0x277CCA9B8] errorWithDomain:domainCopy code:codeCopy2 userInfo:dictionary];
  v44 = v43;
  if (error)
  {
    v45 = v43;
    *error = v44;
  }

  return v44;
}

+ (id)errorWithPOSIXCode:(int)code verboseInfo:(id)info
{
  v4 = [DIError errorWithDomain:*MEMORY[0x277CCA5B8] code:code description:0 verboseInfo:info error:0];

  return v4;
}

+ (id)errorWithEnumValue:(int64_t)value verboseInfo:(id)info
{
  v4 = [DIError errorWithDomain:@"com.apple.DiskImages2.ErrorDomain" code:value description:0 verboseInfo:info error:0];

  return v4;
}

+ (NSBundle)frameworkBundle
{
  if (+[DIError frameworkBundle]::onceToken != -1)
  {
    +[DIError frameworkBundle];
  }

  v3 = +[DIError frameworkBundle]::_bundle;

  return v3;
}

void __26__DIError_frameworkBundle__block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/System/Library/PrivateFrameworks/DiskImages2.framework"];
  v1 = [v0 bundleWithURL:?];
  v2 = +[DIError frameworkBundle]::_bundle;
  +[DIError frameworkBundle]::_bundle = v1;
}

+ (BOOL)failWithInError:(id)error outError:(id *)outError
{
  if (outError)
  {
    *outError = error;
  }

  return 0;
}

+ (id)errorWithDIException:(const void *)exception description:(id)description prefix:(id)prefix error:(id *)error
{
  descriptionCopy = description;
  prefixCopy = prefix;
  v11 = *(exception + 2);
  if (v11 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = -v11;
  }

  v13 = *MEMORY[0x277CCA5B8];
  if (v12 >= 0x6C)
  {
    v13 = @"com.apple.DiskImages2.ErrorDomain";
  }

  v14 = v13;
  v15 = MEMORY[0x277CCACA8];
  v16 = (*(*exception + 16))(exception);
  if (prefixCopy)
  {
    [v15 stringWithFormat:@"%@: %s", prefixCopy, v16];
  }

  else
  {
    [v15 stringWithUTF8String:v16];
  }
  v17 = ;
  v18 = [DIError errorWithDomain:v14 code:v12 description:descriptionCopy verboseInfo:v17 error:error];

  return v18;
}

+ (id)errorWithUnexpected:(unexpected<std:(id)unexpected :(id *)a5 error_code>)a3 verboseInfo:error:
{
  if (a3.var0.var0 >= 0)
  {
    var0 = a3.var0.var0;
  }

  else
  {
    var0 = -a3.var0.var0;
  }

  if (var0 >= 0x6C)
  {
    v6 = @"com.apple.DiskImages2.ErrorDomain";
  }

  else
  {
    v6 = *MEMORY[0x277CCA5B8];
  }

  v7 = [DIError errorWithDomain:"errorWithDomain:code:description:verboseInfo:error:" code:v6 description:? verboseInfo:? error:?];

  return v7;
}

@end