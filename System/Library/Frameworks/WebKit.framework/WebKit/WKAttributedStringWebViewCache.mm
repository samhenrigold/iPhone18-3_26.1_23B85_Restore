@interface WKAttributedStringWebViewCache
@end

@implementation WKAttributedStringWebViewCache

uint64_t __58___WKAttributedStringWebViewCache_retrieveOrCreateWebView__block_invoke(WTF::MemoryPressureHandler *a1)
{
  v2 = WTF::MemoryPressureHandler::singleton(a1);
  v3 = *(a1 + 4);
  v5 = WTF::fastMalloc(v4, 0x10);
  *v5 = &unk_1F10F4728;
  v5[1] = v3;
  result = *(v2 + 48);
  *(v2 + 48) = v5;
  if (result)
  {
    v7 = *(*result + 8);

    return v7();
  }

  return result;
}

@end