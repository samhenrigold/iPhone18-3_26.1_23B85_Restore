@interface ATXAppEntity
- (ATXAppEntity)init;
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (int64_t)hash;
@end

@implementation ATXAppEntity

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_226836878();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_2267BCCF8(v8);

  sub_2267A1DC0(v8, &qword_27D7A1AA0, &qword_2268732C0);
  return v6 & 1;
}

- (int64_t)hash
{
  sub_226836C58();
  selfCopy = self;
  sub_226836498();
  sub_226836498();
  sub_226836498();
  v4 = sub_226836C38();

  return v4;
}

- (NSString)debugDescription
{
  v2 = [(ATXAppEntity *)self description];

  return v2;
}

- (NSString)description
{
  selfCopy = self;
  sub_2267BD088();

  v3 = sub_2268363F8();

  return v3;
}

- (ATXAppEntity)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end