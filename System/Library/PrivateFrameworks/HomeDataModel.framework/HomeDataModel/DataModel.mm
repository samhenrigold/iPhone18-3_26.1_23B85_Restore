@interface DataModel
+ (_TtC13HomeDataModel9DataModel)shared;
+ (int64_t)context;
+ (void)setContext:(int64_t)context;
+ (void)setHomeManagerConfiguration:(id)configuration;
- (HMHome)currentHome;
- (HMHome)primaryHome;
- (HMHomeManager)homeManager;
- (id)accessoryFor:(id)for;
- (id)accessoryFor:(id)for homeID:(id)d;
- (id)accessoryFor:(id)for in:(id)in;
- (id)accessoryFromAnyHomeFor:(id)for;
- (id)actionSetFor:(id)for;
- (id)cameraProfileFor:(id)for;
- (id)characteristicFor:(id)for;
- (id)homeFor:(id)for;
- (id)mediaProfileFor:(id)for;
- (id)mediaSystemFor:(id)for;
- (id)residentFor:(id)for;
- (id)roomFor:(id)for;
- (id)serviceFor:(id)for;
- (id)serviceGroupFor:(id)for;
- (id)userFor:(id)for;
- (void)accessory:(id)accessory didAddProfile:(id)profile;
- (void)accessory:(id)accessory didRemoveProfile:(id)profile;
- (void)accessory:(id)accessory didUpdateApplicationDataForService:(id)service;
- (void)accessory:(id)accessory didUpdateAssociatedServiceTypeForService:(id)service;
- (void)accessory:(id)accessory didUpdateFirmwareVersion:(id)version;
- (void)accessory:(id)accessory didUpdateNameForService:(id)service;
- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic;
- (void)accessoryDidUpdateApplicationData:(id)data;
- (void)accessoryDidUpdateName:(id)name;
- (void)accessoryDidUpdateReachability:(id)reachability;
- (void)accessoryDidUpdateServices:(id)services;
- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings;
- (void)device:(id)device stateChanged:(unint64_t)changed;
- (void)deviceBecameActive:(id)active;
- (void)deviceCachePrimed:(id)primed;
- (void)deviceConfigurationChanged:(id)changed;
- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)device;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddActionSet:(id)set;
- (void)home:(id)home didAddRoom:(id)room;
- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone;
- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group;
- (void)home:(id)home didAddServiceGroup:(id)group;
- (void)home:(id)home didAddTrigger:(id)trigger;
- (void)home:(id)home didAddZone:(id)zone;
- (void)home:(id)home didEncounterError:(id)error forAccessory:(id)accessory;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveActionSet:(id)set;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone;
- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group;
- (void)home:(id)home didRemoveServiceGroup:(id)group;
- (void)home:(id)home didRemoveTrigger:(id)trigger;
- (void)home:(id)home didRemoveZone:(id)zone;
- (void)home:(id)home didUnblockAccessory:(id)accessory;
- (void)home:(id)home didUpdateActionSet:(id)set isExecuting:(BOOL)executing;
- (void)home:(id)home didUpdateActionsForActionSet:(id)set;
- (void)home:(id)home didUpdateApplicationDataForActionSet:(id)set;
- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room;
- (void)home:(id)home didUpdateApplicationDataForServiceGroup:(id)group;
- (void)home:(id)home didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)enabled;
- (void)home:(id)home didUpdateHomeHubState:(unint64_t)state;
- (void)home:(id)home didUpdateNameForActionSet:(id)set;
- (void)home:(id)home didUpdateNameForRoom:(id)room;
- (void)home:(id)home didUpdateNameForServiceGroup:(id)group;
- (void)home:(id)home didUpdateNameForTrigger:(id)trigger;
- (void)home:(id)home didUpdateNameForZone:(id)zone;
- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory;
- (void)home:(id)home didUpdateTrigger:(id)trigger;
- (void)home:(void *)home didAddUser:(void *)user;
- (void)home:(void *)home didRemoveUser:(void *)user;
- (void)homeDidUpdateAccessControlForCurrentUser:(id)user;
- (void)homeDidUpdateApplicationData:(id)data;
- (void)homeDidUpdateName:(id)name;
- (void)homeDidUpdateSupportedFeatures:(id)features;
- (void)homeManager:(id)manager didAddHome:(id)home;
- (void)homeManager:(id)manager didRemoveHome:(id)home;
- (void)homeManagerDidUpdateCurrentHome:(id)home;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)homeManagerDidUpdatePrimaryHome:(id)home;
- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status;
- (void)setCurrentHome:(id)home;
- (void)setHomeManager:(id)manager;
- (void)set_currentHome:(id)home;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didReceiveUpdate:(id)update;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didUpdateProgress:(id)progress;
- (void)userActionPredictionController:(id)controller didUpdatePredictions:(id)predictions;
@end

@implementation DataModel

- (void)home:(void *)home didAddUser:(void *)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_1D1E2BA70(homeCopy, userCopy, "%s %@");
}

- (void)home:(void *)home didRemoveUser:(void *)user
{
  homeCopy = home;
  userCopy = user;
  selfCopy = self;
  sub_1D1E2BDA4(homeCopy, userCopy, "%s %@");
}

+ (void)setHomeManagerConfiguration:(id)configuration
{
  swift_beginAccess();
  v4 = qword_1EE07AE00;
  qword_1EE07AE00 = configuration;
  configurationCopy = configuration;
}

- (HMHomeManager)homeManager
{
  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setHomeManager:(id)manager
{
  v5 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = manager;
  managerCopy = manager;
}

- (void)set_currentHome:(id)home
{
  v5 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  v7 = v6;
  homeCopy = home;
  selfCopy = self;
  sub_1D1DE7630(home, sub_1D1DF39C4);
  v9 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = home;
  v10 = homeCopy;

  sub_1D1DE7630(v6, sub_1D1DE779C);
}

- (HMHome)currentHome
{
  swift_getKeyPath();
  sub_1D1DF4FF4(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  selfCopy = self;
  sub_1D1E66CAC();

  v4 = *(&selfCopy->super.isa + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  v5 = v4;

  return v4;
}

- (void)setCurrentHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  sub_1D1DE83C0(home);
}

+ (_TtC13HomeDataModel9DataModel)shared
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE07DC60;

  return v3;
}

+ (int64_t)context
{
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  return qword_1EE07AE40;
}

+ (void)setContext:(int64_t)context
{
  if (qword_1EE07AE38 != -1)
  {
    contextCopy = context;
    swift_once();
    context = contextCopy;
  }

  qword_1EE07AE40 = context;
}

- (HMHome)primaryHome
{
  selfCopy = self;
  v3 = DataModel.primaryHome.getter();

  return v3;
}

- (id)accessoryFor:(id)for in:(id)in
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-v7];
  if (for)
  {
    sub_1D1E66A5C();
    v9 = sub_1D1E66A7C();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  inCopy = in;
  accessories = [inCopy accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v13 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v14);
  *&v17[-16] = v8;
  v15 = sub_1D174A6C4(sub_1D1E02250, &v17[-32], v13);

  sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);

  return v15;
}

- (id)accessoryFromAnyHomeFor:(id)for
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v22 - v10;
  if (for)
  {
    sub_1D1E66A5C();
    v12 = sub_1D1E66A7C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_1D1E66A7C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v16 = sub_1D1E67C1C();

  sub_1D17783E0(v11, v9);
  v17 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = selfCopy;
  sub_1D1778308(v9, v18 + v17);
  v22[1] = v16;
  v22[2] = sub_1D1E021A4;
  v22[3] = v18;
  v22[4] = sub_1D1CCEDD0;
  v22[5] = 0;
  v22[6] = sub_1D1716A30;
  v22[7] = 0;
  v19 = selfCopy;
  v20 = sub_1D1778964();

  sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);

  return v20;
}

- (id)homeFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v10 = sub_1D1E67C1C();

  v14 = v7;
  v11 = sub_1D174A6C4(sub_1D1E02234, v13, v10);

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)accessoryFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E020F8;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1716A30;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)accessoryFor:(id)for homeID:(id)d
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - v10;
  sub_1D1E66A5C();
  sub_1D1E66A5C();
  selfCopy = self;
  v13 = sub_1D1E66A2C();
  v14 = [(DataModel *)selfCopy homeFor:v13];

  if (v14)
  {
    v15 = sub_1D1E66A2C();
    v16 = [(DataModel *)selfCopy accessoryFor:v15 in:v14];

    selfCopy = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *(v6 + 8);
  v17(v9, v5);
  v17(v11, v5);

  return v16;
}

- (id)actionSetFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E02058;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)cameraProfileFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E02040;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)mediaProfileFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E02028;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)characteristicFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E02010;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)roomFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E01FF8;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)serviceFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E01FE0;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1716A30;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)serviceGroupFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E01FC8;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1716A30;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)mediaSystemFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E01FB0;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)userFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E01F98;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (id)residentFor:(id)for
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v8 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v18 - v9;
  sub_1D1E66A5C();
  selfCopy = self;
  sortedHomes = [(DataModel *)selfCopy sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v13 = sub_1D1E67C1C();

  (*(v5 + 16))(v8, v10, v4);
  v14 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v15 = swift_allocObject();
  (*(v5 + 32))(v15 + v14, v8, v4);
  v18[1] = v13;
  v18[2] = sub_1D1E01F80;
  v18[3] = v15;
  v18[4] = sub_1D1CCEDD0;
  v18[5] = 0;
  v18[6] = sub_1D1A8D27C;
  v18[7] = 0;
  v16 = sub_1D1778964();

  (*(v5 + 8))(v10, v4);

  return v16;
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  DataModel.homeManagerDidUpdateHomes(_:)(homesCopy);
}

- (void)homeManagerDidUpdatePrimaryHome:(id)home
{
  homeCopy = home;
  selfCopy = self;
  DataModel.homeManagerDidUpdatePrimaryHome(_:)(homeCopy);
}

- (void)homeManagerDidUpdateCurrentHome:(id)home
{
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_1D1E67E7C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_1D1E67E1C();
  selfCopy = self;
  v10 = sub_1D1E67E0C();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = selfCopy;
  v11[5] = ObjectType;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1EB1E18, v11);
}

- (void)homeManager:(id)manager didAddHome:(id)home
{
  ObjectType = swift_getObjectType();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_1D1E67E7C();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1D1E67E1C();
  managerCopy = manager;
  homeCopy = home;
  selfCopy = self;
  v15 = homeCopy;
  v16 = managerCopy;
  v17 = selfCopy;
  v18 = sub_1D1E67E0C();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = v15;
  v19[5] = v16;
  v19[6] = v17;
  v19[7] = ObjectType;
  sub_1D17C6EF0(0, 0, v10, &unk_1D1EB1E10, v19);
}

- (void)homeManager:(id)manager didRemoveHome:(id)home
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1D1E67E7C();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1D1E67E1C();
  homeCopy = home;
  selfCopy = self;
  v13 = homeCopy;
  v14 = selfCopy;
  managerCopy = manager;
  v16 = sub_1D1E67E0C();
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E85E0];
  v17[2] = v16;
  v17[3] = v18;
  v17[4] = v13;
  v17[5] = v14;
  sub_1D17C6EF0(0, 0, v9, &unk_1D1EB1E08, v17);

  if (qword_1EC642408 != -1)
  {
    swift_once();
  }

  sub_1D1D50FD4(v13);
}

- (void)homeDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  _s13HomeDataModel0bC0C17homeDidUpdateNameyySo6HMHomeCF_0(nameCopy);
}

- (void)homeDidUpdateAccessControlForCurrentUser:(id)user
{
  userCopy = user;
  selfCopy = self;
  _s13HomeDataModel0bC0C26homeDidUpdateAccessControl14forCurrentUserySo6HMHomeC_tF_0(userCopy);
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  DataModel.home(_:didAdd:)(homeCopy, accessoryCopy);
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  DataModel.home(_:didRemove:)(homeCopy, accessoryCopy);
}

- (void)home:(id)home didUpdateRoom:(id)room forAccessory:(id)accessory
{
  homeCopy = home;
  roomCopy = room;
  accessoryCopy = accessory;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_9didUpdate3forySo6HMHomeC_So6HMRoomCSo11HMAccessoryCtF_0(homeCopy, roomCopy, accessoryCopy);
}

- (void)home:(id)home didAddRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_6didAddySo6HMHomeC_So6HMRoomCtF_0(homeCopy, roomCopy);
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_9didRemoveySo6HMHomeC_So6HMRoomCtF_0(homeCopy, roomCopy);
}

- (void)home:(id)home didUpdateNameForRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_16didUpdateNameForySo6HMHomeC_So6HMRoomCtF_0(homeCopy, roomCopy);
}

- (void)home:(id)home didAddZone:(id)zone
{
  homeCopy = home;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1E2BA70(homeCopy, zoneCopy, "%s zone %@");
}

- (void)home:(id)home didRemoveZone:(id)zone
{
  homeCopy = home;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1E2BDA4(homeCopy, zoneCopy, "%s zone %@");
}

- (void)home:(id)home didUpdateNameForZone:(id)zone
{
  homeCopy = home;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1E2C0C8(homeCopy, zoneCopy, "%s zone %@");
}

- (void)home:(id)home didAddRoom:(id)room toZone:(id)zone
{
  homeCopy = home;
  roomCopy = room;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1E2C3EC(homeCopy, roomCopy, zoneCopy, "%s room %@ zone %@");
}

- (void)home:(id)home didRemoveRoom:(id)room fromZone:(id)zone
{
  homeCopy = home;
  roomCopy = room;
  zoneCopy = zone;
  selfCopy = self;
  sub_1D1E2C73C(homeCopy, roomCopy, zoneCopy, "%s room %@ zone %@");
}

- (void)home:(id)home didAddServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_1D1E2BA70(homeCopy, groupCopy, "%s group %@)");
}

- (void)home:(id)home didRemoveServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_1D1E2BDA4(homeCopy, groupCopy, "%s group %@)");
}

- (void)home:(id)home didUpdateNameForServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  selfCopy = self;
  sub_1D1E2C0C8(homeCopy, groupCopy, "%s group %@)");
}

- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group
{
  homeCopy = home;
  serviceCopy = service;
  groupCopy = group;
  selfCopy = self;
  sub_1D1E2C3EC(homeCopy, serviceCopy, groupCopy, "%s service %@ group %@");
}

- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group
{
  homeCopy = home;
  serviceCopy = service;
  groupCopy = group;
  selfCopy = self;
  sub_1D1E2C73C(homeCopy, serviceCopy, groupCopy, "%s service %@ group %@");
}

- (void)home:(id)home didAddActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1E2BA70(homeCopy, setCopy, "%s actionSet %@");
}

- (void)home:(id)home didRemoveActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1E2BDA4(homeCopy, setCopy, "%s actionSet %@");
}

- (void)home:(id)home didUpdateNameForActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1E2C0C8(homeCopy, setCopy, "%s actionSet %@");
}

- (void)home:(id)home didUpdateActionsForActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_19didUpdateActionsForySo6HMHomeC_So11HMActionSetCtF_0(homeCopy, setCopy);
}

- (void)home:(id)home didAddTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  sub_1D1E2BA70(homeCopy, triggerCopy, "%s trigger %@");
}

- (void)home:(id)home didRemoveTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  sub_1D1E2BDA4(homeCopy, triggerCopy, "%s trigger %@");
}

- (void)home:(id)home didUpdateNameForTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  sub_1D1E2C0C8(homeCopy, triggerCopy, "%s trigger %@");
}

- (void)home:(id)home didUpdateTrigger:(id)trigger
{
  homeCopy = home;
  triggerCopy = trigger;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_9didUpdateySo6HMHomeC_So9HMTriggerCtF_0(homeCopy, triggerCopy);
}

- (void)home:(id)home didUnblockAccessory:(id)accessory
{
  homeCopy = home;
  accessoryCopy = accessory;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_19didUnblockAccessoryySo6HMHomeC_So11HMAccessoryCtF_0(homeCopy, accessoryCopy);
}

- (void)home:(id)home didEncounterError:(id)error forAccessory:(id)accessory
{
  homeCopy = home;
  errorCopy = error;
  accessoryCopy = accessory;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_17didEncounterError3forySo6HMHomeC_s0G0_pSo11HMAccessoryCtF_0(homeCopy, errorCopy, accessoryCopy);
}

- (void)home:(id)home didUpdateHomeHubState:(unint64_t)state
{
  homeCopy = home;
  selfCopy = self;
  _s13HomeDataModel0bC0C4home_9didUpdateySo6HMHomeC_So0G8HubStateVtF_0(homeCopy, state);
}

- (void)homeDidUpdateSupportedFeatures:(id)features
{
  featuresCopy = features;
  selfCopy = self;
  _s13HomeDataModel0bC0C30homeDidUpdateSupportedFeaturesyySo6HMHomeCF_0(featuresCopy);
}

- (void)home:(id)home didUpdateAutomaticSoftwareUpdateEnabled:(BOOL)enabled
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v7 = (&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = qword_1EE07DC88;
  homeCopy = home;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v14, qword_1EE07DCE0);
  *v7 = homeCopy;
  swift_storeEnumTagMultiPayload();
  v15 = homeCopy;
  sub_1D1E67ECC();

  (*(v9 + 8))(v11, v8);
}

- (void)homeDidUpdateApplicationData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  _s13HomeDataModel0bC0C024homeDidUpdateApplicationB0yySo6HMHomeCF_0(dataCopy);
}

- (void)home:(id)home didUpdateApplicationDataForRoom:(id)room
{
  homeCopy = home;
  roomCopy = room;
  sub_1D1E2E11C(homeCopy, roomCopy, "%s - new application data for room %s — %s", v8, self, v10);
}

- (void)home:(id)home didUpdateApplicationDataForServiceGroup:(id)group
{
  homeCopy = home;
  groupCopy = group;
  sub_1D1E2E11C(homeCopy, groupCopy, "%s - new application data for serviceGroup %s — %s", v8, self, v10);
}

- (void)home:(id)home didUpdateApplicationDataForActionSet:(id)set
{
  homeCopy = home;
  setCopy = set;
  sub_1D1E2E11C(homeCopy, setCopy, "%s - new application data for actionSet %s — %s", v8, self, v10);
}

- (void)home:(id)home didUpdateActionSet:(id)set isExecuting:(BOOL)executing
{
  executingCopy = executing;
  homeCopy = home;
  setCopy = set;
  selfCopy = self;
  sub_1D1E2E530(setCopy, executingCopy);
}

- (void)userActionPredictionController:(id)controller didUpdatePredictions:(id)predictions
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
  v8 = sub_1D1E67C1C();
  v9 = sub_1D1E67E7C();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = controller;
  v10[5] = v8;
  controllerCopy = controller;
  sub_1D17C6EF0(0, 0, v7, &unk_1D1EB1DF0, v10);
}

- (void)accessoryDidUpdateName:(id)name
{
  nameCopy = name;
  selfCopy = self;
  _s13HomeDataModel0bC0C22accessoryDidUpdateNameyySo11HMAccessoryCF_0(nameCopy);
}

- (void)accessoryDidUpdateReachability:(id)reachability
{
  reachabilityCopy = reachability;
  selfCopy = self;
  _s13HomeDataModel0bC0C30accessoryDidUpdateReachabilityyySo11HMAccessoryCF_0(reachabilityCopy);
}

- (void)accessoryDidUpdateServices:(id)services
{
  servicesCopy = services;
  selfCopy = self;
  _s13HomeDataModel0bC0C26accessoryDidUpdateServicesyySo11HMAccessoryCF_0(servicesCopy);
}

- (void)accessory:(id)accessory didUpdateNameForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  _s13HomeDataModel0bC0C9accessory_16didUpdateNameForySo11HMAccessoryC_So9HMServiceCtF_0(accessoryCopy, serviceCopy);
}

- (void)accessory:(id)accessory service:(id)service didUpdateValueForCharacteristic:(id)characteristic
{
  accessoryCopy = accessory;
  serviceCopy = service;
  characteristicCopy = characteristic;
  selfCopy = self;
  sub_1D1E2F9A0(serviceCopy, characteristicCopy);
}

- (void)accessory:(id)accessory didUpdateAssociatedServiceTypeForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  _s13HomeDataModel0bC0C9accessory_33didUpdateAssociatedServiceTypeForySo11HMAccessoryC_So9HMServiceCtF_0(accessoryCopy);
}

- (void)accessory:(id)accessory didAddProfile:(id)profile
{
  accessoryCopy = accessory;
  profileCopy = profile;
  selfCopy = self;
  _s13HomeDataModel0bC0C9accessory_6didAddySo11HMAccessoryC_So0G7ProfileCtF_0(accessoryCopy);
}

- (void)accessory:(id)accessory didRemoveProfile:(id)profile
{
  accessoryCopy = accessory;
  profileCopy = profile;
  selfCopy = self;
  _s13HomeDataModel0bC0C9accessory_9didRemoveySo11HMAccessoryC_So0G7ProfileCtF_0(accessoryCopy);
}

- (void)accessory:(id)accessory didUpdateFirmwareVersion:(id)version
{
  accessoryCopy = accessory;
  selfCopy = self;
  _s13HomeDataModel0bC0C9accessory_24didUpdateFirmwareVersionySo11HMAccessoryC_SStF_0(accessoryCopy);
}

- (void)accessoryDidUpdateApplicationData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  _s13HomeDataModel0bC0C029accessoryDidUpdateApplicationB0yySo11HMAccessoryCF_0(dataCopy);
}

- (void)accessory:(id)accessory didUpdateApplicationDataForService:(id)service
{
  accessoryCopy = accessory;
  serviceCopy = service;
  selfCopy = self;
  _s13HomeDataModel0bC0C9accessory_020didUpdateApplicationB3ForySo11HMAccessoryC_So9HMServiceCtF_0(accessoryCopy, serviceCopy);
}

- (void)accessorySettingsDataSource:(id)source didReceiveSettingsUpdatesForAccessoryWithIdentifier:(id)identifier settings:(id)settings
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v14, qword_1EE07DCE0);
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didReceiveUpdate:(id)update
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  controllerCopy = controller;
  updateCopy = update;
  selfCopy = self;
  sub_1D1E3129C(v11, updateCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp
{
  selfCopy = self;
  v22 = sub_1D1E669FC();
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &selfCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &selfCopy - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  sub_1D1E669BC();
  controllerCopy = controller;
  updateCopy = update;
  errorCopy = error;
  v20 = selfCopy;
  sub_1D1E315B0(v16, updateCopy, errorCopy);

  (*(v10 + 8))(v12, v22);
  (*(v14 + 8))(v16, v13);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didUpdateProgress:(id)progress
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  controllerCopy = controller;
  progressCopy = progress;
  selfCopy = self;
  sub_1D1E31928(v11, progressCopy);

  (*(v9 + 8))(v11, v8);
}

- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  v12 = qword_1EE07DC88;
  deviceCopy = device;
  if (v12 != -1)
  {
    swift_once();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v14, qword_1EE07DCE0);
  *v7 = [deviceCopy home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();

  (*(v9 + 8))(v11, v8);
}

- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)device
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - v9;
  v11 = qword_1EE07DC88;
  deviceCopy = device;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v13, qword_1EE07DCE0);
  *v6 = [deviceCopy home];
  swift_storeEnumTagMultiPayload();
  sub_1D1E67ECC();

  (*(v8 + 8))(v10, v7);
}

- (void)device:(id)device stateChanged:(unint64_t)changed
{
  deviceCopy = device;
  selfCopy = self;
  _s13HomeDataModel0bC0C6device_12stateChangedySo9MTRDeviceC_So0G5StateVtF_0(deviceCopy, changed);
}

- (void)deviceBecameActive:(id)active
{
  activeCopy = active;
  selfCopy = self;
  sub_1D1AB43C4(activeCopy, "Received MTRDevice delegate deviceBecameActive for device:%{public}@");
}

- (void)deviceCachePrimed:(id)primed
{
  primedCopy = primed;
  selfCopy = self;
  sub_1D1AB43C4(primedCopy, "Received MTRDevice delegate deviceCachePrimed for device:%{public}@");
}

- (void)deviceConfigurationChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  sub_1D1AB43C4(changedCopy, "Received MTRDevice delegate deviceConfigurationChanged for device:%{public}@");
}

@end