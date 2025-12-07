@interface EmitNavigationEventWrapper
+ (void)generalEmitNavigationEventForSystemSettingWithGraphicIconIdentifier:(id)identifier title:(id)title localizedNavigationComponents:(id)components deepLink:(id)link;
- (_TtC17GeneralSettingsUI26EmitNavigationEventWrapper)init;
@end

@implementation EmitNavigationEventWrapper

+ (void)generalEmitNavigationEventForSystemSettingWithGraphicIconIdentifier:(id)identifier title:(id)title localizedNavigationComponents:(id)components deepLink:(id)link
{
  v7 = sub_21CF553F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_21CF55634();
  v13 = v12;
  sub_21CF5027C();
  v14 = sub_21CF55674();
  sub_21CF553E4();
  titleCopy = title;
  sub_21CF4FE78(v11, v13, titleCopy, v14, v10);

  (*(v8 + 8))(v10, v7);
}

- (_TtC17GeneralSettingsUI26EmitNavigationEventWrapper)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for EmitNavigationEventWrapper();
  return [(EmitNavigationEventWrapper *)&v3 init];
}

@end