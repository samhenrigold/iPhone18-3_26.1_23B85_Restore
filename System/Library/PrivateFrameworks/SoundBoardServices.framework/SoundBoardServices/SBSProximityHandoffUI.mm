@interface SBSProximityHandoffUI
- (SBSProximityHandoffUI)initWithTarget:(id)target;
- (SBSProximityHandoffUIDelegate)delegate;
- (void)completeWithHandoffType:(unint64_t)type;
- (void)dealloc;
- (void)handoffCancelled;
- (void)handoffCompleted;
- (void)handoffInactive;
- (void)handoffStarted;
- (void)handoffUpdating;
@end

@implementation SBSProximityHandoffUI

- (SBSProximityHandoffUIDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_sbConnection invalidate];
  v3.receiver = self;
  v3.super_class = SBSProximityHandoffUI;
  [(SBSProximityHandoffUI *)&v3 dealloc];
}

- (void)handoffUpdating
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service updating.", v5, 2u);
  }

  delegate = [(SBSProximityHandoffUI *)self delegate];
  [delegate proximityHandoffUI:self stateTransition:3];
}

- (void)handoffStarted
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service started.", v5, 2u);
  }

  delegate = [(SBSProximityHandoffUI *)self delegate];
  [delegate proximityHandoffUI:self stateTransition:2];
}

- (void)handoffInactive
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service inactive.", v5, 2u);
  }

  delegate = [(SBSProximityHandoffUI *)self delegate];
  [delegate proximityHandoffUI:self stateTransition:4];
}

- (void)handoffCompleted
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service completed.", v5, 2u);
  }

  delegate = [(SBSProximityHandoffUI *)self delegate];
  [delegate proximityHandoffUI:self stateTransition:1];
}

- (void)handoffCancelled
{
  v3 = _SBSLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26B246000, v3, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service cancelled.", v5, 2u);
  }

  delegate = [(SBSProximityHandoffUI *)self delegate];
  [delegate proximityHandoffUI:self stateTransition:0];
}

- (void)completeWithHandoffType:(unint64_t)type
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (objc_opt_respondsToSelector())
  {
    v5 = _SBSLoggingFacility();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_26B246000, v5, OS_LOG_TYPE_DEFAULT, "Proximity Handoff UI Service setting device as stereo leader.", v7, 2u);
    }

    v8 = @"reason";
    v9[0] = @"ProximityHandoffV2";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    [(SBSImplementer *)self->_sbProxy handoffSetDeviceAsStereoLeader:1 withOptions:v6];
  }

  [(SBSImplementer *)self->_sbProxy handoffCompleteWithHandoffType:type];
}

- (SBSProximityHandoffUI)initWithTarget:(id)target
{
  targetCopy = target;
  v9.receiver = self;
  v9.super_class = SBSProximityHandoffUI;
  v5 = [(SBSProximityHandoffUI *)&v9 init];
  if (v5)
  {
    if ([targetCopy isEqualToString:@"localhost"])
    {
      [SBSUtils createProxyConnectionForXPCWithExportedObject:v5 connection:&v5->_sbConnection];
    }

    else
    {
      [SBSUtils createProxyConnectionForRapportTarget:targetCopy];
    }
    v6 = ;
    sbProxy = v5->_sbProxy;
    v5->_sbProxy = v6;
  }

  return v5;
}

@end