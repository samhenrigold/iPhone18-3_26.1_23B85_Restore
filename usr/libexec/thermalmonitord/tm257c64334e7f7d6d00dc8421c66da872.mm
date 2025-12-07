@interface tm257c64334e7f7d6d00dc8421c66da872
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm257c64334e7f7d6d00dc8421c66da872

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB824;
  v5 = dword_1000AB844;
  v12.receiver = self;
  v12.super_class = tm257c64334e7f7d6d00dc8421c66da872;
  [(tmab4b5a2f057efd0a64835b9c4226bf18 *)&v12 updateAllThermalLoad:load];
  sub_10000533C(63, (v4 * 0.105 + -164.3 + v5 * 0.904));
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
  [(CommonProduct *)self dieTempMaxMax];
  [qword_1000ABCB0 getCurrentPackagePower];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  AnalyticsSendEventLazy();
}

@end