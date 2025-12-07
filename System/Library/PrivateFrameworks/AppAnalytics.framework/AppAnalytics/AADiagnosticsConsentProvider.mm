@interface AADiagnosticsConsentProvider
+ (id)custom:(id)custom;
- (AADiagnosticsConsentProvider)init;
@end

@implementation AADiagnosticsConsentProvider

+ (id)custom:(id)custom
{
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v5 = type metadata accessor for DiagnosticsConsentProvider(0);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(custom);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B6AAFDAC;
  *(v11 + 24) = v10;

  sub_1B6AB8E30();
  v12 = &v8[*(v6 + 28)];
  *v12 = sub_1B6AB0030;
  v12[1] = v11;
  v13 = objc_allocWithZone(ObjCClassMetadata);
  sub_1B699A394(v8, v13 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, type metadata accessor for DiagnosticsConsentProvider);
  v16.receiver = v13;
  v16.super_class = ObjCClassMetadata;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  sub_1B6984DF8(v8, type metadata accessor for DiagnosticsConsentProvider);

  return v14;
}

- (AADiagnosticsConsentProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end