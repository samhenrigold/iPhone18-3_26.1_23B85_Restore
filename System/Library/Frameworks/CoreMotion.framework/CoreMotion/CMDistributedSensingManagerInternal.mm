@interface CMDistributedSensingManagerInternal
- (CMDistributedSensingManagerInternal)init;
- (void)_handleDaemonMessage:(id)message data:(id)data;
- (void)_registerForVehicleStateUpdates;
- (void)_teardown;
- (void)_unregisterForVehicleStateUpdates;
- (void)dealloc;
@end

@implementation CMDistributedSensingManagerInternal

- (CMDistributedSensingManagerInternal)init
{
  v5.receiver = self;
  v5.super_class = CMDistributedSensingManagerInternal;
  v2 = [(CMDistributedSensingManagerInternal *)&v5 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v2->_internalQueue = dispatch_queue_create("com.apple.CoreMotion.CMDistributedSensingManagerInternalQueue", v3);
    v2->_clientQueue = dispatch_queue_create("com.apple.CoreMotion.CMDistributedSensingManagerClientQueue", v3);
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  dispatch_release(self->_internalQueue);
  self->_internalQueue = 0;
  dispatch_release(self->_clientQueue);
  self->_clientQueue = 0;
  v3.receiver = self;
  v3.super_class = CMDistributedSensingManagerInternal;
  [(CMDistributedSensingManagerInternal *)&v3 dealloc];
}

- (void)_teardown
{
  objc_msgSend__unregisterForVehicleStateUpdates(self, a2, v2);
  sub_19B428B50(&__p, "DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v6 < 0)
  {
    operator delete(__p);
  }

  if (self->_locationdConnection)
  {
    v4 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v4, 0xB0C40BC2CC919);
  }

  self->_locationdConnection = 0;
}

- (void)_handleDaemonMessage:(id)message data:(id)data
{
  v39 = *MEMORY[0x1E69E9840];
  if (!objc_loadWeak(&self->_delegate))
  {
    return;
  }

  if (data)
  {
    if (objc_msgSend_isEqualToString_(message, v7, @"DistributedSensing/kCLConnectionMessageDistributedSensingVehicleStateUpdate"))
    {
      if (objc_msgSend_objectForKeyedSubscript_(data, v8, @"CMErrorMessage"))
      {
        v10 = objc_msgSend_objectForKeyedSubscript_(data, v9, @"CMErrorMessage");
        v13 = objc_msgSend_integerValue(v10, v11, v12);
        v15 = objc_msgSend_CMErrorWithCode_(CMErrorUtils, v14, v13);
        if (qword_1EAFE2A38 != -1)
        {
          dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
        }

        v16 = qword_1EAFE2A40;
        if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v38 = v15;
          _os_log_impl(&dword_19B41C000, v16, OS_LOG_TYPE_ERROR, "Vehicle State, error, %@", buf, 0xCu);
        }

        v17 = sub_19B420058();
        if ((*(v17 + 160) & 0x80000000) == 0 || (*(v17 + 164) & 0x80000000) == 0 || (*(v17 + 168) & 0x80000000) == 0 || *(v17 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A38 != -1)
          {
            dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
          }

          v35 = 138412290;
          v36 = v15;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A40, 16, "Vehicle State, error, %@", &v35, 12);
          v19 = v18;
          sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDistributedSensingManagerInternal _handleDaemonMessage:data:]", "CoreLocation: %s\n", v18);
          if (v19 != buf)
          {
            free(v19);
          }
        }

        clientQueue = self->_clientQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_19B5FF128;
        block[3] = &unk_1E7532A00;
        block[4] = self;
        block[5] = v15;
        dispatch_async(clientQueue, block);
      }

      else if (objc_msgSend_objectForKeyedSubscript_(data, v9, @"CMDistributedSensingVehicleStateUpdateKey"))
      {
        v28 = objc_msgSend_objectForKeyedSubscript_(data, v27, @"CMDistributedSensingVehicleStateUpdateKey");
        v31 = objc_msgSend_copy(v28, v29, v30);
        v32 = self->_clientQueue;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = sub_19B5FF1A8;
        v33[3] = &unk_1E7532A00;
        v33[4] = self;
        v33[5] = v31;
        dispatch_async(v32, v33);
      }

      return;
    }

    if (qword_1EAFE2A38 != -1)
    {
      dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
    }

    v24 = qword_1EAFE2A40;
    if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_FAULT, "Unrecognizable dictionary", buf, 2u);
    }

    v25 = sub_19B420058();
    if ((*(v25 + 160) & 0x80000000) == 0 || (*(v25 + 164) & 0x80000000) == 0 || (*(v25 + 168) & 0x80000000) == 0 || *(v25 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A38 != -1)
      {
        dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
      }

      LOWORD(v35) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A40, 17, "Unrecognizable dictionary", &v35, 2);
LABEL_37:
      v26 = v23;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMDistributedSensingManagerInternal _handleDaemonMessage:data:]", "CoreLocation: %s\n", v23);
      if (v26 != buf)
      {
        free(v26);
      }
    }
  }

  else
  {
    if (qword_1EAFE2A38 != -1)
    {
      dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
    }

    v21 = qword_1EAFE2A40;
    if (os_log_type_enabled(qword_1EAFE2A40, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v21, OS_LOG_TYPE_FAULT, "nil dictionary", buf, 2u);
    }

    v22 = sub_19B420058();
    if ((*(v22 + 160) & 0x80000000) == 0 || (*(v22 + 164) & 0x80000000) == 0 || (*(v22 + 168) & 0x80000000) == 0 || *(v22 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A38 != -1)
      {
        dispatch_once(&qword_1EAFE2A38, &unk_1F0E29040);
      }

      LOWORD(v35) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A40, 17, "nil dictionary", &v35, 2);
      goto LABEL_37;
    }
  }
}

- (void)_registerForVehicleStateUpdates
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5FF29C;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)_unregisterForVehicleStateUpdates
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B5FF564;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

@end