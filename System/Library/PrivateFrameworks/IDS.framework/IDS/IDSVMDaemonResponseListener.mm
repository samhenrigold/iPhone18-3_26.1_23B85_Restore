@interface IDSVMDaemonResponseListener
- (IDSVMDaemonResponseListener)initWithRequestTimer:(id)timer;
- (void)vmDataResponse:(id)response forRequestID:(id)d withError:(id)error;
@end

@implementation IDSVMDaemonResponseListener

- (IDSVMDaemonResponseListener)initWithRequestTimer:(id)timer
{
  timerCopy = timer;
  if (_IDSRunningInDaemon())
  {
    v6 = [MEMORY[0x1E69A6138] vm];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195B268D8(self, v6);
    }

    selfCopy = 0;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = IDSVMDaemonResponseListener;
    v8 = [(IDSVMDaemonResponseListener *)&v11 init];
    v9 = v8;
    if (v8)
    {
      objc_storeStrong(&v8->_requestTimer, timer);
    }

    self = v9;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)vmDataResponse:(id)response forRequestID:(id)d withError:(id)error
{
  v21 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  dCopy = d;
  errorCopy = error;
  v11 = [(IDSDaemonRequestTimer *)self->_requestTimer invalidateTimeoutAndReturnHandlerForRequestID:dCopy];
  block = [v11 block];
  v13 = [MEMORY[0x1E69A6138] vm];
  v14 = v13;
  if (block)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412802;
      v16 = dCopy;
      v17 = 2112;
      v18 = responseCopy;
      v19 = 2112;
      v20 = errorCopy;
      _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "Calling out to completion block for vm request %@ data %@ error %@", &v15, 0x20u);
    }

    (block)[2](block, responseCopy, errorCopy);
  }

  else
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2AAA0(dCopy, v14);
    }
  }
}

@end