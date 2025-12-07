@interface ICQBackupInfo
- (ICQBackupInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQBackupInfo

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQBackupInfo);
  [(ICQBackupInfo *)v4 setNoOfBackupDevices:self->_noOfBackupDevices];
  [(ICQBackupInfo *)v4 setDeviceGroups:self->_deviceGroups];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  noOfBackupDevices = self->_noOfBackupDevices;
  coderCopy = coder;
  [coderCopy encodeObject:noOfBackupDevices forKey:@"noOfBackupDevices"];
  [coderCopy encodeObject:self->_deviceGroups forKey:@"deviceGroups"];
}

- (ICQBackupInfo)initWithCoder:(id)coder
{
  v15[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ICQBackupInfo;
  v5 = [(ICQBackupInfo *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"noOfBackupDevices"];
    noOfBackupDevices = v5->_noOfBackupDevices;
    v5->_noOfBackupDevices = v6;

    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"deviceGroups"];
    deviceGroups = v5->_deviceGroups;
    v5->_deviceGroups = v11;
  }

  return v5;
}

@end