@interface MSSetupBundle
- (MSSetupBundle)initWithCoder:(id)coder;
- (MSSetupBundle)initWithHomeID:(id)d homeUserID:(id)iD;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MSSetupBundle

- (MSSetupBundle)initWithHomeID:(id)d homeUserID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = MSSetupBundle;
  v9 = [(MSSetupBundle *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeID, d);
    objc_storeStrong(&v10->_homeUserID, iD);
  }

  return v10;
}

- (MSSetupBundle)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (!self || ([coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Home_ID"], v5 = objc_claimAutoreleasedReturnValue(), homeID = self->_homeID, self->_homeID = v5, homeID, self->_homeID) && (objc_msgSend(coderCopy, "decodeObjectOfClass:forKey:", objc_opt_class(), @"Home_User_ID"), v7 = objc_claimAutoreleasedReturnValue(), homeUserID = self->_homeUserID, self->_homeUserID = v7, homeUserID, self->_homeUserID))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  homeID = self->_homeID;
  coderCopy = coder;
  [coderCopy encodeObject:homeID forKey:@"Home_ID"];
  [coderCopy encodeObject:self->_homeUserID forKey:@"Home_User_ID"];
}

@end