@interface SILanguageModelGetDefaultModelWithContext
@end

@implementation SILanguageModelGetDefaultModelWithContext

const __CFDictionary *__SILanguageModelGetDefaultModelWithContext_block_invoke(uint64_t a1)
{
  result = SILanguageModelCreateWithOptions(0, *(a1 + 32));
  SILanguageModelGetDefaultModelWithContext::model = result;
  return result;
}

@end