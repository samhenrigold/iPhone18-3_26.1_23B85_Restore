@interface KTIDSAccountHolder
- (KTIDSAccountHolder)initWithIDSAccount:(id)account;
- (KTIDSAccountHolder)initWithIDSDSID:(id)d type:(int)type;
@end

@implementation KTIDSAccountHolder

- (KTIDSAccountHolder)initWithIDSDSID:(id)d type:(int)type
{
  v4 = *&type;
  dCopy = d;
  v11.receiver = self;
  v11.super_class = KTIDSAccountHolder;
  v7 = [(KTIDSAccountHolder *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(KTIDSAccountHolder *)v7 setIdsDSID:dCopy];
    [(KTIDSAccountHolder *)v8 setAccountType:v4];
    v9 = v8;
  }

  return v8;
}

- (KTIDSAccountHolder)initWithIDSAccount:(id)account
{
  accountCopy = account;
  profileID = [accountCopy profileID];
  accountType = [accountCopy accountType];

  v7 = [(KTIDSAccountHolder *)self initWithIDSDSID:profileID type:accountType];
  return v7;
}

@end