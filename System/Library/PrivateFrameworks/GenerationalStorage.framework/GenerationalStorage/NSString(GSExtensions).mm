@interface NSString(GSExtensions)
+ (id)gs_stringWithFileSystemRepresentation:()GSExtensions;
- (id)gs_issueExtension:()GSExtensions error:;
- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions;
- (id)gs_stringByUpdatingPathExtensionWithPathOrURL:()GSExtensions;
- (uint64_t)validateGSNameAllowingDot:()GSExtensions error:;
@end

@implementation NSString(GSExtensions)

+ (id)gs_stringWithFileSystemRepresentation:()GSExtensions
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager stringWithFileSystemRepresentation:a3 length:strlen(a3)];

  return v5;
}

- (uint64_t)validateGSNameAllowingDot:()GSExtensions error:
{
  if ([self length] <= 0xFE && objc_msgSend(self, "length"))
  {
    if ((a3 & 1) != 0 || [self characterAtIndex:0] != 46)
    {
      if (!strchr([self fileSystemRepresentation], 47))
      {
        return 1;
      }
      v7 = ;
      v8 = gs_default_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }
    }

    else
      v7 = {;
      v8 = gs_default_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid Name [%@]", self];
    v8 = gs_default_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:
      [NSString(GSExtensions) validateGSNameAllowingDot:error:];
    }
  }

  if (a4)
  {
    *a4 = _GSErrorForStatus(105, v7, 0);
  }

  return 0;
}

- (id)gs_issueExtension:()GSExtensions error:
{
  [self fileSystemRepresentation];
  v7 = sandbox_extension_issue_file();
  if (v7)
  {
    v8 = v7;
    v9 = gs_default_log(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(NSString(GSExtensions) *)a3 gs_issueExtension:self error:v9];
    }

    v10 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:v8 length:strlen(v8) + 1];
  }

  else
  {
    if (*__error() != 2)
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to issue [%s] extension for <%@>", a3, self];
      v12 = __error();
      v13 = *v12;
      v14 = gs_default_log(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [(NSString(GSExtensions) *)v11 gs_issueExtension:v13 error:v14];
      }

      if (a4)
      {
        *a4 = _GSErrorForErrno(v13, v11);
      }
    }

    v10 = 0;
  }

  return v10;
}

- (id)gs_issueReadExtensionIfNeededForAuditToken:()GSExtensions
{
  fileSystemRepresentation = [self fileSystemRepresentation];
  if (sandbox_check_by_audit_token())
  {
    v4 = [self gs_issueExtension:"com.apple.revisiond.revision" error:{0, fileSystemRepresentation}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)gs_stringByUpdatingPathExtensionWithPathOrURL:()GSExtensions
{
  v4 = a3;
  pathExtension = [self pathExtension];
  v6 = pathExtension;
  if (pathExtension)
  {
    v7 = pathExtension;
  }

  else
  {
    v7 = &stru_286278F70;
  }

  v8 = v7;

  pathExtension2 = [v4 pathExtension];

  if (pathExtension2)
  {
    v10 = pathExtension2;
  }

  else
  {
    v10 = &stru_286278F70;
  }

  v11 = v10;

  if ([(__CFString *)v11 caseInsensitiveCompare:v8])
  {
    selfCopy = [self stringByDeletingPathExtension];
    if ([(__CFString *)v11 length])
    {
      v13 = [selfCopy stringByAppendingPathExtension:v11];

      selfCopy = v13;
    }
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (void)gs_issueExtension:()GSExtensions error:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 136315394;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_24FD46000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] Issued [%s] extension to <%@>", &v3, 0x16u);
}

- (void)gs_issueExtension:()GSExtensions error:.cold.2(uint64_t a1, int __errnum, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = 138412802;
  v5 = a1;
  v6 = 1024;
  v7 = __errnum;
  v8 = 2080;
  v9 = strerror(__errnum);
  _os_log_debug_impl(&dword_24FD46000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] %@; error %d (%s)", &v4, 0x1Cu);
}

@end