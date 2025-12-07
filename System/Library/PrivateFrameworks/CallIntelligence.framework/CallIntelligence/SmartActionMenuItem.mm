@interface SmartActionMenuItem
- (_TtC16CallIntelligence19SmartActionMenuItem)init;
- (_TtC16CallIntelligence19SmartActionMenuItem)initWithRecommendationId:(id)id actionDescription:(id)description iconType:(id)type;
@end

@implementation SmartActionMenuItem

- (_TtC16CallIntelligence19SmartActionMenuItem)initWithRecommendationId:(id)id actionDescription:(id)description iconType:(id)type
{
  ObjectType = swift_getObjectType();
  v7 = sub_1D2EE3EB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE3E98();
  v11 = sub_1D2EE4A68();
  v13 = v12;
  v14 = sub_1D2EE4A68();
  v16 = v15;
  (*(v8 + 16))(self + OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId, v10, v7);
  v17 = (self + OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription);
  *v17 = v11;
  v17[1] = v13;
  v18 = (self + OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType);
  *v18 = v14;
  v18[1] = v16;
  v21.receiver = self;
  v21.super_class = ObjectType;
  v19 = [(SmartActionMenuItem *)&v21 init];
  (*(v8 + 8))(v10, v7);
  return v19;
}

- (_TtC16CallIntelligence19SmartActionMenuItem)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end