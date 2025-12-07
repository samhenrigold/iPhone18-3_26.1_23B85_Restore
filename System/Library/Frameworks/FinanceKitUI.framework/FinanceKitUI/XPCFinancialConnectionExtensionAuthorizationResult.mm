@interface XPCFinancialConnectionExtensionAuthorizationResult
- (XPCFinancialConnectionExtensionAuthorizationResult)init;
- (XPCFinancialConnectionExtensionAuthorizationResult)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCFinancialConnectionExtensionAuthorizationResult

- (XPCFinancialConnectionExtensionAuthorizationResult)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_23865FD74(&qword_27DF12818, type metadata accessor for FinancialConnectionExtensionAuthorizationResult.XPC, &unk_23877B138);
  v7 = sub_23865FDB8(v4, v5, v6);
  sub_23865FE0C(v7, v8, v9);
  coderCopy = coder;
  v11 = sub_238758B00();
  swift_deallocPartialClassInstance();
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  swift_getObjectType();
  v5 = sub_23865FD74(&qword_27DF12818, type metadata accessor for FinancialConnectionExtensionAuthorizationResult.XPC, &unk_23877B138);
  v8 = sub_23865FDB8(v5, v6, v7);
  sub_23865FE0C(v8, v9, v10);
  coderCopy = coder;
  selfCopy = self;
  sub_238758B10();
}

- (XPCFinancialConnectionExtensionAuthorizationResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end