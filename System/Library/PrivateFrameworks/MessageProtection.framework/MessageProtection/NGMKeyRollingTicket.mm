@interface NGMKeyRollingTicket
- (id)identityData;
- (id)initTicketWithSigningKey:(id)key error:(id *)error;
- (id)prekeyData;
@end

@implementation NGMKeyRollingTicket

- (id)initTicketWithSigningKey:(id)key error:(id *)error
{
  keyCopy = key;
  v20.receiver = self;
  v20.super_class = NGMKeyRollingTicket;
  v7 = [(NGMKeyRollingTicket *)&v20 init];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [[NGMFullPrekey alloc] initWithPrekeySignedBy:keyCopy error:error];
  prekey = v7->_prekey;
  v7->_prekey = v8;

  if (!v7->_prekey)
  {
    v18 = MessageProtectionLog(v10);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [NGMKeyRollingTicket initTicketWithSigningKey:v18 error:?];
    }

    goto LABEL_9;
  }

  v11 = [NGMPublicDeviceIdentity alloc];
  publicPrekey = [(NGMFullPrekey *)v7->_prekey publicPrekey];
  tetraRegistration = [(NGMFullPrekey *)v7->_prekey tetraRegistration];
  publicKey = [keyCopy publicKey];
  v15 = [(NGMPublicDeviceIdentity *)v11 initWithEchnidaRegistration:publicPrekey tetraRegistration:tetraRegistration signingKey:publicKey];
  registrationInfo = v7->_registrationInfo;
  v7->_registrationInfo = v15;

  if (!v7->_registrationInfo)
  {
    MPLogAndAssignError(700, error, @"Failed to initialize the public identity.");
LABEL_9:
    v17 = 0;
    goto LABEL_10;
  }

LABEL_4:
  v17 = v7;
LABEL_10:

  return v17;
}

- (id)identityData
{
  registrationInfo = [(NGMKeyRollingTicket *)self registrationInfo];
  identityData = [registrationInfo identityData];

  return identityData;
}

- (id)prekeyData
{
  registrationInfo = [(NGMKeyRollingTicket *)self registrationInfo];
  prekeyData = [registrationInfo prekeyData];

  return prekeyData;
}

@end