@interface tm5cd9ac578b7f2f459a93162f6787f535
- (void)updateAllThermalLoad:(BOOL)load;
@end

@implementation tm5cd9ac578b7f2f459a93162f6787f535

- (void)updateAllThermalLoad:(BOOL)load
{
  v4 = qword_1000AB824;
  v5 = qword_1000AB834;
  v6 = dword_1000AB83C;
  v13.receiver = self;
  v13.super_class = tm5cd9ac578b7f2f459a93162f6787f535;
  [(tmd86fe6187ee41b8649354ac4ec3a992b *)&v13 updateAllThermalLoad:load];
  sub_10000533C(33, (v4 * 0.325 + 23.0 + v5 * 0.311 + v6 * 0.356));
  v7 = dword_1000AB8A8;
  v8 = [(CommonProduct *)self findComponent:21];
  v9 = v7 / 100.0;
  *&v10 = v9;
  [v8 calculateControlEffort:v10];
  v11 = [(CommonProduct *)self findComponent:22];
  *&v12 = v9;
  [v11 calculateControlEffort:v12];
}

@end