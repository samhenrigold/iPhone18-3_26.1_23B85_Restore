@interface tme50c7cce5aa77185119a01eb2c6550e4
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tme50c7cce5aa77185119a01eb2c6550e4

- (void)updateAllThermalLoad:(BOOL)load
{
  v5 = HIDWORD(qword_1000AB834);
  v4 = dword_1000AB83C;
  v12.receiver = self;
  v12.super_class = tme50c7cce5aa77185119a01eb2c6550e4;
  [(tmf02fbce43bb83f6eb51bd31374aa8279 *)&v12 updateAllThermalLoad:load];
  sub_10000533C(53, (v4 * 0.66 + 11.0 + v5 * 0.36));
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