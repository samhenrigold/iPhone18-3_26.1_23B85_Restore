@interface WalletSettingsModel
- (void)passLibraryDidChangeWithNotification:(id)notification;
- (void)paymentOptionsDidChange;
@end

@implementation WalletSettingsModel

- (void)paymentOptionsDidChange
{
  sub_1BE048964();
  sub_1BD405E54();

  self, v3, v4, v5, v6, v7, v8, v9;
}

- (void)passLibraryDidChangeWithNotification:(id)notification
{
  v4 = sub_1BE04A2E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BE04A2C4();
  sub_1BE048964();
  sub_1BD406730();
  self, v8, v9, v10, v11, v12, v13, v14;
  (*(v5 + 8))(v7, v4);
}

@end