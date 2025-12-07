@interface HMMRTCSession
- (HMMRTCSession)initWithUUID:(id)d serviceName:(id)name commonFields:(id)fields backend:(id)backend;
- (void)submitEventWithName:(id)name payload:(id)payload;
@end

@implementation HMMRTCSession

- (void)submitEventWithName:(id)name payload:(id)payload
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  payloadCopy = payload;
  v8 = [payloadCopy mutableCopy];
  [v8 setObject:nameCopy forKeyedSubscript:@"HMFEventName"];
  v9 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v11 = [v9 numberWithDouble:?];
  [v8 setObject:v11 forKeyedSubscript:@"HMFTimestamp"];

  uuid = [(HMMNullRTCSession *)self uuid];
  uUIDString = [uuid UUIDString];
  [v8 setObject:uUIDString forKeyedSubscript:@"HMFSessionIdentifier"];

  commonFields = [(HMMRTCSession *)self commonFields];
  [v8 addEntriesFromDictionary:commonFields];

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v18 = HMFGetLogIdentifier();
    uuid2 = [(HMMNullRTCSession *)selfCopy uuid];
    v21 = 138543874;
    v22 = v18;
    v23 = 2112;
    v24 = uuid2;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_22B074000, v17, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Submitting event: %@", &v21, 0x20u);
  }

  objc_autoreleasePoolPop(v15);
  backend = [(HMMRTCSession *)selfCopy backend];
  [backend sendMessage:v8];
}

- (HMMRTCSession)initWithUUID:(id)d serviceName:(id)name commonFields:(id)fields backend:(id)backend
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  nameCopy = name;
  fieldsCopy = fields;
  backendCopy = backend;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543874;
    v23 = v17;
    v24 = 2112;
    v25 = dCopy;
    v26 = 2112;
    v27 = nameCopy;
    _os_log_impl(&dword_22B074000, v16, OS_LOG_TYPE_DEBUG, "%{public}@[%@] Creating session with service name: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v21.receiver = selfCopy;
  v21.super_class = HMMRTCSession;
  v18 = [(HMMNullRTCSession *)&v21 initWithUUID:dCopy serviceName:nameCopy];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_commonFields, fields);
    objc_storeStrong(&v19->_backend, backend);
  }

  return v19;
}

@end