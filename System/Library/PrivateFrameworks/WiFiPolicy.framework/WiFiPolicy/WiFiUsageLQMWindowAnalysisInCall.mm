@interface WiFiUsageLQMWindowAnalysisInCall
- (WiFiUsageLQMWindowAnalysisInCall)initWithRollingWindow:(id)window andCallStatus:(id)status andCallDuration:(double)duration andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue;
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisInCall

- (WiFiUsageLQMWindowAnalysisInCall)initWithRollingWindow:(id)window andCallStatus:(id)status andCallDuration:(double)duration andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue
{
  v10 = *&context.var0;
  v16.receiver = self;
  v16.super_class = WiFiUsageLQMWindowAnalysisInCall;
  statusCopy = status;
  v14 = [(WiFiUsageLQMWindowAnalysis *)&v16 initWithRollingWindow:window andReason:@"InCall" andContext:*&v10 & 0xFFFFFFLL andTimestamp:timestamp onQueue:queue];
  [(WiFiUsageLQMWindowAnalysisInCall *)v14 setStatus:statusCopy, v16.receiver, v16.super_class];

  [(WiFiUsageLQMWindowAnalysisInCall *)v14 setDuration:duration];
  return v14;
}

- (id)addDimensionsTo:(id)to
{
  toCopy = to;
  v8.receiver = self;
  v8.super_class = WiFiUsageLQMWindowAnalysisInCall;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v8 addDimensionsTo:toCopy];
  [toCopy setObject:self->_status forKeyedSubscript:@"call_status"];
  if (![(NSString *)self->_status isEqualToString:@"Call Start"])
  {
    v6 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo12h:1 As:self->_duration];
    [toCopy setObject:v6 forKeyedSubscript:@"call_duration"];
  }

  return toCopy;
}

@end