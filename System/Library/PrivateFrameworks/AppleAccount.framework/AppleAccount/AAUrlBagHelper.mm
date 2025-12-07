@interface AAUrlBagHelper
+ (BOOL)canRepairBeneficiary;
+ (BOOL)canRepairCustodian;
+ (BOOL)isLCInviteAcceptanceEnabled;
+ (int64_t)maxRepairCount;
+ (int64_t)maxRepairCountForBeneficiaries;
@end

@implementation AAUrlBagHelper

+ (BOOL)canRepairCustodian
{
  v17 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"custodianCfgsV2"];

  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "custodianCfgsV2 from urlbag: %@", &v15, 0xCu);
  }

  v6 = [v3 objectForKeyedSubscript:@"canRepairCustodianV2"];
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v7;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Returning canRepairCustodianV2 from urlbag: %@", &v15, 0xCu);
    }

    bOOLValue = [v7 BOOLValue];
  }

  else
  {
    v10 = _os_feature_enabled_impl();
    v11 = v10;
    v12 = _AALogSystem(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 67109120;
      LODWORD(v16) = v11;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "Returning canRepairCustodian based on feature flag: %d", &v15, 8u);
    }

    bOOLValue = _os_feature_enabled_impl();
  }

  v13 = bOOLValue;

  return v13;
}

+ (BOOL)canRepairBeneficiary
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"inheritanceCfgs"];

  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "inheritanceCfgs from urlbag: %@", &v11, 0xCu);
  }

  v6 = [v3 objectForKeyedSubscript:@"canRepairBeneficiaries"];
  v7 = v6;
  if (v6)
  {
    v8 = _AALogSystem(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v7;
      _os_log_impl(&dword_1B6F6A000, v8, OS_LOG_TYPE_DEFAULT, "Returning canRepairBeneficiary from urlbag: %@", &v11, 0xCu);
    }

    LOBYTE(v8) = [v7 BOOLValue];
  }

  else
  {
    v8 = _os_feature_enabled_impl();
    v9 = _AALogSystem(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109120;
      LODWORD(v12) = v8;
      _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "Returning canRepairCustodian based on feature flag: %d", &v11, 8u);
    }
  }

  return v8;
}

+ (int64_t)maxRepairCount
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"custodianCfgsV2"];

  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "custodianCfgsV2 from urlbag: %@", &v11, 0xCu);
  }

  v6 = [v3 objectForKeyedSubscript:@"maxRepairCountV2"];
  v7 = _AALogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCountV2 from urlbag: %@", &v11, 0xCu);
    }

    integerValue = [v6 integerValue];
  }

  else
  {
    if (v8)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCount default value: 1", &v11, 2u);
    }

    integerValue = 1;
  }

  return integerValue;
}

+ (int64_t)maxRepairCountForBeneficiaries
{
  v13 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"inheritanceCfgs"];

  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "beneficiaryCfgs from urlbag: %@", &v11, 0xCu);
  }

  v6 = [v3 objectForKeyedSubscript:@"maxRepairCount"];
  v7 = _AALogSystem(v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCount from urlbag: %@", &v11, 0xCu);
    }

    integerValue = [v6 integerValue];
  }

  else
  {
    if (v8)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_1B6F6A000, v7, OS_LOG_TYPE_DEFAULT, "Returning maxRepairCount default value: 1", &v11, 2u);
    }

    integerValue = 1;
  }

  return integerValue;
}

+ (BOOL)isLCInviteAcceptanceEnabled
{
  v16 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698DDF8] = [MEMORY[0x1E698DDF8] sharedBag];
  v3 = [mEMORY[0x1E698DDF8] configurationAtKey:@"inheritanceCfgs"];

  v5 = _AALogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&dword_1B6F6A000, v5, OS_LOG_TYPE_DEFAULT, "LCInvite: inheritanceCfgs from urlbag: %@", &v14, 0xCu);
  }

  v6 = [v3 objectForKeyedSubscript:@"inviteAcceptanceV2"];
  v7 = +[AAPreferences isLCInviteAcceptanceEnabled];
  v8 = v7;
  v9 = _AALogSystem(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 67109120;
    LODWORD(v15) = v8;
    _os_log_impl(&dword_1B6F6A000, v9, OS_LOG_TYPE_DEFAULT, "LCInvite: isEnabled in Defaults: %{BOOL}d", &v14, 8u);
  }

  if (v8)
  {
    LOBYTE(v11) = 1;
  }

  else if (v6)
  {
    v11 = _AALogSystem(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v6;
      _os_log_impl(&dword_1B6F6A000, v11, OS_LOG_TYPE_DEFAULT, "LCInvite: Returning LCInviteAcceptance from urlbag: %@", &v14, 0xCu);
    }

    LOBYTE(v11) = [v6 BOOLValue];
  }

  else
  {
    v11 = _os_feature_enabled_impl();
    v12 = _AALogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 67109120;
      LODWORD(v15) = v11;
      _os_log_impl(&dword_1B6F6A000, v12, OS_LOG_TYPE_DEFAULT, "LCInvite: No IdMS feature flag found. is OS FeatureFlag Enabled %d", &v14, 8u);
    }
  }

  return v11;
}

@end