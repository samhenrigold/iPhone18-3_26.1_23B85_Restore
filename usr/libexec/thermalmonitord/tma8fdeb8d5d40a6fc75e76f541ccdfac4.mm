@interface tma8fdeb8d5d40a6fc75e76f541ccdfac4
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tma8fdeb8d5d40a6fc75e76f541ccdfac4

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB82C;
  v5 = dword_1000AB83C;
  v6 = dword_1000AB844;
  v13.receiver = self;
  v13.super_class = tma8fdeb8d5d40a6fc75e76f541ccdfac4;
  [(tm62a6a44d269463582cca62859fbfb389 *)&v13 updateAllThermalLoad:load];
  sub_10000533C(55, (v4 * 0.02 + -26.0 + v5 * 0.83 + v6 * 0.17));
  v7 = dword_1000AB900;
  v8 = [(CommonProduct *)self findComponent:23];
  v9 = v7 / 100.0;
  *&v10 = v9;
  [v8 calculateControlEffort:v10];
  v11 = [(CommonProduct *)self findComponent:24];
  *&v12 = v9;
  [v11 calculateControlEffort:v12];
}

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self getChargerState];
  [-[CommonProduct findComponent:](self findComponent:{13), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end