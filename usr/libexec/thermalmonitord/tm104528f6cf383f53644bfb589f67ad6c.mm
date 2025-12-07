@interface tm104528f6cf383f53644bfb589f67ad6c
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm104528f6cf383f53644bfb589f67ad6c

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB834;
  v5 = dword_1000AB83C;
  v12.receiver = self;
  v12.super_class = tm104528f6cf383f53644bfb589f67ad6c;
  [(tmbcef8363c84453940399f01f368bea58 *)&v12 updateAllThermalLoad:load];
  sub_10000533C(53, (v4 * 0.66 + -89.0 + v5 * 0.36));
  v6 = SHIDWORD(qword_1000AB8F4);
  v7 = [(CommonProduct *)self findComponent:21];
  v8 = v6 / 100.0;
  *&v9 = v8;
  [v7 calculateControlEffort:v9];
  v10 = [(CommonProduct *)self findComponent:22];
  *&v11 = v8;
  [v10 calculateControlEffort:v11];
}

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  [-[CommonProduct findComponent:](self findComponent:{13), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end