@interface ACPluginDBDirectory
@end

@implementation ACPluginDBDirectory

unsigned __int8 *__50___ACPluginDBDirectory_eventStreamCallback_flags___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  result = *(a1 + 32);
  if (*(v3 + 8) == *(result + 11))
  {
    [result bundlesChanged:*(result + 10) shouldRescan:result[96]];
    *(*(a1 + 32) + 88) = 0;
    *(*(a1 + 32) + 96) = 0;
    v4 = *(*(a1 + 32) + 80);

    return [v4 removeAllObjects];
  }

  return result;
}

@end