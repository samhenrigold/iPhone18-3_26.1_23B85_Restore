@interface CDMEmbeddingProtoResponseCommand
- (CDMEmbeddingProtoResponseCommand)initWithCoder:(id)coder;
- (CDMEmbeddingProtoResponseCommand)initWithResponse:(id)response embeddingConfigs:(id)configs;
- (id)description;
- (id)dictionaryRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDMEmbeddingProtoResponseCommand

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CDMEmbeddingProtoResponseCommand;
  coderCopy = coder;
  [(CDMBaseCommand *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_response forKey:{@"response", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_embeddingConfigs forKey:@"embeddingConfigs"];
}

- (CDMEmbeddingProtoResponseCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CDMEmbeddingProtoResponseCommand;
  v5 = [(CDMBaseCommand *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"response"];
    response = v5->_response;
    v5->_response = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"embeddingConfigs"];
    embeddingConfigs = v5->_embeddingConfigs;
    v5->_embeddingConfigs = v8;
  }

  return v5;
}

- (id)description
{
  dictionaryRepresentation = [(CDMEmbeddingProtoResponseCommand *)self dictionaryRepresentation];
  v3 = [dictionaryRepresentation description];

  return v3;
}

- (id)dictionaryRepresentation
{
  selfCopy = self;
  v32 = *MEMORY[0x1E69E9840];
  v3 = 24;
  embeddingTensorOutputs = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)self->_response embeddingTensorOutputs];
  if (embeddingTensorOutputs && (v5 = embeddingTensorOutputs, -[SIRINLUINTERNALEMBEDDINGEmbeddingResponse embeddingTensorOutputs](selfCopy->_response, "embeddingTensorOutputs"), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 count], v6, v5, v7))
  {
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    embeddingTensorOutputs2 = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)selfCopy->_response embeddingTensorOutputs];
    v23 = [v8 initWithCapacity:{objc_msgSend(embeddingTensorOutputs2, "count")}];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    obj = [(SIRINLUINTERNALEMBEDDINGEmbeddingResponse *)selfCopy->_response embeddingTensorOutputs];
    v24 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (v24)
    {
      v22 = *v26;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v26 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v25 + 1) + 8 * i);
          v29[0] = @"numTokens";
          v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(*(&selfCopy->super.super.isa + v3), "numToken")}];
          v30[0] = v12;
          v29[1] = @"embeddingDim";
          v13 = v3;
          v14 = selfCopy;
          v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{objc_msgSend(v11, "embeddingDim")}];
          v30[1] = v15;
          v29[2] = @"isStableModel";
          v16 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isStableEmbeddingsVersion")}];
          v30[2] = v16;
          v29[3] = @"embeddingVersion";
          embeddingVersion = [v11 embeddingVersion];
          v30[3] = embeddingVersion;
          v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:4];
          embeddingVersion2 = [v11 embeddingVersion];
          [v23 setObject:v18 forKeyedSubscript:embeddingVersion2];

          selfCopy = v14;
          v3 = v13;
        }

        v24 = [obj countByEnumeratingWithState:&v25 objects:v31 count:16];
      }

      while (v24);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (CDMEmbeddingProtoResponseCommand)initWithResponse:(id)response embeddingConfigs:(id)configs
{
  responseCopy = response;
  configsCopy = configs;
  v12.receiver = self;
  v12.super_class = CDMEmbeddingProtoResponseCommand;
  v9 = [(CDMBaseCommand *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, response);
    objc_storeStrong(&v10->_embeddingConfigs, configs);
  }

  return v10;
}

@end