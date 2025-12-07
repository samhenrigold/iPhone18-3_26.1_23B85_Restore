@interface WFRemoteExecutionRequest
+ (BOOL)isUnsupportedVersionError:(id)error;
+ (id)identifierFromData:(id)data error:(id *)error;
+ (id)unsupportedVersionError;
- (BOOL)readFrom:(id)from error:(id *)error;
- (BOOL)writeTo:(id)to error:(id *)error;
- (WFRemoteExecutionRequest)init;
- (WFRemoteExecutionRequest)initWithData:(id)data error:(id *)error;
- (id)emptyProtobufError;
@end

@implementation WFRemoteExecutionRequest

- (id)emptyProtobufError
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v6 = *MEMORY[0x1E696A578];
  v7[0] = @"Attempted to write protobuf for message but resulting data was empty.";
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [v2 errorWithDomain:@"WFRemoteExecutionRequestErrorDomain" code:0 userInfo:v3];

  return v4;
}

- (BOOL)writeTo:(id)to error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v7 = objc_alloc_init(WFREPBRequest);
  identifier = [(WFRemoteExecutionRequest *)self identifier];
  [(WFREPBRequest *)v7 setIdentifier:identifier];

  -[WFREPBRequest setVersion:](v7, "setVersion:", [objc_opt_class() version]);
  v9 = objc_alloc_init(MEMORY[0x1E69C65C0]);
  v15 = 0;
  v10 = [(WFRemoteExecutionRequest *)self writeMessageToWriter:v9 error:&v15];
  v11 = v15;
  if (v10)
  {
    [(WFREPBRequest *)v7 setMessage:v10];
    [(WFREPBRequest *)v7 writeTo:toCopy];
  }

  else
  {
    v12 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v17 = "[WFRemoteExecutionRequest writeTo:error:]";
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Writing message from request failed with error: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v13 = v11;
      *error = v11;
    }
  }

  return v10 != 0;
}

- (BOOL)readFrom:(id)from error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v7 = objc_alloc_init(WFREPBRequest);
  v8 = [(PBCodable *)v7 readFrom:fromCopy error:error];

  if (!v8)
  {
    v16 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "[WFRemoteExecutionRequest readFrom:error:]";
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_FAULT, "%s Failed to read base request protobuf", buf, 0xCu);
    }

LABEL_12:
    v12 = 0;
    goto LABEL_17;
  }

  identifier = [(WFREPBRequest *)v7 identifier];
  identifier = self->_identifier;
  self->_identifier = identifier;

  self->_version = [(WFREPBRequest *)v7 version];
  if (([objc_opt_class() supportsVersion:self->_version] & 1) == 0)
  {
    v17 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v21 = "[WFRemoteExecutionRequest readFrom:error:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_FAULT, "%s Unsupported version of request", buf, 0xCu);
    }

    if (error)
    {
      [objc_opt_class() unsupportedVersionError];
      *error = v12 = 0;
      goto LABEL_17;
    }

    goto LABEL_12;
  }

  message = [(WFREPBRequest *)v7 message];
  v19 = 0;
  v12 = [(WFRemoteExecutionRequest *)self readMessageFromData:message error:&v19];
  v13 = v19;
  if (!v12)
  {
    v14 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v21 = "[WFRemoteExecutionRequest readFrom:error:]";
      v22 = 2114;
      v23 = v13;
      _os_log_impl(&dword_1CA256000, v14, OS_LOG_TYPE_FAULT, "%s Reading message from request failed with error: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v15 = v13;
      *error = v13;
    }
  }

LABEL_17:
  return v12;
}

- (WFRemoteExecutionRequest)initWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = WFRemoteExecutionRequest;
  v7 = [(WFRemoteExecutionRequest *)&v11 init];
  if (v7)
  {
    v8 = [objc_alloc(MEMORY[0x1E69C65B8]) initWithData:dataCopy];
    if ([(WFRemoteExecutionRequest *)v7 readFrom:v8 error:error])
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (WFRemoteExecutionRequest)init
{
  v8.receiver = self;
  v8.super_class = WFRemoteExecutionRequest;
  v2 = [(WFRemoteExecutionRequest *)&v8 init];
  if (v2)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    identifier = v2->_identifier;
    v2->_identifier = uUIDString;

    v6 = v2;
  }

  return v2;
}

+ (id)unsupportedVersionError
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696ABC0];
  v8[0] = *MEMORY[0x1E696A588];
  v3 = WFLocalizedString(@"Could Not Run Remotely");
  v9[0] = v3;
  v8[1] = *MEMORY[0x1E696A578];
  v4 = WFLocalizedString(@"This remote execution request is unsupported in this version of Shortcuts. Please update your device.");
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  v6 = [v2 errorWithDomain:@"WFRemoteExecutionRequestErrorDomain" code:2 userInfo:v5];

  return v6;
}

+ (BOOL)isUnsupportedVersionError:(id)error
{
  errorCopy = error;
  unsupportedVersionError = [self unsupportedVersionError];
  domain = [unsupportedVersionError domain];
  domain2 = [errorCopy domain];
  if (objc_msgSend_isEqualToString_(domain))
  {
    code = [unsupportedVersionError code];
    v9 = code == [errorCopy code];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)identifierFromData:(id)data error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E69C65B8];
  dataCopy = data;
  v7 = [[v5 alloc] initWithData:dataCopy];

  v8 = objc_alloc_init(WFREPBRequest);
  v15 = 0;
  v9 = [(PBCodable *)v8 readFrom:v7 error:&v15];
  v10 = v15;
  if (v9)
  {
    identifier = [(WFREPBRequest *)v8 identifier];
  }

  else
  {
    v12 = getWFRemoteExecutionLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315394;
      v17 = "+[WFRemoteExecutionRequest identifierFromData:error:]";
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_FAULT, "%s Failed to read base request protobuf: %{public}@", buf, 0x16u);
    }

    if (error)
    {
      v13 = v10;
      identifier = 0;
      *error = v10;
    }

    else
    {
      identifier = 0;
    }
  }

  return identifier;
}

@end