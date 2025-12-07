@interface FindMyLocateSession
- (_TtC24AssistantSettingsSupport19FindMyLocateSession)init;
- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (void)getActiveLocationSharingDeviceWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E542718, &qword_241412930);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_24140ECDC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_241412F80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_241412F88;
  v12[5] = v11;
  selfCopy = self;
  sub_241405C7C(0, 0, v7, &unk_241412F90, v12);
}

- (_TtC24AssistantSettingsSupport19FindMyLocateSession)init
{
  v3 = sub_24140E30C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24140E31C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR____TtC24AssistantSettingsSupport19FindMyLocateSession_session;
  (*(v4 + 104))(v6, *MEMORY[0x277D09060], v3);
  sub_24140E32C();
  sub_24140E38C();
  swift_allocObject();
  *(&self->super.isa + v8) = sub_24140E39C();
  Session = type metadata accessor for FindMyLocateSession();
  v11.receiver = self;
  v11.super_class = Session;
  return [(FindMyLocateSession *)&v11 init];
}

@end