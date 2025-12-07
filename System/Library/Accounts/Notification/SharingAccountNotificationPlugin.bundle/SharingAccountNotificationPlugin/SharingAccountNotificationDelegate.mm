@interface SharingAccountNotificationDelegate
- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount;
@end

@implementation SharingAccountNotificationDelegate

- (void)account:(id)account didChangeWithType:(int)type inStore:(id)store oldAccount:(id)oldAccount
{
  v51 = *MEMORY[0x29EDCA608];
  accountCopy = account;
  oldAccountCopy = oldAccount;
  v10 = oldAccountCopy;
  if (type == 3)
  {
    v11 = oldAccountCopy;
  }

  else
  {
    v11 = accountCopy;
  }

  v12 = v11;
  accountType = [v12 accountType];
  identifier = [accountType identifier];

  v15 = *MEMORY[0x29EDBE2C0];
  v16 = [v10 aa_isAccountClass:*MEMORY[0x29EDBE2C0]];
  v17 = [accountCopy aa_isAccountClass:v15];
  v18 = v17;
  v19 = sub_29C91314C(v17);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v39 = @"NO";
    v41 = 67110402;
    *v42 = type;
    if (v18)
    {
      v40 = @"YES";
    }

    else
    {
      v40 = @"NO";
    }

    if (v16)
    {
      v39 = @"YES";
    }

    *&v42[4] = 2112;
    *&v42[6] = identifier;
    v43 = 2112;
    v44 = v40;
    v45 = 2112;
    v46 = v39;
    v47 = 2112;
    v48 = v10;
    v49 = 2112;
    v50 = accountCopy;
    _os_log_debug_impl(&dword_29C912000, v19, OS_LOG_TYPE_DEBUG, "Account change with parameters (type: %d, identifier: %@, newIsPrimary: %@, oldIsPrimary: %@, old account: %@, account: %@)", &v41, 0x3Au);
  }

  v20 = [identifier isEqualToString:*MEMORY[0x29EDB81C8]];
  if (v20)
  {
    if (accountCopy)
    {
      v21 = 0;
    }

    else
    {
      v21 = type == 3;
    }

    if (!v21 || v10 == 0)
    {
      v23 = 0;
    }

    else
    {
      v23 = v16;
    }

    if (v23 == 1)
    {
      v24 = sub_29C91314C(v20);
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
LABEL_19:

        [MEMORY[0x29EDC66A8] appleAccountSignedOut];
        goto LABEL_49;
      }

      v41 = 138412290;
      *v42 = v10;
      v25 = "Primary account deleted (old account: %@)";
LABEL_18:
      _os_log_impl(&dword_29C912000, v24, OS_LOG_TYPE_DEFAULT, v25, &v41, 0xCu);
      goto LABEL_19;
    }

    if (v16)
    {
      if (v18)
      {
        if (!accountCopy || type != 1 || v10)
        {
          goto LABEL_49;
        }

        goto LABEL_36;
      }

      identifier2 = [v10 identifier];
      identifier3 = [accountCopy identifier];
      v33 = [identifier2 isEqualToString:identifier3];

      if (type == 2 && v33)
      {
        v24 = sub_29C91314C(v34);
        if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_19;
        }

        v41 = 138412290;
        *v42 = accountCopy;
        v25 = "Primary account demoted to secondary (account: %@)";
        goto LABEL_18;
      }
    }

    else
    {
      if (type != 1 || v10 != 0 || accountCopy == 0)
      {
        v28 = 0;
      }

      else
      {
        v28 = v18;
      }

      if (v28)
      {
LABEL_36:
        v29 = sub_29C91314C(v20);
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
LABEL_39:

          [MEMORY[0x29EDC66A8] appleAccountSignedIn];
          goto LABEL_49;
        }

        v41 = 138412290;
        *v42 = accountCopy;
        v30 = "Primary account added (account: %@)";
LABEL_38:
        _os_log_impl(&dword_29C912000, v29, OS_LOG_TYPE_DEFAULT, v30, &v41, 0xCu);
        goto LABEL_39;
      }

      if (v18)
      {
        identifier4 = [v10 identifier];
        identifier5 = [accountCopy identifier];
        v37 = [identifier4 isEqualToString:identifier5];

        if (type == 2)
        {
          if (v37)
          {
            v29 = sub_29C91314C(v38);
            if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_39;
            }

            v41 = 138412290;
            *v42 = accountCopy;
            v30 = "Account promoted to primary (account: %@)";
            goto LABEL_38;
          }
        }
      }
    }
  }

LABEL_49:
}

@end