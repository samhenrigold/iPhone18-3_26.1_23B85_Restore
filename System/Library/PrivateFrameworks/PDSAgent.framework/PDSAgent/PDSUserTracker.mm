@interface PDSUserTracker
+ (id)standardAccountStore;
- (BOOL)validUser:(id)user withError:(id *)error;
- (PDSUserTracker)initWithAccountStoreBlock:(id)block;
- (id)_accountForUser:(id)user withError:(id *)error;
- (id)tokenAndIdentifier:(id *)identifier forUser:(id)user withError:(id *)error;
- (void)refreshCredentialsForUser:(id)user withError:(id *)error completion:(id)completion;
@end

@implementation PDSUserTracker

+ (id)standardAccountStore
{
  v2 = objc_alloc_init(MEMORY[0x277CB8F48]);

  return v2;
}

- (PDSUserTracker)initWithAccountStoreBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    [PDSUserTracker initWithAccountStoreBlock:];
  }

  v9.receiver = self;
  v9.super_class = PDSUserTracker;
  v5 = [(PDSUserTracker *)&v9 init];
  if (v5)
  {
    v6 = MEMORY[0x25F8A7090](blockCopy);
    accountStoreBlock = v5->_accountStoreBlock;
    v5->_accountStoreBlock = v6;
  }

  return v5;
}

- (BOOL)validUser:(id)user withError:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    [PDSUserTracker validUser:withError:];
  }

  if ([userCopy userType] == 1 && (objc_msgSend(userCopy, "userID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = (*(self->_accountStoreBlock + 2))();
    v10 = v9;
    if (v9)
    {
      v11 = *MEMORY[0x277CB8BA0];
      v33 = 0;
      v12 = [v9 accountTypeWithAccountTypeIdentifier:v11 error:&v33];
      v13 = v33;
      v14 = v13;
      if (v12)
      {
        v26 = v13;
        userID = [userCopy userID];
        v27 = v12;
        v28 = v10;
        [v10 accountsWithAccountType:v12];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v16 = v32 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v30;
          while (2)
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v30 != v19)
              {
                objc_enumerationMutation(v16);
              }

              accountProperties = [*(*(&v29 + 1) + 8 * i) accountProperties];
              v22 = [accountProperties objectForKeyedSubscript:@"personID"];

              LODWORD(accountProperties) = [userID isEqualToString:v22];
              if (accountProperties)
              {

                v23 = 1;
                goto LABEL_23;
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
            if (v18)
            {
              continue;
            }

            break;
          }
        }

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
          *error = v23 = 0;
        }

        else
        {
          v23 = 0;
        }

LABEL_23:
        v12 = v27;
        v10 = v28;
        v14 = v26;
      }

      else if (error)
      {
        v24 = v13;
        v23 = 0;
        *error = v14;
      }

      else
      {
        v23 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-100 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)tokenAndIdentifier:(id *)identifier forUser:(id)user withError:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    [PDSUserTracker tokenAndIdentifier:forUser:withError:];
  }

  if ([userCopy userType] == 1 && (objc_msgSend(userCopy, "userID"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v10))
  {
    v11 = (*(self->_accountStoreBlock + 2))();
    v12 = v11;
    if (v11)
    {
      v13 = *MEMORY[0x277CB8BB0];
      v36 = 0;
      v14 = [v11 accountTypeWithAccountTypeIdentifier:v13 error:&v36];
      v15 = v36;
      v16 = v15;
      if (v14)
      {
        v29 = v15;
        userID = [userCopy userID];
        v30 = v14;
        v31 = v12;
        [v12 accountsWithAccountType:v14];
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v18 = v35 = 0u;
        v19 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v33;
LABEL_9:
          v22 = 0;
          while (1)
          {
            if (*v33 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v32 + 1) + 8 * v22);
            aida_dsid = [v23 aida_dsid];
            if ([userID isEqualToString:aida_dsid])
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v32 objects:v37 count:16];
              if (v20)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            }
          }

          v26 = v23;

          if (!v26)
          {
            goto LABEL_25;
          }

          v25 = [v26 aida_tokenWithExpiryCheckForService:@"com.apple.gs.global.auth"];
          if (identifier)
          {
            *identifier = [v26 aida_alternateDSID];
          }
        }

        else
        {
LABEL_15:

LABEL_25:
          if (error)
          {
            [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
            *error = v25 = 0;
          }

          else
          {
            v25 = 0;
          }
        }

        v14 = v30;
        v12 = v31;
        v16 = v29;
      }

      else if (error)
      {
        v27 = v15;
        v25 = 0;
        *error = v16;
      }

      else
      {
        v25 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
      *error = v25 = 0;
    }

    else
    {
      v25 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-100 userInfo:0];
    *error = v25 = 0;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (void)refreshCredentialsForUser:(id)user withError:(id *)error completion:(id)completion
{
  userCopy = user;
  completionCopy = completion;
  v9 = (*(self->_accountStoreBlock + 2))();
  if (v9)
  {
    v10 = [(PDSUserTracker *)self _accountForUser:userCopy withError:error];
    if (v10)
    {
      [v9 aida_renewCredentialsForAccount:v10 services:&unk_286FBBBD0 completion:completionCopy];
    }

    else if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
    }
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
  }
}

- (id)_accountForUser:(id)user withError:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  userCopy = user;
  if (!userCopy)
  {
    [PDSUserTracker _accountForUser:withError:];
  }

  if ([userCopy userType] == 1 && (objc_msgSend(userCopy, "userID"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = (*(self->_accountStoreBlock + 2))();
    v10 = v9;
    if (v9)
    {
      v11 = *MEMORY[0x277CB8BB0];
      v32 = 0;
      v12 = [v9 accountTypeWithAccountTypeIdentifier:v11 error:&v32];
      v13 = v32;
      v14 = v13;
      if (v12)
      {
        v26 = v13;
        userID = [userCopy userID];
        v27 = v12;
        [v10 accountsWithAccountType:v12];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v16 = v31 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v29;
LABEL_9:
          v20 = 0;
          while (1)
          {
            if (*v29 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v28 + 1) + 8 * v20);
            aida_dsid = [v21 aida_dsid];
            if ([userID isEqualToString:aida_dsid])
            {
              break;
            }

            if (v18 == ++v20)
            {
              v18 = [v16 countByEnumeratingWithState:&v28 objects:v33 count:16];
              if (v18)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            }
          }

          v23 = v21;

          v14 = v26;
          v12 = v27;
          if (v23)
          {
            goto LABEL_28;
          }
        }

        else
        {
LABEL_15:

          v14 = v26;
          v12 = v27;
        }

        if (error)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-102 userInfo:0];
          *error = v23 = 0;
        }

        else
        {
          v23 = 0;
        }

LABEL_28:
      }

      else if (error)
      {
        v24 = v13;
        v23 = 0;
        *error = v14;
      }

      else
      {
        v23 = 0;
      }
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-101 userInfo:0];
      *error = v23 = 0;
    }

    else
    {
      v23 = 0;
    }
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D37B18] code:-100 userInfo:0];
    *error = v23 = 0;
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (void)initWithAccountStoreBlock:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"accountStoreBlock" object:? file:? lineNumber:? description:?];
}

- (void)validUser:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)tokenAndIdentifier:forUser:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

- (void)_accountForUser:withError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0();
  [v0 handleFailureInMethod:@"user" object:? file:? lineNumber:? description:?];
}

@end