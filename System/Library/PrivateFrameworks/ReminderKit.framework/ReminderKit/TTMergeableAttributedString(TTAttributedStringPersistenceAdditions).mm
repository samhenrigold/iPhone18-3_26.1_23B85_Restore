@interface TTMergeableAttributedString(TTAttributedStringPersistenceAdditions)
@end

@implementation TTMergeableAttributedString(TTAttributedStringPersistenceAdditions)

+ (void)saveAttributes:()TTAttributedStringPersistenceAdditions toArchive:.cold.1(int a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2[0] = 67109376;
  v2[1] = 4;
  v3 = 1024;
  v4 = a1;
  _os_log_fault_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_FAULT, "Incorrect number of color components for foreground color. Expected %d and got %d", v2, 0xEu);
}

@end