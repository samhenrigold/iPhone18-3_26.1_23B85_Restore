@interface CDPManateeStateController
- (BOOL)_checkCircleStateWithError:(id *)error;
- (BOOL)isManateeAvailable:(id *)available;
- (CDPManateeStateController)init;
- (CDPManateeStateController)initWithContext:(id)context;
- (CDPManateeStateController)initWithContext:(id)context circleProxy:(id)proxy;
@end

@implementation CDPManateeStateController

- (CDPManateeStateController)init
{
  v3 = +[CDPContext contextForPrimaryAccount];
  v4 = [(CDPManateeStateController *)self initWithContext:v3];

  return v4;
}

- (CDPManateeStateController)initWithContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    v5 = _CDPLogSystem(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [CDPManateeStateController initWithContext:v5];
    }

    contextCopy = +[CDPContext contextForPrimaryAccount];
  }

  v6 = [[CDPCircleProxyImpl alloc] initWithContext:contextCopy];
  v7 = [(CDPManateeStateController *)self initWithContext:contextCopy circleProxy:v6];

  return v7;
}

- (CDPManateeStateController)initWithContext:(id)context circleProxy:(id)proxy
{
  contextCopy = context;
  proxyCopy = proxy;
  v18.receiver = self;
  v18.super_class = CDPManateeStateController;
  v9 = [(CDPManateeStateController *)&v18 init];
  p_isa = &v9->super.isa;
  if (!v9)
  {
    v16 = _CDPLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CDPManateeStateController initWithContext:a2 circleProxy:?];
    }

    goto LABEL_11;
  }

  v11 = [CDPContext preflightContext:contextCopy];
  if (!v11)
  {
    v16 = _CDPLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CDPManateeStateController initWithContext:a2 circleProxy:?];
    }

    goto LABEL_11;
  }

  v12 = v11;
  objc_storeStrong(p_isa + 2, v11);

  v13 = proxyCopy;
  if (!v13)
  {
    v16 = _CDPLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CDPManateeStateController initWithContext:a2 circleProxy:?];
    }

LABEL_11:

    v15 = 0;
    goto LABEL_12;
  }

  v14 = v13;
  objc_storeStrong(p_isa + 1, proxy);

  v15 = p_isa;
LABEL_12:

  return v15;
}

- (BOOL)isManateeAvailable:(id *)available
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    altDSID = [(CDPContext *)self->_context altDSID];
    *buf = 141558274;
    v22 = 1752392040;
    v23 = 2112;
    v24 = altDSID;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "CDPManateeStateController: Trying to determine manatee availability for altDSID: %{mask.hash}@", buf, 0x16u);
  }

  context = self->_context;
  v20 = 0;
  v8 = [(CDPContext *)context isiCDPEligibleWithError:&v20];
  v9 = v20;
  v10 = v9;
  if (v8)
  {
    v19 = v9;
    v11 = [(CDPManateeStateController *)self _checkCircleStateWithError:&v19];
    v12 = v19;

    if (v11)
    {
      v14 = 1;
LABEL_16:
      v10 = v12;
      goto LABEL_17;
    }

    v16 = _CDPLogSystem(v13);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(CDPManateeStateController *)v12 isManateeAvailable:v16];
    }

    if (!available)
    {
      v14 = 0;
      goto LABEL_16;
    }

    v10 = v12;
    goto LABEL_14;
  }

  v15 = _CDPLogSystem(v9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [(CDPManateeStateController *)v10 isManateeAvailable:v15];
  }

  if (available)
  {
LABEL_14:
    v17 = v10;
    v14 = 0;
    *available = v10;
    goto LABEL_17;
  }

  v14 = 0;
LABEL_17:

  return v14;
}

- (BOOL)_checkCircleStateWithError:(id *)error
{
  v5 = _CDPLogSystem(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1DED99000, v5, OS_LOG_TYPE_DEFAULT, "CDPManateeStateController: Checking security eligibility state...", buf, 2u);
  }

  circleProxy = self->_circleProxy;
  v11 = 0;
  v7 = [(CDPDCircleProxy *)circleProxy cachedCliqueStatus:&v11];
  v8 = v11;
  if (v7 == 1)
  {
    v9 = self->_circleProxy != 0;
  }

  else if (error)
  {
    [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5403 underlyingError:v8];
    *error = v9 = 0;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)initWithContext:(uint64_t)a1 circleProxy:(const char *)a2 .cold.1(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_1DED99000, v5, v6, "[%{public}@ %{public}@]: Value for '%{public}s' was nil, failing init", v7, v8, v9, v10);
}

- (void)initWithContext:(uint64_t)a1 circleProxy:(const char *)a2 .cold.2(uint64_t a1, const char *a2)
{
  v3 = objc_opt_class();
  v4 = NSStringFromSelector(a2);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_1DED99000, v5, v6, "[%{public}@ %{public}@]: Value for '%{public}s' was nil, failing init", v7, v8, v9, v10);
}

- (void)initWithContext:(const char *)a1 circleProxy:.cold.3(const char *a1)
{
  v2 = objc_opt_class();
  v3 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_4(&dword_1DED99000, v4, v5, "[%{public}@ %{public}@]: Value for '%{public}s' was nil, failing init", v6, v7, v8, v9);
}

- (void)isManateeAvailable:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "CDPManateeStateController: Manatee not available due to iCDP eligibility issue: %{public}@", &v2, 0xCu);
}

- (void)isManateeAvailable:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DED99000, a2, OS_LOG_TYPE_ERROR, "CDPManateeStateController: Manatee not available due to circle failure with error: %{public}@", &v2, 0xCu);
}

@end