@interface MCACMContextWrapper
+ (id)contextWrapperForData:(id)data ofType:(unsigned int)type outError:(id *)error;
+ (int)externalizedContextForSecretData:(id)data dataType:(unsigned int)type outExternalizedContext:(id *)context outContextRef:(__ACMHandle *)ref;
- (MCACMContextWrapper)initWithExternalizedContext:(id)context contextRef:(__ACMHandle *)ref shouldDestroyContentsOnDealloc:(BOOL)dealloc;
- (void)dealloc;
@end

@implementation MCACMContextWrapper

- (MCACMContextWrapper)initWithExternalizedContext:(id)context contextRef:(__ACMHandle *)ref shouldDestroyContentsOnDealloc:(BOOL)dealloc
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = MCACMContextWrapper;
  v9 = [(MCACMContextWrapper *)&v12 init];
  externalizedContext = v9->_externalizedContext;
  v9->_externalizedContext = contextCopy;
  v9->_contextRef = ref;

  v9->_shouldDestroyContentsOnDealloc = dealloc;
  return v9;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_contextRef)
  {
    v3 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_DEBUG))
    {
      if (self->_shouldDestroyContentsOnDealloc)
      {
        v4 = @"YES";
      }

      else
      {
        v4 = @"NO";
      }

      *buf = 138412290;
      v7 = v4;
      _os_log_impl(&dword_1A795B000, v3, OS_LOG_TYPE_DEBUG, "Deleting ACMContextRef. Should destroy contents: %@", buf, 0xCu);
    }

    ACMContextDelete(self->_contextRef, self->_shouldDestroyContentsOnDealloc);
    self->_contextRef = 0;
  }

  v5.receiver = self;
  v5.super_class = MCACMContextWrapper;
  [(MCACMContextWrapper *)&v5 dealloc];
}

+ (id)contextWrapperForData:(id)data ofType:(unsigned int)type outError:(id *)error
{
  v23 = 0;
  v24 = 0;
  v7 = [self externalizedContextForSecretData:data dataType:*&type outExternalizedContext:&v23 outContextRef:&v24];
  v8 = v23;
  if (v7)
  {
    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      v18 = MCErrorArray(@"PASSCODE_ERROR_CANNOT_CREATE_PASSCODE_CONTEXT_WRAPPER_P_CODE", v11, v12, v13, v14, v15, v16, v17, v10);
      v19 = [v9 MCErrorWithDomain:@"MCPasscodeErrorDomain" code:5024 descriptionArray:v18 errorType:@"MCFatalError"];

      v20 = v19;
      *error = v19;

      error = 0;
    }
  }

  else
  {
    v21 = [self alloc];
    error = [v21 initWithExternalizedContext:v8 contextRef:v24 shouldDestroyContentsOnDealloc:1];
  }

  return error;
}

+ (int)externalizedContextForSecretData:(id)data dataType:(unsigned int)type outExternalizedContext:(id *)context outContextRef:(__ACMHandle *)ref
{
  v29 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__6;
  v23 = __Block_byref_object_dispose__6;
  v24 = objc_opt_new();
  v18 = 0;
  v10 = ACMContextCreate(&v18);
  if (v10)
  {
    v11 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      typeCopy = v10;
      _os_log_impl(&dword_1A795B000, v11, OS_LOG_TYPE_ERROR, "Couldn't create auth context: ACM err %d", buf, 8u);
    }

    v12 = v18;
    if (v18)
    {
LABEL_5:
      ACMContextDelete(v12, 1);
    }
  }

  else if (dataCopy && (v13 = v18, v14 = dataCopy, (v10 = ACMContextSetData(v13, type, [dataCopy bytes], objc_msgSend(dataCopy, "length"))) != 0))
  {
    v15 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      typeCopy = type;
      v27 = 1024;
      v28 = v10;
      _os_log_impl(&dword_1A795B000, v15, OS_LOG_TYPE_ERROR, "Couldn't set secret data for type %d in auth context: ACM err %d", buf, 0xEu);
    }

    v12 = v18;
    if (v18)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __102__MCACMContextWrapper_externalizedContextForSecretData_dataType_outExternalizedContext_outContextRef___block_invoke;
    v17[3] = &unk_1E77D2500;
    v17[4] = &v19;
    ACMContextGetExternalForm(v18, v17);
    if (context)
    {
      *context = v20[5];
    }

    if (ref)
    {
      v10 = 0;
      *ref = v18;
    }

    else
    {
      if (v18)
      {
        ACMContextDelete(v18, 1);
      }

      v10 = 0;
    }
  }

  _Block_object_dispose(&v19, 8);

  return v10;
}

uint64_t __102__MCACMContextWrapper_externalizedContextForSecretData_dataType_outExternalizedContext_outContextRef___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(*(a1 + 32) + 8) + 40) = [MEMORY[0x1E695DEF0] dataWithBytes:a2 length:a3];

  return MEMORY[0x1EEE66BB8]();
}

@end