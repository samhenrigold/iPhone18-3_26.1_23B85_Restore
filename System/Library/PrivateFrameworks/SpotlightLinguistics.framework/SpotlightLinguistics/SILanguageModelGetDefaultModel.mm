@interface SILanguageModelGetDefaultModel
@end

@implementation SILanguageModelGetDefaultModel

const __CFDictionary *__SILanguageModelGetDefaultModel_block_invoke()
{
  result = SILanguageModelCreateWithOptions(0, 0);
  SILanguageModelGetDefaultModel::model = result;
  return result;
}

@end