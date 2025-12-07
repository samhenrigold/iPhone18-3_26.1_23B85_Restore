@interface WALQM
+ (id)waLQMonChannel:(unint64_t)channel band:(signed __int16)band rssi:(int64_t)rssi noise:(int64_t)noise snr:(int64_t)snr totalCCA:(unint64_t)a selfCca:(unint64_t)cca otherCca:(unint64_t)self0 interference:(unint64_t)self1 beaconPer:(unint64_t)self2 rxFrames:(unint64_t)self3 rxRetryFrames:(unint64_t)self4 txFrames:(unint64_t)self5 txRetries:(unint64_t)self6 txFail:(unint64_t)self7 txRate:(unint64_t)self8 rxRate:(unint64_t)self9 isAnyAppInFG:(BOOL)g isFTactive:(BOOL)tactive isTimeSensitiveAppRunning:(BOOL)running duration:(unint64_t)duration;
- (id)description;
@end

@implementation WALQM

+ (id)waLQMonChannel:(unint64_t)channel band:(signed __int16)band rssi:(int64_t)rssi noise:(int64_t)noise snr:(int64_t)snr totalCCA:(unint64_t)a selfCca:(unint64_t)cca otherCca:(unint64_t)self0 interference:(unint64_t)self1 beaconPer:(unint64_t)self2 rxFrames:(unint64_t)self3 rxRetryFrames:(unint64_t)self4 txFrames:(unint64_t)self5 txRetries:(unint64_t)self6 txFail:(unint64_t)self7 txRate:(unint64_t)self8 rxRate:(unint64_t)self9 isAnyAppInFG:(BOOL)g isFTactive:(BOOL)tactive isTimeSensitiveAppRunning:(BOOL)running duration:(unint64_t)duration
{
  bandCopy = band;
  v29 = objc_opt_new();
  v30 = v29;
  if (v29)
  {
    [v29 setChannel:channel];
    [v30 setBand:bandCopy];
    [v30 setRssi:rssi];
    [v30 setNoise:noise];
    [v30 setSnr:snr];
    [v30 setCcaTotal:a];
    [v30 setCcaSelf:cca];
    [v30 setCcaOther:otherCca];
    [v30 setCcaInterference:interference];
    [v30 setBeaconPER:per];
    [v30 setRxFrames:frames];
    [v30 setRxRetryFrames:retryFrames];
    [v30 setTxFrames:txFrames];
    [v30 setTxReTrans:retries];
    [v30 setTxFail:fail];
    [v30 setTxRate:rate];
    [v30 setRxRate:rxRate];
    [v30 setDuration:duration];
    [v30 setIsAnyAppInFg:g];
    [v30 setIsFTactive:tactive];
    [v30 setIsTimeSensitiveAppRunning:running];
  }

  return v30;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [WADeviceAnalyticsClient bandAsString:[(WALQM *)self band]];
  v5 = [v3 stringWithFormat:@"%@(%u) %lus", v4, -[WALQM band](self, "band"), -[WALQM duration](self, "duration")];

  return v5;
}

@end