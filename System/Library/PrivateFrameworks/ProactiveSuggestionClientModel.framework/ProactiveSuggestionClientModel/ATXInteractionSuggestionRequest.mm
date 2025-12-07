@interface ATXInteractionSuggestionRequest
- (ATXInteractionSuggestionRequest)initWithCoder:(id)coder;
- (ATXInteractionSuggestionRequest)initWithOriginatorId:(id)id consumerSubType:(unsigned __int8)type psPredictionContext:(id)context timeout:(double)timeout;
- (ATXInteractionSuggestionRequest)initWithProto:(id)proto;
- (ATXInteractionSuggestionRequest)initWithProtoData:(id)data;
- (ATXInteractionSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type psPredictionContext:(id)context timeout:(double)timeout;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)archivePredictionContext;
- (id)encodeAsProto;
- (id)proto;
- (void)archivePredictionContext;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXInteractionSuggestionRequest

- (id)encodeAsProto
{
  proto = [(ATXInteractionSuggestionRequest *)self proto];
  data = [proto data];

  return data;
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

  archivePredictionContext = [(ATXInteractionSuggestionRequest *)self archivePredictionContext];
  [v3 setPsPredictionContext:archivePredictionContext];

  [(ATXSuggestionRequest *)self timeout];
  [v3 setTimeout:?];

  return v3;
}

- (id)archivePredictionContext
{
  if (self->_psPredictionContext)
  {
    v3 = objc_autoreleasePoolPush();
    psPredictionContext = self->_psPredictionContext;
    v11 = 0;
    v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:psPredictionContext requiringSecureCoding:1 error:&v11];
    v6 = v11;
    objc_autoreleasePoolPop(v3);
    if (v6)
    {
      v8 = __atxlog_handle_blending(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        [(ATXInteractionSuggestionRequest *)v6 archivePredictionContext];
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

- (ATXInteractionSuggestionRequest)initWithOriginatorId:(id)id consumerSubType:(unsigned __int8)type psPredictionContext:(id)context timeout:(double)timeout
{
  typeCopy = type;
  contextCopy = context;
  idCopy = id;
  v12 = objc_opt_new();
  v13 = [(ATXInteractionSuggestionRequest *)self initWithUUID:v12 originatorId:idCopy consumerSubType:typeCopy psPredictionContext:contextCopy timeout:timeout];

  return v13;
}

- (ATXInteractionSuggestionRequest)initWithUUID:(id)d originatorId:(id)id consumerSubType:(unsigned __int8)type psPredictionContext:(id)context timeout:(double)timeout
{
  typeCopy = type;
  contextCopy = context;
  v17.receiver = self;
  v17.super_class = ATXInteractionSuggestionRequest;
  v14 = [(ATXSuggestionRequest *)&v17 initWithUUID:d originatorId:id consumerSubType:typeCopy timeout:timeout];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_psPredictionContext, context);
  }

  return v15;
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
        v12 = self->_psPredictionContext;
        v13 = v12;
        if (v12 == v5->_psPredictionContext)
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
  encodeAsProto = [(ATXInteractionSuggestionRequest *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXInteractionSuggestionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXInteractionSuggestionRequest *)self initWithProtoData:v5];
  return v6;
}

- (ATXInteractionSuggestionRequest)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBRequestForInteractionSuggestions alloc] initWithData:dataCopy];

    self = [(ATXInteractionSuggestionRequest *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXInteractionSuggestionRequest)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v6 = protoCopy;
      consumerSubTypeString = [v6 consumerSubTypeString];
      v28 = 0;
      v8 = [MEMORY[0x1E698B028] consumerSubtypeForString:consumerSubTypeString found:&v28];
      if (v28 == 1)
      {
        v9 = v8;
        selfCopy = 0;
        if (v8 && v8 != 50)
        {
          uuidString = [v6 uuidString];
          originatorId = [v6 originatorId];
          if ([v6 hasPsPredictionContext])
          {
            psPredictionContext = [v6 psPredictionContext];
            v14 = NSClassFromString(&cfstr_Pspredictionco_0.isa);
            if (v14)
            {
              v15 = objc_autoreleasePoolPush();
              v24 = MEMORY[0x1E696ACD0];
              v25 = v15;
              v16 = objc_autoreleasePoolPush();
              v26 = uuidString;
              v17 = psPredictionContext;
              v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{v14, 0}];
              objc_autoreleasePoolPop(v16);
              v27 = 0;
              v14 = [v24 unarchivedObjectOfClasses:v18 fromData:v17 error:&v27];
              v19 = v27;

              psPredictionContext = v17;
              uuidString = v26;
              objc_autoreleasePoolPop(v25);
            }
          }

          else
          {
            v14 = 0;
          }

          v20 = 0.5;
          if ([v6 hasTimeout])
          {
            [v6 timeout];
            v20 = v21;
          }

          v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidString];
          self = [(ATXInteractionSuggestionRequest *)self initWithUUID:v22 originatorId:originatorId consumerSubType:v9 psPredictionContext:v14 timeout:v20];

          selfCopy = self;
        }
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      v6 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v6];
      }

      selfCopy = 0;
    }
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)archivePredictionContext
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "Error when archiving psPredictionContext in ATXInteractionSuggestionRequest. Error: %@", &v2, 0xCu);
}

@end