@interface PKPaymentApplicationExpressState
- (BOOL)isExpressEnabled;
- (PKPaymentApplicationExpressState)init;
- (void)setIsExpressEnabled:(BOOL)enabled;
@end

@implementation PKPaymentApplicationExpressState

- (BOOL)isExpressEnabled
{
  KeyPath = swift_getKeyPath();
  v4 = swift_getKeyPath();
  selfCopy = self;
  sub_1BE04D8B4(&v21);
  KeyPath, v6, v7, v8, v9, v10, v11, v12;
  v4, v13, v14, v15, v16, v17, v18, v19;

  return v21;
}

- (void)setIsExpressEnabled:(BOOL)enabled
{
  swift_getKeyPath();
  swift_getKeyPath();
  selfCopy = self;
  sub_1BE04D8C4();
}

- (PKPaymentApplicationExpressState)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end