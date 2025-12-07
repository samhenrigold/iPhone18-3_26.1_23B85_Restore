@interface APFixedHTTPSessionManager
- (APFixedHTTPSessionManager)init;
- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler;
- (BOOL)invalidateService:(id)service andCancelTasks:(BOOL)tasks;
- (id)sessionForService:(id)service;
- (void)invalidateAllServicesAndCancelTasks:(BOOL)tasks;
@end

@implementation APFixedHTTPSessionManager

- (APFixedHTTPSessionManager)init
{
  v14.receiver = self;
  v14.super_class = APFixedHTTPSessionManager;
  v5 = [(APFixedHTTPSessionManager *)&v14 init];
  if (v5)
  {
    v6 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v2, v3, v4);
    sessions = v5->_sessions;
    v5->_sessions = v6;

    v8 = [APUnfairLock alloc];
    v11 = objc_msgSend_initWithOptions_(v8, v9, 1, v10);
    lock = v5->_lock;
    v5->_lock = v11;
  }

  return v5;
}

- (id)sessionForService:(id)service
{
  serviceCopy = service;
  v8 = objc_msgSend_lock(self, v5, v6, v7);
  objc_msgSend_lock(v8, v9, v10, v11);
  v15 = objc_msgSend_sessions(self, v12, v13, v14);
  v18 = objc_msgSend_objectForKey_(v15, v16, serviceCopy, v17);

  if (!v18)
  {
    v18 = objc_msgSend_createSessionBlock(self, v19, v20, v21);

    if (v18)
    {
      v23 = objc_msgSend_createSessionBlock(self, v19, v20, v21);
      v18 = (v23)[2](v23, serviceCopy, -1);

      if (v18)
      {
        v24 = objc_msgSend_sessions(self, v19, v20, v21);
        objc_msgSend_setObject_forKey_(v24, v25, v18, serviceCopy);
      }
    }
  }

  objc_msgSend_unlock(v8, v19, v20, v21);

  return v18;
}

- (void)invalidateAllServicesAndCancelTasks:(BOOL)tasks
{
  v6 = objc_msgSend_lock(self, a2, tasks, v3);
  objc_msgSend_lock(v6, v7, v8, v9);
  v13 = objc_msgSend_sessions(self, v10, v11, v12);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = sub_1BAF04D90;
  v26[3] = &unk_1E7F1CC48;
  tasksCopy = tasks;
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v13, v14, v26, v15);

  v19 = objc_msgSend_sessions(self, v16, v17, v18);
  objc_msgSend_removeAllObjects(v19, v20, v21, v22);

  objc_msgSend_unlock(v6, v23, v24, v25);
}

- (BOOL)cancelTasksForService:(id)service withCompletionHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  handlerCopy = handler;
  v11 = objc_msgSend_lock(self, v8, v9, v10);
  objc_msgSend_lock(v11, v12, v13, v14);
  v18 = objc_msgSend_sessions(self, v15, v16, v17);
  v21 = objc_msgSend_objectForKey_(v18, v19, serviceCopy, v20);

  if (v21)
  {
    objc_msgSend_cancelTaskWithCompletionHandler_(v21, v22, handlerCopy, v23);
    v24 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v30 = 138543362;
      v31 = serviceCopy;
      _os_log_impl(&dword_1BADC1000, v24, OS_LOG_TYPE_INFO, "All pending tasks of %{public}@ are canceled.", &v30, 0xCu);
    }
  }

  else
  {
    v28 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v30 = 138543362;
      v31 = serviceCopy;
      _os_log_impl(&dword_1BADC1000, v28, OS_LOG_TYPE_ERROR, "Service %{public}@ is not found.", &v30, 0xCu);
    }

    handlerCopy[2](handlerCopy);
  }

  objc_msgSend_unlock(v11, v25, v26, v27);

  return v21 != 0;
}

- (BOOL)invalidateService:(id)service andCancelTasks:(BOOL)tasks
{
  tasksCopy = tasks;
  v39 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v10 = objc_msgSend_lock(self, v7, v8, v9);
  objc_msgSend_lock(v10, v11, v12, v13);
  v17 = objc_msgSend_sessions(self, v14, v15, v16);
  v20 = objc_msgSend_objectForKey_(v17, v18, serviceCopy, v19);

  if (v20)
  {
    objc_msgSend_invalidateSessionAndCancelTasks_(v20, v21, tasksCopy, v22);
    v26 = objc_msgSend_sessions(self, v23, v24, v25);
    objc_msgSend_removeObjectForKey_(v26, v27, serviceCopy, v28);

    v29 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v37 = 138543362;
      v38 = serviceCopy;
      v30 = "Service %{public}@ is invalidated.";
      v31 = v29;
      v32 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1BADC1000, v31, v32, v30, &v37, 0xCu);
    }
  }

  else
  {
    v29 = APLogForCategory(0x22uLL);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v37 = 138543362;
      v38 = serviceCopy;
      v30 = "Service %{public}@ is not found.";
      v31 = v29;
      v32 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  objc_msgSend_unlock(v10, v33, v34, v35);
  return v20 != 0;
}

@end