@interface TKSmartCardTokenRegistrar
- (BOOL)_canTokenBeRegistered:(id)registered error:(id *)error;
- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD error:(id *)error;
- (BOOL)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD error:(id *)error;
- (TKSmartCardTokenRegistrar)initWithHostTokenRegistry:(id)registry;
- (id)registeredSmartCardTokens;
@end

@implementation TKSmartCardTokenRegistrar

- (TKSmartCardTokenRegistrar)initWithHostTokenRegistry:(id)registry
{
  registryCopy = registry;
  v9.receiver = self;
  v9.super_class = TKSmartCardTokenRegistrar;
  v6 = [(TKSmartCardTokenRegistrar *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tokenRegistry, registry);
  }

  return v7;
}

- (id)registeredSmartCardTokens
{
  v3 = +[NSMutableArray array];
  registeredTokens = [(TKHostTokenRegistry *)self->_tokenRegistry registeredTokens];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [registeredTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(registeredTokens);
        }

        tokenID = [*(*(&v11 + 1) + 8 * i) tokenID];
        [v3 addObject:tokenID];
      }

      v6 = [registeredTokens countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (BOOL)registerSmartCardWithTokenID:(id)d promptMessage:(id)message callerBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  messageCopy = message;
  iDCopy = iD;
  selfCopy = self;
  v13 = objc_sync_enter(selfCopy);
  v14 = sub_10001C2A4(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v33 = dCopy;
    v34 = 2112;
    v35 = messageCopy;
    v36 = 2112;
    v37 = iDCopy;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Registering card with tokenID: %@ prompt: %@, bundleID: %@", buf, 0x20u);
  }

  v15 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry tokenWithTokenID:dCopy];
  if (v15)
  {
    v31 = 0;
    v16 = [(TKSmartCardTokenRegistrar *)selfCopy _canTokenBeRegistered:v15 error:&v31];
    v17 = v31;
    v18 = v17;
    if (v16)
    {
      v19 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry beginTransaction:@"registerSmartCardWithTokenID"];
      v20 = [[TKHostTokenRegistration alloc] initWithPromptMessage:messageCopy creatorBundleID:iDCopy];
      tokenRegistration = [v15 tokenRegistration];
      v22 = tokenRegistration == 0;

      v24 = sub_10001C2A4(v23);
      v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
      if (v22)
      {
        if (v25)
        {
          sub_100021950();
        }
      }

      else if (v25)
      {
        sub_1000218E8();
      }

      [v15 setTokenRegistration:v20];
      markModified = [v19 markModified];
      [v19 commit];
    }

    else if (error && v17)
    {
      v27 = v17;
      *error = v18;
    }

    goto LABEL_17;
  }

  if (error)
  {
    stringRepresentation = [dCopy stringRepresentation];
    v18 = [NSString stringWithFormat:@"Token with ID: %@ wasn’t found in the system", stringRepresentation];

    [NSError errorWithCode:-6 debugDescription:v18];
    *error = v16 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v16 = 0;
LABEL_18:

  objc_sync_exit(selfCopy);
  return v16;
}

- (BOOL)unregisterSmartCardWithTokenID:(id)d callerBundleID:(id)iD error:(id *)error
{
  dCopy = d;
  iDCopy = iD;
  selfCopy = self;
  v11 = objc_sync_enter(selfCopy);
  v12 = sub_10001C2A4(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1000219CC();
  }

  v13 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry tokenWithTokenID:dCopy];
  v14 = v13;
  if (v13)
  {
    tokenRegistration = [v13 tokenRegistration];

    if (tokenRegistration)
    {
      v17 = [(TKHostTokenRegistry *)selfCopy->_tokenRegistry beginTransaction:@"unregisterSmartCardWithTokenID"];
      [v14 setTokenRegistration:0];
      markModified = [v17 markModified];
      [v17 commit];
      v19 = sub_10001C2A4([(TKHostTokenRegistry *)selfCopy->_tokenRegistry removeTokenWithTokenID:dCopy]);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_100021A34();
      }
    }

    else
    {
      v17 = sub_10001C2A4(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        sub_100021A9C(dCopy, v17);
      }
    }

    goto LABEL_12;
  }

  if (error)
  {
    stringRepresentation = [dCopy stringRepresentation];
    v17 = [NSString stringWithFormat:@"Token with ID: %@ wasn’t found", stringRepresentation];

    *error = [NSError errorWithCode:-6 debugDescription:v17];
LABEL_12:
  }

  objc_sync_exit(selfCopy);
  return v14 != 0;
}

- (BOOL)_canTokenBeRegistered:(id)registered error:(id *)error
{
  registeredCopy = registered;
  if ([registeredCopy persistent])
  {
    if (error)
    {
      tokenID = [registeredCopy tokenID];
      stringRepresentation = [tokenID stringRepresentation];
      v8 = [NSString stringWithFormat:@"Persistent tokens can't be registered, tokenID: %@", stringRepresentation];
LABEL_8:

      *error = [NSError errorWithCode:-8 debugDescription:v8];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    slotName = [registeredCopy slotName];
    v10 = [slotName isEqualToString:TKNFCSlotName];

    if (v10)
    {
      LOBYTE(error) = 1;
    }

    else if (error)
    {
      tokenID = [registeredCopy tokenID];
      stringRepresentation = [tokenID stringRepresentation];
      slotName2 = [registeredCopy slotName];
      v8 = [NSString stringWithFormat:@"Tokens can be registered only using built-in NFC slot, tokenID: %@, current slot: %@", stringRepresentation, slotName2];

      goto LABEL_8;
    }
  }

  return error;
}

@end