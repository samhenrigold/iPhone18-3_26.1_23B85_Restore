@interface BRCFileSystemWrapper
+ (int)cloneFromURL:(id)l toURL:(id)rL error:(id *)error;
+ (int)openFileWithDirFd:(int)fd filename:(const char *)filename flags:(int)flags error:(id *)error;
@end

@implementation BRCFileSystemWrapper

+ (int)cloneFromURL:(id)l toURL:(id)rL error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  rLCopy = rL;
  path = [l path];
  path2 = [rLCopy path];

  v10 = BRCCloneAt(0xFFFFFFFFLL, path, 0xFFFFFFFFLL, path2);
  if (v10)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, 0x90u))
      {
        v16 = "(passed to caller)";
        v17 = 136315906;
        v18 = "+[BRCFileSystemWrapper cloneFromURL:toURL:error:]";
        v19 = 2080;
        if (!error)
        {
          v16 = "(ignored by caller)";
        }

        v20 = v16;
        v21 = 2112;
        v22 = br_errorFromErrno;
        v23 = 2112;
        v24 = v12;
        _os_log_error_impl(&dword_223E7A000, v13, 0x90u, "[ERROR] %s: %s error: %@%@", &v17, 0x2Au);
      }
    }

    if (error)
    {
      v14 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }
  }

  return v10;
}

+ (int)openFileWithDirFd:(int)fd filename:(const char *)filename flags:(int)flags error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = BRCOpenAt(*&fd, filename, flags, filename, *&flags, error, v6, v7, v16);
  if (v9 < 0)
  {
    br_errorFromErrno = [MEMORY[0x277CCA9B8] br_errorFromErrno];
    if (br_errorFromErrno)
    {
      v11 = brc_bread_crumbs();
      v12 = brc_default_log();
      if (os_log_type_enabled(v12, 0x90u))
      {
        v15 = "(passed to caller)";
        v16 = 136315906;
        v17 = "+[BRCFileSystemWrapper openFileWithDirFd:filename:flags:error:]";
        v18 = 2080;
        if (!error)
        {
          v15 = "(ignored by caller)";
        }

        v19 = v15;
        v20 = 2112;
        v21 = br_errorFromErrno;
        v22 = 2112;
        v23 = v11;
        _os_log_error_impl(&dword_223E7A000, v12, 0x90u, "[ERROR] %s: %s error: %@%@", &v16, 0x2Au);
      }
    }

    if (error)
    {
      v13 = br_errorFromErrno;
      *error = br_errorFromErrno;
    }
  }

  return v9;
}

@end