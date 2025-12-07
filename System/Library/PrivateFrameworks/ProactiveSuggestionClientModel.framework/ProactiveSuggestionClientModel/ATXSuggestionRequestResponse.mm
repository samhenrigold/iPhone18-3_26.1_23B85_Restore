@interface ATXSuggestionRequestResponse
- (ATXSuggestionRequestResponse)initWithCoder:(id)coder;
- (ATXSuggestionRequestResponse)initWithProto:(id)proto;
- (ATXSuggestionRequestResponse)initWithProtoData:(id)data;
- (ATXSuggestionRequestResponse)initWithSuggestions:(id)suggestions feedbackMetadata:(id)metadata originalRequest:(id)request responseCode:(int)code error:(id)error;
- (ATXSuggestionRequestResponse)initWithSuggestions:(id)suggestions feedbackMetadata:(id)metadata originalRequest:(id)request responseCode:(int)code error:(id)error uuid:(id)uuid;
- (BOOL)checkAndReportDecodingFailureIfNeededForid:(id)forid key:(id)key coder:(id)coder errorDomain:(id)domain errorCode:(int64_t)code;
- (BOOL)isEqual:(id)equal;
- (id)dataFromNSError:(id)error;
- (id)encodeAsProto;
- (id)proto;
- (id)unarchivedNSErrorFromData:(id)data;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXSuggestionRequestResponse

- (id)encodeAsProto
{
  proto = [(ATXSuggestionRequestResponse *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  [v3 setUuidString:uUIDString];

  v5 = [(NSArray *)self->_suggestions _pas_mappedArrayWithTransform:&__block_literal_global_29];
  v6 = [v5 mutableCopy];
  [v3 setSuggestions:v6];

  [v3 setFeedbackMetadata:self->_feedbackMetadata];
  v7 = self->_responseCode - 1;
  if (v7 > 4)
  {
    v8 = @"Unknown";
  }

  else
  {
    v8 = off_1E86A3DA0[v7];
  }

  if (([(__CFString *)v8 isEqualToString:@"Unknown"]& 1) != 0)
  {
    v9 = 0;
  }

  else if (([(__CFString *)v8 isEqualToString:@"FallbackToCache"]& 1) != 0)
  {
    v9 = 1;
  }

  else if (([(__CFString *)v8 isEqualToString:@"Success"]& 1) != 0)
  {
    v9 = 2;
  }

  else if (([(__CFString *)v8 isEqualToString:@"Error"]& 1) != 0)
  {
    v9 = 3;
  }

  else if (([(__CFString *)v8 isEqualToString:@"SuccessAndReplaceCache"]& 1) != 0)
  {
    v9 = 4;
  }

  else if ([(__CFString *)v8 isEqualToString:@"Max"])
  {
    v9 = 5;
  }

  else
  {
    v9 = 0;
  }

  [v3 setResponseCode:v9];
  if (self->_error)
  {
    v10 = [(ATXSuggestionRequestResponse *)self dataFromNSError:?];
    [v3 setErrorData:v10];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proto = [(ATXSuggestionRequest *)self->_originalRequest proto];
    [v3 setInteractionSuggestionRequest:proto];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      proto = [(ATXSuggestionRequest *)self->_originalRequest proto];
      [v3 setContextualActionSuggestionRequest:proto];
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_26;
      }

      proto = [(ATXSuggestionRequest *)self->_originalRequest proto];
      [v3 setIntentSuggestionRequest:proto];
    }
  }

LABEL_26:

  return v3;
}

- (ATXSuggestionRequestResponse)initWithSuggestions:(id)suggestions feedbackMetadata:(id)metadata originalRequest:(id)request responseCode:(int)code error:(id)error
{
  v7 = *&code;
  errorCopy = error;
  requestCopy = request;
  metadataCopy = metadata;
  suggestionsCopy = suggestions;
  v16 = objc_opt_new();
  v17 = [(ATXSuggestionRequestResponse *)self initWithSuggestions:suggestionsCopy feedbackMetadata:metadataCopy originalRequest:requestCopy responseCode:v7 error:errorCopy uuid:v16];

  return v17;
}

- (ATXSuggestionRequestResponse)initWithSuggestions:(id)suggestions feedbackMetadata:(id)metadata originalRequest:(id)request responseCode:(int)code error:(id)error uuid:(id)uuid
{
  suggestionsCopy = suggestions;
  metadataCopy = metadata;
  requestCopy = request;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = ATXSuggestionRequestResponse;
  v18 = [(ATXSuggestionRequestResponse *)&v23 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_suggestions, suggestions);
    objc_storeStrong(&v19->_feedbackMetadata, metadata);
    objc_storeStrong(&v19->_originalRequest, request);
    v19->_responseCode = code;
    objc_storeStrong(&v19->_error, error);
    v20 = objc_opt_new();
    uuid = v19->_uuid;
    v19->_uuid = v20;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      if ([(NSArray *)self->_suggestions count])
      {
        suggestions = [(ATXSuggestionRequestResponse *)v5 suggestions];
        v7 = [suggestions count];

        if (v7)
        {
          v8 = self->_suggestions;
          v9 = v8;
          if (v8 == v5->_suggestions)
          {
          }

          else
          {
            v10 = [(NSArray *)v8 isEqual:?];

            if ((v10 & 1) == 0)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v12 = self->_feedbackMetadata;
      v13 = v12;
      if (v12 == v5->_feedbackMetadata)
      {
      }

      else
      {
        v14 = [(NSData *)v12 isEqual:?];

        if ((v14 & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v15 = self->_originalRequest;
      v16 = v15;
      if (v15 == v5->_originalRequest)
      {
      }

      else
      {
        v17 = [(ATXSuggestionRequest *)v15 isEqual:?];

        if (!v17)
        {
          goto LABEL_22;
        }
      }

      if ([(ATXSuggestionRequestResponse *)v5 responseCode]== self->_responseCode)
      {
        v18 = self->_error;
        v19 = v18;
        if (v18 == v5->_error)
        {
          v11 = 1;
        }

        else
        {
          v11 = [(NSError *)v18 isEqual:?];
        }

        goto LABEL_25;
      }

LABEL_22:
      v11 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v11 = 0;
  }

LABEL_26:

  return v11;
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
  encodeAsProto = [(ATXSuggestionRequestResponse *)self encodeAsProto];
  [coderCopy encodeObject:encodeAsProto forKey:@"protobufData"];
}

- (ATXSuggestionRequestResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"protobufData"];

  v6 = [(ATXSuggestionRequestResponse *)self initWithProtoData:v5];
  return v6;
}

- (ATXSuggestionRequestResponse)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBResponseForRequestForSuggestions alloc] initWithData:dataCopy];

    self = [(ATXSuggestionRequestResponse *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXSuggestionRequestResponse)initWithProto:(id)proto
{
  protoCopy = proto;
  if (protoCopy)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v6 = __atxlog_handle_default(isKindOfClass);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [(ATXSuggestionRequestResponse *)self initWithProto:v6];
      }

      selfCopy = 0;
      goto LABEL_38;
    }

    v6 = protoCopy;
    uuidString = [v6 uuidString];
    suggestions = [v6 suggestions];
    v9 = [suggestions _pas_mappedArrayWithTransform:&__block_literal_global];

    feedbackMetadata = [v6 feedbackMetadata];
    responseCode = [v6 responseCode];
    if (responseCode >= 6)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", responseCode];
    }

    else
    {
      v12 = off_1E86A3D70[responseCode];
    }

    v14 = v12;
    if (([(__CFString *)v14 isEqualToString:@"Unknown"]& 1) != 0)
    {
      v15 = 0;
    }

    else if (([(__CFString *)v14 isEqualToString:@"FallbackToCache"]& 1) != 0)
    {
      v15 = 1;
    }

    else if (([(__CFString *)v14 isEqualToString:@"Success"]& 1) != 0)
    {
      v15 = 2;
    }

    else if (([(__CFString *)v14 isEqualToString:@"Error"]& 1) != 0)
    {
      v15 = 3;
    }

    else if (([(__CFString *)v14 isEqualToString:@"SuccessAndReplaceCache"]& 1) != 0)
    {
      v15 = 4;
    }

    else if ([(__CFString *)v14 isEqualToString:@"Max"])
    {
      v15 = 5;
    }

    else
    {
      v15 = 0;
    }

    if ([v6 hasErrorData])
    {
      errorData = [v6 errorData];
      v17 = [(ATXSuggestionRequestResponse *)self unarchivedNSErrorFromData:errorData];
    }

    else
    {
      v17 = 0;
    }

    if ([v6 hasInteractionSuggestionRequest])
    {
      v18 = [ATXInteractionSuggestionRequest alloc];
      interactionSuggestionRequest = [v6 interactionSuggestionRequest];
    }

    else if ([v6 hasContextualActionSuggestionRequest])
    {
      v18 = [ATXContextualActionSuggestionRequest alloc];
      interactionSuggestionRequest = [v6 contextualActionSuggestionRequest];
    }

    else
    {
      hasIntentSuggestionRequest = [v6 hasIntentSuggestionRequest];
      if (!hasIntentSuggestionRequest)
      {
        goto LABEL_34;
      }

      v18 = [ATXIntentSuggestionRequest alloc];
      interactionSuggestionRequest = [v6 intentSuggestionRequest];
    }

    v21 = interactionSuggestionRequest;
    v22 = [(ATXInteractionSuggestionRequest *)v18 initWithProto:interactionSuggestionRequest];

    if (v22)
    {
      v23 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:uuidString];
      self = [(ATXSuggestionRequestResponse *)self initWithSuggestions:v9 feedbackMetadata:feedbackMetadata originalRequest:v22 responseCode:v15 error:v17 uuid:v23];

      selfCopy = self;
LABEL_37:

LABEL_38:
      goto LABEL_39;
    }

LABEL_34:
    v22 = __atxlog_handle_blending(hasIntentSuggestionRequest);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestionRequestResponse initWithProto:];
    }

    selfCopy = 0;
    goto LABEL_37;
  }

  selfCopy = 0;
LABEL_39:

  return selfCopy;
}

ATXProactiveSuggestion *__46__ATXSuggestionRequestResponse_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[ATXProactiveSuggestion alloc] initWithProto:v2];

  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = __atxlog_handle_blending(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __46__ATXSuggestionRequestResponse_initWithProto___block_invoke_cold_1();
    }
  }

  return v3;
}

id __37__ATXSuggestionRequestResponse_proto__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 proto];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = __atxlog_handle_blending(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __37__ATXSuggestionRequestResponse_proto__block_invoke_cold_1();
    }
  }

  return v3;
}

- (id)unarchivedNSErrorFromData:(id)data
{
  dataCopy = data;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v11];
  v6 = v11;
  objc_autoreleasePoolPop(v4);
  if (v6)
  {
    v8 = __atxlog_handle_blending(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestionRequestResponse unarchivedNSErrorFromData:];
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (id)dataFromNSError:(id)error
{
  errorCopy = error;
  v4 = objc_autoreleasePoolPush();
  v11 = 0;
  v5 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:&v11];
  v6 = v11;
  objc_autoreleasePoolPop(v4);
  if (v6)
  {
    v8 = __atxlog_handle_blending(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [ATXSuggestionRequestResponse dataFromNSError:];
    }

    v9 = 0;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (void)initWithProto:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_fault_impl(&dword_1DEFC4000, a2, OS_LOG_TYPE_FAULT, "%@: tried to initialize with a non-ATXPBUIEvent proto", &v5, 0xCu);
}

@end