@interface ReviewExtensionService
- (void)loadWith:(id)with bagProfile:(id)profile bagProfileVersion:(id)version;
@end

@implementation ReviewExtensionService

- (void)loadWith:(id)with bagProfile:(id)profile bagProfileVersion:(id)version
{
  v7 = sub_1BB1DD378();
  v9 = v8;
  v10 = sub_1BB1DD378();
  v12 = v11;
  withCopy = with;
  selfCopy = self;
  sub_1BB1B8264(withCopy, v7, v9, v10, v12);
}

@end