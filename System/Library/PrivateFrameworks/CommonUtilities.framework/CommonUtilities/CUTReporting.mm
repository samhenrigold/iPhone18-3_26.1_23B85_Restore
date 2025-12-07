@interface CUTReporting
+ (id)RTCSessionPromiseWithBatchingInterval:(double)interval;
+ (id)_rtcReportingSession;
+ (id)reportingSession;
+ (void)startRTCReportingSessionWithCompletion:(id)completion;
- (CUTReporting)init;
- (id)_RTCSessionPromiseWithBatchingInterval:(double)interval;
- (void)_beginPromiseTimeoutWithInterval:(int64_t)interval;
- (void)_failSeal:(id)seal withError:(id)error;
- (void)_fullfillSeal:(id)seal withSession:(id)session;
- (void)_startConfigurationOfSession:(id)session withPromiseSeal:(id)seal;
@end

@implementation CUTReporting

+ (id)reportingSession
{
  if (qword_1EB7AAD50 != -1)
  {
    sub_1B232344C();
  }

  v3 = qword_1EB7AAD48;

  return v3;
}

+ (id)_rtcReportingSession
{
  v27[4] = *MEMORY[0x1E69E9840];
  if (qword_1EB7AADB8 != -1)
  {
    sub_1B233194C();
  }

  v2 = qword_1EB7AADC0;
  if (qword_1EB7AADC0)
  {
    v2 = *qword_1EB7AADC0;
  }

  v3 = v2;
  v26[0] = v3;
  v27[0] = &unk_1F299BB10;
  if (qword_1EB7AADA8 != -1)
  {
    sub_1B2331960();
  }

  v4 = qword_1EB7AADB0;
  if (qword_1EB7AADB0)
  {
    v4 = *qword_1EB7AADB0;
  }

  v5 = v4;
  v26[1] = v5;
  v27[1] = &unk_1F299BB28;
  if (qword_1EB7AAD98 != -1)
  {
    sub_1B2331974();
  }

  v6 = qword_1EB7AADA0;
  if (qword_1EB7AADA0)
  {
    v6 = *qword_1EB7AADA0;
  }

  v7 = v6;
  v26[2] = v7;
  v27[2] = &unk_1F299BB28;
  if (qword_1EB7AADC8 != -1)
  {
    sub_1B2331988();
  }

  v8 = qword_1EB7AADD0;
  if (qword_1EB7AADD0)
  {
    v8 = *qword_1EB7AADD0;
  }

  v26[3] = v8;
  v27[3] = MEMORY[0x1E695E118];
  v9 = MEMORY[0x1E695DF20];
  v10 = v8;
  v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v9, v11, v27, v26, 4);

  if (qword_1EB7AAD88 != -1)
  {
    sub_1B233199C();
  }

  v13 = qword_1EB7AAD90;
  if (qword_1EB7AAD90)
  {
    v13 = *qword_1EB7AAD90;
  }

  v14 = v13;
  v24[0] = v14;
  v25[0] = @"ids";
  if (qword_1EB7AAD78 != -1)
  {
    sub_1B23319C4();
  }

  v15 = qword_1EB7AAD80;
  if (qword_1EB7AAD80)
  {
    v15 = *qword_1EB7AAD80;
  }

  v24[1] = v15;
  v25[1] = @"client";
  v16 = MEMORY[0x1E695DF20];
  v17 = v15;
  v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(v16, v18, v25, v24, 2);

  if (qword_1EB7AAD68 != -1)
  {
    sub_1B23319EC();
  }

  v20 = objc_alloc(CUTWeakLinkClass(@"RTCReporting", @"RTCReporting"));
  v22 = objc_msgSend_initWithSessionInfo_userInfo_frameworksToCheck_(v20, v21, v12, v19, qword_1EB7AAD70);

  return v22;
}

- (CUTReporting)init
{
  v6.receiver = self;
  v6.super_class = CUTReporting;
  v2 = [(CUTReporting *)&v6 init];
  v3 = v2;
  if (v2)
  {
    promise = v2->_promise;
    v2->_promise = 0;

    v3->_promiseLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

+ (void)startRTCReportingSessionWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = CUTIsInternalInstall();
  if (v4)
  {
    v5 = sub_1B2323460(v4);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1B2329474;
    block[3] = &unk_1E7B20D98;
    v7 = completionCopy;
    dispatch_async(v5, block);
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

+ (id)RTCSessionPromiseWithBatchingInterval:(double)interval
{
  v5 = objc_msgSend_reportingSession(CUTReporting, a2, v3);
  v8 = objc_msgSend__RTCSessionPromiseWithBatchingInterval_(v5, v6, v7, interval);

  return v8;
}

- (id)_RTCSessionPromiseWithBatchingInterval:(double)interval
{
  v27[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_promiseLock);
  promise = self->_promise;
  if (promise)
  {
    v6 = promise;
    os_unfair_lock_unlock(&self->_promiseLock);
  }

  else
  {
    v7 = [CUTPromiseSeal alloc];
    v8 = sub_1B2323460(v7);
    v10 = objc_msgSend_initWithQueue_(v7, v9, v8);

    v6 = objc_msgSend_promise(v10, v11, v12);
    objc_storeStrong(&self->_promise, v6);
    os_unfair_lock_unlock(&self->_promiseLock);
    if (v10)
    {
      objc_msgSend__beginPromiseTimeoutWithInterval_(self, v13, interval);
      if (CUTIsInternalInstall())
      {
        v17 = objc_msgSend__rtcReportingSession(CUTReporting, v14, v15);
        if (v17)
        {
          objc_msgSend__startConfigurationOfSession_withPromiseSeal_(self, v16, v17, v10);
        }

        else
        {
          v23 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v16, @"CUTReportingErrorDomain", 2, 0);
          objc_msgSend__failSeal_withError_(self, v24, v10, v23);
        }
      }

      else
      {
        v18 = MEMORY[0x1E696ABC0];
        v26 = *MEMORY[0x1E696A278];
        v27[0] = @"CUTReporting does not support non-internal builds.";
        v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v14, v27, &v26, 1);
        v21 = objc_msgSend_errorWithDomain_code_userInfo_(v18, v20, @"CUTReportingErrorDomain", 1, v19);
        objc_msgSend__failSeal_withError_(self, v22, v10, v21);
      }
    }
  }

  return v6;
}

- (void)_beginPromiseTimeoutWithInterval:(int64_t)interval
{
  v4 = dispatch_time(0, 1000000000 * interval);
  v5 = sub_1B2323460(v4);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B2329888;
  block[3] = &unk_1E7B20EB0;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (void)_startConfigurationOfSession:(id)session withPromiseSeal:(id)seal
{
  sessionCopy = session;
  sealCopy = seal;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = sub_1B23299A0;
  v11[3] = &unk_1E7B20ED8;
  v11[4] = self;
  v12 = sealCopy;
  v13 = sessionCopy;
  v8 = sessionCopy;
  v9 = sealCopy;
  objc_msgSend_startConfigurationWithCompletionHandler_(v8, v10, v11);
}

- (void)_fullfillSeal:(id)seal withSession:(id)session
{
  sealCopy = seal;
  sessionCopy = session;
  v7 = sub_1B2323460(sessionCopy);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B2329B0C;
  v10[3] = &unk_1E7B20D70;
  v11 = sealCopy;
  v12 = sessionCopy;
  v8 = sessionCopy;
  v9 = sealCopy;
  dispatch_async(v7, v10);
}

- (void)_failSeal:(id)seal withError:(id)error
{
  sealCopy = seal;
  errorCopy = error;
  v7 = sub_1B2323460(errorCopy);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1B2329BE4;
  v10[3] = &unk_1E7B20D70;
  v11 = sealCopy;
  v12 = errorCopy;
  v8 = errorCopy;
  v9 = sealCopy;
  dispatch_async(v7, v10);
}

@end