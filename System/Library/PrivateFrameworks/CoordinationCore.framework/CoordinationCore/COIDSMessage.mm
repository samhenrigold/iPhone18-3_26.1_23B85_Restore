@interface COIDSMessage
- (BOOL)checkValue:(id)value forKey:(id)key isKindOfClass:(Class)class error:(id *)error;
- (BOOL)validateCommand:(id *)command error:(id *)error;
- (BOOL)validateData:(id *)data error:(id *)error;
- (BOOL)validateError:(id *)error error:(id *)a4;
- (BOOL)validateMetadata:(id *)metadata error:(id *)error;
- (BOOL)validateType:(id *)type error:(id *)error;
- (BOOL)validateVersion:(id *)version error:(id *)error;
- (COIDSMessage)initWithDictionary:(id)dictionary error:(id *)error;
- (COIDSMessage)initWithError:(id)error;
- (COIDSMessage)initWithRequest:(id)request;
- (COIDSMessage)initWithResponse:(id)response;
- (id)dictionaryRepresentation;
- (id)unarchivePayloadOfTypes:(id)types error:(id *)error;
- (void)_commandPayload:(id)payload;
@end

@implementation COIDSMessage

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  [dictionary setObject:v4 forKey:@"VR"];

  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[COIDSMessage type](self, "type")}];
  [dictionary setObject:v5 forKey:@"MT"];

  if ([(COIDSMessage *)self type]== 2)
  {
    error = [(COIDSMessage *)self error];
    v7 = _errorToDictionary(error);
    [dictionary setObject:v7 forKey:@"ER"];
  }

  else
  {
    payload = [(COIDSMessage *)self payload];
    [dictionary setObject:payload forKey:@"PL"];

    error = [(COIDSMessage *)self command];
    [dictionary setObject:error forKey:@"CM"];
  }

  metadata = [(COIDSMessage *)self metadata];

  if (metadata)
  {
    metadata2 = [(COIDSMessage *)self metadata];
    [dictionary setObject:metadata2 forKey:@"MK"];
  }

  return dictionary;
}

- (BOOL)checkValue:(id)value forKey:(id)key isKindOfClass:(Class)class error:(id *)error
{
  v16[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  if (!valueCopy)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v10 = @"missing property '%@'";
LABEL_8:
    keyCopy = [MEMORY[0x277CCACA8] stringWithFormat:v10, keyCopy];
    v12 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA068];
    v16[0] = keyCopy;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v12 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v13];

    LOBYTE(error) = 0;
    goto LABEL_9;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (!error)
    {
      goto LABEL_9;
    }

    v10 = @"property '%@' has wrong type";
    goto LABEL_8;
  }

  LOBYTE(error) = 1;
LABEL_9:

  return error;
}

- (BOOL)validateVersion:(id *)version error:(id *)error
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = [(COIDSMessage *)self checkValue:*version forKey:@"version" isKindOfClass:objc_opt_class() error:error];
  if (v6)
  {
    unsignedIntegerValue = [*version unsignedIntegerValue];
    LOBYTE(v6) = unsignedIntegerValue == 1;
    if (error)
    {
      if (unsignedIntegerValue != 1)
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid version '%lu'", unsignedIntegerValue];
        v9 = MEMORY[0x277CCA9B8];
        v12 = *MEMORY[0x277CCA068];
        v13[0] = v8;
        v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
        *error = [v9 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v10];

        LOBYTE(v6) = 0;
      }
    }
  }

  return v6;
}

- (BOOL)validateType:(id *)type error:(id *)error
{
  errorCopy = error;
  v22[1] = *MEMORY[0x277D85DE8];
  if ([(COIDSMessage *)self checkValue:*type forKey:@"type" isKindOfClass:objc_opt_class() error:error])
  {
    v7 = *type;
    unsignedIntegerValue = [v7 unsignedIntegerValue];
    if (unsignedIntegerValue >= 3)
    {
      if (errorCopy)
      {
        v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"invalid message type '%lu'", unsignedIntegerValue];
        v10 = MEMORY[0x277CCA9B8];
        v21 = *MEMORY[0x277CCA068];
        v22[0] = v9;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        *errorCopy = [v10 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v11];

LABEL_16:
        LOBYTE(errorCopy) = 0;
      }

LABEL_17:

      return errorCopy;
    }

    if (unsignedIntegerValue == 2)
    {
      if (!self->_error)
      {
        if (!errorCopy)
        {
          goto LABEL_17;
        }

        v12 = MEMORY[0x277CCA9B8];
        v17 = *MEMORY[0x277CCA068];
        v18 = @"'error' property missing";
        v13 = MEMORY[0x277CBEAC0];
        v14 = &v18;
        v15 = &v17;
LABEL_15:
        v9 = [v13 dictionaryWithObjects:v14 forKeys:v15 count:1];
        *errorCopy = [v12 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v9];
        goto LABEL_16;
      }
    }

    else if (self->_command && !self->_payload)
    {
      if (!errorCopy)
      {
        goto LABEL_17;
      }

      v12 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA068];
      v20 = @"'payload' property missing";
      v13 = MEMORY[0x277CBEAC0];
      v14 = &v20;
      v15 = &v19;
      goto LABEL_15;
    }

    LOBYTE(errorCopy) = 1;
    goto LABEL_17;
  }

  LOBYTE(errorCopy) = 0;
  return errorCopy;
}

- (BOOL)validateCommand:(id *)command error:(id *)error
{
  v4 = *command;
  if (!*command)
  {
    return 1;
  }

  v7 = objc_opt_class();

  return [(COIDSMessage *)self checkValue:v4 forKey:@"command" isKindOfClass:v7 error:error];
}

- (BOOL)validateData:(id *)data error:(id *)error
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (!*data)
  {
    goto LABEL_4;
  }

  v6 = [(COIDSMessage *)self checkValue:*data forKey:@"payload" isKindOfClass:objc_opt_class() error:error];
  if (v6)
  {
    if (self->_command)
    {
LABEL_4:
      LOBYTE(v6) = 1;
      return v6;
    }

    if (error)
    {
      v7 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277CCA068];
      v11[0] = @"'command' property missing";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
      *error = [v7 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v8];
    }

    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)validateError:(id *)error error:(id *)a4
{
  v15[1] = *MEMORY[0x277D85DE8];
  if (!*error)
  {
    return 1;
  }

  if (![(COIDSMessage *)self checkValue:*error forKey:@"error" isKindOfClass:objc_opt_class() error:a4])
  {
    return 0;
  }

  v6 = *error;
  v7 = _errorFromDictionary(v6);
  v8 = v7;
  v9 = v7 != 0;
  if (v7)
  {
    v10 = v7;
    *error = v8;
  }

  else if (a4)
  {
    v11 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA068];
    v15[0] = @"'error' data invalid";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    *a4 = [v11 errorWithDomain:@"COMeshNodeErrorDomain" code:-4000 userInfo:v12];
  }

  return v9;
}

- (BOOL)validateMetadata:(id *)metadata error:(id *)error
{
  v4 = *metadata;
  if (!*metadata)
  {
    return 1;
  }

  v7 = objc_opt_class();

  return [(COIDSMessage *)self checkValue:v4 forKey:@"metadata" isKindOfClass:v7 error:error];
}

- (COIDSMessage)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v17.receiver = self;
  v17.super_class = COIDSMessage;
  v7 = [(COIDSMessage *)&v17 init];
  if (v7)
  {
    v8 = off_278E17DE8;
    v9 = 6;
    while (1)
    {
      v10 = [dictionaryCopy objectForKey:*(v8 - 1)];
      v16 = v10;
      v11 = *v8;
      v12 = [(COIDSMessage *)v7 validateValue:&v16 forKey:*v8 error:error];
      v13 = v16;

      if (!v12)
      {
        break;
      }

      [(COIDSMessage *)v7 setValue:v13 forKey:v11];

      v8 += 2;
      if (!--v9)
      {
        goto LABEL_5;
      }
    }

    v14 = 0;
  }

  else
  {
LABEL_5:
    v14 = v7;
  }

  return v14;
}

- (COIDSMessage)initWithError:(id)error
{
  errorCopy = error;
  v9.receiver = self;
  v9.super_class = COIDSMessage;
  v6 = [(COIDSMessage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *(v6 + 8) = xmmword_244448750;
    objc_storeStrong(v6 + 5, error);
  }

  return v7;
}

- (COIDSMessage)initWithRequest:(id)request
{
  requestCopy = request;
  v8.receiver = self;
  v8.super_class = COIDSMessage;
  v5 = [(COIDSMessage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = xmmword_244448740;
    [v5 _commandPayload:requestCopy];
  }

  return v6;
}

- (COIDSMessage)initWithResponse:(id)response
{
  responseCopy = response;
  v8.receiver = self;
  v8.super_class = COIDSMessage;
  v5 = [(COIDSMessage *)&v8 init];
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = vdupq_n_s64(1uLL);
    [v5 _commandPayload:responseCopy];
  }

  return v6;
}

- (id)unarchivePayloadOfTypes:(id)types error:(id *)error
{
  v21[1] = *MEMORY[0x277D85DE8];
  typesCopy = types;
  command = [(COIDSMessage *)self command];
  v8 = [typesCopy containsObject:command];

  if (v8)
  {
    command2 = [(COIDSMessage *)self command];
    v10 = NSClassFromString(command2);

    v11 = MEMORY[0x277CCAAC8];
    payload = [(COIDSMessage *)self payload];
    error = [v11 unarchivedObjectOfClass:v10 fromData:payload error:error];
  }

  else if (error)
  {
    v13 = MEMORY[0x277CCACA8];
    command3 = [(COIDSMessage *)self command];
    v15 = [v13 stringWithFormat:@"Invalid type: %@", command3];

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA050];
    v20 = *MEMORY[0x277CCA068];
    v21[0] = v15;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    *error = [v16 errorWithDomain:v17 code:4866 userInfo:v18];

    error = 0;
  }

  return error;
}

- (void)_commandPayload:(id)payload
{
  payloadCopy = payload;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  command = self->_command;
  self->_command = v6;

  v8 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:payloadCopy requiringSecureCoding:1 error:0];
  payload = self->_payload;
  self->_payload = v8;

  if (!self->_payload)
  {
    if (class_getMethodImplementation(v5, sel_supportsSecureCoding) && class_getMethodImplementation(v5, sel_encodeWithCoder_))
    {
      v10 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(COIDSMessage *)payloadCopy _commandPayload:v10];
      }
    }

    else
    {
      v10 = COCoreLogForCategory(17);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [(COIDSMessage *)v5 _commandPayload:v10];
      }
    }

    v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CCA2A0] reason:0 userInfo:0];
    [v11 raise];
  }
}

- (void)_commandPayload:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_244378000, a2, OS_LOG_TYPE_FAULT, "Failed to properly archive for sending over IDS: %@", &v2, 0xCu);
}

- (void)_commandPayload:(objc_class *)a1 .cold.2(objc_class *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = NSStringFromClass(a1);
  v4 = 138412290;
  v5 = v3;
  _os_log_fault_impl(&dword_244378000, a2, OS_LOG_TYPE_FAULT, "%@ does not appear to properly support secure coding which is required for all commands going over IDS!", &v4, 0xCu);
}

@end