@interface CIContext(CIDepthBlurEffect)
@end

@implementation CIContext(CIDepthBlurEffect)

- (void)depthBlurEffectFilterForImageData:()CIDepthBlurEffect options:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImageData:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Unable to extract disparity image data from data", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)depthBlurEffectFilterForImageData:()CIDepthBlurEffect options:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImageData:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Unable to read RGB image data from data", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)depthBlurEffectFilterForImageURL:()CIDepthBlurEffect options:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImageURL:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Unable to extract disparity image data from URL", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)depthBlurEffectFilterForImageURL:()CIDepthBlurEffect options:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImageURL:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s Unable to read RGB image data from URL", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)depthBlurEffectFilterForImage:()CIDepthBlurEffect disparityImage:portraitEffectsMatte:hairSemanticSegmentation:glassesMatte:gainMap:orientation:options:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:disparityImage:portraitEffectsMatte:hairSemanticSegmentation:glassesMatte:gainMap:orientation:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires a valid image orientation.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)depthBlurEffectFilterForImage:()CIDepthBlurEffect disparityImage:portraitEffectsMatte:hairSemanticSegmentation:glassesMatte:gainMap:orientation:options:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:disparityImage:portraitEffectsMatte:hairSemanticSegmentation:glassesMatte:gainMap:orientation:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires an image with a finite non-empty extent.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)depthBlurEffectFilterForImage:()CIDepthBlurEffect disparityImage:portraitEffectsMatte:hairSemanticSegmentation:glassesMatte:gainMap:orientation:options:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(CIDepthBlurEffect) depthBlurEffectFilterForImage:disparityImage:portraitEffectsMatte:hairSemanticSegmentation:glassesMatte:gainMap:orientation:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires an RGB image and a disparity image.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end