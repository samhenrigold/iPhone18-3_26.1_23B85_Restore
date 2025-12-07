@interface BluetoothUtility
- (void)handleBluetoothManagerStateChangeWithNotification:(id)notification;
@end

@implementation BluetoothUtility

- (void)handleBluetoothManagerStateChangeWithNotification:(id)notification
{
  v3 = sub_2239B2E58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2239B2E48();

  sub_223977B3C();

  (*(v4 + 8))(v6, v3);
}

@end