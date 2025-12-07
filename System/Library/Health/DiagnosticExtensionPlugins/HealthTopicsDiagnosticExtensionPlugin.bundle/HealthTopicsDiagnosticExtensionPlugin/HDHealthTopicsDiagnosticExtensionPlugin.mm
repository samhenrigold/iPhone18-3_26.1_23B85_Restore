@interface HDHealthTopicsDiagnosticExtensionPlugin
- (HDHealthTopicsDiagnosticExtensionPlugin)init;
- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)l;
@end

@implementation HDHealthTopicsDiagnosticExtensionPlugin

- (HDHealthTopicsDiagnosticExtensionPlugin)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HDHealthTopicsDiagnosticExtensionPlugin *)&v3 init];
}

- (id)diagnosticOperationsWithAttachmentDirectoryURL:(id)l
{
  v3 = sub_31CC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_31BC();
  sub_310C();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_3780;
  v8 = objc_allocWithZone(type metadata accessor for HealthTopicsDiagnosticOperation());
  sub_31AC(v9);
  v11 = v10;
  v12 = [v8 initWithAttachmentDirectoryURL:v10];

  *(v7 + 32) = v12;
  (*(v4 + 8))(v6, v3);
  sub_3160();
  v13.super.isa = sub_32AC().super.isa;

  return v13.super.isa;
}

@end