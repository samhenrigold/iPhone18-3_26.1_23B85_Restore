@interface UTCopyDeclaredTypeIdentifiers
@end

@implementation UTCopyDeclaredTypeIdentifiers

void ___UTCopyDeclaredTypeIdentifiers_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [(_LSDatabase *)**(a1 + 40) store];
  v4 = _CSStringCopyCFString();
  if (v4)
  {
    [*(a1 + 32) addObject:v4];
  }
}

@end