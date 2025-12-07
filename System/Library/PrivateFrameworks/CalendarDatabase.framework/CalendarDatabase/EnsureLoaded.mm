@interface EnsureLoaded
@end

@implementation EnsureLoaded

uint64_t ___EnsureLoaded_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  ID = CPRecordGetID();
  result = sqlite3_bind_int(v4, 1, ID);
  v7 = *(*(a1 + 32) + 48);
  if (v7)
  {
    v8 = *(a2 + 8);

    return sqlite3_bind_int(v8, 2, v7);
  }

  return result;
}

@end