@interface AAIdentityStore
- (AAIdentityStore)init;
- (void)fetchIdentityFor:(ACAccount *)for completionHandler:(id)handler;
@end

@implementation AAIdentityStore

- (AAIdentityStore)init
{
  type metadata accessor for IdentityDaemonConnection();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB980AF8, &qword_1B7070950);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v3 + 2) = v4;
  *(v3 + 3) = 0;
  *(&self->super.isa + OBJC_IVAR___AAIdentityStore_daemonConnection) = v3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for IdentityStore();
  return [(AAIdentityStore *)&v6 init];
}

- (void)fetchIdentityFor:(ACAccount *)for completionHandler:(id)handler
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB980B10, &qword_1B70709A0);
  MEMORY[0x1EEE9AC00]();
  v8 = &v16 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  v10[2] = for;
  v10[3] = v9;
  v10[4] = self;
  v11 = sub_1B70558A0();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B70709B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B70709C0;
  v13[5] = v12;
  forCopy = for;
  selfCopy = self;
  sub_1B700AC44(0, 0, v8, &unk_1B70709D0, v13);
}

@end