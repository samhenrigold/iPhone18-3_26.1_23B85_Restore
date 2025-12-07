@interface tm1abb817bd9d9587b77a661846b96f9e4
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm1abb817bd9d9587b77a661846b96f9e4

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = HIDWORD(qword_1000AB824);
  v5 = HIDWORD(qword_1000AB834);
  v12.receiver = self;
  v12.super_class = tm1abb817bd9d9587b77a661846b96f9e4;
  [(tm408f6d8c14caf38138befe9f3b97ef02 *)&v12 updateAllThermalLoad:load];
  sub_10000533C(63, (v4 * 0.17 + -31.03 + v5 * 0.83));
  v6 = dword_1000AB920;
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
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self getChargerState];
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end