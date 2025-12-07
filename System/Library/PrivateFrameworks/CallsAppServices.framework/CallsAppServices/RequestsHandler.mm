@interface RequestsHandler
- (_TtC16CallsAppServices15RequestsHandler)init;
- (void)configurationChanged;
@end

@implementation RequestsHandler

- (_TtC16CallsAppServices15RequestsHandler)init
{
  v11 = sub_1D33DE034();
  v12 = &off_1F4EE7D68;
  v10[0] = sub_1D33DE024();
  v2 = objc_allocWithZone(type metadata accessor for RequestsHandler());
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v10, v11);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v10[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v6 + 16))(v5);
  v7 = sub_1D33D42B0(*v5, 2, v2);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)configurationChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1D33DE9B4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = self;
  selfCopy = self;
  sub_1D333DD88(0, 0, v5, &unk_1D33E5590, v7);
}

@end