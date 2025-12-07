@interface GDHomeManager
- (GDHomeManager)init;
- (NSArray)homes;
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation GDHomeManager

- (NSArray)homes
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = GDConstructionLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C43F8000, v3, OS_LOG_TYPE_DEFAULT, "GDHomeManager: homes called", buf, 2u);
  }

  if (dispatch_semaphore_wait(self->_homeUpdateSem, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5, v6);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v15, "void _PASWaitForeverForSemaphore(dispatch_semaphore_t  _Nonnull __strong)", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v14, v18, v17, @"_PASDispatchInline.h", 39, @"Unexpected failure on unlimited dispatch_semaphore_wait()");
  }

  *buf = 0;
  v21 = buf;
  v22 = 0x3032000000;
  v23 = sub_1C4EF624C;
  v24 = sub_1C4EF625C;
  v25 = 0;
  guardedData = self->_guardedData;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = sub_1C4EF6264;
  v19[3] = &unk_1E81EFA48;
  v19[4] = buf;
  objc_msgSend_runWithLockAcquired_(guardedData, v4, v19, v6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_msgSend_count(*(v21 + 5), v8, v9, v10);
    *v26 = 134217984;
    v27 = v11;
    _os_log_impl(&dword_1C43F8000, v3, OS_LOG_TYPE_DEFAULT, "GDHomeManager: homes returning %tu homes", v26, 0xCu);
  }

  v12 = *(v21 + 5);
  _Block_object_dispose(buf, 8);

  return v12;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  v14 = *MEMORY[0x1E69E9840];
  homesCopy = homes;
  v5 = GDConstructionLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = homesCopy;
    _os_log_impl(&dword_1C43F8000, v5, OS_LOG_TYPE_DEFAULT, "GDHomeManager: homeManagerDidUpdateHomes called with %@", buf, 0xCu);
  }

  guardedData = self->_guardedData;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1C4EF6438;
  v10[3] = &unk_1E81EFA00;
  v11 = homesCopy;
  v7 = homesCopy;
  objc_msgSend_runWithLockAcquired_(guardedData, v8, v10, v9);
  dispatch_semaphore_signal(self->_homeUpdateSem);
}

- (GDHomeManager)init
{
  v21.receiver = self;
  v21.super_class = GDHomeManager;
  v2 = [(GDHomeManager *)&v21 init];
  if (v2)
  {
    v3 = dispatch_semaphore_create(0);
    homeUpdateSem = v2->_homeUpdateSem;
    v2->_homeUpdateSem = v3;

    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v8 = qword_1EC151B10;
    v26 = qword_1EC151B10;
    if (!qword_1EC151B10)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = sub_1C4EF66A4;
      v22[3] = &unk_1E81EFA70;
      v22[4] = &v23;
      sub_1C4EF66A4(v22, v5, v6, v7);
      v8 = v24[3];
    }

    v9 = v8;
    _Block_object_dispose(&v23, 8);
    v10 = objc_opt_new();
    manager = v2->_manager;
    v2->_manager = v10;

    objc_msgSend_setDelegate_(v2->_manager, v12, v2, v13);
    v14 = objc_alloc(MEMORY[0x1E69C5D60]);
    v15 = objc_opt_new();
    v18 = objc_msgSend_initWithGuardedData_(v14, v16, v15, v17);
    guardedData = v2->_guardedData;
    v2->_guardedData = v18;
  }

  return v2;
}

@end