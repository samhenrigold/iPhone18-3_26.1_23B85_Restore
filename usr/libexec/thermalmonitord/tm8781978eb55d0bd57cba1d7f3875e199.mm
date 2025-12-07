@interface tm8781978eb55d0bd57cba1d7f3875e199
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm8781978eb55d0bd57cba1d7f3875e199

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB834;
  v5 = dword_1000AB844;
  v12.receiver = self;
  v12.super_class = tm8781978eb55d0bd57cba1d7f3875e199;
  [(tmad80096ce0126d046ebbef0e89cc46f8 *)&v12 updateAllThermalLoad:load];
  sub_10000533C(59, (v4 * 0.91 + -34.51 + v5 * 0.09));
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