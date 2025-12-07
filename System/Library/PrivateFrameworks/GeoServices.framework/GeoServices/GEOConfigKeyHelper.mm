@interface GEOConfigKeyHelper
@end

@implementation GEOConfigKeyHelper

void __43___GEOConfigKeyHelper__lookupKeyProperties__block_invoke(uint64_t a1, void *a2, int a3)
{
  v4 = *&a3 & 0xFF0000;
  if ((*&a3 & 0xFF0000uLL) >= 0x80000)
  {
    if ((*&a3 & 0xFF0000) == 0x80000)
    {
      v5 = 8;
    }

    else
    {
      if (v4 != 983040)
      {
        goto LABEL_11;
      }

      v5 = 2;
    }
  }

  else if (v4 == 0x20000)
  {
    v5 = 6;
  }

  else
  {
    if (v4 != 0x40000)
    {
      goto LABEL_11;
    }

    v5 = 7;
  }

  *(*(a1 + 32) + 16) = v5;
LABEL_11:
  v9 = GEOConfig_splitKeyPathComponents(a2);
  v6 = [v9 firstObject];
  v7 = *(a1 + 32);
  v8 = *(v7 + 32);
  *(v7 + 32) = v6;
}

@end