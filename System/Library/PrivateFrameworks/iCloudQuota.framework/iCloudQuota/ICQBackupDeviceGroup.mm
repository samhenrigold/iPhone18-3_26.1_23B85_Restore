@interface ICQBackupDeviceGroup
- (ICQBackupDeviceGroup)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICQBackupDeviceGroup

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(ICQBackupDeviceGroup);
  [(ICQBackupDeviceGroup *)v4 setSectionHeader:self->_sectionHeader];
  [(ICQBackupDeviceGroup *)v4 setSectionFooter:self->_sectionFooter];
  [(ICQBackupDeviceGroup *)v4 setBackupDevices:self->_backupDevices];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  sectionHeader = self->_sectionHeader;
  coderCopy = coder;
  [coderCopy encodeObject:sectionHeader forKey:@"sectionHeader"];
  [coderCopy encodeObject:self->_sectionFooter forKey:@"sectionFooter"];
  [coderCopy encodeObject:self->_backupDevices forKey:@"backupDevices"];
}

- (ICQBackupDeviceGroup)initWithCoder:(id)coder
{
  v17[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = ICQBackupDeviceGroup;
  v5 = [(ICQBackupDeviceGroup *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionHeader"];
    sectionHeader = v5->_sectionHeader;
    v5->_sectionHeader = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sectionFooter"];
    sectionFooter = v5->_sectionFooter;
    v5->_sectionFooter = v8;

    v10 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"backupDevices"];
    backupDevices = v5->_backupDevices;
    v5->_backupDevices = v13;
  }

  return v5;
}

@end