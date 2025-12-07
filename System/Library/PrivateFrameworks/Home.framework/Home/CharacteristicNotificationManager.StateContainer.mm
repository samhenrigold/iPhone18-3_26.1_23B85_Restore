@interface CharacteristicNotificationManager.StateContainer
- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home;
- (BOOL)notificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home;
- (_TtCC4Home33CharacteristicNotificationManager14StateContainer)init;
- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)characteristic forHome:(id)home;
@end

@implementation CharacteristicNotificationManager.StateContainer

- (BOOL)notificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  characteristicCopy = characteristic;
  homeCopy = home;
  selfCopy = self;
  sub_20D9DED48(characteristicCopy, homeCopy, v9);

  v13 = sub_20DD636C4();
  LOBYTE(selfCopy) = (*(*(v13 - 8) + 48))(v9, 1, v13) != 1;
  sub_20D9D76EC(v9, &unk_27C843810, &qword_20DD93F00);
  return selfCopy;
}

- (id)lastNotificationsEnableRequestDateForCharacteristic:(id)characteristic forHome:(id)home
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C843810, &qword_20DD93F00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  characteristicCopy = characteristic;
  homeCopy = home;
  selfCopy = self;
  sub_20D9DED48(characteristicCopy, homeCopy, v9);

  v13 = sub_20DD636C4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v9, 1, v13);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_20DD63624();
    (*(v14 + 8))(v9, v13);
    v16 = v17;
  }

  return v16;
}

- (BOOL)cacheUpToDateWithNotificationsEnabledForCharacteristic:(id)characteristic inHome:(id)home
{
  characteristicCopy = characteristic;
  homeCopy = home;
  selfCopy = self;
  v9 = sub_20D9DF358(characteristicCopy, homeCopy);

  return v9;
}

- (_TtCC4Home33CharacteristicNotificationManager14StateContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end