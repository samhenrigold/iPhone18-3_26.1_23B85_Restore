@interface AXLTSettingsManager
+ (AXLTSettingsManager)shared;
- (NSLocale)locale;
- (_TtP19LiveTranscriptionUI27AXLTSettingsManagerProtocol_)delegate;
- (id)fontObjc;
- (void)setLocale:(id)locale;
- (void)updateBackgroundColor;
- (void)updateNubbitIdleOpacity;
- (void)updateTextColor;
@end

@implementation AXLTSettingsManager

- (_TtP19LiveTranscriptionUI27AXLTSettingsManagerProtocol_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSLocale)locale
{
  v3 = sub_100003968(&qword_100063820, &qword_100048F80);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  sub_100006098(self + v6, v5, &qword_100063820, &qword_100048F80);
  v7 = type metadata accessor for Locale();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v5, v7);
    v10 = isa;
  }

  return v10;
}

- (void)setLocale:(id)locale
{
  v5 = sub_100003968(&qword_100063820, &qword_100048F80);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  if (locale)
  {
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = type metadata accessor for Locale();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___AXLTSettingsManager_locale;
  swift_beginAccess();
  selfCopy = self;
  sub_100026EAC(v7, self + v10);
  swift_endAccess();
}

+ (AXLTSettingsManager)shared
{
  if (qword_100062788 != -1)
  {
    swift_once();
  }

  v3 = static AXLTSettingsManager.shared;

  return v3;
}

- (void)updateNubbitIdleOpacity
{
  selfCopy = self;
  sub_100028014();
}

- (void)updateTextColor
{
  selfCopy = self;
  sub_1000282D4();
}

- (void)updateBackgroundColor
{
  selfCopy = self;
  sub_100028D8C();
}

- (id)fontObjc
{
  v2 = objc_opt_self();
  if (qword_100062780 != -1)
  {
    v5 = v2;
    swift_once();
    v2 = v5;
  }

  v3 = [v2 preferredFontForTextStyle:textFontStyle];

  return v3;
}

@end