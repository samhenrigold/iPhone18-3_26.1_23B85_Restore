@interface EXExtensionRequest(NSExtensionActiveWebPageAlternative)
@end

@implementation EXExtensionRequest(NSExtensionActiveWebPageAlternative)

- (void)applyActiveWebPageAlternativeIfNeededForExtension:()NSExtensionActiveWebPageAlternative .cold.2(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 inputItems];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "Applying active web page alternative to items: %@ matching rule %@", &v6, 0x16u);
}

@end