@interface TKSmartCardTokenSession
- (TKSmartCard)smartCard;
- (TKSmartCardTokenSession)initWithToken:(id)token;
- (id)getSmartCardWithError:(id *)error;
- (id)name;
- (void)beginRequest;
- (void)endRequest;
@end

@implementation TKSmartCardTokenSession

- (TKSmartCardTokenSession)initWithToken:(id)token
{
  v9.receiver = self;
  v9.super_class = TKSmartCardTokenSession;
  v3 = [(TKTokenSession *)&v9 initWithToken:token];
  v4 = v3;
  if (v3)
  {
    token = [(TKTokenSession *)v3 token];
    smartCard = [token smartCard];
    smartCard = v4->_smartCard;
    v4->_smartCard = smartCard;
  }

  return v4;
}

- (void)beginRequest
{
  v2.receiver = self;
  v2.super_class = TKSmartCardTokenSession;
  [(TKTokenSession *)&v2 beginRequest];
}

- (TKSmartCard)smartCard
{
  v8 = 0;
  v3 = [(TKSmartCardTokenSession *)self getSmartCardWithError:&v8];
  v4 = v8;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [[TKSmartCardWithError alloc] initWithCard:self->_smartCard error:v4];
  }

  v6 = v5;

  return v6;
}

- (id)getSmartCardWithError:(id *)error
{
  token = [(TKTokenSession *)self token];
  v6 = TK_LOG_token_1(token);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(TKSmartCardTokenSession *)self getSmartCardWithError:v6];
  }

  v7 = [token AID];
  v8 = v7;
  if (!v7 || self->_hasSession)
  {

LABEL_6:
    v9 = self->_smartCard;
    goto LABEL_7;
  }

  proprietaryCardUsage = [token proprietaryCardUsage];

  if (proprietaryCardUsage)
  {
    goto LABEL_6;
  }

  smartCard = self->_smartCard;
  v25 = 0;
  v13 = [(TKSmartCard *)smartCard beginSessionWithError:&v25];
  v14 = v25;
  v15 = v14;
  if (!v13)
  {
    v21 = TK_LOG_token_1(v14);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [(TKSmartCardTokenSession *)v15 getSmartCardWithError:v21];
    }

    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v16 = self->_smartCard;
  v17 = [token AID];
  v24 = v15;
  v18 = [(TKSmartCard *)v16 selectApplication:v17 error:&v24];
  v19 = v24;

  if (v18)
  {
    self->_hasSession = 1;

    goto LABEL_6;
  }

  v23 = TK_LOG_token_1(v20);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    [(TKSmartCardTokenSession *)v19 getSmartCardWithError:v23];
  }

  [(TKSmartCard *)self->_smartCard endSession];
  v15 = v19;
  if (error)
  {
LABEL_17:
    v22 = v15;
    *error = v15;
  }

LABEL_18:

  v9 = 0;
LABEL_7:

  return v9;
}

- (void)endRequest
{
  if (self->_hasSession)
  {
    [(TKSmartCard *)self->_smartCard endSession];
    self->_hasSession = 0;
  }

  v3.receiver = self;
  v3.super_class = TKSmartCardTokenSession;
  [(TKTokenSession *)&v3 endRequest];
}

- (id)name
{
  slot = [(TKSmartCard *)self->_smartCard slot];
  name = [slot name];

  return name;
}

- (void)getSmartCardWithError:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 112);
  v3[0] = 67240192;
  v3[1] = v2;
  _os_log_debug_impl(&dword_1DF413000, a2, OS_LOG_TYPE_DEBUG, "token session persists: %{public}d", v3, 8u);
}

- (void)getSmartCardWithError:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "attempt to begin session failed: %{public}@", &v2, 0xCu);
}

- (void)getSmartCardWithError:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1DF413000, a2, OS_LOG_TYPE_ERROR, "attempt to select AID failed: %{public}@", &v2, 0xCu);
}

@end