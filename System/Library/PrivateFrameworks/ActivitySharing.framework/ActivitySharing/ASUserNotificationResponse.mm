@interface ASUserNotificationResponse
- (ASUserNotificationResponse)initWithActionIdentifier:(id)identifier userInfo:(id)info;
- (ASUserNotificationResponse)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASUserNotificationResponse

- (ASUserNotificationResponse)initWithActionIdentifier:(id)identifier userInfo:(id)info
{
  identifierCopy = identifier;
  infoCopy = info;
  v12.receiver = self;
  v12.super_class = ASUserNotificationResponse;
  v9 = [(ASUserNotificationResponse *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_actionIdentifier, identifier);
    objc_storeStrong(&v10->_userInfo, info);
  }

  return v10;
}

- (ASUserNotificationResponse)initWithCoder:(id)coder
{
  v15[4] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = ASUserNotificationResponse;
  v5 = [(ASUserNotificationResponse *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:4];
    v10 = [v8 setWithArray:v9];

    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"userInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  actionIdentifier = self->_actionIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];
  [coderCopy encodeObject:self->_userInfo forKey:@"userInfo"];
}

@end