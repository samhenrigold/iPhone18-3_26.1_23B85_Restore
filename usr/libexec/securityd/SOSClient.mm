@interface SOSClient
- (BOOL)SOSMonitorModeSOSIsActive;
- (id)SOSMonitorModeSOSIsActiveDescription;
- (id)initSOSClientWithAccount:(id)account;
- (void)SOSMonitorModeDisableSOS;
- (void)SOSMonitorModeEnableSOS;
- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)callback;
- (void)accountStatus:(id)status;
- (void)assertStashedAccountCredential:(id)credential;
- (void)circleHash:(id)hash;
- (void)circleJoiningBlob:(id)blob flowID:(id)d deviceSessionID:(id)iD canSendMetrics:(BOOL)metrics applicant:(id)applicant complete:(id)complete;
- (void)getWatchdogParameters:(id)parameters;
- (void)ghostBust:(unsigned int)bust complete:(id)complete;
- (void)ghostBustInfo:(id)info;
- (void)ghostBustPeriodic:(unsigned int)periodic complete:(id)complete;
- (void)ghostBustTriggerTimed:(unsigned int)timed complete:(id)complete;
- (void)iCloudIdentityStatus:(id)status;
- (void)iCloudIdentityStatus_internal:(id)status_internal;
- (void)importInitialSyncCredentials:(id)credentials complete:(id)complete;
- (void)initialSyncCredentials:(unsigned int)credentials altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics complete:(id)complete;
- (void)joinCircleWithBlob:(id)blob altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics version:(int)version complete:(id)complete;
- (void)keyStatusFor:(int)for complete:(id)complete;
- (void)kvsPerformanceCounters:(id)counters;
- (void)myPeerInfo:(id)info flowID:(id)d deviceSessionID:(id)iD canSendMetrics:(BOOL)metrics complete:(id)complete;
- (void)rateLimitingPerformanceCounters:(id)counters;
- (void)removeV0Peers:(id)peers;
- (void)rpcTriggerBackup:(id)backup complete:(id)complete;
- (void)rpcTriggerRingUpdate:(id)update;
- (void)rpcTriggerSync:(id)sync complete:(id)complete;
- (void)setBypass:(BOOL)bypass reply:(id)reply;
- (void)setWatchdogParmeters:(id)parmeters complete:(id)complete;
- (void)stashAccountCredential:(id)credential altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics complete:(id)complete;
- (void)stashedCredentialPublicKey:(id)key;
- (void)userPublicKey:(id)key;
- (void)validatedStashedAccountCredential:(id)credential flowID:(id)d deviceSessionID:(id)iD canSendMetrics:(BOOL)metrics complete:(id)complete;
@end

@implementation SOSClient

- (void)setBypass:(BOOL)bypass reply:(id)reply
{
  bypassCopy = bypass;
  replyCopy = reply;
  account = [(SOSClient *)self account];
  [account setBypass:bypassCopy reply:replyCopy];
}

- (id)SOSMonitorModeSOSIsActiveDescription
{
  account = [(SOSClient *)self account];
  sOSMonitorModeSOSIsActiveDescription = [account SOSMonitorModeSOSIsActiveDescription];

  return sOSMonitorModeSOSIsActiveDescription;
}

- (BOOL)SOSMonitorModeSOSIsActive
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10025A038;
  v5[3] = &unk_100347660;
  v7 = &v8;
  v3 = dispatch_semaphore_create(0);
  v6 = v3;
  [(SOSClient *)self SOSMonitorModeSOSIsActiveWithCallback:v5];
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

- (void)SOSMonitorModeSOSIsActiveWithCallback:(id)callback
{
  callbackCopy = callback;
  account = [(SOSClient *)self account];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10025A100;
  v7[3] = &unk_100347638;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  [account performTransaction:v7];
}

- (void)SOSMonitorModeEnableSOS
{
  account = [(SOSClient *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025A238;
  v4[3] = &unk_1003475E8;
  v4[4] = self;
  [account performTransaction:v4];
}

- (void)SOSMonitorModeDisableSOS
{
  account = [(SOSClient *)self account];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10025A304;
  v4[3] = &unk_1003475E8;
  v4[4] = self;
  [account performTransaction:v4];
}

- (void)removeV0Peers:(id)peers
{
  peersCopy = peers;
  account = [(SOSClient *)self account];
  [account removeV0Peers:peersCopy];
}

- (void)iCloudIdentityStatus_internal:(id)status_internal
{
  status_internalCopy = status_internal;
  account = [(SOSClient *)self account];
  [account iCloudIdentityStatus_internal:status_internalCopy];
}

- (void)rpcTriggerRingUpdate:(id)update
{
  updateCopy = update;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    account = [(SOSClient *)self account];
    [account rpcTriggerRingUpdate:updateCopy];
  }

  else
  {
    v5 = [NSError alloc];
    account = [v5 initWithDomain:kSOSErrorDomain code:10 userInfo:&__NSDictionary0__struct];
    updateCopy[2](updateCopy);
  }
}

- (void)rpcTriggerBackup:(id)backup complete:(id)complete
{
  backupCopy = backup;
  completeCopy = complete;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    account = [(SOSClient *)self account];
    [account rpcTriggerBackup:backupCopy complete:completeCopy];
  }

  else
  {
    v8 = [NSError alloc];
    account = [v8 initWithDomain:kSOSErrorDomain code:10 userInfo:&__NSDictionary0__struct];
    completeCopy[2](completeCopy, account);
  }
}

- (void)keyStatusFor:(int)for complete:(id)complete
{
  v4 = *&for;
  completeCopy = complete;
  account = [(SOSClient *)self account];
  [account keyStatusFor:v4 complete:completeCopy];
}

- (void)accountStatus:(id)status
{
  statusCopy = status;
  account = [(SOSClient *)self account];
  [account accountStatus:statusCopy];
}

- (void)iCloudIdentityStatus:(id)status
{
  statusCopy = status;
  account = [(SOSClient *)self account];
  [account iCloudIdentityStatus:statusCopy];
}

- (void)ghostBustInfo:(id)info
{
  infoCopy = info;
  account = [(SOSClient *)self account];
  [account ghostBustInfo:infoCopy];
}

- (void)ghostBustPeriodic:(unsigned int)periodic complete:(id)complete
{
  v4 = *&periodic;
  completeCopy = complete;
  account = [(SOSClient *)self account];
  [account ghostBustPeriodic:v4 complete:completeCopy];
}

- (void)ghostBustTriggerTimed:(unsigned int)timed complete:(id)complete
{
  v4 = *&timed;
  completeCopy = complete;
  account = [(SOSClient *)self account];
  [account ghostBustTriggerTimed:v4 complete:completeCopy];
}

- (void)ghostBust:(unsigned int)bust complete:(id)complete
{
  v4 = *&bust;
  completeCopy = complete;
  account = [(SOSClient *)self account];
  [account ghostBust:v4 complete:completeCopy];
}

- (void)setWatchdogParmeters:(id)parmeters complete:(id)complete
{
  completeCopy = complete;
  parmetersCopy = parmeters;
  account = [(SOSClient *)self account];
  [account setWatchdogParmeters:parmetersCopy complete:completeCopy];
}

- (void)getWatchdogParameters:(id)parameters
{
  parametersCopy = parameters;
  account = [(SOSClient *)self account];
  [account getWatchdogParameters:parametersCopy];
}

- (void)rpcTriggerSync:(id)sync complete:(id)complete
{
  syncCopy = sync;
  completeCopy = complete;
  if ([(SOSClient *)self SOSMonitorModeSOSIsActive])
  {
    account = [(SOSClient *)self account];
    [account rpcTriggerSync:syncCopy complete:completeCopy];
  }

  else
  {
    completeCopy[2](completeCopy, 1, 0);
  }
}

- (void)importInitialSyncCredentials:(id)credentials complete:(id)complete
{
  credentialsCopy = credentials;
  completeCopy = complete;
  if ([(SOSClient *)self checkEntitlement:@"com.apple.private.security.initial-sync"])
  {
    account = [(SOSClient *)self account];
    [account importInitialSyncCredentials:credentialsCopy complete:completeCopy];
  }

  else
  {
    account = [NSError errorWithDomain:kSOSErrorDomain code:7 userInfo:0];
    completeCopy[2](completeCopy, 0, account);
  }
}

- (void)initialSyncCredentials:(unsigned int)credentials altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics complete:(id)complete
{
  metricsCopy = metrics;
  v12 = *&credentials;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  completeCopy = complete;
  if ([(SOSClient *)self checkEntitlement:@"com.apple.private.security.initial-sync"])
  {
    account = [(SOSClient *)self account];
    [account initialSyncCredentials:v12 altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:metricsCopy complete:completeCopy];
  }

  else
  {
    account = [NSError errorWithDomain:kSOSErrorDomain code:7 userInfo:0];
    completeCopy[2](completeCopy, &__NSArray0__struct, account);
  }
}

- (void)joinCircleWithBlob:(id)blob altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics version:(int)version complete:(id)complete
{
  v9 = *&version;
  metricsCopy = metrics;
  completeCopy = complete;
  sessionIDCopy = sessionID;
  iDCopy = iD;
  dCopy = d;
  blobCopy = blob;
  account = [(SOSClient *)self account];
  [account joinCircleWithBlob:blobCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:metricsCopy version:v9 complete:completeCopy];
}

- (void)circleJoiningBlob:(id)blob flowID:(id)d deviceSessionID:(id)iD canSendMetrics:(BOOL)metrics applicant:(id)applicant complete:(id)complete
{
  metricsCopy = metrics;
  completeCopy = complete;
  applicantCopy = applicant;
  iDCopy = iD;
  dCopy = d;
  blobCopy = blob;
  account = [(SOSClient *)self account];
  [account circleJoiningBlob:blobCopy flowID:dCopy deviceSessionID:iDCopy canSendMetrics:metricsCopy applicant:applicantCopy complete:completeCopy];
}

- (void)circleHash:(id)hash
{
  hashCopy = hash;
  account = [(SOSClient *)self account];
  [account circleHash:hashCopy];
}

- (void)myPeerInfo:(id)info flowID:(id)d deviceSessionID:(id)iD canSendMetrics:(BOOL)metrics complete:(id)complete
{
  metricsCopy = metrics;
  completeCopy = complete;
  iDCopy = iD;
  dCopy = d;
  infoCopy = info;
  account = [(SOSClient *)self account];
  [account myPeerInfo:infoCopy flowID:dCopy deviceSessionID:iDCopy canSendMetrics:metricsCopy complete:completeCopy];
}

- (void)stashAccountCredential:(id)credential altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID canSendMetrics:(BOOL)metrics complete:(id)complete
{
  metricsCopy = metrics;
  completeCopy = complete;
  sessionIDCopy = sessionID;
  iDCopy = iD;
  dCopy = d;
  credentialCopy = credential;
  account = [(SOSClient *)self account];
  [account stashAccountCredential:credentialCopy altDSID:dCopy flowID:iDCopy deviceSessionID:sessionIDCopy canSendMetrics:metricsCopy complete:completeCopy];
}

- (void)validatedStashedAccountCredential:(id)credential flowID:(id)d deviceSessionID:(id)iD canSendMetrics:(BOOL)metrics complete:(id)complete
{
  metricsCopy = metrics;
  completeCopy = complete;
  iDCopy = iD;
  dCopy = d;
  credentialCopy = credential;
  account = [(SOSClient *)self account];
  [account validatedStashedAccountCredential:credentialCopy flowID:dCopy deviceSessionID:iDCopy canSendMetrics:metricsCopy complete:completeCopy];
}

- (void)assertStashedAccountCredential:(id)credential
{
  credentialCopy = credential;
  account = [(SOSClient *)self account];
  [account assertStashedAccountCredential:credentialCopy];
}

- (void)stashedCredentialPublicKey:(id)key
{
  keyCopy = key;
  account = [(SOSClient *)self account];
  [account stashedCredentialPublicKey:keyCopy];
}

- (void)rateLimitingPerformanceCounters:(id)counters
{
  countersCopy = counters;
  account = [(SOSClient *)self account];
  [account rateLimitingPerformanceCounters:countersCopy];
}

- (void)kvsPerformanceCounters:(id)counters
{
  countersCopy = counters;
  account = [(SOSClient *)self account];
  [account kvsPerformanceCounters:countersCopy];
}

- (void)userPublicKey:(id)key
{
  keyCopy = key;
  account = [(SOSClient *)self account];
  [account userPublicKey:keyCopy];
}

- (id)initSOSClientWithAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = SOSClient;
  v6 = [(SOSClient *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

@end