@interface UNNotificationClient
- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler;
- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings;
- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response;
@end

@implementation UNNotificationClient

- (void)userNotificationCenter:(id)center didOpenApplicationForResponse:(id)response
{
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_26CC7A890(responseCopy);
}

- (void)userNotificationCenter:(id)center didChangeSettings:(id)settings
{
  centerCopy = center;
  settingsCopy = settings;
  selfCopy = self;
  sub_26CC7AAAC(centerCopy, settingsCopy);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center willPresentNotification:(UNNotification *)notification withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = notification;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_26CD3A86C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26CD427D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26CD427D8;
  v16[5] = v15;
  centerCopy = center;
  notificationCopy = notification;
  selfCopy = self;
  sub_26CC78568(0, 0, v11, &unk_26CD427E0, v16);
}

- (void)userNotificationCenter:(UNUserNotificationCenter *)center didReceiveNotificationResponse:(UNNotificationResponse *)response withCompletionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804BCA00, &qword_26CD3D510);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = center;
  v13[3] = response;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_26CD3A86C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_26CD42768;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_26CD42778;
  v16[5] = v15;
  centerCopy = center;
  responseCopy = response;
  selfCopy = self;
  sub_26CC78568(0, 0, v11, &unk_26CD42788, v16);
}

@end