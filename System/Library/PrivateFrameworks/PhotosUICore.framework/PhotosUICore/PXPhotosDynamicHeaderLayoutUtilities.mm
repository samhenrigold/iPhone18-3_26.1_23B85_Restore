@interface PXPhotosDynamicHeaderLayoutUtilities
+ (double)headerMinimumHeightForReferenceSize:(CGSize)size;
- (PXPhotosDynamicHeaderLayoutUtilities)init;
@end

@implementation PXPhotosDynamicHeaderLayoutUtilities

+ (double)headerMinimumHeightForReferenceSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5.n128_u64[1] = *(sub_1A43ACA40() + 1);
  v5.n128_f64[0] = height;
  PhotosDynamicHeaderSpec.headerHeight(for:)(width, v5);
  return result;
}

- (PXPhotosDynamicHeaderLayoutUtilities)init
{
  v3.receiver = self;
  v3.super_class = PXPhotosDynamicHeaderLayoutUtilities;
  return [(PXPhotosDynamicHeaderLayoutUtilities *)&v3 init];
}

@end