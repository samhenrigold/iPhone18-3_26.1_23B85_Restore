@interface tm99cbb6a8c39b59c1e8203b1c2ab4ecf8
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm99cbb6a8c39b59c1e8203b1c2ab4ecf8

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = HIDWORD(qword_1000AB82C);
  v5 = HIDWORD(qword_1000AB834);
  v6 = dword_1000AB840;
  v7 = dword_1000AB848;
  v14.receiver = self;
  v14.super_class = tm99cbb6a8c39b59c1e8203b1c2ab4ecf8;
  [(tm57b622634d75d34f6315daf54954a970 *)&v14 updateAllThermalLoad:load];
  sub_10000533C(63, (v4 * 0.23 + -0.06 + v5 * 0.25 + v6 * 0.01 + v7 * 0.5));
  v8 = dword_1000AB920;
  v9 = [(CommonProduct *)self findComponent:23];
  v10 = v8 / 100.0;
  *&v11 = v10;
  [v9 calculateControlEffort:v11];
  v12 = [(CommonProduct *)self findComponent:24];
  *&v13 = v10;
  [v12 calculateControlEffort:v13];
}

- (void)updateCoreAnalyticsInfo
{
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [(CommonProduct *)self dieTempMaxAverage];
  [(CommonProduct *)self dieTempMaxMax];
  [qword_1000ABCB0 getCurrentPackagePower];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  AnalyticsSendEventLazy();
}

@end