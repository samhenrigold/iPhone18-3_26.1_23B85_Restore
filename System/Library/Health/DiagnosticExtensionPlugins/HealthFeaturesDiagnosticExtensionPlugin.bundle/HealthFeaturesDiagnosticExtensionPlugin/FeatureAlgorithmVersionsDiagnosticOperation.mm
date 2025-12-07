@interface FeatureAlgorithmVersionsDiagnosticOperation
- (FeatureAlgorithmVersionsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l;
- (NSString)reportFilename;
- (void)run;
@end

@implementation FeatureAlgorithmVersionsDiagnosticOperation

- (NSString)reportFilename
{
  v2 = sub_28A0();

  return v2;
}

- (void)run
{
  selfCopy = self;
  sub_F38();
}

- (FeatureAlgorithmVersionsDiagnosticOperation)initWithAttachmentDirectoryURL:(id)l
{
  ObjectType = swift_getObjectType();
  v5 = sub_2790();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2780();
  sub_2770(v9);
  v11 = v10;
  v14.receiver = self;
  v14.super_class = ObjectType;
  v12 = [(FeatureAlgorithmVersionsDiagnosticOperation *)&v14 initWithAttachmentDirectoryURL:v10];

  (*(v6 + 8))(v8, v5);
  return v12;
}

@end