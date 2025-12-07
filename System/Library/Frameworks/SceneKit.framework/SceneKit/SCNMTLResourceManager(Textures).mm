@interface SCNMTLResourceManager(Textures)
@end

@implementation SCNMTLResourceManager(Textures)

- (void)newTextureUsingMTKTextureLoaderWithURL:()Textures options:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "loader";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)newTextureUsingMTKTextureLoaderWithURL:()Textures options:.cold.2(id *a1)
{
  [*a1 localizedDescription];
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v1, v2, "Error: Failed to load image with error %@", v3, v4, v5, v6);
}

- (void)_textureDescriptorFromImage:()Textures needsMipMap:textureOptions:.cold.1(uint64_t a1, uint64_t a2)
{
  C3DImageGetURL(a1, a2);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v2, v3, "Error: Cannot load image %@. Using dummy texture.", v4, v5, v6, v7);
}

- (void)_copyImage:()Textures toTexture:desc:textureOptions:needsMipMapGeneration:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "loadedMipMapCount <= desc.mipmapLevelCount";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Too many mip level loaded", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_copyImage:()Textures toTexture:desc:textureOptions:needsMipMapGeneration:.cold.3(uint64_t a1, uint64_t a2)
{
  C3DImageGetURL(a1, a2);
  OUTLINED_FUNCTION_2_7();
  OUTLINED_FUNCTION_1_7(&dword_21BEF7000, v2, v3, "Error: Cannot load image %@. Texture will be garbage.", v4, v5, v6, v7);
}

- (void)renderResourceForImageProxy:()Textures sampler:engineContext:didFallbackToDefaultTexture:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "sourceImage";
  OUTLINED_FUNCTION_0(&dword_21BEF7000, a1, a3, "Assertion '%s' failed. Null argument", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)renderResourceForImage:()Textures sampler:options:engineContext:didFallbackToDefaultTexture:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_7();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_21BEF7000, v1, OS_LOG_TYPE_ERROR, "Error: Failed to load texture named %@ : %@", v2, 0x16u);
}

@end