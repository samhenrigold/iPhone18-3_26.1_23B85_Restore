@interface NSValue(PXViewSpecDescriptor)
- (uint64_t)px_viewSpecDescriptorValue;
@end

@implementation NSValue(PXViewSpecDescriptor)

- (uint64_t)px_viewSpecDescriptorValue
{
  *a2 = 0u;
  a2[1] = 0u;
  return [self getValue:a2];
}

@end