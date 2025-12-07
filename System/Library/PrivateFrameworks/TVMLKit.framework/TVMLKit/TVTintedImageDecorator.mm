@interface TVTintedImageDecorator
@end

@implementation TVTintedImageDecorator

void *__51___TVTintedImageDecorator_drawInContext_imageRect___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 doubleValue];
  *(*(a1 + 32) + 8 * a3) = v6;
  return result;
}

@end