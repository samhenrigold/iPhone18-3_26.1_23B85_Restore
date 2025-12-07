@interface CFBundleSearchForLocalizedString
@end

@implementation CFBundleSearchForLocalizedString

void *___CFBundleSearchForLocalizedString_block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v11 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___CFBundleSearchForLocalizedString_block_invoke_2;
  v6[3] = &unk_1E6DD14D0;
  v9 = a2;
  v10 = a4;
  v4 = *(a1 + 32);
  v8 = *(a1 + 48);
  v7 = v4;
  return CFDictionaryApply(a3, v6);
}

uint64_t ___CFBundleSearchForLocalizedString_block_invoke_2(uint64_t a1, const void *a2, CFTypeRef cf1, _BYTE *a4)
{
  result = CFEqual(cf1, *(a1 + 40));
  if (result)
  {
    if (*(a1 + 48))
    {
      result = CFRetain(a2);
      **(a1 + 48) = result;
    }

    if (*(a1 + 56))
    {
      result = CFRetain(*(a1 + 64));
      **(a1 + 56) = result;
    }

    *a4 = 1;
    **(a1 + 72) = 1;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  return result;
}

@end