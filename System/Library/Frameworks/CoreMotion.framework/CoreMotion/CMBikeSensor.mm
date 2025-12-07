@interface CMBikeSensor
+ (BOOL)isAvailable;
- (CMBikeSensor)init;
- (void)dealloc;
- (void)feedBikeSensorData:(id)data;
@end

@implementation CMBikeSensor

- (CMBikeSensor)init
{
  v4.receiver = self;
  v4.super_class = CMBikeSensor;
  v2 = [(CMBikeSensor *)&v4 init];
  if (v2)
  {
    v2->_internal = objc_alloc_init(CMBikeSensorInternal);
  }

  return v2;
}

- (void)dealloc
{
  internal = self->_internal;
  fInternalQueue = internal->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6CC338;
  block[3] = &unk_1E7532988;
  block[4] = internal;
  dispatch_sync(fInternalQueue, block);

  v5.receiver = self;
  v5.super_class = CMBikeSensor;
  [(CMBikeSensor *)&v5 dealloc];
}

+ (BOOL)isAvailable
{
  if ((sub_19B4215D8() & 1) == 0)
  {
    sub_19B421798();
  }

  return 0;
}

- (void)feedBikeSensorData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  if (qword_1ED71D418 != -1)
  {
    dispatch_once(&qword_1ED71D418, &unk_1F0E281A0);
  }

  if (qword_1ED71D410 == 3)
  {
    objc_msgSend_instantaneousPower(data, a2, data);
    if (v7 >= 1.79769313e308 && (objc_msgSend_instantaneousCadence(data, v5, v6), v8 >= 1.79769313e308))
    {
      if (qword_1EAFE2808 != -1)
      {
        dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
      }

      v13 = qword_1EAFE2830;
      if (os_log_type_enabled(qword_1EAFE2830, OS_LOG_TYPE_DEFAULT))
      {
        objc_msgSend_instantaneousPower(data, v14, v15);
        *buf = 134217984;
        v27 = v16;
        _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_DEFAULT, "CMBikeSensor::feedBikeSensorData the input variable is beyond the limit and was rejected: %f", buf, 0xCu);
      }

      v17 = sub_19B420058();
      if (*(v17 + 160) > 1 || *(v17 + 164) > 1 || *(v17 + 168) > 1 || *(v17 + 152))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1EAFE2808 != -1)
        {
          dispatch_once(&qword_1EAFE2808, &unk_1F0E27F40);
        }

        v20 = qword_1EAFE2830;
        objc_msgSend_instantaneousPower(data, v18, v19);
        v24 = 134217984;
        v25 = v21;
        _os_log_send_and_compose_impl(2, 0, buf, 1628, &dword_19B41C000, v20, 0, "CMBikeSensor::feedBikeSensorData the input variable is beyond the limit and was rejected: %f", COERCE_DOUBLE(&v24));
        v23 = v22;
        sub_19B6BB7CC("Generic", 1, 0, 2, "[CMBikeSensor feedBikeSensorData:]", "CoreLocation: %s\n", v22);
        if (v23 != buf)
        {
          free(v23);
        }
      }
    }

    else
    {
      v9 = objc_msgSend_newFitnessMachineDataFromBikeSensorData(data, v5, v6);
      v12 = objc_msgSend__internal(self, v10, v11);

      MEMORY[0x1EEE66B58](v12, sel__feedBikeSensorData_, v9);
    }
  }
}

@end