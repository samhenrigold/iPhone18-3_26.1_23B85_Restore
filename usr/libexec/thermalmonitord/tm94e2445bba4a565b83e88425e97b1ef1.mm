@interface tm94e2445bba4a565b83e88425e97b1ef1
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm94e2445bba4a565b83e88425e97b1ef1

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB834;
  v5 = dword_1000AB83C;
  v12.receiver = self;
  v12.super_class = tm94e2445bba4a565b83e88425e97b1ef1;
  [(tm1999e121298b648399d013196e64b976 *)&v12 updateAllThermalLoad:load];
  sub_10000533C(33, (v4 * 0.66 + 11.0 + v5 * 0.36));
  v6 = dword_1000AB8A8;
  v7 = [(CommonProduct *)self findComponent:22];
  v8 = v6 / 100.0;
  *&v9 = v8;
  [v7 calculateControlEffort:v9];
  v10 = [(CommonProduct *)self findComponent:23];
  *&v11 = v8;
  [v10 calculateControlEffort:v11];
}

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  AnalyticsSendEventLazy();
}

@end