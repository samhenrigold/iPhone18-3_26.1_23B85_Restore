@interface NRAnalyticsCmpnLinkBluetooth
- (void)submit;
@end

@implementation NRAnalyticsCmpnLinkBluetooth

- (void)submit
{
  sub_1001554F0(self);
  NRDiffMachTimeInSeconds();
  v4 = [NSNumber numberWithDouble:round(v3 * 1000.0) * 0.001];
  if (!self)
  {
    v14 = @"ikePairingSessionSetupTimeInSec";
    eventDictionary = 0;
    goto LABEL_20;
  }

  [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v4 forKeyedSubscript:@"ikePairingSessionSetupTimeInSec"];

  if (self->_ikePairingSessionSetupAttempts)
  {
    v5 = [NSNumber numberWithUnsignedLongLong:?];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v5 forKeyedSubscript:@"ikePairingSessionSetupAttempts"];
  }

  if (self->_urgentLoopChecksumError)
  {
    v6 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v6 forKeyedSubscript:@"urgentLoopChecksumError"];
  }

  if (self->_loopChecksumError)
  {
    v7 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v7 forKeyedSubscript:@"loopChecksumError"];
  }

  if (self->_bufferChecksumError)
  {
    v8 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v8 forKeyedSubscript:@"bufferChecksumError"];
  }

  if (self->_preludeChecksumError)
  {
    v9 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v9 forKeyedSubscript:@"preludeChecksumError"];
  }

  if (self->_urgentPreludeChecksumError)
  {
    v10 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v10 forKeyedSubscript:@"urgentPreludeChecksumError"];
  }

  if (self->_preludeTimeoutError)
  {
    v11 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v11 forKeyedSubscript:@"preludeTimeoutError"];
  }

  if (self->_urgentPreludeTimeoutError)
  {
    v12 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)self->super.super._eventDictionary setObject:v12 forKeyedSubscript:@"urgentPreludeTimeoutError"];
  }

  if (self->_urgentPipeDisconnections)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:?];
    eventDictionary = self->super.super._eventDictionary;
    v14 = @"urgentPipeDisconnections";
LABEL_20:
    [(NSMutableDictionary *)eventDictionary setObject:v4 forKeyedSubscript:v14];
  }

  sub_1001557BC(self, @"com.apple.networkrelay.analytics.cmpnLinkBluetooth");
}

@end