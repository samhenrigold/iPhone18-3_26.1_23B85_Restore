@interface COCapabilityManagerClientInterfaceMediator
- (COCapabilityManager)manager;
- (COCapabilityManagerClientInterfaceMediator)initWithCapabilityManager:(id)manager;
- (void)availabilityChanged:(BOOL)changed ofCapability:(id)capability inCluster:(id)cluster;
@end

@implementation COCapabilityManagerClientInterfaceMediator

- (COCapabilityManagerClientInterfaceMediator)initWithCapabilityManager:(id)manager
{
  managerCopy = manager;
  v8.receiver = self;
  v8.super_class = COCapabilityManagerClientInterfaceMediator;
  v5 = [(COCapabilityManagerClientInterfaceMediator *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_manager, managerCopy);
  }

  return v6;
}

- (void)availabilityChanged:(BOOL)changed ofCapability:(id)capability inCluster:(id)cluster
{
  changedCopy = changed;
  capabilityCopy = capability;
  clusterCopy = cluster;
  WeakRetained = objc_loadWeakRetained(&self->_manager);
  v10 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained availabilityChanged:changedCopy ofCapability:capabilityCopy inCluster:clusterCopy];
  }
}

- (COCapabilityManager)manager
{
  WeakRetained = objc_loadWeakRetained(&self->_manager);

  return WeakRetained;
}

@end