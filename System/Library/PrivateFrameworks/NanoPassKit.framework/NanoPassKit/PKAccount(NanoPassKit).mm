@interface PKAccount(NanoPassKit)
- (uint64_t)npkShouldShowSavingsAccountInfo;
@end

@implementation PKAccount(NanoPassKit)

- (uint64_t)npkShouldShowSavingsAccountInfo
{
  v28 = *MEMORY[0x277D85DE8];
  state = [self state];
  if (state > 5)
  {
    return 0;
  }

  if (((1 << state) & 0x31) != 0)
  {
    v3 = pk_General_log(state);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v4)
    {
      return 0;
    }

    v6 = pk_General_log(v5);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      return 0;
    }

    v7 = objc_opt_class();
    v8 = v7;
    [self state];
    v9 = PKAccountStateToString();
    v10 = NSStringFromBOOL();
    v20 = 138412802;
    v21 = v7;
    v22 = 2112;
    v23 = v9;
    v24 = 2112;
    v25 = v10;
    _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@ account in %@ state. Should show savings: %@", &v20, 0x20u);

LABEL_6:
    goto LABEL_7;
  }

  if (((1 << state) & 6) == 0 && ([self supportsOneTimeDeposit] & 1) == 0)
  {
    supportsOneTimeWithdrawal = [self supportsOneTimeWithdrawal];
    if ((supportsOneTimeWithdrawal & 1) == 0)
    {
      v13 = pk_General_log(supportsOneTimeWithdrawal);
      v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);

      if (!v14)
      {
        return 0;
      }

      v6 = pk_General_log(v15);
      if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_7;
      }

      v16 = objc_opt_class();
      v8 = v16;
      [self state];
      v17 = PKAccountStateToString();
      [self supportsOneTimeDeposit];
      v18 = NSStringFromBOOL();
      [self supportsOneTimeWithdrawal];
      v19 = NSStringFromBOOL();
      v20 = 138413058;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_25B300000, v6, OS_LOG_TYPE_DEFAULT, "Notice: %@ account in %@ state, supports one time deposit %@, supports one time withdrawal %@.", &v20, 0x2Au);

      goto LABEL_6;
    }
  }

  return 1;
}

@end