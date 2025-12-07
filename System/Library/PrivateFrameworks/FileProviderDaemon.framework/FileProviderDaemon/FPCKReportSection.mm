@interface FPCKReportSection
- (NSDate)date;
- (NSString)build;
- (NSString)description;
- (_TtC18FileProviderDaemon17FPCKReportSection)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FPCKReportSection

- (NSDate)date
{
  v3 = sub_1CF9E5CF8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_date, v3, v5);
  v8 = sub_1CF9E5C48();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSString)build
{
  v2 = *(self + OBJC_IVAR____TtC18FileProviderDaemon17FPCKReportSection_build + 8);

  v3 = sub_1CF9E6888();
  v2, v4, v5, v6, v7, v8, v9, v10;

  return v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_1CF4D639C();
  v4 = v3;

  v5 = sub_1CF9E6888();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1CF4D7040(coderCopy);
}

- (_TtC18FileProviderDaemon17FPCKReportSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end