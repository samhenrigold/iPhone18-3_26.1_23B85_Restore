@interface MDPlistBytesAppendMultiplePlistBytes
@end

@implementation MDPlistBytesAppendMultiplePlistBytes

void *___MDPlistBytesAppendMultiplePlistBytes_block_invoke(void *result, uint64_t a2)
{
  v2 = *(result[4] + 8 * a2);
  if (v2)
  {
    v3 = *(result[6] + 8 * a2);
    if (v3)
    {
      if (*(v3 + 32))
      {
        v3 = 0;
      }

      else
      {
        v3 = *(v3 + 8);
      }
    }

    v4 = *(result[5] + 8 * a2);

    return memcpy(v4, v3, v2);
  }

  return result;
}

@end