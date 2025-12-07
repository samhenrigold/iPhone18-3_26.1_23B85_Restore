@interface VSOpaqueAuthenticationToken
- (BOOL)isEqual:(id)equal;
- (BOOL)isFromUnsupportedProvider;
- (BOOL)isValid;
- (NSData)serializedData;
- (NSString)description;
- (VSOpaqueAuthenticationToken)init;
- (VSOpaqueAuthenticationToken)initWithSerializedData:(id)data;
- (unint64_t)hash;
- (void)serializedData;
@end

@implementation VSOpaqueAuthenticationToken

- (VSOpaqueAuthenticationToken)init
{
  v8.receiver = self;
  v8.super_class = VSOpaqueAuthenticationToken;
  v2 = [(VSOpaqueAuthenticationToken *)&v8 init];
  v3 = v2;
  if (v2)
  {
    body = v2->_body;
    v2->_body = &stru_284DD5B48;

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    expirationDate = v3->_expirationDate;
    v3->_expirationDate = distantFuture;
  }

  return v3;
}

- (VSOpaqueAuthenticationToken)initWithSerializedData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The serializedData parameter must not be nil."];
  }

  v5 = [(VSOpaqueAuthenticationToken *)self init];
  if (v5)
  {
    v35 = 0;
    v6 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:0 format:0 error:&v35];
    v7 = v35;
    v8 = v7;
    if (v6)
    {
      v9 = v6;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v11 = MEMORY[0x277CBEAD8];
          v12 = *MEMORY[0x277CBE660];
          v13 = objc_opt_class();
          v14 = NSStringFromClass(v13);
          [v11 raise:v12 format:{@"Unexpectedly, plist was %@, instead of NSDictionary.", v14}];
        }

        v15 = v9;
        v16 = [v15 objectForKey:@"expirationDate"];
        v17 = v16;
        if (v16)
        {
          v18 = v16;
          objc_opt_class();
          v19 = objc_opt_isKindOfClass();
          if (v19)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v33 = MEMORY[0x277CBEAD8];
              v20 = *MEMORY[0x277CBE660];
              v21 = objc_opt_class();
              v22 = NSStringFromClass(v21);
              [v33 raise:v20 format:{@"Unexpectedly, expirationDate was %@, instead of NSDate.", v22}];
            }

            [(VSOpaqueAuthenticationToken *)v5 setExpirationDate:v18];
          }

          else
          {
            v23 = VSErrorLogObject(v19);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              [VSOpaqueAuthenticationToken initWithSerializedData:];
            }
          }
        }

        else
        {
          v18 = VSErrorLogObject(0);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            [VSOpaqueAuthenticationToken initWithSerializedData:];
          }
        }

        v24 = [v15 objectForKey:@"body"];
        v25 = v24;
        if (v24)
        {
          v26 = v24;
          objc_opt_class();
          v27 = objc_opt_isKindOfClass();
          if (v27)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v34 = MEMORY[0x277CBEAD8];
              v32 = *MEMORY[0x277CBE660];
              v28 = objc_opt_class();
              v29 = NSStringFromClass(v28);
              [v34 raise:v32 format:{@"Unexpectedly, body was %@, instead of NSString.", v29}];
            }

            [(VSOpaqueAuthenticationToken *)v5 setBody:v26];
          }

          else
          {
            v30 = VSErrorLogObject(v27);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [VSOpaqueAuthenticationToken initWithSerializedData:];
            }
          }
        }

        else
        {
          v26 = VSErrorLogObject(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            [VSOpaqueAuthenticationToken initWithSerializedData:];
          }
        }
      }

      else
      {
        v15 = VSErrorLogObject(isKindOfClass);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [VSOpaqueAuthenticationToken initWithSerializedData:];
        }
      }
    }

    else
    {
      v9 = VSErrorLogObject(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [VSOpaqueAuthenticationToken initWithSerializedData:];
      }
    }
  }

  return v5;
}

- (BOOL)isValid
{
  vs_currentDate = [MEMORY[0x277CBEAA8] vs_currentDate];
  expirationDate = [(VSOpaqueAuthenticationToken *)self expirationDate];
  v5 = [expirationDate vs_isAfter:vs_currentDate];

  return v5;
}

- (BOOL)isFromUnsupportedProvider
{
  body = [(VSOpaqueAuthenticationToken *)self body];
  v3 = [body length] == 0;

  return v3;
}

- (NSData)serializedData
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  expirationDate = [(VSOpaqueAuthenticationToken *)self expirationDate];
  v5 = [VSOptional optionalWithObject:expirationDate];

  forceUnwrapObject = [v5 forceUnwrapObject];
  [v3 setObject:forceUnwrapObject forKey:@"expirationDate"];

  body = [(VSOpaqueAuthenticationToken *)self body];
  [v3 setObject:body forKey:@"body"];

  v13 = 0;
  v8 = [MEMORY[0x277CCAC58] dataWithPropertyList:v3 format:100 options:0 error:&v13];
  v9 = v13;
  v10 = v9;
  if (!v8)
  {
    v11 = VSErrorLogObject(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [VSOpaqueAuthenticationToken serializedData];
    }

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:@"Unable to serialize opaque authentication token."];
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The data parameter must not be nil."];
  }

  return v8;
}

- (unint64_t)hash
{
  serializedData = [(VSOpaqueAuthenticationToken *)self serializedData];
  v3 = [serializedData hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v14 = 1;
  }

  else if (equalCopy)
  {
    v6 = equalCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v7 = MEMORY[0x277CBEAD8];
        v8 = *MEMORY[0x277CBE660];
        v9 = objc_opt_class();
        v10 = NSStringFromClass(v9);
        [v7 raise:v8 format:{@"Unexpectedly, object was %@, instead of VSOpaqueAuthenticationToken.", v10}];
      }

      v11 = v6;
      serializedData = [(VSOpaqueAuthenticationToken *)self serializedData];
      serializedData2 = [(VSOpaqueAuthenticationToken *)v11 serializedData];

      v14 = [serializedData isEqual:serializedData2];
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

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  expirationDate = [(VSOpaqueAuthenticationToken *)self expirationDate];
  v7 = [v3 stringWithFormat:@"<%@ %@=%@>", v5, @"expirationDate", expirationDate];

  return v7;
}

- (void)initWithSerializedData:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.3()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.4()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.5()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithSerializedData:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)serializedData
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end