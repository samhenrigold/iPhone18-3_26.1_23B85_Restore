@interface DMFUser
- (id)initWithUser:(id)user isCurrentUser:(BOOL)currentUser;
@end

@implementation DMFUser

- (id)initWithUser:(id)user isCurrentUser:(BOOL)currentUser
{
  currentUserCopy = currentUser;
  userCopy = user;
  username = [userCopy username];
  dataQuota = [userCopy dataQuota];
  dataUsed = [userCopy dataUsed];
  hasDataToSync = [userCopy hasDataToSync];

  v11 = [(DMFUser *)self initWithUsername:username dataQuota:dataQuota dataUsed:dataUsed hasDataToSync:hasDataToSync isCurrentUser:currentUserCopy];
  return v11;
}

@end