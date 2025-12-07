@interface tmb6716640bd4d840b4ec454b38cb27d3c
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmb6716640bd4d840b4ec454b38cb27d3c

- (void)updateAllThermalLoad:(BOOL)load
{
  v5 = qword_1000AB834;
  v4 = HIDWORD(qword_1000AB834);
  v12.receiver = self;
  v12.super_class = tmb6716640bd4d840b4ec454b38cb27d3c;
  [(tmb8686d62322e302fccf2995e45c72b1d *)&v12 updateAllThermalLoad:load];
  sub_10000533C(59, (v5 * 0.73 + -22.19 + v4 * 0.27));
  v6 = SDWORD2(xmmword_1000AB908);
  v7 = [(CommonProduct *)self findComponent:23];
  v8 = v6 / 100.0;
  *&v9 = v8;
  [v7 calculateControlEffort:v9];
  v10 = [(CommonProduct *)self findComponent:24];
  *&v11 = v8;
  [v10 calculateControlEffort:v11];
}

- (void)updateCoreAnalyticsInfo
{
  sub_100006FB4();
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  [-[CommonProduct findComponent:](self findComponent:{2), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{3), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end