@interface ISIcon(LIIconVariant)
@end

@implementation ISIcon(LIIconVariant)

+ (void)variantInfoForSet:()LIIconVariant count:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Unknown variant set %d", v2, 8u);
}

@end