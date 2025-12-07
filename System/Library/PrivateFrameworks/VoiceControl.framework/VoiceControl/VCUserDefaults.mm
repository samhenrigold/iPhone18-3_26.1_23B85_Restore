@interface VCUserDefaults
- (_TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults)initWithSuiteName:(id)name;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation VCUserDefaults

- (_TtC12VoiceControlP33_B83C1536E71AFC7DD8A14C611F75D0B914VCUserDefaults)initWithSuiteName:(id)name
{
  if (name)
  {
    v3 = sub_2723FE5B4();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_2723E80E0(v3, v4);
}

- (id)objectForKey:(id)key
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for VCUserDefaults();
  v4 = v14.receiver;
  if ([(VCUserDefaults *)&v14 objectForKey:key])
  {
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {

    v12 = 0u;
    v13 = 0u;
  }

  v15 = v12;
  v16 = v13;
  v5 = *(&v13 + 1);
  if (*(&v13 + 1))
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    v7 = *(*(&v13 + 1) - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_2723FEC34();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2723FE994();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    keyCopy2 = key;
    selfCopy2 = self;
  }

  v10 = sub_2723FE5B4();
  v12 = v11;

  sub_2723E8A40(v13, v10, v12);

  sub_2723EF760(v13);
}

@end