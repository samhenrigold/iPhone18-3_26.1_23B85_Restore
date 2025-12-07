@interface LAErrorOysterRedactor
- (LAErrorOysterRedactor)init;
- (id)redactError:(id)error;
- (uint64_t)_shouldVerifySDKVersion;
- (void)_linkedAgainstRequiredSDKVersion;
- (void)_shouldMaskOysterBiometry;
- (void)setMinSDKVersion:(id)version;
@end

@implementation LAErrorOysterRedactor

- (LAErrorOysterRedactor)init
{
  v7.receiver = self;
  v7.super_class = LAErrorOysterRedactor;
  v2 = [(LAErrorOysterRedactor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    defaults = v2->_defaults;
    v2->_defaults = 0;

    v3->_minSDKVersion = 0x7E70901FFFFFFFFLL;
    v5 = _hasSDKRequirements;
    _hasSDKRequirements = 0;
  }

  return v3;
}

- (id)redactError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    goto LABEL_8;
  }

  domain = [errorCopy domain];
  if (![domain isEqualToString:@"com.apple.LocalAuthentication"])
  {
    goto LABEL_7;
  }

  userInfo = [v5 userInfo];
  if (!userInfo)
  {
    goto LABEL_7;
  }

  v8 = userInfo;
  userInfo2 = [v5 userInfo];
  v10 = [userInfo2 objectForKeyedSubscript:@"BiometryType"];

  if (!v10)
  {
LABEL_8:
    v12 = v5;
    goto LABEL_9;
  }

  domain = [v5 userInfo];
  v11 = [domain objectForKeyedSubscript:@"BiometryType"];
  if ([v11 integerValue] != 4)
  {

LABEL_7:
    goto LABEL_8;
  }

  _shouldMaskOysterBiometry = [(LAErrorOysterRedactor *)self _shouldMaskOysterBiometry];

  if (!_shouldMaskOysterBiometry)
  {
    goto LABEL_8;
  }

  userInfo3 = [v5 userInfo];
  v16 = [userInfo3 mutableCopy];

  [v16 setObject:&unk_1F5A79308 forKeyedSubscript:@"BiometryType"];
  v17 = MEMORY[0x1E696ABC0];
  domain2 = [v5 domain];
  v12 = [v17 errorWithDomain:domain2 code:objc_msgSend(v5 userInfo:{"code"), v16}];

LABEL_9:

  return v12;
}

- (void)setMinSDKVersion:(id)version
{
  self->_minSDKVersion = version;
  v3 = _hasSDKRequirements;
  _hasSDKRequirements = 0;
}

- (void)_shouldMaskOysterBiometry
{
  if (result)
  {
    v1 = result;
    result = [(LAErrorOysterRedactor *)result _shouldVerifySDKVersion];
    if (result)
    {
      return ([(LAErrorOysterRedactor *)v1 _linkedAgainstRequiredSDKVersion]^ 1);
    }
  }

  return result;
}

- (uint64_t)_shouldVerifySDKVersion
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v1 = *(self + 8);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v2 = [standardUserDefaults persistentDomainForName:*MEMORY[0x1E696A400]];
  }

  v4 = [v2 objectForKeyedSubscript:@"LA.oyster.skipSDKVerification"];
  v5 = v4;
  if (!v4)
  {
    v4 = MEMORY[0x1E695E110];
  }

  bOOLValue = [v4 BOOLValue];

  v8 = LA_LOG(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"perform";
    if (bOOLValue)
    {
      v9 = @"skip";
    }

    v12 = 138412290;
    v13 = v9;
    _os_log_impl(&dword_1DF403000, v8, OS_LOG_TYPE_DEFAULT, "Will %@ SDK verification", &v12, 0xCu);
  }

  v10 = bOOLValue ^ 1u;
  return v10;
}

- (void)_linkedAgainstRequiredSDKVersion
{
  if (result)
  {
    if (_hasSDKRequirements)
    {
      v1 = LA_LOG(result);
      if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1DF403000, v1, OS_LOG_TYPE_INFO, "Using cached SDK version", buf, 2u);
      }

      return [_hasSDKRequirements BOOLValue];
    }

    else if (*(result + 5) || *(result + 4))
    {
      v2 = [MEMORY[0x1E696AD98] numberWithBool:dyld_program_sdk_at_least()];
      v3 = _hasSDKRequirements;
      _hasSDKRequirements = v2;

      v4 = _hasSDKRequirements;

      return [v4 BOOLValue];
    }

    else
    {
      v5 = LA_LOG(result);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v6 = 0;
        _os_log_error_impl(&dword_1DF403000, v5, OS_LOG_TYPE_ERROR, "Could not determine the current SDK version", v6, 2u);
      }

      return 0;
    }
  }

  return result;
}

@end