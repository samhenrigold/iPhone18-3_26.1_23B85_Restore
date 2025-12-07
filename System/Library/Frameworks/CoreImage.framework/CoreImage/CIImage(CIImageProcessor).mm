@interface CIImage(CIImageProcessor)
@end

@implementation CIImage(CIImageProcessor)

- (void)imageWithExtent:()CIImageProcessor processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:.cold.1()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)imageWithExtent:()CIImageProcessor processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:.cold.2()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)imageWithExtent:()CIImageProcessor processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:.cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:inputFormat:outputFormat:options:roiCallback:processor:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s processor block must be provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)imageWithExtent:()CIImageProcessor processorDescription:argumentDigest:outputFormat:options:processor:.cold.1()
{
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)imageWithExtent:()CIImageProcessor processorDescription:argumentDigest:outputFormat:options:processor:.cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[CIImage(CIImageProcessor) imageWithExtent:processorDescription:argumentDigest:outputFormat:options:processor:]";
  OUTLINED_FUNCTION_2_1(&dword_19CC36000, a1, a3, "%{public}s processor block must be provided.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end