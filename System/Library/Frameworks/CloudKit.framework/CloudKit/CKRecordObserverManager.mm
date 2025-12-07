@interface CKRecordObserverManager
+ (CKRecordObserverManager)sharedManager;
- (CKRecordObserverManager)init;
- (void)addRecordObserver:(id)observer block:(id)block;
- (void)handleRecordChange:(id)change container:(id)container completionHandler:(id)handler;
- (void)removeRecordObserver:(id)observer;
@end

@implementation CKRecordObserverManager

+ (CKRecordObserverManager)sharedManager
{
  if (qword_1ED4B62B0 != -1)
  {
    dispatch_once(&qword_1ED4B62B0, &unk_1EFA2FB88);
  }

  v3 = qword_1ED4B62A8;

  return v3;
}

- (CKRecordObserverManager)init
{
  v10.receiver = self;
  v10.super_class = CKRecordObserverManager;
  v2 = [(CKRecordObserverManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.cloudkit.recordObserver", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v7 = objc_msgSend_weakToStrongObjectsMapTable(MEMORY[0x1E696AD18], v5, v6);
    recordObservers = v2->_recordObservers;
    v2->_recordObservers = v7;
  }

  return v2;
}

- (void)addRecordObserver:(id)observer block:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  blockCopy = block;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v8 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = observerCopy;
    _os_log_impl(&dword_1883EA000, v8, OS_LOG_TYPE_DEFAULT, "Adding record observer: %@", &v14, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    recordObservers = selfCopy->_recordObservers;
  }

  else
  {
    recordObservers = 0;
  }

  v11 = recordObservers;
  v12 = _Block_copy(blockCopy);
  objc_msgSend_setObject_forKey_(v11, v13, v12, observerCopy);

  objc_sync_exit(selfCopy);
}

- (void)removeRecordObserver:(id)observer
{
  v12 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  if (ck_log_initialization_predicate != -1)
  {
    dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
  }

  v5 = ck_log_facility_ck;
  if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = observerCopy;
    _os_log_impl(&dword_1883EA000, v5, OS_LOG_TYPE_DEFAULT, "Removing record observer: %@", &v10, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy)
  {
    recordObservers = selfCopy->_recordObservers;
  }

  else
  {
    recordObservers = 0;
  }

  v8 = recordObservers;
  objc_msgSend_removeObjectForKey_(v8, v9, observerCopy);

  objc_sync_exit(selfCopy);
}

- (void)handleRecordChange:(id)change container:(id)container completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  containerCopy = container;
  handlerCopy = handler;
  if (changeCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy)
    {
      recordObservers = selfCopy->_recordObservers;
    }

    else
    {
      recordObservers = 0;
    }

    v11 = recordObservers;
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = sub_188644268;
    v39[3] = &unk_1E70BFCD8;
    v40 = containerCopy;
    v12 = changeCopy;
    v41 = v12;
    v14 = objc_msgSend_CKFlatMap_(v11, v13, v39);

    objc_sync_exit(selfCopy);
    v15 = dispatch_group_create();
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v14;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v16, &v35, v43, 16);
    if (v17)
    {
      v18 = *v36;
      do
      {
        v19 = 0;
        do
        {
          if (*v36 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v35 + 1) + 8 * v19);
          dispatch_group_enter(v15);
          if (selfCopy)
          {
            queue = selfCopy->_queue;
          }

          else
          {
            queue = 0;
          }

          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1886444CC;
          block[3] = &unk_1E70BC338;
          v32 = v12;
          v34 = v20;
          v33 = v15;
          dispatch_async(queue, block);

          ++v19;
        }

        while (v17 != v19);
        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, &v35, v43, 16);
        v17 = v23;
      }

      while (v23);
    }

    if (handlerCopy)
    {
      if (selfCopy)
      {
        selfCopy = selfCopy->_queue;
      }

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = sub_1886445C0;
      v29[3] = &unk_1E70BC2C0;
      v30 = handlerCopy;
      dispatch_group_notify(v15, &selfCopy->super, v29);
    }
  }

  else
  {
    if (ck_log_initialization_predicate != -1)
    {
      dispatch_once(&ck_log_initialization_predicate, ck_log_initialization_block);
    }

    v24 = ck_log_facility_ck;
    if (os_log_type_enabled(ck_log_facility_ck, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1883EA000, v24, OS_LOG_TYPE_INFO, "Received a nil recordChange", buf, 2u);
    }

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, v25);
    }
  }
}

@end