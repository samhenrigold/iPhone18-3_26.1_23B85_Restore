@interface MediaServiceConfiguration(AppSelection)
@end

@implementation MediaServiceConfiguration(AppSelection)

- (void)activeServiceApplicationInformationForSharedUserID:()AppSelection completionHandler:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MediaServiceConfiguration(AppSelection) activeServiceApplicationInformationForSharedUserID:completionHandler:]";
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getMediaServiceChoicesForSharedUser:()AppSelection completion:.cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MediaServiceConfiguration(AppSelection) getMediaServiceChoicesForSharedUser:completion:]";
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getMediaServiceChoicesForAllUsers:()AppSelection .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MediaServiceConfiguration(AppSelection) getMediaServiceChoicesForAllUsers:]";
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)getSupportedThirdPartyMediaServices:()AppSelection .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[MediaServiceConfiguration(AppSelection) getSupportedThirdPartyMediaServices:]";
  OUTLINED_FUNCTION_0(&dword_23986C000, a1, a3, "%s, nil completion handler", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end