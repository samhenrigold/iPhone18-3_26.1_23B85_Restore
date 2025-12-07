@interface OSLogChunkStore
@end

@implementation OSLogChunkStore

BOOL __54___OSLogChunkStore_enumerateChunksInRange_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*(*(a1 + 32) + 8) == a2)
  {
    if (v3 != 4096 || *(a2 + 8) <= 0x27uLL)
    {
      return 0;
    }

    goto LABEL_37;
  }

  if (v3 > 24577)
  {
    if (v3 > 24586)
    {
      if (v3 > 24588)
      {
        if (v3 == 24589)
        {
          goto LABEL_37;
        }

        v4 = 24592;
      }

      else
      {
        if (v3 == 24587)
        {
          if ((*(a2 + 4) - 14) <= 3)
          {
            goto LABEL_37;
          }

          return 1;
        }

        v4 = 24588;
      }

      if (v3 != v4 || (*(a2 + 4) - 14) >= 4)
      {
        return 1;
      }

      goto LABEL_37;
    }

    if (v3 == 24578 || v3 == 24579)
    {
LABEL_29:
      if (!*(a2 + 4))
      {
        goto LABEL_37;
      }

      return 1;
    }

    v7 = 24580;
LABEL_28:
    if (v3 != v7)
    {
      return 1;
    }

    goto LABEL_29;
  }

  if (v3 <= 7423)
  {
    if (v3 != 4096 && v3 != 6912 && v3 != 7168)
    {
      return 1;
    }

    goto LABEL_37;
  }

  if (v3 >= 0x2000)
  {
    if (v3 == 0x2000)
    {
      goto LABEL_37;
    }

    v7 = 24577;
    goto LABEL_28;
  }

  if (v3 != 7424 && v3 != 7680)
  {
    return 1;
  }

LABEL_37:
  v8 = objc_autoreleasePoolPush();
  v9 = (*(*(a1 + 40) + 16))();
  objc_autoreleasePoolPop(v8);
  return v9 != 0;
}

@end