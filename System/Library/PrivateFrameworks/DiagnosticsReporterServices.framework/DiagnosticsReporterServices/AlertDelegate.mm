@interface AlertDelegate
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
@end

@implementation AlertDelegate

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE8EED0, &unk_21DD8D6B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_21DD8C198();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_21DD8D4B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_21DD8D4C8;
  v16[5] = v15;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_21DD7F014(0, 0, v11, &unk_21DD8D4D8, v16);
}

@end