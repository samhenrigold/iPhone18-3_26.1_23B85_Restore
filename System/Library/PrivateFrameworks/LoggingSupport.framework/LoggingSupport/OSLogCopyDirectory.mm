@interface OSLogCopyDirectory
@end

@implementation OSLogCopyDirectory

BOOL ___OSLogCopyDirectory_block_invoke(uint64_t a1, int a2, char *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  memset(&v13, 0, sizeof(v13));
  v5 = fstat(a2, &v13);
  result = 1;
  if (!v5 && v13.st_size)
  {
    if (*(a1 + 84) != 1 || strcmp(a3, "version.plist") && strcmp(a3, "logdata.statistics.0.db"))
    {
      v7 = *(a1 + 64);
      v8 = strrchr(a3, 47);
      if (v8)
      {
        v9 = v8 + 1;
      }

      else
      {
        v9 = a3;
      }

      snprintf(__str, 0x400uLL, "%s/%s", v7, v9);
      *(*(*(a1 + 48) + 8) + 24) = (*(*(a1 + 32) + 16))();
      if (*(*(*(a1 + 48) + 8) + 24))
      {
        if (fcntl(*(a1 + 80), 50, v14) == -1)
        {
          __error();
          _os_assumes_log();
        }

        v10 = *(a1 + 40);
        v11 = strerror(*(*(*(a1 + 48) + 8) + 24));
        _OSLogWarningMessage(v10, "copy handler failed: '%s' to '%s': %s (%d)", v14, __str, v11, *(*(*(a1 + 48) + 8) + 24));
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) += v13.st_size;
        v12 = *(a1 + 72);
        if (v12)
        {
          return *(*(*(a1 + 56) + 8) + 24) < v12;
        }
      }
    }

    return 1;
  }

  return result;
}

@end