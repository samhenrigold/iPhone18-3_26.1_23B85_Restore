@interface SLInteractionHandler
- (SLInteractionHandler)initWithAppIdentifier:(id)identifier;
- (id)applicationIdentifier;
- (id)fetchAttributionForAttributionIdentifier:(id)identifier;
- (id)fetchInteractionsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant error:(id *)error;
- (void)applicationIdentifier;
- (void)dealloc;
- (void)feedbackForHighlightIdentifier:(id)identifier withType:(unint64_t)type variant:(id)variant completionBlock:(id)block;
@end

@implementation SLInteractionHandler

- (id)applicationIdentifier
{
  v2 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v2)
  {
    v3 = v2;
    error = 0;
    v4 = SecTaskCopyValueForEntitlement(v2, @"application-identifier", &error);
    if (v4 || (v4 = SecTaskCopyValueForEntitlement(v3, @"com.apple.application-identifier", &error)) != 0)
    {
      v5 = v4;
    }

    else
    {
      v7 = SLFrameworkLogHandle(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SLInteractionHandler *)&error applicationIdentifier];
      }

      v5 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SLInteractionHandler)initWithAppIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SLInteractionHandler;
  v6 = [(SLInteractionHandler *)&v15 init];
  if (v6)
  {
    v7 = [identifierCopy length];
    if (v7)
    {
      objc_storeStrong(&v6->_appIdentifier, identifier);
    }

    v9 = SLIsRunningInDaemon(v7, v8);
    if (v9 & 1) != 0 || (v9 = SLIsRunningInSLTester(), (v9) || (v9 = SLIsRunningInGelatoTester(), (v9) || (v9 = [identifierCopy length]) != 0)
    {
      v10 = SLDaemonLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        [(SLInteractionHandler *)v6 initWithAppIdentifier:v10];
      }
    }

    else
    {
      applicationIdentifier = [(SLInteractionHandler *)v6 applicationIdentifier];
      v10 = applicationIdentifier;
      if (applicationIdentifier)
      {
        v13 = applicationIdentifier;
        appIdentifier = v6->_appIdentifier;
        v6->_appIdentifier = v13;
      }

      else
      {
        appIdentifier = SLFrameworkLogHandle(0);
        if (os_log_type_enabled(appIdentifier, OS_LOG_TYPE_ERROR))
        {
          [SLInteractionHandler initWithAppIdentifier:?];
        }
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SLInteractionHandler;
  [(SLInteractionHandler *)&v2 dealloc];
}

- (id)fetchInteractionsWithLimit:(unint64_t)limit reason:(id)reason variant:(id)variant error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  variantCopy = variant;
  reasonCopy = reason;
  v12 = SLFrameworkLogHandle(reasonCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    appIdentifier = self->_appIdentifier;
    *buf = 134218242;
    limitCopy = limit;
    v27 = 2112;
    v28 = appIdentifier;
    _os_log_impl(&dword_231772000, v12, OS_LOG_TYPE_INFO, "Fetching %lu interactions for application Identifier: %@", buf, 0x16u);
  }

  v14 = objc_opt_new();
  v15 = objc_opt_new();
  if (self->_appIdentifier)
  {
    v16 = self->_appIdentifier;
  }

  else
  {
    v16 = &stru_28468DAB8;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke;
  v23[3] = &unk_278927448;
  v17 = v14;
  v24 = v17;
  [v15 iterRankedHighlightsWithLimit:limit client:v16 variant:variantCopy reason:reasonCopy error:error block:v23];

  v19 = SLFrameworkLogHandle(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [v17 count];
    *buf = 134217984;
    limitCopy = v20;
    _os_log_impl(&dword_231772000, v19, OS_LOG_TYPE_INFO, "Obtained %lu results from PersonalizationPortrait", buf, 0xCu);
  }

  if (![v17 count])
  {
    v21 = SLFrameworkLogHandle(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [SLInteractionHandler fetchInteractionsWithLimit:error reason:? variant:? error:?];
    }
  }

  return v17;
}

void __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  NSClassFromString(&cfstr_Ppsocialcollab.isa);
  if (objc_opt_isKindOfClass())
  {
    v10 = 0;
    v4 = [[SLCollaborationHighlight alloc] initWithPortraitCollaborationHighlight:v3 error:&v10];
    v5 = v10;
    v6 = v5;
    if (!v4)
    {
      v7 = SLFrameworkLogHandle(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_2(v6);
      }

LABEL_9:

      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
    v4 = [[SLHighlight alloc] initWithPortraitHighlight:v3 error:&v9];
    v8 = v9;
    v6 = v8;
    if (!v4)
    {
      v7 = SLFrameworkLogHandle(v8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_1(v6);
      }

      goto LABEL_9;
    }
  }

  [*(a1 + 32) addObject:v4];
LABEL_10:
}

- (id)fetchAttributionForAttributionIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v4 = SLFrameworkLogHandle(identifierCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v17 = identifierCopy;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "Fetching Attribution info for Attribution with Identifier %@ ", buf, 0xCu);
  }

  v5 = objc_opt_new();
  v15 = 0;
  v6 = [v5 attributionForIdentifier:identifierCopy error:&v15];
  v7 = v15;
  v8 = v7;
  if (v6)
  {
    v14 = v7;
    v9 = [[SLAttribution alloc] initWithPortraitAttribution:v6 error:&v14];
    v10 = v14;

    if (v9)
    {
      goto LABEL_11;
    }

    v12 = SLFrameworkLogHandle(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SLInteractionHandler fetchAttributionForAttributionIdentifier:v10];
    }

    v8 = v10;
  }

  else
  {
    v12 = SLFrameworkLogHandle(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [SLInteractionHandler fetchAttributionForAttributionIdentifier:v8];
    }
  }

  v9 = 0;
  v10 = v8;
LABEL_11:

  return v9;
}

- (void)feedbackForHighlightIdentifier:(id)identifier withType:(unint64_t)type variant:(id)variant completionBlock:(id)block
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  variantCopy = variant;
  blockCopy = block;
  v13 = SLFrameworkLogHandle(blockCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    appIdentifier = self->_appIdentifier;
    v17 = 138413058;
    v18 = identifierCopy;
    v19 = 2048;
    typeCopy = type;
    v21 = 2112;
    v22 = appIdentifier;
    v23 = 2112;
    v24 = variantCopy;
    _os_log_impl(&dword_231772000, v13, OS_LOG_TYPE_INFO, "Feedback for highlight with identifier %@ of type %lu for application identifier: %@ variant: %@", &v17, 0x2Au);
  }

  if (type - 1 > 5)
  {
    v15 = 0;
  }

  else
  {
    v15 = qword_23183D060[type - 1];
  }

  v16 = objc_opt_new();
  [v16 feedbackForHighlightIdentifier:identifierCopy type:v15 client:self->_appIdentifier variant:variantCopy completion:blockCopy];
}

- (void)initWithAppIdentifier:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 8);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_231772000, a2, OS_LOG_TYPE_DEBUG, "SLInteractionHandler init from daemon with app ID: %@", &v3, 0xCu);
}

- (void)applicationIdentifier
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *self;
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_231772000, a2, OS_LOG_TYPE_ERROR, "SLInteractionHandler failed to generate an application identifier. Error: %@", &v3, 0xCu);
}

- (void)fetchInteractionsWithLimit:(id *)a1 reason:variant:error:.cold.1(id *a1)
{
  v1 = [*a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __72__SLInteractionHandler_fetchInteractionsWithLimit_reason_variant_error___block_invoke_cold_2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)fetchAttributionForAttributionIdentifier:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 localizedDescription];
  v8 = [a1 localizedFailureReason];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)fetchAttributionForAttributionIdentifier:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end