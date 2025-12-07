@interface PMOTPAuthHandlerMigration
- (BOOL)migrateDefaultOTPAuthHandlerWithURL:(id)l;
- (PMOTPAuthHandlerMigration)init;
@end

@implementation PMOTPAuthHandlerMigration

- (BOOL)migrateDefaultOTPAuthHandlerWithURL:(id)l
{
  v3 = sub_21CB80BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB80B94();
  v7 = sub_21C7A3C8C(v6);
  (*(v4 + 8))(v6, v3);
  return v7 & 1;
}

- (PMOTPAuthHandlerMigration)init
{
  v3.receiver = self;
  v3.super_class = PMOTPAuthHandlerMigration;
  return [(PMOTPAuthHandlerMigration *)&v3 init];
}

@end