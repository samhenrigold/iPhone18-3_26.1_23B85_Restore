@interface _EARQuasarTokenizer
@end

@implementation _EARQuasarTokenizer

+ (void)tokenizerWithModelRoot:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_14(&dword_1B501D000, a2, a3, "Found NCS model at %@.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)tokenizerWithModelRoot:(uint64_t)a3 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_14(&dword_1B501D000, a2, a3, "Found Tennessee model at %@.", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)tokenizerWithModelRoot:(uint64_t)a3 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_14(&dword_1B501D000, a2, a3, "Unable to find TN model within %@, falling back to BasicTokenizer.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end