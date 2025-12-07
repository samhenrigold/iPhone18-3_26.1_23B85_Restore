@interface TKSmartCardTokenDriver
- (id)createTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage error:(id *)error;
@end

@implementation TKSmartCardTokenDriver

- (id)createTokenWithSlot:(id)slot AID:(id)d proprietaryCardUsage:(BOOL)usage error:(id *)error
{
  usageCopy = usage;
  v54 = *MEMORY[0x1E69E9840];
  slotCopy = slot;
  dCopy = d;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5;
  v43 = __Block_byref_object_dispose__5;
  v44 = 0;
  v12 = [[TKSmartCardSlot alloc] initWithEndpoint:slotCopy error:error];
  v13 = v12;
  if (!v12)
  {
    goto LABEL_15;
  }

  v14 = TK_LOG_token_1(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    name = [(TKSmartCardSlot *)v13 name];
    [TKSmartCardTokenDriver createTokenWithSlot:name AID:dCopy proprietaryCardUsage:v53 error:v14];
  }

  delegate = [(TKTokenDriver *)self delegate];
  makeSmartCard = [(TKSmartCardSlot *)v13 makeSmartCard];
  v18 = makeSmartCard;
  if (dCopy)
  {
    if (!usageCopy)
    {
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __77__TKSmartCardTokenDriver_createTokenWithSlot_AID_proprietaryCardUsage_error___block_invoke;
      v33[3] = &unk_1E86B7DA0;
      v34 = makeSmartCard;
      v35 = dCopy;
      v38 = &v39;
      v36 = delegate;
      selfCopy = self;
      [v34 inSessionWithError:error executeBlock:v33];

      v20 = v34;
      goto LABEL_10;
    }

    v19 = [delegate tokenDriver:self createTokenForSmartCard:makeSmartCard AID:dCopy error:error];
  }

  else
  {
    v19 = [delegate tokenDriver:self createTokenForSmartCard:makeSmartCard AID:0 error:error];
  }

  v20 = v40[5];
  v40[5] = v19;
LABEL_10:

  if (v40[5])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"SmartCard driver created token not inherited from TKSmartCardToken class (token %@)", v40[5]}];
    }

    tokenDriver = [v40[5] tokenDriver];
    keepAlive = [tokenDriver keepAlive];
    [v40[5] setKeepAlive:keepAlive];

    [v40[5] setProprietaryCardUsage:usageCopy];
  }

  else
  {
    v26 = TK_LOG_token_1(v21);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      name2 = [(TKSmartCardSlot *)v13 name];
      v31 = name2;
      if (error)
      {
        v32 = *error;
      }

      else
      {
        v32 = 0;
      }

      *buf = 138543874;
      v48 = name2;
      v49 = 2114;
      v50 = dCopy;
      v51 = 2114;
      v52 = v32;
      _os_log_error_impl(&dword_1DF413000, v26, OS_LOG_TYPE_ERROR, "failed to create token in slot %{public}@ (AID:%{public}@, error:%{public}@)", buf, 0x20u);
    }

    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      v28 = *error;
      if (*error)
      {
        v45 = *MEMORY[0x1E696AA08];
        v46 = v28;
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      }

      else
      {
        v29 = 0;
      }

      *error = [v27 errorWithDomain:@"CryptoTokenKit" code:-7 userInfo:v29];
      if (v28)
      {
      }
    }
  }

LABEL_15:
  v24 = v40[5];

  _Block_object_dispose(&v39, 8);

  return v24;
}

uint64_t __77__TKSmartCardTokenDriver_createTokenWithSlot_AID_proprietaryCardUsage_error___block_invoke(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) selectApplication:*(a1 + 40) error:a2])
  {
    v4 = [*(a1 + 48) tokenDriver:*(a1 + 56) createTokenForSmartCard:*(a1 + 32) AID:*(a1 + 40) error:a2];
    v5 = *(*(a1 + 64) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  return 1;
}

- (void)createTokenWithSlot:(void *)a1 AID:(uint64_t)a2 proprietaryCardUsage:(uint8_t *)buf error:(os_log_t)log .cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1DF413000, log, OS_LOG_TYPE_DEBUG, "create token for token in %{public}@ (AID:%{public}@)", buf, 0x16u);
}

@end