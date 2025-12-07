@interface HIDKeyholeUserDevice
- (HIDBluetoothDevice)delegate;
- (HIDKeyholeUserDevice)initWithProperties:(id)properties hidDescriptor:(id)descriptor keyholeID:(unsigned __int8)d delegate:(id)delegate;
- (OS_dispatch_queue)queue;
- (int)getReport:(char *)report reportLength:(int64_t *)length reportID:(unsigned int)d reportType:(int)type;
- (int)setReport:(char *)report reportLength:(int64_t)length reportID:(unsigned int)d reportType:(int)type;
- (void)dealloc;
- (void)start:(id)start;
- (void)stop;
@end

@implementation HIDKeyholeUserDevice

- (HIDKeyholeUserDevice)initWithProperties:(id)properties hidDescriptor:(id)descriptor keyholeID:(unsigned __int8)d delegate:(id)delegate
{
  propertiesCopy = properties;
  descriptorCopy = descriptor;
  delegateCopy = delegate;
  v21.receiver = self;
  v21.super_class = HIDKeyholeUserDevice;
  v13 = [(HIDKeyholeUserDevice *)&v21 init];
  if (v13)
  {
    v14 = [propertiesCopy mutableCopy];
    [v14 setObject:descriptorCopy forKeyedSubscript:@"ReportDescriptor"];
    *(v13 + 9) = 1023;
    v13[8] = d;
    objc_storeWeak(v13 + 3, delegateCopy);
    v15 = IOHIDUserDeviceCreateWithOptions();
    v16 = *(v13 + 2);
    *(v13 + 2) = v15;

    if (*(v13 + 2))
    {
      IOHIDUserDeviceRegisterSetReportCallback();
      IOHIDUserDeviceRegisterGetReportWithReturnLengthCallback();
      v17 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = v13[8];
        *buf = 67109120;
        v23 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Created HIDKeyholeUserDevice with keyholeID %02X", buf, 8u);
      }

      v19 = v13;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (void)start:(id)start
{
  startCopy = start;
  v4 = objc_storeWeak(&self->_queue, startCopy);
  IOHIDUserDeviceScheduleWithDispatchQueue();
}

- (void)stop
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_queue);
    IOHIDUserDeviceUnscheduleFromDispatchQueue();
  }
}

- (int)getReport:(char *)report reportLength:(int64_t *)length reportID:(unsigned int)d reportType:(int)type
{
  v6 = *&type;
  [(HIDKeyholeUserDevice *)self maxReportRetry];
  v11 = 0;
  while (1)
  {
    if (v11)
    {
      v12 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        keyholeID = self->_keyholeID;
        *buf = 67109632;
        *v36 = v11;
        *&v36[4] = 1024;
        *&v36[6] = d;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = keyholeID;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Retry #%u getting report (id=0x%02X, keyhole=0x%02X)", buf, 0x14u);
      }
    }

    kdebug_trace();
    if ([(HIDKeyholeUserDevice *)self useKeyholeOnGet])
    {
      *buf = 0;
      buf[0] = [(HIDKeyholeUserDevice *)self getReportKeyholeID];
      buf[1] = d;
      v13 = [NSData dataWithBytes:buf length:2];
      getReportKeyholeID = 0;
    }

    else
    {
      buf[0] = d;
      v13 = [NSData dataWithBytes:buf length:1];
      getReportKeyholeID = [(HIDKeyholeUserDevice *)self getReportKeyholeID];
    }

    delegate = [(HIDKeyholeUserDevice *)self delegate];
    v16 = [delegate setReportData:v13 reportID:getReportKeyholeID reportType:v6 error:0];

    if (v16 == -536870201)
    {
      v16 = -536870201;
      kdebug_trace();
      goto LABEL_27;
    }

    reportCopy = report;
    lengthCopy = length;
    if (v16)
    {
      v22 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        v24 = self->_keyholeID;
        *buf = 67109632;
        *v36 = v16;
        *&v36[4] = 1024;
        *&v36[6] = d;
        LOWORD(v37) = 1024;
        *(&v37 + 2) = v24;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Set report failed (err=0x%02X, id=0x%02X, keyhole=0x%02X)", buf, 0x14u);
      }

      goto LABEL_17;
    }

    delegate2 = [(HIDKeyholeUserDevice *)self delegate];
    v34 = 0;
    v16 = [delegate2 getReportData:&v34 reportID:self->_keyholeID reportType:v6 error:0];
    v19 = v34;

    if (v16 == -536870201)
    {
      v16 = -536870201;
      goto LABEL_26;
    }

    if (!v16)
    {
      break;
    }

    v20 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v25 = self->_keyholeID;
      *buf = 67109632;
      *v36 = v16;
      *&v36[4] = 1024;
      *&v36[6] = d;
      LOWORD(v37) = 1024;
      *(&v37 + 2) = v25;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Get report failed (err=0x%02X, id=0x%02X, keyhole=0x%02X)", buf, 0x14u);
    }

LABEL_17:
    v23 = v11++ >= [(HIDKeyholeUserDevice *)self maxReportRetry];
    length = lengthCopy;
    report = reportCopy;
    if (v23)
    {
      kdebug_trace();
      return v16;
    }
  }

  v26 = [(HIDKeyholeUserDevice *)self useKeyholeOnGet]^ 1;
  if ([v19 length] + v26 <= *lengthCopy)
  {
    *reportCopy = d;
    [v19 getBytes:&reportCopy[v26] length:*lengthCopy - v26];
    v16 = 0;
    *lengthCopy = [v19 length] + v26;
  }

  else
  {
    v27 = qword_1000DDBC8;
    v16 = -536870181;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      v29 = [v19 length];
      v30 = *lengthCopy;
      v31 = self->_keyholeID;
      *buf = 134218752;
      *v36 = v29;
      *&v36[8] = 2048;
      v37 = v30;
      v38 = 1024;
      dCopy = d;
      v40 = 1024;
      v41 = v31;
      _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "Invalid report length (actual=%lu, expected=%ld, id=0x%02X, keyhole=0x%02X)", buf, 0x22u);
    }
  }

LABEL_26:
  kdebug_trace();

LABEL_27:
  return v16;
}

- (int)setReport:(char *)report reportLength:(int64_t)length reportID:(unsigned int)d reportType:(int)type
{
  v6 = *&type;
  [(HIDKeyholeUserDevice *)self maxReportRetry];
  v11 = 0;
  *&v12 = 67109632;
  v23 = v12;
  while (1)
  {
    if (v11)
    {
      v13 = qword_1000DDBC8;
      if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
      {
        keyholeID = self->_keyholeID;
        *buf = v23;
        v25 = v11;
        v26 = 1024;
        dCopy2 = d;
        v28 = 1024;
        v29 = keyholeID;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Retry #%u setting report (id=0x%02X, keyhole=0x%02X)", buf, 0x14u);
      }
    }

    v14 = [NSData dataWithBytesNoCopy:report length:length freeWhenDone:0, v23];
    kdebug_trace();
    delegate = [(HIDKeyholeUserDevice *)self delegate];
    v16 = v6 == 1 ? [delegate sendOutputReportData:v14 reportID:self->_keyholeID reportType:1] : objc_msgSend(delegate, "setReportData:reportID:reportType:error:", v14, self->_keyholeID, v6, 0);

    kdebug_trace();
    if (v16 == -536870201 || v16 == 0)
    {
      break;
    }

    v18 = qword_1000DDBC8;
    if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_ERROR))
    {
      v20 = self->_keyholeID;
      *buf = v23;
      v25 = v16;
      v26 = 1024;
      dCopy2 = d;
      v28 = 1024;
      v29 = v20;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Set report failed (err=0x%02X, id=0x%02X, keyhole=0x%02X)", buf, 0x14u);
    }

    if (v11++ >= [(HIDKeyholeUserDevice *)self maxReportRetry])
    {
      return v16;
    }
  }

  return v16;
}

- (void)dealloc
{
  v3 = qword_1000DDBC8;
  if (os_log_type_enabled(qword_1000DDBC8, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    *buf = 67109120;
    keyholeID = [(HIDKeyholeUserDevice *)self keyholeID];
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Deallocating HIDKeyholeUserDevice with keyholeID %02X", buf, 8u);
  }

  [(HIDKeyholeUserDevice *)self stop];
  v5.receiver = self;
  v5.super_class = HIDKeyholeUserDevice;
  [(HIDKeyholeUserDevice *)&v5 dealloc];
}

- (HIDBluetoothDevice)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (OS_dispatch_queue)queue
{
  WeakRetained = objc_loadWeakRetained(&self->_queue);

  return WeakRetained;
}

@end