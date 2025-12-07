@interface AAAgeAttestationStateProvider
- (AAAgeAttestationStateProvider)init;
- (void)init;
@end

@implementation AAAgeAttestationStateProvider

- (AAAgeAttestationStateProvider)init
{
  v51.receiver = self;
  v51.super_class = AAAgeAttestationStateProvider;
  v2 = [(AAAgeAttestationStateProvider *)&v51 init];
  if (v2)
  {
    mEMORY[0x1E698DD70] = [MEMORY[0x1E698DD70] sharedManager];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      mEMORY[0x1E698DD70]2 = [MEMORY[0x1E698DD70] sharedManager];
      isAgeAttestationPhase1Enabled = [mEMORY[0x1E698DD70]2 isAgeAttestationPhase1Enabled];

      v8 = _AALogSystem(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        [(AAAgeAttestationStateProvider *)isAgeAttestationPhase1Enabled init:v8];
      }
    }

    else
    {
      LOBYTE(isAgeAttestationPhase1Enabled) = 0;
    }

    mEMORY[0x1E698DC80] = [MEMORY[0x1E698DC80] sharedInstance];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      if (isAgeAttestationPhase1Enabled)
      {
        mEMORY[0x1E698DC80]2 = [MEMORY[0x1E698DC80] sharedInstance];
        v2->_shieldSignInOrCreateFlows = [mEMORY[0x1E698DC80]2 shieldSignInOrCreateFlows];
        p_shieldSignInOrCreateFlows = &v2->_shieldSignInOrCreateFlows;
      }

      else
      {
        v2->_shieldSignInOrCreateFlows = 0;
        p_shieldSignInOrCreateFlows = &v2->_shieldSignInOrCreateFlows;
      }

      v20 = _AALogSystem(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        [(AAAgeAttestationStateProvider *)p_shieldSignInOrCreateFlows init:v20];
      }
    }

    mEMORY[0x1E698DD70]3 = [MEMORY[0x1E698DD70] sharedManager];
    isAgeBasedAccountSupportEnabled = [mEMORY[0x1E698DD70]3 isAgeBasedAccountSupportEnabled];

    v30 = _AALogSystem(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [(AAAgeAttestationStateProvider *)isAgeBasedAccountSupportEnabled init:v30];
    }

    if (isAgeBasedAccountSupportEnabled)
    {
      mEMORY[0x1E698DC80]3 = [MEMORY[0x1E698DC80] sharedInstance];
      protoAccount = [mEMORY[0x1E698DC80]3 protoAccount];
      proto_ageRange = [protoAccount proto_ageRange];

      v41 = _AALogSystem(v40);
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG);
      if (proto_ageRange == 2)
      {
        if (v42)
        {
          [(AAAgeAttestationStateProvider *)v41 init];
        }

        v49 = 1;
      }

      else
      {
        if (v42)
        {
          [(AAAgeAttestationStateProvider *)proto_ageRange init:v41];
        }

        v49 = 0;
      }
    }

    else
    {
      v49 = 0;
    }

    v2->_shieldSignInOrCreateFlowsForTeen = v49;
  }

  return v2;
}

- (void)init
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_4_0(&dword_1B6F6A000, a2, a3, "Not shielding sign in / create flows for non-teen age range: %lu", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end