@interface AASignedOutAccountKeychain
- (AASignedOutAccountKeychain)init;
- (AASignedOutAccountKeychain)initWithKeychainManagerStore:(id)store;
- (id)_lastSignedOutAccountDescriptor;
- (id)fetchLastSignedOutAccountAltDSID:(id *)d;
- (void)deleteLastSignedOutAccountAltDSID:(id *)d;
- (void)setLastSignedOutAccountAltDSID:(id)d error:(id *)error;
@end

@implementation AASignedOutAccountKeychain

- (AASignedOutAccountKeychain)init
{
  v6.receiver = self;
  v6.super_class = AASignedOutAccountKeychain;
  v2 = [(AASignedOutAccountKeychain *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    keychainManager = v2->_keychainManager;
    v2->_keychainManager = v3;
  }

  return v2;
}

- (AASignedOutAccountKeychain)initWithKeychainManagerStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = AASignedOutAccountKeychain;
  v6 = [(AASignedOutAccountKeychain *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keychainManager, store);
  }

  return v7;
}

- (id)fetchLastSignedOutAccountAltDSID:(id *)d
{
  _lastSignedOutAccountDescriptor = [(AASignedOutAccountKeychain *)self _lastSignedOutAccountDescriptor];
  keychainManager = self->_keychainManager;
  v23 = 0;
  v7 = [(AAKeychainManagerStore *)keychainManager aa_keychainItemForDescriptor:_lastSignedOutAccountDescriptor error:&v23];
  v8 = v23;
  value = [v7 value];
  code = [v8 code];
  if (code == -25300)
  {
    domain = [v8 domain];
    v12 = [domain isEqualToString:*MEMORY[0x1E696A768]];

    if (v12)
    {
      v13 = _AALogSystem(code);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [AASignedOutAccountKeychain fetchLastSignedOutAccountAltDSID:v13];
      }

LABEL_8:

      if (d)
      {
        v14 = v8;
        v15 = 0;
        *d = v8;
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_19;
    }
  }

  if (v8)
  {
    v13 = _AALogSystem(code);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [AASignedOutAccountKeychain fetchLastSignedOutAccountAltDSID:];
    }

    goto LABEL_8;
  }

  v22 = 0;
  v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:value error:&v22];
  v17 = v22;
  v18 = v17;
  if (value)
  {
    v15 = v16;
  }

  else
  {
    v19 = _AALogSystem(v17);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [AASignedOutAccountKeychain fetchLastSignedOutAccountAltDSID:];
    }

    if (d)
    {
      v20 = v18;
      v15 = 0;
      *d = v18;
    }

    else
    {
      v15 = 0;
    }
  }

LABEL_19:

  return v15;
}

- (void)setLastSignedOutAccountAltDSID:(id)d error:(id *)error
{
  v19 = 0;
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:d requiringSecureCoding:1 error:&v19];
  v7 = v19;
  v8 = v7;
  if (v6)
  {
    _lastSignedOutAccountDescriptor = [(AASignedOutAccountKeychain *)self _lastSignedOutAccountDescriptor];
    v10 = [objc_alloc(MEMORY[0x1E6985DE0]) initWithDescriptor:_lastSignedOutAccountDescriptor value:v6];
    keychainManager = self->_keychainManager;
    v18 = 0;
    [(AAKeychainManagerStore *)keychainManager aa_addOrUpdateKeychainItem:v10 error:&v18];
    v12 = v18;
    v13 = v12;
    if (v12)
    {
      v14 = _AALogSystem(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [AASignedOutAccountKeychain setLastSignedOutAccountAltDSID:error:];
      }

      if (error)
      {
        v15 = v13;
        *error = v13;
      }
    }
  }

  else
  {
    v16 = _AALogSystem(v7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AASignedOutAccountKeychain setLastSignedOutAccountAltDSID:error:];
    }

    if (error)
    {
      v17 = v8;
      *error = v8;
    }
  }
}

- (void)deleteLastSignedOutAccountAltDSID:(id *)d
{
  _lastSignedOutAccountDescriptor = [(AASignedOutAccountKeychain *)self _lastSignedOutAccountDescriptor];
  v6 = [(AAKeychainManagerStore *)self->_keychainManager aa_deleteKeychainItemsForDescriptor:_lastSignedOutAccountDescriptor error:d];
  if (d)
  {
    v7 = _AALogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(AASignedOutAccountKeychain *)d deleteLastSignedOutAccountAltDSID:v7, v8, v9, v10, v11, v12, v13];
    }
  }
}

- (id)_lastSignedOutAccountDescriptor
{
  v2 = objc_alloc_init(MEMORY[0x1E6985DE8]);
  [v2 setItemClass:1];
  [v2 setInvisible:2];
  [v2 setSynchronizable:1];
  [v2 setUseDataProtection:2];
  [v2 setItemAccessible:0];
  [v2 setAccessGroup:@"appleaccount"];
  [v2 setService:@"com.apple.appleaccount.signedOutAccount.service"];
  [v2 setLabel:@"com.apple.appleaccount.signedOutAccount"];

  return v2;
}

- (void)deleteLastSignedOutAccountAltDSID:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0(&dword_1B6F6A000, a2, a3, "Failed to delete last signed out account's altDSID with error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end