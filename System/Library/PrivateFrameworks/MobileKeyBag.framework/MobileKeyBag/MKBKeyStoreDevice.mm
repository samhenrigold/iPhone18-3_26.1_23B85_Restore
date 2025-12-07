@interface MKBKeyStoreDevice
+ (id)sharedService;
- (BOOL)getDeviceLockStateForUser:(int)user extendedState:(BOOL)state withLockStateInfo:(int *)info;
- (id)_CreateMKBServerConnection;
- (id)copySytemSecretBlob;
- (id)getBackupkeyForVolume:(id)volume andCryptoID:(unint64_t)d withError:(id *)error;
- (id)getFileHandleForData:(id)data;
- (id)getLockStateForUser:(int)user;
- (int)ChangeSystemSecretWithEscrow:(id)escrow FromOldPasscode:(id)passcode ToNew:(id)new withOpaqueDats:(id)dats withKeepState:(int)state withACM:(BOOL)m;
- (int)Event:(int)event;
- (int)SeshatDebug:(int)debug;
- (int)SeshatEnroll:(id)enroll secretIsACM:(BOOL)m;
- (int)SeshatRecover:(id)recover secretIsACM:(BOOL)m;
- (int)SeshatUnlock:(id)unlock secretIsACM:(BOOL)m withMemento:(BOOL)memento verifyOnly:(BOOL)only withACMRef:(id)ref forHandle:(int)handle;
- (int)SetSystemSecretBlob:(id)blob;
- (int)addPersonaKeyForUserSession:(unsigned int)session withSecret:(id)secret secretIsACM:(BOOL)m withPersonaUUIDString:(id)string forPath:(id)path;
- (int)backupUUIDForVolume:(id)volume bagUUID:(id *)d;
- (int)changeClassKeysGenerationWithSecret:(id)secret withGenerationOption:(int)option secretIsACM:(BOOL)m;
- (int)changeSystemSecretFromOldPasscode:(id)passcode ToNew:(id)new withOpaqueData:(id)data withParams:(unsigned int)params;
- (int)createKeybagForUserSession:(id)session withSessionUID:(int)d WithSecret:(id)secret withGracePeriod:(int)period withOpaqeStuff:(id)stuff;
- (int)createSyncBagForUserSession:(id)session withSessionUID:(int)d;
- (int)deleteKeybagForUserSession:(int)session;
- (int)disableBackupForVolume:(id)volume;
- (int)enableBackupForVolume:(id)volume withSecret:(id)secret secretIsACM:(BOOL)m bagData:(id *)data;
- (int)forgottenPasscodeEvent;
- (int)isKeyRollingWithKeyStatus:(int *)status;
- (int)loadKeybagForUserSession:(id)session withSessionID:(int)d withSecret:(id)secret shouldSetGracePeriod:(BOOL)period withGracePeriod:(int)gracePeriod isInEarlyStar:(BOOL)star;
- (int)loadSyncBagForUserSession:(id)session withSessionUID:(int)d;
- (int)migrateFS;
- (int)passcodeUnlockFailed;
- (int)passcodeUnlockStart;
- (int)passcodeUnlockSuccess;
- (int)registerOTABackup:(id)backup withSecret:(id)secret secretIsACM:(BOOL)m;
- (int)removePersonaKeyForUserSession:(unsigned int)session withPersonaUUIDString:(id)string withVolumeUUIDString:(id)dString;
- (int)removeSyncBagForUserSession:(id)session withSessionUID:(int)d;
- (int)setSpacedRepetitionMode:(unsigned int)mode;
- (int)setVolumeToPersona:(id)persona withPersonaString:(id)string;
- (int)startBackupSessionForVolume:(id)volume;
- (int)stashCommit:(unsigned int)commit WithFlags:(unsigned int)flags;
- (int)stashCreateWithSecret:(id)secret withMode:(int)mode withUID:(unsigned int)d WithFlags:(unsigned int)flags;
- (int)stashDestroy;
- (int)stashVerifywithValidity:(int *)validity WithUID:(unsigned int)d WithFlags:(unsigned int)flags;
- (int)stopBackupSessionForVolume:(id)volume;
- (int)unloadKeybagForUserSession:(int)session;
- (int)unloadSyncBagForUserSession:(id)session withSessionUID:(int)d;
- (int)verifySyncBagForUserSession:(id)session withSessionUID:(int)d;
@end

@implementation MKBKeyStoreDevice

+ (id)sharedService
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__MKBKeyStoreDevice_sharedService__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedService_onceToken != -1)
  {
    dispatch_once(&sharedService_onceToken, block);
  }

  v2 = sharedService_service;

  return v2;
}

- (id)_CreateMKBServerConnection
{
  v2 = xpc_user_sessions_enabled();
  v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F484FAE0];
  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = 4096;
  }

  v6 = [v4 initWithMachServiceName:@"com.apple.mobile.keybagd.xpc" options:v5];
  [v6 setRemoteObjectInterface:v3];
  if (v2)
  {
    xpc_user_sessions_get_foreground_uid();
    _xpcConnection = [v6 _xpcConnection];
    xpc_connection_set_target_user_session_uid();
  }

  [v6 resume];

  return v6;
}

uint64_t __34__MKBKeyStoreDevice_sharedService__block_invoke(uint64_t a1)
{
  objc_opt_class();
  sharedService_service = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (id)getFileHandleForData:(id)data
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    v5 = [dataCopy length];
    if (!v5)
    {
      goto LABEL_9;
    }

    if (pipe(v24) == -1)
    {
      v7 = __error();
      v8 = strerror(*v7);
      debuglog("[MKBKeyStoreDevice getFileHandleForData:]", @"failed to get fds(1) with error:%s", v9, v10, v11, v12, v13, v14, v8);
    }

    else
    {
      if (writen(v24[1], [v4 bytes], v5) != -1)
      {
        close(v24[1]);
        v6 = objc_alloc(MEMORY[0x1E696AC00]);
        v5 = [v6 initWithFileDescriptor:v24[0] closeOnDealloc:1];
        goto LABEL_9;
      }

      v15 = __error();
      v16 = strerror(*v15);
      debuglog("[MKBKeyStoreDevice getFileHandleForData:]", @"failed to write to pipe with error:%s", v17, v18, v19, v20, v21, v22, v16);
      close(v24[0]);
      close(v24[1]);
    }
  }

  v5 = 0;
LABEL_9:

  return v5;
}

- (int)setSpacedRepetitionMode:(unsigned int)mode
{
  v3 = *&mode;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __45__MKBKeyStoreDevice_setSpacedRepetitionMode___block_invoke;
  v11[3] = &unk_1E831D5D8;
  v11[4] = &v12;
  v5 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__MKBKeyStoreDevice_setSpacedRepetitionMode___block_invoke_2;
  v8[3] = &unk_1E831D600;
  v10 = &v12;
  v6 = _CreateMKBServerConnection;
  v9 = v6;
  [v5 setSpacedRepetitionMode:v3 reply:v8];
  LODWORD(v3) = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v3;
}

uint64_t __45__MKBKeyStoreDevice_setSpacedRepetitionMode___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)changeSystemSecretFromOldPasscode:(id)passcode ToNew:(id)new withOpaqueData:(id)data withParams:(unsigned int)params
{
  v6 = *&params;
  passcodeCopy = passcode;
  newCopy = new;
  dataCopy = data;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (passcodeCopy && [passcodeCopy length])
  {
    v14 = [(MKBKeyStoreDevice *)self getFileHandleForData:passcodeCopy];
    v15 = [passcodeCopy length];
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v23 = newCopy;
  if (newCopy && [newCopy length])
  {
    v16 = [(MKBKeyStoreDevice *)self getFileHandleForData:newCopy];
    v17 = [newCopy length];
    v18 = v6;
  }

  else
  {
    v18 = v6;
    v16 = 0;
    v17 = 0;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __87__MKBKeyStoreDevice_changeSystemSecretFromOldPasscode_ToNew_withOpaqueData_withParams___block_invoke;
  v27[3] = &unk_1E831D5D8;
  v27[4] = &v28;
  v19 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v27];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __87__MKBKeyStoreDevice_changeSystemSecretFromOldPasscode_ToNew_withOpaqueData_withParams___block_invoke_2;
  v24[3] = &unk_1E831D600;
  v26 = &v28;
  v20 = _CreateMKBServerConnection;
  v25 = v20;
  [v19 changeSystemSecretfromOldSecret:v14 oldSize:v15 toNewSecret:v16 newSize:v17 opaqueData:dataCopy withParams:v18 reply:v24];
  v21 = *(v29 + 6);

  _Block_object_dispose(&v28, 8);
  return v21;
}

uint64_t __87__MKBKeyStoreDevice_changeSystemSecretFromOldPasscode_ToNew_withOpaqueData_withParams___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)changeClassKeysGenerationWithSecret:(id)secret withGenerationOption:(int)option secretIsACM:(BOOL)m
{
  mCopy = m;
  v6 = *&option;
  secretCopy = secret;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (secretCopy && [secretCopy length])
  {
    v10 = [(MKBKeyStoreDevice *)self getFileHandleForData:secretCopy];
    v11 = [secretCopy length];
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__MKBKeyStoreDevice_changeClassKeysGenerationWithSecret_withGenerationOption_secretIsACM___block_invoke;
  v19[3] = &unk_1E831D5D8;
  v19[4] = &v20;
  v12 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__MKBKeyStoreDevice_changeClassKeysGenerationWithSecret_withGenerationOption_secretIsACM___block_invoke_2;
  v16[3] = &unk_1E831D600;
  v18 = &v20;
  v13 = _CreateMKBServerConnection;
  v17 = v13;
  [v12 changeClassKeysGenerationWithSecret:v10 secretSize:v11 secretIsACM:mCopy generationOption:v6 reply:v16];
  v14 = *(v21 + 6);

  _Block_object_dispose(&v20, 8);
  return v14;
}

uint64_t __90__MKBKeyStoreDevice_changeClassKeysGenerationWithSecret_withGenerationOption_secretIsACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (id)copySytemSecretBlob
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v3 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_1];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MKBKeyStoreDevice_copySytemSecretBlob__block_invoke_2;
  v7[3] = &unk_1E831D648;
  v9 = &v10;
  v4 = _CreateMKBServerConnection;
  v8 = v4;
  [v3 getPasscodeBlobWithReply:v7];
  v5 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __40__MKBKeyStoreDevice_copySytemSecretBlob__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (a3)
  {
    v6 = [a3 code];
    debuglog("[MKBKeyStoreDevice copySytemSecretBlob]_block_invoke_2", @"got error from remote proxy for getPasscodeBlobWithReply: %ld", v7, v8, v9, v10, v11, v12, v6);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  [*(a1 + 32) invalidate];
}

- (id)getBackupkeyForVolume:(id)volume andCryptoID:(unint64_t)d withError:(id *)error
{
  volumeCopy = volume;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_205];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __65__MKBKeyStoreDevice_getBackupkeyForVolume_andCryptoID_withError___block_invoke_2;
  v14[3] = &unk_1E831D670;
  v16 = &v18;
  v17 = &v24;
  v11 = _CreateMKBServerConnection;
  v15 = v11;
  [v10 getBackupkeyForVolume:volumeCopy andCryptoID:d withReply:v14];
  if (error)
  {
    *error = v19[5];
  }

  v12 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v12;
}

void __65__MKBKeyStoreDevice_getBackupkeyForVolume_andCryptoID_withError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v6 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v7 = [v6 code];
    debuglog("[MKBKeyStoreDevice getBackupkeyForVolume:andCryptoID:withError:]_block_invoke_2", @"got error from remote proxy: %ld", v8, v9, v10, v11, v12, v13, v7);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 32) invalidate];
}

- (int)ChangeSystemSecretWithEscrow:(id)escrow FromOldPasscode:(id)passcode ToNew:(id)new withOpaqueDats:(id)dats withKeepState:(int)state withACM:(BOOL)m
{
  escrowCopy = escrow;
  passcodeCopy = passcode;
  newCopy = new;
  datsCopy = dats;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (passcodeCopy && [passcodeCopy length])
  {
    v19 = [(MKBKeyStoreDevice *)self getFileHandleForData:passcodeCopy];
    v20 = [passcodeCopy length];
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  v31 = passcodeCopy;
  mCopy = m;
  v32 = v20;
  if (newCopy && [newCopy length])
  {
    v21 = [(MKBKeyStoreDevice *)self getFileHandleForData:newCopy];
    v30 = [newCopy length];
    stateCopy2 = state;
  }

  else
  {
    stateCopy2 = state;
    v30 = 0;
    v21 = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __109__MKBKeyStoreDevice_ChangeSystemSecretWithEscrow_FromOldPasscode_ToNew_withOpaqueDats_withKeepState_withACM___block_invoke;
  v37[3] = &unk_1E831D5D8;
  v37[4] = &v38;
  v23 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v37];
  v24 = datsCopy;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __109__MKBKeyStoreDevice_ChangeSystemSecretWithEscrow_FromOldPasscode_ToNew_withOpaqueDats_withKeepState_withACM___block_invoke_2;
  v34[3] = &unk_1E831D600;
  v36 = &v38;
  v25 = _CreateMKBServerConnection;
  v35 = v25;
  v26 = escrowCopy;
  BYTE1(v29) = mCopy;
  LOBYTE(v29) = stateCopy2 != 0;
  [v23 changeSystemSecretWithEscrow:escrowCopy fromOldSecret:v19 oldSize:v32 toNewSecret:v21 newSize:v30 opaqueData:v24 keepstate:v29 withACM:v34 reply:?];
  v27 = *(v39 + 6);

  _Block_object_dispose(&v38, 8);
  return v27;
}

uint64_t __109__MKBKeyStoreDevice_ChangeSystemSecretWithEscrow_FromOldPasscode_ToNew_withOpaqueDats_withKeepState_withACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)SetSystemSecretBlob:(id)blob
{
  blobCopy = blob;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = _CreateMKBServerConnection;
  v11 = v7;
  [v6 setSystemSecretBlob:blobCopy reply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SetSystemSecretBlob:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __41__MKBKeyStoreDevice_SetSystemSecretBlob___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice SetSystemSecretBlob:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)registerOTABackup:(id)backup withSecret:(id)secret secretIsACM:(BOOL)m
{
  mCopy = m;
  backupCopy = backup;
  secretCopy = secret;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (secretCopy && [secretCopy length])
  {
    v11 = [(MKBKeyStoreDevice *)self getFileHandleForData:secretCopy];
    v12 = [secretCopy length];
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__MKBKeyStoreDevice_registerOTABackup_withSecret_secretIsACM___block_invoke;
  v20[3] = &unk_1E831D5D8;
  v20[4] = &v21;
  v13 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __62__MKBKeyStoreDevice_registerOTABackup_withSecret_secretIsACM___block_invoke_2;
  v17[3] = &unk_1E831D600;
  v19 = &v21;
  v14 = _CreateMKBServerConnection;
  v18 = v14;
  [v13 registerBackupBag:backupCopy withSecret:v11 secretSize:v12 secretIsACM:mCopy reply:v17];
  v15 = *(v22 + 6);

  _Block_object_dispose(&v21, 8);
  return v15;
}

void __62__MKBKeyStoreDevice_registerOTABackup_withSecret_secretIsACM___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice registerOTABackup:withSecret:secretIsACM:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __62__MKBKeyStoreDevice_registerOTABackup_withSecret_secretIsACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice registerOTABackup:withSecret:secretIsACM:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)startBackupSessionForVolume:(id)volume
{
  volumeCopy = volume;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = _CreateMKBServerConnection;
  v11 = v7;
  [v6 startBackupSessionForVolume:volumeCopy withReply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice startBackupSessionForVolume:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __49__MKBKeyStoreDevice_startBackupSessionForVolume___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice startBackupSessionForVolume:]_block_invoke_2", @"got error from remote proxy(2): %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)stopBackupSessionForVolume:(id)volume
{
  volumeCopy = volume;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = _CreateMKBServerConnection;
  v11 = v7;
  [v6 stopBackupSessionForVolume:volumeCopy withReply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stopBackupSessionForVolume:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __48__MKBKeyStoreDevice_stopBackupSessionForVolume___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stopBackupSessionForVolume:]_block_invoke_2", @"got error from remote proxy(2): %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)enableBackupForVolume:(id)volume withSecret:(id)secret secretIsACM:(BOOL)m bagData:(id *)data
{
  mCopy = m;
  volumeCopy = volume;
  secretCopy = secret;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = -1;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy_;
  v28 = __Block_byref_object_dispose_;
  v29 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (secretCopy && [secretCopy length])
  {
    v13 = [(MKBKeyStoreDevice *)self getFileHandleForData:secretCopy];
    v14 = [secretCopy length];
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __74__MKBKeyStoreDevice_enableBackupForVolume_withSecret_secretIsACM_bagData___block_invoke;
  v23[3] = &unk_1E831D5D8;
  v23[4] = &v30;
  v15 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v23];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __74__MKBKeyStoreDevice_enableBackupForVolume_withSecret_secretIsACM_bagData___block_invoke_2;
  v19[3] = &unk_1E831D670;
  v21 = &v30;
  v22 = &v24;
  v16 = _CreateMKBServerConnection;
  v20 = v16;
  [v15 enableBackupForVolume:volumeCopy withSecret:v13 secretSize:v14 secretIsACM:mCopy reply:v19];
  *data = v25[5];
  v17 = *(v31 + 6);

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v30, 8);

  return v17;
}

void __74__MKBKeyStoreDevice_enableBackupForVolume_withSecret_secretIsACM_bagData___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice enableBackupForVolume:withSecret:secretIsACM:bagData:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

void __74__MKBKeyStoreDevice_enableBackupForVolume_withSecret_secretIsACM_bagData___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v6 code];
    v8 = [v7 code];
    debuglog("[MKBKeyStoreDevice enableBackupForVolume:withSecret:secretIsACM:bagData:]_block_invoke_2", @"got error from remote proxy: %ld", v9, v10, v11, v12, v13, v14, v8);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  [*(a1 + 32) invalidate];
}

- (int)disableBackupForVolume:(id)volume
{
  volumeCopy = volume;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v6 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v7 = _CreateMKBServerConnection;
  v11 = v7;
  [v6 disableBackupForVolume:volumeCopy reply:v10];
  v8 = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v8;
}

void __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice disableBackupForVolume:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __44__MKBKeyStoreDevice_disableBackupForVolume___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice disableBackupForVolume:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)backupUUIDForVolume:(id)volume bagUUID:(id *)d
{
  volumeCopy = volume;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke;
  v14[3] = &unk_1E831D5D8;
  v14[4] = &v15;
  v7 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke_2;
  v11[3] = &unk_1E831D648;
  v13 = &v15;
  v8 = _CreateMKBServerConnection;
  v12 = v8;
  [v7 backupUUIDForVolume:volumeCopy reply:v11];
  v9 = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v9;
}

void __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice backupUUIDForVolume:bagUUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __49__MKBKeyStoreDevice_backupUUIDForVolume_bagUUID___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    *(*(*(a1 + 40) + 8) + 24) = [v4 code];
    v5 = [v4 code];

    debuglog("[MKBKeyStoreDevice backupUUIDForVolume:bagUUID:]_block_invoke_2", @"got error from remote proxy: %ld", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v12 = *(a1 + 32);

  return [v12 invalidate];
}

- (int)passcodeUnlockStart
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = _CreateMKBServerConnection;
  v8 = v4;
  [v3 passcodeUnlockStartWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice passcodeUnlockStart]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __40__MKBKeyStoreDevice_passcodeUnlockStart__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice passcodeUnlockStart]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)passcodeUnlockSuccess
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = _CreateMKBServerConnection;
  v8 = v4;
  [v3 passcodeUnlockSuccessWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice passcodeUnlockSuccess]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __42__MKBKeyStoreDevice_passcodeUnlockSuccess__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice passcodeUnlockSuccess]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)passcodeUnlockFailed
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = _CreateMKBServerConnection;
  v8 = v4;
  [v3 passcodeUnlockFailedWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice passcodeUnlockFailed]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __41__MKBKeyStoreDevice_passcodeUnlockFailed__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice passcodeUnlockFailed]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (id)getLockStateForUser:(int)user
{
  v3 = *&user;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v5 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_210];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __41__MKBKeyStoreDevice_getLockStateForUser___block_invoke_2;
  v9[3] = &unk_1E831D698;
  v11 = &v12;
  v6 = _CreateMKBServerConnection;
  v10 = v6;
  [v5 getLockSateInfoforUser:v3 WithReply:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__MKBKeyStoreDevice_getLockStateForUser___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  if (a3)
  {
    v6 = [a3 code];
    debuglog("[MKBKeyStoreDevice getLockStateForUser:]_block_invoke_2", @"got error from remote proxy: %ld", v7, v8, v9, v10, v11, v12, v6);
  }

  else
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  [*(a1 + 32) invalidate];
}

- (BOOL)getDeviceLockStateForUser:(int)user extendedState:(BOOL)state withLockStateInfo:(int *)info
{
  stateCopy = state;
  v7 = *&user;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__MKBKeyStoreDevice_getDeviceLockStateForUser_extendedState_withLockStateInfo___block_invoke;
  v16[3] = &unk_1E831D5D8;
  v16[4] = &v17;
  v9 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__MKBKeyStoreDevice_getDeviceLockStateForUser_extendedState_withLockStateInfo___block_invoke_2;
  v12[3] = &unk_1E831D6C0;
  v14 = &v17;
  infoCopy = info;
  v10 = _CreateMKBServerConnection;
  v13 = v10;
  [v9 getDeviceLockState:v7 needsExtended:stateCopy withReply:v12];
  LOBYTE(stateCopy) = *(v18 + 24);

  _Block_object_dispose(&v17, 8);
  return stateCopy;
}

void __79__MKBKeyStoreDevice_getDeviceLockStateForUser_extendedState_withLockStateInfo___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice getDeviceLockStateForUser:extendedState:withLockStateInfo:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 0;
}

uint64_t __79__MKBKeyStoreDevice_getDeviceLockStateForUser_extendedState_withLockStateInfo___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 code];
    debuglog("[MKBKeyStoreDevice getDeviceLockStateForUser:extendedState:withLockStateInfo:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      *v11 = a2;
    }

    *(*(a1[5] + 8) + 24) = 1;
  }

  v12 = a1[4];

  return [v12 invalidate];
}

- (int)stashCreateWithSecret:(id)secret withMode:(int)mode withUID:(unsigned int)d WithFlags:(unsigned int)flags
{
  v6 = *&flags;
  v7 = *&d;
  v8 = *&mode;
  secretCopy = secret;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (secretCopy && [secretCopy length])
  {
    v12 = [(MKBKeyStoreDevice *)self getFileHandleForData:secretCopy];
    v13 = [secretCopy length];
  }

  else
  {
    v13 = 0;
    v12 = 0;
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__MKBKeyStoreDevice_stashCreateWithSecret_withMode_withUID_WithFlags___block_invoke;
  v21[3] = &unk_1E831D5D8;
  v21[4] = &v22;
  v14 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__MKBKeyStoreDevice_stashCreateWithSecret_withMode_withUID_WithFlags___block_invoke_2;
  v18[3] = &unk_1E831D600;
  v20 = &v22;
  v15 = _CreateMKBServerConnection;
  v19 = v15;
  [v14 stashCreatewithSecret:v12 secrestSize:v13 withMode:v8 withUID:v7 WithFlags:v6 reply:v18];
  v16 = *(v23 + 6);

  _Block_object_dispose(&v22, 8);
  return v16;
}

void __70__MKBKeyStoreDevice_stashCreateWithSecret_withMode_withUID_WithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashCreateWithSecret:withMode:withUID:WithFlags:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __70__MKBKeyStoreDevice_stashCreateWithSecret_withMode_withUID_WithFlags___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stashCreateWithSecret:withMode:withUID:WithFlags:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)stashCommit:(unsigned int)commit WithFlags:(unsigned int)flags
{
  v4 = *&flags;
  v5 = *&commit;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __43__MKBKeyStoreDevice_stashCommit_WithFlags___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v14;
  v7 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MKBKeyStoreDevice_stashCommit_WithFlags___block_invoke_2;
  v10[3] = &unk_1E831D600;
  v12 = &v14;
  v8 = _CreateMKBServerConnection;
  v11 = v8;
  [v7 stashCommitwithUID:v5 WithFlags:v4 WithReply:v10];
  LODWORD(v4) = *(v15 + 6);

  _Block_object_dispose(&v14, 8);
  return v4;
}

void __43__MKBKeyStoreDevice_stashCommit_WithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashCommit:WithFlags:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __43__MKBKeyStoreDevice_stashCommit_WithFlags___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stashCommit:WithFlags:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)stashDestroy
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __33__MKBKeyStoreDevice_stashDestroy__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__MKBKeyStoreDevice_stashDestroy__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = _CreateMKBServerConnection;
  v8 = v4;
  [v3 stashDestroywithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __33__MKBKeyStoreDevice_stashDestroy__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashDestroy]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __33__MKBKeyStoreDevice_stashDestroy__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice stashDestroy]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)stashVerifywithValidity:(int *)validity WithUID:(unsigned int)d WithFlags:(unsigned int)flags
{
  v5 = *&flags;
  v6 = *&d;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = -1;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __63__MKBKeyStoreDevice_stashVerifywithValidity_WithUID_WithFlags___block_invoke;
  v17[3] = &unk_1E831D5D8;
  v17[4] = &v22;
  v9 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__MKBKeyStoreDevice_stashVerifywithValidity_WithUID_WithFlags___block_invoke_2;
  v13[3] = &unk_1E831D6E8;
  v15 = &v22;
  v16 = &v18;
  v10 = _CreateMKBServerConnection;
  v14 = v10;
  [v9 stashVerifywithUID:v6 WithFlags:v5 WithReply:v13];
  if (validity)
  {
    *validity = *(v19 + 6);
  }

  v11 = *(v23 + 6);

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v11;
}

void __63__MKBKeyStoreDevice_stashVerifywithValidity_WithUID_WithFlags___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice stashVerifywithValidity:WithUID:WithFlags:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __63__MKBKeyStoreDevice_stashVerifywithValidity_WithUID_WithFlags___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    *(*(a1[5] + 8) + 24) = [v4 code];
    v5 = [v4 code];

    debuglog("[MKBKeyStoreDevice stashVerifywithValidity:WithUID:WithFlags:]_block_invoke_2", @"got error from remote proxy: %ld", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = a2;
  }

  v12 = a1[4];

  return [v12 invalidate];
}

- (int)isKeyRollingWithKeyStatus:(int *)status
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = -1;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke;
  v13[3] = &unk_1E831D5D8;
  v13[4] = &v18;
  v5 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v13];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke_2;
  v9[3] = &unk_1E831D6E8;
  v11 = &v18;
  v12 = &v14;
  v6 = _CreateMKBServerConnection;
  v10 = v6;
  [v5 isKeyRollingInProgresswithreply:v9];
  if (status)
  {
    *status = *(v15 + 6);
  }

  v7 = *(v19 + 6);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v7;
}

void __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice isKeyRollingWithKeyStatus:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __47__MKBKeyStoreDevice_isKeyRollingWithKeyStatus___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = a3;
    *(*(a1[5] + 8) + 24) = [v4 code];
    v5 = [v4 code];

    debuglog("[MKBKeyStoreDevice isKeyRollingWithKeyStatus:]_block_invoke_2", @"got error from remote proxy: %ld", v6, v7, v8, v9, v10, v11, v5);
  }

  else
  {
    *(*(a1[5] + 8) + 24) = 0;
    *(*(a1[6] + 8) + 24) = a2;
  }

  v12 = a1[4];

  return [v12 invalidate];
}

- (int)migrateFS
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __30__MKBKeyStoreDevice_migrateFS__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __30__MKBKeyStoreDevice_migrateFS__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = _CreateMKBServerConnection;
  v8 = v4;
  [v3 migrationWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __30__MKBKeyStoreDevice_migrateFS__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice migrateFS]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __30__MKBKeyStoreDevice_migrateFS__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice migrateFS]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)forgottenPasscodeEvent
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke;
  v10[3] = &unk_1E831D5D8;
  v10[4] = &v11;
  v3 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke_2;
  v7[3] = &unk_1E831D600;
  v9 = &v11;
  v4 = _CreateMKBServerConnection;
  v8 = v4;
  [v3 forgottenPasscodeEventWithReply:v7];
  v5 = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return v5;
}

void __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice forgottenPasscodeEvent]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __43__MKBKeyStoreDevice_forgottenPasscodeEvent__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice forgottenPasscodeEvent]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)Event:(int)event
{
  v3 = *&event;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __27__MKBKeyStoreDevice_Event___block_invoke;
  v7[3] = &unk_1E831D5D8;
  v7[4] = &v8;
  v5 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v7];
  [v5 Event:v3];
  [_CreateMKBServerConnection invalidate];
  LODWORD(v3) = *(v9 + 6);

  _Block_object_dispose(&v8, 8);
  return v3;
}

void __27__MKBKeyStoreDevice_Event___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice Event:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

- (int)SeshatEnroll:(id)enroll secretIsACM:(BOOL)m
{
  mCopy = m;
  enrollCopy = enroll;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (enrollCopy && [enrollCopy length])
  {
    v8 = [(MKBKeyStoreDevice *)self getFileHandleForData:enrollCopy];
    v9 = [enrollCopy length];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__MKBKeyStoreDevice_SeshatEnroll_secretIsACM___block_invoke;
  v17[3] = &unk_1E831D5D8;
  v17[4] = &v18;
  v10 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__MKBKeyStoreDevice_SeshatEnroll_secretIsACM___block_invoke_2;
  v14[3] = &unk_1E831D600;
  v16 = &v18;
  v11 = _CreateMKBServerConnection;
  v15 = v11;
  [v10 SeshatEnrollWithSecret:v8 secretSize:v9 secretIsACM:mCopy withReply:v14];
  v12 = *(v19 + 6);

  _Block_object_dispose(&v18, 8);
  return v12;
}

void __46__MKBKeyStoreDevice_SeshatEnroll_secretIsACM___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatEnroll:secretIsACM:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __46__MKBKeyStoreDevice_SeshatEnroll_secretIsACM___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice SeshatEnroll:secretIsACM:]_block_invoke_2", @"got error from remote proxy: %ld", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)SeshatUnlock:(id)unlock secretIsACM:(BOOL)m withMemento:(BOOL)memento verifyOnly:(BOOL)only withACMRef:(id)ref forHandle:(int)handle
{
  onlyCopy = only;
  mementoCopy = memento;
  mCopy = m;
  unlockCopy = unlock;
  refCopy = ref;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = -1;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v32 = onlyCopy;
  if (unlockCopy && [unlockCopy length])
  {
    v17 = [(MKBKeyStoreDevice *)self getFileHandleForData:unlockCopy];
    v18 = [unlockCopy length];
    handleCopy2 = handle;
    v20 = v17;
  }

  else
  {
    handleCopy2 = handle;
    v18 = 0;
    v20 = 0;
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __90__MKBKeyStoreDevice_SeshatUnlock_secretIsACM_withMemento_verifyOnly_withACMRef_forHandle___block_invoke;
  v37[3] = &unk_1E831D5D8;
  v37[4] = &v42;
  v21 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v37];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __90__MKBKeyStoreDevice_SeshatUnlock_secretIsACM_withMemento_verifyOnly_withACMRef_forHandle___block_invoke_2;
  v33[3] = &unk_1E831D6E8;
  v35 = &v42;
  v36 = &v38;
  v22 = _CreateMKBServerConnection;
  v34 = v22;
  LODWORD(v31) = handleCopy2;
  [v21 SeshatUnlockWithSecret:v20 secretSize:v18 secretIsACM:mCopy withMemento:mementoCopy verifyOnly:v32 withACMRef:refCopy forHandle:v31 withReply:v33];
  v29 = *(v43 + 6);
  if (!v29)
  {
    debuglog("[MKBKeyStoreDevice SeshatUnlock:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:]", @"kCommandSeshatUnlock -> %d", v23, v24, v25, v26, v27, v28, *(v39 + 6));
    v29 = *(v43 + 6);
  }

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return v29;
}

void __90__MKBKeyStoreDevice_SeshatUnlock_secretIsACM_withMemento_verifyOnly_withACMRef_forHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatUnlock:secretIsACM:withMemento:verifyOnly:withACMRef:forHandle:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __90__MKBKeyStoreDevice_SeshatUnlock_secretIsACM_withMemento_verifyOnly_withACMRef_forHandle___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
    v4 = *(*(a1[6] + 8) + 24);
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = a1[4];

  return [v5 invalidate];
}

- (int)SeshatRecover:(id)recover secretIsACM:(BOOL)m
{
  mCopy = m;
  recoverCopy = recover;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = -1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (recoverCopy && [recoverCopy length])
  {
    v8 = [(MKBKeyStoreDevice *)self getFileHandleForData:recoverCopy];
    v9 = [recoverCopy length];
  }

  else
  {
    v9 = 0;
    v8 = 0;
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __47__MKBKeyStoreDevice_SeshatRecover_secretIsACM___block_invoke;
  v24[3] = &unk_1E831D5D8;
  v24[4] = &v29;
  v10 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v24];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __47__MKBKeyStoreDevice_SeshatRecover_secretIsACM___block_invoke_2;
  v20[3] = &unk_1E831D6E8;
  v22 = &v29;
  v23 = &v25;
  v11 = _CreateMKBServerConnection;
  v21 = v11;
  [v10 SeshatRecoverWithSecret:v8 secretSize:v9 secretIsACM:mCopy withReply:v20];
  v18 = *(v30 + 6);
  if (!v18)
  {
    debuglog("[MKBKeyStoreDevice SeshatRecover:secretIsACM:]", @"kCommandSeshatRecover -> %d", v12, v13, v14, v15, v16, v17, *(v26 + 6));
    v18 = *(v30 + 6);
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);

  return v18;
}

void __47__MKBKeyStoreDevice_SeshatRecover_secretIsACM___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatRecover:secretIsACM:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __47__MKBKeyStoreDevice_SeshatRecover_secretIsACM___block_invoke_2(void *a1, int a2, void *a3)
{
  if (a3)
  {
    v4 = [a3 code];
  }

  else
  {
    *(*(a1[6] + 8) + 24) = a2;
    v4 = *(*(a1[6] + 8) + 24);
  }

  *(*(a1[5] + 8) + 24) = v4;
  v5 = a1[4];

  return [v5 invalidate];
}

- (int)SeshatDebug:(int)debug
{
  v3 = *&debug;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = -1;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __33__MKBKeyStoreDevice_SeshatDebug___block_invoke;
  v11[3] = &unk_1E831D5D8;
  v11[4] = &v12;
  v5 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __33__MKBKeyStoreDevice_SeshatDebug___block_invoke_2;
  v8[3] = &unk_1E831D600;
  v10 = &v12;
  v6 = _CreateMKBServerConnection;
  v9 = v6;
  [v5 SeshatDebugWithDebugMask:v3 withReply:v8];
  LODWORD(v3) = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v3;
}

void __33__MKBKeyStoreDevice_SeshatDebug___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice SeshatDebug:]_block_invoke", @"got error from remote proxy: %d", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = -21;
}

uint64_t __33__MKBKeyStoreDevice_SeshatDebug___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    *(*(*(a1 + 40) + 8) + 24) = [v3 code];
    v4 = [v3 code];

    debuglog("[MKBKeyStoreDevice SeshatDebug:]_block_invoke_2", @"got error from remote proxy: %d", v5, v6, v7, v8, v9, v10, v4);
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  v11 = *(a1 + 32);

  return [v11 invalidate];
}

- (int)createKeybagForUserSession:(id)session withSessionUID:(int)d WithSecret:(id)secret withGracePeriod:(int)period withOpaqeStuff:(id)stuff
{
  v8 = *&period;
  v10 = *&d;
  sessionCopy = session;
  secretCopy = secret;
  stuffCopy = stuff;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (secretCopy && [secretCopy length])
  {
    v15 = [(MKBKeyStoreDevice *)self getFileHandleForData:secretCopy];
    v16 = [secretCopy length];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __105__MKBKeyStoreDevice_createKeybagForUserSession_withSessionUID_WithSecret_withGracePeriod_withOpaqeStuff___block_invoke;
  v31[3] = &unk_1E831D5D8;
  v31[4] = &v32;
  v17 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v31];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __105__MKBKeyStoreDevice_createKeybagForUserSession_withSessionUID_WithSecret_withGracePeriod_withOpaqeStuff___block_invoke_2;
  v28[3] = &unk_1E831D600;
  v30 = &v32;
  v18 = _CreateMKBServerConnection;
  v29 = v18;
  [v17 createKeybagForUserSession:sessionCopy withSessionUID:v10 WithSecret:v15 secretSize:v16 withGracePeriod:v8 withOpaqeStuff:stuffCopy withReply:v28];
  if (*(v33 + 6))
  {
    debuglog("[MKBKeyStoreDevice createKeybagForUserSession:withSessionUID:WithSecret:withGracePeriod:withOpaqeStuff:]", @"kcreateKeybagForUserSession -> %d", v19, v20, v21, v22, v23, v24, *(v33 + 6));
    v25 = *(v33 + 6);
  }

  else
  {
    v25 = 0;
  }

  _Block_object_dispose(&v32, 8);
  return v25;
}

void __105__MKBKeyStoreDevice_createKeybagForUserSession_withSessionUID_WithSecret_withGracePeriod_withOpaqeStuff___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice createKeybagForUserSession:withSessionUID:WithSecret:withGracePeriod:withOpaqeStuff:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __105__MKBKeyStoreDevice_createKeybagForUserSession_withSessionUID_WithSecret_withGracePeriod_withOpaqeStuff___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)loadKeybagForUserSession:(id)session withSessionID:(int)d withSecret:(id)secret shouldSetGracePeriod:(BOOL)period withGracePeriod:(int)gracePeriod isInEarlyStar:(BOOL)star
{
  periodCopy = period;
  sessionCopy = session;
  secretCopy = secret;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  dCopy = d;
  if (secretCopy && [secretCopy length])
  {
    v17 = [(MKBKeyStoreDevice *)self getFileHandleForData:secretCopy];
    v18 = [secretCopy length];
    starCopy2 = star;
  }

  else
  {
    starCopy2 = star;
    v18 = 0;
    v17 = 0;
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __122__MKBKeyStoreDevice_loadKeybagForUserSession_withSessionID_withSecret_shouldSetGracePeriod_withGracePeriod_isInEarlyStar___block_invoke;
  v35[3] = &unk_1E831D5D8;
  v35[4] = &v36;
  v20 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v35];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __122__MKBKeyStoreDevice_loadKeybagForUserSession_withSessionID_withSecret_shouldSetGracePeriod_withGracePeriod_isInEarlyStar___block_invoke_2;
  v32[3] = &unk_1E831D600;
  v34 = &v36;
  v21 = _CreateMKBServerConnection;
  v33 = v21;
  LOBYTE(v30) = starCopy2;
  [v20 loadKeybagForUserSession:sessionCopy withSessionID:dCopy withSecret:v17 secretSize:v18 shouldSetGracePeriod:periodCopy withGracePeriod:gracePeriod isInEarlyStar:v30 withReply:v32];
  if (*(v37 + 6))
  {
    debuglog("[MKBKeyStoreDevice loadKeybagForUserSession:withSessionID:withSecret:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:]", @"kcreateKeybagForUserSession -> %d", v22, v23, v24, v25, v26, v27, *(v37 + 6));
    v28 = *(v37 + 6);
  }

  else
  {
    v28 = 0;
  }

  _Block_object_dispose(&v36, 8);
  return v28;
}

void __122__MKBKeyStoreDevice_loadKeybagForUserSession_withSessionID_withSecret_shouldSetGracePeriod_withGracePeriod_isInEarlyStar___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice loadKeybagForUserSession:withSessionID:withSecret:shouldSetGracePeriod:withGracePeriod:isInEarlyStar:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __122__MKBKeyStoreDevice_loadKeybagForUserSession_withSessionID_withSecret_shouldSetGracePeriod_withGracePeriod_isInEarlyStar___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)unloadKeybagForUserSession:(int)session
{
  v3 = *&session;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MKBKeyStoreDevice_unloadKeybagForUserSession___block_invoke;
  v11[3] = &unk_1E831D5D8;
  v11[4] = &v12;
  v5 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MKBKeyStoreDevice_unloadKeybagForUserSession___block_invoke_2;
  v8[3] = &unk_1E831D600;
  v10 = &v12;
  v6 = _CreateMKBServerConnection;
  v9 = v6;
  [v5 unloadKeybagForUserSession:v3 withReply:v8];
  LODWORD(v3) = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v3;
}

void __48__MKBKeyStoreDevice_unloadKeybagForUserSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice unloadKeybagForUserSession:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __48__MKBKeyStoreDevice_unloadKeybagForUserSession___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)deleteKeybagForUserSession:(int)session
{
  v3 = *&session;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__MKBKeyStoreDevice_deleteKeybagForUserSession___block_invoke;
  v11[3] = &unk_1E831D5D8;
  v11[4] = &v12;
  v5 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MKBKeyStoreDevice_deleteKeybagForUserSession___block_invoke_2;
  v8[3] = &unk_1E831D600;
  v10 = &v12;
  v6 = _CreateMKBServerConnection;
  v9 = v6;
  [v5 deleteKeybagForUserSession:v3 withReply:v8];
  LODWORD(v3) = *(v13 + 6);

  _Block_object_dispose(&v12, 8);
  return v3;
}

void __48__MKBKeyStoreDevice_deleteKeybagForUserSession___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice deleteKeybagForUserSession:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __48__MKBKeyStoreDevice_deleteKeybagForUserSession___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)setVolumeToPersona:(id)persona withPersonaString:(id)string
{
  personaCopy = persona;
  stringCopy = string;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke;
  v16[3] = &unk_1E831D5D8;
  v16[4] = &v17;
  v9 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke_2;
  v13[3] = &unk_1E831D600;
  v15 = &v17;
  v10 = _CreateMKBServerConnection;
  v14 = v10;
  [v9 setVolumeToPersona:personaCopy withPersonaString:stringCopy withReply:v13];
  v11 = *(v18 + 6);

  _Block_object_dispose(&v17, 8);
  return v11;
}

void __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice setVolumeToPersona:withPersonaString:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __58__MKBKeyStoreDevice_setVolumeToPersona_withPersonaString___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)createSyncBagForUserSession:(id)session withSessionUID:(int)d
{
  v4 = *&d;
  sessionCopy = session;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MKBKeyStoreDevice_createSyncBagForUserSession_withSessionUID___block_invoke;
  v14[3] = &unk_1E831D5D8;
  v14[4] = &v15;
  v8 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MKBKeyStoreDevice_createSyncBagForUserSession_withSessionUID___block_invoke_2;
  v11[3] = &unk_1E831D600;
  v13 = &v15;
  v9 = _CreateMKBServerConnection;
  v12 = v9;
  [v8 createSyncBagForUserSession:sessionCopy withSessionUID:v4 withReply:v11];
  LODWORD(v4) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v4;
}

void __64__MKBKeyStoreDevice_createSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice createSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_createSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)loadSyncBagForUserSession:(id)session withSessionUID:(int)d
{
  v4 = *&d;
  sessionCopy = session;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __62__MKBKeyStoreDevice_loadSyncBagForUserSession_withSessionUID___block_invoke;
  v14[3] = &unk_1E831D5D8;
  v14[4] = &v15;
  v8 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__MKBKeyStoreDevice_loadSyncBagForUserSession_withSessionUID___block_invoke_2;
  v11[3] = &unk_1E831D600;
  v13 = &v15;
  v9 = _CreateMKBServerConnection;
  v12 = v9;
  [v8 loadSyncBagForUserSession:sessionCopy withSessionUID:v4 withReply:v11];
  LODWORD(v4) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v4;
}

void __62__MKBKeyStoreDevice_loadSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice loadSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __62__MKBKeyStoreDevice_loadSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)verifySyncBagForUserSession:(id)session withSessionUID:(int)d
{
  v4 = *&d;
  sessionCopy = session;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MKBKeyStoreDevice_verifySyncBagForUserSession_withSessionUID___block_invoke;
  v14[3] = &unk_1E831D5D8;
  v14[4] = &v15;
  v8 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MKBKeyStoreDevice_verifySyncBagForUserSession_withSessionUID___block_invoke_2;
  v11[3] = &unk_1E831D600;
  v13 = &v15;
  v9 = _CreateMKBServerConnection;
  v12 = v9;
  [v8 verifySyncBagForUserSession:sessionCopy withSessionUID:v4 withReply:v11];
  LODWORD(v4) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v4;
}

void __64__MKBKeyStoreDevice_verifySyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice verifySyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_verifySyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)unloadSyncBagForUserSession:(id)session withSessionUID:(int)d
{
  v4 = *&d;
  sessionCopy = session;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MKBKeyStoreDevice_unloadSyncBagForUserSession_withSessionUID___block_invoke;
  v14[3] = &unk_1E831D5D8;
  v14[4] = &v15;
  v8 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MKBKeyStoreDevice_unloadSyncBagForUserSession_withSessionUID___block_invoke_2;
  v11[3] = &unk_1E831D600;
  v13 = &v15;
  v9 = _CreateMKBServerConnection;
  v12 = v9;
  [v8 unloadSyncBagForUserSession:sessionCopy withSessionUID:v4 withReply:v11];
  LODWORD(v4) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v4;
}

void __64__MKBKeyStoreDevice_unloadSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice unloadSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_unloadSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)removeSyncBagForUserSession:(id)session withSessionUID:(int)d
{
  v4 = *&d;
  sessionCopy = session;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__MKBKeyStoreDevice_removeSyncBagForUserSession_withSessionUID___block_invoke;
  v14[3] = &unk_1E831D5D8;
  v14[4] = &v15;
  v8 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__MKBKeyStoreDevice_removeSyncBagForUserSession_withSessionUID___block_invoke_2;
  v11[3] = &unk_1E831D600;
  v13 = &v15;
  v9 = _CreateMKBServerConnection;
  v12 = v9;
  [v8 removeSyncBagForUserSession:sessionCopy withSessionUID:v4 withReply:v11];
  LODWORD(v4) = *(v16 + 6);

  _Block_object_dispose(&v15, 8);
  return v4;
}

void __64__MKBKeyStoreDevice_removeSyncBagForUserSession_withSessionUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice removeSyncBagForUserSession:withSessionUID:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __64__MKBKeyStoreDevice_removeSyncBagForUserSession_withSessionUID___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)addPersonaKeyForUserSession:(unsigned int)session withSecret:(id)secret secretIsACM:(BOOL)m withPersonaUUIDString:(id)string forPath:(id)path
{
  mCopy = m;
  secretCopy = secret;
  stringCopy = string;
  pathCopy = path;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  if (secretCopy && [secretCopy length])
  {
    v16 = [(MKBKeyStoreDevice *)self getFileHandleForData:secretCopy];
    v17 = [secretCopy length];
    v18 = stringCopy;
  }

  else
  {
    v18 = stringCopy;
    v17 = 0;
    v16 = 0;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __102__MKBKeyStoreDevice_addPersonaKeyForUserSession_withSecret_secretIsACM_withPersonaUUIDString_forPath___block_invoke;
  v26[3] = &unk_1E831D5D8;
  v26[4] = &v27;
  v19 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __102__MKBKeyStoreDevice_addPersonaKeyForUserSession_withSecret_secretIsACM_withPersonaUUIDString_forPath___block_invoke_2;
  v23[3] = &unk_1E831D600;
  v25 = &v27;
  v20 = _CreateMKBServerConnection;
  v24 = v20;
  [v19 createPersonaKeyForUserSession:v18 forPath:pathCopy withUID:session WithSecret:v16 secretSize:v17 secretIsACM:mCopy withReply:v23];
  v21 = *(v28 + 6);

  _Block_object_dispose(&v27, 8);
  return v21;
}

void __102__MKBKeyStoreDevice_addPersonaKeyForUserSession_withSecret_secretIsACM_withPersonaUUIDString_forPath___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice addPersonaKeyForUserSession:withSecret:secretIsACM:withPersonaUUIDString:forPath:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __102__MKBKeyStoreDevice_addPersonaKeyForUserSession_withSecret_secretIsACM_withPersonaUUIDString_forPath___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

- (int)removePersonaKeyForUserSession:(unsigned int)session withPersonaUUIDString:(id)string withVolumeUUIDString:(id)dString
{
  v6 = *&session;
  stringCopy = string;
  dStringCopy = dString;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 5;
  _CreateMKBServerConnection = [(MKBKeyStoreDevice *)self _CreateMKBServerConnection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __95__MKBKeyStoreDevice_removePersonaKeyForUserSession_withPersonaUUIDString_withVolumeUUIDString___block_invoke;
  v17[3] = &unk_1E831D5D8;
  v17[4] = &v18;
  v11 = [_CreateMKBServerConnection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __95__MKBKeyStoreDevice_removePersonaKeyForUserSession_withPersonaUUIDString_withVolumeUUIDString___block_invoke_2;
  v14[3] = &unk_1E831D600;
  v16 = &v18;
  v12 = _CreateMKBServerConnection;
  v15 = v12;
  [v11 removePersonaKeyForUserSession:stringCopy withUID:v6 withVolumeUUIDString:dStringCopy withReply:v14];
  LODWORD(v6) = *(v19 + 6);

  _Block_object_dispose(&v18, 8);
  return v6;
}

void __95__MKBKeyStoreDevice_removePersonaKeyForUserSession_withPersonaUUIDString_withVolumeUUIDString___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 code];
  debuglog("[MKBKeyStoreDevice removePersonaKeyForUserSession:withPersonaUUIDString:withVolumeUUIDString:]_block_invoke", @"got error from remote proxy: %ld", v4, v5, v6, v7, v8, v9, v3);
  *(*(*(a1 + 32) + 8) + 24) = 35;
}

uint64_t __95__MKBKeyStoreDevice_removePersonaKeyForUserSession_withPersonaUUIDString_withVolumeUUIDString___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 code];
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return [v4 invalidate];
}

@end