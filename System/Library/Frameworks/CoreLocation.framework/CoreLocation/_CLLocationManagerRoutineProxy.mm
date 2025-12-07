@interface _CLLocationManagerRoutineProxy
- (_CLLocationManagerRoutineProxy)initWithQueue:(id)queue locationManagerRoutine:(id)routine;
- (id)getRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)createConnection;
- (void)dealloc;
- (void)didUpdateInertialData:(id)data;
- (void)didUpdateLocations:(id)locations;
- (void)didUpdateLocations:(id)locations withReply:(id)reply;
@end

@implementation _CLLocationManagerRoutineProxy

- (_CLLocationManagerRoutineProxy)initWithQueue:(id)queue locationManagerRoutine:(id)routine
{
  if (!queue)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, 0, routine);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CLLocationManagerRoutine.m", 57, @"Invalid parameter not satisfying: %@", @"queue");
    if (routine)
    {
      return 0;
    }

LABEL_7:
    v16 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, queue, routine);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v16, v17, a2, self, @"CLLocationManagerRoutine.m", 58, @"Invalid parameter not satisfying: %@", @"locationManagerRoutine");
    return 0;
  }

  if (!routine)
  {
    goto LABEL_7;
  }

  v18.receiver = self;
  v18.super_class = _CLLocationManagerRoutineProxy;
  v8 = [(_CLLocationManagerRoutineProxy *)&v18 init];
  if (v8)
  {
    v8->_queue = queue;
    objc_msgSend_createConnection(v8, v9, v10, v11);
    v8->_locationManagerRoutine = routine;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v8, sub_19B891FAC, @"com.apple.locationd.routine", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v8;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  objc_msgSend_setLocationManagerRoutine_(self, v4, 0, v5);
  objc_msgSend_setDelegate_(self, v6, 0, v7);
  v11 = objc_msgSend_connection(self, v8, v9, v10);
  objc_msgSend_invalidate(v11, v12, v13, v14);
  objc_msgSend_setConnection_(self, v15, 0, v16);
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v18.receiver = self;
  v18.super_class = _CLLocationManagerRoutineProxy;
  [(_CLLocationManagerRoutineProxy *)&v18 dealloc];
}

- (void)didUpdateLocations:(id)locations
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v5 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, didUpdateLocations)}", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B8921E8;
  v7[3] = &unk_1E753CF38;
  v7[4] = self;
  v7[5] = locations;
  dispatch_async(queue, v7);
}

- (void)didUpdateLocations:(id)locations withReply:(id)reply
{
  v16 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v7 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v13 = 0;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_19B873000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendLocations to RT, didUpdateLocations:withReply}", buf, 0x12u);
  }

  if (reply)
  {
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B89248C;
    block[3] = &unk_1E753CF60;
    block[4] = self;
    block[5] = locations;
    block[6] = reply;
    dispatch_async(queue, block);
  }

  else
  {
    objc_msgSend_didUpdateLocations_(self, v8, locations, v9);
  }
}

- (void)didUpdateInertialData:(id)data
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v5 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 68289026;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    _os_log_impl(&dword_19B873000, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine sendInertial to RT, didUpdateInertialData}", buf, 0x12u);
  }

  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B89272C;
  v7[3] = &unk_1E753CF38;
  v7[4] = self;
  v7[5] = data;
  dispatch_async(queue, v7);
}

- (void)createConnection
{
  v100 = *MEMORY[0x1E69E9840];
  connection = self->_connection;
  if (connection)
  {
    objc_msgSend_invalidate(connection, a2, v2, v3);

    self->_connection = 0;
  }

  v6 = objc_alloc(MEMORY[0x1E696B0B8]);
  v8 = objc_msgSend_initWithMachServiceName_options_(v6, v7, @"com.apple.locationd.routine", 4096);
  self->_connection = v8;
  if (v8)
  {
    if (qword_1EAFE46C0 != -1)
    {
      dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
    }

    v12 = qword_1EAFE46F8;
    if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      v97 = 0;
      v98 = 2082;
      v99 = "";
      _os_log_impl(&dword_19B873000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#location #routine createConnection}", buf, 0x12u);
    }

    v15 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v13, &unk_1F0E8DAD8, v14);
    objc_msgSend_setExportedInterface_(self->_connection, v16, v15, v17);
    objc_msgSend_setExportedObject_(self->_connection, v18, self, v19);
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = objc_opt_class();
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v29 = objc_msgSend_setWithObjects_(v20, v27, v21, v28, v22, v23, v24, v25, v26, 0);
    v33 = objc_msgSend_exportedInterface(self->_connection, v30, v31, v32);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v33, v34, v29, sel_didUpdateLocations_, 0, 0);
    v38 = objc_msgSend_exportedInterface(self->_connection, v35, v36, v37);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v38, v39, v29, sel_didUpdateLocations_withReply_, 0, 0);
    v43 = objc_msgSend_exportedInterface(self->_connection, v40, v41, v42);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v43, v44, v29, sel_didUpdateInertialData_, 0, 0);
    v47 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v45, &unk_1F0EAC748, v46);
    objc_msgSend_setRemoteObjectInterface_(self->_connection, v48, v47, v49);
    v53 = objc_msgSend_remoteObjectInterface(self->_connection, v50, v51, v52);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v53, v54, v29, sel_fetchLocationAtDate_withHandler_, 0, 1);
    v58 = objc_msgSend_remoteObjectInterface(self->_connection, v55, v56, v57);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v58, v59, v29, sel_fetchLocationAtMachContinuousTime_withHandler_, 0, 1);
    v63 = objc_msgSend_remoteObjectInterface(self->_connection, v60, v61, v62);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v63, v64, v29, sel_fetchLocationsInLastSeconds_withHandler_, 0, 1);
    v68 = objc_msgSend_remoteObjectInterface(self->_connection, v65, v66, v67);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v68, v69, v29, sel_fetchRecentLocationsWithOptions_withHandler_, 0, 1);
    v73 = objc_msgSend_serviceName(self->_connection, v70, v71, v72);
    v74 = self->_connection;
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = sub_19B892C28;
    v95[3] = &unk_1E753CC90;
    v95[4] = v73;
    objc_msgSend_setInterruptionHandler_(v74, v75, v95, v76);
    v77 = self->_connection;
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = sub_19B892C58;
    v94[3] = &unk_1E753CC90;
    v94[4] = v73;
    objc_msgSend_setInvalidationHandler_(v77, v78, v94, v79);
    objc_msgSend_resume(self->_connection, v80, v81, v82);
  }

  if (objc_msgSend_updating(self, v9, v10, v11))
  {
    v86 = objc_msgSend_connection(self, v83, v84, v85);
    v90 = objc_msgSend_remoteObjectProxy(v86, v87, v88, v89);
    objc_msgSend_startUpdatingLocation(v90, v91, v92, v93);
  }
}

- (id)getRemoteObjectProxyWithErrorHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_19B892DE4;
  v15[3] = &unk_1E753CF88;
  v15[4] = handler;
  v5 = objc_msgSend_connection(self, a2, handler, v3);
  v8 = objc_msgSend_remoteObjectProxyWithErrorHandler_(v5, v6, v15, v7);
  if (qword_1EAFE46C0 != -1)
  {
    dispatch_once(&qword_1EAFE46C0, &unk_1F0E6B640);
  }

  v9 = qword_1EAFE46F8;
  if (os_log_type_enabled(qword_1EAFE46F8, OS_LOG_TYPE_DEBUG))
  {
    v13 = objc_msgSend_connection(self, v10, v11, v12);
    *buf = 68289538;
    v17 = 0;
    v18 = 2082;
    v19 = "";
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v13;
    _os_log_impl(&dword_19B873000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#ADL #location #routine getRemoteObjectProxy, proxy:%{public, location:escape_only}@, connection:%{public, location:escape_only}@}", buf, 0x26u);
  }

  return v8;
}

@end