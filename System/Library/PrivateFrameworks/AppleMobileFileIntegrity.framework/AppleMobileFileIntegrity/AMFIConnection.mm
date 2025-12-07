@interface AMFIConnection
- ($42C382FA7217128787D761316B161BF9)getSEPStateWithError:(SEL)error;
- (AMFIConnection)init;
- (id)commitProfileForUuid:(id)uuid;
- (id)getStagedProfileWithError:(id *)error;
- (id)initiateDataMigration;
- (id)initiateDeveloperModeDaemons;
- (id)removeManagedState;
- (id)removeTrustforTeamID:(id)d;
- (id)setDemoState:(unsigned int)state;
- (id)setManagedState:(id)state;
- (id)setSupervisedState:(unsigned int)state;
- (id)setTrustForTeamID:(id)d withSignature:(id)signature withSignType:(unsigned int)type;
- (id)signTeamID:(id)d withSignType:(unsigned int)type withLAContext:(id)context withError:(id *)error;
- (id)stageProfileForUuid:(id)uuid;
- (void)dealloc;
@end

@implementation AMFIConnection

- (AMFIConnection)init
{
  v7.receiver = self;
  v7.super_class = AMFIConnection;
  v2 = [(AMFIConnection *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.amfi.nsxpc" options:4096];
    connection = v2->connection;
    v2->connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2852CC5F8];
    [(NSXPCConnection *)v2->connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->connection invalidate];
  connection = self->connection;
  self->connection = 0;

  v4.receiver = self;
  v4.super_class = AMFIConnection;
  [(AMFIConnection *)&v4 dealloc];
}

- (id)initiateDataMigration
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  connection = self->connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__AMFIConnection_initiateDataMigration__block_invoke;
  v7[3] = &unk_278CBBE08;
  v7[4] = &v8;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__AMFIConnection_initiateDataMigration__block_invoke_32;
  v6[3] = &unk_278CBBE08;
  v6[4] = &v8;
  [v3 initiateDataMigrationWithReply:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __39__AMFIConnection_initiateDataMigration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_initiateDataMigration__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __39__AMFIConnection_initiateDataMigration__block_invoke_32(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __39__AMFIConnection_initiateDataMigration__block_invoke_32_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)initiateDeveloperModeDaemons
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  connection = self->connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke;
  v7[3] = &unk_278CBBE08;
  v7[4] = &v8;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33;
  v6[3] = &unk_278CBBE08;
  v6[4] = &v8;
  [v3 initiateDeveloperModeDaemonsWithReply:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33_cold_1();
    }
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- ($42C382FA7217128787D761316B161BF9)getSEPStateWithError:(SEL)error
{
  v27 = *MEMORY[0x277D85DE8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x5810000000;
  v22 = &unk_240EF9661;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  connection = self->connection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __39__AMFIConnection_getSEPStateWithError___block_invoke;
  v12[3] = &unk_278CBBE08;
  v12[4] = &v13;
  v7 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v12];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __39__AMFIConnection_getSEPStateWithError___block_invoke_35;
  v11[3] = &unk_278CBBE30;
  v11[4] = &v19;
  v11[5] = &v13;
  [v7 getSEPStateWithReply:v11];

  if (a4)
  {
    *a4 = v14[5];
  }

  v8 = v20;
  v9 = *(v20 + 3);
  *&retstr->var0 = *(v20 + 2);
  *&retstr->var3.var1.var0 = v9;
  *&retstr->var3.var1.var1[12] = *(v8 + 4);
  retstr->var3.var1.var1[28] = *(v8 + 80);
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);
  return result;
}

void __39__AMFIConnection_getSEPStateWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_getSEPStateWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

__n128 __39__AMFIConnection_getSEPStateWithError___block_invoke_35(uint64_t a1, __int128 *a2, id obj)
{
  v3 = *(*(a1 + 32) + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  *(v3 + 80) = *(a2 + 48);
  *(v3 + 48) = v5;
  *(v3 + 64) = v6;
  *(v3 + 32) = v4;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  return result;
}

- (id)signTeamID:(id)d withSignType:(unsigned int)type withLAContext:(id)context withError:(id *)error
{
  v8 = *&type;
  dCopy = d;
  contextCopy = context;
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
  connection = self->connection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke;
  v17[3] = &unk_278CBBE08;
  v17[4] = &v24;
  v13 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke_37;
  v16[3] = &unk_278CBBE58;
  v16[4] = &v18;
  v16[5] = &v24;
  [v13 signTeamID:dCopy withSignType:v8 withLAContext:contextCopy withReply:v16];

  if (error)
  {
    *error = v25[5];
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

void __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke_37(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)stageProfileForUuid:(id)uuid
{
  uuidCopy = uuid;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__AMFIConnection_stageProfileForUuid___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __38__AMFIConnection_stageProfileForUuid___block_invoke_39;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 stageProfileForUuid:uuidCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __38__AMFIConnection_stageProfileForUuid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __38__AMFIConnection_stageProfileForUuid___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)getStagedProfileWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  connection = self->connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __44__AMFIConnection_getStagedProfileWithError___block_invoke;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v16;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__AMFIConnection_getStagedProfileWithError___block_invoke_40;
  v8[3] = &unk_278CBBE80;
  v8[4] = &v10;
  v8[5] = &v16;
  [v5 getStagedProfileWithReply:v8];

  if (error)
  {
    *error = v17[5];
  }

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v16, 8);

  return v6;
}

void __44__AMFIConnection_getStagedProfileWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __44__AMFIConnection_getStagedProfileWithError___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __44__AMFIConnection_getStagedProfileWithError___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)commitProfileForUuid:(id)uuid
{
  uuidCopy = uuid;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__AMFIConnection_commitProfileForUuid___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__AMFIConnection_commitProfileForUuid___block_invoke_42;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 commitProfileForUuid:uuidCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __39__AMFIConnection_commitProfileForUuid___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_commitProfileForUuid___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)setTrustForTeamID:(id)d withSignature:(id)signature withSignType:(unsigned int)type
{
  v5 = *&type;
  dCopy = d;
  signatureCopy = signature;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  connection = self->connection;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke;
  v15[3] = &unk_278CBBE08;
  v15[4] = &v16;
  v11 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v15];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke_43;
  v14[3] = &unk_278CBBE08;
  v14[4] = &v16;
  [v11 setTrustForTeamID:dCopy withSignature:signatureCopy withSignType:v5 withReply:v14];

  v12 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v12;
}

void __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)removeTrustforTeamID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__AMFIConnection_removeTrustforTeamID___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __39__AMFIConnection_removeTrustforTeamID___block_invoke_44;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 removeTrustforTeamID:dCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __39__AMFIConnection_removeTrustforTeamID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__AMFIConnection_removeTrustforTeamID___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)setSupervisedState:(unsigned int)state
{
  v3 = *&state;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  connection = self->connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __37__AMFIConnection_setSupervisedState___block_invoke;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v10;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __37__AMFIConnection_setSupervisedState___block_invoke_45;
  v8[3] = &unk_278CBBE08;
  v8[4] = &v10;
  [v5 setSupervisedState:v3 withReply:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __37__AMFIConnection_setSupervisedState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __37__AMFIConnection_setSupervisedState___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)setDemoState:(unsigned int)state
{
  v3 = *&state;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  connection = self->connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __31__AMFIConnection_setDemoState___block_invoke;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v10;
  v5 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v9];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __31__AMFIConnection_setDemoState___block_invoke_46;
  v8[3] = &unk_278CBBE08;
  v8[4] = &v10;
  [v5 setDemoState:v3 withReply:v8];

  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __31__AMFIConnection_setDemoState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __31__AMFIConnection_setDemoState___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)setManagedState:(id)state
{
  stateCopy = state;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  connection = self->connection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __34__AMFIConnection_setManagedState___block_invoke;
  v10[3] = &unk_278CBBE08;
  v10[4] = &v11;
  v6 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __34__AMFIConnection_setManagedState___block_invoke_47;
  v9[3] = &unk_278CBBE08;
  v9[4] = &v11;
  [v6 setManagedState:stateCopy withReply:v9];

  v7 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v7;
}

void __34__AMFIConnection_setManagedState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __34__AMFIConnection_setManagedState___block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

- (id)removeManagedState
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  connection = self->connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__AMFIConnection_removeManagedState__block_invoke;
  v7[3] = &unk_278CBBE08;
  v7[4] = &v8;
  v3 = [(NSXPCConnection *)connection synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __36__AMFIConnection_removeManagedState__block_invoke_48;
  v6[3] = &unk_278CBBE08;
  v6[4] = &v8;
  [v3 removeManagedStateWithReply:v6];

  v4 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v4;
}

void __36__AMFIConnection_removeManagedState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __36__AMFIConnection_removeManagedState__block_invoke_cold_1();
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;
}

void __39__AMFIConnection_initiateDataMigration__block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __39__AMFIConnection_initiateDataMigration__block_invoke_32_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] data migration error: %@", v2, v3, v4, v5, v6);
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __46__AMFIConnection_initiateDeveloperModeDaemons__block_invoke_33_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] developer mode daemons error: %@", v2, v3, v4, v5, v6);
}

void __39__AMFIConnection_getSEPStateWithError___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __66__AMFIConnection_signTeamID_withSignType_withLAContext_withError___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __38__AMFIConnection_stageProfileForUuid___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __44__AMFIConnection_getStagedProfileWithError___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __39__AMFIConnection_commitProfileForUuid___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __63__AMFIConnection_setTrustForTeamID_withSignature_withSignType___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __39__AMFIConnection_removeTrustforTeamID___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __37__AMFIConnection_setSupervisedState___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __31__AMFIConnection_setDemoState___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __34__AMFIConnection_setManagedState___block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

void __36__AMFIConnection_removeManagedState__block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_1(&dword_240EEA000, v0, v1, "[%s] xpc error: %@", v2, v3, v4, v5, v6);
}

@end