@interface ENSession
- (void)authenticateWithAuthorizationBlock:(id)block preferRegistration:(BOOL)registration completion:(id)completion;
@end

@implementation ENSession

- (void)authenticateWithAuthorizationBlock:(id)block preferRegistration:(BOOL)registration completion:(id)completion
{
  registrationCopy = registration;
  blockCopy = block;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([(ENSession *)self isAuthenticated])
    {
      completionCopy[2](completionCopy, 0);
    }

    else
    {
      authenticator = [(ENSession *)self authenticator];

      if (authenticator)
      {
        v10 = +[ENSession sharedSession];
        logger = [v10 logger];
        v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot restart authentication while it is still in progress."];
        [logger evernoteLogInfoString:v12];

        v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"ENErrorDomain" code:0 userInfo:0];
        (completionCopy)[2](completionCopy, v13);
      }

      else
      {
        [(ENSession *)self setUser:0];
        [(ENSession *)self setAuthorizationBlock:blockCopy];
        [(ENSession *)self setAuthenticationCompletion:completionCopy];
        v14 = +[ENSession developerToken];

        if (v14)
        {
          [(ENSession *)self setIsAuthenticated:1];
          v15 = +[ENSession developerToken];
          [(ENSession *)self setPrimaryAuthenticationToken:v15];

          [(ENSession *)self performPostAuthentication];
        }

        else
        {
          v16 = objc_alloc_init(ENOAuthAuthenticator);
          [(ENOAuthAuthenticator *)v16 setDelegate:self];
          v17 = +[ENSession consumerKey];
          [(ENOAuthAuthenticator *)v16 setConsumerKey:v17];

          v18 = +[ENSession consumerSecret];
          [(ENOAuthAuthenticator *)v16 setConsumerSecret:v18];

          sessionHost = [(ENSession *)self sessionHost];
          [(ENOAuthAuthenticator *)v16 setHost:sessionHost];

          [(ENOAuthAuthenticator *)v16 setSupportsLinkedAppNotebook:[(ENSession *)self supportsLinkedAppNotebook]];
          [(ENOAuthAuthenticator *)v16 setPreferRegistration:registrationCopy];
          v20 = +[ENSession sessionHostOverride];
          [(ENOAuthAuthenticator *)v16 setUseWebAuthenticationOnly:v20 != 0];

          [(ENOAuthAuthenticator *)v16 authenticate];
          [(ENSession *)self setAuthenticator:v16];
        }
      }
    }
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"handler required"];
  }
}

@end