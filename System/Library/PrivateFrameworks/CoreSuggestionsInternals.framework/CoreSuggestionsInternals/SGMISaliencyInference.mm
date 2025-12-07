@interface SGMISaliencyInference
+ (id)evaluate:(id)evaluate enablePreFiltering:(BOOL)filtering config:(id)config error:(id *)error;
+ (id)read:(id)read fromStore:(id)store;
@end

@implementation SGMISaliencyInference

+ (id)read:(id)read fromStore:(id)store
{
  storeCopy = store;
  messageId = [read messageId];
  v7 = [storeCopy saliencyForMessageId:messageId];

  return v7;
}

+ (id)evaluate:(id)evaluate enablePreFiltering:(BOOL)filtering config:(id)config error:(id *)error
{
  filteringCopy = filtering;
  v30 = *MEMORY[0x277D85DE8];
  evaluateCopy = evaluate;
  mailMessage = [evaluateCopy mailMessage];
  if ([mailMessage isSent])
  {
    v11 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      messageId = [mailMessage messageId];
      v28 = 138412290;
      v29 = messageId;
      _os_log_impl(&dword_231E60000, v11, OS_LOG_TYPE_DEFAULT, "SGMISaliencyInference: Mail %@ is a sent mail", &v28, 0xCu);
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 1;
LABEL_16:
    *error = [v13 errorWithDomain:@"SGMIError" code:v14 userInfo:0];
LABEL_17:
    defaultSaliencyOnError = [evaluateCopy defaultSaliencyOnError];
    goto LABEL_18;
  }

  if (!config)
  {
    v19 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v28) = 0;
      _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGMISaliencyInference: Error - config shouldn't be nil when inferencing saliency", &v28, 2u);
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 2;
    goto LABEL_16;
  }

  store = [evaluateCopy store];
  areSubModelsEmpty = [store areSubModelsEmpty];

  if (areSubModelsEmpty)
  {
    v17 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      messageId2 = [mailMessage messageId];
      v28 = 138412290;
      v29 = messageId2;
      _os_log_impl(&dword_231E60000, v17, OS_LOG_TYPE_DEFAULT, "SGMISaliencyInference: No submodels for message ID: %@", &v28, 0xCu);
    }

    if (!error)
    {
      goto LABEL_17;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 3;
    goto LABEL_16;
  }

  if (filteringCopy && (v23 = [SGMISaliencyModel ruleBasedInferenceFor:evaluateCopy], v23 != 2))
  {
    v25 = v23;
    v26 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      messageId3 = [mailMessage messageId];
      v28 = 138412290;
      v29 = messageId3;
      _os_log_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEFAULT, "SGMISaliencyInference: rule based inference for message ID: %@", &v28, 0xCu);
    }

    defaultSaliencyOnError = [evaluateCopy defaultSaliencyOnOverrideFor:v25];
  }

  else
  {
    v24 = sgMailIntelligenceLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v28) = 0;
      _os_log_debug_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEBUG, "SGMISaliencyInference: Performing saliency inference for e-mail message.", &v28, 2u);
    }

    defaultSaliencyOnError = [SGMISaliencyModel saliencyForFeatureVector:evaluateCopy];
  }

LABEL_18:
  v21 = defaultSaliencyOnError;

  return v21;
}

@end