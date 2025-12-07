@interface AssertionServiceClient
- (BOOL)invalidate:(id)invalidate error:(id *)error;
- (_TtC11SessionCore22AssertionServiceClient)init;
- (void)didInvalidate:(id)invalidate;
@end

@implementation AssertionServiceClient

- (_TtC11SessionCore22AssertionServiceClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)invalidate:(id)invalidate error:(id *)error
{
  invalidateCopy = invalidate;
  selfCopy = self;
  v7 = sub_22D0141EC();
  v9 = v8;

  sub_22D00740C(v7, v9);
  sub_22CEE7524(v7, v9);
  return 1;
}

- (void)didInvalidate:(id)invalidate
{
  v5 = sub_22D0154AC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  invalidateCopy = invalidate;
  selfCopy = self;
  v12 = sub_22D0141EC();
  v14 = v13;

  v15 = sub_22D0141DC();
  sub_22D01549C();

  sub_22D006D8C(v9);
  sub_22CEE7524(v12, v14);
  (*(v6 + 8))(v9, v5);
}

@end