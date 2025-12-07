@interface MFPlainAuthScheme
- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection;
- (id)authenticatorForAccount:(id)account connection:(id)connection;
@end

@implementation MFPlainAuthScheme

- (id)authenticatorForAccount:(id)account connection:(id)connection
{
  accountCopy = account;
  connectionCopy = connection;
  saslProfileName = [objc_opt_class() saslProfileName];
  if (([saslProfileName isEqualToString:@"imap"] & 1) == 0 && (objc_msgSend(saslProfileName, "isEqualToString:", @"pop") & 1) == 0)
  {
    authenticationMechanisms = [connectionCopy authenticationMechanisms];
    if ([authenticationMechanisms indexOfObject:@"PLAIN"] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(authenticationMechanisms, "indexOfObject:", @"LOGIN") == 0x7FFFFFFFFFFFFFFFLL)
    {
    }

    else
    {
      v10 = objc_opt_class();

      if (v10)
      {
        v11 = [[v10 alloc] initWithAuthScheme:self account:accountCopy connection:connectionCopy];
        goto LABEL_9;
      }
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (BOOL)canAuthenticateAccountClass:(Class)class connection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MFPlainAuthScheme;
  if ([(MFAuthScheme *)&v9 canAuthenticateAccountClass:class connection:connectionCopy])
  {
    v7 = [connectionCopy loginDisabled] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

@end