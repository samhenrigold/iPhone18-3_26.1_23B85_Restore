@interface INParameterCombinationsWithDictionary
@end

@implementation INParameterCombinationsWithDictionary

uint64_t ___INParameterCombinationsWithDictionary_block_invoke()
{
  v0 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self.length > 0"];
  v1 = _INParameterCombinationsWithDictionary_predicate;
  _INParameterCombinationsWithDictionary_predicate = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end