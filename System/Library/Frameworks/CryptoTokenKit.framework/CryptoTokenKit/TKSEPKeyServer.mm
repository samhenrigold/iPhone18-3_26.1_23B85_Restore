@interface TKSEPKeyServer
- (id)keyForObjectID:(id)d authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error;
- (id)serverAttributesOfKey:(id)key error:(id *)error;
- (void)attestWithKey:(id)key keyToAttest:(id)attest nonce:(id)nonce authContext:(id)context forceSystemSessionAttestingKey:(BOOL)attestingKey forceSystemSessionKeyToAttest:(BOOL)toAttest reply:(id)reply;
- (void)computeSharedSecretWithKey:(id)key publicKey:(id)publicKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)decapsulateWithKey:(id)key encapsulatedKey:(id)encapsulatedKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)deleteKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)generateKeyType:(id)type keySize:(int64_t)size accessControl:(id)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)getAttributesOfKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)lifetimeControlKey:(id)key type:(int64_t)type authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)recryptWithKey:(id)key data:(id)data attributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
- (void)signWithKey:(id)key digest:(id)digest authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply;
@end

@implementation TKSEPKeyServer

- (id)serverAttributesOfKey:(id)key error:(id *)error
{
  keyCopy = key;
  v6 = keyCopy;
  if (keyCopy)
  {
    v7 = [keyCopy publicKeyWithError:error];
    if (v7)
    {
      v15[0] = @"keyType";
      keyType = [v6 keyType];
      v16[0] = keyType;
      v15[1] = @"keySize";
      keySize = [v6 keySize];
      v16[1] = keySize;
      v15[2] = @"systemKey";
      v10 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 systemKey]);
      v16[2] = v10;
      v15[3] = @"systemSessionKey";
      v11 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 systemSessionKey]);
      v16[3] = v11;
      v16[4] = v7;
      v15[4] = @"publicKey";
      v15[5] = @"accessControl";
      [v6 accessControl];
      v12 = SecAccessControlCopyData();
      v16[5] = v12;
      v13 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:6];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)generateKeyType:(id)type keySize:(int64_t)size accessControl:(id)control options:(id)options authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  typeCopy = type;
  optionsCopy = options;
  contextCopy = context;
  replyCopy = reply;
  location = 0;
  v18 = SecAccessControlCreateFromData();
  if (v18)
  {
    v19 = [TKSEPKey alloc];
    v20 = +[NSXPCConnection currentConnection];
    obj = location;
    LOBYTE(v28) = session;
    v21 = [v19 initLocalWithKeyType:typeCopy keySize:size accessControl:v18 options:optionsCopy authContext:contextCopy caller:v20 forceSystemSession:v28 error:&obj];
    objc_storeStrong(&location, obj);

    if (v21 && (v29 = location, [(TKSEPKeyServer *)self serverAttributesOfKey:v21 error:&v29], v22 = objc_claimAutoreleasedReturnValue(), objc_storeStrong(&location, v29), v22))
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      objc_storeStrong(&selfCopy->_cachedKey, v21);
      objc_sync_exit(selfCopy);

      v24 = [TKBERTLVRecord alloc];
      objectID = [v21 objectID];
      v26 = [v24 initWithPropertyList:objectID];
      data = [v26 data];
      replyCopy[2](replyCopy, data, v22, 0);
    }

    else
    {
      (replyCopy)[2](replyCopy, 0, 0, location);
    }
  }

  else
  {
    (replyCopy)[2](replyCopy, 0, 0, location);
  }
}

- (id)keyForObjectID:(id)d authContext:(id)context forceSystemSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  v11 = [TKBERTLVRecord recordFromData:dCopy];
  propertyList = [v11 propertyList];

  selfCopy = self;
  objc_sync_enter(selfCopy);
  objectID = [(TKSEPKey *)selfCopy->_cachedKey objectID];
  if ([objectID isEqual:propertyList])
  {
    authContext = [(TKSEPKey *)selfCopy->_cachedKey authContext];
    v16 = [authContext isEqual:contextCopy];

    p_cachedKey = &selfCopy->_cachedKey;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  p_cachedKey = &selfCopy->_cachedSystemKey;
  objectID2 = [(TKSEPKey *)selfCopy->_cachedSystemKey objectID];
  if ([objectID2 isEqual:propertyList])
  {
    authContext2 = [*p_cachedKey authContext];
    v20 = [authContext2 isEqual:contextCopy];

    if (v20)
    {
LABEL_7:
      v21 = *p_cachedKey;
      goto LABEL_14;
    }
  }

  else
  {
  }

  objc_sync_exit(selfCopy);

  v22 = [TKSEPKey alloc];
  v23 = +[NSXPCConnection currentConnection];
  v21 = [v22 initLocalWithObjectID:propertyList authContext:contextCopy caller:v23 forceSystemSession:sessionCopy error:error];

  if (!v21)
  {
    goto LABEL_15;
  }

  objc_sync_enter(selfCopy);
  if ([v21 systemKey])
  {
    p_cachedSystemKey = &selfCopy->_cachedSystemKey;
  }

  else
  {
    p_cachedSystemKey = &selfCopy->_cachedKey;
  }

  objc_storeStrong(p_cachedSystemKey, v21);
LABEL_14:
  objc_sync_exit(selfCopy);

LABEL_15:

  return v21;
}

- (void)getAttributesOfKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  v16 = 0;
  replyCopy = reply;
  v11 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:context forceSystemSession:sessionCopy error:&v16];
  v12 = v16;
  v15 = v12;
  v13 = [(TKSEPKeyServer *)self serverAttributesOfKey:v11 error:&v15];
  v14 = v15;

  replyCopy[2](replyCopy, v13, v14);
}

- (void)deleteKey:(id)key authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v17 = 0;
  v11 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:context forceSystemSession:sessionCopy error:&v17];
  v12 = v17;
  v13 = v12;
  if (v11)
  {
    v16 = v12;
    v14 = [v11 deleteWithError:&v16];
    v15 = v16;

    v13 = v15;
  }

  else
  {
    v14 = 0;
  }

  replyCopy[2](replyCopy, v14, v13);
}

- (void)signWithKey:(id)key digest:(id)digest authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  digestCopy = digest;
  replyCopy = reply;
  v20 = 0;
  v14 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:context forceSystemSession:sessionCopy error:&v20];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    v19 = v15;
    v17 = [v14 signDigest:digestCopy error:&v19];
    v18 = v19;

    v16 = v18;
  }

  else
  {
    v17 = 0;
  }

  replyCopy[2](replyCopy, v17, v16);
}

- (void)computeSharedSecretWithKey:(id)key publicKey:(id)publicKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  publicKeyCopy = publicKey;
  replyCopy = reply;
  v20 = 0;
  v14 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:context forceSystemSession:sessionCopy error:&v20];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    v19 = v15;
    v17 = [v14 computeSharedSecret:publicKeyCopy error:&v19];
    v18 = v19;

    v16 = v18;
  }

  else
  {
    v17 = 0;
  }

  replyCopy[2](replyCopy, v17, v16);
}

- (void)recryptWithKey:(id)key data:(id)data attributes:(id)attributes authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  dataCopy = data;
  attributesCopy = attributes;
  replyCopy = reply;
  v23 = 0;
  v17 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:context forceSystemSession:sessionCopy error:&v23];
  v18 = v23;
  v19 = v18;
  if (v17)
  {
    v22 = v18;
    v20 = [v17 recryptData:dataCopy attributes:attributesCopy error:&v22];
    v21 = v22;

    v19 = v21;
  }

  else
  {
    v20 = 0;
  }

  replyCopy[2](replyCopy, v20, v19);
}

- (void)decapsulateWithKey:(id)key encapsulatedKey:(id)encapsulatedKey authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  encapsulatedKeyCopy = encapsulatedKey;
  replyCopy = reply;
  v20 = 0;
  v14 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:context forceSystemSession:sessionCopy error:&v20];
  v15 = v20;
  v16 = v15;
  if (v14)
  {
    v19 = v15;
    v17 = [v14 decapsulateKey:encapsulatedKeyCopy error:&v19];
    v18 = v19;

    v16 = v18;
  }

  else
  {
    v17 = 0;
  }

  replyCopy[2](replyCopy, v17, v16);
}

- (void)attestWithKey:(id)key keyToAttest:(id)attest nonce:(id)nonce authContext:(id)context forceSystemSessionAttestingKey:(BOOL)attestingKey forceSystemSessionKeyToAttest:(BOOL)toAttest reply:(id)reply
{
  toAttestCopy = toAttest;
  attestingKeyCopy = attestingKey;
  attestCopy = attest;
  nonceCopy = nonce;
  contextCopy = context;
  replyCopy = reply;
  v28 = 0;
  v19 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:contextCopy forceSystemSession:attestingKeyCopy error:&v28];
  v20 = v28;
  v21 = v20;
  if (v19)
  {
    v27 = v20;
    v22 = [(TKSEPKeyServer *)self keyForObjectID:attestCopy authContext:contextCopy forceSystemSession:toAttestCopy error:&v27];
    v23 = v27;

    if (v22)
    {
      v26 = v23;
      v24 = [v19 attestKey:v22 nonce:nonceCopy error:&v26];
      v25 = v26;

      v23 = v25;
    }

    else
    {
      v24 = 0;
    }

    v21 = v23;
  }

  else
  {
    v24 = 0;
  }

  replyCopy[2](replyCopy, v24, v21);
}

- (void)lifetimeControlKey:(id)key type:(int64_t)type authContext:(id)context forceSystemSession:(BOOL)session reply:(id)reply
{
  sessionCopy = session;
  replyCopy = reply;
  v19 = 0;
  v13 = [(TKSEPKeyServer *)self keyForObjectID:key authContext:context forceSystemSession:sessionCopy error:&v19];
  v14 = v19;
  v15 = v14;
  if (v13)
  {
    v18 = v14;
    v16 = [v13 lifetimeControlWithType:type error:&v18];
    v17 = v18;

    v15 = v17;
  }

  else
  {
    v16 = 0;
  }

  replyCopy[2](replyCopy, v16, v15);
}

@end