@interface REMMutableCRMergeableStringDocument(Hashtags)
@end

@implementation REMMutableCRMergeableStringDocument(Hashtags)

- (void)addHashtag:()Hashtags range:.cold.1(void *a1, NSUInteger a2, NSUInteger a3)
{
  v5 = [a1 replicaIDSource];
  v12.location = a2;
  v12.length = a3;
  v11 = NSStringFromRange(v12);
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);
}

@end