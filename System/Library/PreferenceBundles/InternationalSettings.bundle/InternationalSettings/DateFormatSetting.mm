@interface DateFormatSetting
- (NSString)_dateFormat;
- (NSString)dateFormat;
- (PSSpecifier)dateFormatSpecifier;
- (void)setDateFormat:(id)format;
- (void)setDateFormatAndUpdateFooterTextWithDateFormat:(id)format specifier:(id)specifier;
- (void)set_dateFormat:(id)format;
@end

@implementation DateFormatSetting

- (NSString)_dateFormat
{
  if (*(self + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8))
  {

    v2 = sub_211BC();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)set_dateFormat:(id)format
{
  if (format)
  {
    v4 = sub_211EC();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat);
  *v6 = v4;
  v6[1] = v5;
}

- (NSString)dateFormat
{
  swift_getKeyPath();
  sub_16CF0();
  selfCopy = self;
  sub_2107C();

  v4 = *(selfCopy + OBJC_IVAR____TtC21InternationalSettings17DateFormatSetting__dateFormat + 8);

  if (v4)
  {
    v5 = sub_211BC();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setDateFormat:(id)format
{
  if (format)
  {
    v4 = sub_211EC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_158C0(v4, v6);
}

- (PSSpecifier)dateFormatSpecifier
{
  selfCopy = self;
  v3 = sub_163C8();

  return v3;
}

- (void)setDateFormatAndUpdateFooterTextWithDateFormat:(id)format specifier:(id)specifier
{
  v6 = sub_211EC();
  v8 = v7;
  specifierCopy = specifier;
  selfCopy = self;
  sub_175E4(v6, v8, specifierCopy);
}

@end