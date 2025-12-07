@interface ATXSpotlightEvent(Initializers)
@end

@implementation ATXSpotlightEvent(Initializers)

+ (void)viewAppearedEventWithSFFeedback:()Initializers date:.cold.1(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 viewAppearEvent];
  OUTLINED_FUNCTION_0(&dword_1BF549000, v1, v2, "ATXSFL: invalid app viewAppearEvent of %lu", v3, v4, v5, v6, v7, DWORD2(v7));
}

+ (void)viewAppearedEventWithSFFeedback:()Initializers date:.cold.2(void *a1)
{
  LODWORD(v7) = 134217984;
  *(&v7 + 4) = [a1 viewAppearEvent];
  OUTLINED_FUNCTION_0(&dword_1BF549000, v1, v2, "ATXSFL: invalid action viewAppearEvent of %lu", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end