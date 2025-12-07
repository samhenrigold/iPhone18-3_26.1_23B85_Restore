@interface MDLogForCategoryDefault
@end

@implementation MDLogForCategoryDefault

os_log_t ___MDLogForCategoryDefault_block_invoke()
{
  result = os_log_create("com.apple.metadata.utilities", "default");
  _MDLogForCategoryDefault_log = result;
  return result;
}

@end