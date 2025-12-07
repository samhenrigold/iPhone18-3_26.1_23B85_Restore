@interface NRAnalyticsCmpnLinkQuickRelay
- (void)reset;
- (void)submit;
@end

@implementation NRAnalyticsCmpnLinkQuickRelay

- (void)reset
{
  if (self)
  {
    self->_idsSessionInvitationCollisionCount = 0;
    self->_idsSessionSendInvitationStart = 0;
    self->_idsSessionSendInvitationEnd = 0;
    self->_idsSessionReceiveInvitationStart = 0;
    self->_idsSessionReceiveInvitationEnd = 0;
    self->_idsSessionStart = 0;
    self->_idsSessionEnd = 0;
    self->super._ikeClassCAttempts = 0;
    self->super._ikeClassDAttempts = 0;
    self->super._ikeClassDSetupStart = 0;
    self->super._ikeClassDSetupEnd = 0;
    self->super._ikeClassCSetupStart = 0;
    self->super._ikeClassCSetupEnd = 0;
    self->_ikeClassDKeepAliveStart = 0;
    self->_ikeClassCKeepAliveStart = 0;
    self->_ikeClassDKeepAliveEnd = 0;
    self->_ikeClassCKeepAliveEnd = 0;
  }
}

- (void)submit
{
  sub_1001554F0(self);
  if (self)
  {
    NRDiffMachTimeInSeconds();
    v4 = v3;
    NRDiffMachTimeInSeconds();
    v6 = v5;
    NRDiffMachTimeInSeconds();
    v8 = v7;
    NRDiffMachTimeInSeconds();
    v10 = v9;
    NRDiffMachTimeInSeconds();
    v12 = v11;
    if (self->_idsSessionInvitationFailed)
    {
      v13 = [NSNumber numberWithDouble:round(v4 * 1000.0) * 0.001];
      [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v13 forKeyedSubscript:@"idsSessionInvitationTimeToFailureInSec"];

      [(NSMutableDictionary *)self->super.super._eventDictionary setObject:&off_10020A1A0 forKeyedSubscript:@"idsSessionSendInvitationDurationInSec"];
      goto LABEL_8;
    }

    eventDictionary = self->super.super._eventDictionary;
  }

  else
  {
    NRDiffMachTimeInSeconds();
    v4 = v26;
    NRDiffMachTimeInSeconds();
    v6 = v27;
    NRDiffMachTimeInSeconds();
    v8 = v28;
    NRDiffMachTimeInSeconds();
    v10 = v29;
    NRDiffMachTimeInSeconds();
    v12 = v30;
    eventDictionary = 0;
  }

  [(NSMutableDictionary *)eventDictionary setObject:&off_10020A1A0 forKeyedSubscript:@"idsSessionInvitationTimeToFailureInSec"];
  v15 = [NSNumber numberWithDouble:round(v4 * 1000.0) * 0.001];
  if (self)
  {
    v16 = self->super.super._eventDictionary;
  }

  else
  {
    v16 = 0;
  }

  [(NSMutableDictionary *)v16 setObject:v15 forKeyedSubscript:@"idsSessionSendInvitationDurationInSec"];

LABEL_8:
  v17 = [NSNumber numberWithDouble:round(v6 * 1000.0) * 0.001];
  if (self)
  {
    v18 = self->super.super._eventDictionary;
  }

  else
  {
    v18 = 0;
  }

  [(NSMutableDictionary *)v18 setObject:v17 forKeyedSubscript:@"idsSessionReceiveInvitationDurationInSec"];

  v19 = [NSNumber numberWithDouble:round(v8 * 1000.0) * 0.001];
  if (self)
  {
    v20 = self->super.super._eventDictionary;
  }

  else
  {
    v20 = 0;
  }

  [(NSMutableDictionary *)v20 setObject:v19 forKeyedSubscript:@"idsSessionDurationInSec"];

  v21 = [NSNumber numberWithDouble:round(v10 * 1000.0) * 0.001];
  if (self)
  {
    v22 = self->super.super._eventDictionary;
  }

  else
  {
    v22 = 0;
  }

  [(NSMutableDictionary *)v22 setObject:v21 forKeyedSubscript:@"ikeClassDKeepAliveDurationInSec"];

  v23 = [NSNumber numberWithDouble:round(v12 * 1000.0) * 0.001];
  if (self)
  {
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v23 forKeyedSubscript:@"ikeClassCKeepAliveDurationInSec"];

    if (!self->_idsSessionEndedReason)
    {
      goto LABEL_18;
    }

    v23 = [NSNumber numberWithUnsignedInt:?];
    v24 = self->super.super._eventDictionary;
    v25 = @"idsSessionEndedReason";
  }

  else
  {
    v25 = @"ikeClassCKeepAliveDurationInSec";
    v24 = 0;
  }

  [(NSMutableDictionary *)v24 setObject:v23 forKeyedSubscript:v25];

LABEL_18:

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.cmpnLinkQuickRelay");
}

@end