@interface MFMailMessageLibraryAddMailboxActionsUpgradeStep
+ (id)_readSavedOperationsAtPath:(id)path;
+ (int)runWithConnection:(id)connection;
@end

@implementation MFMailMessageLibraryAddMailboxActionsUpgradeStep

+ (int)runWithConnection:(id)connection
{
  v44 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if ([connectionCopy executeStatementString:@"CREATE TABLE IF NOT EXISTS mailbox_actions (ROWID INTEGER PRIMARY KEY AUTOINCREMENT errorMessage:{account_identifier TEXT, action_type INTEGER, mailbox_name TEXT);", @"Creating mailbox_actions table"}])
  {
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = +[MailAccount mailAccounts];
    v25 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v25)
    {
      v26 = *v38;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v3 = *(*(&v37 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            path = [v3 path];
            v29 = [path stringByAppendingPathComponent:@".OfflineCache/operations"];

            v24 = [self _readSavedOperationsAtPath:v29];
            v5 = [connectionCopy preparedStatementForQueryString:{@"INSERT INTO mailbox_actions (account_identifier, action_type, mailbox_name) VALUES (?, ?, ?)"}];
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            v6 = v24;
            v7 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
            if (v7)
            {
              v8 = *v34;
              while (2)
              {
                for (j = 0; j != v7; ++j)
                {
                  if (*v34 != v8)
                  {
                    objc_enumerationMutation(v6);
                  }

                  v10 = *(*(&v33 + 1) + 8 * j);
                  operationType = [v10 operationType];
                  identifier = [v3 identifier];
                  v13 = identifier;
                  if (operationType == 1)
                  {
                    v14 = 1;
                  }

                  else
                  {
                    v14 = 2;
                  }

                  v41[0] = identifier;
                  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
                  v41[1] = v15;
                  mailboxName = [v10 mailboxName];
                  v41[2] = mailboxName;
                  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:3];

                  v32 = 0;
                  v18 = [v5 executeWithIndexedBindings:v17 usingBlock:0 error:&v32];
                  v19 = v32;
                  v20 = v19;
                  if ((v18 & 1) == 0)
                  {
                    v22 = EDLibraryLog();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                    {
                      [(MFMailMessageLibraryAddMailboxActionsUpgradeStep *)v20 runWithConnection:v22];
                    }

                    v21 = 1;
                    goto LABEL_28;
                  }
                }

                v7 = [v6 countByEnumeratingWithState:&v33 objects:v42 count:16];
                if (v7)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v21 = 0;
        v25 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v25);
    }

    else
    {
      v21 = 0;
    }

LABEL_28:
  }

  else
  {
    v21 = 1;
  }

  return v21;
}

+ (id)_readSavedOperationsAtPath:(id)path
{
  pathCopy = path;
  v4 = objc_opt_new();
  if (pathCopy)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithContentsOfFile:pathCopy options:1 error:0];
    v6 = v5;
    if (v5)
    {
      v12 = 0;
      v7 = [v5 length];
      if (v7 >= 4)
      {
        do
        {
          bytes = [v6 bytes];
          if (*(bytes + v12) != 0x7FFF || *(bytes + v12 + 2) != 255)
          {
            break;
          }

          v12 += 3;
          v10 = [_MFOldIMAPOfflineOperation deserializedCopyFromData:v6 cursor:&v12];
          if (!v10)
          {
            break;
          }

          [v4 addObject:v10];
        }

        while (v12 + 3 < v7);
      }
    }
  }

  return v4;
}

+ (void)runWithConnection:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "Got error %@ inserting mailboxAction", &v2, 0xCu);
}

@end