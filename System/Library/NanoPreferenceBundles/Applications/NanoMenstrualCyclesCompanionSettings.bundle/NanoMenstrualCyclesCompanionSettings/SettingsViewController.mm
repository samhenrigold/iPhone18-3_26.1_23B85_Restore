@interface SettingsViewController
- (_TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)specifiers;
- (uint64_t)openHealthAppOnboarding;
- (uint64_t)openHealthAppSettings;
- (uint64_t)openHeartRateLearnMore;
- (uint64_t)openWristTemperatureLearnMore;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SettingsViewController

- (_TtC36NanoMenstrualCyclesCompanionSettings22SettingsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_8A3C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_51A4(bundle, v6, bundle);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_5474(appear);
}

- (id)specifiers
{
  selfCopy = self;
  sub_5950();
  v4 = v3;

  if (v4)
  {
    v5.super.isa = sub_8ACC().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

- (uint64_t)openHeartRateLearnMore
{
  sub_883C();
  __chkstk_darwin();
  sub_89DC();
  __chkstk_darwin();
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin();
  v1 = &v12 - v0;
  sub_89EC();
  type metadata accessor for SettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_882C();
  sub_8A4C();
  sub_880C();

  v4 = sub_881C();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sharedApplication = [objc_opt_self() sharedApplication];
    sub_87FC(v8);
    v10 = v9;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey, &unk_9504);
    isa = sub_899C().super.isa;

    [sharedApplication openURL:v10 options:isa completionHandler:0];

    return (*(v5 + 8))(v1, v4);
  }

  return result;
}

- (uint64_t)openWristTemperatureLearnMore
{
  sub_883C();
  __chkstk_darwin();
  sub_89DC();
  __chkstk_darwin();
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin();
  v1 = &v12 - v0;
  sub_89EC();
  type metadata accessor for SettingsViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_882C();
  sub_8A4C();
  sub_880C();

  v4 = sub_881C();
  v5 = *(v4 - 8);
  result = (*(v5 + 48))(v1, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sharedApplication = [objc_opt_self() sharedApplication];
    sub_87FC(v8);
    v10 = v9;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey, &unk_9504);
    isa = sub_899C().super.isa;

    [sharedApplication openURL:v10 options:isa completionHandler:0];

    return (*(v5 + 8))(v1, v4);
  }

  return result;
}

- (uint64_t)openHealthAppOnboarding
{
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin();
  v1 = &v10 - v0;
  sub_880C();
  v2 = sub_881C();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sharedApplication = [objc_opt_self() sharedApplication];
    sub_87FC(v6);
    v8 = v7;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey, &unk_9504);
    isa = sub_899C().super.isa;

    [sharedApplication openURL:v8 options:isa completionHandler:0];

    return (*(v3 + 8))(v1, v2);
  }

  return result;
}

- (uint64_t)openHealthAppSettings
{
  sub_84B8(0, &qword_106F8, &type metadata accessor for URL, &type metadata accessor for Optional);
  __chkstk_darwin();
  v1 = &v10 - v0;
  sub_880C();
  v2 = sub_881C();
  v3 = *(v2 - 8);
  result = (*(v3 + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sharedApplication = [objc_opt_self() sharedApplication];
    sub_87FC(v6);
    v8 = v7;
    sub_77F8(&_swiftEmptyArrayStorage);
    type metadata accessor for OpenExternalURLOptionsKey(0);
    sub_8700(&qword_106B0, type metadata accessor for OpenExternalURLOptionsKey, &unk_9504);
    isa = sub_899C().super.isa;

    [sharedApplication openURL:v8 options:isa completionHandler:0];

    return (*(v3 + 8))(v1, v2);
  }

  return result;
}

@end