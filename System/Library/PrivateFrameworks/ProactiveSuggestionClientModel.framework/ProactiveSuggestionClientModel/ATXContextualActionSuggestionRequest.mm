@interface ATXContextualActionSuggestionRequest
- (ATXContextualActionSuggestionRequest)initWithCoder:(id)coder;
- (ATXContextualActionSuggestionRequest)initWithOriginatorId:(id)id consumerSubType:(unsigned __int8)type caxPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions timeout:(double)timeout;
- (ATXContextualActionSuggestionRequest)initWithProto:(id)proto;
- (ATXContextualActionSuggestionRequest)initWithProtoData:(id)data;
- (ATXContextualActionSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type caxPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions timeout:(double)timeout;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)archivePredictionContext;
- (id)encodeAsProto;
- (id)proto;
- (void)archivePredictionContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXContextualActionSuggestionRequest

- (ATXContextualActionSuggestionRequest)initWithOriginatorId:(id)id consumerSubType:(unsigned __int8)type caxPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions timeout:(double)timeout
{
  typeCopy = type;
  contextCopy = context;
  idCopy = id;
  v14 = objc_opt_new();
  v15 = [(ATXContextualActionSuggestionRequest *)self initWithUUID:v14 originatorId:idCopy consumerSubType:typeCopy caxPredictionContext:contextCopy maxSuggestions:suggestions timeout:timeout];

  return v15;
}

- (ATXContextualActionSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type caxPredictionContext:(id)context maxSuggestions:(unint64_t)suggestions timeout:(double)timeout
{
  typeCopy = type;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = ATXContextualActionSuggestionRequest;
  v16 = [(ATXSuggestionRequest *)&v19 initWithUUID:d originatorId:id consumerSubType:typeCopy timeout:timeout];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_caxPredictionContext, context);
    v17->_maxSuggestions = suggestions;
  }

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      requestUUID = [(ATXSuggestionRequest *)self requestUUID];
      requestUUID2 = [(ATXSuggestionRequest *)v5 requestUUID];
      v8 = [requestUUID isEqual:requestUUID2];

      if (v8 && (-[ATXSuggestionRequest originatorId](self, "originatorId"), v9 = objc_claimAutoreleasedReturnValue(), -[ATXSuggestionRequest originatorId](v5, "originatorId"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToString:v10], v10, v9, v11))
      {
        v12 = self->_caxPredictionContext;
        v13 = v12;
        if (v12 == v5->_caxPredictionContext)
        {
          v14 = 1;
        }

        else
        {
          v14 = [(ATXSuggestionExecutableProtocol *)v12 isEqual:?];
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code
{
  v22[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  coderCopy = coder;
  domainCopy = domain;
  if (!forid)
  {
    error = [coderCopy error];

    if (error)
    {
      v14 = 1;
      goto LABEL_7;
    }

    if (([coderCopy containsValueForKey:keyCopy] & 1) == 0)
    {
      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v21 = *MEMORY[0x1E696A578];
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to decode key %@", keyCopy, v21];
      v22[0] = v17;
      v14 = 1;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      v19 = [v16 initWithDomain:domainCopy code:code userInfo:v18];

      [coderCopy failWithError:v19];
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encodeAsProto = [(ATXContextualActionSuggestionRequest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXContextualActionSuggestionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXContextualActionSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXContextualActionSuggestionRequest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBRequestForContextualActionSuggestions alloc] initWithData:dataCopy];

    self = [(ATXContextualActionSuggestionRequest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXContextualActionSuggestionRequest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __atxlog_handle_contextual_actions(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v6];
      }

      selfCopy = 0;
      goto LABEL_25;
    }

    v6 = protoCopy;
    consumerSubTypeString = [v6 consumerSubTypeString];
    v33 = 0;
    v8 = [MEMORY[0x1E698B028] consumerSubtypeForString:consumerSubTypeString found:&v33];
    if (v33 != 1)
    {
      selfCopy = 0;
LABEL_24:

LABEL_25:
      goto LABEL_26;
    }

    v9 = v8;
    selfCopy = 0;
    if (!v8 || v8 == 50)
    {
      goto LABEL_24;
    }

    uuidString = [v6 uuidString];
    originatorId = [v6 originatorId];
    if (![v6 hasCaxPredictionContext])
    {
      v20 = 0;
LABEL_23:
      maxSuggestions = [v6 maxSuggestions];
      [v6 timeout];
      v26 = v25;
      v27 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidString];
      self = [(ATXContextualActionSuggestionRequest *)self initWithUUID:v27 originatorId:originatorId consumerSubType:v9 caxPredictionContext:v20 maxSuggestions:maxSuggestions timeout:v26];

      selfCopy = self;
      goto LABEL_24;
    }

    v31 = uuidString;
    caxPredictionContext = [v6 caxPredictionContext];
    v14 = NSClassFromString(&cfstr_Caxpredictionc_0.isa);
    if (v14)
    {
      v15 = v14;
      context = objc_autoreleasePoolPush();
      v16 = MEMORY[0x1E696ACD0];
      v30 = caxPredictionContext;
      v17 = objc_autoreleasePoolPush();
      v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v15, 0}];
      v19 = v17;
      caxPredictionContext = v30;
      objc_autoreleasePoolPop(v19);
      v32 = 0;
      v20 = [v16 unarchivedObjectOfClasses:v18 fromData:v30 error:&v32];
      v21 = v32;

      objc_autoreleasePoolPop(context);
      if (!v21)
      {
LABEL_22:

        uuidString = v31;
        goto LABEL_23;
      }

      v23 = __atxlog_handle_contextual_actions(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(ATXContextualActionSuggestionRequest *)v21 initWithProto:v23];
      }

      caxPredictionContext = v30;
    }

    else
    {
      v21 = __atxlog_handle_contextual_actions(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [ATXContextualActionSuggestionRequest initWithProto:v21];
      }

      v20 = 0;
    }

    goto LABEL_22;
  }

  selfCopy = 0;
LABEL_26:

  return selfCopy;
}

- (id)proto
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x1E698B028] stringForConsumerSubtype:{-[ATXSuggestionRequest consumerSubType](self, "consumerSubType")}];
  [v3 setConsumerSubTypeString:v4];

  originatorId = [(ATXSuggestionRequest *)self originatorId];
  [v3 setOriginatorId:originatorId];

  requestUUID = [(ATXSuggestionRequest *)self requestUUID];
  uUIDString = [requestUUID UUIDString];
  [v3 setUuidString:uUIDString];

  archivePredictionContext = [(ATXContextualActionSuggestionRequest *)self archivePredictionContext];
  [v3 setCaxPredictionContext:archivePredictionContext];

  [v3 setMaxSuggestions:LODWORD(self->_maxSuggestions)];
  [(ATXSuggestionRequest *)self timeout];
  [v3 setTimeout:?];

  return v3;
}

- (id)archivePredictionContext
{
  if (self->_caxPredictionContext)
  {
    v3 = objc_autoreleasePoolPush();
    caxPredictionContext = self->_caxPredictionContext;
    v11 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:caxPredictionContext requiringSecureCoding:1 error:&v11];
    v6 = v11;
    objc_autoreleasePoolPop(v3);
    if (v6)
    {
      v8 = __atxlog_handle_contextual_actions(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(ATXContextualActionSuggestionRequest *)v6 archivePredictionContext];
      }

      v9 = 0;
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)encodeAsProto
{
  proto = [(ATXContextualActionSuggestionRequest *)self proto];
  data = [proto data];

  return data;
}

- (void)initWithProto:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_ERROR, "Error when deserializing CAXPredictionContext: %@", &v2, 0xCu);
}

- (void)archivePredictionContext
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when archiving caxPredictionContext in ATXContextualActionSuggestionRequest. Error: %@", &v2, 0xCu);
}

@end