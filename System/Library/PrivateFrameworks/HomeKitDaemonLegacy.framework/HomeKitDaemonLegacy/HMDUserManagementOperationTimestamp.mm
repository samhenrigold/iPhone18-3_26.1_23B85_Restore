@interface HMDUserManagementOperationTimestamp
- (BOOL)isEqual:(id)equal;
- (HMDUserManagementOperationTimestamp)initWithCoder:(id)coder;
- (HMDUserManagementOperationTimestamp)initWithDevice:(id)device state:(unint64_t)state;
- (id)attributeDescriptions;
- (id)shortDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HMDUserManagementOperationTimestamp

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  device = [(HMDUserManagementOperationTimestamp *)self device];
  [coderCopy encodeObject:device forKey:@"HM.device"];

  timestamp = [(HMDUserManagementOperationTimestamp *)self timestamp];
  [coderCopy encodeObject:timestamp forKey:@"HM.date"];

  state = [(HMDUserManagementOperationTimestamp *)self state];
  [coderCopy encodeObject:state forKey:@"HM.state"];
}

- (HMDUserManagementOperationTimestamp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.state"];
  v7 = v6;
  if (v6)
  {
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  v9 = [(HMDUserManagementOperationTimestamp *)self initWithDevice:v5 state:unsignedIntegerValue];
  if (v9)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.date"];
    if (v10)
    {
      objc_storeStrong(&v9->_timestamp, v10);
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    v7 = v6;
    if (v6 && (-[HMDUserManagementOperationTimestamp timestamp](v6, "timestamp"), v8 = objc_claimAutoreleasedReturnValue(), -[HMDUserManagementOperationTimestamp timestamp](self, "timestamp"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v8 isEqual:v9], v9, v8, v10) && (-[HMDUserManagementOperationTimestamp state](v7, "state"), v11 = objc_claimAutoreleasedReturnValue(), -[HMDUserManagementOperationTimestamp state](self, "state"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v11, "isEqual:", v12), v12, v11, v13))
    {
      device = [(HMDUserManagementOperationTimestamp *)v7 device];
      device2 = [(HMDUserManagementOperationTimestamp *)self device];
      v16 = [device isEqual:device2];
    }

    else
    {
      v16 = 0;
    }
  }

  return v16;
}

- (id)attributeDescriptions
{
  v14[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  device = [(HMDUserManagementOperationTimestamp *)self device];
  v5 = [v3 initWithName:@"Device" value:device];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  timestamp = [(HMDUserManagementOperationTimestamp *)self timestamp];
  v8 = [v6 initWithName:@"Timestamp" value:timestamp];
  v14[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  state = [(HMDUserManagementOperationTimestamp *)self state];
  v11 = [v9 initWithName:@"State" value:state];
  v14[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:3];

  return v12;
}

- (id)shortDescription
{
  v3 = MEMORY[0x277CCACA8];
  shortDescription = [objc_opt_class() shortDescription];
  timestamp = [(HMDUserManagementOperationTimestamp *)self timestamp];
  v6 = [v3 stringWithFormat:@"%@ %@", shortDescription, timestamp];

  return v6;
}

- (HMDUserManagementOperationTimestamp)initWithDevice:(id)device state:(unint64_t)state
{
  deviceCopy = device;
  v15.receiver = self;
  v15.super_class = HMDUserManagementOperationTimestamp;
  v8 = [(HMDUserManagementOperationTimestamp *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_device, device);
    date = [MEMORY[0x277CBEAA8] date];
    timestamp = v9->_timestamp;
    v9->_timestamp = date;

    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:state];
    state = v9->_state;
    v9->_state = v12;
  }

  return v9;
}

@end