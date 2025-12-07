@interface HMDUserDefaultDataSource
- (BOOL)isCurrentUser:(id)user;
- (BOOL)isThisDeviceDesignatedFMFDevice;
- (HMDUserDefaultDataSource)init;
- (NSNotificationCenter)notificationCenter;
- (NSString)fmfDeviceName;
- (id)userDataBackingStoreControllerWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name shareMessenger:(id)messenger;
- (id)userDataControllerWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0;
@end

@implementation HMDUserDefaultDataSource

- (id)userDataControllerWithDelegate:(id)delegate dataSource:(id)source queue:(id)queue userID:(id)d homeID:(id)iD sharedSettingsController:(id)controller privateSettingsController:(id)settingsController isCurrentUser:(BOOL)self0
{
  LODWORD(v31) = user;
  v32 = sub_253CCFF58();
  v14 = *(v32 - 8);
  v15 = MEMORY[0x28223BE20](v32);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_253CCFF38();
  sub_253CCFF38();
  v30 = objc_allocWithZone(HMDUserDataController);
  swift_unknownObjectRetain();
  sourceCopy = source;
  swift_unknownObjectRetain();
  queueCopy = queue;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = sub_253CCFF18();
  v23 = sub_253CCFF18();
  LOBYTE(v28) = v31;
  v31 = [v30 initWithDelegate:delegate dataSource:sourceCopy queue:queueCopy userID:v22 homeID:v23 sharedSettingsController:controller privateSettingsController:settingsController isCurrentUser:v28];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v24 = *(v14 + 8);
  v25 = v32;
  v24(v17, v32);
  v24(v19, v25);
  v26 = v31;

  return v26;
}

- (id)userDataBackingStoreControllerWithDelegate:(id)delegate queue:(id)queue zoneName:(id)name shareMessenger:(id)messenger
{
  sub_253CD0968();
  v9 = objc_opt_self();
  swift_unknownObjectRetain();
  queueCopy = queue;
  messengerCopy = messenger;
  defaultDatabase = [v9 defaultDatabase];
  v13 = objc_allocWithZone(HMDUserSettingsBackingStoreController);
  v14 = sub_253CD0938();

  v15 = [v13 initWithDelegate:delegate queue:queueCopy zoneName:v14 database:defaultDatabase shareMessenger:messengerCopy];
  swift_unknownObjectRelease();

  return v15;
}

- (BOOL)isCurrentUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  v6 = sub_25322E4AC(userCopy);

  return v6 & 1;
}

- (NSNotificationCenter)notificationCenter
{
  defaultCenter = [objc_opt_self() defaultCenter];

  return defaultCenter;
}

- (BOOL)isThisDeviceDesignatedFMFDevice
{
  if (qword_2815314D0 != -1)
  {
    swift_once();
  }

  v2 = qword_281532BF0;
  os_unfair_lock_lock((qword_281532BF0 + 128));
  v3 = *(v2 + 136) == 2;
  os_unfair_lock_unlock((v2 + 128));
  return v3;
}

- (NSString)fmfDeviceName
{
  sub_25322E5B4();
  if (v2)
  {
    v3 = sub_253CD0938();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (HMDUserDefaultDataSource)init
{
  v3.receiver = self;
  v3.super_class = HMDUserDefaultDataSource;
  return [(HMDUserDefaultDataSource *)&v3 init];
}

@end