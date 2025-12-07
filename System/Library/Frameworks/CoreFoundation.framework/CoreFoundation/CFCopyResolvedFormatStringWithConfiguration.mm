@interface CFCopyResolvedFormatStringWithConfiguration
@end

@implementation CFCopyResolvedFormatStringWithConfiguration

const void *___CFCopyResolvedFormatStringWithConfiguration_block_invoke(uint64_t a1, CFDictionaryRef theDict, UniChar a3)
{
  v15[1] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(theDict);
  v7 = Count;
  v8 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (v15 - v8);
  if ((8 * Count) >= 0x200)
  {
    v10 = 512;
  }

  else
  {
    v10 = 8 * Count;
  }

  bzero(v15 - v8, v10);
  v11 = v15 - v8;
  bzero(v11, v10);
  CFDictionaryGetKeysAndValues(theDict, v9, v11);
  if (v7 < 1)
  {
    return CFDictionaryGetValue(theDict, @"default");
  }

  while (1)
  {
    v12 = *v9;
    if (CFStringCompare(*v9, @"default", 0))
    {
      Value = CFDictionaryGetValue(*(a1 + 32), v12);
      if (CFCharacterSetIsCharacterMember(Value, a3))
      {
        break;
      }
    }

    v11 += 8;
    ++v9;
    if (!--v7)
    {
      return CFDictionaryGetValue(theDict, @"default");
    }
  }

  return *v11;
}

Class ___CFCopyResolvedFormatStringWithConfiguration_block_invoke_2()
{
  __NSPersonNameComponentsClass = objc_lookUpClass("NSPersonNameComponents");
  result = objc_lookUpClass("NSPersonNameComponentsFormatter");
  __NSPersonNameComponentsFormatterClass = result;
  return result;
}

id ___CFCopyResolvedFormatStringWithConfiguration_block_invoke_3()
{
  result = objc_alloc_init(__NSPersonNameComponentsFormatterClass);
  _CFCopyResolvedFormatStringWithConfiguration_formatter = result;
  return result;
}

@end