@interface NetworkInfoDiagnosticExtension.RMDashRFDelegate
- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l;
- (_TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate)init;
@end

@implementation NetworkInfoDiagnosticExtension.RMDashRFDelegate

- (BOOL)fileManager:(id)manager shouldRemoveItemAtURL:(id)l
{
  v5 = sub_10000D02C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CFEC();
  selfCopy = self;
  sub_10000CFFC();
  v10 = *(&selfCopy->super.isa + OBJC_IVAR____TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate_basePath);
  v11 = *&selfCopy->basePath[OBJC_IVAR____TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate_basePath];

  v15._countAndFlagsBits = v10;
  v15._object = v11;
  v12 = sub_10000D2DC(v15);

  (*(v6 + 8))(v8, v5);
  return v12;
}

- (_TtCC30NetworkInfoDiagnosticExtension30NetworkInfoDiagnosticExtensionP33_A8013760F8D41FC9CE2006DC6E22100C16RMDashRFDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end