@interface CIFilter(Private)
@end

@implementation CIFilter(Private)

+ (void)_propertyArrayFromFilters:()Private inputImageExtent:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIFilter(Private) _propertyArrayFromFilters:inputImageExtent:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s warning: affine+crop region falls outside of image area, results may be wrong", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)_filterArrayFromProperties:()Private .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIFilter(Private) _filterArrayFromProperties:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s now returns nil.  Use _filterArrayFromProperties:inputImageExtent: instead", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end