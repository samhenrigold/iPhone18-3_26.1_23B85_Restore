@interface INUIExtensionHostContext
@end

@implementation INUIExtensionHostContext

void __64___INUIExtensionHostContext__errorHandlingExtensionContextProxy__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = *MEMORY[0x277CD38C8];
  if (os_log_type_enabled(*MEMORY[0x277CD38C8], OS_LOG_TYPE_ERROR))
  {
    v4 = 136315394;
    v5 = "[_INUIExtensionHostContext _errorHandlingExtensionContextProxy]_block_invoke";
    v6 = 2114;
    v7 = v2;
    _os_log_error_impl(&dword_22CA36000, v3, OS_LOG_TYPE_ERROR, "%s Unable to retrieve extension context: %{public}@", &v4, 0x16u);
  }
}

@end