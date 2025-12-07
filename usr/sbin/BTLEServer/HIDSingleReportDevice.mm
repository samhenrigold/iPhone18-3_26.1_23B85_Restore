@interface HIDSingleReportDevice
- (int)getReport:(char *)report reportLength:(int64_t *)length reportID:(unsigned __int8)d reportType:(int)type;
- (int)setReport:(char *)report reportLength:(int64_t)length reportID:(unsigned __int8)d reportType:(int)type;
- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp;
@end

@implementation HIDSingleReportDevice

- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp
{
  dCopy = d;
  dataCopy = data;
  v9 = dataCopy;
  if (dCopy)
  {
    v10 = [dataCopy length];
    v11 = &v15 - ((v10 + 16) & 0xFFFFFFFFFFFFFFF0);
    bzero(v11, v10 + 1);
    *v11 = dCopy;
    [v9 getBytes:v11 + 1 length:v10];

    IOHIDUserDeviceHandleReportWithTimeStamp([(HIDGenericDevice *)self device], timestamp, v11, v10 + 1);
  }

  else
  {
    device = [(HIDGenericDevice *)self device];
    bytes = [v9 bytes];
    v14 = [v9 length];

    IOHIDUserDeviceHandleReportWithTimeStamp(device, timestamp, bytes, v14);
  }
}

- (int)getReport:(char *)report reportLength:(int64_t *)length reportID:(unsigned __int8)d reportType:(int)type
{
  v12 = 0;
  v8 = [(HIDBluetoothDevice *)self getReportData:&v12 reportID:d reportType:*&type error:0];
  v9 = v12;
  v10 = v9;
  if (!v8)
  {
    if ([v9 length] <= *length)
    {
      [v10 getBytes:report length:?];
      v8 = 0;
      *length = [v10 length];
    }

    else
    {
      v8 = -536870181;
    }
  }

  return v8;
}

- (int)setReport:(char *)report reportLength:(int64_t)length reportID:(unsigned __int8)d reportType:(int)type
{
  v6 = *&type;
  dCopy = d;
  v9 = [NSData dataWithBytesNoCopy:report length:length freeWhenDone:0];
  LODWORD(v6) = [(HIDBluetoothDevice *)self setReportData:v9 reportID:dCopy reportType:v6 error:0];

  return v6;
}

@end