@interface NSValue(PXMemoryFontsSpecIdentifier)
- (uint64_t)px_memoryFontsSpecIdentifierValue;
@end

@implementation NSValue(PXMemoryFontsSpecIdentifier)

- (uint64_t)px_memoryFontsSpecIdentifierValue
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return [self getValue:a2];
}

@end