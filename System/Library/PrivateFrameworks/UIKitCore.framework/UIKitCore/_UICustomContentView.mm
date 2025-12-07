@interface _UICustomContentView
- (BOOL)supportsConfiguration:(id)configuration;
- (NSString)description;
- (UIContentConfiguration)configuration;
- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithCoder:(id)coder;
- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithFrame:(CGRect)frame;
- (void)setConfiguration:(id)configuration;
@end

@implementation _UICustomContentView

- (UIContentConfiguration)configuration
{
  type metadata accessor for _UICustomContentConfiguration();
  v4 = v3;
  v5 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView);
  ObjectType = swift_getObjectType();
  v7 = *(v5 + 8);
  selfCopy = self;
  v7(v19, ObjectType, v5);
  v9 = v20;
  v10 = v21;
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v19, v20);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_188C7D408(v14, v4, v9, v10);

  __swift_destroy_boxed_opaque_existential_0Tm(v19);

  return v16;
}

- (BOOL)supportsConfiguration:(id)configuration
{
  type metadata accessor for _UICustomContentConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView);
    ObjectType = swift_getObjectType();
    v8 = OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration;
    v9 = *(v6 + 32);
    swift_unknownObjectRetain();
    selfCopy = self;
    v11 = v9(v5 + v8, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (void)setConfiguration:(id)configuration
{
  type metadata accessor for _UICustomContentConfiguration();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView);
    ObjectType = swift_getObjectType();
    sub_188A53994(v5 + OBJC_IVAR____TtC5UIKit29_UICustomContentConfiguration_wrappedConfiguration, v10);
    v8 = *(v6 + 16);
    swift_unknownObjectRetain();
    selfCopy = self;
    v8(v10, ObjectType, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithCoder:(id)coder
{
  result = sub_18A4A8398();
  __break(1u);
  return result;
}

- (NSString)description
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView_wrappedContentView);
  ObjectType = swift_getObjectType();
  v7 = v2;
  WitnessTable = swift_getWitnessTable();
  sub_188E43C18(&v7, ObjectType, WitnessTable);
  v5 = sub_18A4A7258();

  return v5;
}

- (_TtC5UIKitP33_032FEC8E4679353098E3539CFE2B632720_UICustomContentView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end