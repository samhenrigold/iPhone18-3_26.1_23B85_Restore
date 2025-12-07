@interface CDPRecoveryKeyStatusProvider
- (BOOL)idmsHasRK;
- (BOOL)isRecoveryKeySetInOctagonWithError:(id *)error;
- (BOOL)isRecoveryKeySetInSOSWithError:(id *)error;
- (CDPRecoveryKeyStatusProvider)initWithContext:(id)context;
- (void)idmsHasRK;
@end

@implementation CDPRecoveryKeyStatusProvider

- (CDPRecoveryKeyStatusProvider)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = CDPRecoveryKeyStatusProvider;
  v5 = [(CDPRecoveryKeyStatusProvider *)&v9 init];
  if (v5)
  {
    v6 = [CDPContext preflightContext:contextCopy];
    context = v5->_context;
    v5->_context = v6;
  }

  return v5;
}

- (BOOL)idmsHasRK
{
  mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
  altDSID = [(CDPContext *)self->_context altDSID];
  v5 = [mEMORY[0x1E698DC80] authKitAccountWithAltDSID:altDSID];

  if (!v5)
  {
    v9 = _CDPLogSystem(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(CDPRecoveryKeyStatusProvider *)v9 idmsHasRK:v10];
    }

    goto LABEL_7;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_7:
    bOOLValue = 0;
    goto LABEL_8;
  }

  v7 = [mEMORY[0x1E698DC80] hasModernRecoveryKeyForAccount:v5];
  bOOLValue = [v7 BOOLValue];

LABEL_8:
  return bOOLValue;
}

- (BOOL)isRecoveryKeySetInOctagonWithError:(id *)error
{
  cliqueConfiguration = [(CDPContext *)self->_context cliqueConfiguration];
  if (cliqueConfiguration)
  {
    v18 = 0;
    v5 = [MEMORY[0x1E697AA80] isRecoveryKeySetInOctagon:cliqueConfiguration error:&v18];
    v6 = v18;
    v7 = v6;
    if (v6)
    {
      v8 = _CDPLogSystem(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CDPRecoveryKeyStatusProvider *)v7 isRecoveryKeySetInOctagonWithError:v8, v9, v10, v11, v12, v13, v14];
      }

      if (error)
      {
        v15 = v7;
        v5 = 0;
        *error = v7;
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v16 = _CDPLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CDPRecoveryKeyStatusProvider isRecoveryKeySetInOctagonWithError:v16];
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] cdp_errorWithCode:-5217 underlyingError:*error];
      *error = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (BOOL)isRecoveryKeySetInSOSWithError:(id *)error
{
  cliqueConfiguration = [(CDPContext *)self->_context cliqueConfiguration];
  v17 = 0;
  v5 = [MEMORY[0x1E697AA80] isRecoveryKeySetInSOS:cliqueConfiguration error:&v17];
  v6 = v17;
  v7 = v6;
  if (v6)
  {
    v8 = _CDPLogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CDPRecoveryKeyStatusProvider *)v7 isRecoveryKeySetInSOSWithError:v8, v9, v10, v11, v12, v13, v14];
    }

    if (error)
    {
      v15 = v7;
      v5 = 0;
      *error = v7;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (void)idmsHasRK
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[CDPRecoveryKeyStatusProvider idmsHasRK]";
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, self, a3, "%s: Can't find account. Returning...", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isRecoveryKeySetInOctagonWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Received error while checking if RK is set in Octagon: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)isRecoveryKeySetInSOSWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_3(&dword_1DED99000, a2, a3, "Received error while checking if RK is set in SOS: %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end