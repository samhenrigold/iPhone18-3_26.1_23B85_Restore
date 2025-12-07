@interface HIDMultiReportsDevice
- (int)getReport:(char *)report reportLength:(int64_t *)length reportID:(unsigned __int8)d reportType:(int)type;
- (int)setReport:(char *)report reportLength:(int64_t)length reportID:(unsigned __int8)d reportType:(int)type;
- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp;
@end

@implementation HIDMultiReportsDevice

- (void)handleInputReportData:(id)data reportID:(unsigned __int8)d timestamp:(unint64_t)timestamp
{
  dataCopy = data;
  v9 = [dataCopy length];
  v10 = &v11 - ((v9 + 16) & 0xFFFFFFFFFFFFFFF0);
  bzero(v10, v9 + 1);
  *v10 = d;
  [dataCopy getBytes:v10 + 1 length:v9];

  IOHIDUserDeviceHandleReportWithTimeStamp([(HIDGenericDevice *)self device], timestamp, v10, v9 + 1);
}

- (int)getReport:(char *)report reportLength:(int64_t *)length reportID:(unsigned __int8)d reportType:(int)type
{
  v13 = 0;
  v9 = [(HIDBluetoothDevice *)self getReportData:&v13 reportID:d reportType:*&type error:0];
  v10 = v13;
  v11 = v10;
  if (!v9)
  {
    if ([v10 length] + 1 <= *length)
    {
      *report = d;
      [v11 getBytes:report + 1 length:*length - 1];
      v9 = 0;
      *length = [v11 length] + 1;
    }

    else
    {
      v9 = -536870181;
    }
  }

  return v9;
}

- (int)setReport:(char *)report reportLength:(int64_t)length reportID:(unsigned __int8)d reportType:(int)type
{
  v6 = *&type;
  dCopy = d;
  v9 = [NSData dataWithBytesNoCopy:report + 1 length:length - 1 freeWhenDone:0];
  LODWORD(v6) = [(HIDBluetoothDevice *)self setReportData:v9 reportID:dCopy reportType:v6 error:0];

  return v6;
}

@end