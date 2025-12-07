@interface AssertionClient
- (void)didConnect;
- (void)didInvalidate:(id)invalidate;
@end

@implementation AssertionClient

- (void)didInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  selfCopy = self;
  v6 = sub_26579E344();
  v8 = v7;

  v9 = sub_26579E334();
  sub_26579E274();
  swift_allocObject();
  sub_26579E264();
  v10 = sub_26579E344();
  v12 = v11;
  sub_26578A710();
  sub_26579E254();
  sub_26578422C(v10, v12);

  AssertionClient.didInvalidate(invalidationMessage:)(&v13);

  sub_26578422C(v6, v8);
}

- (void)didConnect
{
  selfCopy = self;
  AssertionClient.didConnect()();
}

@end