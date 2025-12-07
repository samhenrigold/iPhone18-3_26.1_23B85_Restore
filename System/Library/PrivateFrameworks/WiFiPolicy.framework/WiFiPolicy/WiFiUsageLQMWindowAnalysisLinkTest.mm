@interface WiFiUsageLQMWindowAnalysisLinkTest
- (WiFiUsageLQMWindowAnalysisLinkTest)initWithRollingWindow:(id)window andReason:(id)reason withWFMeasureResults:(id)results andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue;
- (id)addDimensionsTo:(id)to;
@end

@implementation WiFiUsageLQMWindowAnalysisLinkTest

- (WiFiUsageLQMWindowAnalysisLinkTest)initWithRollingWindow:(id)window andReason:(id)reason withWFMeasureResults:(id)results andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue
{
  v10 = *&context.var0;
  v17.receiver = self;
  v17.super_class = WiFiUsageLQMWindowAnalysisLinkTest;
  resultsCopy = results;
  reasonCopy = reason;
  v15 = [(WiFiUsageLQMWindowAnalysis *)&v17 initWithRollingWindow:window andReason:@"LinkTest" andContext:*&v10 & 0xFFFFFFLL andTimestamp:timestamp onQueue:queue];
  [(WiFiUsageLQMWindowAnalysisLinkTest *)v15 setLinkTestResults:resultsCopy, v17.receiver, v17.super_class];

  [(WiFiUsageLQMWindowAnalysisLinkTest *)v15 setLinkTestReason:reasonCopy];
  return v15;
}

- (id)addDimensionsTo:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v26.receiver = self;
  v26.super_class = WiFiUsageLQMWindowAnalysisLinkTest;
  v5 = [(WiFiUsageLQMWindowAnalysis *)&v26 addDimensionsTo:toCopy];
  v6 = toCopy;
  [toCopy setObject:self->_linkTestReason forKeyedSubscript:@"linktest_reason"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  selfCopy = self;
  obj = [(WFMeasureResult *)self->_linkTestResults allPrimitiveProperties];
  v8 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [(WFMeasureResult *)self->_linkTestResults binnedProperty:v12];
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"linktest_%@", v12];
        [v6 setObject:v13 forKeyedSubscript:v14];
      }

      v9 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  typeAsString = [(WFMeasureResult *)self->_linkTestResults typeAsString];
  v16 = v6;
  [v6 setObject:typeAsString forKeyedSubscript:@"linktest_type"];

  statusForLocal = [(WFMeasureResult *)selfCopy->_linkTestResults statusForLocal];
  [v16 setValue:statusForLocal forKey:@"linktest_statusForLocal"];

  statusForInternet = [(WFMeasureResult *)selfCopy->_linkTestResults statusForInternet];
  [v16 setValue:statusForInternet forKey:@"linktest_statusForInternet"];

  statusForDNS = [(WFMeasureResult *)selfCopy->_linkTestResults statusForDNS];
  [v16 setValue:statusForDNS forKey:@"linktest_statusForDNS"];

  return v16;
}

@end