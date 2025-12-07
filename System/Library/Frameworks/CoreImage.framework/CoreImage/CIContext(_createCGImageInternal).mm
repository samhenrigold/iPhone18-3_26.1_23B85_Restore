@interface CIContext(_createCGImageInternal)
@end

@implementation CIContext(_createCGImageInternal)

- (void)_createCGImage:()_createCGImageInternal fromRect:format:premultiplied:colorSpace:deferred:renderCallback:.cold.3(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136446210;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_19CC36000, log, OS_LOG_TYPE_ERROR, "Cannot create a CGImageProvider for %{public}s\n", buf, 0xCu);
}

- (void)_createCGImage:()_createCGImageInternal fromRect:format:premultiplied:colorSpace:deferred:renderCallback:.cold.4(int a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = CI::name_for_format(a1);
  OUTLINED_FUNCTION_0(&dword_19CC36000, v1, v2, "[CIContext createCGImage:fromRect:format:colorSpace:] format %{public}s is not supported on GLES.", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)_createCGImage:()_createCGImageInternal fromRect:format:premultiplied:colorSpace:deferred:renderCallback:.cold.5(int a1)
{
  LODWORD(v7) = 136446210;
  *(&v7 + 4) = CI::name_for_format(a1);
  OUTLINED_FUNCTION_0(&dword_19CC36000, v1, v2, "[CIContext createCGImage:fromRect:format:colorSpace:] unsupported format %{public}s.", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end