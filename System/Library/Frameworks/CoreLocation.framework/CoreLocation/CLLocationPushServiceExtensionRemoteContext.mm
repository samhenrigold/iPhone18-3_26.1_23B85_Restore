@interface CLLocationPushServiceExtensionRemoteContext
- (CLLocationPushServiceExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (void)didReceiveLocationPushPayload:(id)payload reply:(id)reply;
- (void)serviceExtensionPerformCleanup;
- (void)serviceExtensionWillTerminate;
@end

@implementation CLLocationPushServiceExtensionRemoteContext

- (CLLocationPushServiceExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = CLLocationPushServiceExtensionRemoteContext;
  v5 = [(CLLocationPushServiceExtensionRemoteContext *)&v19 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
  if (v5)
  {
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    v6 = qword_1ED519080;
    if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_msgSend__UUID(v5, v7, v8, v9);
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Location Push Service extension context initialized", buf, 0xCu);
    }

    v11 = sub_19B87DD40();
    if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1ED519078 != -1)
      {
        dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
      }

      v15 = qword_1ED519080;
      v16 = objc_msgSend__UUID(v5, v12, v13, v14);
      v20 = 138543362;
      v21 = v16;
      v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v15, 0, "[%{public}@] Location Push Service extension context initialized", &v20, 12);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext initWithInputItems:listenerEndpoint:contextUUID:]", "CoreLocation: %s\n", v17);
      if (v17 != buf)
      {
        free(v17);
      }
    }
  }

  return v5;
}

- (void)didReceiveLocationPushPayload:(id)payload reply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = objc_msgSend__principalObject(self, a2, payload, reply);
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
  }

  v8 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = objc_msgSend__UUID(self, v9, v10, v11);
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] didReceiveLocationPushPayload:reply:", buf, 0xCu);
  }

  v12 = sub_19B87DD40();
  if (*(v12 + 160) > 1 || *(v12 + 164) > 1 || *(v12 + 168) > 1 || *(v12 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    v16 = qword_1ED519080;
    v19 = 138543362;
    v20 = objc_msgSend__UUID(self, v13, v14, v15);
    v17 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v16, 0, "[%{public}@] didReceiveLocationPushPayload:reply:", &v19, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext didReceiveLocationPushPayload:reply:]", "CoreLocation: %s\n", v17);
    if (v17 != buf)
    {
      free(v17);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9CC740;
  block[3] = &unk_1E753CF60;
  block[4] = v7;
  block[5] = payload;
  block[6] = reply;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)serviceExtensionWillTerminate
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend__principalObject(self, a2, v2, v3);
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
  }

  v6 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = objc_msgSend__UUID(self, v7, v8, v9);
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Location Push Service extension time will expire", buf, 0xCu);
  }

  v10 = sub_19B87DD40();
  if (*(v10 + 160) > 1 || *(v10 + 164) > 1 || *(v10 + 168) > 1 || *(v10 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    v14 = qword_1ED519080;
    v17 = 138543362;
    v18 = objc_msgSend__UUID(self, v11, v12, v13);
    v15 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v14, 0, "[%{public}@] Location Push Service extension time will expire", &v17, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext serviceExtensionWillTerminate]", "CoreLocation: %s\n", v15);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B9CC990;
  block[3] = &unk_1E753CC90;
  block[4] = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)serviceExtensionPerformCleanup
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1ED519078 != -1)
  {
    dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
  }

  v3 = qword_1ED519080;
  if (os_log_type_enabled(qword_1ED519080, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = objc_msgSend__UUID(self, v4, v5, v6);
    _os_log_impl(&dword_19B873000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Cleaning up extension", buf, 0xCu);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1ED519078 != -1)
    {
      dispatch_once(&qword_1ED519078, &unk_1F0E6E5B8);
    }

    v12 = qword_1ED519080;
    v14 = 138543362;
    v15 = objc_msgSend__UUID(self, v9, v10, v11);
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, v12, 0, "[%{public}@] Cleaning up extension", &v14, 12);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationPushServiceExtensionRemoteContext serviceExtensionPerformCleanup]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  objc_msgSend_completeRequestReturningItems_completionHandler_(self, v8, 0, 0);
}

@end