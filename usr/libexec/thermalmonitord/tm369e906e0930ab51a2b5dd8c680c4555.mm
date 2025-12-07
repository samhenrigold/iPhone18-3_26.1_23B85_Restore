@interface tm369e906e0930ab51a2b5dd8c680c4555
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm369e906e0930ab51a2b5dd8c680c4555

- (void)updateAllThermalLoad:(BOOL)load
{
  loadCopy = load;
  gasGaugeBatteryTemperature = [(tmb76592841479b191dd96577dabc78635 *)self gasGaugeBatteryTemperature];
  v6 = qword_1000AB72C;
  v7 = dword_1000AB738;
  v14.receiver = self;
  v14.super_class = tm369e906e0930ab51a2b5dd8c680c4555;
  [(tmb76592841479b191dd96577dabc78635 *)&v14 updateAllThermalLoad:loadCopy];
  sub_10000533C(51, (gasGaugeBatteryTemperature * 0.16 + -118.0 + v6 * 0.71 + v7 * 0.14));
  v8 = SHIDWORD(qword_1000AB8EC);
  v9 = [(CommonProduct *)self findComponent:22];
  v10 = v8 / 100.0;
  *&v11 = v10;
  [v9 calculateControlEffort:v11];
  v12 = [(CommonProduct *)self findComponent:23];
  *&v13 = v10;
  [v12 calculateControlEffort:v13];
}

- (void)updateCoreAnalyticsInfo
{
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  sub_100006FB4();
  [(CommonProduct *)self getChargerState];
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self thermalPressureLevel];
  [-[CommonProduct findComponent:](self findComponent:{13), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{12), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{0), "releaseMaxLI"}];
  [qword_1000ABCB0 getCurrentPackagePower];
  AnalyticsSendEventLazy();
}

@end