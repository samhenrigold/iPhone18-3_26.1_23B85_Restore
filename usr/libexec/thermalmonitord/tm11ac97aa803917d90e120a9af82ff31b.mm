@interface tm11ac97aa803917d90e120a9af82ff31b
- (void)updateAllThermalLoad:(BOOL)load;
- (void)updateCoreAnalyticsInfo;
@end

@implementation tm11ac97aa803917d90e120a9af82ff31b

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB82C;
  v5 = dword_1000AB850;
  v12.receiver = self;
  v12.super_class = tm11ac97aa803917d90e120a9af82ff31b;
  [(tm0624042662bdd34b4bbbfc0f7da95deb *)&v12 updateAllThermalLoad:load];
  sub_10000533C(55, (v4 * 0.37 + 107.62 + v5 * 0.58));
  v6 = dword_1000AB900;
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
  [(CommonProduct *)self dieTempMaxMax];
  [(CommonProduct *)self getChargerState];
  sub_100006FB4();
  [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager isContextTriggered:"isContextTriggered:", 0];
  [-[CommonProduct findComponent:](self findComponent:{2), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{3), "releaseMaxLI"}];
  [-[CommonProduct findComponent:](self findComponent:{7), "releaseMaxLI"}];
  [(CommonProduct *)self isBackLightOn];
  AnalyticsSendEventLazy();
}

@end