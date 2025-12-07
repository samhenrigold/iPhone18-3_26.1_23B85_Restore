@interface EKEvent(EKEvent_Shared)
@end

@implementation EKEvent(EKEvent_Shared)

- (void)setIsJunk:()EKEvent_Shared shouldSave:.cold.1(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = @"junk";
  if ((a1 & 1) == 0)
  {
    v3 = @"not junk";
  }

  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_1A805E000, log, OS_LOG_TYPE_ERROR, "Error saving event for reporting as %@. Error = %@", &v4, 0x16u);
}

@end