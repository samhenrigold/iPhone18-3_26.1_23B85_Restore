@interface CLLocationManagerGathering
- (CLLocationManagerGathering)init;
- (CLLocationManagerGathering)initWithQueue:(id)queue;
- (id)getConnection;
- (id)getRemoteObjectProxy;
- (void)configure:(id)configure withCompletionHandler:(id)handler;
- (void)dealloc;
- (void)fetchAdvertisementsDetailedWithHandler:(id)handler;
- (void)fetchAdvertisementsWithHandler:(id)handler;
@end

@implementation CLLocationManagerGathering

- (CLLocationManagerGathering)init
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"_CLLocationManagerGatheringProxy, %p", v2, self);
  v8 = objc_msgSend_UTF8String(v4, v5, v6, v7);
  v9 = dispatch_queue_create(v8, 0);
  v12 = objc_msgSend_initWithQueue_(self, v10, v9, v11);
  dispatch_release(v9);
  return v12;
}

- (CLLocationManagerGathering)initWithQueue:(id)queue
{
  if (!queue)
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, v3);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v10, a2, self, @"CLLocationManagerGathering.mm", 38, @"Invalid parameter not satisfying: %@", @"queue");
  }

  v11.receiver = self;
  v11.super_class = CLLocationManagerGathering;
  v6 = [(CLLocationManagerGathering *)&v11 init];
  if (v6)
  {
    v6->_queue = queue;
  }

  return v6;
}

- (void)dealloc
{
  v5 = objc_msgSend_connection(self, a2, v2, v3);
  objc_msgSend_invalidate(v5, v6, v7, v8);
  objc_msgSend_setConnection_(self, v9, 0, v10);
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v12.receiver = self;
  v12.super_class = CLLocationManagerGathering;
  [(CLLocationManagerGathering *)&v12 dealloc];
}

- (id)getConnection
{
  v71 = *MEMORY[0x1E69E9840];
  result = self->_connection;
  if (!result)
  {
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v4 = qword_1EAFE4710;
    if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19B873000, v4, OS_LOG_TYPE_DEBUG, "Creating new connection...", buf, 2u);
    }

    v5 = sub_19B87DD40();
    if (*(v5 + 160) > 1 || *(v5 + 164) > 1 || *(v5 + 168) > 1 || *(v5 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      LOWORD(location) = 0;
      v6 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 2, "Creating new connection...", &location, 2);
      sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]", "CoreLocation: %s\n", v6);
      if (v6 != buf)
      {
        free(v6);
      }
    }

    v7 = objc_alloc(MEMORY[0x1E696B0B8]);
    v9 = objc_msgSend_initWithMachServiceName_options_(v7, v8, @"com.apple.locationd.gathering", 4096);
    self->_connection = v9;
    if (v9)
    {
      objc_msgSend__setQueue_(v9, v10, self->_queue, v11);
      v14 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v12, &unk_1F0EAC8C8, v13);
      objc_msgSend_setExportedInterface_(self->_connection, v15, v14, v16);
      objc_msgSend_setExportedObject_(self->_connection, v17, self, v18);
      v21 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v19, &unk_1F0EAC928, v20);
      objc_msgSend_setRemoteObjectInterface_(self->_connection, v22, v21, v23);
      v27 = objc_msgSend_remoteObjectInterface(self->_connection, v24, v25, v26);
      v28 = MEMORY[0x1E695DFD8];
      v29 = objc_opt_class();
      v30 = objc_opt_class();
      v33 = objc_msgSend_setWithObjects_(v28, v31, v29, v32, v30, 0);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v27, v34, v33, sel_fetchAdvertisementsWithCompletion_, 0, 1);
      v38 = objc_msgSend_remoteObjectInterface(self->_connection, v35, v36, v37);
      v39 = MEMORY[0x1E695DFD8];
      v40 = objc_opt_class();
      v41 = objc_opt_class();
      v44 = objc_msgSend_setWithObjects_(v39, v42, v40, v43, v41, 0);
      objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v38, v45, v44, sel_fetchAdvertisementsDetailedWithCompletion_, 0, 1);
      v49 = objc_msgSend_serviceName(self->_connection, v46, v47, v48);
      connection = self->_connection;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = sub_19B8E23A4;
      v69[3] = &unk_1E753CC90;
      v69[4] = v49;
      objc_msgSend_setInterruptionHandler_(connection, v51, v69, v52);
      objc_initWeak(&location, self);
      v53 = self->_connection;
      v66[0] = MEMORY[0x1E69E9820];
      v66[1] = 3221225472;
      v66[2] = sub_19B8E2570;
      v66[3] = &unk_1E753D618;
      v66[4] = v49;
      objc_copyWeak(&v67, &location);
      objc_msgSend_setInvalidationHandler_(v53, v54, v66, v55);
      objc_msgSend_activate(self->_connection, v56, v57, v58);
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v59 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v59, OS_LOG_TYPE_DEBUG, "Creating new connection... activated!", buf, 2u);
      }

      v60 = sub_19B87DD40();
      if (*(v60 + 160) > 1 || *(v60 + 164) > 1 || *(v60 + 168) > 1 || *(v60 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
        }

        v65[0] = 0;
        v61 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 2, "Creating new connection... activated!", v65, 2);
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]", "CoreLocation: %s\n", v61);
        if (v61 != buf)
        {
          free(v61);
        }
      }

      objc_destroyWeak(&v67);
      objc_destroyWeak(&location);
      return self->_connection;
    }

    else
    {
      if (qword_1EAFE46D8 != -1)
      {
        dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
      }

      v62 = qword_1EAFE4710;
      if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B873000, v62, OS_LOG_TYPE_DEFAULT, "NSXPCConnection failed to init", buf, 2u);
      }

      v63 = sub_19B87DD40();
      if (*(v63 + 160) > 1 || *(v63 + 164) > 1 || *(v63 + 168) > 1 || *(v63 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE46D8 != -1)
        {
          dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
        }

        LOWORD(location) = 0;
        v64 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 0, "NSXPCConnection failed to init", &location, 2);
        sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering getConnection]", "CoreLocation: %s\n", v64);
        if (v64 != buf)
        {
          free(v64);
        }
      }

      return 0;
    }
  }

  return result;
}

- (id)getRemoteObjectProxy
{
  Connection = objc_msgSend_getConnection(self, a2, v2, v3);

  return objc_msgSend_remoteObjectProxyWithErrorHandler_(Connection, v5, &unk_1F0E6B940, v6);
}

- (void)fetchAdvertisementsWithHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v6 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "fetchAdvertisementsWithHandler", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v16[0] = 0;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 2, "fetchAdvertisementsWithHandler", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering fetchAdvertisementsWithHandler:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  queue = self->_queue;
  if (!queue)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CLLocationManagerGathering.mm", 119, @"Invalid parameter not satisfying: %@", @"_queue");
    queue = self->_queue;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8E2CF4;
  block[3] = &unk_1E753D688;
  block[4] = self;
  block[5] = handler;
  dispatch_async(queue, block);
}

- (void)fetchAdvertisementsDetailedWithHandler:(id)handler
{
  v18 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v6 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v6, OS_LOG_TYPE_DEBUG, "fetchAdvertisementsDetailedWithHandler", buf, 2u);
  }

  v7 = sub_19B87DD40();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v16[0] = 0;
    v11 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 2, "fetchAdvertisementsDetailedWithHandler", v16, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering fetchAdvertisementsDetailedWithHandler:]", "CoreLocation: %s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  queue = self->_queue;
  if (!queue)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v8, v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CLLocationManagerGathering.mm", 143, @"Invalid parameter not satisfying: %@", @"_queue");
    queue = self->_queue;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8E3284;
  block[3] = &unk_1E753D688;
  block[4] = self;
  block[5] = handler;
  dispatch_async(queue, block);
}

- (void)configure:(id)configure withCompletionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46D8 != -1)
  {
    dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
  }

  v8 = qword_1EAFE4710;
  if (os_log_type_enabled(qword_1EAFE4710, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19B873000, v8, OS_LOG_TYPE_DEBUG, "configure:withCompletionHandler:", buf, 2u);
  }

  v9 = sub_19B87DD40();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE46D8 != -1)
    {
      dispatch_once(&qword_1EAFE46D8, &unk_1F0E6B960);
    }

    v18[0] = 0;
    v13 = _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B873000, qword_1EAFE4710, 2, "configure:withCompletionHandler:", v18, 2);
    sub_19B885924("Generic", 1, 0, 2, "[CLLocationManagerGathering configure:withCompletionHandler:]", "CoreLocation: %s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  queue = self->_queue;
  if (!queue)
  {
    v15 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v10, v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v15, v16, a2, self, @"CLLocationManagerGathering.mm", 169, @"Invalid parameter not satisfying: %@", @"_queue");
    queue = self->_queue;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8E3844;
  block[3] = &unk_1E753D000;
  block[4] = self;
  block[5] = handler;
  block[6] = configure;
  dispatch_async(queue, block);
}

@end