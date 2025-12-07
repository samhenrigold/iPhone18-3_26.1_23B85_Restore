@interface WiFiUsageLQMWindowAnalysisNetworkQuality
- (WiFiUsageLQMWindowAnalysisNetworkQuality)initWithRollingWindow:(id)window AndDictionary:(id)dictionary andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue;
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisNetworkQuality

- (WiFiUsageLQMWindowAnalysisNetworkQuality)initWithRollingWindow:(id)window AndDictionary:(id)dictionary andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue
{
  v9 = *&context.var0;
  v14.receiver = self;
  v14.super_class = WiFiUsageLQMWindowAnalysisNetworkQuality;
  dictionaryCopy = dictionary;
  v12 = [(WiFiUsageLQMWindowAnalysis *)&v14 initWithRollingWindow:window andReason:@"NetworkQuality" andContext:*&v9 & 0xFFFFFFLL andTimestamp:timestamp onQueue:queue];
  [(WiFiUsageLQMWindowAnalysisNetworkQuality *)v12 setNetworkQualityResponsivenessScore:0x7FFFFFFFFFFFFFFFLL, v14.receiver, v14.super_class];
  [(WiFiUsageLQMWindowAnalysisNetworkQuality *)v12 setNetworkQualityEventFields:dictionaryCopy];

  return v12;
}

- (id)addDimensionsTo:(id)to
{
  toCopy = to;
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMWindowAnalysisNetworkQuality;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v7 addDimensionsTo:toCopy];
  [toCopy addEntriesFromDictionary:self->_networkQualityEventFields];

  return toCopy;
}

@end