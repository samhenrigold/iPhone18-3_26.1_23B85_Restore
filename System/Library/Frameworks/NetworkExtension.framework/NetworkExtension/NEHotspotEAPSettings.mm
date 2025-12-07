@interface NEHotspotEAPSettings
- (BOOL)setIdentity:(SecIdentityRef)identity;
- (BOOL)setTrustedServerCertificates:(NSArray *)certificates;
- (NEHotspotEAPSettings)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NEHotspotEAPSettings

- (BOOL)setIdentity:(SecIdentityRef)identity
{
  v22 = *MEMORY[0x1E69E9840];
  result = 0;
  if (identity)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E697B3D0], *MEMORY[0x1E695E4D0], *MEMORY[0x1E697B320], 0}];
    v5 = SecItemCopyMatching(v4, &result);
    if (v5)
    {
      v6 = v5;
      p_super = ne_log_obj();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_4;
      }

      v15 = objc_opt_class();
      *buf = 138412546;
      v19 = v15;
      v20 = 1024;
      v21 = v6;
      v11 = v15;
      v12 = "%@ failed to find persistent reference for identity. status = %d";
      v13 = p_super;
      v14 = 18;
    }

    else
    {
      if (result)
      {
        p_super = &self->_identityReference->super;
        self->_identityReference = result;
        v8 = 1;
        goto LABEL_10;
      }

      p_super = ne_log_obj();
      if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
LABEL_4:
        v8 = 0;
LABEL_10:

        goto LABEL_11;
      }

      v10 = objc_opt_class();
      *buf = 138412290;
      v19 = v10;
      v11 = v10;
      v12 = "%@ found nil persistent reference for identity";
      v13 = p_super;
      v14 = 12;
    }

    _os_log_error_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);

    goto LABEL_4;
  }

  v4 = ne_log_obj();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v19 = objc_opt_class();
    v16 = v19;
    _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%@ invalid input data for identity", buf, 0xCu);
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (BOOL)setTrustedServerCertificates:(NSArray *)certificates
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = certificates;
  v5 = v4;
  result = 0;
  if (v4 && [(NSArray *)v4 count]&& [(NSArray *)v5 count]< 0xB)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{*MEMORY[0x1E695E4D0], *MEMORY[0x1E697B320], 0}];
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v10 = v5;
    v11 = [(NSArray *)v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v14 = *MEMORY[0x1E697B3D0];
      selfCopy = self;
LABEL_10:
      v15 = 0;
      while (1)
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v30 + 1) + 8 * v15);
        v17 = CFGetTypeID(v16);
        if (v17 != SecCertificateGetTypeID())
        {
          break;
        }

        [v9 setObject:v16 forKeyedSubscript:v14];
        v18 = SecItemCopyMatching(v9, &result);
        if (v18)
        {
          v24 = v18;
          v20 = ne_log_obj();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v25 = objc_opt_class();
            *buf = 138412546;
            v36 = v25;
            v37 = 1024;
            v38 = v24;
            v22 = v25;
            v23 = "%@ failed to find persistent reference for trusted server certificate. status = %d";
            v26 = v20;
            v27 = 18;
            goto LABEL_30;
          }

LABEL_26:

          v7 = 0;
          goto LABEL_27;
        }

        if (!result)
        {
          v20 = ne_log_obj();
          if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_26;
          }

          v28 = objc_opt_class();
          *buf = 138412290;
          v36 = v28;
          v22 = v28;
          v23 = "%@ found nil persistent reference for trusted server certificate";
LABEL_29:
          v26 = v20;
          v27 = 12;
LABEL_30:
          _os_log_error_impl(&dword_1BA83C000, v26, OS_LOG_TYPE_ERROR, v23, buf, v27);

          goto LABEL_26;
        }

        [v6 addObject:?];
        CFRelease(result);
        if (v12 == ++v15)
        {
          v12 = [(NSArray *)v10 countByEnumeratingWithState:&v30 objects:v39 count:16];
          self = selfCopy;
          if (v12)
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }
      }

      v20 = ne_log_obj();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        *buf = 138412290;
        v36 = v21;
        v22 = v21;
        v23 = "%@ invalid certificate data type";
        goto LABEL_29;
      }

      goto LABEL_26;
    }

LABEL_18:

    if ([v6 count])
    {
      objc_storeStrong(&self->_trustedServerCertificateReferences, v6);
    }

    v7 = 1;
LABEL_27:
  }

  else
  {
    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = objc_opt_class();
      v19 = v36;
      _os_log_error_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_ERROR, "%@ invalid input data for trusted server certificates", buf, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  supportedEAPTypes = [(NEHotspotEAPSettings *)self supportedEAPTypes];
  [coderCopy encodeObject:supportedEAPTypes forKey:@"SupportedEAPTypes"];

  username = [(NEHotspotEAPSettings *)self username];
  [coderCopy encodeObject:username forKey:@"UserName"];

  outerIdentity = [(NEHotspotEAPSettings *)self outerIdentity];
  [coderCopy encodeObject:outerIdentity forKey:@"OuterIdentity"];

  [coderCopy encodeInt64:-[NEHotspotEAPSettings ttlsInnerAuthenticationType](self forKey:{"ttlsInnerAuthenticationType"), @"TTLSInnerAuthenticationType"}];
  password = [(NEHotspotEAPSettings *)self password];
  [coderCopy encodeObject:password forKey:@"UserPassword"];

  identityReference = [(NEHotspotEAPSettings *)self identityReference];
  [coderCopy encodeObject:identityReference forKey:@"IdentityReference"];

  clientTrustChainReference = [(NEHotspotEAPSettings *)self clientTrustChainReference];
  [coderCopy encodeObject:clientTrustChainReference forKey:@"ClientTrustChainReference"];

  trustedServerNames = [(NEHotspotEAPSettings *)self trustedServerNames];
  [coderCopy encodeObject:trustedServerNames forKey:@"TrustedServerNames"];

  trustedServerCertificateReferences = [(NEHotspotEAPSettings *)self trustedServerCertificateReferences];
  [coderCopy encodeObject:trustedServerCertificateReferences forKey:@"TrustedServerCertificateRefs"];

  [coderCopy encodeBool:-[NEHotspotEAPSettings isTLSClientCertificateRequired](self forKey:{"isTLSClientCertificateRequired"), @"TLSIsCertificateRequiredKey"}];
  [coderCopy encodeInt64:-[NEHotspotEAPSettings preferredTLSVersion](self forKey:{"preferredTLSVersion"), @"PreferredTLSVersion"}];
}

- (NEHotspotEAPSettings)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(NEHotspotEAPSettings *)self init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"SupportedEAPTypes"];
    supportedEAPTypes = v5->_supportedEAPTypes;
    v5->_supportedEAPTypes = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserName"];
    username = v5->_username;
    v5->_username = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OuterIdentity"];
    outerIdentity = v5->_outerIdentity;
    v5->_outerIdentity = v13;

    v5->_ttlsInnerAuthenticationType = [coderCopy decodeInt64ForKey:@"TTLSInnerAuthenticationType"];
    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserPassword"];
    password = v5->_password;
    v5->_password = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentityReference"];
    identityReference = v5->_identityReference;
    v5->_identityReference = v17;

    v19 = MEMORY[0x1E695DFD8];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"ClientTrustChainReference"];
    clientTrustChainReference = v5->_clientTrustChainReference;
    v5->_clientTrustChainReference = v22;

    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"TrustedServerNames"];
    trustedServerNames = v5->_trustedServerNames;
    v5->_trustedServerNames = v27;

    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"TrustedServerCertificateRefs"];
    trustedServerCertificateReferences = v5->_trustedServerCertificateReferences;
    v5->_trustedServerCertificateReferences = v32;

    v5->_tlsClientCertificateRequired = [coderCopy decodeBoolForKey:@"TLSIsCertificateRequiredKey"];
    v5->_preferredTLSVersion = [coderCopy decodeInt64ForKey:@"PreferredTLSVersion"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[NEHotspotEAPSettings allocWithZone:?]];
  [(NEHotspotEAPSettings *)v4 setSupportedEAPTypes:self->_supportedEAPTypes];
  [(NEHotspotEAPSettings *)v4 setUsername:self->_username];
  [(NEHotspotEAPSettings *)v4 setOuterIdentity:self->_outerIdentity];
  [(NEHotspotEAPSettings *)v4 setTtlsInnerAuthenticationType:self->_ttlsInnerAuthenticationType];
  [(NEHotspotEAPSettings *)v4 setPassword:self->_password];
  [(NEHotspotEAPSettings *)v4 setIdentityReference:self->_identityReference];
  [(NEHotspotEAPSettings *)v4 setClientTrustChainReference:self->_clientTrustChainReference];
  [(NEHotspotEAPSettings *)v4 setTrustedServerNames:self->_trustedServerNames];
  [(NEHotspotEAPSettings *)v4 setTrustedServerCertificateReferences:self->_trustedServerCertificateReferences];
  [(NEHotspotEAPSettings *)v4 setTlsClientCertificateRequired:self->_tlsClientCertificateRequired];
  [(NEHotspotEAPSettings *)v4 setPreferredTLSVersion:self->_preferredTLSVersion];
  return v4;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  supportedEAPTypes = [(NEHotspotEAPSettings *)self supportedEAPTypes];
  [v3 appendPrettyObject:supportedEAPTypes withName:@"Supported EAP Types" andIndent:0 options:0];

  username = [(NEHotspotEAPSettings *)self username];
  v6 = [username length];

  if (v6)
  {
    username2 = [(NEHotspotEAPSettings *)self username];
    [v3 appendPrettyObject:username2 withName:@"Username" andIndent:0 options:0];
  }

  password = [(NEHotspotEAPSettings *)self password];
  v9 = [password length];

  if (v9)
  {
    password2 = [(NEHotspotEAPSettings *)self password];
    [v3 appendPrettyObject:password2 withName:@"Password" andIndent:0 options:3];
  }

  outerIdentity = [(NEHotspotEAPSettings *)self outerIdentity];
  v12 = [outerIdentity length];

  if (v12)
  {
    outerIdentity2 = [(NEHotspotEAPSettings *)self outerIdentity];
    [v3 appendPrettyObject:outerIdentity2 withName:@"Outer Identity" andIndent:0 options:0];
  }

  trustedServerNames = [(NEHotspotEAPSettings *)self trustedServerNames];

  if (trustedServerNames)
  {
    trustedServerNames2 = [(NEHotspotEAPSettings *)self trustedServerNames];
    [v3 appendPrettyObject:trustedServerNames2 withName:@"Trusted Server Names" andIndent:0 options:0];
  }

  if ([(NEHotspotEAPSettings *)self isTLSClientCertificateRequired])
  {
    v16 = @"YES";
  }

  else
  {
    v16 = @"NO";
  }

  [v3 appendPrettyObject:v16 withName:@"TLS Client Certificate Required" andIndent:0 options:0];
  preferredTLSVersion = [(NEHotspotEAPSettings *)self preferredTLSVersion];
  if (preferredTLSVersion > NEHotspotConfigurationEAPTLSVersion_1_2)
  {
    v18 = @"TLS 1.2";
  }

  else
  {
    v18 = off_1E7F07B18[preferredTLSVersion];
  }

  [v3 appendPrettyObject:v18 withName:@"Preferred TLS Version" andIndent:0 options:0];

  return v3;
}

@end