@interface CLHarvester
- (id)currentStateDictionary;
- (void)connect;
- (void)dealloc;
- (void)submitSample:(id)sample;
@end

@implementation CLHarvester

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLHarvester;
  [(CLHarvester *)&v3 dealloc];
}

- (void)connect
{
  v3 = objc_alloc(MEMORY[0x1E696B0B8]);
  v5 = objc_msgSend_initWithMachServiceName_options_(v3, v4, @"com.apple.locationd.harvester", 4096);
  self->_connection = v5;
  if (v5)
  {
    v8 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v6, &unk_1F0EAD240, v7);
    v9 = NSClassFromString(&cfstr_Clppoiharvest.isa);
    objc_msgSend_setClass_forSelector_argumentIndex_ofReply_(v8, v10, v9, sel_submitSample_, 0, 0);
    v11 = MEMORY[0x1E695DFD8];
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v18 = objc_msgSend_setWithObjects_(v11, v16, v12, v17, v13, v14, v15, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v8, v19, v18, sel_fetchStateWithReply_, 0, 1);
    objc_msgSend_setRemoteObjectInterface_(self->_connection, v20, v8, v21);
    connection = self->_connection;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_19B9DBD1C;
    v30[3] = &unk_1E753CC90;
    v30[4] = self;
    objc_msgSend_setInvalidationHandler_(connection, v23, v30, v24);
    objc_msgSend_setInterruptionHandler_(self->_connection, v25, &unk_1F0E6E768, v26);
    objc_msgSend_resume(self->_connection, v27, v28, v29);
  }
}

- (void)submitSample:(id)sample
{
  connection = self->_connection;
  if (!connection)
  {
    objc_msgSend_connect(self, a2, sample, v3);
    connection = self->_connection;
  }

  v7 = objc_msgSend_remoteObjectProxy(connection, a2, sample, v3);

  MEMORY[0x1EEE66B58](v7, sel_submitSample_, sample, v8);
}

- (id)currentStateDictionary
{
  connection = self->_connection;
  if (!connection)
  {
    objc_msgSend_connect(self, a2, v2, v3);
    connection = self->_connection;
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x3052000000;
  v15 = sub_19B9DC1D8;
  v16 = sub_19B9DC1E8;
  v17 = 0;
  v6 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(connection, a2, &unk_1F0E6E788, v3);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_19B9DC398;
  v11[3] = &unk_1E753E5B8;
  v11[4] = &v12;
  objc_msgSend_fetchStateWithReply_(v6, v7, v11, v8);
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);
  return v9;
}

@end