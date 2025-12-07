@interface HomeState.Stream.HomeFrameworkObserver
- (_TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver)init;
- (void)didUpdateToInstallingState:(BOOL)state forAccessory:(id)accessory;
- (void)executionEnvironmentRunningStateDidChange:(id)change;
- (void)home:(id)home didReadValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics;
- (void)home:(id)home didWriteValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics;
- (void)home:(id)home willReadValuesForCharacteristics:(id)characteristics;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp;
- (void)softwareUpdateController:(id)controller accessory:(id)accessory didReceiveUpdate:(id)update;
@end

@implementation HomeState.Stream.HomeFrameworkObserver

- (_TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)home:(id)home didWriteValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830, MEMORY[0x277D85378]);
  v9 = sub_20DD651E4();
  v10 = *(&self->super.isa + OBJC_IVAR____TtCE4HomeCV13HomeDataModel9HomeState6Stream21HomeFrameworkObserver_stream);
  sub_20DD63BB4();
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  selfCopy = self;

  sub_20DD63B94();

  sub_20D9C7BC4(v8);
}

- (void)home:(id)home willReadValuesForCharacteristics:(id)characteristics
{
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830, MEMORY[0x277D85378]);
  v6 = sub_20DD651E4();
  homeCopy = home;
  selfCopy = self;
  sub_20D9C787C(v6);
}

- (void)home:(id)home didReadValuesForCharacteristics:(id)characteristics failedCharacteristics:(id)failedCharacteristics
{
  sub_20D9C7830();
  sub_20D9C6D80(&unk_280E020F0, sub_20D9C7830, MEMORY[0x277D85378]);
  v7 = sub_20DD651E4();
  v8 = sub_20DD651E4();
  homeCopy = home;
  selfCopy = self;
  sub_20D9C79E4(v7, v8);
}

- (void)executionEnvironmentRunningStateDidChange:(id)change
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8443F0, &qword_20DD93820);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  changeCopy = change;
  selfCopy = self;
  runningState = [changeCopy runningState];
  v11 = sub_20DD65114();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = runningState;
  v13[5] = v12;
  sub_20DA1C200(0, 0, v7, &unk_20DD93830, v13);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didReceiveUpdate:(id)update
{
  v5 = sub_20DD63744();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63714();
  (*(v6 + 8))(v8, v5);
}

- (void)softwareUpdateController:(id)controller accessory:(id)accessory didFailUpdate:(id)update withError:(id)error timestamp:(id)timestamp
{
  v7 = sub_20DD636C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20DD63744();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v15 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20DD63714();
  sub_20DD63674();
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

- (void)didUpdateToInstallingState:(BOOL)state forAccessory:(id)accessory
{
  stateCopy = state;
  accessoryCopy = accessory;
  selfCopy = self;
  sub_20D9C5FAC(stateCopy, accessoryCopy, selfCopy, v7, v8);
}

@end