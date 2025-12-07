@interface HMDMTSNetworkCredentialServer
+ (id)logCategory;
- (HMDMTSNetworkCredentialServer)initWithSystemCommissionerPairingManager:(id)manager;
- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler;
- (void)updateThreadCredentialManagementEnabled:(BOOL)enabled forSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler;
@end

@implementation HMDMTSNetworkCredentialServer

- (void)retrievePreferredThreadCredentialsOrCreateWithDataset:(id)dataset completionHandler:(id)handler
{
  handlerCopy = handler;
  datasetCopy = dataset;
  systemCommissionerPairingManager = [(HMDMTSNetworkCredentialServer *)self systemCommissionerPairingManager];
  [systemCommissionerPairingManager retrievePreferredThreadCredentialsOrCreateWithDataset:datasetCopy completionHandler:handlerCopy];
}

- (void)updateThreadCredentialManagementEnabled:(BOOL)enabled forSystemCommissionerPairingUUID:(id)d completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  dCopy = d;
  systemCommissionerPairingManager = [(HMDMTSNetworkCredentialServer *)self systemCommissionerPairingManager];
  [systemCommissionerPairingManager updateThreadCredentialManagementEnabled:enabledCopy forSystemCommissionerPairingUUID:dCopy completionHandler:handlerCopy];
}

- (HMDMTSNetworkCredentialServer)initWithSystemCommissionerPairingManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v5 = managerCopy;
    v11.receiver = self;
    v11.super_class = HMDMTSNetworkCredentialServer;
    v6 = [(HMDMTSNetworkCredentialServer *)&v11 init];
    systemCommissionerPairingManager = v6->_systemCommissionerPairingManager;
    v6->_systemCommissionerPairingManager = v5;

    return v6;
  }

  else
  {
    v9 = _HMFPreconditionFailure();
    return +[(HMDMTSNetworkCredentialServer *)v9];
  }
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_179274 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_179274, &__block_literal_global_179275);
  }

  v3 = logCategory__hmf_once_v1_179276;

  return v3;
}

uint64_t __44__HMDMTSNetworkCredentialServer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_179276;
  logCategory__hmf_once_v1_179276 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end