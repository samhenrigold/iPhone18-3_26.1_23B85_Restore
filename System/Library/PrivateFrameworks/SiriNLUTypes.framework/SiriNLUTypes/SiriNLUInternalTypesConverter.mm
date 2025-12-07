@interface SiriNLUInternalTypesConverter
+ (id)convertToSubwordEmbeddingResponse:(id)response;
@end

@implementation SiriNLUInternalTypesConverter

+ (id)convertToSubwordEmbeddingResponse:(id)response
{
  v12 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  if (responseCopy)
  {
    v4 = objc_alloc_init(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse);
    subwordTokenChain = [responseCopy subwordTokenChain];
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)v4 setSubwordTokenChain:subwordTokenChain];

    subwordEmbeddingTensorOutputs = [responseCopy subwordEmbeddingTensorOutputs];
    firstObject = [subwordEmbeddingTensorOutputs firstObject];
    [(SIRINLUEXTERNALSUBWORD_EMBEDDINGSubwordEmbeddingResponse *)v4 setSubwordTokenEmbedding:firstObject];
  }

  else
  {
    v8 = loggerContext(1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 136315138;
      v11 = "+[SiriNLUInternalTypesConverter convertToSubwordEmbeddingResponse:]";
      _os_log_impl(&dword_1C8774000, v8, OS_LOG_TYPE_INFO, "%s [WARN]: Input EmbeddingResponse to convertToSubwordEmbeddingResponse function is nil, and therefore returning nil", &v10, 0xCu);
    }

    v4 = 0;
  }

  return v4;
}

@end