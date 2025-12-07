@interface FPItem(MDSimpleQueryEvaluator)
@end

@implementation FPItem(MDSimpleQueryEvaluator)

- (void)_coreSpotlightAttributeForKey:()MDSimpleQueryEvaluator .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Unhandled attribute named '%{public}@'", &v2, 0xCu);
}

@end