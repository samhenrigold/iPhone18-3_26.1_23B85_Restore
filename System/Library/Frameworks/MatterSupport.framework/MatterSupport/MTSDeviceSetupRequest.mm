@interface MTSDeviceSetupRequest
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldScanNetworks;
- (BOOL)shouldShowDeviceWithUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number;
- (BOOL)shouldShowDeviceWithUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number rootPublicKey:(id)key nodeID:(id)nodeID;
- (MTRSetupPayload)setupPayload;
- (MTSDeviceSetupRequest)initWithCoder:(id)coder;
- (MTSDeviceSetupRequest)initWithDictionaryRepresentation:(id)representation;
- (MTSDeviceSetupRequest)initWithEcosystemName:(id)name homeNames:(id)names blockedDevicePairings:(id)pairings;
- (MTSDeviceSetupRequest)initWithSerializedRequest:(id)request;
- (MTSDeviceSetupRequest)initWithWrappedRequest:(id)request;
- (MTSDeviceSetupTopology)topology;
- (NSDictionary)dictionaryRepresentation;
- (NSString)ecosystemName;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MTSDeviceSetupRequest

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  serializedAsData = [wrappedRequest serializedAsData];
  [coderCopy encodeObject:serializedAsData forKey:@"MTSDSR.wrappedRequest"];
}

- (MTSDeviceSetupRequest)initWithCoder:(id)coder
{
  v16 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MTSDSR.wrappedRequest"];
  if (v5)
  {
    selfCopy = [(MTSDeviceSetupRequest *)self initWithSerializedRequest:v5];
    v7 = selfCopy;
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v10;
      v14 = 2048;
      v15 = [0 length];
      _os_log_impl(&dword_239824000, v9, OS_LOG_TYPE_ERROR, "%{public}@Could not deserialize from wrappedRequestData: %ld", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  return v7;
}

- (id)debugDescription
{
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [wrappedRequest debugDescription];

  return v3;
}

- (id)description
{
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [wrappedRequest description];

  return v3;
}

- (unint64_t)hash
{
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v3 = [wrappedRequest hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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
  if (v6)
  {
    wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
    wrappedRequest2 = [v6 wrappedRequest];
    v9 = [wrappedRequest isEqual:wrappedRequest2];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldShowDeviceWithUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number rootPublicKey:(id)key nodeID:(id)nodeID
{
  nodeIDCopy = nodeID;
  keyCopy = key;
  numberCopy = number;
  productIDCopy = productID;
  iDCopy = iD;
  dCopy = d;
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v21 = [wrappedRequest shouldShowDeviceWithUUID:dCopy vendorID:iDCopy productID:productIDCopy serialNumber:numberCopy rootPublicKey:keyCopy nodeID:nodeIDCopy];

  return v21;
}

- (BOOL)shouldShowDeviceWithUUID:(id)d vendorID:(id)iD productID:(id)productID serialNumber:(id)number
{
  numberCopy = number;
  productIDCopy = productID;
  iDCopy = iD;
  dCopy = d;
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  v15 = [wrappedRequest shouldShowDeviceWithUUID:dCopy vendorID:iDCopy productID:productIDCopy serialNumber:numberCopy rootPublicKey:0 nodeID:0];

  return v15;
}

- (NSDictionary)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v3 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v11];
  v4 = v11;
  if (v3)
  {
    v12 = @"MTSDSR";
    v13 = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543874;
      v15 = v9;
      v16 = 2112;
      v17 = selfCopy;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_239824000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to serialize device setup request %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = MEMORY[0x277CBEC10];
  }

  return v5;
}

- (MTRSetupPayload)setupPayload
{
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  setupPayload = [wrappedRequest setupPayload];

  return setupPayload;
}

- (BOOL)shouldScanNetworks
{
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  shouldScanNetworks = [wrappedRequest shouldScanNetworks];

  return shouldScanNetworks;
}

- (NSString)ecosystemName
{
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  ecosystemName = [wrappedRequest ecosystemName];

  return ecosystemName;
}

- (MTSDeviceSetupTopology)topology
{
  wrappedRequest = [(MTSDeviceSetupRequest *)self wrappedRequest];
  topology = [wrappedRequest topology];

  return topology;
}

- (MTSDeviceSetupRequest)initWithDictionaryRepresentation:(id)representation
{
  v25 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [(MTSDeviceSetupRequest *)self init];
  v6 = [representationCopy hmf_dataForKey:@"MTSDSR"];
  if (v6)
  {
    v18 = 0;
    v7 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v18];
    v8 = v18;

    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543874;
        v20 = v16;
        v21 = 2112;
        v22 = v6;
        v23 = 2112;
        v24 = representationCopy;
        _os_log_impl(&dword_239824000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device setup request from dictionary representation; failed to deserialize data %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v14);
    }

    v13 = v7;
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v7 = v5;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543874;
      v20 = v12;
      v21 = 2112;
      v22 = @"MTSDSR";
      v23 = 2112;
      v24 = representationCopy;
      _os_log_impl(&dword_239824000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to create device setup request from dictionary representation; missing %@ key in dictionary: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v13 = 0;
  }

  return v13;
}

- (MTSDeviceSetupRequest)initWithEcosystemName:(id)name homeNames:(id)names blockedDevicePairings:(id)pairings
{
  v6 = [MTDeviceSetupRequestFactory makeRequestWithEcosystemName:name homes:names blockedDevicePairings:pairings];
  v7 = [(MTSDeviceSetupRequest *)self initWithWrappedRequest:v6];

  return v7;
}

- (MTSDeviceSetupRequest)initWithSerializedRequest:(id)request
{
  v4 = [MTDeviceSetupRequestFactory makeRequestFrom:request];
  if (v4)
  {
    self = [(MTSDeviceSetupRequest *)self initWithWrappedRequest:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (MTSDeviceSetupRequest)initWithWrappedRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = MTSDeviceSetupRequest;
  v6 = [(MTSDeviceSetupRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_wrappedRequest, request);
  }

  return v7;
}

@end