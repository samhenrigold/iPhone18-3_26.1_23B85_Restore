@interface SCNMTLResourceManager(PBR)
- (void)defaultLightingEnvironmentIrradianceTexture;
- (void)defaultLightingEnvironmentRadianceTexture;
@end

@implementation SCNMTLResourceManager(PBR)

- (void)defaultLightingEnvironmentIrradianceTexture
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_defaultLightingEnvironmentIrradianceTexture.pixelFormat == MTLPixelFormatRGBA16Float";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. Default irradiance texture is not valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)defaultLightingEnvironmentRadianceTexture
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_defaultLightingEnvironmentRadianceTexture.pixelFormat == MTLPixelFormatRGBA16Float";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, self, a3, "Assertion '%s' failed. Default radiance texture is not valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)irradianceTextureForPrecomputedLightingEnvironment:()PBR .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "irradianceTexture.textureType == MTLTextureTypeCube";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Pre-computed irradiance texture is not valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)irradianceTextureForPrecomputedLightingEnvironment:()PBR .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "irradianceTexture.pixelFormat == MTLPixelFormatRGBA16Float";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Pre-computed irradiance texture is not valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)radianceTextureForPrecomputedLightingEnvironment:()PBR .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "radianceTexture.textureType == MTLTextureTypeCube";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Pre-computed radiance texture is not valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)radianceTextureForPrecomputedLightingEnvironment:()PBR .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "radianceTexture.pixelFormat == MTLPixelFormatRGBA16Float";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Pre-computed radiance texture is not valid", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end