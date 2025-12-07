@interface _UICustomContentConfiguration
- (NSString)description;
- (_TtC5UIKit29_UICustomContentConfiguration)init;
- (id)_wrappedConfigurationIdentifier;
- (id)makeContentView;
- (id)updatedConfigurationForState:(id)state;
@end

@implementation _UICustomContentConfiguration

- (id)makeContentView
{
  v3 = (&self->super.isa + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = *(v5 + 8);
  selfCopy = self;
  v8 = v6(v4, v5);
  v10 = v9;
  type metadata accessor for _UICustomContentView();
  v12 = v11;
  v13 = objc_allocWithZone(v11);
  v14 = &v13[OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView];
  *v14 = v8;
  *(v14 + 1) = v10;
  v18.receiver = v13;
  v18.super_class = v12;
  v15 = v8;
  v16 = [(_UICustomContentConfiguration *)&v18 initWithFrame:0.0, 0.0, 0.0, 0.0];

  return v16;
}

- (id)updatedConfigurationForState:(id)state
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_188C7CFE4(state);
  swift_unknownObjectRelease();

  return v6;
}

- (id)_wrappedConfigurationIdentifier
{
  selfCopy = self;
  sub_188F473C0();

  v3 = sub_18A4A7258();

  return v3;
}

- (NSString)description
{
  sub_188A53994(self + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9374D8, &qword_18A652A80);
  sub_18A4A72F8();
  v2 = sub_18A4A7258();

  return v2;
}

- (_TtC5UIKit29_UICustomContentConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end