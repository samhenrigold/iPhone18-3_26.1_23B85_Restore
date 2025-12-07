@interface WiFiUsageLQMWindowAnalysisLinkDown
- (WiFiUsageLQMWindowAnalysisLinkDown)initWithRollingWindow:(id)window WithIsInvoluntary:(BOOL)involuntary AndLinkChangeReason:(int64_t)reason AndLinkChangeSubreason:(int64_t)subreason AndDuration:(unint64_t)duration andContext:(context)context AndTimestamp:(id)timestamp onQueue:(id)self0;
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisLinkDown

- (WiFiUsageLQMWindowAnalysisLinkDown)initWithRollingWindow:(id)window WithIsInvoluntary:(BOOL)involuntary AndLinkChangeReason:(int64_t)reason AndLinkChangeSubreason:(int64_t)subreason AndDuration:(unint64_t)duration andContext:(context)context AndTimestamp:(id)timestamp onQueue:(id)self0
{
  involuntaryCopy = involuntary;
  v17.receiver = self;
  v17.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
  v14 = [(WiFiUsageLQMWindowAnalysis *)&v17 initWithRollingWindow:window andReason:@"LinkDown" andContext:*&context.var0 & 0xFFFFFFLL andTimestamp:timestamp onQueue:queue];
  [(WiFiUsageLQMWindowAnalysisLinkDown *)v14 setIsInvoluntary:involuntaryCopy];
  v15 = [WiFiUsageSession disconnectReasonString:reason];
  [(WiFiUsageLQMWindowAnalysisLinkDown *)v14 setLinkDownReason:v15];

  [(WiFiUsageLQMWindowAnalysisLinkDown *)v14 setLinkDownSubreason:subreason];
  [(WiFiUsageLQMWindowAnalysisLinkDown *)v14 setLinkUpDuration:duration];
  return v14;
}

- (id)addDimensionsTo:(id)to
{
  v46 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v44.receiver = self;
  v44.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v44 addDimensionsTo:toCopy];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", self->_isInvoluntary];
  [toCopy setObject:v6 forKeyedSubscript:@"linkdownIsInVoluntary"];

  [toCopy setObject:self->_linkDownReason forKeyedSubscript:@"linkdownReason"];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", self->_linkDownSubreason];
  [toCopy setObject:v7 forKeyedSubscript:@"linkdownSubReason"];

  linkUpDuration = self->_linkUpDuration;
  if (linkUpDuration == 0x7FFFFFFFFFFFFFFFLL)
  {
    [toCopy setObject:0 forKeyedSubscript:@"linkupDuration"];
  }

  else
  {
    v9 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo12h:1 As:linkUpDuration];
    [toCopy setObject:v9 forKeyedSubscript:@"linkupDuration"];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v39.receiver = self;
  v39.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
  subsequentTriggers = [(WiFiUsageLQMWindowAnalysis *)&v39 subsequentTriggers];
  v11 = MEMORY[0x277CBEA60];
  v12 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"timestamp" ascending:1];
  v13 = [v11 arrayWithObject:v12];
  v14 = [subsequentTriggers sortedArrayUsingDescriptors:v13];

  v15 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v41;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v41 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v40 + 1) + 8 * i);
        reason = [v19 reason];

        if (reason == @"Join")
        {
          v38.receiver = self;
          v38.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
          timestamp = [(WiFiUsageLQMWindowAnalysis *)&v38 timestamp];
          timestamp2 = [v19 timestamp];
          [timestamp timeIntervalSinceDate:timestamp2];
          v23 = [WiFiUsageLQMTransformations getBinTimeIntervalUpTo60s:1 As:?];
          [toCopy setObject:v23 forKeyedSubscript:@"timeToJoin"];

          goto LABEL_14;
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v37.receiver = self;
  v37.super_class = WiFiUsageLQMWindowAnalysisLinkDown;
  windowBeforeTrigger = [(WiFiUsageLQMWindowAnalysis *)&v37 windowBeforeTrigger];
  samples = [windowBeforeTrigger samples];
  lastObject = [samples lastObject];

  v27 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverRoamRecommended" ofObject:lastObject];
  [toCopy setObject:v27 forKeyedSubscript:@"roamingRecommended"];

  v28 = [WiFiUsageLQMTransformations numberForKeyPath:@"driverTDrecommended" ofObject:lastObject];
  [toCopy setObject:v28 forKeyedSubscript:@"tdRecommended"];

  v29 = [WiFiUsageLQMTransformations numberForKeyPath:@"chanQualScore" ofObject:lastObject];
  [toCopy setObject:v29 forKeyedSubscript:@"last_chanQualScore_before"];

  v30 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyScore" ofObject:lastObject];
  [toCopy setObject:v30 forKeyedSubscript:@"last_txLatencyScore_before"];

  v31 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLatencyScore" ofObject:lastObject];
  [toCopy setObject:v31 forKeyedSubscript:@"last_rxLatencyScore_before"];

  v32 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLossScore" ofObject:lastObject];
  [toCopy setObject:v32 forKeyedSubscript:@"last_txLossScore_before"];

  v33 = [WiFiUsageLQMTransformations numberForKeyPath:@"rxLossScore" ofObject:lastObject];
  [toCopy setObject:v33 forKeyedSubscript:@"last_rxLossScore_before"];

  v34 = [WiFiUsageLQMTransformations numberForKeyPath:@"txLatencyP95" ofObject:lastObject];
  v35 = +[WiFiUsageLQMSample binLabelfromFieldName:value:](WiFiUsageLQMUserSample, "binLabelfromFieldName:value:", @"txLatencyP95", [v34 integerValue]);
  [toCopy setObject:v35 forKeyedSubscript:@"last_txLatencyP95_before"];

  return toCopy;
}

@end