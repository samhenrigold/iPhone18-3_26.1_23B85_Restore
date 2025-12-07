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

+ (id)decryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161C58;
  block[3] = &unk_100346E68;
  block[4] = self;
  if (qword_10039DF88 != -1)
  {
    dispatch_once(&qword_10039DF88, block);
  }

  v2 = qword_10039DF80;

  return v2;
}

+ (id)keySpecifier
{
  if (qword_10039DF68 != -1)
  {
    dispatch_once(&qword_10039DF68, &stru_100338758);
  }

  v3 = qword_10039DF60;

  return v3;
}

+ (id)encryptionOperation
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100161CD0;
  block[3] = &unk_100346E68;
  block[4] = self;
  if (qword_10039DF78 != -1)
  {
    dispatch_once(&qword_10039DF78, block);
  }

  v2 = qword_10039DF70;

  return v2;
}

- (id)unwrapFromAKS:(id)s accessControl:(__SecAccessControl *)control acmContext:(id)context callerAccessGroups:(id)groups delete:(BOOL)delete keyDiversify:(BOOL)diversify error:(id *)error
{
  diversifyCopy = diversify;
  sCopy = s;
  contextCopy = context;
  groupsCopy = groups;
  wrappedKey = [sCopy wrappedKey];
  if (diversifyCopy)
  {
    v17 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrMultiUser];
    if (sub_100013E34(v17))
    {
      bytes = [v17 bytes];
      v43 = [v17 length];
      v19 = sub_100006274("KeyDiversify");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        *&buf[4] = v17;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "unwrapFromAKS: Key diversification feature persona(musr) %@ is data separated", buf, 0xCu);
      }
    }

    else
    {
      v43 = 0;
      bytes = 0;
    }
  }

  else
  {
    v43 = 0;
    bytes = 0;
  }

  if (![sCopy type])
  {
    v25 = [NSMutableData dataWithLength:32];
    if (![SecAKSObjCWrappers aksDecryptWithKeybag:self->_keybag keyclass:self->_keyclass ciphertext:wrappedKey outKeyclass:&self->_keyclass plaintext:v25 personaId:bytes personaIdLength:v43 error:error])
    {
      v23 = 0;
      goto LABEL_21;
    }

    v34 = [_SFAESKey alloc];
    keySpecifier = [objc_opt_class() keySpecifier];
    v23 = [v34 initWithData:v25 specifier:keySpecifier error:error];
    goto LABEL_19;
  }

  if ([sCopy type] == 1)
  {
    *buf = 0;
    refKeyBlob = [sCopy refKeyBlob];
    [refKeyBlob bytes];
    [sCopy refKeyBlob];
    v21 = v42 = contextCopy;
    [v21 length];
    v22 = aks_ref_key_create_with_blob();

    contextCopy = v42;
    v23 = 0;
    if (v22)
    {
      goto LABEL_24;
    }

    v51 = 0;
    v50 = 0;
    external_data = aks_ref_key_get_external_data();
    if (external_data)
    {
      theDict = 0;
      sub_1000068E0(0, &theDict, &v51, external_data, &external_data[v50]);
      v25 = theDict;
      if (!theDict)
      {
        sub_1000103CC(-26275, &v51, @"SecDbKeychainItemV7: failed to decode acl dict");
      }

      CFDictionaryGetValue(v25, @"acl");
      SecAccessControlSetConstraints();
      if (groupsCopy)
      {
        v29 = sub_10000E384(groupsCopy, &v51, v26, v27, v28);
        keySpecifier = [[NSMutableData alloc] initWithLength:v29];
        mutableBytes = [keySpecifier mutableBytes];
        mutableBytes2 = [keySpecifier mutableBytes];
        v33 = mutableBytes;
        contextCopy = v42;
        sub_10000E614(groupsCopy, &v51, 0, v33, mutableBytes2 + v29);
      }

      else
      {
        keySpecifier = 0;
      }

      v47 = 0;
      v48 = 0;
      v23 = aks_params_create();
      v46 = v23;
      if (v23)
      {
        if (bytes)
        {
          aks_params_set_data();
        }

        v36 = keySpecifier;
        [keySpecifier bytes];
        aks_params_set_data();
        [v42 bytes];
        [v42 length];
        aks_params_set_data();
        aks_params_get_der();
        v44 = 0;
        v45 = 0;
        [wrappedKey bytes];
        [wrappedKey length];
        v37 = aks_ref_key_decrypt();
        if (v37)
        {
          v38 = v37;
          contextCopy = v42;
          errorCopy2 = error;
          if (v42 || v37 != -536363000)
          {
            v40 = SecAccessControlCopyData();
            sub_100193860(v38, @"od", 0, 0, v40, v42, &v51);
            if (v40)
            {
              CFRelease(v40);
            }
          }

          else
          {
            sub_1001935E8(&v51, 0);
          }

          aks_ref_key_free();
          free(v48);
          v48 = 0;
          aks_params_free();
          v41 = v51;
          if (error)
          {
            goto LABEL_40;
          }
        }

        else
        {
          errorCopy2 = error;
          sub_1000103CC(-26275, &v51, @"SecDbKeychainItemV7: failed to decrypt item, Item can't be decrypted due to failed decode der, so drop the item.");
          aks_ref_key_free();
          free(v48);
          v48 = 0;
          aks_params_free();
          v41 = v51;
          contextCopy = v42;
          if (error)
          {
LABEL_40:
            v23 = 0;
            *errorCopy2 = v41;
            v51 = 0;
LABEL_45:
            keySpecifier = v36;
            v25 = theDict;
            goto LABEL_19;
          }
        }

        if (v41)
        {
          v51 = 0;
          CFRelease(v41);
        }

        v23 = 0;
        goto LABEL_45;
      }

      aks_ref_key_free();
LABEL_19:

LABEL_21:
      goto LABEL_24;
    }

    aks_ref_key_free();
  }

  v23 = 0;
LABEL_24:

  return v23;
}

- (id)wrapToAKS:(id)s withKeybag:(int)keybag accessControl:(__SecAccessControl *)control acmContext:(id)context error:(id *)error
{
  v8 = *&keybag;
  contextCopy = context;
  keyData = [s keyData];
  v12 = SecAccessControlGetConstraints();
  v13 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrMultiUser];
  if (!sub_100013E34(v13))
  {
    v15 = 0;
    bytes = 0;
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_16:
    v28 = [[NSMutableData alloc] initWithLength:128];
    v29 = v8;
    v30 = keyData;
    if ([SecAKSObjCWrappers aksEncryptWithKeybag:v29 keyclass:self->_keyclass plaintext:keyData outKeyclass:&self->_keyclass ciphertext:v28 personaId:bytes personaIdLength:v15 error:error])
    {
      v27 = [[SecDbKeychainAKSWrappedKey alloc] initRegularWrappedKeyWithData:v28];
    }

    else
    {
      v27 = 0;
    }

    goto LABEL_33;
  }

  bytes = [(__CFData *)v13 bytes];
  v15 = [(__CFData *)v13 length];
  v16 = sub_100006274("KeyDiversify");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *v46 = 138412290;
    *&v46[4] = v13;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "wrapToAKS: Key diversification feature persona(musr) %@ is data separated", v46, 0xCu);
  }

  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_5:
  errorCopy = error;
  *v46 = 0;
  v43 = 0;
  v44 = @"acl";
  v45 = v12;
  v17 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v21 = sub_10001B910(v17, &v43, v18, v19, v20);
  if (!contextCopy || (SecAccessControlIsBound() & 1) == 0)
  {
    v31 = sub_100006274("SecError");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: access control error", buf, 2u);
    }

    v22 = v21;
    if (errorCopy)
    {
      v32 = SecAccessControlCopyData();
      SecAccessControlIsBound();
      sub_1001935E8(&v43, v32);
      if (v32)
      {
        CFRelease(v32);
      }

      v27 = 0;
      *errorCopy = v43;
      goto LABEL_24;
    }

    v26 = v43;
    goto LABEL_28;
  }

  *buf = 0;
  if (!aks_params_create())
  {
    v27 = 0;
    v30 = keyData;
    v22 = v21;
    goto LABEL_32;
  }

  if (bytes)
  {
    aks_params_set_data();
  }

  v22 = v21;
  [(__CFData *)v21 bytes];
  [(__CFData *)v21 length];
  aks_params_set_data();
  [contextCopy bytes];
  [contextCopy length];
  aks_params_set_data();
  aks_params_get_der();
  v23 = aks_ref_key_create();
  if (!v23)
  {
    [keyData bytes];
    [keyData length];
    v34 = aks_ref_key_encrypt();
    if (v34)
    {
      v35 = v34;
      v36 = SecAccessControlCopyData();
      sub_100193860(v35, @"oe", v8, self->_keyclass, v36, contextCopy, &v43);
      if (v36)
      {
        CFRelease(v36);
      }

      free(*buf);
      *buf = 0;
      aks_ref_key_free();
      aks_params_free();
      v26 = v43;
      v22 = v21;
      if (!errorCopy)
      {
        goto LABEL_28;
      }

      v27 = 0;
      *errorCopy = v43;
      v43 = 0;
    }

    else
    {
      free(*buf);
      *buf = 0;
      v37 = v43;
      if (errorCopy)
      {
        *errorCopy = v43;
        v43 = 0;
        v22 = v21;
      }

      else
      {
        v22 = v21;
        if (v43)
        {
          v43 = 0;
          CFRelease(v37);
        }
      }

      v38 = [[NSData alloc] initWithBytesNoCopy:0 length:0];
      v39 = [[NSData alloc] initWithBytes:aks_ref_key_get_blob() length:0];
      aks_params_free();
      aks_ref_key_free();
      v27 = [[SecDbKeychainAKSWrappedKey alloc] initRefKeyWrappedKeyWithData:v38 refKeyBlob:v39];
    }

    v30 = keyData;
    goto LABEL_32;
  }

  v24 = v23;
  v25 = SecAccessControlCopyData();
  sub_100193860(v24, @"oe", v8, self->_keyclass, v25, contextCopy, &v43);
  if (v25)
  {
    CFRelease(v25);
  }

  free(*buf);
  *buf = 0;
  aks_params_free();
  v26 = v43;
  if (!errorCopy)
  {
LABEL_28:
    if (v26)
    {
      v43 = 0;
      CFRelease(v26);
    }

    v27 = 0;
    goto LABEL_31;
  }

  v27 = 0;
  *errorCopy = v43;
LABEL_24:
  v43 = 0;
LABEL_31:
  v30 = keyData;
LABEL_32:

LABEL_33:

  return v27;
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
    v19 = sub_10001B910(v15, 0, v16, v17, v18);
    v20 = [(__CFData *)v19 mutableCopy];

    if ([v20 length] > 0x8000)
    {
      controlCopy = control;
      v21 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrAccessGroup];
      v22 = sub_100006274("SecWarning");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        *&buf[4] = [v20 length];
        *&buf[12] = 2112;
        *&buf[14] = v21;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: item's secret data exceeds reasonable size (%lu bytes) (%@)", buf, 0x16u);
      }

      control = controlCopy;
    }

    v23 = [v20 length];
    v24 = (20 * (v23 / 0x14) - v23 + 20);
    *buf = 0x101010101010101 * v24;
    *&buf[8] = 0x101010101010101 * v24;
    *&buf[16] = 16843009 * v24;
    [v20 appendBytes:buf length:?];
    v25 = [encryptionOperation encrypt:v20 withKey:v13 error:error];
    v26 = [(SecDbKeychainItemV7 *)self wrapToAKS:v13 withKeybag:v8 accessControl:control acmContext:contextCopy error:error];
    v27 = [[SecDbKeychainSecretData alloc] initWithCiphertext:v25 wrappedKey:v26 tamperCheck:self->_tamperCheck error:error];
    encryptedSecretData = self->_encryptedSecretData;
    self->_encryptedSecretData = v27;

    v29 = self->_encryptedSecretData != 0;
  }

  else
  {
    v29 = 0;
  }

  return v29;
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
    v15 = sub_10001B910(v11, 0, v12, v13, v14);
    if ([(__CFData *)v15 length]>= 0x801)
    {
      v16 = [(NSDictionary *)self->_metadataAttributes objectForKeyedSubscript:kSecAttrAccessGroup];
      v17 = sub_100006274("SecWarning");
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 134218242;
        v27 = [(__CFData *)v15 length];
        v28 = 2112;
        v29 = v16;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: item's metadata exceeds reasonable size (%lu bytes) (%@)", &v26, 0x16u);
      }
    }

    v18 = [encryptionOperation encrypt:v15 withKey:v9 error:error];
    v19 = [(SecDbKeychainItemV7 *)self metadataClassKeyWithKeybag:v5 allowWrites:1 error:error];
    if (v19)
    {
      keyData = [v9 keyData];
      v21 = [encryptionOperation encrypt:keyData withKey:v19 error:error];

      v22 = [[SecDbKeychainMetadata alloc] initWithCiphertext:v18 wrappedKey:v21 tamperCheck:self->_tamperCheck error:error];
      encryptedMetadata = self->_encryptedMetadata;
      self->_encryptedMetadata = v22;
    }

    v24 = self->_encryptedMetadata != 0;
  }

  else
  {
    v24 = 0;
  }

  return v24;
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
      v18 = sub_100006274("SecError");
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
    v23 = sub_10000DA84(v22);
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
      p_super = sub_100006274("SecError");
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

  v30 = sub_100006274("SecError");
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "SecDbKeychainItemV7: error decrypting item secret data contents: %@", buf, 0xCu);
  }

  if (error)
  {
    *buf = v21;
    sub_1000103CC(-26275, buf, @"error decrypting item secret data contents");
    *error = *buf;
  }

  v31 = 0;
LABEL_16:

  return v31;
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
          v18 = sub_10000DA84(v17);
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
            v29 = sub_100006274("SecError");
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
              sub_1000103CC(-26275, buf, @"tamper check failed for metadata decryption");
              *error = *buf;
            }
          }

          v17 = v32;
          v28 = v33;
        }

        else
        {
          v27 = sub_100006274("SecError");
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
            sub_1000103CC(-26275, buf, @"failed to decrypt item metadata contents");
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
      v23 = sub_100006274("SecError");
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
        sub_1000103CC(-26275, buf, @"failed to unwrap item metadata key");
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

- (SecDbKeychainItemV7)initWithSecretAttributes:(id)attributes metadataAttributes:(id)metadataAttributes tamperCheck:(id)check keyclass:(int)keyclass
{
  attributesCopy = attributes;
  metadataAttributesCopy = metadataAttributes;
  checkCopy = check;
  if (!checkCopy)
  {
    v22 = +[NSAssertionHandler currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"SecDbKeychainItemV7.m" lineNumber:360 description:{@"Invalid parameter not satisfying: %@", @"tamperCheck"}];
  }

  v23.receiver = self;
  v23.super_class = SecDbKeychainItemV7;
  v14 = [(SecDbKeychainItemV7 *)&v23 init];
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
      v11 = sub_100006274("SecWarning");
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

@end