@interface SERDataSource
- (NSString)description;
- (_TtC9SEService13SERDataSource)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SERDataSource

- (NSString)description
{
  sub_1C7C7CFB4();
  swift_allocObject();
  selfCopy = self;
  sub_1C7C7CFA4();
  type metadata accessor for SERDataSource();
  sub_1C7C5CA10(&qword_1EC264888, type metadata accessor for SERDataSource, &protocol conformance descriptor for SERDataSource);
  v4 = sub_1C7C7CF94();
  v6 = v5;
  sub_1C7C7D034();

  sub_1C7BDF778(v4, v6);

  v7 = sub_1C7C7D2E4();

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1C7C58B20(coderCopy);
}

- (_TtC9SEService13SERDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end