@interface CMOdometryManager
+ (BOOL)isAvailable;
- (CMOdometryManager)init;
- (id)initPrivate;
- (void)dealloc;
- (void)deallocPrivate;
- (void)enableMotionSimulationPrivate:(BOOL)private;
- (void)feedOdometryData:(const InertialOdometryData *)data;
- (void)sendOdometryToClientPrivate;
- (void)setOdometryUpdateInterval:(double)interval;
- (void)setOdometryUpdateIntervalPrivate:(double)private;
- (void)setupBIO;
- (void)startBackgroundUpdatesPrivateUsingReferenceFrame:(unint64_t)frame enableNeuralPDR:(BOOL)r toQueue:(id)queue withHandler:(id)handler;
- (void)startOdometryUpdatesPrivateUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler;
- (void)startOdometryUpdatesToQueue:(id)queue withHandler:(id)handler;
- (void)startOdometryUpdatesUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler;
- (void)stopBackgroundUpdatesPrivate;
- (void)stopOdometryUpdates;
- (void)stopOdometryUpdatesPrivate;
- (void)teardownBIO;
@end

@implementation CMOdometryManager

+ (BOOL)isAvailable
{
  if (sub_19B5F9308())
  {
    return 1;
  }

  if (qword_1ED71C988 != -1)
  {
    dispatch_once(&qword_1ED71C988, &unk_1F0E28FE0);
  }

  if (qword_1ED71C990 != -1)
  {
    dispatch_once(&qword_1ED71C990, &unk_1F0E3A400);
  }

  result = 1;
  if ((dword_1ED71C97C - 99) >= 0x23)
  {
    return dword_1ED71C97C == 280;
  }

  return result;
}

- (CMOdometryManager)init
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = sub_19B428A8C;
  v11 = sub_19B429028;
  v12 = 0;
  v3 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B67E7F8;
  v6[3] = &unk_1E7533708;
  v6[4] = self;
  v6[5] = &v7;
  sub_19B420C9C(v3, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (id)initPrivate
{
  v6.receiver = self;
  v6.super_class = CMOdometryManager;
  v2 = [(CMOdometryManager *)&v6 init];
  if (v2)
  {
    v2->_internal = objc_opt_new();
    objc_msgSend_setupBIO(v2, v3, v4);
  }

  return v2;
}

- (void)dealloc
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3052000000;
  v8[3] = sub_19B428A8C;
  v8[4] = sub_19B429028;
  v8[5] = self;
  v3 = sub_19B420D84();
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_19B67E990;
  v7[3] = &unk_1E7533730;
  v7[4] = v8;
  sub_19B420C9C(v3, v7);
  objc_msgSend_teardownBIO(self, v4, v5);
  v6.receiver = self;
  v6.super_class = CMOdometryManager;
  [(CMOdometryManager *)&v6 dealloc];
  _Block_object_dispose(v8, 8);
}

- (void)deallocPrivate
{
  objc_msgSend_stopOdometryUpdatesPrivate(self, a2, v2);
  internal = self->_internal;
}

- (void)setupBIO
{
  self->_backgroundInertialOdometryQueue = 0;
  self->_referenceFrameBIO = 1;
  self->_backgroundInertialOdometryHandler = 0;
  self->_xpcQueue = dispatch_queue_create("com.apple.CoreMotion.CMOdometryManagerPrivateQueue", 0);
  operator new();
}

- (void)teardownBIO
{
  self->_backgroundInertialOdometryHandler = 0;

  self->_backgroundInertialOdometryQueue = 0;
  sub_19B42C54C(&self->_locationdConnection, 0);
  xpcQueue = self->_xpcQueue;
  self->_xpcQueue = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B67EFEC;
  block[3] = &unk_1E7532988;
  block[4] = xpcQueue;
  dispatch_async(xpcQueue, block);
}

- (void)startOdometryUpdatesToQueue:(id)queue withHandler:(id)handler
{
  v7 = sub_19B420D84();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_19B67F084;
  v8[3] = &unk_1E7532C08;
  v8[4] = self;
  v8[5] = queue;
  v8[6] = handler;
  sub_19B420C9C(v7, v8);
}

- (void)startOdometryUpdatesUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler
{
  v9 = sub_19B420D84();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_19B67F12C;
  v10[3] = &unk_1E7533780;
  v10[4] = self;
  v10[5] = queue;
  v10[6] = handler;
  v10[7] = frame;
  sub_19B420C9C(v9, v10);
}

- (void)stopOdometryUpdates
{
  v3 = sub_19B420D84();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_19B67F1B8;
  v4[3] = &unk_1E7532988;
  v4[4] = self;
  sub_19B420C9C(v3, v4);
}

- (void)setOdometryUpdateInterval:(double)interval
{
  v5 = sub_19B420D84();
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = sub_19B67F258;
  v6[3] = &unk_1E7533490;
  v6[4] = self;
  *&v6[5] = interval;
  sub_19B420C9C(v5, v6);
}

- (void)setOdometryUpdateIntervalPrivate:(double)private
{
  v15 = *MEMORY[0x1E69E9840];
  internal = self->_internal;
  privateCopy = 0.1;
  if (private >= 0.1)
  {
    privateCopy = private;
  }

  *(internal + 32) = privateCopy;
  if (*(internal + 31))
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v6 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      privateCopy2 = private;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Requesting CMOdometry updates with interval: %{public}f", buf, 0xCu);
    }

    v7 = sub_19B420058();
    if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v11 = 134349056;
      privateCopy3 = private;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "Requesting CMOdometry updates with interval: %{public}f", &v11, 12);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager setOdometryUpdateIntervalPrivate:]", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }

    v10 = sub_19B6F7F00();
    sub_19B44E2F8(v10, 0, *(internal + 31), internal + 256);
  }
}

- (void)sendOdometryToClientPrivate
{
  v70[1] = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (*(internal + 34) && *(internal + 33))
  {
    v4 = objc_autoreleasePoolPush();
    v8 = internal[15];
    if (v8 == 0.0)
    {
      __assert_rtn("[CMOdometryManager sendOdometryToClientPrivate]", "CMOdometryManager.mm", 270, "timestampSecs != 0.");
    }

    v9 = v4;
    v10 = *(internal + 33);
    v11 = *(internal + 2);
    if (v11 >= *(internal + 25))
    {
      v64 = v4;
      if (v11 >= *(internal + 20))
      {
        if (*(internal + 22) <= v11)
        {
          *&v7 = *(internal + 34) - *(internal + 6);
          v62 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
          v11 = *(internal + 2);
        }

        else
        {
          v62 = 0;
        }

        if (*(internal + 23) <= v11)
        {
          *&v7 = *(internal + 35) - *(internal + 7);
          v61 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
          v11 = *(internal + 2);
        }

        else
        {
          v61 = 0;
        }

        if (*(internal + 24) <= v11)
        {
          *&v7 = *(internal + 36) - *(internal + 8);
          v23 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
        }

        else
        {
          v23 = 0;
        }
      }

      else
      {
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        v19 = qword_1EAFE2A90;
        if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v19, OS_LOG_TYPE_INFO, "Position rollover", buf, 2u);
        }

        v20 = sub_19B420058();
        if (*(v20 + 160) > 1 || *(v20 + 164) > 1 || *(v20 + 168) > 1 || *(v20 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A88 != -1)
          {
            dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
          }

          v66[0] = 0;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 1, "Position rollover", v66, 2);
          v22 = v21;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager sendOdometryToClientPrivate]", "CoreLocation: %s\n", v21);
          if (v22 != buf)
          {
            free(v22);
          }
        }

        v23 = 0;
        v61 = 0;
        v62 = 0;
      }

      v63 = v10;
      if (*(internal + 2) >= *(internal + 21))
      {
        *&v7 = *(internal + 37) - *(internal + 9);
        v30 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v5, v6, v7);
        *&v31 = *(internal + 38) - *(internal + 10);
        v29 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v32, v33, v31);
        *&v34 = *(internal + 39) - *(internal + 11);
        v28 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v35, v36, v34);
      }

      else
      {
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        v24 = qword_1EAFE2A90;
        if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v24, OS_LOG_TYPE_INFO, "Velocity rollover", buf, 2u);
        }

        v25 = sub_19B420058();
        if (*(v25 + 160) > 1 || *(v25 + 164) > 1 || *(v25 + 168) > 1 || *(v25 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A88 != -1)
          {
            dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
          }

          v66[0] = 0;
          LODWORD(v60) = 2;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 1, "Velocity rollover", v66, v60);
          v27 = v26;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager sendOdometryToClientPrivate]", "CoreLocation: %s\n", v26);
          if (v27 != buf)
          {
            free(v27);
          }
        }

        v28 = 0;
        v29 = 0;
        v30 = 0;
      }

      v37 = [CMOdometry alloc];
      LODWORD(v38) = *(internal + 52);
      v41 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v39, v40, v38);
      LODWORD(v42) = *(internal + 53);
      v45 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v43, v44, v42);
      LODWORD(v46) = *(internal + 54);
      v49 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v47, v48, v46);
      LODWORD(v50) = *(internal + 55);
      v53 = objc_msgSend_numberWithFloat_(MEMORY[0x1E696AD98], v51, v52, v50);
      LODWORD(v54) = *(internal + 56);
      v56 = objc_msgSend_initWithDeltaPositionX_deltaPositionY_deltaPositionZ_deltaVelocityX_deltaVelocityY_deltaVelocityZ_quaternionX_quaternionY_quaternionZ_quaternionW_rotationArbitraryToTrueNorth_staticFlag_timestamp_(v37, v55, v62, v61, v23, v30, v29, v28, v54, v8, v41, v45, v49, v53, 0);
      v16 = v56;
      if (*(internal + 30) == 8)
      {
        objc_msgSend_rotateArbitraryToTrueNorth(v56, v57, v58);
      }

      v59 = *(internal + 34);
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = sub_19B67FAF0;
      v65[3] = &unk_1E7532B90;
      v65[4] = v16;
      v65[5] = v63;
      objc_msgSend_addOperationWithBlock_(v59, v57, v65);
      v9 = v64;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x1E696ABC0]);
      v69 = *MEMORY[0x1E696A578];
      v70[0] = @"Reference frame has changed for the incoming delta position updates due to unexpected DeviceMotion reinitialization.";
      v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v13, v70, &v69, 1);
      v16 = objc_msgSend_initWithDomain_code_userInfo_(v12, v15, @"CMErrorDomainPrivate", 103, v14);
      v17 = *(internal + 34);
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = sub_19B67FAD8;
      v67[3] = &unk_1E7532B90;
      v67[4] = v16;
      v67[5] = v10;
      objc_msgSend_addOperationWithBlock_(v17, v18, v67);
    }

    objc_autoreleasePoolPop(v9);
  }
}

- (void)feedOdometryData:(const InertialOdometryData *)data
{
  v13 = *MEMORY[0x1E69E9840];
  if (data)
  {
    v5 = sub_19B420D84();
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_19B67FD08;
    v10[3] = &unk_1E7533490;
    v10[4] = self;
    v10[5] = data;
    sub_19B420C9C(v5, v10);
  }

  else
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v6 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_ERROR, "Invalid data parameter!", buf, 2u);
    }

    v7 = sub_19B420058();
    if ((*(v7 + 160) & 0x80000000) == 0 || (*(v7 + 164) & 0x80000000) == 0 || (*(v7 + 168) & 0x80000000) == 0 || *(v7 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v11[0] = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 16, "Invalid data parameter!", v11, 2);
      v9 = v8;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometryManager feedOdometryData:]", "CoreLocation: %s\n", v8);
      if (v9 != buf)
      {
        free(v9);
      }
    }
  }
}

- (void)startOdometryUpdatesPrivateUsingReferenceFrame:(unint64_t)frame toQueue:(id)queue withHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (+[CMOdometryManager isAvailable]_0())
  {
    if (internal[32] <= 0.0)
    {
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v22 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_ERROR, "Invalid update interval", buf, 2u);
      }

      v23 = sub_19B420058();
      if ((*(v23 + 160) & 0x80000000) == 0 || (*(v23 + 164) & 0x80000000) == 0 || (*(v23 + 168) & 0x80000000) == 0 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        LOWORD(v28[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 16, "Invalid update interval", v28, 2);
        v21 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometryManager startOdometryUpdatesPrivateUsingReferenceFrame:toQueue:withHandler:]", "CoreLocation: %s\n", v24);
        goto LABEL_53;
      }
    }

    else
    {
      if (frame == 1 || frame == 8)
      {
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        v10 = qword_1EAFE2A90;
        if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67240192;
          frameCopy = frame;
          _os_log_impl(&dword_19B41C000, v10, OS_LOG_TYPE_DEFAULT, "Starting InertialOdometry updates with reference frame: %{public}d", buf, 8u);
        }

        v11 = sub_19B420058();
        if (*(v11 + 160) > 1 || *(v11 + 164) > 1 || *(v11 + 168) > 1 || *(v11 + 152))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1EAFE2A88 != -1)
          {
            dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
          }

          v28[0] = 67240192;
          v28[1] = frame;
          _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "Starting InertialOdometry updates with reference frame: %{public}d", v28, 8);
          v13 = v12;
          sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager startOdometryUpdatesPrivateUsingReferenceFrame:toQueue:withHandler:]", "CoreLocation: %s\n", v12);
          if (v13 != buf)
          {
            free(v13);
          }
        }

        *(internal + 30) = frame;
        v14 = *(internal + 34);
        if (v14 != queue)
        {

          *(internal + 34) = queue;
        }

        v15 = *(internal + 33);
        if (v15 != handler)
        {

          *(internal + 33) = objc_msgSend_copy(handler, v16, v17);
        }

        if (!*(internal + 31))
        {
          operator new();
        }

        return;
      }

      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v25 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_ERROR, "Invalid reference frame", buf, 2u);
      }

      v26 = sub_19B420058();
      if ((*(v26 + 160) & 0x80000000) == 0 || (*(v26 + 164) & 0x80000000) == 0 || (*(v26 + 168) & 0x80000000) == 0 || *(v26 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        LOWORD(v28[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 16, "Invalid reference frame", v28, 2);
        v21 = v27;
        sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometryManager startOdometryUpdatesPrivateUsingReferenceFrame:toQueue:withHandler:]", "CoreLocation: %s\n", v27);
LABEL_53:
        if (v21 != buf)
        {
          free(v21);
        }
      }
    }
  }

  else
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v18 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v18, OS_LOG_TYPE_ERROR, "InertialOdometry not available", buf, 2u);
    }

    v19 = sub_19B420058();
    if ((*(v19 + 160) & 0x80000000) == 0 || (*(v19 + 164) & 0x80000000) == 0 || (*(v19 + 168) & 0x80000000) == 0 || *(v19 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      LOWORD(v28[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 16, "InertialOdometry not available", v28, 2);
      v21 = v20;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometryManager startOdometryUpdatesPrivateUsingReferenceFrame:toQueue:withHandler:]", "CoreLocation: %s\n", v20);
      goto LABEL_53;
    }
  }
}

- (void)stopOdometryUpdatesPrivate
{
  v14 = *MEMORY[0x1E69E9840];
  sub_19B420D84();
  sub_19B44B9A0();
  internal = self->_internal;
  if (+[CMOdometryManager isAvailable]_0())
  {
    if (*(internal + 31))
    {
      v4 = sub_19B6F7F00();
      sub_19B426A14(v4, 0, *(internal + 31));
      v5 = *(internal + 31);
      if (v5)
      {
        (*(*v5 + 8))(v5);
      }

      *(internal + 31) = 0;
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v6 = qword_1EAFE2A90;
      if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "Stopping InertialOdometry updates", buf, 2u);
      }

      v7 = sub_19B420058();
      if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2A88 != -1)
        {
          dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
        }

        v12[0] = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2A90, 0, "Stopping InertialOdometry updates", v12, 2);
        v9 = v8;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMOdometryManager stopOdometryUpdatesPrivate]", "CoreLocation: %s\n", v8);
        if (v9 != buf)
        {
          free(v9);
        }
      }
    }

    v10 = *(internal + 34);
    if (v10)
    {

      *(internal + 34) = 0;
    }

    v11 = *(internal + 33);
    if (v11)
    {

      *(internal + 33) = 0;
    }

    internal[232] = 0;
    *(internal + 216) = 0u;
    *(internal + 200) = 0u;
    *(internal + 184) = 0u;
    *(internal + 168) = 0u;
    *(internal + 152) = 0u;
    *(internal + 136) = 0u;
    *(internal + 120) = 0u;
    *(internal + 104) = 0u;
    *(internal + 88) = 0u;
    *(internal + 72) = 0u;
    *(internal + 56) = 0u;
    *(internal + 40) = 0u;
    *(internal + 24) = 0u;
    *(internal + 8) = 0u;
  }
}

- (void)startBackgroundUpdatesPrivateUsingReferenceFrame:(unint64_t)frame enableNeuralPDR:(BOOL)r toQueue:(id)queue withHandler:(id)handler
{
  location[205] = *MEMORY[0x1E69E9840];
  if (queue)
  {
    if (handler)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, frame, r);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CMOdometryManager.mm", 450, @"Invalid parameter not satisfying: %@", @"queue");
    if (handler)
    {
      goto LABEL_3;
    }
  }

  v20 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, frame, r);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CMOdometryManager.mm", 451, @"Invalid parameter not satisfying: %@", @"handler");
LABEL_3:
  if (+[CMOdometryManager isAvailable]_0())
  {
    if (frame == 1 || frame == 8)
    {
      objc_initWeak(location, self);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = sub_19B680ADC;
      v24[3] = &unk_1E7532A28;
      objc_copyWeak(&v25, location);
      xpcQueue = self->_xpcQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_19B680C94;
      block[3] = &unk_1E7533F60;
      objc_copyWeak(v23, location);
      block[4] = queue;
      block[5] = handler;
      v23[1] = frame;
      block[6] = v24;
      dispatch_async(xpcQueue, block);
      objc_destroyWeak(v23);
      objc_destroyWeak(&v25);
      objc_destroyWeak(location);
      return;
    }

    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v15 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_19B41C000, v15, OS_LOG_TYPE_ERROR, "Invalid reference frame", location, 2u);
    }

    v16 = sub_19B420058();
    if ((*(v16 + 160) & 0x80000000) == 0 || (*(v16 + 164) & 0x80000000) == 0 || (*(v16 + 168) & 0x80000000) == 0 || *(v16 + 152))
    {
      bzero(location, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v26[0] = 0;
      _os_log_send_and_compose_impl(2, 0, location, 1628, &dword_19B41C000, qword_1EAFE2A90, 16, "Invalid reference frame", v26, 2);
LABEL_27:
      v17 = v14;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMOdometryManager startBackgroundUpdatesPrivateUsingReferenceFrame:enableNeuralPDR:toQueue:withHandler:]", "CoreLocation: %s\n", v14);
      if (v17 != location)
      {
        free(v17);
      }
    }
  }

  else
  {
    if (qword_1EAFE2A88 != -1)
    {
      dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
    }

    v12 = qword_1EAFE2A90;
    if (os_log_type_enabled(qword_1EAFE2A90, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_19B41C000, v12, OS_LOG_TYPE_ERROR, "Background InertialOdometry not available", location, 2u);
    }

    v13 = sub_19B420058();
    if ((*(v13 + 160) & 0x80000000) == 0 || (*(v13 + 164) & 0x80000000) == 0 || (*(v13 + 168) & 0x80000000) == 0 || *(v13 + 152))
    {
      bzero(location, 0x65CuLL);
      if (qword_1EAFE2A88 != -1)
      {
        dispatch_once(&qword_1EAFE2A88, &unk_1F0E28AE0);
      }

      v26[0] = 0;
      _os_log_send_and_compose_impl(2, 0, location, 1628, &dword_19B41C000, qword_1EAFE2A90, 16, "Background InertialOdometry not available", v26, 2);
      goto LABEL_27;
    }
  }
}

- (void)stopBackgroundUpdatesPrivate
{
  if (+[CMOdometryManager isAvailable]_0())
  {
    objc_initWeak(&location, self);
    xpcQueue = self->_xpcQueue;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = sub_19B681088;
    v4[3] = &unk_1E7533F88;
    objc_copyWeak(&v5, &location);
    dispatch_async(xpcQueue, v4);
    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)enableMotionSimulationPrivate:(BOOL)private
{
  if (+[CMOdometryManager isAvailable]_0())
  {
    objc_initWeak(&location, self);
    xpcQueue = self->_xpcQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B6813D4;
    block[3] = &unk_1E7533FB0;
    objc_copyWeak(&v7, &location);
    privateCopy = private;
    dispatch_async(xpcQueue, block);
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

@end