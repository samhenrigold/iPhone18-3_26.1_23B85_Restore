@interface ChecklistUserPreferences
- (void)handleChangeWithNotification:(id)notification;
@end

@implementation ChecklistUserPreferences

- (void)handleChangeWithNotification:(id)notification
{
  v3 = sub_21BE2581C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21BE2580C();

  sub_21BBBABA0();

  (*(v4 + 8))(v6, v3);
}

@end