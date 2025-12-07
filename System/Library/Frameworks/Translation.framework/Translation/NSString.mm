@interface NSString
@end

@implementation NSString

void __58__NSString_TranslationAdditions__lt_wordRangesWithLocale___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCAE60] valueWithRange:?];
  [v1 addObject:v2];
}

void __84__NSString_TranslationAdditions__lt_wordRangesWithoutOmittingPunctuationWithLocale___block_invoke(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v7 = a2;
  if (*MEMORY[0x277CD8988] == v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    goto LABEL_9;
  }

  if (![*(a1 + 32) count] || (*(*(*(a1 + 40) + 8) + 24) & 1) != 0 || *MEMORY[0x277CD8940] != v7)
  {
    goto LABEL_7;
  }

  v8 = [*(a1 + 32) lastObject];
  v9 = [v8 rangeValue];
  v11 = v10;

  v12 = [*(a1 + 32) removeLastObject];
  if (&v9[v11] == a3)
  {
    a4 += v11;
    a3 = v9;
LABEL_7:
    v14 = *(a1 + 32);
    v15 = [MEMORY[0x277CCAE60] valueWithRange:{a3, a4}];
    [v14 addObject:v15];

    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_9;
  }

  v16 = _LTOSLogTextAPI(v12, v13);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __84__NSString_TranslationAdditions__lt_wordRangesWithoutOmittingPunctuationWithLocale___block_invoke_cold_1(v16);
  }

LABEL_9:
}

@end