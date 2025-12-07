@interface WiFiUsageMonitor_UsbDevice
- (WiFiUsageMonitor_UsbDevice)initWithName:(id)name vid:(unint64_t)vid isApple:(BOOL)apple locationID:(unint64_t)d;
@end

@implementation WiFiUsageMonitor_UsbDevice

- (WiFiUsageMonitor_UsbDevice)initWithName:(id)name vid:(unint64_t)vid isApple:(BOOL)apple locationID:(unint64_t)d
{
  appleCopy = apple;
  v12.receiver = self;
  v12.super_class = WiFiUsageMonitor_UsbDevice;
  nameCopy = name;
  v10 = [(WiFiUsageMonitor_UsbDevice *)&v12 init];
  [(WiFiUsageMonitor_UsbDevice *)v10 setName:nameCopy, v12.receiver, v12.super_class];

  [(WiFiUsageMonitor_UsbDevice *)v10 setVid:vid];
  [(WiFiUsageMonitor_UsbDevice *)v10 setVidIsApple:appleCopy];
  [(WiFiUsageMonitor_UsbDevice *)v10 setLocationID:d];
  return v10;
}

@end