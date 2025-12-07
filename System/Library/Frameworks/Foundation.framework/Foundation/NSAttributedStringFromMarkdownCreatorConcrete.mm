@interface NSAttributedStringFromMarkdownCreatorConcrete
@end

@implementation NSAttributedStringFromMarkdownCreatorConcrete

void *__81___NSAttributedStringFromMarkdownCreatorConcrete_finalizeWithLanguageIdentifier___block_invoke(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return [*(result[4] + 8) addAttribute:@"NSLanguage" value:result[5] range:{a3, a4}];
  }

  return result;
}

@end