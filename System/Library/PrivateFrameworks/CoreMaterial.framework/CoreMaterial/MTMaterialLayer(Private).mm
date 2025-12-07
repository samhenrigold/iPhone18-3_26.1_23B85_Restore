@interface MTMaterialLayer(Private)
@end

@implementation MTMaterialLayer(Private)

- (void)setContentReplacedWithSnapshot:()Private .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BF527000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to render server snapshot", &v2, 0xCu);
}

- (void)setContentReplacedWithSnapshot:()Private .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1BF527000, a2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create an IOSurface", &v2, 0xCu);
}

@end