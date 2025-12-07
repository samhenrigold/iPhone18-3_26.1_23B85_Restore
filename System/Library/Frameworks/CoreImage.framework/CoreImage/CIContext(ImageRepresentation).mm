@interface CIContext(ImageRepresentation)
@end

@implementation CIContext(ImageRepresentation)

- (void)_addPortraitMatte:()ImageRepresentation session:imageHandle:options:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = @"kCIImageRepresentationPortraitEffectsMatteImage";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "Saving %{public}@ option requires a CIImage object.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_addPortraitMatte:()ImageRepresentation session:imageHandle:options:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = @"kCIImageRepresentationPortraitEffectsMatteImage";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "Saving %{public}@ option requires an image with a finite non-empty extent.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_addPortraitMatte:()ImageRepresentation session:imageHandle:options:.cold.3(int a1)
{
  FigErrorString(a1);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x20u);
}

- (void)_addGainMap:()ImageRepresentation session:imageHandle:containerFormat:options:orientation:.cold.3(int a1, int a2)
{
  FigErrorString(a2);
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
}

- (void)_addDepthMap:()ImageRepresentation session:imageHandle:options:.cold.1(int a1)
{
  FigErrorString(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.1(int a1)
{
  FigErrorString(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.2(int a1)
{
  FigErrorString(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.3(int a1)
{
  FigErrorString(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.4(int a1)
{
  FigErrorString(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s failed to create a PhotoCompressionSession.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s failed to render image.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.13(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s failed to create a CVPixelBuffer.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s unsupported colorspace.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_CMPhotoRepresentationOfImage:()ImageRepresentation depth:allowAlpha:containerFormat:colorSpace:options:error:.cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIContext(ImageRepresentation) _CMPhotoRepresentationOfImage:depth:allowAlpha:containerFormat:colorSpace:options:error:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s requires an image with a finite non-empty extent.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end