@interface AAUIAppleAccountHeaderViewFactory
+ (id)createAppleAccountHeaderViewFromContact:(id)contact account:(id)account showAccountDetails:(BOOL)details showChangeButton:(BOOL)button;
@end

@implementation AAUIAppleAccountHeaderViewFactory

+ (id)createAppleAccountHeaderViewFromContact:(id)contact account:(id)account showAccountDetails:(BOOL)details showChangeButton:(BOOL)button
{
  swift_getObjCClassMetadata();
  MEMORY[0x1E69E5928](contact, v6);
  MEMORY[0x1E69E5928](account, v7);
  v9 = sub_1C5594AC4();
  v10 = sub_1C5594AC4();
  swift_getObjCClassMetadata();
  v13 = static AppleAccountHeaderViewFactory.createAppleAccountHeaderView(contact:account:showAccountDetails:showChangeButton:)(contact, account, v9 & 1, v10 & 1);
  MEMORY[0x1E69E5920](account);
  MEMORY[0x1E69E5920](contact);

  return v13;
}

@end