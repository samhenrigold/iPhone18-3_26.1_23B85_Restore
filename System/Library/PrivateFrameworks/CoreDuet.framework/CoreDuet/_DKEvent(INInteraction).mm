@interface _DKEvent(INInteraction)
- (void)interaction;
@end

@implementation _DKEvent(INInteraction)

+ (void)relatedContactIdentifiersFromIntent:()INInteraction .cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_191750000, v1, OS_LOG_TYPE_DEBUG, "Found contact identifiers of %@ from intent: %@", v2, 0x16u);
}

- (void)interaction
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)fetchInteractionWithPopulatedKeyImage:()INInteraction .cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end