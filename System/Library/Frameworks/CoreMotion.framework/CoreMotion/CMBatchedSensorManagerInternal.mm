@interface CMBatchedSensorManagerInternal
+ (id)_newArrayByUnpackingAccelerometerBatch:(shared_ptr<CLConnectionMessage>)batch;
+ (id)_newArrayByUnpackingDeviceMotionBatch:(shared_ptr<CLConnectionMessage>)batch;
- (CMBatchedSensorManagerInternal)init;
- (void)_connect;
- (void)_startAccelerometerUpdatesWithHandler:(id)handler;
- (void)_startDeviceMotionUpdatesWithHandler:(id)handler;
- (void)_stopAccelerometerUpdates;
- (void)_stopDeviceMotionUpdates;
- (void)_teardown;
- (void)dealloc;
@end

@implementation CMBatchedSensorManagerInternal

- (CMBatchedSensorManagerInternal)init
{
  v9.receiver = self;
  v9.super_class = CMBatchedSensorManagerInternal;
  v2 = [(CMBatchedSensorManagerInternal *)&v9 init];
  v4 = v2;
  if (v2)
  {
    v2->_accelHandler = 0;
    v2->_queue = 0;
    v2->_dataQueue = 0;
    v2->_connection = 0;
    v2->_available = 0;
    objc_msgSend_setAccelBatch_(v2, v3, 0);
    v4->_deviceMotionHandler = 0;
    objc_msgSend_setDeviceMotionBatch_(v4, v5, 0);
    objc_msgSend__connect(v4, v6, v7);
  }

  return v4;
}

- (void)dealloc
{
  objc_msgSend_setAccelBatch_(self, a2, 0);
  objc_msgSend_setDeviceMotionBatch_(self, v3, 0);
  v4.receiver = self;
  v4.super_class = CMBatchedSensorManagerInternal;
  [(CMBatchedSensorManagerInternal *)&v4 dealloc];
}

- (void)_connect
{
  if (!self->_connection)
  {
    self->_queue = dispatch_queue_create("com.apple.CoreMotion.CMBatchedSensorManager.Internal", 0);
    operator new();
  }
}

- (void)_teardown
{
  sub_19B428B50(__p, "kCLConnectionMessageBatchedSensorAvailabilityUpdate");
  CLConnectionClient::setHandlerForMessage();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_19B428B50(__p, "kCLConnectionMessageBatchedAccelerometer");
  CLConnectionClient::setHandlerForMessage();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_19B428B50(__p, "kCLConnectionMessageBatchedSensorError");
  CLConnectionClient::setHandlerForMessage();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  sub_19B428B50(__p, "kCLConnectionMessageBatchedDeviceMotion");
  CLConnectionClient::setHandlerForMessage();
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (self->_connection)
  {
    v3 = MEMORY[0x19EAE71C0]();
    MEMORY[0x19EAE76F0](v3, 0xB0C40BC2CC919);
    self->_connection = 0;
  }

  self->_queue = 0;
  self->_dataQueue = 0;
}

- (void)_startAccelerometerUpdatesWithHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v5 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v6, v7, v8);
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[framework-accel] attempting to start updates to queue, supported %d", buf, 8u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v10 = qword_1EAFE2AC0;
    v11 = objc_opt_class();
    LODWORD(v35[0]) = 67109120;
    HIDWORD(v35[0]) = objc_msgSend_areBatchedSensorsSupported(v11, v12, v13);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 0, "[framework-accel] attempting to start updates to queue, supported %d", v35);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startAccelerometerUpdatesWithHandler:]", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v16, v17, v18))
  {
    accelHandler = self->_accelHandler;
    if (accelHandler != handler)
    {

      self->_accelHandler = objc_msgSend_copy(handler, v20, v21);
    }

    if (self->_connection)
    {
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      v22 = qword_1EAFE2AC0;
      if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[framework-accel] starting updates to queue", buf, 2u);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AB8 != -1)
        {
          dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
        }

        LOWORD(v35[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AC0, 0, "[framework-accel] starting updates to queue", v35, 2);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startAccelerometerUpdatesWithHandler:]", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      sub_19B428B50(buf, "kCLConnectionMessageBatchedAccelerometer");
      CLConnectionClient::setHandlerForMessage();
      if (v37 < 0)
      {
        operator delete(*buf);
      }

      v33 = @"kCLConnectionMessageSubscribeKey";
      v34 = MEMORY[0x1E695E118];
      v35[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, &v34, &v33, 1);
      sub_19B45280C();
    }

    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v28 = qword_1EAFE2AC0;
    if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "framework-accel] no connection", buf, 2u);
    }

    v29 = sub_19B420058();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      LOWORD(v35[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AC0, 16, "framework-accel] no connection", v35, 2);
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBatchedSensorManagerInternal _startAccelerometerUpdatesWithHandler:]", "CoreLocation: %s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    self->_accelActive = 1;
  }

  else if (handler)
  {
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77E808;
    block[3] = &unk_1E7532B40;
    block[4] = handler;
    dispatch_async(dataQueue, block);
  }
}

- (void)_stopAccelerometerUpdates
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v3 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v4, v5, v6);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[framework-accel] stopping updates, supported %d", buf, 8u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v8 = qword_1EAFE2AC0;
    v9 = objc_opt_class();
    LODWORD(v21) = 67109120;
    HIDWORD(v21) = objc_msgSend_areBatchedSensorsSupported(v9, v10, v11);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v8, 0, "[framework-accel] stopping updates, supported %d", &v21);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _stopAccelerometerUpdates]", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v14, v15, v16))
  {
    accelHandler = self->_accelHandler;
    if (accelHandler)
    {

      self->_accelHandler = 0;
    }

    if (self->_connection)
    {
      v19 = @"kCLConnectionMessageSubscribeKey";
      v20 = MEMORY[0x1E695E110];
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v20, &v19, 1);
      sub_19B45280C();
    }

    self->_accelActive = 0;
    objc_msgSend_setAccelBatch_(self, v17, 0);
  }
}

+ (id)_newArrayByUnpackingAccelerometerBatch:(shared_ptr<CLConnectionMessage>)batch
{
  v199 = *MEMORY[0x1E69E9840];
  v3 = CLConnectionMessage::getRawPayload(*batch.var0);
  xpc_data_get_bytes_ptr(v3);
  length = xpc_data_get_length(v3);
  v5 = length / 20;
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v6 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    v178 = length;
    *v179 = 1026;
    *&v179[2] = length / 20;
    _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEFAULT, "[framework-accel] Received msg size %{public}d num %{public}d", buf, 0xEu);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v153 = 67240448;
    v154 = length;
    v155 = 1026;
    LODWORD(v156) = length / 20;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AC0, 0, "[framework-accel] Received msg size %{public}d num %{public}d", &v153, 14);
    v9 = v8;
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingAccelerometerBatch:]", "CoreLocation: %s\n", v8);
    if (v9 != buf)
    {
      free(v9);
    }
  }

  v10 = objc_opt_new();
  if (length < 20)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    do
    {
      xpc_data_get_bytes(v3, buf, v11, 0x14uLL);
      v15 = *buf;
      v16 = v178;
      v17 = *v179;
      v11 += 20;
      v18 = *&v179[4];
      v19 = objc_autoreleasePoolPush();
      v20 = [CMAccelerometerData alloc];
      LODWORD(v21) = v15;
      LODWORD(v22) = v16;
      LODWORD(v23) = v17;
      v26 = objc_msgSend_initWithAcceleration_andTimestamp_(v20, v24, v25, v21, v22, v23, v18 * 0.000000999999997);
      objc_msgSend_addObject_(v10, v27, v26);
      objc_autoreleasePoolPop(v19);
      if (v14)
      {
        v13 = v18;
      }

      else
      {
        v12 = v18;
      }

      ++v14;
    }

    while (v5 != v14);
  }

  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v28 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    Object = objc_msgSend_firstObject(v10, v29, v30);
    objc_msgSend_timestamp(Object, v32, v33);
    v35 = v34;
    v38 = objc_msgSend_lastObject(v10, v36, v37);
    objc_msgSend_timestamp(v38, v39, v40);
    v42 = v41;
    v45 = objc_msgSend_firstObject(v10, v43, v44);
    objc_msgSend_acceleration(v45, v46, v47);
    v49 = v48;
    v52 = objc_msgSend_firstObject(v10, v50, v51);
    objc_msgSend_acceleration(v52, v53, v54);
    v56 = v55;
    v59 = objc_msgSend_firstObject(v10, v57, v58);
    objc_msgSend_acceleration(v59, v60, v61);
    v63 = v62;
    v66 = objc_msgSend_lastObject(v10, v64, v65);
    objc_msgSend_acceleration(v66, v67, v68);
    v70 = v69;
    v73 = objc_msgSend_lastObject(v10, v71, v72);
    objc_msgSend_acceleration(v73, v74, v75);
    v77 = v76;
    v80 = objc_msgSend_lastObject(v10, v78, v79);
    objc_msgSend_acceleration(v80, v81, v82);
    v84 = v83;
    v87 = objc_msgSend_count(v10, v85, v86);
    *buf = 67243008;
    v178 = v5;
    *v179 = 2050;
    *&v179[2] = v12;
    *&v179[10] = 2050;
    v180 = v13;
    v181 = 2050;
    v182 = v35;
    v183 = 2050;
    v184 = v42;
    v185 = 2050;
    v186 = v49;
    v187 = 2050;
    v188 = v56;
    v189 = 2050;
    v190 = v63;
    v191 = 2050;
    v192 = v70;
    v193 = 2050;
    v194 = v77;
    v195 = 2050;
    v196 = v84;
    v197 = 1026;
    v198 = v87;
    _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_DEFAULT, "[framework-accel] Looped %{public}d times range [%{public}llu %{public}llu], timeS [%{public}f %{public}f], first sample [%{public}f %{public}f %{public}f], last sample [%{public}f %{public}f %{public}f], size %{public}d", buf, 0x72u);
  }

  v88 = sub_19B420058();
  if (*(v88 + 160) > 1 || *(v88 + 164) > 1 || *(v88 + 168) > 1 || *(v88 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v91 = qword_1EAFE2AC0;
    v92 = objc_msgSend_firstObject(v10, v89, v90);
    objc_msgSend_timestamp(v92, v93, v94);
    v96 = v95;
    v99 = objc_msgSend_lastObject(v10, v97, v98);
    objc_msgSend_timestamp(v99, v100, v101);
    v103 = v102;
    v106 = objc_msgSend_firstObject(v10, v104, v105);
    objc_msgSend_acceleration(v106, v107, v108);
    v110 = v109;
    v113 = objc_msgSend_firstObject(v10, v111, v112);
    objc_msgSend_acceleration(v113, v114, v115);
    v117 = v116;
    v120 = objc_msgSend_firstObject(v10, v118, v119);
    objc_msgSend_acceleration(v120, v121, v122);
    v124 = v123;
    v127 = objc_msgSend_lastObject(v10, v125, v126);
    objc_msgSend_acceleration(v127, v128, v129);
    v131 = v130;
    v134 = objc_msgSend_lastObject(v10, v132, v133);
    objc_msgSend_acceleration(v134, v135, v136);
    v138 = v137;
    v141 = objc_msgSend_lastObject(v10, v139, v140);
    objc_msgSend_acceleration(v141, v142, v143);
    v145 = v144;
    v148 = objc_msgSend_count(v10, v146, v147);
    v153 = 67243008;
    v154 = v5;
    v155 = 2050;
    v156 = v12;
    v157 = 2050;
    v158 = v13;
    v159 = 2050;
    v160 = v96;
    v161 = 2050;
    v162 = v103;
    v163 = 2050;
    v164 = v110;
    v165 = 2050;
    v166 = v117;
    v167 = 2050;
    v168 = v124;
    v169 = 2050;
    v170 = v131;
    v171 = 2050;
    v172 = v138;
    v173 = 2050;
    v174 = v145;
    v175 = 1026;
    v176 = v148;
    LODWORD(v152) = 114;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v91, 0, "[framework-accel] Looped %{public}d times range [%{public}llu %{public}llu], timeS [%{public}f %{public}f], first sample [%{public}f %{public}f %{public}f], last sample [%{public}f %{public}f %{public}f], size %{public}d", &v153, v152);
    v150 = v149;
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingAccelerometerBatch:]", "CoreLocation: %s\n", v149);
    if (v150 != buf)
    {
      free(v150);
    }
  }

  return v10;
}

- (void)_startDeviceMotionUpdatesWithHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v5 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v6, v7, v8);
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[framework-dm] attempting to start updates to queue, supported %d", buf, 8u);
  }

  v9 = sub_19B420058();
  if (*(v9 + 160) > 1 || *(v9 + 164) > 1 || *(v9 + 168) > 1 || *(v9 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v10 = qword_1EAFE2AC0;
    v11 = objc_opt_class();
    LODWORD(v35[0]) = 67109120;
    HIDWORD(v35[0]) = objc_msgSend_areBatchedSensorsSupported(v11, v12, v13);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v10, 0, "[framework-dm] attempting to start updates to queue, supported %d", v35);
    v15 = v14;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startDeviceMotionUpdatesWithHandler:]", "CoreLocation: %s\n", v14);
    if (v15 != buf)
    {
      free(v15);
    }
  }

  v16 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v16, v17, v18))
  {
    deviceMotionHandler = self->_deviceMotionHandler;
    if (deviceMotionHandler != handler)
    {

      self->_deviceMotionHandler = objc_msgSend_copy(handler, v20, v21);
    }

    if (self->_connection)
    {
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      v22 = qword_1EAFE2AC0;
      if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19B41C000, v22, OS_LOG_TYPE_DEFAULT, "[framework-dm] starting updates to queue", buf, 2u);
      }

      v23 = sub_19B420058();
      if (*(v23 + 160) > 1 || *(v23 + 164) > 1 || *(v23 + 168) > 1 || *(v23 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2AB8 != -1)
        {
          dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
        }

        LOWORD(v35[0]) = 0;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AC0, 0, "[framework-dm] starting updates to queue", v35, 2);
        v25 = v24;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _startDeviceMotionUpdatesWithHandler:]", "CoreLocation: %s\n", v24);
        if (v25 != buf)
        {
          free(v25);
        }
      }

      sub_19B428B50(buf, "kCLConnectionMessageBatchedDeviceMotion");
      CLConnectionClient::setHandlerForMessage();
      if (v37 < 0)
      {
        operator delete(*buf);
      }

      v33 = @"kCLConnectionMessageSubscribeKey";
      v34 = MEMORY[0x1E695E118];
      v35[0] = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v26, &v34, &v33, 1);
      sub_19B5D12C8();
    }

    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v28 = qword_1EAFE2AC0;
    if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19B41C000, v28, OS_LOG_TYPE_ERROR, "framework-dm] no connection", buf, 2u);
    }

    v29 = sub_19B420058();
    if ((*(v29 + 160) & 0x80000000) == 0 || (*(v29 + 164) & 0x80000000) == 0 || (*(v29 + 168) & 0x80000000) == 0 || *(v29 + 152))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1EAFE2AB8 != -1)
      {
        dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
      }

      LOWORD(v35[0]) = 0;
      _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AC0, 16, "framework-dm] no connection", v35, 2);
      v31 = v30;
      sub_19B6BB7CC("Generic", 1, 0, 0, "[CMBatchedSensorManagerInternal _startDeviceMotionUpdatesWithHandler:]", "CoreLocation: %s\n", v30);
      if (v31 != buf)
      {
        free(v31);
      }
    }

    self->_deviceMotionActive = 1;
  }

  else if (handler)
  {
    dataQueue = self->_dataQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_19B77FA78;
    block[3] = &unk_1E7532B40;
    block[4] = handler;
    dispatch_async(dataQueue, block);
  }
}

- (void)_stopDeviceMotionUpdates
{
  v23 = *MEMORY[0x1E69E9840];
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v3 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    *buf = 67109120;
    *&buf[4] = objc_msgSend_areBatchedSensorsSupported(v4, v5, v6);
    _os_log_impl(&dword_19B41C000, v3, OS_LOG_TYPE_DEFAULT, "[framework-dm] stopping updates, supported %d", buf, 8u);
  }

  v7 = sub_19B420058();
  if (*(v7 + 160) > 1 || *(v7 + 164) > 1 || *(v7 + 168) > 1 || *(v7 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v8 = qword_1EAFE2AC0;
    v9 = objc_opt_class();
    LODWORD(v21) = 67109120;
    HIDWORD(v21) = objc_msgSend_areBatchedSensorsSupported(v9, v10, v11);
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v8, 0, "[framework-dm] stopping updates, supported %d", &v21);
    v13 = v12;
    sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBatchedSensorManagerInternal _stopDeviceMotionUpdates]", "CoreLocation: %s\n", v12);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  v14 = objc_opt_class();
  if (objc_msgSend_areBatchedSensorsSupported(v14, v15, v16))
  {
    deviceMotionHandler = self->_deviceMotionHandler;
    if (deviceMotionHandler)
    {

      self->_deviceMotionHandler = 0;
    }

    if (self->_connection)
    {
      v19 = @"kCLConnectionMessageSubscribeKey";
      v20 = MEMORY[0x1E695E110];
      v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x1E695DF20], v17, &v20, &v19, 1);
      sub_19B5D12C8();
    }

    self->_deviceMotionActive = 0;
    objc_msgSend_setDeviceMotionBatch_(self, v17, 0);
  }
}

+ (id)_newArrayByUnpackingDeviceMotionBatch:(shared_ptr<CLConnectionMessage>)batch
{
  v181 = *MEMORY[0x1E69E9840];
  v3 = CLConnectionMessage::getRawPayload(*batch.var0);
  xpc_data_get_bytes_ptr(v3);
  length = xpc_data_get_length(v3);
  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v5 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240448;
    *&buf[4] = length;
    *v173 = 1026;
    *&v173[2] = length / 50;
    _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_DEFAULT, "[framework-dm] Received msg size %{public}d num %{public}d", buf, 0xEu);
  }

  v6 = sub_19B420058();
  if (*(v6 + 160) > 1 || *(v6 + 164) > 1 || *(v6 + 168) > 1 || *(v6 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    buffer.i32[0] = 67240448;
    buffer.i32[1] = length;
    *v155 = 1026;
    *&v155[2] = length / 50;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, qword_1EAFE2AC0, 0, "[framework-dm] Received msg size %{public}d num %{public}d", &buffer, 14);
    v8 = v7;
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingDeviceMotionBatch:]", "CoreLocation: %s\n", v7);
    if (v8 != buf)
    {
      free(v8);
    }
  }

  v151 = length / 50;
  v150 = objc_opt_new();
  if (length < 50)
  {
    v11 = 0;
    v10 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    do
    {
      xpc_data_get_bytes(v3, &buffer, v9, 0x32uLL);
      *&v13 = *v157;
      v14 = v3;
      v15 = *&v158[2];
      v9 += 50;
      v16 = *&v158[2] * 0.000000999999997;
      v17 = *&v155[4];
      *(&v13 + 1) = __PAIR64__(*&v155[8], *&v157[8]);
      v18 = *v155;
      v19 = v156;
      v152 = vcvtq_f64_f32(buffer);
      v153 = v13;
      v20 = objc_autoreleasePoolPush();
      v21 = [CMDeviceMotion alloc];
      *v173 = v152;
      *buf = v17;
      *&v173[16] = v18;
      *&v173[24] = v153;
      *v174 = v19;
      memset(&v174[8], 0, 32);
      v23 = objc_msgSend_initWithDeviceMotion_internal_timestamp_(v21, v22, buf, 0.0, 0.0, 0.0, 0.0, v16);
      objc_msgSend_addObject_(v150, v24, v23);
      objc_autoreleasePoolPop(v20);
      if (v12)
      {
        v11 = v15;
      }

      else
      {
        v10 = v15;
      }

      v3 = v14;
      ++v12;
    }

    while (v151 != v12);
  }

  if (qword_1EAFE2AB8 != -1)
  {
    dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
  }

  v25 = qword_1EAFE2AC0;
  if (os_log_type_enabled(qword_1EAFE2AC0, OS_LOG_TYPE_DEFAULT))
  {
    Object = objc_msgSend_firstObject(v150, v26, v27);
    objc_msgSend_timestamp(Object, v29, v30);
    v32 = v31;
    v35 = objc_msgSend_lastObject(v150, v33, v34);
    objc_msgSend_timestamp(v35, v36, v37);
    v39 = v38;
    v42 = objc_msgSend_firstObject(v150, v40, v41);
    objc_msgSend_userAcceleration(v42, v43, v44);
    v46 = v45;
    v49 = objc_msgSend_firstObject(v150, v47, v48);
    objc_msgSend_userAcceleration(v49, v50, v51);
    v53 = v52;
    v56 = objc_msgSend_firstObject(v150, v54, v55);
    objc_msgSend_userAcceleration(v56, v57, v58);
    v60 = v59;
    v63 = objc_msgSend_lastObject(v150, v61, v62);
    objc_msgSend_userAcceleration(v63, v64, v65);
    v67 = v66;
    v70 = objc_msgSend_lastObject(v150, v68, v69);
    objc_msgSend_userAcceleration(v70, v71, v72);
    v74 = v73;
    v77 = objc_msgSend_lastObject(v150, v75, v76);
    objc_msgSend_userAcceleration(v77, v78, v79);
    v81 = v80;
    v84 = objc_msgSend_count(v150, v82, v83);
    *buf = 67243008;
    *&buf[4] = v151;
    *v173 = 2050;
    *&v173[2] = v10;
    *&v173[10] = 2050;
    *&v173[12] = v11;
    *&v173[20] = 2050;
    *&v173[22] = v32;
    *&v173[30] = 2050;
    *&v173[32] = v39;
    *v174 = 2050;
    *&v174[2] = v46;
    *&v174[10] = 2050;
    *&v174[12] = v53;
    *&v174[20] = 2050;
    *&v174[22] = v60;
    *&v174[30] = 2050;
    *&v174[32] = v67;
    v175 = 2050;
    v176 = v74;
    v177 = 2050;
    v178 = v81;
    v179 = 1026;
    v180 = v84;
    _os_log_impl(&dword_19B41C000, v25, OS_LOG_TYPE_DEFAULT, "[framework-dm] Looped %{public}d times range [%{public}llu %{public}llu], timeS [%{public}f %{public}f], first sample [%{public}f %{public}f %{public}f], last sample [%{public}f %{public}f %{public}f], size %{public}d", buf, 0x72u);
  }

  v85 = sub_19B420058();
  if (*(v85 + 160) > 1 || *(v85 + 164) > 1 || *(v85 + 168) > 1 || *(v85 + 152))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1EAFE2AB8 != -1)
    {
      dispatch_once(&qword_1EAFE2AB8, &unk_1F0E28AA0);
    }

    v88 = qword_1EAFE2AC0;
    v89 = objc_msgSend_firstObject(v150, v86, v87);
    objc_msgSend_timestamp(v89, v90, v91);
    v93 = v92;
    v96 = objc_msgSend_lastObject(v150, v94, v95);
    objc_msgSend_timestamp(v96, v97, v98);
    v100 = v99;
    v103 = objc_msgSend_firstObject(v150, v101, v102);
    objc_msgSend_userAcceleration(v103, v104, v105);
    v107 = v106;
    v110 = objc_msgSend_firstObject(v150, v108, v109);
    objc_msgSend_userAcceleration(v110, v111, v112);
    v114 = v113;
    v117 = objc_msgSend_firstObject(v150, v115, v116);
    objc_msgSend_userAcceleration(v117, v118, v119);
    v121 = v120;
    v124 = objc_msgSend_lastObject(v150, v122, v123);
    objc_msgSend_userAcceleration(v124, v125, v126);
    v128 = v127;
    v131 = objc_msgSend_lastObject(v150, v129, v130);
    objc_msgSend_userAcceleration(v131, v132, v133);
    v135 = v134;
    v138 = objc_msgSend_lastObject(v150, v136, v137);
    objc_msgSend_userAcceleration(v138, v139, v140);
    v142 = v141;
    v145 = objc_msgSend_count(v150, v143, v144);
    buffer.i32[0] = 67243008;
    buffer.i32[1] = v151;
    *v155 = 2050;
    *&v155[2] = v10;
    *&v155[10] = 2050;
    v156 = v11;
    *v157 = 2050;
    *&v157[2] = v93;
    *&v157[10] = 2050;
    *v158 = v100;
    *&v158[8] = 2050;
    v159 = v107;
    v160 = 2050;
    v161 = v114;
    v162 = 2050;
    v163 = v121;
    v164 = 2050;
    v165 = v128;
    v166 = 2050;
    v167 = v135;
    v168 = 2050;
    v169 = v142;
    v170 = 1026;
    v171 = v145;
    LODWORD(v149) = 114;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v88, 0, "[framework-dm] Looped %{public}d times range [%{public}llu %{public}llu], timeS [%{public}f %{public}f], first sample [%{public}f %{public}f %{public}f], last sample [%{public}f %{public}f %{public}f], size %{public}d", &buffer, v149);
    v147 = v146;
    sub_19B6BB7CC("Generic", 1, 0, 2, "+[CMBatchedSensorManagerInternal _newArrayByUnpackingDeviceMotionBatch:]", "CoreLocation: %s\n", v146);
    if (v147 != buf)
    {
      free(v147);
    }
  }

  return v150;
}

@end