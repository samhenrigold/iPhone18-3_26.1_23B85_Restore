@interface NSIndexSetEnumerate
@end

@implementation NSIndexSetEnumerate

void *____NSIndexSetEnumerate_block_invoke(void *result, uint64_t a2)
{
  v2 = atomic_load((*(result[6] + 8) + 24));
  if ((v2 & 1) == 0)
  {
    v3 = result;
    v4 = result[9];
    v5 = result[8] + v4 * a2;
    v6 = v4 + v5 - 1;
    if (v6 >= result[10])
    {
      v7 = result[10];
    }

    else
    {
      v7 = v6;
    }

    result = __NSIndexSetChunkIterate(result[4], result[11], v5, v7, result[12], result[13], result[5], (*(result[7] + 8) + 24));
    atomic_store(result, (*(v3[6] + 8) + 24));
  }

  return result;
}

@end