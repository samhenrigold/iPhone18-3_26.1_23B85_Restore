@interface HMFMACAddress
- (HMFMACAddress)initWithAddressData:(id)data;
- (HMFMACAddress)initWithAddressString:(id)string length:(unint64_t)length;
@end

@implementation HMFMACAddress

- (HMFMACAddress)initWithAddressString:(id)string length:(unint64_t)length
{
  v18 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (length == 6)
  {
    v13.receiver = self;
    v13.super_class = HMFMACAddress;
    v7 = [(HMFHardwareAddress *)&v13 initWithAddressString:stringCopy length:6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle(0, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v15 = v11;
      v16 = 2048;
      lengthCopy = length;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to create MAC address with string of invalid length: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (HMFMACAddress)initWithAddressData:(id)data
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([dataCopy length] == 6)
  {
    v11.receiver = self;
    v11.super_class = HMFMACAddress;
    v5 = [(HMFHardwareAddress *)&v11 initWithAddressData:dataCopy];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle(0, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = dataCopy;
      _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to create MAC address with data of invalid length: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  return v5;
}

@end