@interface DIVerifyParams
- (BOOL)shouldValidateShadows;
- (BOOL)verifyWithError:(id *)error;
- (DIVerifyParams)initWithURL:(id)l error:(id *)error;
- (DIVerifyParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error;
- (void)setShouldValidateShadows:(BOOL)shadows;
@end

@implementation DIVerifyParams

- (DIVerifyParams)initWithURL:(id)l error:(id *)error
{
  v6 = MEMORY[0x277CBEA60];
  lCopy = l;
  array = [v6 array];
  v9 = [(DIVerifyParams *)self initWithURL:lCopy shadowURLs:array error:error];

  return v9;
}

- (DIVerifyParams)initWithURL:(id)l shadowURLs:(id)ls error:(id *)error
{
  lsCopy = ls;
  v15.receiver = self;
  v15.super_class = DIVerifyParams;
  v9 = [(DIBaseParams *)&v15 initWithURL:l error:error];
  v10 = v9;
  if (!v9 || -[DIBaseParams openExistingImageWithError:](v9, "openExistingImageWithError:", error) && (-[DIBaseParams shadowChain](v10, "shadowChain"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 addShadowURLs:lsCopy error:error], v11, v12))
  {
    v13 = v10;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldValidateShadows
{
  shadowChain = [(DIBaseParams *)self shadowChain];
  shouldValidate = [shadowChain shouldValidate];

  return shouldValidate;
}

- (void)setShouldValidateShadows:(BOOL)shadows
{
  shadowsCopy = shadows;
  shadowChain = [(DIBaseParams *)self shadowChain];
  [shadowChain setShouldValidate:shadowsCopy];
}

- (BOOL)verifyWithError:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__0;
  v21 = __Block_byref_object_dispose__0;
  v22 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v5 = *__error();
  v6 = DIForwardLogs();
  if (v6)
  {
    v16 = 0;
    v8 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    *buf = 68158210;
    v24 = 34;
    v25 = 2080;
    v26 = "[DIVerifyParams verifyWithError:]";
    v27 = 2114;
    selfCopy2 = self;
    v10 = _os_log_send_and_compose_impl(v9, &v16, 0, 0, &dword_248DE0000, v8, 0, "%.*s: entry: %{public}@", buf, 28);

    if (v10)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = getDIOSLog(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v24 = 34;
      v25 = 2080;
      v26 = "[DIVerifyParams verifyWithError:]";
      v27 = 2114;
      selfCopy2 = self;
      _os_log_impl(&dword_248DE0000, v11, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if (([v18[5] connectWithError:error] & 1) != 0 && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v18[5], 2, error))
  {
    remoteProxy = [v18[5] remoteProxy];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __34__DIVerifyParams_verifyWithError___block_invoke;
    v15[3] = &unk_278F80A28;
    v15[4] = &v17;
    [remoteProxy verifyWithParams:self reply:v15];

    v13 = [v18[5] completeCommandWithError:error];
  }

  else
  {
    v13 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v13;
}

@end