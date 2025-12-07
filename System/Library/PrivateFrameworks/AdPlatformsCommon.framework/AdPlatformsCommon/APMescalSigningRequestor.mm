@interface APMescalSigningRequestor
- (APMescalSigningRequestor)init;
- (id)signatureForData:(id)data;
- (void)connectionInterrupted;
- (void)connectionInvalidated;
- (void)signatureForData:(id)data completion:(id)completion;
- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion;
@end

@implementation APMescalSigningRequestor

- (APMescalSigningRequestor)init
{
  v3.receiver = self;
  v3.super_class = APMescalSigningRequestor;
  return [(APXPCActionRequester *)&v3 init];
}

- (void)signatureForData:(id)data completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v10 = objc_msgSend_remoteObjectProxy(self, v8, v9);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_1BAFD6EC8;
  v13[3] = &unk_1E7F20FA8;
  v14 = completionCopy;
  v11 = completionCopy;
  objc_msgSend_signatureForData_completion_(v10, v12, dataCopy, v13);
}

- (id)signatureForData:(id)data
{
  dataCopy = data;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1BAFD711C;
  v15 = sub_1BAFD712C;
  v16 = 0;
  v6 = objc_msgSend_synchronousRemoteObjectProxyWithErrorHandler_(self, v5, &unk_1F390A690);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1BAFD71E4;
  v10[3] = &unk_1E7F20FD0;
  v10[4] = &v11;
  objc_msgSend_signatureForData_completion_(v6, v7, dataCopy, v10);

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)signatureForData:(id)data waitTime:(double)time completion:(id)completion
{
  completionCopy = completion;
  dataCopy = data;
  v12 = objc_msgSend_remoteObjectProxy(self, v10, v11);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1BAFD739C;
  v15[3] = &unk_1E7F20FA8;
  v16 = completionCopy;
  v13 = completionCopy;
  objc_msgSend_signatureForData_waitTime_completion_(v12, v14, dataCopy, v15, time);
}

- (void)connectionInterrupted
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BAFC4000, v2, OS_LOG_TYPE_DEFAULT, "Connection to MescalSigning in Daemon was interrupted.", v3, 2u);
  }
}

- (void)connectionInvalidated
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_1BAFC4000, v2, OS_LOG_TYPE_INFO, "Connection to MescalSigning in Daemon was invalidated.", v3, 2u);
  }
}

@end