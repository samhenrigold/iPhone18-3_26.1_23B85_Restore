@interface PNCopyFullyQualifiedNumberForCountry
@end

@implementation PNCopyFullyQualifiedNumberForCountry

CFStringRef ___PNCopyFullyQualifiedNumberForCountry_block_invoke(uint64_t a1, const __CFString *a2)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  if (a2 && *(a1 + 40))
  {
    v13 = 0u;
    v14 = 0u;
    *cStr = 0u;
    v12 = 0u;
    v6 = _PNCopyNormalized(v3);
    if (_PNDecomposeForCountry(v6, *(a1 + 40), cStr, 1))
    {
      v7 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr[0], 0x8000100u);
      v9 = _PNCopyCountryCodeForInternationalCode(v7, v8);
      if (CFStringCompare(a2, v9, 1uLL))
      {
        v5 = 0;
      }

      else
      {
        v5 = _PNCopyAreaCodeForCountry(*(a1 + 32), a2);
      }

      CFRelease(v7);
      CFRelease(v9);
    }

    else
    {
      v5 = 0;
    }

    free(v6);
  }

  return v5;
}

@end