@interface GenerativeModelAvailabilityControl
- (_TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl)init;
- (int64_t)getAvailability;
@end

@implementation GenerativeModelAvailabilityControl

- (int64_t)getAvailability
{
  v3 = sub_3A04();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl_available, v3);
  v7 = (*(v4 + 88))(v6, v3);
  if (&enum case for GenerativeModelsAvailability.Availability.restricted(_:) && v7 == enum case for GenerativeModelsAvailability.Availability.restricted(_:))
  {
    v8 = 1;
LABEL_7:
    (*(v4 + 8))(v6, v3);
    return v8;
  }

  if (&enum case for GenerativeModelsAvailability.Availability.unavailable(_:) && v7 == enum case for GenerativeModelsAvailability.Availability.unavailable(_:))
  {
    v8 = 2;
    goto LABEL_7;
  }

  if (&enum case for GenerativeModelsAvailability.Availability.available(_:) && v7 == enum case for GenerativeModelsAvailability.Availability.available(_:))
  {
    return 0;
  }

  selfCopy = self;
  result = sub_3B34();
  __break(1u);
  return result;
}

- (_TtC27CallRecordingSettingsBundle34GenerativeModelAvailabilityControl)init
{
  v3 = sub_3A54();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_3A24();
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3A14();
  sub_3A44();
  (*(v8 + 8))(v10, v7);
  sub_3A34();
  (*(v4 + 8))(v6, v3);
  v11 = type metadata accessor for GenerativeModelAvailabilityControl(0);
  v13.receiver = self;
  v13.super_class = v11;
  return [(GenerativeModelAvailabilityControl *)&v13 init];
}

@end