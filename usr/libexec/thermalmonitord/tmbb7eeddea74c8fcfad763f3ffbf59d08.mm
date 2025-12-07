@interface tmbb7eeddea74c8fcfad763f3ffbf59d08
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tmbb7eeddea74c8fcfad763f3ffbf59d08

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB824;
  v5 = HIDWORD(qword_1000AB834);
  v12.receiver = self;
  v12.super_class = tmbb7eeddea74c8fcfad763f3ffbf59d08;
  [(tm2c2215485370d730a0de95e9234264e9 *)&v12 updateAllThermalLoad:load];
  sub_10000533C(43, (v4 * 0.45 + 55.01 + v5 * 0.51));
  v6 = dword_1000AB8D0;
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
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [-[CommonProduct findComponent:](self findComponent:{2), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{3), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{7), "releaseMaxLI"}];
  AnalyticsSendEventLazy();
}

@end