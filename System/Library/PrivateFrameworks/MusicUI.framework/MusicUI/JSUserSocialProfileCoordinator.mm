@interface JSUserSocialProfileCoordinator
- (JSValue)userProfile;
- (id)fetchIsCloudAndMediaAccountIdentical;
- (id)fetchUserSocialProfile;
@end

@implementation JSUserSocialProfileCoordinator

- (JSValue)userProfile
{
  selfCopy = self;
  v3 = sub_216A70470(sub_216A72F20);

  return v3;
}

- (id)fetchUserSocialProfile
{
  selfCopy = self;
  v3 = sub_216A70470(sub_216A72BDC);

  return v3;
}

- (id)fetchIsCloudAndMediaAccountIdentical
{
  selfCopy = self;
  v3 = sub_216A70470(sub_216A72BA4);

  return v3;
}

@end