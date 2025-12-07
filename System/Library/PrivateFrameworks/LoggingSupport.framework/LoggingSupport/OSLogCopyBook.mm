@interface OSLogCopyBook
@end

@implementation OSLogCopyBook

BOOL ___OSLogCopyBook_block_invoke(uint64_t a1, uint64_t a2, char *__s)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = strrchr(__s, 46);
  if (!v6 || strcmp(v6, ".tracev3"))
  {
    return 1;
  }

  v8 = *(a1 + 88);
  v9 = strrchr(__s, 47);
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = __s;
  }

  snprintf(__str, 0x400uLL, "%s/%s", v8, v10);
  v11 = _OSLogCopyTraceFile(a2, __str, *(a1 + 96), *(a1 + 104), *(*(a1 + 64) + 8) + 24, *(a1 + 48), *(a1 + 56), *(a1 + 32), *(a1 + 40), *(a1 + 112));
  if (v11 < 1)
  {
    if (v11 < 0)
    {
      v12 = __error();
      result = 0;
      *(*(*(a1 + 80) + 8) + 24) = *v12;
      return result;
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) += v11;
  }

  return *(*(*(a1 + 72) + 8) + 24) < *(a1 + 120);
}

@end