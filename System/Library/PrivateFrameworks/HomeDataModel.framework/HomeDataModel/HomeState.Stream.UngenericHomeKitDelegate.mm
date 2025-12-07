@interface HomeState.Stream.UngenericHomeKitDelegate
- (_TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate)init;
- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)device;
- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status;
- (void)softwareUpdate:(void *)update didUpdateState:;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp;
@end

@implementation HomeState.Stream.UngenericHomeKitDelegate

- (_TtCCV13HomeDataModel9HomeState6Stream24UngenericHomeKitDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)residentDevice:(id)device didUpdateStatus:(unint64_t)status
{
  deviceCopy = device;
  selfCopy = self;
  sub_1D1AACCAC(deviceCopy);
}

- (void)didUpdateSupportedCapabilitiesForResidentDevice:(id)device
{
  deviceCopy = device;
  selfCopy = self;
  sub_1D1AACCAC(deviceCopy);
}

- (void)softwareUpdate:(void *)update didUpdateState:
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1D1AB10C0(v12, v5);
  v13 = *(v3 + 52);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  updateCopy = update;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v7 + 8))(v9, v6);
  sub_1D1AB1124(v12);
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
  sub_1D1AB0840(v16, updateCopy, errorCopy);

  (*(v10 + 8))(v12, v22);
  (*(v14 + 8))(v16, v13);
}

@end