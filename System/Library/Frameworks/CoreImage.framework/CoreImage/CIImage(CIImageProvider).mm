@interface CIImage(CIImageProvider)
@end

@implementation CIImage(CIImageProvider)

- (void)initWithImageProvider:()CIImageProvider size::format:colorSpace:options:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) initWithImageProvider:size::format:colorSpace:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s provider does not implement provideImageData:bytesPerRow:origin::size::userInfo:.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s kCIImageProviderTileSize value is not a NSNumber, NSArray, CIVector, or NSNull.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s kCIImageProviderTileWidthArray value present but not an NSArray.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s kCIImageProviderTileHeightArray value present but not an NSArray.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s kCIImageProviderTileHeightArray is an NSArray but a non-NSNumber entry was found.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s kCIImageProviderTileHeightArray has an entry that is less than or equal to 0.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s kCIImageProviderTileWidthArray is an NSArray but a non-NSNumber entry was found.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s kCIImageProviderTileWidthArray has an entry that is less than or equal to 0.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_initWithImageProvider:()CIImageProvider :width:height:format:colorSpace:surfaceCache:options:.cold.9(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136446466;
  *&v8[4] = "[CIImage(CIImageProvider) _initWithImageProvider::width:height:format:colorSpace:surfaceCache:options:]";
  *&v8[12] = 2082;
  *&v8[14] = a1;
  OUTLINED_FUNCTION_1_5(&dword_19CC36000, a2, a3, "%{public}s format %{public}s is not supported.", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x1E69E9840]);
}

@end