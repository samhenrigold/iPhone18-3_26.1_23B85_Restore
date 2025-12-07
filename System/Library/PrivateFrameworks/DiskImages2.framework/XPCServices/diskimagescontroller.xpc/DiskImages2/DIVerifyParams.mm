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
  lCopy = l;
  v7 = +[NSArray array];
  v8 = [(DIVerifyParams *)self initWithURL:lCopy shadowURLs:v7 error:error];

  return v8;
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
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000A2404;
  v21 = sub_1000A2414;
  v22 = objc_alloc_init(DIClient2Controller_XPCHandler);
  v5 = *__error();
  v6 = sub_1000E044C();
  if (v6)
  {
    v16 = 0;
    v8 = sub_1000E03D8(v6, v7);
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
    v10 = _os_log_send_and_compose_impl(v9, &v16, 0, 0, &_mh_execute_header, v8, 0, "%.*s: entry: %{public}@", buf, 28);

    if (v10)
    {
      fprintf(__stderrp, "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E03D8(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v24 = 34;
      v25 = 2080;
      v26 = "[DIVerifyParams verifyWithError:]";
      v27 = 2114;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: entry: %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  if (([v18[5] connectWithError:error] & 1) != 0 && -[DIBaseParams prepareImageWithXpcHandler:fileMode:error:](self, "prepareImageWithXpcHandler:fileMode:error:", v18[5], 2, error))
  {
    remoteProxy = [v18[5] remoteProxy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000A241C;
    v15[3] = &unk_100202A18;
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