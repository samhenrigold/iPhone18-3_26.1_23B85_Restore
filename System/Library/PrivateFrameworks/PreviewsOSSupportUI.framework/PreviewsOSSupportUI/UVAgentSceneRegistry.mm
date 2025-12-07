@interface UVAgentSceneRegistry
+ (void)deliverScene:(id)scene forIdentifier:(id)identifier;
- (_TtC19PreviewsOSSupportUI20UVAgentSceneRegistry)init;
@end

@implementation UVAgentSceneRegistry

+ (void)deliverScene:(id)scene forIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD95708, &qword_25F52D1D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_25F52A460();
  v10 = v9;
  v11 = sub_25F52A550();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  sub_25F52A530();
  sceneCopy = scene;
  v13 = sub_25F52A520();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  v14[2] = v13;
  v14[3] = v15;
  v14[4] = sceneCopy;
  v14[5] = v8;
  v14[6] = v10;
  sub_25F526DF8(0, 0, v7, &unk_25F52D278, v14);
}

- (_TtC19PreviewsOSSupportUI20UVAgentSceneRegistry)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for UVAgentSceneRegistry();
  return [(UVAgentSceneRegistry *)&v3 init];
}

@end