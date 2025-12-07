@interface tma603bec8e9fff217df1da4b628b0272a
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tma603bec8e9fff217df1da4b628b0272a

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB824;
  v5 = qword_1000AB834;
  v6 = dword_1000AB84C;
  v13.receiver = self;
  v13.super_class = tma603bec8e9fff217df1da4b628b0272a;
  [(tm91a569e8580a631617d0559c35066014 *)&v13 updateAllThermalLoad:load];
  sub_10000533C(63, (v4 * 0.16 + -68.02 + v5 * 0.21 + v6 * 0.63));
  v7 = dword_1000AB920;
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
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end