@interface DMCAppsClientLite
- (DMCAppsClientLite)init;
- (id)preservedAppIDsAndReturnError:(id *)error;
@end

@implementation DMCAppsClientLite

- (id)preservedAppIDsAndReturnError:(id *)error
{
  v3 = sub_25624D42C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_25624D47C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20]();
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 104))(v6, *MEMORY[0x277D03160], v3);
  sub_25624D46C();
  sub_25624D44C();
  (*(v8 + 8))(v10, v7);
  v11 = sub_25624D4CC();

  return v11;
}

- (DMCAppsClientLite)init
{
  v3.receiver = self;
  v3.super_class = DMCAppsClientLite;
  return [(DMCAppsClientLite *)&v3 init];
}

@end