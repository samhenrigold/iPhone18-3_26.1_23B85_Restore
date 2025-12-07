@interface MCSecurePasscodeContextWrapper
+ (id)contextWrapperForSecureSecretData:(id)data outError:(id *)error;
+ (id)credentialSetForPasscode:(id)passcode outError:(id *)error;
@end

@implementation MCSecurePasscodeContextWrapper

+ (id)contextWrapperForSecureSecretData:(id)data outError:(id *)error
{
  dataCopy = data;
  if ([dataCopy length])
  {
    v7 = [self contextWrapperForData:dataCopy ofType:5 outError:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)credentialSetForPasscode:(id)passcode outError:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  passcodeCopy = passcode;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__6;
  v19 = __Block_byref_object_dispose__6;
  v20 = 0;
  v14 = 0;
  v6 = ACMContextCreate(&v14);
  if (v6)
  {
    v7 = _MCLogObjects;
    if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_1A795B000, v7, OS_LOG_TYPE_ERROR, "Couldn't create auth context: ACM error %d", buf, 8u);
    }

    v8 = v16[5];
    v9 = 0;
  }

  else
  {
    v10 = v14;
    *buf = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __credentialSetFromPasscode_block_invoke;
    v24 = &unk_1E77D2528;
    v25 = passcodeCopy;
    v26 = &v15;
    ACMContextGetExternalForm(v10, buf);
    v11 = v16[5];
    v9 = v14;
    if (!v11)
    {
      if (v14)
      {
        ACMContextDelete(v14, 1);
        v9 = 0;
        v14 = 0;
        v11 = v16[5];
      }

      else
      {
        v11 = 0;
      }
    }

    v8 = v11;
  }

  _Block_object_dispose(&v15, 8);

  if (v8)
  {
    v12 = [[self alloc] initWithExternalizedContext:v8 contextRef:v9 shouldDestroyContentsOnDealloc:1];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end