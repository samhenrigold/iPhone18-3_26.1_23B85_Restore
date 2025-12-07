@interface NSString
@end

@implementation NSString

uint64_t __62__NSString_WLKAdditions__wlk_stringByAppendingPathComponents___block_invoke()
{
  v0 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/"];
  v1 = wlk_stringByAppendingPathComponents___slash;
  wlk_stringByAppendingPathComponents___slash = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end