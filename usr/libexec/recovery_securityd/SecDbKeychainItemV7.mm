@interface SecDbKeychainItemV7
+ (id)decryptionOperation;
+ (id)encryptionOperation;
+ (id)keySpecifier;
- (BOOL)deleteWithAcmContext:(id)context accessControl:(__SecAccessControl *)control callerAccessGroups:(id)groups keyDiversify:(BOOL)diversify error:(id *)error;
- (BOOL)encryptMetadataWithKeybag:(int)keybag error:(id *)error;
- (BOOL)encryptSecretDataWithKeybag:(int)keybag accessControl:(__SecAccessControl *)control acmContext:(id)context error:(id *)error;
- (SecDbKeychainItemV7)initWithData:(id)data decryptionKeybag:(int)keybag error:(id *)error;
- (SecDbKeychainItemV7)initWithSecretAttributes:(id)attributes metadataAttributes:(id)metadataAttributes tamperCheck:(id)check keyclass:(int)keyclass;
- (id)encryptedBlobWithKeybag:(int)keybag accessControl:(__SecAccessControl *)control acmContext:(id)context error:(id *)error;
- (id)metadataAttributesWithError:(id *)error;
- (id)metadataClassKeyWithKeybag:(int)keybag allowWrites:(BOOL)writes error:(id *)error;
- (id)secretAttributesWithAcmContext:(id)context accessControl:(__SecAccessControl *)control callerAccessGroups:(id)groups keyDiversify:(BOOL)diversify error:(id *)error;
- (id)unwrapFromAKS:(id)s accessControl:(__SecAccessControl *)control acmContext:(id)context callerAccessGroups:(id)groups delete:(BOOL)delete keyDiversify:(BOOL)diversify error:(id *)error;
- (id)wrapToAKS:(id)s withKeybag:(int)keybag accessControl:(__SecAccessControl *)control acmContext:(id)context error:(id *)error;
@end

@implementation SecDbKeychainItemV7

- (SecDbKeychainItemV7)initWithData:(id)data decryptionKeybag:(int)keybag error:(id *)error
{
  dataCopy = data;
  v26.receiver = self;
  v26.super_class = SecDbKeychainItemV7;
  v9 = [(SecDbKeychainItemV7 *)&v26 init];
  if (v9)
  {
    v10 = [[SecDbKeychainSerializedItemV7 alloc] initWithData:dataCopy];
    if (!v10)
    {
      goto LABEL_8;
    }

    if ([dataCopy length] >= 0x959A)
    {
      v11 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [dataCopy length];
        *buf = 134217984;
        v30 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: serialized item exceeds reasonable size (%lu bytes)", buf, 0xCu);
      }
    }

    v9->_keybag = keybag;
    v13 = [SecDbKeychainSecretData alloc];
    encryptedSecretData = [(SecDbKeychainSerializedItemV7 *)v10 encryptedSecretData];
    v15 = [(SecDbKeychainSecretData *)v13 initWithData:encryptedSecretData];
    encryptedSecretData = v9->_encryptedSecretData;
    v9->_encryptedSecretData = v15;

    v17 = [SecDbKeychainMetadata alloc];
    encryptedMetadata = [(SecDbKeychainSerializedItemV7 *)v10 encryptedMetadata];
    v19 = [(SecDbKeychainMetadata *)v17 initWithData:encryptedMetadata];
    encryptedMetadata = v9->_encryptedMetadata;
    v9->_encryptedMetadata = v19;

    v9->_keyclass = [(SecDbKeychainSerializedItemV7 *)v10 keyclass];
    tamperCheck = [(SecDbKeychainSecretData *)v9->_encryptedSecretData tamperCheck];
    tamperCheck2 = [(SecDbKeychainMetadata *)v9->_encryptedMetadata tamperCheck];
    v23 = [tamperCheck isEqualToString:tamperCheck2];

    if ((v23 & 1) == 0)
    {
LABEL_8:

      v9 = 0;
    }
  }

  if (error && !v9)
  {
    v27 = NSLocalizedDescriptionKey;
    v28 = @"failed to deserialize keychain item blob";
    v24 = [NSDictionary dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    *error = [NSError errorWithDomain:kCFErrorDomainOSStatus code:-26275 userInfo:v24];
  }

  return v9;
}

- (SecDbKeychainItemV7)initWithSecretAttributes:(id)attributes metadataAttributes:(id)metadataAttributes tamperCheck:(id)check keyclass:(int)keyclass
{
  attributesCopy = attributes;
  metadataAttributesCopy = metadataAttributes;
  checkCopy = check;
  if (!checkCopy)
  {
    sub_100040CD0(a2, self);
  }

  v22.receiver = self;
  v22.super_class = SecDbKeychainItemV7;
  v14 = [(SecDbKeychainItemV7 *)&v22 init];
  if (v14)
  {
    if (attributesCopy)
    {
      v15 = [attributesCopy copy];
    }

    else
    {
      v15 = +[NSDictionary dictionary];
    }

    secretAttributes = v14->_secretAttributes;
    v14->_secretAttributes = v15;

    if (metadataAttributesCopy)
    {
      v17 = [metadataAttributesCopy copy];
    }

    else
    {
      v17 = +[NSDictionary dictionary];
    }

    metadataAttributes = v14->_metadataAttributes;
    v14->_metadataAttributes = v17;

    v19 = [checkCopy copy];
    tamperCheck = v14->_tamperCheck;
    v14->_tamperCheck = v19;

    v14->_keyclass = keyclass;
  }

  return v14;
}

+ (id)keySpecifier
{
  if (qword_100073888 != -1)
  {
    sub_100040D4C();
  }

  v3 = qword_100073880;

  return v3;
}

+ (id)encryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D74C;
  block[3] = &unk_10005A068;
  block[4] = self;
  if (qword_100073898 != -1)
  {
    dispatch_once(&qword_100073898, block);
  }

  v2 = qword_100073890;

  return v2;
}

+ (id)decryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002D864;
  block[3] = &unk_10005A068;
  block[4] = self;
  if (qword_1000738A8 != -1)
  {
    dispatch_once(&qword_1000738A8, block);
  }

  v2 = qword_1000738A0;

  return v2;
}

- (id)metadataAttributesWithError:(id *)error
{
  p_metadataAttributes = &self->_metadataAttributes;
  metadataAttributes = self->_metadataAttributes;
  if (metadataAttributes)
  {
    goto LABEL_26;
  }

  v7 = [(SecDbKeychainItemV7 *)self metadataClassKeyWithKeybag:self->_keybag allowWrites:0 error:error];
  if (v7)
  {
    decryptionOperation = [objc_opt_class() decryptionOperation];
    wrappedKey = [(SecDbKeychainMetadata *)self->_encryptedMetadata wrappedKey];
    v35 = 0;
    v10 = [decryptionOperation decrypt:wrappedKey withKey:v7 error:&v35];
    v11 = v35;

    if (v10)
    {
      v12 = [_SFAESKey alloc];
      keySpecifier = [objc_opt_class() keySpecifier];
      v14 = [v12 initWithData:v10 specifier:keySpecifier error:error];

      if (v14)
      {
        decryptionOperation2 = [objc_opt_class() decryptionOperation];
        ciphertext = [(SecDbKeychainMetadata *)self->_encryptedMetadata ciphertext];
        v34 = v11;
        v17 = [decryptionOperation2 decrypt:ciphertext withKey:v14 error:&v34];
        v33 = v34;

        if (v17)
        {
          v32 = v17;
          v18 = sub_10002DD28(v17);
          v19 = [v18 mutableCopy];

          v20 = [v19 objectForKeyedSubscript:@"TamperCheck"];
          tamperCheck = [(SecDbKeychainMetadata *)self->_encryptedMetadata tamperCheck];
          v22 = v20;
          LODWORD(v20) = [v20 isEqualToString:tamperCheck];

          if (v20)
          {
            [v19 removeObjectForKey:@"TamperCheck"];
            objc_storeStrong(p_metadataAttributes, v19);
          }

          else
          {
            v29 = secLogObjForScope("SecError");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              tamperCheck2 = [(SecDbKeychainMetadata *)self->_encryptedMetadata tamperCheck];
              *buf = 138412546;
              *&buf[4] = v22;
              *&buf[12] = 2112;
              *v37 = tamperCheck2;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: tamper check failed for metadata decryption, expected %@ found %@", buf, 0x16u);
            }

            if (error)
            {
              *buf = 0;
              SecError(-26275, buf, @"tamper check failed for metadata decryption");
              *error = *buf;
            }
          }

          v17 = v32;
          v28 = v33;
        }

        else
        {
          v27 = secLogObjForScope("SecError");
          v28 = v33;
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error decrypting metadata content: %@", buf, 0xCu);
          }

          if (error)
          {
            *buf = v33;
            SecError(-26275, buf, @"failed to decrypt item metadata contents");
            *error = *buf;
          }
        }

        if (v17)
        {
          goto LABEL_25;
        }

LABEL_14:

        v26 = 0;
        goto LABEL_27;
      }
    }

    else
    {
      v23 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        keyclass = [(SecDbKeychainItemV7 *)self keyclass];
        keybag = self->_keybag;
        *buf = 67109634;
        *&buf[4] = keyclass;
        *&buf[8] = 1024;
        *&buf[10] = keybag;
        *v37 = 2112;
        *&v37[2] = v11;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error unwrapping item metadata key (class %d, bag %d): %@", buf, 0x18u);
      }

      if (error)
      {
        *buf = v11;
        SecError(-26275, buf, @"failed to unwrap item metadata key");
        *error = *buf;
      }
    }

    goto LABEL_14;
  }

LABEL_25:

  metadataAttributes = *p_metadataAttributes;
LABEL_26:
  v26 = metadataAttributes;
LABEL_27:

  return v26;
}

- (id)secretAttributesWithAcmContext:(id)context accessControl:(__SecAccessControl *)control callerAccessGroups:(id)groups keyDiversify:(BOOL)diversify error:(id *)error
{
  diversifyCopy = diversify;
  contextCopy = context;
  groupsCopy = groups;
  secretAttributes = self->_secretAttributes;
  if (secretAttributes)
  {
    goto LABEL_15;
  }

  wrappedKey = [(SecDbKeychainSecretData *)self->_encryptedSecretData wrappedKey];
  v16 = [(SecDbKeychainItemV7 *)self unwrapFromAKS:wrappedKey accessControl:control acmContext:contextCopy callerAccessGroups:groupsCopy delete:0 keyDiversify:diversifyCopy error:error];

  if (!v16)
  {
LABEL_14:

    secretAttributes = self->_secretAttributes;
LABEL_15:
    v31 = secretAttributes;
    goto LABEL_16;
  }

  v17 = objc_autoreleasePoolPush();
  decryptionOperation = [objc_opt_class() decryptionOperation];
  ciphertext = [(SecDbKeychainSecretData *)self->_encryptedSecretData ciphertext];
  v36 = 0;
  v20 = [decryptionOperation decrypt:ciphertext withKey:v16 error:&v36];
  v21 = v36;

  objc_autoreleasePoolPop(v17);
  if (v20)
  {
    v35 = v21;
    context = objc_autoreleasePoolPush();
    v22 = [v20 subdataWithRange:{0, objc_msgSend(v20, "length") - *(objc_msgSend(v20, "length") + objc_msgSend(v20, "bytes") - 1)}];
    v23 = sub_10002DD28(v22);
    v24 = [v23 mutableCopy];

    v25 = [v24 objectForKeyedSubscript:@"TamperCheck"];
    tamperCheck = [(SecDbKeychainSecretData *)self->_encryptedSecretData tamperCheck];
    v27 = [v25 isEqualToString:tamperCheck];

    if (v27)
    {
      [v24 removeObjectForKey:@"TamperCheck"];
      v28 = v24;
      p_super = &self->_secretAttributes->super;
      self->_secretAttributes = v28;
    }

    else
    {
      p_super = secLogObjForScope("SecError");
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        tamperCheck2 = [(SecDbKeychainMetadata *)self->_encryptedMetadata tamperCheck];
        *buf = 138412546;
        *&buf[4] = v25;
        v38 = 2112;
        v39 = tamperCheck2;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: tamper check failed for secret data decryption, expected %@ found %@", buf, 0x16u);
      }
    }

    objc_autoreleasePoolPop(context);
    goto LABEL_14;
  }

  v30 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error decrypting item secret data contents: %@", buf, 0xCu);
  }

  if (error)
  {
    *buf = v21;
    SecError(-26275, buf, @"error decrypting item secret data contents");
    *error = *buf;
  }

  v31 = 0;
LABEL_16:

  return v31;
}

- (BOOL)deleteWithAcmContext:(id)context accessControl:(__SecAccessControl *)control callerAccessGroups:(id)groups keyDiversify:(BOOL)diversify error:(id *)error
{
  diversifyCopy = diversify;
  contextCopy = context;
  groupsCopy = groups;
  if (SecAccessControlGetConstraint() == kCFBooleanTrue)
  {
    v17 = 0;
    v15 = 1;
  }

  else
  {
    wrappedKey = [(SecDbKeychainSecretData *)self->_encryptedSecretData wrappedKey];
    v22 = 0;
    v15 = 1;
    v16 = [(SecDbKeychainItemV7 *)self unwrapFromAKS:wrappedKey accessControl:control acmContext:contextCopy callerAccessGroups:groupsCopy delete:1 keyDiversify:diversifyCopy error:&v22];
    v17 = v22;

    if (v17)
    {
      v18 = secLogObjForScope("SecError");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: failed to delete item secret key from aks", buf, 2u);
      }

      if (error)
      {
        v19 = v17;
        v15 = 0;
        *error = v17;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  return v15;
}

- (id)encryptedBlobWithKeybag:(int)keybag accessControl:(__SecAccessControl *)control acmContext:(id)context error:(id *)error
{
  v8 = *&keybag;
  contextCopy = context;
  v20 = 0;
  v11 = [(SecDbKeychainItemV7 *)self encryptMetadataWithKeybag:v8 error:&v20];
  v12 = v20;
  if (v11 && self->_encryptedMetadata && !v12 && (v19 = 0, v13 = [(SecDbKeychainItemV7 *)self encryptSecretDataWithKeybag:v8 accessControl:control acmContext:contextCopy error:&v19], v12 = v19, v13) && self->_encryptedSecretData && !v12)
  {
    v14 = objc_alloc_init(SecDbKeychainSerializedItemV7);
    encryptedMetadataBlob = [(SecDbKeychainItemV7 *)self encryptedMetadataBlob];
    [(SecDbKeychainSerializedItemV7 *)v14 setEncryptedMetadata:encryptedMetadataBlob];

    encryptedSecretDataBlob = [(SecDbKeychainItemV7 *)self encryptedSecretDataBlob];
    [(SecDbKeychainSerializedItemV7 *)v14 setEncryptedSecretData:encryptedSecretDataBlob];

    [(SecDbKeychainSerializedItemV7 *)v14 setKeyclass:self->_keyclass];
    data = [(SecDbKeychainSerializedItemV7 *)v14 data];

    v12 = 0;
  }

  else if (error)
  {
    v12 = v12;
    data = 0;
    *error = v12;
  }

  else
  {
    data = 0;
  }

  return data;
}

- (BOOL)encryptMetadataWithKeybag:(int)keybag error:(id *)error
{
  v5 = *&keybag;
  v7 = [_SFAESKey alloc];
  keySpecifier = [objc_opt_class() keySpecifier];
  v9 = [v7 initRandomKeyWithSpecifier:keySpecifier error:error];

  if (v9)
  {
    encryptionOperation = [objc_opt_class() encryptionOperation];
    v11 = [(NSDictionary *)self->_metadataAttributes mutableCopy];
    [(__CFString *)v11 setObject:self->_tamperCheck forKeyedSubscript:@"TamperCheck"];
    DERData = CFPropertyListCreateDERData(0, v11, 0, v12, v13, v14, v15, v16);
    if ([(__CFData *)DERData length]>= 0x801)
    {
      v18 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrAccessGroup];
      v19 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v28 = 134218242;
        v29 = [(__CFData *)DERData length];
        v30 = 2112;
        v31 = v18;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: item's metadata exceeds reasonable size (%lu bytes) (%@)", &v28, 0x16u);
      }
    }

    v20 = [encryptionOperation encrypt:DERData withKey:v9 error:error];
    v21 = [(SecDbKeychainItemV7 *)self metadataClassKeyWithKeybag:v5 allowWrites:1 error:error];
    if (v21)
    {
      keyData = [v9 keyData];
      v23 = [encryptionOperation encrypt:keyData withKey:v21 error:error];

      v24 = [[SecDbKeychainMetadata alloc] initWithCiphertext:v20 wrappedKey:v23 tamperCheck:self->_tamperCheck error:error];
      encryptedMetadata = self->_encryptedMetadata;
      self->_encryptedMetadata = v24;
    }

    v26 = self->_encryptedMetadata != 0;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (BOOL)encryptSecretDataWithKeybag:(int)keybag accessControl:(__SecAccessControl *)control acmContext:(id)context error:(id *)error
{
  v8 = *&keybag;
  contextCopy = context;
  v11 = [_SFAESKey alloc];
  keySpecifier = [objc_opt_class() keySpecifier];
  v13 = [v11 initRandomKeyWithSpecifier:keySpecifier error:error];

  if (v13)
  {
    encryptionOperation = [objc_opt_class() encryptionOperation];
    v15 = [(NSDictionary *)self->_secretAttributes mutableCopy];
    [(__CFString *)v15 setObject:self->_tamperCheck forKeyedSubscript:@"TamperCheck"];
    DERData = CFPropertyListCreateDERData(0, v15, 0, v16, v17, v18, v19, v20);
    v22 = [(__CFData *)DERData mutableCopy];

    if ([v22 length] > 0x8000)
    {
      controlCopy = control;
      v23 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrAccessGroup];
      v24 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = [v22 length];
        *&buf[12] = 2112;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: item's secret data exceeds reasonable size (%lu bytes) (%@)", buf, 0x16u);
      }

      control = controlCopy;
    }

    v25 = [v22 length];
    v26 = (20 * (v25 / 0x14) - v25 + 20);
    *buf = 0x101010101010101 * v26;
    *&buf[8] = 0x101010101010101 * v26;
    *&buf[16] = 16843009 * v26;
    [v22 appendBytes:buf length:?];
    v27 = [encryptionOperation encrypt:v22 withKey:v13 error:error];
    v28 = [(SecDbKeychainItemV7 *)self wrapToAKS:v13 withKeybag:v8 accessControl:control acmContext:contextCopy error:error];
    v29 = [[SecDbKeychainSecretData alloc] initWithCiphertext:v27 wrappedKey:v28 tamperCheck:self->_tamperCheck error:error];
    encryptedSecretData = self->_encryptedSecretData;
    self->_encryptedSecretData = v29;

    v31 = self->_encryptedSecretData != 0;
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

- (id)metadataClassKeyWithKeybag:(int)keybag allowWrites:(BOOL)writes error:(id *)error
{
  writesCopy = writes;
  v7 = *&keybag;
  v9 = +[SecDbKeychainMetadataKeyStore sharedStore];
  keyclass = self->_keyclass;
  keySpecifier = [objc_opt_class() keySpecifier];
  v12 = [v9 keyForKeyclass:keyclass keybag:v7 keySpecifier:keySpecifier allowWrites:writesCopy error:error];

  return v12;
}

- (id)wrapToAKS:(id)s withKeybag:(int)keybag accessControl:(__SecAccessControl *)control acmContext:(id)context error:(id *)error
{
  v8 = *&keybag;
  contextCopy = context;
  keyData = [s keyData];
  v12 = SecAccessControlGetConstraints();
  v13 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrMultiUser];
  if (!sub_1000295F0(v13))
  {
    v15 = 0;
    bytes = 0;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_16:
    v32 = [[NSMutableData alloc] initWithLength:128];
    v33 = v8;
    v34 = keyData;
    if ([SecAKSObjCWrappers aksEncryptWithKeybag:v33 keyclass:self->_keyclass plaintext:keyData outKeyclass:&self->_keyclass ciphertext:v32 personaId:bytes personaIdLength:v15 error:error])
    {
      v31 = [[SecDbKeychainAKSWrappedKey alloc] initRegularWrappedKeyWithData:v32];
    }

    else
    {
      v31 = 0;
    }

    goto LABEL_33;
  }

  bytes = [(__CFData *)v13 bytes];
  v15 = [(__CFData *)v13 length];
  v16 = secLogObjForScope("KeyDiversify");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    sub_100040D60(v13, v16);
  }

  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_5:
  errorCopy = error;
  v56 = 0;
  v55 = 0;
  v57 = @"acl";
  v58 = v12;
  v17 = [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
  DERData = CFPropertyListCreateDERData(0, v17, &v55, v18, v19, v20, v21, v22);
  if (!contextCopy || (SecAccessControlIsBound() & 1) == 0)
  {
    v35 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: access control error", buf, 2u);
    }

    v26 = DERData;
    if (errorCopy)
    {
      v36 = SecAccessControlCopyData();
      SecAccessControlIsBound();
      sub_100011A30(&v55, v36);
      if (v36)
      {
        CFRelease(v36);
      }

      v31 = 0;
      *errorCopy = v55;
      goto LABEL_24;
    }

    v30 = v55;
    goto LABEL_28;
  }

  v53 = 0;
  *buf = 0;
  v24 = aks_params_create();
  v52 = v24;
  if (!v24)
  {
    v31 = 0;
    v34 = keyData;
    v26 = DERData;
    goto LABEL_32;
  }

  v25 = v24;
  if (bytes)
  {
    aks_params_set_data(v24, 15, bytes, v15);
  }

  v26 = DERData;
  aks_params_set_data(v25, 2, [(__CFData *)DERData bytes], [(__CFData *)DERData length]);
  aks_params_set_data(v25, 3, [contextCopy bytes], objc_msgSend(contextCopy, "length"));
  aks_params_get_der(v25, buf, &v53);
  v27 = aks_ref_key_create(v8, self->_keyclass, 0, *buf, v53, &v56);
  if (!v27)
  {
    v50 = 0;
    v51 = 0;
    v38 = aks_ref_key_encrypt(v56, *buf, v53, [keyData bytes], objc_msgSend(keyData, "length"), &v50, &v51);
    if (v38)
    {
      v39 = v38;
      v40 = SecAccessControlCopyData();
      sub_100011D68(v39, @"oe", v8, self->_keyclass, v40, contextCopy, &v55);
      if (v40)
      {
        CFRelease(v40);
      }

      free(*buf);
      *buf = 0;
      aks_ref_key_free(&v56);
      aks_params_free(&v52);
      v30 = v55;
      v26 = DERData;
      if (!errorCopy)
      {
        goto LABEL_28;
      }

      v31 = 0;
      *errorCopy = v55;
      v55 = 0;
    }

    else
    {
      free(*buf);
      *buf = 0;
      v41 = v55;
      if (errorCopy)
      {
        *errorCopy = v55;
        v55 = 0;
        v26 = DERData;
      }

      else
      {
        v26 = DERData;
        if (v55)
        {
          v55 = 0;
          CFRelease(v41);
        }
      }

      v42 = [NSData alloc];
      v43 = [v42 initWithBytesNoCopy:v50 length:v51];
      v49 = 0;
      blob = aks_ref_key_get_blob(v56, &v49);
      v45 = [NSData alloc];
      v46 = [v45 initWithBytes:blob length:v49];
      aks_params_free(&v52);
      aks_ref_key_free(&v56);
      v31 = [[SecDbKeychainAKSWrappedKey alloc] initRefKeyWrappedKeyWithData:v43 refKeyBlob:v46];
    }

    v34 = keyData;
    goto LABEL_32;
  }

  v28 = v27;
  v29 = SecAccessControlCopyData();
  sub_100011D68(v28, @"oe", v8, self->_keyclass, v29, contextCopy, &v55);
  if (v29)
  {
    CFRelease(v29);
  }

  free(*buf);
  *buf = 0;
  aks_params_free(&v52);
  v30 = v55;
  if (!errorCopy)
  {
LABEL_28:
    if (v30)
    {
      v55 = 0;
      CFRelease(v30);
    }

    v31 = 0;
    goto LABEL_31;
  }

  v31 = 0;
  *errorCopy = v55;
LABEL_24:
  v55 = 0;
LABEL_31:
  v34 = keyData;
LABEL_32:

LABEL_33:

  return v31;
}

- (id)unwrapFromAKS:(id)s accessControl:(__SecAccessControl *)control acmContext:(id)context callerAccessGroups:(id)groups delete:(BOOL)delete keyDiversify:(BOOL)diversify error:(id *)error
{
  diversifyCopy = diversify;
  errorCopy2 = error;
  sCopy = s;
  contextCopy = context;
  groupsCopy = groups;
  wrappedKey = [sCopy wrappedKey];
  if (diversifyCopy)
  {
    v18 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrMultiUser];
    if (sub_1000295F0(v18))
    {
      bytes = [v18 bytes];
      v20 = [v18 length];
      v21 = secLogObjForScope("KeyDiversify");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        sub_100040DD8(v18, v21);
      }
    }

    else
    {
      v20 = 0;
      bytes = 0;
    }

    errorCopy2 = error;
  }

  else
  {
    v20 = 0;
    bytes = 0;
  }

  if (![sCopy type])
  {
    v47 = [NSMutableData dataWithLength:32];
    if ([SecAKSObjCWrappers aksDecryptWithKeybag:self->_keybag keyclass:self->_keyclass ciphertext:wrappedKey outKeyclass:&self->_keyclass plaintext:v47 personaId:bytes personaIdLength:v20 error:errorCopy2])
    {
      v48 = [_SFAESKey alloc];
      keySpecifier = [objc_opt_class() keySpecifier];
      v26 = [v48 initWithData:v47 specifier:keySpecifier error:errorCopy2];
    }

    else
    {
      v26 = 0;
    }

    goto LABEL_23;
  }

  if ([sCopy type] != 1)
  {
    goto LABEL_22;
  }

  v75 = errorCopy2;
  v87 = 0;
  keybag = self->_keybag;
  refKeyBlob = [sCopy refKeyBlob];
  bytes2 = [refKeyBlob bytes];
  [sCopy refKeyBlob];
  v25 = v76 = contextCopy;
  LODWORD(keybag) = aks_ref_key_create_with_blob(keybag, bytes2, [v25 length], &v87);

  contextCopy = v76;
  v26 = 0;
  if (keybag)
  {
    goto LABEL_23;
  }

  v86 = 0;
  v85 = 0;
  external_data = aks_ref_key_get_external_data(v87, &v85);
  if (!external_data)
  {
    aks_ref_key_free(&v87);
LABEL_22:
    v26 = 0;
    goto LABEL_23;
  }

  theDict = 0;
  der_decode_plist(0, &theDict, &v86, external_data, &external_data[v85], v28, v29, v30);
  v31 = theDict;
  if (!theDict)
  {
    SecError(-26275, &v86, @"SecDbKeychainItemV7: failed to decode acl dict");
    v31 = theDict;
  }

  CFDictionaryGetValue(v31, @"acl");
  SecAccessControlSetConstraints();
  if (groupsCopy)
  {
    v38 = der_sizeof_plist(groupsCopy, &v86, v32, v33, v34, v35, v36, v37);
    v39 = [[NSMutableData alloc] initWithLength:v38];
    mutableBytes = [v39 mutableBytes];
    mutableBytes2 = [v39 mutableBytes];
    v42 = mutableBytes;
    contextCopy = v76;
    der_encode_plist(groupsCopy, &v86, v42, mutableBytes2 + v38, v43, v44, v45, v46);
  }

  else
  {
    v39 = 0;
    v38 = 0;
  }

  v82 = 0;
  v83 = 0;
  v51 = aks_params_create();
  v26 = v51;
  v81 = v51;
  if (v51)
  {
    if (bytes)
    {
      aks_params_set_data(v51, 15, bytes, v20);
      v26 = v81;
    }

    v52 = v39;
    aks_params_set_data(v26, 1, [v39 bytes], v38);
    aks_params_set_data(v81, 3, [v76 bytes], objc_msgSend(v76, "length"));
    aks_params_get_der(v81, &v83, &v82);
    v79 = 0;
    v80 = 0;
    v53 = aks_ref_key_decrypt(v87, v83, v82, [wrappedKey bytes], objc_msgSend(wrappedKey, "length"), &v80, &v79);
    if (v53)
    {
      v57 = v53;
      contextCopy = v76;
      if (v76 || v53 != -536363000)
      {
        v69 = SecAccessControlCopyData();
        sub_100011D68(v57, @"od", 0, 0, v69, v76, &v86);
        if (v69)
        {
          CFRelease(v69);
        }
      }

      else
      {
        sub_100011A30(&v86, 0);
      }

      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      aks_params_free(&v81);
      v70 = v86;
      if (v75)
      {
        v26 = 0;
        *v75 = v86;
        v86 = 0;
      }

      else
      {
        if (v86)
        {
          v86 = 0;
          CFRelease(v70);
        }

        v26 = 0;
      }

      goto LABEL_73;
    }

    if (!v80)
    {
      SecError(-26275, &v86, @"SecDbKeychainItemV7: failed to decrypt item, Item can't be decrypted due to failed decode der, so drop the item.");
      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      aks_params_free(&v81);
      v71 = v86;
      if (v75)
      {
        v26 = 0;
        *v75 = v86;
        v86 = 0;
        contextCopy = v76;
      }

      else
      {
        contextCopy = v76;
        if (v86)
        {
          v86 = 0;
          CFRelease(v71);
        }

        v26 = 0;
      }

      goto LABEL_73;
    }

    cf = 0;
    der_decode_plist(0, &cf, &v86, v80, v80 + v79, v54, v55, v56);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v58 = [_SFAESKey alloc];
      v59 = cf;
      keySpecifier2 = [objc_opt_class() keySpecifier];
      v61 = [v58 initWithData:v59 specifier:keySpecifier2 error:v75];

      v62 = cf;
      if (cf)
      {
        cf = 0;
        CFRelease(v62);
      }

      contextCopy = v76;
      if (!delete || (v63 = aks_ref_key_delete(), !v63))
      {
        v74 = v86;
        if (v75)
        {
          *v75 = v86;
          v86 = 0;
          v39 = v52;
        }

        else
        {
          v39 = v52;
          if (v86)
          {
            v86 = 0;
            CFRelease(v74);
          }
        }

        aks_ref_key_free(&v87);
        free(v83);
        v83 = 0;
        free(v80);
        v80 = 0;
        aks_params_free(&v81);
        v61 = v61;
        v26 = v61;
        goto LABEL_72;
      }

      v64 = v63;
      v65 = SecAccessControlCopyData();
      sub_100011D68(v64, @"odel", 0, 0, v65, v76, &v86);
      if (v65)
      {
        CFRelease(v65);
      }

      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      free(v80);
      v80 = 0;
      aks_params_free(&v81);
      v66 = v86;
      v67 = v75;
      if (v75)
      {
        v68 = v86;
LABEL_58:
        v26 = 0;
        *v67 = v68;
        v86 = 0;
LABEL_68:
        v39 = v52;
LABEL_72:

        goto LABEL_73;
      }

      if (v86)
      {
        v86 = 0;
        CFRelease(v66);
      }
    }

    else
    {
      SecError(-26275, &v86, @"SecDbKeychainItemV7: failed to decrypt item, Item can't be decrypted due to failed decode der, so drop the item.");
      v72 = cf;
      v67 = v75;
      if (cf)
      {
        cf = 0;
        CFRelease(v72);
      }

      aks_ref_key_free(&v87);
      free(v83);
      v83 = 0;
      free(v80);
      v80 = 0;
      aks_params_free(&v81);
      v73 = v86;
      contextCopy = v76;
      if (v75)
      {
        v68 = v86;
        v61 = 0;
        goto LABEL_58;
      }

      if (v86)
      {
        v86 = 0;
        CFRelease(v73);
      }

      v61 = 0;
    }

    v26 = 0;
    goto LABEL_68;
  }

  aks_ref_key_free(&v87);
LABEL_73:

LABEL_23:

  return v26;
}

@end