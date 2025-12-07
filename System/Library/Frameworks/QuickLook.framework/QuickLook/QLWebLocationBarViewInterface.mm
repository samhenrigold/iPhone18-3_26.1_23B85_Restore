@interface QLWebLocationBarViewInterface
+ (id)makeLocationBarUI:(id)i;
- (_TtC9QuickLook29QLWebLocationBarViewInterface)init;
@end

@implementation QLWebLocationBarViewInterface

+ (id)makeLocationBarUI:(id)i
{
  v3 = type metadata accessor for QLWebLocationBarView(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - v7;
  v9 = sub_23A7EDF64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A7EDF44();
  (*(v10 + 16))(v8, v12, v9);
  sub_23A7ABC3C(v8, v6);
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFA9718, &unk_23A7FD680));
  v14 = sub_23A7EE564();
  sub_23A7ABCA0(v8);
  (*(v10 + 8))(v12, v9);

  return v14;
}

- (_TtC9QuickLook29QLWebLocationBarViewInterface)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for QLWebLocationBarViewInterface();
  return [(QLWebLocationBarViewInterface *)&v3 init];
}

@end