@interface IMServiceAgent
- (id)myPictureData;
@end

@implementation IMServiceAgent

- (id)myPictureData
{
  v2 = +[IMAccountController sharedInstance];
  bestAccountForStatus = [v2 bestAccountForStatus];
  myPictureData = [bestAccountForStatus myPictureData];

  return myPictureData;
}

@end