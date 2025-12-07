@interface _CLLocationSmootherProxy
- (_CLLocationSmootherProxy)initWithCLLocationSmoother:(id)smoother;
- (void)createConnection;
- (void)dealloc;
- (void)didSmoothLocations:(id)locations ofType:(id)type;
@end

@implementation _CLLocationSmootherProxy

- (_CLLocationSmootherProxy)initWithCLLocationSmoother:(id)smoother
{
  v17.receiver = self;
  v17.super_class = _CLLocationSmootherProxy;
  v6 = [(_CLLocationSmootherProxy *)&v17 init];
  if (v6)
  {
    v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"_CLLocationSmootherProxy, %p", v5, v6);
    v11 = objc_msgSend_UTF8String(v7, v8, v9, v10);
    v6->_queue = dispatch_queue_create(v11, 0);
    objc_msgSend_createConnection(v6, v12, v13, v14);
    v6->_locationManagerSmoother = smoother;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v6, sub_19B8D9AC4, @"com.apple.locationd.smoother", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return v6;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  objc_msgSend_setLocationManagerSmoother_(self, v4, 0, v5);
  objc_msgSend_setDelegate_(self, v6, 0, v7);
  objc_msgSend_setConnection_(self, v8, 0, v9);
  queue = self->_queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_queue = 0;
  }

  v11.receiver = self;
  v11.super_class = _CLLocationSmootherProxy;
  [(_CLLocationSmootherProxy *)&v11 dealloc];
}

- (void)didSmoothLocations:(id)locations ofType:(id)type
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B8D9C30;
  block[3] = &unk_1E753D098;
  block[4] = self;
  block[5] = locations;
  block[6] = type;
  dispatch_async(queue, block);
}

- (void)createConnection
{
  connection = self->_connection;
  if (connection)
  {

    self->_connection = 0;
  }

  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  v6 = objc_msgSend_initWithMachServiceName_options_(v4, v5, @"com.apple.locationd.smoother", 4096);
  self->_connection = v6;
  if (v6)
  {
    v9 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v7, &unk_1F0E94208, v8);
    objc_msgSend_setExportedInterface_(self->_connection, v10, v9, v11);
    objc_msgSend_setExportedObject_(self->_connection, v12, self, v13);
    v17 = objc_msgSend_exportedInterface(self->_connection, v14, v15, v16);
    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v24 = objc_msgSend_setWithObjects_(v18, v22, v19, v23, v20, v21, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v17, v25, v24, sel_didSmoothLocations_ofType_, 0, 0);
    v28 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x1E696B0D0], v26, &unk_1F0EAC868, v27);
    objc_msgSend_setRemoteObjectInterface_(self->_connection, v29, v28, v30);
    v34 = objc_msgSend_remoteObjectInterface(self->_connection, v31, v32, v33);
    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = objc_opt_class();
    v40 = objc_msgSend_setWithObjects_(v35, v38, v36, v39, v37, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v34, v41, v40, sel_smoothLocations_workoutActivity_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_, 0, 0);
    v45 = objc_msgSend_remoteObjectInterface(self->_connection, v42, v43, v44);
    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v51 = objc_msgSend_setWithObjects_(v46, v49, v47, v50, v48, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v45, v52, v51, sel_smoothLocations_workoutActivity_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_, 3, 0);
    v56 = objc_msgSend_remoteObjectInterface(self->_connection, v53, v54, v55);
    v57 = MEMORY[0x1E695DFD8];
    v58 = objc_opt_class();
    v59 = objc_opt_class();
    v62 = objc_msgSend_setWithObjects_(v57, v60, v58, v61, v59, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v56, v63, v62, sel_smoothLocations_workoutActivity_shouldReconstructRoute_timeIntervalsThatNeedPopulated_handler_, 0, 1);
    v67 = objc_msgSend_remoteObjectInterface(self->_connection, v64, v65, v66);
    v68 = MEMORY[0x1E695DFD8];
    v69 = objc_opt_class();
    v70 = objc_opt_class();
    v73 = objc_msgSend_setWithObjects_(v68, v71, v69, v72, v70, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v67, v74, v73, sel_configureWithWorkoutActivity_shouldReconstructEntireRoute_timeIntervalsThatNeedPopulating_, 2, 0);
    v78 = objc_msgSend_remoteObjectInterface(self->_connection, v75, v76, v77);
    v79 = MEMORY[0x1E695DFD8];
    v80 = objc_opt_class();
    v81 = objc_opt_class();
    v84 = objc_msgSend_setWithObjects_(v79, v82, v80, v83, v81, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v78, v85, v84, sel_smoothLocations_batchType_handler_, 0, 0);
    v89 = objc_msgSend_remoteObjectInterface(self->_connection, v86, v87, v88);
    v90 = MEMORY[0x1E695DFD8];
    v91 = objc_opt_class();
    v92 = objc_opt_class();
    v95 = objc_msgSend_setWithObjects_(v90, v93, v91, v94, v92, 0);
    objc_msgSend_setClasses_forSelector_argumentIndex_ofReply_(v89, v96, v95, sel_smoothLocations_batchType_handler_, 0, 1);
    v100 = objc_msgSend_serviceName(self->_connection, v97, v98, v99);
    v101 = self->_connection;
    v111[0] = MEMORY[0x1E69E9820];
    v111[1] = 3221225472;
    v111[2] = sub_19B8DA088;
    v111[3] = &unk_1E753CC90;
    v111[4] = v100;
    objc_msgSend_setInterruptionHandler_(v101, v102, v111, v103);
    v104 = self->_connection;
    v110[0] = MEMORY[0x1E69E9820];
    v110[1] = 3221225472;
    v110[2] = sub_19B8DA0B8;
    v110[3] = &unk_1E753CC90;
    v110[4] = v100;
    objc_msgSend_setInvalidationHandler_(v104, v105, v110, v106);
    objc_msgSend_resume(self->_connection, v107, v108, v109);
  }
}

@end