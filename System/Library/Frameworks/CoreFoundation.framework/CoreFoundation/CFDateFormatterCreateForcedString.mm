@interface CFDateFormatterCreateForcedString
@end

@implementation CFDateFormatterCreateForcedString

CFCharacterSetRef ____CFDateFormatterCreateForcedString_block_invoke()
{
  result = CFCharacterSetCreateWithCharactersInString(&__kCFAllocatorSystemDefault, @"hHkK");
  __CFDateFormatterCreateForcedString_hourCharacters = result;
  return result;
}

void ____CFDateFormatterCreateForcedString_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(*(a1 + 48));
  v6 = Length;
  v7 = 2 * Length;
  if ((2 * Length) < 0x101)
  {
    if (Length < 1)
    {
      v8 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](Length, v4, v5);
      v8 = &v11[-4] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v8, v7);
    }
  }

  else
  {
    v8 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
  }

  if (!CFStringGetCharactersPtr(*(a1 + 48)))
  {
    v13.location = 0;
    v13.length = v6;
    CFStringGetCharacters(*(a1 + 48), v13, v8);
  }

  HIDWORD(v10) = 0;
  *(*(*(a1 + 32) + 8) + 24) = uadatpg_remapPatternWithOptions();
  if (SHIDWORD(v10) <= 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v11, *(*(*(a1 + 32) + 8) + 24));
  }

  else if (HIDWORD(v10) == 15)
  {
    HIDWORD(v10) = 0;
    v9 = malloc_type_calloc(*(*(*(a1 + 32) + 8) + 24) + 1, 2uLL, 0x1000040BDFB0063uLL);
    *(*(*(a1 + 32) + 8) + 24) = uadatpg_remapPatternWithOptions();
    if (SHIDWORD(v10) <= 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v9, *(*(*(a1 + 32) + 8) + 24));
    }

    free(v9);
  }

  if (v7 >= 0x101)
  {
    free(v8);
  }
}

@end