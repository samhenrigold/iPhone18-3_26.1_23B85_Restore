@interface HIDRemoteDevice
- (HIDRemoteDevice)initWithProperties:(id)properties;
- (id)description;
- (int)getReportHandler:(int)handler reportID:(unsigned __int8)d report:(char *)report reportLength:(unint64_t)length;
- (int)setReportHandler:(int)handler reportID:(unsigned __int8)d status:(int)status;
@end

@implementation HIDRemoteDevice

- (HIDRemoteDevice)initWithProperties:(id)properties
{
  v8.receiver = self;
  v8.super_class = HIDRemoteDevice;
  v3 = [(HIDUserDevice *)&v8 initWithProperties:properties];
  v4 = v3;
  if (v3)
  {
    [(HIDRemoteDevice *)v3 setCancelled:0];
    v5 = dispatch_semaphore_create(0);
    [(HIDRemoteDevice *)v4 setSemaphore:v5];

    [(HIDRemoteDevice *)v4 setPropertyPort:0];
    [(HIDRemoteDevice *)v4 setPropertyNotify:0];
    v6 = v4;
  }

  return v4;
}

- (int)setReportHandler:(int)handler reportID:(unsigned __int8)d status:(int)status
{
  v5 = *&status;
  if ([(HIDRemoteDevice *)self waitForReport:*&handler])
  {
    [(HIDRemoteDevice *)self setLastSetReportStatus:v5];
    semaphore = [(HIDRemoteDevice *)self semaphore];
    dispatch_semaphore_signal(semaphore);
  }

  else
  {
    LODWORD(v5) = -536870165;
  }

  return v5;
}

- (int)getReportHandler:(int)handler reportID:(unsigned __int8)d report:(char *)report reportLength:(unint64_t)length
{
  if (![(HIDRemoteDevice *)self waitForReport:*&handler])
  {
    return -536870165;
  }

  v9 = [MEMORY[0x277CBEA90] dataWithBytes:report length:length];
  [(HIDRemoteDevice *)self setLastGetReport:v9];

  semaphore = [(HIDRemoteDevice *)self semaphore];
  dispatch_semaphore_signal(semaphore);

  return 0;
}

- (id)description
{
  entryID = 0;
  IORegistryEntryGetRegistryEntryID([(HIDUserDevice *)self service], &entryID);
  v3 = MEMORY[0x277CCACA8];
  deviceID = [(HIDRemoteDevice *)self deviceID];
  v5 = entryID;
  handleReportCount = [(HIDRemoteDevice *)self handleReportCount];
  handleReportError = [(HIDRemoteDevice *)self handleReportError];
  v11.receiver = self;
  v11.super_class = HIDRemoteDevice;
  v8 = [(HIDUserDevice *)&v11 description];
  v9 = [v3 stringWithFormat:@"<HIDRemoteHIDUserDevice:%p id:%lld service:%llx handleReportCount:%u handleReportError:%u device:%@>", self, deviceID, v5, handleReportCount, handleReportError, v8];

  return v9;
}

@end