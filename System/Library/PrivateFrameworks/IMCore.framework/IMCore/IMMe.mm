@interface IMMe
+ (id)firstNameFromFallbackUserName;
+ (id)imHandleForService:(id)service;
+ (id)lastNameFromFallbackUserName;
+ (id)me;
- (BOOL)addIMHandle:(id)handle;
- (BOOL)addLoginIMHandle:(id)handle;
- (BOOL)isIMHandleLoginIMHandle:(id)handle;
- (BOOL)removeIMHandle:(id)handle;
- (BOOL)removeLoginIMHandle:(id)handle;
- (IMHandle)bestIMHandle;
- (IMMe)init;
- (NSArray)emails;
- (NSString)email;
- (NSString)firstName;
- (NSString)fullName;
- (NSString)lastName;
- (NSString)nickname;
- (id)_imHandlesWithIDs:(id)ds onAccount:(id)account;
- (id)description;
- (void)myPictureChanged;
- (void)rebuildIMHandles;
- (void)resetABPerson;
- (void)setCNContact:(id)contact;
@end

@implementation IMMe

+ (id)me
{
  v3 = qword_1ED7677E8;
  if (!qword_1ED7677E8)
  {
    v4 = objc_alloc_init(self);
    v5 = qword_1ED7677E8;
    qword_1ED7677E8 = v4;

    if (qword_1ED7677E8)
    {
      mEMORY[0x1E69A7FD0] = [MEMORY[0x1E69A7FD0] sharedInstance];
      v7 = [mEMORY[0x1E69A7FD0] fetchMeContactWithKeys:MEMORY[0x1E695E0F0]];

      [qword_1ED7677E8 setCNContact:v7];
      v3 = qword_1ED7677E8;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (IMMe)init
{
  v8.receiver = self;
  v8.super_class = IMMe;
  v2 = [(IMMe *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    cnIMHandles = v2->_cnIMHandles;
    v2->_cnIMHandles = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    loginIMHandles = v2->_loginIMHandles;
    v2->_loginIMHandles = v5;
  }

  return v2;
}

- (void)rebuildIMHandles
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  cnIMHandles = self->_cnIMHandles;
  self->_cnIMHandles = v3;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = +[IMAccountController sharedInstance];
  v6 = [v5 activeAccountsForService:0];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        login = [v11 login];
        v13 = [v11 imHandleWithID:login];

        if (v13)
        {
          [(NSMutableArray *)self->_cnIMHandles addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

+ (id)firstNameFromFallbackUserName
{
  v2 = +[IMMe fallbackUserName];
  v3 = [v2 componentsSeparatedByString:@" "];
  __imFirstObject = [v3 __imFirstObject];

  return __imFirstObject;
}

+ (id)lastNameFromFallbackUserName
{
  v2 = +[IMMe fallbackUserName];
  v3 = [v2 componentsSeparatedByString:@" "];
  v4 = [v3 mutableCopy];

  [v4 removeFirstObject];
  v5 = [v4 componentsJoinedByString:@" "];

  return v5;
}

- (id)_imHandlesWithIDs:(id)ds onAccount:(id)account
{
  dsCopy = ds;
  accountCopy = account;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ([dsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [dsCopy objectAtIndex:v8];
      v10 = [accountCopy imHandleWithID:v9];

      if (v10)
      {
        [v7 addObject:v10];
      }

      ++v8;
    }

    while (v8 < [dsCopy count]);
  }

  return v7;
}

- (void)resetABPerson
{
  cnFirstName = self->_cnFirstName;
  self->_cnFirstName = 0;

  cnLastName = self->_cnLastName;
  self->_cnLastName = 0;

  cnFullName = self->_cnFullName;
  self->_cnFullName = 0;

  cnEmails = self->_cnEmails;
  self->_cnEmails = 0;

  cnNickname = self->_cnNickname;
  self->_cnNickname = 0;

  [(IMMe *)self rebuildIMHandles];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMMeChangedNotification" object:0];
}

- (void)setCNContact:(id)contact
{
  contactCopy = contact;
  cnContact = self->_cnContact;
  p_cnContact = &self->_cnContact;
  if (cnContact != contactCopy)
  {
    v9 = contactCopy;
    objc_storeStrong(p_cnContact, contact);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter __mainThreadPostNotificationName:@"__kIMMeChangedNotification" object:0];

    contactCopy = v9;
  }
}

- (BOOL)addLoginIMHandle:(id)handle
{
  handleCopy = handle;
  if (([(NSMutableArray *)self->_loginIMHandles containsObjectIdenticalTo:handleCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_loginIMHandles addObject:handleCopy];
  }

  return 1;
}

- (BOOL)removeLoginIMHandle:(id)handle
{
  handleCopy = handle;
  if ([(NSMutableArray *)self->_loginIMHandles containsObjectIdenticalTo:handleCopy])
  {
    [(NSMutableArray *)self->_loginIMHandles removeObject:handleCopy];
    v5 = +[IMHandleRegistrar sharedInstance];
    [v5 unregisterIMHandle:handleCopy];

    v6 = +[IMHandleRegistrar sharedInstance];
    v7 = [handleCopy cnContactWithKeys:MEMORY[0x1E695E0F0]];
    identifier = [v7 identifier];
    [v6 removeHandleFromCNIDMap:handleCopy withCNID:identifier];
  }

  return 1;
}

- (BOOL)addIMHandle:(id)handle
{
  handleCopy = handle;
  if (([(NSMutableArray *)self->_cnIMHandles containsObjectIdenticalTo:handleCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_cnIMHandles addObject:handleCopy];
    if (([handleCopy hasLocation] & 1) == 0)
    {
      dependentIMHandles = [handleCopy dependentIMHandles];
      v6 = [dependentIMHandles count];
      if (v6 >= 1)
      {
        v7 = (v6 & 0x7FFFFFFF) + 1;
        do
        {
          v8 = [dependentIMHandles objectAtIndex:v7 - 2];
          [(IMMe *)self addIMHandle:v8];

          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  return 0;
}

- (BOOL)isIMHandleLoginIMHandle:(id)handle
{
  v22 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_loginIMHandles;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  v7 = 0;
  if (v6)
  {
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      v10 = v7;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v7 = *(*(&v17 + 1) + 8 * v9);

        service = [v7 service];
        service2 = [handleCopy service];

        if (service == service2)
        {
          v13 = [handleCopy ID];
          v14 = [v7 ID];
          v15 = [service equalID:v13 andID:v14];

          if (v15)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        ++v9;
        v10 = v7;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }

    service = v7;
    v7 = 0;
LABEL_12:
  }

  return v6;
}

- (BOOL)removeIMHandle:(id)handle
{
  handleCopy = handle;
  if ([(NSMutableArray *)self->_cnIMHandles containsObjectIdenticalTo:handleCopy])
  {
    [(NSMutableArray *)self->_cnIMHandles removeObject:handleCopy];
    if (([handleCopy hasLocation] & 1) == 0)
    {
      dependentIMHandles = [handleCopy dependentIMHandles];
      v6 = [dependentIMHandles count];
      if (v6 >= 1)
      {
        v7 = (v6 & 0x7FFFFFFF) + 1;
        do
        {
          v8 = [dependentIMHandles objectAtIndex:v7 - 2];
          [(IMMe *)self removeIMHandle:v8];

          --v7;
        }

        while (v7 > 1);
      }
    }
  }

  return 0;
}

- (NSString)nickname
{
  cnContact = [(IMMe *)self cnContact];

  if (cnContact)
  {
    v4 = MEMORY[0x1E69A7FD0];
    cnContact2 = [(IMMe *)self cnContact];
    v6 = [v4 nickNameForCNContact:cnContact2];
    cnNickname = self->_cnNickname;
    self->_cnNickname = v6;
  }

  if (![(NSString *)self->_cnNickname length])
  {
    firstName = [(IMMe *)self firstName];
    v9 = self->_cnNickname;
    self->_cnNickname = firstName;
  }

  v10 = self->_cnNickname;

  return v10;
}

- (NSString)firstName
{
  cnContact = [(IMMe *)self cnContact];

  if (cnContact)
  {
    v4 = MEMORY[0x1E69A7FD0];
    cnContact2 = [(IMMe *)self cnContact];
    v6 = [v4 firstNameForCNContact:cnContact2];
    cnFirstName = self->_cnFirstName;
    self->_cnFirstName = v6;
  }

  v8 = self->_cnFirstName;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = +[IMMe firstNameFromFallbackUserName];
  }

  return v9;
}

- (NSArray)emails
{
  if (!self->_cnEmails)
  {
    cnContact = [(IMMe *)self cnContact];

    if (cnContact)
    {
      v4 = MEMORY[0x1E69A7FD0];
      cnContact2 = [(IMMe *)self cnContact];
      v6 = [v4 emailsForCNContact:cnContact2];
      cnEmails = self->_cnEmails;
      self->_cnEmails = v6;
    }
  }

  v8 = self->_cnEmails;

  return v8;
}

- (NSString)email
{
  emails = [(IMMe *)self emails];
  if ([emails count])
  {
    __imFirstObject = [emails __imFirstObject];
  }

  else
  {
    __imFirstObject = 0;
  }

  return __imFirstObject;
}

- (NSString)lastName
{
  cnContact = [(IMMe *)self cnContact];

  if (cnContact)
  {
    v4 = MEMORY[0x1E69A7FD0];
    cnContact2 = [(IMMe *)self cnContact];
    v6 = [v4 lastNameForCNContact:cnContact2];
    cnLastName = self->_cnLastName;
    self->_cnLastName = v6;
  }

  v8 = self->_cnLastName;
  if (!v8)
  {
    v9 = +[IMMe lastNameFromFallbackUserName];
    v10 = self->_cnLastName;
    self->_cnLastName = v9;

    v8 = self->_cnLastName;
  }

  return v8;
}

- (NSString)fullName
{
  cnContact = [(IMMe *)self cnContact];

  if (cnContact)
  {
    v4 = MEMORY[0x1E69A7FD0];
    cnContact2 = [(IMMe *)self cnContact];
    v6 = [v4 fullNameForCNContact:cnContact2];
    cnFullName = self->_cnFullName;
    self->_cnFullName = v6;
  }

  v8 = self->_cnFullName;
  if (!v8)
  {
    v9 = +[IMMe fallbackUserName];
    v10 = self->_cnFullName;
    self->_cnFullName = v9;

    v8 = self->_cnFullName;
  }

  if ([(NSString *)v8 length])
  {
    v11 = self->_cnFullName;
  }

  else
  {
    v11 = +[IMMe fallbackUserName];
  }

  return v11;
}

+ (id)imHandleForService:(id)service
{
  v17 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = +[IMMe me];
  imHandles = [v4 imHandles];

  v6 = [imHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(imHandles);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        service = [v9 service];

        if (service == serviceCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [imHandles countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (IMHandle)bestIMHandle
{
  v3 = +[IMAccountController sharedInstance];
  imHandles = [v3 bestConnectedAccountForService:0];

  if (imHandles || (+[IMAccountController sharedInstance](IMAccountController, "sharedInstance"), v5 = objc_claimAutoreleasedReturnValue(), [v5 bestActiveAccountForService:0], imHandles = objc_claimAutoreleasedReturnValue(), v5, imHandles))
  {
    login = [imHandles login];
    v7 = [imHandles imHandleWithID:login];
  }

  else
  {
    imHandles = [(IMMe *)self imHandles];
    v7 = [IMHandle bestIMHandleInArray:imHandles];
  }

  return v7;
}

- (void)myPictureChanged
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter __mainThreadPostNotificationName:@"__kIMHandlePictureChangedNotification" object:0];

  defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter2 __mainThreadPostNotificationName:@"__kIMMePictureChangedNotification" object:self];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  cnContact = [(IMMe *)self cnContact];
  v7 = [v3 stringWithFormat:@"<%@> (CNContact: %@)", v5, cnContact];

  return v7;
}

@end