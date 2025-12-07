@interface CalACMigrationAccount
- (BOOL)authenticated;
- (BOOL)dirty;
- (BOOL)enabledForCalendarsDataClass;
- (BOOL)provisionedForCalendarsDataClass;
- (BOOL)visible;
- (CalACMigrationAccount)initWithACAccount:(id)account;
- (NSString)accountDescription;
- (NSString)username;
- (id)accountPropertyForKey:(id)key;
- (id)accountTypeIdentifier;
- (id)identifier;
- (id)parentAccountIdentifier;
- (void)setAccountDescription:(id)description;
- (void)setAccountProperty:(id)property forKey:(id)key;
- (void)setAuthenticated:(BOOL)authenticated;
- (void)setAuthenticationTypeNone;
- (void)setAuthenticationTypeParent;
- (void)setEnabledForCalendarsDataClass:(BOOL)class;
- (void)setPassword:(id)password;
- (void)setProvisionedForCalendarsDataClass:(BOOL)class;
- (void)setUsername:(id)username;
- (void)setVisible:(BOOL)visible;
@end

@implementation CalACMigrationAccount

- (CalACMigrationAccount)initWithACAccount:(id)account
{
  accountCopy = account;
  v9.receiver = self;
  v9.super_class = CalACMigrationAccount;
  v6 = [(CalACMigrationAccount *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_account, account);
  }

  return v7;
}

- (id)identifier
{
  account = [(CalACMigrationAccount *)self account];
  identifier = [account identifier];

  return identifier;
}

- (id)parentAccountIdentifier
{
  account = [(CalACMigrationAccount *)self account];
  parentAccountIdentifier = [account parentAccountIdentifier];

  return parentAccountIdentifier;
}

- (id)accountTypeIdentifier
{
  account = [(CalACMigrationAccount *)self account];
  accountType = [account accountType];
  identifier = [accountType identifier];

  return identifier;
}

- (BOOL)dirty
{
  account = [(CalACMigrationAccount *)self account];
  isDirty = [account isDirty];

  return isDirty;
}

- (NSString)accountDescription
{
  account = [(CalACMigrationAccount *)self account];
  accountDescription = [account accountDescription];

  return accountDescription;
}

- (void)setAccountDescription:(id)description
{
  descriptionCopy = description;
  account = [(CalACMigrationAccount *)self account];
  [account setAccountDescription:descriptionCopy];
}

- (BOOL)visible
{
  account = [(CalACMigrationAccount *)self account];
  isVisible = [account isVisible];

  return isVisible;
}

- (void)setVisible:(BOOL)visible
{
  visibleCopy = visible;
  account = [(CalACMigrationAccount *)self account];
  [account setVisible:visibleCopy];
}

- (BOOL)enabledForCalendarsDataClass
{
  account = [(CalACMigrationAccount *)self account];
  v3 = [account isEnabledForDataclass:*MEMORY[0x1E6959630]];

  return v3;
}

- (void)setEnabledForCalendarsDataClass:(BOOL)class
{
  classCopy = class;
  account = [(CalACMigrationAccount *)self account];
  [account setEnabled:classCopy forDataclass:*MEMORY[0x1E6959630]];
}

- (BOOL)provisionedForCalendarsDataClass
{
  account = [(CalACMigrationAccount *)self account];
  v3 = [account isProvisionedForDataclass:*MEMORY[0x1E6959630]];

  return v3;
}

- (void)setProvisionedForCalendarsDataClass:(BOOL)class
{
  classCopy = class;
  account = [(CalACMigrationAccount *)self account];
  [account setProvisioned:classCopy forDataclass:*MEMORY[0x1E6959630]];
}

- (id)accountPropertyForKey:(id)key
{
  keyCopy = key;
  account = [(CalACMigrationAccount *)self account];
  v6 = [account accountPropertyForKey:keyCopy];

  return v6;
}

- (void)setAccountProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  account = [(CalACMigrationAccount *)self account];
  [account setAccountProperty:propertyCopy forKey:keyCopy];
}

- (void)setAuthenticationTypeParent
{
  v2 = *MEMORY[0x1E6959AC8];
  account = [(CalACMigrationAccount *)self account];
  [account setAuthenticationType:v2];
}

- (void)setAuthenticationTypeNone
{
  v2 = *MEMORY[0x1E6959AC0];
  account = [(CalACMigrationAccount *)self account];
  [account setAuthenticationType:v2];
}

- (void)setAuthenticated:(BOOL)authenticated
{
  authenticatedCopy = authenticated;
  account = [(CalACMigrationAccount *)self account];
  [account setAuthenticated:authenticatedCopy];

  account2 = [(CalACMigrationAccount *)self account];
  [account2 setSupportsAuthentication:1];
}

- (BOOL)authenticated
{
  account = [(CalACMigrationAccount *)self account];
  isAuthenticated = [account isAuthenticated];

  return isAuthenticated;
}

- (NSString)username
{
  account = [(CalACMigrationAccount *)self account];
  username = [account username];

  return username;
}

- (void)setUsername:(id)username
{
  usernameCopy = username;
  account = [(CalACMigrationAccount *)self account];
  [account setUsername:usernameCopy];
}

- (void)setPassword:(id)password
{
  v4 = MEMORY[0x1E6959A30];
  passwordCopy = password;
  v7 = [[v4 alloc] initWithPassword:passwordCopy];

  account = [(CalACMigrationAccount *)self account];
  [account setCredential:v7];
}

@end