@interface IMDSpotlightClientStateManager
+ (id)sharedManager;
- (id)_timeoutError;
- (id)currentClientStateWithError:(id *)error;
- (id)description;
- (void)_currentClientStateWithCompletion:(id)completion;
- (void)_migrateClientStateFromManager:(id)manager;
- (void)_saveClientState:(id)state withCompletion:(id)completion;
- (void)currentClientStateWithCompletion:(id)completion;
- (void)saveClientState:(id)state;
- (void)saveClientState:(id)state withCompletion:(id)completion;
- (void)saveClientState:(id)state withError:(id *)error;
@end

@implementation IMDSpotlightClientStateManager

+ (id)sharedManager
{
  if (qword_1EBA53A88 != -1)
  {
    sub_1B7CF8D40();
  }

  v3 = qword_1EBA53A60;

  return v3;
}

- (void)_migrateClientStateFromManager:(id)manager
{
  managerCopy = manager;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_1B7B8F54C;
  v6[3] = &unk_1E7CB6770;
  v7 = managerCopy;
  selfCopy = self;
  v5 = managerCopy;
  IMDIndexingClientRequest(v6);
}

- (id)currentClientStateWithError:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  if (qword_1EBA53B98 != -1)
  {
    sub_1B7CF8D54();
  }

  if (*&qword_1EBA540A8 > 0.0)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540A8;
      _os_log_impl(&dword_1B7AD5000, v5, OS_LOG_TYPE_DEFAULT, "Beginning simulated hang of %f seconds", &buf, 0xCu);
    }

    usleep((*&qword_1EBA540A8 * 1000000.0));
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540A8;
      _os_log_impl(&dword_1B7AD5000, v6, OS_LOG_TYPE_DEFAULT, "Finished simulated hang of %f seconds", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v28 = 0x3032000000;
  v29 = sub_1B7AE1A34;
  v30 = sub_1B7AE2530;
  v31 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_1B7AE1A34;
  v25 = sub_1B7AE2530;
  v26 = 0;
  v7 = dispatch_semaphore_create(0);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = sub_1B7B8FA8C;
  v17[3] = &unk_1E7CBB588;
  p_buf = &buf;
  v20 = &v21;
  v8 = v7;
  v18 = v8;
  objc_msgSend__currentClientStateWithCompletion_(self, v9, v17, v10);
  v11 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v8, v11))
  {
    if (error)
    {
      objc_msgSend__timeoutError(self, v12, v13, v14);
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (error)
    {
      *error = v22[5];
    }

    v15 = *(*(&buf + 1) + 40);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&buf, 8);

  return v15;
}

- (void)currentClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1B7B8FBBC;
  v8[3] = &unk_1E7CBB5D8;
  v9 = completionCopy;
  v5 = completionCopy;
  objc_msgSend__currentClientStateWithCompletion_(self, v6, v8, v7);
}

- (void)_currentClientStateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v4, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v5);
}

- (void)saveClientState:(id)state
{
  v15 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  v8 = 0;
  objc_msgSend_saveClientState_withError_(self, v5, stateCopy, &v8);
  v6 = v8;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      selfCopy = self;
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = stateCopy;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Failed to save client state to %@ with error: %@ client state: %@", buf, 0x20u);
    }
  }
}

- (id)_timeoutError
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = *MEMORY[0x1E69A7C30];
  v9 = *MEMORY[0x1E696A278];
  v10[0] = @"Timed out talking to Spotlight.";
  v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v4, v10, &v9, 1);
  v7 = objc_msgSend_initWithDomain_code_userInfo_(v2, v6, v3, 2, v5);

  return v7;
}

- (void)saveClientState:(id)state withError:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (qword_1EBA53B90 != -1)
  {
    sub_1B7CF8D68();
  }

  if (*&qword_1EBA540B0 > 0.0)
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540B0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_DEFAULT, "Beginning simulated hang of %f seconds", &buf, 0xCu);
    }

    usleep((*&qword_1EBA540B0 * 1000000.0));
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = qword_1EBA540B0;
      _os_log_impl(&dword_1B7AD5000, v8, OS_LOG_TYPE_DEFAULT, "Finished simulated hang of %f seconds", &buf, 0xCu);
    }
  }

  v9 = dispatch_semaphore_create(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v24 = 0x3032000000;
  v25 = sub_1B7AE1A34;
  v26 = sub_1B7AE2530;
  v27 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = sub_1B7B90180;
  v20 = &unk_1E7CBB600;
  p_buf = &buf;
  v10 = v9;
  v21 = v10;
  objc_msgSend__saveClientState_withCompletion_(self, v11, stateCopy, &v17);
  v12 = dispatch_time(0, 10000000000);
  if (dispatch_semaphore_wait(v10, v12))
  {
    if (error)
    {
      v16 = objc_msgSend__timeoutError(self, v13, v14, v15, v17, v18, v19, v20);
LABEL_14:
      *error = v16;
    }
  }

  else if (error)
  {
    v16 = *(*(&buf + 1) + 40);
    goto LABEL_14;
  }

  _Block_object_dispose(&buf, 8);
}

- (void)saveClientState:(id)state withCompletion:(id)completion
{
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1B7B90284;
  v9[3] = &unk_1E7CBB328;
  v10 = completionCopy;
  v7 = completionCopy;
  objc_msgSend__saveClientState_withCompletion_(self, v8, state, v9);
}

- (void)_saveClientState:(id)state withCompletion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  v8 = objc_msgSend_exceptionWithName_reason_userInfo_(MEMORY[0x1E695DF30], v7, *MEMORY[0x1E695D930], @"Not yet implemented", 0);
  objc_exception_throw(v8);
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v8 = objc_msgSend_stringWithFormat_(v3, v6, @"<%@ %p>", v7, v5, self);

  return v8;
}

@end