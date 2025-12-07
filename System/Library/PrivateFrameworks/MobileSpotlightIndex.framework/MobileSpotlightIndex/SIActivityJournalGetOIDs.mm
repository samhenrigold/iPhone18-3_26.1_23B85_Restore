@interface SIActivityJournalGetOIDs
@end

@implementation SIActivityJournalGetOIDs

void ___SIActivityJournalGetOIDs_block_invoke(uint64_t a1, unsigned int *a2)
{
  v2 = *a2;
  if (v2 > 0x3D)
  {
    return;
  }

  if (((1 << v2) & 0x300FE000F0007800) != 0)
  {
    v5 = 1;
    goto LABEL_4;
  }

  if (((1 << v2) & 0x40000000060000) != 0)
  {
    v5 = 0;
LABEL_4:
    v6 = *(a2 + 3);
    if (v6)
    {
      Value = CFDictionaryGetValue(*(a1 + 40), HIDWORD(v6));
      if (!Value)
      {
        v8 = SIUINT64SetCreate(*MEMORY[0x1E695E480]);
        CFDictionarySetValue(*(a1 + 40), HIDWORD(v6), v8);
        CFRelease(v8);
        Value = CFDictionaryGetValue(*(a1 + 40), HIDWORD(v6));
      }

      if (v5 == *(a1 + 48))
      {

        SIUINT64SetRemoveValue(Value, v6);
      }

      else
      {
        v9 = (Value + 16);

        SIValueSet<unsigned long long>::SIValueSetInsert(v9, v6);
      }
    }

    return;
  }

  if (v2 == 23)
  {
    v10 = CFStringCreateWithCString(*MEMORY[0x1E695E480], *(a2 + 4), 0x8000100u);
    if (v10)
    {
      v11 = v10;
      if (!CFDictionaryGetValue(*(a1 + 32), a2[7]))
      {
        CFDictionarySetValue(*(a1 + 32), a2[7], v11);
      }

      CFRelease(v11);
    }
  }
}

@end