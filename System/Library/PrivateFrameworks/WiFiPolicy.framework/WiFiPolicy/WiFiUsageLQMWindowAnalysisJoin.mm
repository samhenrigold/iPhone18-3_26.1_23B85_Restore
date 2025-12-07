@interface WiFiUsageLQMWindowAnalysisJoin
- (WiFiUsageLQMWindowAnalysisJoin)initWithRollingWindow:(id)window andReasonString:(id)string andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue;
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisJoin

- (WiFiUsageLQMWindowAnalysisJoin)initWithRollingWindow:(id)window andReasonString:(id)string andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue
{
  v9 = *&context.var0;
  v14.receiver = self;
  v14.super_class = WiFiUsageLQMWindowAnalysisJoin;
  stringCopy = string;
  v12 = [(WiFiUsageLQMWindowAnalysis *)&v14 initWithRollingWindow:window andReason:@"Join" andContext:*&v9 & 0xFFFFFFLL andTimestamp:timestamp onQueue:queue];
  [(WiFiUsageLQMWindowAnalysisJoin *)v12 setJoinReason:stringCopy, v14.receiver, v14.super_class];

  return v12;
}

- (id)addDimensionsTo:(id)to
{
  toCopy = to;
  v7.receiver = self;
  v7.super_class = WiFiUsageLQMWindowAnalysisJoin;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v7 addDimensionsTo:toCopy];
  [toCopy setObject:self->_joinReason forKeyedSubscript:@"join_reason"];

  return toCopy;
}

@end