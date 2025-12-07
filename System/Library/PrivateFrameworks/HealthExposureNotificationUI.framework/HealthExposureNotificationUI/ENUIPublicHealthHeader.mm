@interface ENUIPublicHealthHeader
- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)init;
- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)initWithTitle:(id)title subtitle:(id)subtitle backgroundColor:(id)color textColor:(id)textColor logoURL:(id)l style:(int64_t)style;
@end

@implementation ENUIPublicHealthHeader

- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)initWithTitle:(id)title subtitle:(id)subtitle backgroundColor:(id)color textColor:(id)textColor logoURL:(id)l style:(int64_t)style
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F453E10, &unk_251708160);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - v14;
  v16 = sub_251703164();
  v18 = v17;
  v19 = sub_251703164();
  v21 = v20;
  if (l)
  {
    sub_251702D84();
    v22 = sub_251702DA4();
    (*(*(v22 - 8) + 56))(v15, 0, 1, v22);
  }

  else
  {
    v23 = sub_251702DA4();
    (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  }

  v24 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_title);
  *v24 = v16;
  v24[1] = v18;
  v25 = (self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_subtitle);
  *v25 = v19;
  v25[1] = v21;
  *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_backgroundColor) = color;
  *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_textColor) = textColor;
  sub_25169479C(v15, self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_logoURL);
  *(self + OBJC_IVAR____TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader_style) = style;
  v26 = type metadata accessor for ENUIPublicHealthHeader(0);
  v31.receiver = self;
  v31.super_class = v26;
  colorCopy = color;
  textColorCopy = textColor;
  v29 = [(ENUIPublicHealthHeader *)&v31 init];
  sub_25168B718(v15, &qword_27F453E10, &unk_251708160);
  return v29;
}

- (_TtC28HealthExposureNotificationUI22ENUIPublicHealthHeader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end