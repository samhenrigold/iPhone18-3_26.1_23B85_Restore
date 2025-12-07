@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  saslProfileName = [objc_opt_class() saslProfileName];
  if ([saslProfileName isEqualToString:@"imap"])
  {
    return 0;
  }

  if ([saslProfileName isEqualToString:@"pop"])
  {
    return 0;
  }

  authenticationMechanisms = [connection authenticationMechanisms];
  if ([authenticationMechanisms indexOfObject:@"PLAIN"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(authenticationMechanisms, "indexOfObject:", @"LOGIN") == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v9 = objc_opt_class();
  if (!v9)
  {
    return 0;
  }

  v10 = [[v9 alloc] initWithAuthScheme:self account:account connection:connection];

  return v10;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  v7.receiver = self;
  v7.super_class = MFPlainAuthScheme;
  v5 = [(MFAuthScheme *)&v7 canAuthenticateAccountClass:class connection:?];
  if (v5)
  {
    LOBYTE(v5) = [connection loginDisabled] ^ 1;
  }

  return v5;
}

@end