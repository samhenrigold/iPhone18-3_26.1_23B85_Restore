@interface ICSTipsHelper
+ (void)donateEventAnnouceCallsEnabled;
- (_TtC17ICSSettingsBundle13ICSTipsHelper)init;
@end

@implementation ICSTipsHelper

+ (void)donateEventAnnouceCallsEnabled
{
  sub_3938(&qword_11008, &qword_80E0);
  __chkstk_darwin();
  v3 = &v6 - v2;
  v4 = sub_560C();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  sub_3D10(0, 0, v3, &unk_8120, v5);
}

- (_TtC17ICSSettingsBundle13ICSTipsHelper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ICSTipsHelper();
  return [(ICSTipsHelper *)&v3 init];
}

@end