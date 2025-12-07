@interface HDHealthTopicsDiagnosticOperation
- (HDHealthTopicsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l;
- (NSString)reportFilename;
- (void)run;
@end

@implementation HDHealthTopicsDiagnosticOperation

- (HDHealthTopicsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l
{
  v3 = sub_31CC();
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_31BC();
  return sub_11A0(v5);
}

- (NSString)reportFilename
{
  v2 = sub_326C();

  return v2;
}

- (void)run
{
  selfCopy = self;
  sub_155C();
}

@end