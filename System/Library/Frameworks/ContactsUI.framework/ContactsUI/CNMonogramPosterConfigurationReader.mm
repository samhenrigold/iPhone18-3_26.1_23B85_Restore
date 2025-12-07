@interface CNMonogramPosterConfigurationReader
+ (id)monogramPosterConfigurationDataFromUserInfo:(id)info;
- (NSString)initials;
- (UIColor)backgroundColor;
- (_TtC10ContactsUI35CNMonogramPosterConfigurationReader)init;
@end

@implementation CNMonogramPosterConfigurationReader

- (UIColor)backgroundColor
{
  sub_199A9E488();
  selfCopy = self;
  sub_199DF7E7C();
  v4 = sub_199DFA4AC();

  return v4;
}

- (NSString)initials
{
  selfCopy = self;
  sub_199DF7E8C();
  v3 = sub_199DF9F5C();

  return v3;
}

+ (id)monogramPosterConfigurationDataFromUserInfo:(id)info
{
  v3 = sub_199DF9E9C();
  v5 = sub_199A9ED44(v3, v4);
  v7 = v6;

  if (v7 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v9 = sub_199DF71DC();
    sub_199A9EF20(v5, v7);
    v8 = v9;
  }

  return v8;
}

- (_TtC10ContactsUI35CNMonogramPosterConfigurationReader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end