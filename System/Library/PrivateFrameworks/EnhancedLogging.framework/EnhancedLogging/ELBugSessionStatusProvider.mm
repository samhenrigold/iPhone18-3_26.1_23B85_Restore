@interface ELBugSessionStatusProvider
- (void)collectionDidCompleteWithSessionIdentifier:(id)identifier;
@end

@implementation ELBugSessionStatusProvider

- (void)collectionDidCompleteWithSessionIdentifier:(id)identifier
{
  v4 = sub_24A0761C8();
  v6 = v5;
  selfCopy = self;
  sub_24A06389C(v4, v6);
}

@end