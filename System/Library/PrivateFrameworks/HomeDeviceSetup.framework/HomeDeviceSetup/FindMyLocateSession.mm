@interface FindMyLocateSession
- (_TtC15HomeDeviceSetup19FindMyLocateSession)init;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler;
- (void)setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA68, &qword_252FEE2D0);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_252FE9F64();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_252FEE328;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_252FEE330;
  v11[5] = v10;
  selfCopy = self;
  sub_252FD7008(0, 0, v6, &unk_252FEE338, v11);
}

- (void)setActiveLocationSharingDeviceToThisDeviceWithCompletionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F57FA68, &qword_252FEE2D0);
  MEMORY[0x28223BE20]();
  v6 = &v13 - v5;
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = self;
  v9 = sub_252FE9F64();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_252FEE2E0;
  v10[5] = v8;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_252FEE2F0;
  v11[5] = v10;
  selfCopy = self;
  sub_252FD7008(0, 0, v6, &unk_252FEE300, v11);
}

- (_TtC15HomeDeviceSetup19FindMyLocateSession)init
{
  v3 = sub_252FE9DF4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20]();
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252FE9E04();
  MEMORY[0x28223BE20]();
  v7 = OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_session;
  (*(v4 + 104))(v6, *MEMORY[0x277D09060], v3);
  sub_252FE9E14();
  sub_252FE9EC4();
  swift_allocObject();
  *(&self->super.isa + v7) = sub_252FE9ED4();
  *(&self->super.isa + OBJC_IVAR____TtC15HomeDeviceSetup19FindMyLocateSession_preferenceChangesTask) = 0;
  Session = type metadata accessor for FindMyLocateSession();
  v10.receiver = self;
  v10.super_class = Session;
  return [(FindMyLocateSession *)&v10 init];
}

@end