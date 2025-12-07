@interface PBBridgeIDSReachabilityObserverWrapper
- (PBBridgeIDSReachabilityObserver)observer;
- (void)fireReachability:(id)reachability deviceStatus:(id)status devices:(id)devices;
@end

@implementation PBBridgeIDSReachabilityObserverWrapper

- (void)fireReachability:(id)reachability deviceStatus:(id)status devices:(id)devices
{
  v26 = *MEMORY[0x277D85DE8];
  reachabilityCopy = reachability;
  statusCopy = status;
  devicesCopy = devices;
  WeakRetained = objc_loadWeakRetained(&self->_observer);
  if (WeakRetained)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = statusCopy;
    v12 = statusCopy;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v21 + 1) + 8 * i);
          idsDeviceID = [v17 idsDeviceID];
          v19 = [devicesCopy objectForKeyedSubscript:idsDeviceID];
          [WeakRetained reachability:reachabilityCopy device:v19 connectionStatus:{objc_msgSend(v17, "reachability")}];
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v14);
    }

    statusCopy = v20;
  }
}

- (PBBridgeIDSReachabilityObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end