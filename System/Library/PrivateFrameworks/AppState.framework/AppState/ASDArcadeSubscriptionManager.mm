@interface ASDArcadeSubscriptionManager
- (void)entitlementsDidChange:(id)change;
@end

@implementation ASDArcadeSubscriptionManager

- (void)entitlementsDidChange:(id)change
{
  v3 = sub_22261AC60();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22261AC40();

  sub_2225E6090();

  (*(v4 + 8))(v6, v3);
}

@end