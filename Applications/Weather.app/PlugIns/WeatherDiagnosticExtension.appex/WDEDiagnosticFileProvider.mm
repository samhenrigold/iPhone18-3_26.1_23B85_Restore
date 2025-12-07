@interface WDEDiagnosticFileProvider
- (id)exportDirectoryAndReturnError:(id *)error;
- (id)files;
@end

@implementation WDEDiagnosticFileProvider

- (id)files
{
  selfCopy = self;
  DiagnosticFileProvider.files()();

  v3.super.isa = sub_1000043A4().super.isa;

  return v3.super.isa;
}

- (id)exportDirectoryAndReturnError:(id *)error
{
  v4 = sub_100004144();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  DiagnosticFileProvider.exportDirectory()(v7);

  sub_100004114(v9);
  v11 = v10;
  (*(v5 + 8))(v7, v4);

  return v11;
}

@end