@interface _CDSpotlightItemUtils(UTI)
@end

@implementation _CDSpotlightItemUtils(UTI)

+ (void)getInteractionMechanismForContentUTI:()UTI typeTree:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_191750000, a2, OS_LOG_TYPE_ERROR, "Couldn't find matching content UTI: current: %@", &v2, 0xCu);
}

@end