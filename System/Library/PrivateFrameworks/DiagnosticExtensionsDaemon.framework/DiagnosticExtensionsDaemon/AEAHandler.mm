@interface AEAHandler
+ (BOOL)encryptWithSourceURL:(id)l destinationURL:(id)rL;
- (_TtC26DiagnosticExtensionsDaemon10AEAHandler)init;
@end

@implementation AEAHandler

+ (BOOL)encryptWithSourceURL:(id)l destinationURL:(id)rL
{
  v4 = sub_248B4B6C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  sub_248B4B6B8();
  sub_248B4B6B8();
  v11 = _s26DiagnosticExtensionsDaemon10AEAHandlerC7encrypt9sourceURL011destinationG0Sb10Foundation0G0V_AItFZ_0(v10, v8);
  v12 = *(v5 + 8);
  v12(v8, v4);
  v12(v10, v4);
  return v11 & 1;
}

- (_TtC26DiagnosticExtensionsDaemon10AEAHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AEAHandler();
  return [(AEAHandler *)&v3 init];
}

@end