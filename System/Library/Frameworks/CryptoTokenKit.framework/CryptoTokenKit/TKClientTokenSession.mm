@interface TKClientTokenSession
- (BOOL)deleteObject:(id)object error:(id *)error;
- (BOOL)evaluateAccessControl:(id)control forOperation:(id)operation error:(id *)error;
- (TKClientTokenSession)initWithToken:(id)token LAContext:(id)context parameters:(id)parameters error:(id *)error;
- (TKClientTokenSession)initWithTokenID:(id)d LAContext:(id)context error:(id *)error;
- (id)_initWithToken:(id)token LAContext:(id)context parameters:(id)parameters error:(id *)error;
- (id)createObjectWithAttributes:(id)attributes error:(id *)error;
- (id)processObjectCreationAttributes:(id)attributes authContext:(id *)context error:(id *)error;
@end

@implementation TKClientTokenSession

- (id)_initWithToken:(id)token LAContext:(id)context parameters:(id)parameters error:(id *)error
{
  tokenCopy = token;
  contextCopy = context;
  parametersCopy = parameters;
  v18.receiver = self;
  v18.super_class = TKClientTokenSession;
  v14 = [(TKClientTokenSession *)&v18 init];
  p_isa = &v14->super.isa;
  if (v14 && (v14->_authenticateWhenNeeded = 1, objc_storeStrong(&v14->_token, token), objc_storeStrong(p_isa + 2, context), objc_storeStrong(p_isa + 3, parameters), ![p_isa isValidWithError:error]))
  {
    v16 = 0;
  }

  else
  {
    v16 = p_isa;
  }

  return v16;
}

- (TKClientTokenSession)initWithToken:(id)token LAContext:(id)context parameters:(id)parameters error:(id *)error
{
  tokenCopy = token;
  parametersCopy = parameters;
  contextCopy = context;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v14 = off_1E86B6848;
  if ((isKindOfClass & 1) == 0)
  {
    v14 = off_1E86B6838;
  }

  v15 = [objc_alloc(*v14) initWithToken:tokenCopy LAContext:contextCopy parameters:parametersCopy error:error];

  return v15;
}

- (TKClientTokenSession)initWithTokenID:(id)d LAContext:(id)context error:(id *)error
{
  contextCopy = context;
  dCopy = d;
  v10 = [[TKClientToken alloc] initWithTokenID:dCopy];

  v11 = [(TKClientTokenSession *)self initWithToken:v10 LAContext:contextCopy parameters:MEMORY[0x1E695E0F8] error:error];
  return v11;
}

- (BOOL)deleteObject:(id)object error:(id *)error
{
  v5 = [(TKClientTokenSession *)self objectForObjectID:object error:?];
  LOBYTE(error) = [v5 deleteWithError:error];

  return error;
}

- (BOOL)evaluateAccessControl:(id)control forOperation:(id)operation error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:MEMORY[0x1E695E0F8]];
  }

  return 0;
}

- (id)createObjectWithAttributes:(id)attributes error:(id *)error
{
  if (error)
  {
    *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"CryptoTokenKit" code:-1 userInfo:MEMORY[0x1E695E0F8]];
  }

  return 0;
}

- (id)processObjectCreationAttributes:(id)attributes authContext:(id *)context error:(id *)error
{
  attributesCopy = attributes;
  errorCopy = error;
  v9 = *MEMORY[0x1E697ABC8];
  v10 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E697ABC8]];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = SecAccessControlCreateFromData();
      if (!v11)
      {
        v20 = TK_LOG_client_1(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
        {
          [TKClientTokenSession processObjectCreationAttributes:authContext:error:];
        }

        goto LABEL_13;
      }

      v12 = v11;

      v10 = v12;
    }

    if (SecAccessControlIsBound())
    {
      _testing_AuthContextUsed = [(TKClientTokenSession *)self _testing_AuthContextUsed];

      if (!_testing_AuthContextUsed)
      {
        goto LABEL_24;
      }

      lAContext = [(TKClientTokenSession *)self LAContext];
      if (lAContext)
      {
        [(TKClientTokenSession *)self set_testing_AuthContextUsed:lAContext];
      }

      else
      {
        gotLoadHelper_x8__OBJC_CLASS___LAContext(v15);
        v28 = objc_alloc_init(*(v27 + 3664));
        [(TKClientTokenSession *)self set_testing_AuthContextUsed:v28];
      }

LABEL_23:

LABEL_24:
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v29 = SecAccessControlCopyData();

        v30 = [attributesCopy mutableCopy];
        [v30 setObject:v29 forKeyedSubscript:v9];
        v31 = [v30 copy];

        v10 = v29;
        attributesCopy = v31;
      }

      goto LABEL_26;
    }

    lAContext2 = [(TKClientTokenSession *)self LAContext];
    v18 = lAContext2;
    if (lAContext2)
    {
      v19 = lAContext2;
      *context = v18;
    }

    else
    {
      gotLoadHelper_x8__OBJC_CLASS___LAContext(v17);
      v22 = objc_alloc_init(*(v21 + 3664));
      *context = v22;
    }

    _testing_AuthContextUsed2 = [(TKClientTokenSession *)self _testing_AuthContextUsed];

    if (_testing_AuthContextUsed2)
    {
      [(TKClientTokenSession *)self set_testing_AuthContextUsed:*context];
    }

    v24 = [*context evaluateAccessControl:v10 aksOperation:&stru_1F5A7A8A8 options:MEMORY[0x1E695E0F8] error:errorCopy];
    if (v24)
    {
      lAContext = v24;
      SecAccessControlSetBound();
      goto LABEL_23;
    }

    if (!errorCopy || *errorCopy)
    {
LABEL_21:
      v26 = 0;
      goto LABEL_27;
    }

    Helper_x8__LAErrorDomain = gotLoadHelper_x8__LAErrorDomain(v25);
    v36 = [v35 errorWithDomain:**(v34 + 3632) code:-1000 userInfo:{0, Helper_x8__LAErrorDomain}];
    *errorCopy = v36;
    v20 = TK_LOG_client_1(v36);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [TKClientTokenSession processObjectCreationAttributes:v20 authContext:? error:?];
    }

LABEL_13:

    goto LABEL_21;
  }

LABEL_26:
  attributesCopy = attributesCopy;
  v26 = attributesCopy;
LABEL_27:

  return v26;
}

- (void)processObjectCreationAttributes:(uint64_t *)a1 authContext:(NSObject *)a2 error:.cold.1(uint64_t **a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = **a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "[LAContext evaluateAccessControl:] failed but did not provide an error, synthesizing: %{public}@", &v3, 0xCu);
}

- (void)processObjectCreationAttributes:authContext:error:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_3();
  _os_log_fault_impl(&dword_1DF413000, v0, OS_LOG_TYPE_FAULT, "Unable to deserialize AC %{public}@, error: %{public}@", v1, 0x16u);
}

@end