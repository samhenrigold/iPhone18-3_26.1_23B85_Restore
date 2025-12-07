@interface SPRConfigurator
- (BOOL)enableDiagnosticModeWithEnable:(BOOL)enable;
- (SPRConfigurator)initWithConnector:(id)connector;
- (id)installWithToken:(id)token force:(BOOL)force error:(id *)error;
- (id)prepare:(id *)prepare;
- (id)prepareAndReturnError:(id *)error;
- (id)prepareAndWarnWithToken:(id)token force:(BOOL)force enableStoreAndForward:(BOOL)forward error:(id *)error;
- (id)prepareAndWarnWithToken:(id)token force:(BOOL)force enableStoreAndForward:(BOOL)forward vtid:(id)vtid error:(id *)error;
- (id)prepareWithForce:(BOOL)force error:(id *)error;
- (id)statusWithToken:(id)token options:(int64_t)options error:(id *)error;
- (void)installAsyncWithToken:(id)token force:(BOOL)force seStorageSheetBundleID:(id)d seStorageSheetSceneID:(id)iD callback:(id)callback;
- (void)installWithToken:(id)token launchSEStorageSheet:(BOOL)sheet seStorageSheetBundleID:(id)d seStorageSheetSceneID:(id)iD delegate:(id)delegate completion:(id)completion;
@end

@implementation SPRConfigurator

- (SPRConfigurator)initWithConnector:(id)connector
{
  v8.receiver = self;
  v8.super_class = SPRConfigurator;
  v3 = [(SPRObject *)&v8 initWithConnector:connector];
  if (v3)
  {
    v4 = dispatch_get_global_queue(25, 0);
    relayQueue = v3->_relayQueue;
    v3->_relayQueue = v4;

    tokenKey = v3->_tokenKey;
    v3->_tokenKey = @"token";
  }

  return v3;
}

- (id)prepare:(id *)prepare
{
  v6 = objc_msgSend_prepareAndWarnAndReturnError_(self, a2, prepare, v3, v4);
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(v6, v7, self->_tokenKey, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)prepareAndReturnError:(id *)error
{
  v6 = objc_msgSend_prepareAndWarnAndReturnError_(self, a2, error, v3, v4);
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(v6, v7, self->_tokenKey, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)prepareWithForce:(BOOL)force error:(id *)error
{
  v6 = objc_msgSend_prepareAndWarnWithForce_error_(self, a2, force, error, v4);
  v10 = v6;
  if (v6)
  {
    v11 = objc_msgSend_objectForKeyedSubscript_(v6, v7, self->_tokenKey, v8, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)prepareAndWarnWithToken:(id)token force:(BOOL)force enableStoreAndForward:(BOOL)forward error:(id *)error
{
  forwardCopy = forward;
  forceCopy = force;
  tokenCopy = token;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_26A94485C;
  v31 = sub_26A94486C;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_26A94485C;
  v25 = sub_26A94486C;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = sub_26A944874;
  v20[3] = &unk_279CA5428;
  v20[4] = &v27;
  v14 = objc_msgSend_syncProxyWithErrorHandler_(self, v11, v20, v12, v13);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_26A944884;
  v19[3] = &unk_279CA5740;
  v19[4] = &v21;
  v19[5] = &v27;
  objc_msgSend_prepareAndWarnWithToken_force_enableStoreAndForward_vtid_reply_(v14, v15, tokenCopy, forceCopy, forwardCopy, 0, v19);

  if (error)
  {
    v16 = v28[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v22[5];
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);

  return v17;
}

- (id)prepareAndWarnWithToken:(id)token force:(BOOL)force enableStoreAndForward:(BOOL)forward vtid:(id)vtid error:(id *)error
{
  forwardCopy = forward;
  forceCopy = force;
  tokenCopy = token;
  vtidCopy = vtid;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_26A94485C;
  v34 = sub_26A94486C;
  v35 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_26A94485C;
  v28 = sub_26A94486C;
  v29 = 0;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_26A944B34;
  v23[3] = &unk_279CA5428;
  v23[4] = &v30;
  v17 = objc_msgSend_syncProxyWithErrorHandler_(self, v14, v23, v15, v16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_26A944B44;
  v22[3] = &unk_279CA5740;
  v22[4] = &v24;
  v22[5] = &v30;
  objc_msgSend_prepareAndWarnWithToken_force_enableStoreAndForward_vtid_reply_(v17, v18, tokenCopy, forceCopy, forwardCopy, vtidCopy, v22);

  if (error)
  {
    v19 = v31[5];
    if (v19)
    {
      *error = v19;
    }
  }

  v20 = v25[5];
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);

  return v20;
}

- (id)installWithToken:(id)token force:(BOOL)force error:(id *)error
{
  tokenCopy = token;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_26A94485C;
  v28 = sub_26A94486C;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_26A94485C;
  v22 = sub_26A94486C;
  v23 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A944DDC;
  v17[3] = &unk_279CA5428;
  v17[4] = &v24;
  v11 = objc_msgSend_syncProxyWithErrorHandler_(self, v8, v17, v9, v10);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_26A944DEC;
  v16[3] = &unk_279CA5768;
  v16[4] = &v18;
  v16[5] = &v24;
  objc_msgSend_installWithToken_launchSEStorageSheet_seStorageSheetBundleID_seStorageSheetSceneID_delegate_reply_(v11, v12, tokenCopy, 0, 0, 0, 0, v16);

  if (error)
  {
    v13 = v25[5];
    if (v13)
    {
      *error = v13;
    }
  }

  v14 = v19[5];
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);

  return v14;
}

- (void)installWithToken:(id)token launchSEStorageSheet:(BOOL)sheet seStorageSheetBundleID:(id)d seStorageSheetSceneID:(id)iD delegate:(id)delegate completion:(id)completion
{
  sheetCopy = sheet;
  completionCopy = completion;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_26A94500C;
  v28[3] = &unk_279CA57B8;
  v28[4] = self;
  v15 = completionCopy;
  v29 = v15;
  delegateCopy = delegate;
  iDCopy = iD;
  dCopy = d;
  tokenCopy = token;
  v23 = objc_msgSend_asyncProxyWithErrorHandler_(self, v20, v28, v21, v22);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_26A9450E4;
  v26[3] = &unk_279CA5808;
  v26[4] = self;
  v27 = v15;
  v24 = v15;
  objc_msgSend_installWithToken_launchSEStorageSheet_seStorageSheetBundleID_seStorageSheetSceneID_delegate_reply_(v23, v25, tokenCopy, sheetCopy, dCopy, iDCopy, delegateCopy, v26);
}

- (void)installAsyncWithToken:(id)token force:(BOOL)force seStorageSheetBundleID:(id)d seStorageSheetSceneID:(id)iD callback:(id)callback
{
  callbackCopy = callback;
  iDCopy = iD;
  dCopy = d;
  tokenCopy = token;
  v15 = [SPRInstallRelay alloc];
  v18 = objc_msgSend_initWithBase_queue_(v15, v16, callbackCopy, self->_relayQueue, v17);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_26A945394;
  v28[3] = &unk_279CA5858;
  v28[4] = self;
  v19 = callbackCopy;
  v29 = v19;
  v23 = objc_msgSend_asyncProxyWithErrorHandler_(self, v20, v28, v21, v22);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = sub_26A945460;
  v26[3] = &unk_279CA58A8;
  v26[4] = self;
  v27 = v19;
  v24 = v19;
  objc_msgSend_installWithToken_launchSEStorageSheet_seStorageSheetBundleID_seStorageSheetSceneID_delegate_reply_(v23, v25, tokenCopy, 0, dCopy, iDCopy, v18, v26);
}

- (id)statusWithToken:(id)token options:(int64_t)options error:(id *)error
{
  tokenCopy = token;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_26A94485C;
  v29 = sub_26A94486C;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_26A94485C;
  v23 = sub_26A94486C;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_26A94578C;
  v18[3] = &unk_279CA5428;
  v18[4] = &v19;
  v12 = objc_msgSend_syncProxyWithErrorHandler_(self, v9, v18, v10, v11);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_26A94579C;
  v17[3] = &unk_279CA5740;
  v17[4] = &v25;
  v17[5] = &v19;
  objc_msgSend_statusWithToken_options_reply_(v12, v13, tokenCopy, options, v17);

  if (error)
  {
    v14 = v20[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = v26[5];
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(&v25, 8);

  return v15;
}

- (BOOL)enableDiagnosticModeWithEnable:(BOOL)enable
{
  enableCopy = enable;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_26A94594C;
  v11[3] = &unk_279CA5478;
  v11[4] = self;
  v6 = objc_msgSend_syncProxyWithErrorHandler_(self, a2, v11, v3, v4);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_26A9459B8;
  v10[3] = &unk_279CA58D0;
  v10[4] = &v12;
  objc_msgSend_enableDiagnosticModeWithEnable_reply_(v6, v7, enableCopy, v10, v8);

  LOBYTE(enableCopy) = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return enableCopy;
}

@end