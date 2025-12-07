@interface FindMyLocateSession
- (_TtC14FamilyCircleUI19FindMyLocateSession)init;
- (void)handlesFollowingMyLocationWithCompletionHandler:(id)handler;
@end

@implementation FindMyLocateSession

- (void)handlesFollowingMyLocationWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_21BE28DAC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_21BE40660;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_21BE32A10;
  v12[5] = v11;
  selfCopy = self;
  sub_21BDC4F90(0, 0, v7, &unk_21BE391F0, v12);
}

- (_TtC14FamilyCircleUI19FindMyLocateSession)init
{
  v3 = sub_21BE2652C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21BE2653C();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = OBJC_IVAR____TtC14FamilyCircleUI19FindMyLocateSession_session;
  (*(v4 + 104))(v6, *MEMORY[0x277D09060], v3);
  sub_21BE2654C();
  sub_21BE2661C();
  swift_allocObject();
  *(&self->super.isa + v8) = sub_21BE2662C();
  Session = type metadata accessor for FindMyLocateSession();
  v11.receiver = self;
  v11.super_class = Session;
  return [(FindMyLocateSession *)&v11 init];
}

@end