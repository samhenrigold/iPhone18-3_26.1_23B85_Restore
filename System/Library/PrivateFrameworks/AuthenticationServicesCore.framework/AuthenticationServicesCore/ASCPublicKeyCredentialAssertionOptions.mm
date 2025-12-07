@interface ASCPublicKeyCredentialAssertionOptions
- (ASCPublicKeyCredentialAssertionOptions)initWithCoder:(id)coder;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge userVerificationPreference:(id)preference allowedCredentials:(id)credentials;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataHash:(id)hash userVerificationPreference:(id)preference allowedCredentials:(id)credentials;
- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials origin:(id)origin;
- (id)_initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientDataHash:(id)hash clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials shouldHideHybrid:(BOOL)self0 extensions:(id)self1 origin:(id)self2 appIDForSecurityKeys:(id)self3;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)logRequest;
@end

@implementation ASCPublicKeyCredentialAssertionOptions

- (id)_initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge clientDataHash:(id)hash clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials shouldHideHybrid:(BOOL)self0 extensions:(id)self1 origin:(id)self2 appIDForSecurityKeys:(id)self3
{
  identifierCopy = identifier;
  challengeCopy = challenge;
  hashCopy = hash;
  nCopy = n;
  preferenceCopy = preference;
  credentialsCopy = credentials;
  extensionsCopy = extensions;
  originCopy = origin;
  keysCopy = keys;
  v48.receiver = self;
  v48.super_class = ASCPublicKeyCredentialAssertionOptions;
  v26 = [(ASCPublicKeyCredentialAssertionOptions *)&v48 init];
  v27 = v26;
  if (v26)
  {
    v26->_credentialKind = kind;
    v28 = [identifierCopy copy];
    relyingPartyIdentifier = v27->_relyingPartyIdentifier;
    v27->_relyingPartyIdentifier = v28;

    v30 = [challengeCopy copy];
    challenge = v27->_challenge;
    v27->_challenge = v30;

    v32 = [preferenceCopy copy];
    userVerificationPreference = v27->_userVerificationPreference;
    v27->_userVerificationPreference = v32;

    v34 = [credentialsCopy copy];
    allowedCredentials = v27->_allowedCredentials;
    v27->_allowedCredentials = v34;

    v36 = [hashCopy copy];
    clientDataHash = v27->_clientDataHash;
    v27->_clientDataHash = v36;

    v38 = [nCopy copy];
    clientDataJSON = v27->_clientDataJSON;
    v27->_clientDataJSON = v38;

    v27->_shouldHideHybrid = hybrid;
    objc_storeStrong(&v27->_extensions, extensions);
    v40 = [originCopy copy];
    origin = v27->_origin;
    v27->_origin = v40;

    v42 = [keysCopy copy];
    appIDForSecurityKeys = v27->_appIDForSecurityKeys;
    v27->_appIDForSecurityKeys = v42;

    v44 = v27;
  }

  return v27;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier challenge:(id)challenge userVerificationPreference:(id)preference allowedCredentials:(id)credentials
{
  credentialsCopy = credentials;
  preferenceCopy = preference;
  challengeCopy = challenge;
  identifierCopy = identifier;
  v16 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v19) = 0;
  v17 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:kind relyingPartyIdentifier:identifierCopy challenge:challengeCopy clientDataHash:0 clientDataJSON:0 userVerificationPreference:preferenceCopy allowedCredentials:credentialsCopy shouldHideHybrid:v19 extensions:v16 origin:0 appIDForSecurityKeys:0];

  return v17;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataHash:(id)hash userVerificationPreference:(id)preference allowedCredentials:(id)credentials
{
  credentialsCopy = credentials;
  preferenceCopy = preference;
  hashCopy = hash;
  identifierCopy = identifier;
  v16 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v19) = 0;
  v17 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:kind relyingPartyIdentifier:identifierCopy challenge:0 clientDataHash:hashCopy clientDataJSON:0 userVerificationPreference:preferenceCopy allowedCredentials:credentialsCopy shouldHideHybrid:v19 extensions:v16 origin:0 appIDForSecurityKeys:0];

  return v17;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithKind:(unint64_t)kind relyingPartyIdentifier:(id)identifier clientDataJSON:(id)n userVerificationPreference:(id)preference allowedCredentials:(id)credentials origin:(id)origin
{
  originCopy = origin;
  credentialsCopy = credentials;
  preferenceCopy = preference;
  nCopy = n;
  identifierCopy = identifier;
  v19 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
  LOBYTE(v22) = 0;
  v20 = [(ASCPublicKeyCredentialAssertionOptions *)self _initWithKind:kind relyingPartyIdentifier:identifierCopy challenge:0 clientDataHash:0 clientDataJSON:nCopy userVerificationPreference:preferenceCopy allowedCredentials:credentialsCopy shouldHideHybrid:v22 extensions:v19 origin:originCopy appIDForSecurityKeys:0];

  return v20;
}

- (ASCPublicKeyCredentialAssertionOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"credentialKind"];
  v7 = v5;
  if ((v5 - 3) > 0xFFFFFFFFFFFFFFFDLL)
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"challenge"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataHash"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDataJSON"];
    v37.receiver = self;
    v37.super_class = ASCPublicKeyCredentialAssertionOptions;
    v13 = [(ASCPublicKeyCredentialAssertionOptions *)&v37 init];
    self = v13;
    if (v13)
    {
      v13->_credentialKind = v7;
      v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"relyingPartyIdentifier"];
      relyingPartyIdentifier = self->_relyingPartyIdentifier;
      self->_relyingPartyIdentifier = v14;

      objc_storeStrong(&self->_challenge, v10);
      objc_storeStrong(&self->_clientDataHash, v11);
      objc_storeStrong(&self->_clientDataJSON, v12);
      v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userVerificationPreference"];
      userVerificationPreference = self->_userVerificationPreference;
      self->_userVerificationPreference = v16;

      v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timeout"];
      timeout = self->_timeout;
      self->_timeout = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"extensions"];
      v21 = v20;
      if (v20)
      {
        v22 = v20;
      }

      else
      {
        v22 = objc_alloc_init(_TtC26AuthenticationServicesCore46ASCPublicKeyCredentialAssertionExtensionInputs);
      }

      extensions = self->_extensions;
      self->_extensions = v22;

      v24 = MEMORY[0x1E695DFD8];
      v25 = objc_opt_class();
      v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
      v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"allowedCredentials"];
      allowedCredentials = self->_allowedCredentials;
      self->_allowedCredentials = v27;

      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationSiteForCrossSiteAssertion"];
      destinationSiteForCrossSiteAssertion = self->_destinationSiteForCrossSiteAssertion;
      self->_destinationSiteForCrossSiteAssertion = v29;

      self->_shouldHideHybrid = [coderCopy decodeBoolForKey:@"shouldHideHybrid"];
      v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"origin"];
      origin = self->_origin;
      self->_origin = v31;

      v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appIDForSecurityKeys"];
      appIDForSecurityKeys = self->_appIDForSecurityKeys;
      self->_appIDForSecurityKeys = v33;

      selfCopy = self;
    }

    selfCopy2 = self;
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXAuthorization(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(ASCPublicKeyCredentialAssertionOptions *)v7 initWithCoder:v8];
    }

    selfCopy2 = 0;
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  credentialKind = self->_credentialKind;
  coderCopy = coder;
  [coderCopy encodeInteger:credentialKind forKey:@"credentialKind"];
  [coderCopy encodeObject:self->_relyingPartyIdentifier forKey:@"relyingPartyIdentifier"];
  [coderCopy encodeObject:self->_challenge forKey:@"challenge"];
  [coderCopy encodeObject:self->_clientDataHash forKey:@"clientDataHash"];
  [coderCopy encodeObject:self->_clientDataJSON forKey:@"clientDataJSON"];
  [coderCopy encodeObject:self->_userVerificationPreference forKey:@"userVerificationPreference"];
  [coderCopy encodeObject:self->_timeout forKey:@"timeout"];
  [coderCopy encodeObject:self->_extensions forKey:@"extensions"];
  [coderCopy encodeObject:self->_allowedCredentials forKey:@"allowedCredentials"];
  [coderCopy encodeObject:self->_destinationSiteForCrossSiteAssertion forKey:@"destinationSiteForCrossSiteAssertion"];
  [coderCopy encodeBool:self->_shouldHideHybrid forKey:@"shouldHideHybrid"];
  [coderCopy encodeObject:self->_origin forKey:@"origin"];
  [coderCopy encodeObject:self->_appIDForSecurityKeys forKey:@"appIDForSecurityKeys"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self->_clientDataHash)
  {
    selfCopy = [ASCPublicKeyCredentialAssertionOptions allocWithZone:zone];
    credentialKind = self->_credentialKind;
    relyingPartyIdentifier = self->_relyingPartyIdentifier;
    clientDataHash = self->_clientDataHash;
    userVerificationPreference = self->_userVerificationPreference;
    origin = self->_origin;
    appIDForSecurityKeys = self->_appIDForSecurityKeys;
    extensions = self->_extensions;
    LOBYTE(v13) = self->_shouldHideHybrid;
    allowedCredentials = self->_allowedCredentials;
    challenge = 0;
  }

  else
  {
    if (self->_clientDataJSON)
    {
      selfCopy = self;
      credentialKind = selfCopy->_credentialKind;
      relyingPartyIdentifier = selfCopy->_relyingPartyIdentifier;
      clientDataJSON = self->_clientDataJSON;
      userVerificationPreference = selfCopy->_userVerificationPreference;
      origin = selfCopy->_origin;
      appIDForSecurityKeys = selfCopy->_appIDForSecurityKeys;
      extensions = selfCopy->_extensions;
      LOBYTE(v13) = selfCopy->_shouldHideHybrid;
      allowedCredentials = selfCopy->_allowedCredentials;
      challenge = 0;
      clientDataHash = 0;
      return [(ASCPublicKeyCredentialAssertionOptions *)selfCopy _initWithKind:credentialKind relyingPartyIdentifier:relyingPartyIdentifier challenge:challenge clientDataHash:clientDataHash clientDataJSON:clientDataJSON userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials shouldHideHybrid:v13 extensions:extensions origin:origin appIDForSecurityKeys:appIDForSecurityKeys];
    }

    selfCopy = [ASCPublicKeyCredentialAssertionOptions allocWithZone:zone];
    credentialKind = self->_credentialKind;
    relyingPartyIdentifier = self->_relyingPartyIdentifier;
    challenge = self->_challenge;
    userVerificationPreference = self->_userVerificationPreference;
    origin = self->_origin;
    appIDForSecurityKeys = self->_appIDForSecurityKeys;
    extensions = self->_extensions;
    LOBYTE(v13) = self->_shouldHideHybrid;
    allowedCredentials = self->_allowedCredentials;
    clientDataHash = 0;
  }

  clientDataJSON = 0;
  return [(ASCPublicKeyCredentialAssertionOptions *)selfCopy _initWithKind:credentialKind relyingPartyIdentifier:relyingPartyIdentifier challenge:challenge clientDataHash:clientDataHash clientDataJSON:clientDataJSON userVerificationPreference:userVerificationPreference allowedCredentials:allowedCredentials shouldHideHybrid:v13 extensions:extensions origin:origin appIDForSecurityKeys:appIDForSecurityKeys];
}

- (void)logRequest
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = [(NSArray *)self->_allowedCredentials count];
  if (v3)
  {
    v3 = [(NSArray *)self->_allowedCredentials safari_mapAndFilterObjectsUsingBlock:&__block_literal_global_9];
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = WBS_LOG_CHANNEL_PREFIXAuthorization(v3, v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    relyingPartyIdentifier = self->_relyingPartyIdentifier;
    userVerificationPreference = self->_userVerificationPreference;
    allowedCredentials = self->_allowedCredentials;
    v10 = v6;
    v11 = [(NSArray *)allowedCredentials count];
    v12 = [(ASCPublicKeyCredentialAssertionExtensionInputs *)self->_extensions descriptionForLoggingWithIndentationCount:2];
    appIDForSecurityKeys = self->_appIDForSecurityKeys;
    v14 = 141559555;
    v15 = 1752392040;
    v16 = 2113;
    v17 = relyingPartyIdentifier;
    v18 = 2114;
    v19 = userVerificationPreference;
    v20 = 2050;
    v21 = v11;
    v22 = 2114;
    v23 = v5;
    v24 = 2114;
    v25 = v12;
    v26 = 2114;
    v27 = appIDForSecurityKeys;
    _os_log_impl(&dword_1C20AD000, v10, OS_LOG_TYPE_INFO, "\tRP: %{private, mask.hash}@\n\tuv: %{public}@\n\tallowedCredentialsCount: %{public}lu\n\ttransports: %{public}@\n\textensions:\n%{public}@\tappID: %{public}@\n", &v14, 0x48u);
  }
}

- (void)initWithCoder:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_1C20AD000, a2, OS_LOG_TYPE_ERROR, "Found unexpected value for credential kind: %ld", &v2, 0xCu);
}

@end