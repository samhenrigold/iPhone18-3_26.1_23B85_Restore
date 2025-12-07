@interface PRRangingDevice
- (PRRangingDevice)init;
@end

@implementation PRRangingDevice

- (PRRangingDevice)init
{
  v13[2] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PRRangingDevice;
  v2 = [(PRRangingDevice *)&v11 init];
  if (v2)
  {
    v12[0] = @"ProcessName";
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
    v12[1] = @"ProcessIdentifier";
    v13[0] = processName;
    v5 = MEMORY[0x277CCABB0];
    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    v7 = [v5 numberWithInt:{objc_msgSend(processInfo2, "processIdentifier")}];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
    clientInfo = v2->_clientInfo;
    v2->_clientInfo = v8;
  }

  return v2;
}

@end