@interface ICLexiconUtilities
@end

@implementation ICLexiconUtilities

void __54___ICLexiconUtilities_lexiconContainsEntry_forString___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = LXEntryCopyString();
  if (CFStringCompare(v5, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  CFRelease(v5);
}

void __52___ICLexiconUtilities_sortKeyEquivalents_forString___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = LXEntryCopyString();
  [*(a1 + 32) addObject:v3];

  CFRelease(v3);
}

void __43___ICLexiconUtilities_copyEntry_forString___block_invoke(uint64_t a1, const void *a2, _BYTE *a3)
{
  v6 = LXEntryCopyString();
  if (CFStringCompare(v6, *(a1 + 40), 0) == kCFCompareEqualTo)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFRetain(a2);
    *a3 = 1;
  }

  CFRelease(v6);
}

@end