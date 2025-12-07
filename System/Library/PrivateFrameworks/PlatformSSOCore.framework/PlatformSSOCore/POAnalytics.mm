@interface POAnalytics
+ (void)analyticsForLoginConfiguration:(id)configuration;
+ (void)analyticsForLoginManager:(id)manager;
+ (void)analyticsForLoginType:(id)type result:(id)result;
+ (void)analyticsForRegistrationType:(id)type options:(int64_t)options result:(int64_t)result;
+ (void)analyticsForSetupAssistantLoginType:(id)type result:(id)result;
+ (void)analyticsForTempSessionLoginType:(id)type result:(id)result;
@end

@implementation POAnalytics

+ (void)analyticsForLoginConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v3 = configurationCopy;
  AnalyticsSendEventLazy();
}

id __46__POAnalytics_analyticsForLoginConfiguration___block_invoke(uint64_t a1)
{
  v34[11] = *MEMORY[0x277D85DE8];
  v33[0] = @"hasInvalidCredentialPredicate";
  v2 = MEMORY[0x277CCABB0];
  v32 = [*(a1 + 32) invalidCredentialPredicate];
  v31 = [v2 numberWithInt:{objc_msgSend(v32, "length") != 0}];
  v34[0] = v31;
  v33[1] = @"includePreviousRefreshTokenInLoginRequest";
  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(*(a1 + 32), "includePreviousRefreshTokenInLoginRequest")}];
  v34[1] = v30;
  v33[2] = @"kerberosTicketMappingsCount";
  v3 = MEMORY[0x277CCABB0];
  v29 = [*(a1 + 32) kerberosTicketMappings];
  v28 = [v3 numberWithUnsignedInteger:{objc_msgSend(v29, "count")}];
  v34[2] = v28;
  v33[3] = @"hasCustomNonceRequestValues";
  v4 = MEMORY[0x277CCABB0];
  v27 = [*(a1 + 32) customNonceRequestValues];
  v26 = [v4 numberWithInt:{objc_msgSend(v27, "count") != 0}];
  v34[3] = v26;
  v33[4] = @"hasCustomAssertionRequestHeaderClaims";
  v5 = MEMORY[0x277CCABB0];
  v25 = [*(a1 + 32) customAssertionRequestHeaderClaims];
  v24 = [v5 numberWithInt:{objc_msgSend(v25, "count") != 0}];
  v34[4] = v24;
  v33[5] = @"hasCustomAssertionRequestBodyClaims";
  v6 = MEMORY[0x277CCABB0];
  v23 = [*(a1 + 32) customAssertionRequestBodyClaims];
  v22 = [v6 numberWithInt:{objc_msgSend(v23, "count") != 0}];
  v34[5] = v22;
  v33[6] = @"hasCustomLoginRequestHeaderClaims";
  v7 = MEMORY[0x277CCABB0];
  v21 = [*(a1 + 32) customLoginRequestHeaderClaims];
  v8 = [v7 numberWithInt:{objc_msgSend(v21, "count") != 0}];
  v34[6] = v8;
  v33[7] = @"hasCustomLoginRequestBodyClaims";
  v9 = MEMORY[0x277CCABB0];
  v10 = [*(a1 + 32) customLoginRequestBodyClaims];
  v11 = [v9 numberWithInt:{objc_msgSend(v10, "count") != 0}];
  v34[7] = v11;
  v33[8] = @"hasCustomRefreshRequestHeaderClaims";
  v12 = MEMORY[0x277CCABB0];
  v13 = [*(a1 + 32) customRefreshRequestHeaderClaims];
  v14 = [v12 numberWithInt:{objc_msgSend(v13, "count") != 0}];
  v34[8] = v14;
  v33[9] = @"hasCustomRefreshRequestBodyClaims";
  v15 = MEMORY[0x277CCABB0];
  v16 = [*(a1 + 32) customRefreshRequestBodyClaims];
  v17 = [v15 numberWithInt:{objc_msgSend(v16, "count") != 0}];
  v34[9] = v17;
  v33[10] = @"federationType";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(*(a1 + 32), "federationType")}];
  v34[10] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:11];

  return v19;
}

+ (void)analyticsForLoginType:(id)type result:(id)result
{
  typeCopy = type;
  resultCopy = result;
  v5 = resultCopy;
  v6 = typeCopy;
  AnalyticsSendEventLazy();
}

id __44__POAnalytics_analyticsForLoginType_result___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v4[1] = @"result";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (void)analyticsForTempSessionLoginType:(id)type result:(id)result
{
  typeCopy = type;
  resultCopy = result;
  v5 = resultCopy;
  v6 = typeCopy;
  AnalyticsSendEventLazy();
}

id __55__POAnalytics_analyticsForTempSessionLoginType_result___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v4[1] = @"result";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (void)analyticsForSetupAssistantLoginType:(id)type result:(id)result
{
  typeCopy = type;
  resultCopy = result;
  v5 = resultCopy;
  v6 = typeCopy;
  AnalyticsSendEventLazy();
}

id __58__POAnalytics_analyticsForSetupAssistantLoginType_result___block_invoke(uint64_t a1)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"type";
  v4[1] = @"result";
  v1 = *(a1 + 40);
  v5[0] = *(a1 + 32);
  v5[1] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

id __66__POAnalytics_analyticsForPasswordChange_credentialNeeded_result___block_invoke(unsigned __int8 *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7[0] = @"shouldChangePassword";
  v2 = [MEMORY[0x277CCABB0] numberWithBool:a1[32]];
  v8[0] = v2;
  v7[1] = @"credentialNeeded";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:a1[33]];
  v8[1] = v3;
  v7[2] = @"result";
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a1[34]];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (void)analyticsForRegistrationType:(id)type options:(int64_t)options result:(int64_t)result
{
  typeCopy = type;
  v5 = typeCopy;
  AnalyticsSendEventLazy();
}

id __59__POAnalytics_analyticsForRegistrationType_options_result___block_invoke(void *a1)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v2 = a1[5];
  v8[0] = a1[4];
  v7[0] = @"type";
  v7[1] = @"options";
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:v2];
  v8[1] = v3;
  v7[2] = @"result";
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a1[6]];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];

  return v5;
}

+ (void)analyticsForLoginManager:(id)manager
{
  managerCopy = manager;
  v3 = managerCopy;
  AnalyticsSendEventLazy();
}

id __53__POAnalytics_analyticsForDeviceRegistrationInBuddy___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"beforeEnrollment";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

id __51__POAnalytics_analyticsForUserRegistrationInBuddy___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v4 = @"postSessionChange";
  v1 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 32)];
  v5[0] = v1;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

@end