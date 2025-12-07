@interface TPSPersonaUtilities
+ (void)_adoptPersonaForContainerLookupIfNeeded;
@end

@implementation TPSPersonaUtilities

+ (void)_adoptPersonaForContainerLookupIfNeeded
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1C00A7000, a2, OS_LOG_TYPE_ERROR, "Failed adopting persona with error: %@", &v2, 0xCu);
}

@end