@interface VCSettingsObjC
+ (VCSettingsObjC)shared;
+ (id)voiceControlLocaleIdentifierFromString:(id)string;
- (BOOL)carPlayDebugOverlayUIEnabled;
- (BOOL)enabled;
- (BOOL)showUserHints;
- (NSArray)supportedLocales;
- (NSLocale)activeLocale;
- (NSString)alwaysShowOverlayType;
- (VCSettingsObjC)init;
- (id)bestSupportedLocaleFor:(id)for;
- (id)engineForLocale:(id)locale;
- (void)setAlwaysShowOverlayType:(id)type;
- (void)setEnabled:(BOOL)enabled;
- (void)setPreferredLocale:(id)locale;
@end

@implementation VCSettingsObjC

+ (VCSettingsObjC)shared
{
  if (qword_280893E10 != -1)
  {
    swift_once();
  }

  v3 = qword_280895EF8;

  return v3;
}

- (VCSettingsObjC)init
{
  v3.receiver = self;
  v3.super_class = VCSettingsObjC;
  return [(VCSettingsObjC *)&v3 init];
}

- (BOOL)enabled
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return _AXSCommandAndControlEnabled() != 0;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  if (qword_280893DC8 == -1)
  {
  }

  else
  {
    enabledCopy2 = enabled;
    swift_once();
    enabledCopy = enabledCopy2;
  }

  MEMORY[0x2821EFF28](enabledCopy);
}

- (NSArray)supportedLocales
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  if (qword_280893E00 != -1)
  {
    swift_once();
  }

  v2 = sub_2723FE734();

  return v2;
}

- (id)bestSupportedLocaleFor:(id)for
{
  v4 = sub_2723FE344();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (for)
  {
    v8 = sub_2723FE5B4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  if (qword_280893DC8 != -1)
  {
    v13 = v8;
    swift_once();
    v8 = v13;
  }

  VCSettings.bestSupportedLocale(for:)(v8, v10, v7);

  v11 = sub_2723FE304();
  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)engineForLocale:(id)locale
{
  v3 = sub_2723FE5B4();
  v5 = v4;
  if (qword_280893DC8 != -1)
  {
    v10 = v3;
    swift_once();
    v3 = v10;
  }

  v6 = v5;
  VCSettings.engine(forLocale:)(*&v3);

  if (v11 == 2)
  {
    v7 = 0;
  }

  else
  {
    v8 = sub_2723FE574();

    v7 = v8;
  }

  return v7;
}

- (void)setPreferredLocale:(id)locale
{
  if (locale)
  {
    v4 = sub_2723FE5B4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  _sSo14VCSettingsObjCC12VoiceControlE18setPreferredLocaleyySSSgF_0(v4, v6);
}

- (NSLocale)activeLocale
{
  v2 = sub_2723FE344();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v6 = sub_2723EC124();
  VCSettings.bestSupportedLocale(for:)(v6, v7, v5);

  v8 = sub_2723FE304();
  (*(v3 + 8))(v5, v2);

  return v8;
}

+ (id)voiceControlLocaleIdentifierFromString:(id)string
{
  v3 = sub_2723FE2D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2723FE5B4();
  (*(v4 + 104))(v6, *MEMORY[0x277CC9668], v3);
  v7 = sub_2723FE2C4();
  v9 = v8;
  (*(v4 + 8))(v6, v3);
  v12[4] = v7;
  v12[5] = v9;
  v12[2] = 45;
  v12[3] = 0xE100000000000000;
  v12[0] = 95;
  v12[1] = 0xE100000000000000;
  sub_2723CD24C();
  sub_2723FE984();

  v10 = sub_2723FE574();

  return v10;
}

- (NSString)alwaysShowOverlayType
{
  _sSo14VCSettingsObjCC12VoiceControlE21alwaysShowOverlayTypeSSvg_0();
  v2 = sub_2723FE574();

  return v2;
}

- (void)setAlwaysShowOverlayType:(id)type
{
  v3 = sub_2723FE5B4();
  if (qword_280893DC8 != -1)
  {
    v6 = v3;
    v7 = v4;
    swift_once();
    v4 = v7;
    v3 = v6;
  }

  VCOverlayType.init(rawValue:)(*&v3);
  v5 = v9;
  if (v9 == 9)
  {
    v5 = 0;
  }

  v8 = v5;
  VCSettings.alwaysShowOverlayType.setter(&v8);
}

- (BOOL)showUserHints
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  return sub_2723EC990() == 3;
}

- (BOOL)carPlayDebugOverlayUIEnabled
{
  if (qword_280893DC8 != -1)
  {
    swift_once();
  }

  v2 = *(qword_280894080 + OBJC_IVAR____TtC12VoiceControl10VCSettings_defaultsMain);
  if (v2)
  {
    v3 = v2;
    v4 = sub_2723E842C(0xAu);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

@end