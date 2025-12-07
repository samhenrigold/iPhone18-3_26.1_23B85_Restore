@interface LTCombinedTranslationResult
@end

@implementation LTCombinedTranslationResult

void *__46___LTCombinedTranslationResult_translatedText__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [objc_opt_class() _translatedTextWithAttributesForResult:v2];

  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

void *__44___LTCombinedTranslationResult_romanization__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 translations];
  v3 = [v2 firstObject];
  v4 = [v3 romanization];

  if ([v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

@end