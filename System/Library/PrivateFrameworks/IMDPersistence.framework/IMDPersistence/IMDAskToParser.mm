@interface IMDAskToParser
- (BOOL)isValid;
- (IMDAskToParser)init;
- (IMDAskToParser)initWithUrl:(id)url;
- (NSString)notificationText;
@end

@implementation IMDAskToParser

- (IMDAskToParser)initWithUrl:(id)url
{
  v4 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  if (url)
  {
    sub_1B7CFDFB0();
    v7 = sub_1B7CFDFF0();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_1B7CFDFF0();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  return AskToParser.init(url:)(v6);
}

- (BOOL)isValid
{
  v3 = sub_1B7C107FC(&qword_1EBA51FA0, &qword_1B7D0A6D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1B7CFDFF0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B7C487D8(self + OBJC_IVAR___IMDAskToParser_url, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B7AEE190(v5, &qword_1EBA51FA0, &qword_1B7D0A6D0);
    v10 = 0;
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    selfCopy = self;
    v10 = sub_1B7CFE4E0();

    (*(v7 + 8))(v9, v6);
  }

  return v10 & 1;
}

- (NSString)notificationText
{
  if (*(&self->super.isa + OBJC_IVAR___IMDAskToParser_payload) && (v2 = self, v3 = sub_1B7CFE510(), sub_1B7CFE430(), v5 = v4, v2, v3, v5))
  {
    v6 = sub_1B7CFEA30();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (IMDAskToParser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end