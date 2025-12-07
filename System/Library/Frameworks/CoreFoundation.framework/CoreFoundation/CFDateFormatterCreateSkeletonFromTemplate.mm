@interface CFDateFormatterCreateSkeletonFromTemplate
@end

@implementation CFDateFormatterCreateSkeletonFromTemplate

void ___CFDateFormatterCreateSkeletonFromTemplate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = 2 * v4;
  if ((2 * v4) < 0x301)
  {
    if (v4 < 1)
    {
      v6 = 0;
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1, a2, a3);
      v6 = &v12[-4] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v6, v5);
    }
  }

  else
  {
    v6 = malloc_type_malloc(2 * v4, 0x1000040BDFB0063uLL);
  }

  if (!CFStringGetCharactersPtr(*(a1 + 48)))
  {
    v14.length = *(a1 + 40);
    v14.location = 0;
    CFStringGetCharacters(*(a1 + 48), v14, v6);
  }

  bzero(v12, 0x600uLL);
  HIDWORD(v11) = 0;
  Skeleton = __cficu_udatpg_getSkeleton();
  if (SHIDWORD(v11) <= 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v12, Skeleton);
  }

  else if (HIDWORD(v11) == 15)
  {
    v8 = malloc_type_calloc(Skeleton + 1, 2uLL, 0x1000040BDFB0063uLL);
    v9 = __cficu_udatpg_getSkeleton();
    if (SHIDWORD(v11) <= 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v8, v9);
    }

    else
    {
      v10 = *(a1 + 56);
      if (v10)
      {
        *v10 = HIDWORD(v11);
      }
    }

    free(v8);
  }

  else
  {
    **(a1 + 56) = HIDWORD(v11);
  }

  if (v5 >= 0x301)
  {
    free(v6);
  }
}

@end