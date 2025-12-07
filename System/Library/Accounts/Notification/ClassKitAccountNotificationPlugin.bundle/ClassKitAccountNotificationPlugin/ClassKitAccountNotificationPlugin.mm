void sub_29C8A4FF8(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  CLSInitLog();
  v2 = *MEMORY[0x29EDB87C0];
  if (os_log_type_enabled(*MEMORY[0x29EDB87C0], OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 56);
    v4 = v2;
    if ((v3 - 1) >= 5)
    {
      v5 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"Unknown changeType: %lu", v3];
    }

    else
    {
      v5 = off_29F32D620[(v3 - 1)];
    }

    v6 = [*(a1 + 32) username];
    v7 = [*(a1 + 40) username];
    *buf = 138544386;
    v18 = v5;
    v19 = 2160;
    v20 = 1752392040;
    v21 = 2112;
    v22 = v6;
    v23 = 2160;
    v24 = 1752392040;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_29C8A4000, v4, OS_LOG_TYPE_DEFAULT, "ClassKitAccountNotificationPlugin: Account changed: [type: %{public}@, newAccount.username.hash: %{mask.hash}@, oldAccount.username.hash: %{mask.hash}@]", buf, 0x34u);
  }

  CLSLogDebugCurrentPersona();
  v8 = *(a1 + 56);
  if (v8 != 3)
  {
    if (v8 == 1)
    {
      v9 = *(a1 + 32);
      if (!v9)
      {
        return;
      }

      v10 = [v9 accountType];
      v11 = [v10 identifier];
      if (([v11 isEqualToString:*MEMORY[0x29EDB81C8]] & 1) == 0)
      {

        goto LABEL_15;
      }

      v12 = [*(a1 + 32) aa_cloudKitAccount];

      if (!v12)
      {
        return;
      }
    }

LABEL_14:
    v10 = [*(a1 + 48) connection];
    [v10 accountChanged];
LABEL_15:

    return;
  }

  v13 = *(a1 + 40);
  if (v13)
  {
    v14 = [v13 accountType];
    v15 = [v14 identifier];
    v16 = [v15 isEqualToString:*MEMORY[0x29EDB81C8]];

    if (v16)
    {
      goto LABEL_14;
    }
  }
}