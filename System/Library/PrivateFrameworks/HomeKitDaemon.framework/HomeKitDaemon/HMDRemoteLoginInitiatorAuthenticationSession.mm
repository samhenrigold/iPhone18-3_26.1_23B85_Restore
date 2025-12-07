@interface HMDRemoteLoginInitiatorAuthenticationSession
- (HMDRemoteLoginInitiatorAuthenticationSession)initWithSessionID:(id)d remoteAuthentication:(id)authentication completion:(id)completion;
- (id)description;
- (void)dealloc;
@end

@implementation HMDRemoteLoginInitiatorAuthenticationSession

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  sessionID = [(HMDRemoteLoginInitiatorSession *)self sessionID];
  v4 = [v2 stringWithFormat:@"[Login-Initiator-Auth-Session: %@]", sessionID];

  return v4;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = selfCopy;
    _os_log_impl(&dword_229538000, v5, OS_LOG_TYPE_INFO, "%{public}@Dealloc %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  v7.receiver = selfCopy;
  v7.super_class = HMDRemoteLoginInitiatorAuthenticationSession;
  [(HMDRemoteLoginInitiatorAuthenticationSession *)&v7 dealloc];
}

- (HMDRemoteLoginInitiatorAuthenticationSession)initWithSessionID:(id)d remoteAuthentication:(id)authentication completion:(id)completion
{
  authenticationCopy = authentication;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = HMDRemoteLoginInitiatorAuthenticationSession;
  v11 = [(HMDRemoteLoginInitiatorSession *)&v16 initWithSessionID:d];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_remoteAuthentication, authentication);
    v13 = _Block_copy(completionCopy);
    completion = v12->_completion;
    v12->_completion = v13;
  }

  return v12;
}

@end