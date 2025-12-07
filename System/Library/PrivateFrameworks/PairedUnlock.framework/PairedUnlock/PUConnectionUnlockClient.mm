@interface PUConnectionUnlockClient
- (PUConnection)connection;
- (PUConnectionUnlockClient)initWithConnection:(id)connection;
- (void)didDisableOnlyRemoteUnlock:(BOOL)unlock error:(id)error;
- (void)didEnableOnlyRemoteUnlock:(BOOL)unlock error:(id)error;
- (void)didGetRemoteDeviceState:(id)state error:(id)error;
- (void)didPairForUnlock:(BOOL)unlock error:(id)error;
- (void)didUnpairForUnlock:(BOOL)unlock error:(id)error;
- (void)remoteDeviceDidCompleteRemoteAction:(BOOL)action remoteDeviceState:(id)state error:(id)error;
- (void)remoteDeviceDidRemoveLockout:(BOOL)lockout error:(id)error;
- (void)remoteDeviceDidUnlock;
@end

@implementation PUConnectionUnlockClient

- (PUConnectionUnlockClient)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v7.receiver = self;
  v7.super_class = PUConnectionUnlockClient;
  v5 = [(PUConnectionUnlockClient *)&v7 self];

  if (v5)
  {
    objc_storeWeak(&v5->_connection, connectionCopy);
  }

  return v5;
}

- (void)didPairForUnlock:(BOOL)unlock error:(id)error
{
  unlockCopy = unlock;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained didPairForUnlock:unlockCopy error:errorCopy];
}

- (void)didUnpairForUnlock:(BOOL)unlock error:(id)error
{
  unlockCopy = unlock;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained didUnpairForUnlock:unlockCopy error:errorCopy];
}

- (void)didEnableOnlyRemoteUnlock:(BOOL)unlock error:(id)error
{
  unlockCopy = unlock;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained didEnableOnlyRemoteUnlock:unlockCopy error:errorCopy];
}

- (void)didDisableOnlyRemoteUnlock:(BOOL)unlock error:(id)error
{
  unlockCopy = unlock;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained didDisableOnlyRemoteUnlock:unlockCopy error:errorCopy];
}

- (void)remoteDeviceDidCompleteRemoteAction:(BOOL)action remoteDeviceState:(id)state error:(id)error
{
  actionCopy = action;
  errorCopy = error;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained remoteDeviceDidCompleteRemoteAction:actionCopy remoteDeviceState:stateCopy error:errorCopy];
}

- (void)remoteDeviceDidUnlock
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained remoteDeviceDidUnlock];
}

- (void)remoteDeviceDidRemoveLockout:(BOOL)lockout error:(id)error
{
  lockoutCopy = lockout;
  errorCopy = error;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained remoteDeviceDidRemoveLockout:lockoutCopy error:errorCopy];
}

- (void)didGetRemoteDeviceState:(id)state error:(id)error
{
  errorCopy = error;
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  [WeakRetained didGetRemoteDeviceState:stateCopy error:errorCopy];
}

- (PUConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end