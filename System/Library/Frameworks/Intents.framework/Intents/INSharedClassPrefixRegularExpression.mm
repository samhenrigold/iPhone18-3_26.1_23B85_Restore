@interface INSharedClassPrefixRegularExpression
@end

@implementation INSharedClassPrefixRegularExpression

uint64_t ___INSharedClassPrefixRegularExpression_block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"^([a-zA-Z]+):" options:0 error:0];
  v1 = _INSharedClassPrefixRegularExpression_regularExpression;
  _INSharedClassPrefixRegularExpression_regularExpression = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end