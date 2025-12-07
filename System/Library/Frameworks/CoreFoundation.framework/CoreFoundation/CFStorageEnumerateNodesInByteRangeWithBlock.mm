@interface CFStorageEnumerateNodesInByteRangeWithBlock
@end

@implementation CFStorageEnumerateNodesInByteRangeWithBlock

uint64_t ____CFStorageEnumerateNodesInByteRangeWithBlock_block_invoke(uint64_t result, uint64_t a2)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    v3 = (*(result + 48) + 16 * a2);
    v4 = v3[1];
    if (v4 >= 1)
    {
      v5 = *(*(result + 80) + 8 * a2);
      result = __CFStorageEnumerateNodesInByteRangeWithBlock(*(result + 56), *(*(result + 64) + 8 * a2), v5 + *(result + 72), *v3 - v5, v4, *(result + 88), *(result + 32));
      if (result)
      {
        *(*(*(v2 + 40) + 8) + 24) = 1;
      }
    }
  }

  return result;
}

@end