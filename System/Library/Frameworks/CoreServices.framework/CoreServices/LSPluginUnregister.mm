@interface LSPluginUnregister
@end

@implementation LSPluginUnregister

uint64_t ___LSPluginUnregister_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    v5 = result;
    [(_LSDatabase *)*(result + 32) store];
    _CSArrayRemoveValueAtIndex();
    [(_LSDatabase *)*(v5 + 32) store];
    result = _CSArrayGetCount();
    if (!result)
    {
      [(_LSDatabase *)*(v5 + 32) store];
      _CSArrayDispose();
      [(_LSDatabase *)*(v5 + 32) store];
      [(_LSDatabase *)*(v5 + 32) schema];
      result = _CSStoreWriteToUnit();
    }

    *a4 = 1;
  }

  return result;
}

void ___LSPluginUnregister_block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(*(a1 + 32));
  objc_autoreleasePoolPop(v2);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

@end