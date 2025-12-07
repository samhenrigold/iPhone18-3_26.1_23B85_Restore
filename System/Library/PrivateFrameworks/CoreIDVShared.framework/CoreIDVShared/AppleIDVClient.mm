@interface AppleIDVClient
+ (id)prepareUnboundACLForBinding:(__SecAccessControl *)binding withConstraints:(id)constraints;
+ (unsigned)appleIDVAuthorizePresentment:(id)presentment withLAContextData:(id)data onSESlot:(int64_t)slot andPayloadDigest:(id)digest;
+ (unsigned)appleIDVAuthorizePresentment:(id)presentment withLAContextData:(id)data onSESlot:(int64_t)slot andPublicKey:(id)key;
+ (unsigned)appleIDVCredentialAuthenticationTokenStatus;
+ (unsigned)appleIDVEstablishPrearmTrustWithCertificate:(id)certificate protectedPublicKey:(id *)key;
+ (unsigned)appleIDVGenerateNonceOnWatch:(id *)watch;
+ (unsigned)appleIDVGeneratePhoneTokenWithNonce:(id)nonce withReferenceACLBlob:(id)blob keyBlob:(id)keyBlob keyAttestation:(id)attestation casdCertificate:(id)certificate phoneToken:(id *)token;
+ (unsigned)appleIDVGeneratePrearmTrustKeyForWatchAndCopyPrivateKey:(id)key progenitorPublicKey:(id)publicKey encryptedPrivateKey:(id *)privateKey attestation:(id *)attestation publicKey:(id *)a7 keyBlob:(id *)blob;
+ (unsigned)appleIDVGetPrearmTrustKeyFromExistingKeyBlob:(id)blob nonce:(id)nonce progenitorPublicKey:(id)key encryptedPrivateKey:(id *)privateKey attestation:(id *)attestation publicKey:(id *)publicKey keyBlob:(id *)keyBlob;
+ (unsigned)appleIDVGetStatus:(int64_t *)status andSIDVVersion:(id *)version andAppleIDVVersion:(id *)vVersion;
+ (unsigned)appleIDVGetStatus:(int64_t *)status andVersion:(id *)version;
+ (unsigned)appleIDVPersistACLBlob:(id)blob intoBlob:(id *)intoBlob returnBioUUIDs:(id *)ds andRequireDoublePress:(unsigned __int8)press;
+ (unsigned)appleIDVPersistModifiedACLBlob:(id)blob withReferenceACLBlob:(id)lBlob withLAContextData:(id)data intoBlob:(id *)intoBlob returnBioUUIDs:(id *)ds;
+ (unsigned)appleIDVPersistModifiedSESlot:(int64_t)slot withReferenceBlob:(id)blob withLAContextData:(id)data intoBlob:(id *)intoBlob;
+ (unsigned)appleIDVRecoverPersistedACLBlob:(id)blob intoBlob:(id *)intoBlob;
+ (unsigned)appleIDVRevokeCredentialAuthorizationToken;
+ (unsigned)appleIDVUpdatePrearmTrustKeyForWatch:(id)watch progenitorPublicKey:(id)key encryptedPrivateKey:(id *)privateKey attestation:(id *)attestation publicKey:(id *)publicKey keyBlob:(id *)blob;
+ (unsigned)getUUIDsFromACL:(id)l intoArray:(id *)array;
+ (unsigned)prepareACL:(id *)l aclType:(unsigned int)type forAclUsage:(unsigned int)usage forBioUUID:(id)d;
+ (unsigned)prepareACLForPhoneDecryption:(id *)decryption withSubType:(unsigned int)type forBioUUID:(id)d;
+ (unsigned)prepareACLForWatchDecryption:(id *)decryption withSubType:(unsigned int)type forAclUsage:(unsigned int)usage;
+ (unsigned)prepareUnboundACLForBioBinding:(id *)binding;
+ (unsigned)prepareUnboundACLForPasscodeBinding:(id *)binding;
+ (unsigned)prepareUnboundACLForWatch:(id *)watch withAccessibilityEnabled:(BOOL)enabled;
+ (unsigned)removeDoublePressOnACL:(id)l intoACL:(id *)cL;
+ (unsigned)requireDoublePressOnACL:(id)l intoACL:(id *)cL;
+ (void)appleIDVCredentialAuthenticationTokenStatus;
+ (void)appleIDVRevokeCredentialAuthorizationToken;
@end

@implementation AppleIDVClient

+ (unsigned)getUUIDsFromACL:(id)l intoArray:(id *)array
{
  lCopy = l;
  v24 = 0;
  v6 = objc_opt_new();
  if (array)
  {
    v7 = SecAccessControlCreateFromData();
    if (v7)
    {
      v8 = v7;
      v9 = SecAccessControlGetConstraints();
      v10 = [v9 objectForKey:@"osgn"];
      v11 = [v10 objectForKey:@"cbio"];

      if (v11)
      {
        v12 = [v9 objectForKeyedSubscript:@"osgn"];
        v13 = [v12 objectForKeyedSubscript:@"cbio"];
        v14 = [v13 objectForKeyedSubscript:@"pbiou"];

        if (v14)
        {
          bytes = [v14 bytes];
          if ([v14 length])
          {
            v16 = 0;
            do
            {
              v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:bytes];
              [v6 addObject:v17];

              v16 += 16;
              bytes += 16;
            }

            while ([v14 length] > v16);
          }

          v18 = v6;

          v19 = 0;
          goto LABEL_15;
        }

        v19 = 14;
      }

      else
      {
        v19 = 0;
      }

      v22 = v6;
LABEL_15:
      *array = v6;
      CFRelease(v8);

      goto LABEL_16;
    }

    v20 = APPLEIDV_LOG_CLIENT(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [AppleIDVClient getUUIDsFromACL:lCopy intoArray:&v24];
    }

    v19 = 13;
  }

  else
  {
    v19 = 5;
  }

  v21 = v6;
  *array = v6;
LABEL_16:

  return v19;
}

+ (unsigned)prepareACL:(id *)l aclType:(unsigned int)type forAclUsage:(unsigned int)usage forBioUUID:(id)d
{
  v7 = *&type;
  dCopy = d;
  v10 = dCopy;
  if (usage == 2)
  {
    if ((v7 - 2) >= 2)
    {
      if (v7 != 1 && (v7 || !dCopy))
      {
        goto LABEL_17;
      }

      lCopy3 = l;
      v14 = v7;
      v15 = dCopy;
      goto LABEL_16;
    }

    lCopy4 = l;
    v19 = v7;
    v20 = 2;
LABEL_23:
    v12 = [AppleIDVClient prepareACLForWatchDecryption:lCopy4 withSubType:v19 forAclUsage:v20];
    goto LABEL_27;
  }

  if (usage == 1)
  {
    if ((v7 - 2) >= 2)
    {
      if (v7 > 1)
      {
        goto LABEL_17;
      }

      lCopy3 = l;
      v14 = v7;
      v15 = 0;
LABEL_16:
      v12 = [AppleIDVClient prepareACLForPhoneDecryption:lCopy3 withSubType:v14 forBioUUID:v15];
      goto LABEL_27;
    }

    lCopy4 = l;
    v19 = v7;
    v20 = 1;
    goto LABEL_23;
  }

  if (usage)
  {
LABEL_17:
    v11 = 1;
    goto LABEL_28;
  }

  v11 = 1;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      lCopy6 = l;
      v17 = 0;
    }

    else
    {
      if (v7 != 3)
      {
        goto LABEL_28;
      }

      lCopy6 = l;
      v17 = 1;
    }

    v12 = [AppleIDVClient prepareUnboundACLForWatch:lCopy6 withAccessibilityEnabled:v17];
    goto LABEL_27;
  }

  if (!v7)
  {
    v12 = [AppleIDVClient prepareUnboundACLForBioBinding:l];
    goto LABEL_27;
  }

  if (v7 == 1)
  {
    v12 = [AppleIDVClient prepareUnboundACLForPasscodeBinding:l];
LABEL_27:
    v11 = v12;
  }

LABEL_28:

  return v11;
}

+ (unsigned)prepareACLForPhoneDecryption:(id *)decryption withSubType:(unsigned int)type forBioUUID:(id)d
{
  dCopy = d;
  error = 0;
  if (type)
  {
    v8 = 16;
  }

  else
  {
    v8 = 2;
  }

  v9 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], v8, &error);
  if (v9)
  {
    v10 = v9;
    v11 = SecAccessControlGetConstraints();
    if (!v11)
    {
      v12 = APPLEIDV_LOG_CLIENT(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
      }

      v22 = 15;
      goto LABEL_27;
    }

    v12 = v11;
    if (dCopy)
    {
      v13 = [v11 objectForKeyedSubscript:@"od"];
      v14 = [v13 mutableCopy];

      if (!v14)
      {
        v29 = APPLEIDV_LOG_CLIENT(v15);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
        }

        v22 = 17;
        goto LABEL_27;
      }

      v16 = [v12 objectForKeyedSubscript:@"od"];
      v17 = [v16 objectForKeyedSubscript:@"cbio"];

      if (!v17 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
      {
        v28 = APPLEIDV_LOG_CLIENT(isKindOfClass);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
        }

        v22 = 18;
        goto LABEL_27;
      }

      [v17 setObject:dCopy forKey:@"pbiou"];
      [v14 setObject:v17 forKey:@"cbio"];
      v19 = [v12 mutableCopy];
      [v19 setObject:v14 forKey:@"od"];
      v20 = v19;

      v12 = v20;
    }

    else
    {
      v17 = 0;
      v14 = 0;
      v20 = 0;
    }

    v23 = v12;
    v24 = [v12 mutableCopy];

    v25 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v24 setObject:v25 forKey:@"ock"];

    v12 = v24;
    v27 = APPLEIDV_LOG_CLIENT(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
    }

    SecAccessControlSetConstraints();
    *decryption = SecAccessControlCopyData();

    v22 = 0;
LABEL_27:

    CFRelease(v10);
    goto LABEL_28;
  }

  v21 = APPLEIDV_LOG_CLIENT(0);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    +[AppleIDVClient prepareACLForPhoneDecryption:withSubType:forBioUUID:];
  }

  v22 = 13;
LABEL_28:

  return v22;
}

+ (unsigned)prepareACLForWatchDecryption:(id *)decryption withSubType:(unsigned int)type forAclUsage:(unsigned int)usage
{
  v8 = SecAccessControlCreate();
  if (v8)
  {
    v9 = v8;
    v10 = SecAccessControlSetProtection();
    if (v10)
    {
      if (type == 2 && usage == 1 || type == 3 && usage == 1 || type == 2 && usage == 2 || type == 3 && usage == 2)
      {
        v14 = APPLEIDV_LOG_CLIENT(v10);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
        }

        SecAccessControlSetConstraints();
        v12 = 0;
        *decryption = SecAccessControlCopyData();
        goto LABEL_21;
      }

      v13 = APPLEIDV_LOG_CLIENT(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
      }
    }

    else
    {
      v13 = APPLEIDV_LOG_CLIENT(v10);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
      }
    }

    v12 = 13;
LABEL_21:
    CFRelease(v9);
    return v12;
  }

  v11 = APPLEIDV_LOG_CLIENT(0);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[AppleIDVClient prepareACLForWatchDecryption:withSubType:forAclUsage:];
  }

  return 13;
}

+ (unsigned)prepareUnboundACLForBioBinding:(id *)binding
{
  v32 = *MEMORY[0x277D85DE8];
  error = 0;
  v30 = 0;
  v31 = 0;
  v5 = objc_opt_new();
  v6 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], 2uLL, &error);
  if (v6)
  {
    v7 = v6;
    v8 = SecAccessControlGetConstraints();
    if (v8)
    {
      v9 = v8;
      v28 = 0;
      v10 = [v5 evaluateAccessControl:v7 operation:0 options:0 error:&v28];
      v11 = v28;

      if (v10)
      {
        v13 = SecAccessControlGetConstraints();

        v14 = [v13 objectForKeyedSubscript:@"od"];
        v15 = [v14 mutableCopy];

        if (v15)
        {
          v17 = [v13 objectForKeyedSubscript:@"od"];
          v18 = [v17 objectForKeyedSubscript:@"cbio"];

          if (v18 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
          {
            v30 = -1;
            v31 = -1;
            v20 = [MEMORY[0x277CBEA90] dataWithBytes:&v30 length:16];
            [v18 setObject:v20 forKey:@"pbiou"];

            [v15 setObject:v18 forKey:@"cbio"];
            v21 = [v13 mutableCopy];
            [v21 setObject:v15 forKey:@"od"];
            SecAccessControlSetConstraints();
            *binding = [self prepareUnboundACLForBinding:v7 withConstraints:v21];

            v22 = 0;
          }

          else
          {
            v25 = APPLEIDV_LOG_CLIENT(isKindOfClass);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              +[AppleIDVClient prepareUnboundACLForBioBinding:];
            }

            v22 = 18;
          }
        }

        else
        {
          v26 = APPLEIDV_LOG_CLIENT(v16);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            +[AppleIDVClient prepareUnboundACLForBioBinding:];
          }

          v22 = 17;
        }
      }

      else
      {
        v24 = APPLEIDV_LOG_CLIENT(v12);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareUnboundACLForBioBinding:];
        }

        v22 = 16;
      }
    }

    else
    {
      v11 = APPLEIDV_LOG_CLIENT(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareUnboundACLForBioBinding:];
      }

      v22 = 15;
    }

    CFRelease(v7);
  }

  else
  {
    v23 = APPLEIDV_LOG_CLIENT(0);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      +[AppleIDVClient prepareUnboundACLForBioBinding:];
    }

    v22 = 13;
  }

  return v22;
}

+ (unsigned)prepareUnboundACLForPasscodeBinding:(id *)binding
{
  error = 0;
  v5 = objc_opt_new();
  v6 = SecAccessControlCreateWithFlags(0, *MEMORY[0x277CDBEE8], 0x10uLL, &error);
  if (v6)
  {
    v7 = v6;
    v8 = SecAccessControlGetConstraints();
    if (v8)
    {
      v9 = v8;
      v26 = 0;
      v10 = [v5 evaluateAccessControl:v7 operation:0 options:0 error:&v26];
      v11 = v26;

      if (v10)
      {
        v13 = SecAccessControlGetConstraints();

        v14 = [v13 objectForKeyedSubscript:@"od"];
        v15 = [v14 mutableCopy];

        if (v15)
        {
          v17 = [v13 objectForKeyedSubscript:@"od"];
          v18 = [v17 objectForKeyedSubscript:@"cup"];

          if (v18)
          {
            *binding = [self prepareUnboundACLForBinding:v7 withConstraints:v13];

            v20 = 0;
          }

          else
          {
            v24 = APPLEIDV_LOG_CLIENT(v19);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
            }

            v20 = 19;
          }
        }

        else
        {
          v23 = APPLEIDV_LOG_CLIENT(v16);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
          }

          v20 = 17;
        }
      }

      else
      {
        v22 = APPLEIDV_LOG_CLIENT(v12);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
        }

        v20 = 16;
      }
    }

    else
    {
      v11 = APPLEIDV_LOG_CLIENT(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
      }

      v20 = 15;
    }

    CFRelease(v7);
  }

  else
  {
    v21 = APPLEIDV_LOG_CLIENT(0);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[AppleIDVClient prepareUnboundACLForPasscodeBinding:];
    }

    v20 = 13;
  }

  return v20;
}

+ (id)prepareUnboundACLForBinding:(__SecAccessControl *)binding withConstraints:(id)constraints
{
  constraintsCopy = constraints;
  v5 = [constraintsCopy mutableCopy];
  v6 = [constraintsCopy objectForKeyedSubscript:@"od"];

  v7 = [v6 mutableCopy];
  [v5 setObject:v7 forKey:@"osgn"];
  [v5 removeObjectForKey:@"od"];
  [v5 removeObjectForKey:@"oe"];
  [v5 removeObjectForKey:@"odel"];
  SecAccessControlSetConstraints();
  v8 = SecAccessControlCopyData();

  return v8;
}

+ (unsigned)appleIDVRevokeCredentialAuthorizationToken
{
  v2 = DIV_LOG_KEXT(self);
  v3 = os_signpost_id_generate(v2);

  v5 = DIV_LOG_KEXT(v4);
  v6 = v5;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2259A7000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v3, "appleIDV.revokeCredential", "enableTelemetry=YES", buf, 2u);
  }

  v18 = 0;
  v7 = GenericAppleIDVCall(9u, 0, 0, &v19, &v18);
  v8 = v7;
  v9 = APPLEIDV_LOG_CLIENT(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    +[(AppleIDVClient *)v8];
  }

  if (v8 == -536870208)
  {
    v11 = 11;
  }

  else
  {
    v11 = v8;
  }

  if (v8)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = DIV_LOG_KEXT(v10);
  v14 = v13;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v16 = 0;
    _os_signpost_emit_with_name_impl(&dword_2259A7000, v14, OS_SIGNPOST_INTERVAL_END, v3, "appleIDV.revokeCredential", "", v16, 2u);
  }

  return v12;
}

+ (unsigned)appleIDVCredentialAuthenticationTokenStatus
{
  error = 0;
  v2 = objc_opt_new();
  v3 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], 0x40000000uLL, &error);
  if (v3)
  {
    v4 = v3;
    SecAccessControlSetConstraints();
    v11 = 0;
    v5 = [v2 evaluateAccessControl:v4 operation:3 options:0 error:&v11];
    v6 = v11;

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v9 = APPLEIDV_LOG_CLIENT(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        +[AppleIDVClient appleIDVCredentialAuthenticationTokenStatus];
      }

      v8 = 21;
    }

    CFRelease(v4);
  }

  else
  {
    v6 = APPLEIDV_LOG_CLIENT(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[AppleIDVClient appleIDVCredentialAuthenticationTokenStatus];
    }

    v8 = 13;
  }

  return v8;
}

+ (unsigned)requireDoublePressOnACL:(id)l intoACL:(id *)cL
{
  lCopy = l;
  v7 = lCopy;
  if (cL)
  {
    v8 = OUTLINED_FUNCTION_62(lCopy);
    if (v8)
    {
      v9 = v8;
      v10 = SecAccessControlGetConstraints();
      v11 = [v10 mutableCopy];
      v12 = [v10 objectForKeyedSubscript:@"osgn"];
      v13 = [v12 mutableCopy];

      [v13 setObject:MEMORY[0x277CBEC38] forKey:@"cbtn"];
      if (v13)
      {
        [v11 setObject:v13 forKey:@"od"];
      }

      *cL = [self prepareUnboundACLForBinding:v9 withConstraints:v11];
      CFRelease(v9);

      v14 = 0;
    }

    else
    {
      v10 = APPLEIDV_LOG_CLIENT(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_60(&dword_2259A7000, v16, v17, "%s:%d, failed to create ACL from input %@, error: (%@)", v18, v19, v20, v21, v22, 0);
      }

      v14 = 13;
    }
  }

  else
  {
    v14 = 5;
  }

  return v14;
}

+ (unsigned)removeDoublePressOnACL:(id)l intoACL:(id *)cL
{
  lCopy = l;
  v7 = lCopy;
  if (cL)
  {
    v8 = OUTLINED_FUNCTION_62(lCopy);
    if (v8)
    {
      v9 = v8;
      v10 = SecAccessControlGetConstraints();
      v11 = [v10 mutableCopy];
      v12 = [v10 objectForKeyedSubscript:@"osgn"];
      v13 = [v12 mutableCopy];

      [v13 removeObjectForKey:@"cbtn"];
      if (v13)
      {
        [v11 setObject:v13 forKey:@"od"];
      }

      *cL = [self prepareUnboundACLForBinding:v9 withConstraints:v11];
      CFRelease(v9);

      v14 = 0;
    }

    else
    {
      v10 = APPLEIDV_LOG_CLIENT(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_13();
        OUTLINED_FUNCTION_60(&dword_2259A7000, v16, v17, "%s:%d, failed to create ACL from input %@, error: (%@)", v18, v19, v20, v21, v22, 0);
      }

      v14 = 13;
    }
  }

  else
  {
    v14 = 5;
  }

  return v14;
}

+ (unsigned)appleIDVGetStatus:(int64_t *)status andVersion:(id *)version
{
  if (version)
  {
    v11 = 0;
    v12 = 0;
    v5 = [AppleIDVClient appleIDVGetStatus:status andSIDVVersion:&v12 andAppleIDVVersion:&v11];
    v6 = v12;
    v7 = v11;
    if (!v5)
    {
      v8 = [MEMORY[0x277CBEB28] dataWithCapacity:{objc_msgSend(v6, "length") + objc_msgSend(v7, "length") + 3}];
      [v8 appendData:v6];
      v9 = [@" - " dataUsingEncoding:4];
      [v8 appendData:v9];

      [v8 appendData:v7];
      *version = [MEMORY[0x277CBEA90] dataWithData:v8];

      v5 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 5;
  }

  return v5;
}

+ (unsigned)appleIDVGetStatus:(int64_t *)status andSIDVVersion:(id *)version andAppleIDVVersion:(id *)vVersion
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = DIV_LOG_KEXT(self);
  v10 = os_signpost_id_generate(v9);

  v12 = DIV_LOG_KEXT(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *v44 = 0;
    OUTLINED_FUNCTION_66(&dword_2259A7000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v14, "appleIDV.getStatus", "enableTelemetry=YES", v44);
  }

  v16 = 5;
  if (status && version && vVersion)
  {
    v43 = 256;
    OUTLINED_FUNCTION_0();
    v18 = malloc_type_malloc(0x100uLL, v17);
    if (v18)
    {
      v19 = v18;
      v20 = GenericAppleIDVCall(0, 0, 0, v18, &v43);
      v21 = v20;
      v22 = APPLEIDV_LOG_CLIENT(v20);
      if (OUTLINED_FUNCTION_37(v22))
      {
        *v44 = 67109632;
        OUTLINED_FUNCTION_27();
        OUTLINED_FUNCTION_21();
        _os_log_debug_impl(v37, v38, v39, v40, v41, 0x18u);
      }

      if (!v21)
      {
        if (v43 < 4 || (v23 = *v19, v23 + 1 >= v43) || v23 + 2 >= v43 || (v23 + 6 < v43 ? (v24 = v19[v23 + 1] - 4 + v23 + 6 > v43) : (v24 = 1), v24))
        {
          v21 = 5;
        }

        else
        {
          *status = *&v19[v23 + 2];
          *version = [MEMORY[0x277CBEA90] dataWithBytes:&v19[v23 + 6] length:?];
          [MEMORY[0x277CBEA90] dataWithBytes:v19 + 1 length:v23];
          *vVersion = v21 = 0;
        }
      }

      free(v19);
    }

    else
    {
      v21 = 9;
    }

    v25 = APPLEIDV_LOG_CLIENT(v18);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *v44 = 67109632;
      OUTLINED_FUNCTION_27();
      OUTLINED_FUNCTION_25(&dword_2259A7000, v25, v36, "[line %d] kret = %d 0x%lx", v44);
    }

    if (v21)
    {
      OUTLINED_FUNCTION_12();
      if (v21 == v42)
      {
        v16 = 11;
      }

      else
      {
        v16 = v21;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  v26 = DIV_LOG_KEXT(v15);
  v27 = v26;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *v44 = 0;
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_66(v28, v29, v30, v31, v32, v33, v34);
  }

  return v16;
}

+ (unsigned)appleIDVAuthorizePresentment:(id)presentment withLAContextData:(id)data onSESlot:(int64_t)slot andPayloadDigest:(id)digest
{
  v63 = *MEMORY[0x277D85DE8];
  presentmentCopy = presentment;
  dataCopy = data;
  digestCopy = digest;
  *&v13 = OUTLINED_FUNCTION_35();
  *v51 = v13;
  v52 = v13;
  v15 = DIV_LOG_KEXT(v14);
  v16 = os_signpost_id_generate(v15);

  v18 = DIV_LOG_KEXT(v17);
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    OUTLINED_FUNCTION_47(&dword_2259A7000, v20, v21, v22, "appleIDV.authorizePresentment", "enableTelemetry=YES", v23, v24, v51[0], v51[1], v52, *(&v52 + 1), v53, slotCopy, v55, v56, v57, v58, v59, v60);
  }

  if (presentmentCopy)
  {
    v26 = presentmentCopy;
    v55 = 0;
    v56 = 0;
    v51[1] = [v26 length];
    v27 = APPLEIDV_LOG_CLIENT(v51[1]);
    if (OUTLINED_FUNCTION_37(v27))
    {
      *buf = 138412290;
      v62 = v26;
      OUTLINED_FUNCTION_21();
      _os_log_debug_impl(v39, v40, v41, v42, v43, 0xCu);
    }

    *(&v52 + 1) = [dataCopy bytes];
    v25 = [dataCopy length];
    v53 = v25;
    if (v25 >> 31)
    {
      LODWORD(v28) = 10;
    }

    else
    {
      slotCopy = slot;
      v25 = buildMetadataBuffer(v51, digestCopy, 1);
      if (v25)
      {
        LODWORD(v28) = v25;
      }

      else
      {
        v28 = AuthorizePresentmentFromAppleIDV(v51);
        v29 = APPLEIDV_LOG_CLIENT(v28);
        if (OUTLINED_FUNCTION_46(v29))
        {
          *buf = 67109632;
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_19();
          _os_log_debug_impl(v44, v45, v46, v47, v48, 0x18u);
        }

        if (v28)
        {
          OUTLINED_FUNCTION_5();
          if (v50)
          {
            LODWORD(v28) = v49;
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v28) = 5;
  }

  v30 = DIV_LOG_KEXT(v25);
  v31 = v30;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
  {
    *buf = 0;
    OUTLINED_FUNCTION_19();
    _os_signpost_emit_with_name_impl(v32, v33, v34, v16, v35, v36, v37, 2u);
  }

  if (v55)
  {
    free(v55);
  }

  return v28;
}

+ (unsigned)appleIDVAuthorizePresentment:(id)presentment withLAContextData:(id)data onSESlot:(int64_t)slot andPublicKey:(id)key
{
  v65 = *MEMORY[0x277D85DE8];
  presentmentCopy = presentment;
  dataCopy = data;
  keyCopy = key;
  *&v13 = OUTLINED_FUNCTION_35();
  *v53 = v13;
  v54 = v13;
  v15 = DIV_LOG_KEXT(v14);
  v16 = os_signpost_id_generate(v15);

  v18 = DIV_LOG_KEXT(v17);
  v19 = v18;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
  {
    *buf = 0;
    OUTLINED_FUNCTION_47(&dword_2259A7000, v20, v21, v22, "appleIDV.authorizePresentment", "enableTelemetry=YES", v23, v24, v53[0], v53[1], v54, *(&v54 + 1), v55, slotCopy, v57, v58, v59, v60, v61, v62);
  }

  if (presentmentCopy)
  {
    v26 = presentmentCopy;
    v57 = 0;
    v58 = 0;
    v53[1] = [v26 length];
    v27 = APPLEIDV_LOG_CLIENT(v53[1]);
    if (OUTLINED_FUNCTION_37(v27))
    {
      *buf = 138412290;
      v64 = v26;
      OUTLINED_FUNCTION_21();
      _os_log_debug_impl(v41, v42, v43, v44, v45, 0xCu);
    }

    *(&v54 + 1) = [dataCopy bytes];
    v25 = [dataCopy length];
    v55 = v25;
    if (v25 >> 31)
    {
      v31 = 10;
    }

    else
    {
      v25 = buildMetadataBuffer(v53, keyCopy, 2);
      if (v25)
      {
        v31 = v25;
      }

      else
      {
        slotCopy = slot;
        v28 = AuthorizePresentmentFromAppleIDV(v53);
        v29 = v28;
        v30 = APPLEIDV_LOG_CLIENT(v28);
        if (OUTLINED_FUNCTION_46(v30))
        {
          *buf = 67109632;
          OUTLINED_FUNCTION_31();
          OUTLINED_FUNCTION_19();
          _os_log_debug_impl(v46, v47, v48, v49, v50, 0x18u);
        }

        if (v29)
        {
          OUTLINED_FUNCTION_5();
          if (v52)
          {
            v31 = v51;
          }

          else
          {
            v31 = v29;
          }
        }

        else
        {
          v31 = 0;
        }
      }
    }
  }

  else
  {
    v31 = 5;
  }

  v32 = DIV_LOG_KEXT(v25);
  v33 = v32;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    *buf = 0;
    OUTLINED_FUNCTION_32();
    _os_signpost_emit_with_name_impl(v34, v35, v36, v16, v37, v38, v39, 2u);
  }

  if (v57)
  {
    free(v57);
  }

  return v31;
}

+ (unsigned)appleIDVPersistACLBlob:(id)blob intoBlob:(id *)intoBlob returnBioUUIDs:(id *)ds andRequireDoublePress:(unsigned __int8)press
{
  pressCopy = press;
  v141 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  v131 = 0;
  v10 = DIV_LOG_KEXT(blobCopy);
  v11 = os_signpost_id_generate(v10);

  v13 = DIV_LOG_KEXT(v12);
  v14 = v13;
  v15 = v11 - 1;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *buf = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v16, v17, v18, v11, v19, v20, v21, 2u);
  }

  spid = v11;

  v23 = 0;
  spid = 5;
  v25 = 0;
  if (blobCopy && intoBlob)
  {
    v25 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    v131 = [v25 length];
    v22 = [AppleIDVClient getUUIDsFromACL:blobCopy intoArray:ds];
    if (v22)
    {
      spid = v22;
      v23 = 0;
      goto LABEL_37;
    }

    v130 = 0;
    *&v26 = OUTLINED_FUNCTION_35();
    v121 = v26;
    if (pressCopy)
    {
      v120 = 0;
      spid = [AppleIDVClient requireDoublePressOnACL:blobCopy intoACL:&v120, spid];
      v22 = v120;
      v23 = v22;
      if (spid)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v23 = blobCopy;
    }

    *&v121 = [v23 bytes];
    *(&v121 + 1) = [v23 length];
    v22 = extractACLForSCRD(v121, *(&v121 + 1), &v122, &v123);
    if (v22 || (v124 = [blobCopy bytes], v125 = objc_msgSend(blobCopy, "length"), v22 = extractACLForSCRD(v124, v125, &v126, &v127), v22))
    {
      spid = v22;
      goto LABEL_37;
    }

    v129 = 0;
    v130 = 0;
    v128 = 255;
    mutableBytes = [v25 mutableBytes];
    v133 = 0;
    if (v121)
    {
      OUTLINED_FUNCTION_33();
      if (!v29 & v28)
      {
        goto LABEL_45;
      }

      if (v124)
      {
        OUTLINED_FUNCTION_33();
        if (!(!v29 & v28))
        {
          ds = 4096;
          OUTLINED_FUNCTION_0();
          v31 = malloc_type_malloc(0x1000uLL, v30);
          pressCopy = v31;
          if (v31)
          {
            ds = 4096;
            v132 = 4096;
            OUTLINED_FUNCTION_18();
            v31 = tlvEncodeWithCheck(pressCopy, 32, v32, v33, v34, v35);
            if (v31)
            {
              v91 = v31;
            }

            else
            {
              OUTLINED_FUNCTION_52(v31, v36, v37, v38, v39, v40, v41, v42, spid, v120, v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133);
              OUTLINED_FUNCTION_18();
              v31 = tlvEncodeWithCheck(v43, 33, v44, 8u, v45, v46);
              if (v31 || (OUTLINED_FUNCTION_52(v31, v47, v48, v49, v50, v51, v52, v53, spid, v120, v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133), OUTLINED_FUNCTION_18(), v31 = tlvEncodeWithCheck(v54, 34, v55, 8u, v56, v57), v31) || (OUTLINED_FUNCTION_18(), v31 = tlvEncodeWithCheck(v58, 35, v59, v60, v61, v62), v31) || (OUTLINED_FUNCTION_52(v31, v63, v64, v65, v66, v67, v68, v69, spid, v120, v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133), OUTLINED_FUNCTION_18(), v31 = tlvEncodeWithCheck(v70, 36, v71, 8u, v72, v73), v31) || (OUTLINED_FUNCTION_52(v31, v74, v75, v76, v77, v78, v79, v80, spid, v120, v121, *(&v121 + 1), v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133), OUTLINED_FUNCTION_18(), v31 = tlvEncodeWithCheck(v81, 37, v82, 8u, v83, v84), v31) || (OUTLINED_FUNCTION_18(), v31 = tlvEncodeWithCheck(v85, 31, v86, 8u, v87, v88), v31))
              {
                v91 = v31;
                ds = 4096;
              }

              else
              {
                v89 = APPLEIDV_LOG_CLIENT(v31);
                v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG);
                ds = v133;
                if (v90)
                {
                  *buf = 136315906;
                  *v135 = "serializePersistACLBlobStruct";
                  *&v135[8] = 1024;
                  v136 = 319;
                  v137 = 2048;
                  v138 = 4096;
                  v139 = 2048;
                  v140 = v133;
                  _os_log_debug_impl(&dword_2259A7000, v89, OS_LOG_TYPE_DEBUG, "[%s:%d] allocated %zu and used %zu", buf, 0x26u);
                }

                v91 = 0;
              }
            }
          }

          else
          {
            v91 = 9;
          }

LABEL_26:
          v92 = APPLEIDV_LOG_CLIENT(v31);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
          {
            *buf = 67109376;
            *v135 = 823;
            *&v135[4] = 1024;
            *&v135[6] = v91;
            _os_log_debug_impl(&dword_2259A7000, v92, OS_LOG_TYPE_DEBUG, "[%d] err = %d", buf, 0xEu);
          }

          if (v91)
          {
            spid = 5;
            if (!pressCopy)
            {
              goto LABEL_31;
            }
          }

          else
          {
            v93 = GenericAppleIDVCall(1u, pressCopy, ds, mutableBytes, &v131);
            spid = v93;
            if (!pressCopy)
            {
LABEL_31:
              v94 = APPLEIDV_LOG_CLIENT(v93);
              if (OUTLINED_FUNCTION_37(v94))
              {
                *buf = 67109632;
                OUTLINED_FUNCTION_24();
                *&v135[6] = spid;
                OUTLINED_FUNCTION_23();
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v108, v109, v110, v111, v112, 0x18u);
              }

              v96 = APPLEIDV_LOG_CLIENT(v95);
              if (OUTLINED_FUNCTION_37(v96))
              {
                *buf = 67109632;
                OUTLINED_FUNCTION_24();
                *&v135[6] = spid;
                OUTLINED_FUNCTION_23();
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v113, v114, v115, v116, v117, 0x18u);
              }

              if (spid)
              {
                OUTLINED_FUNCTION_12();
                if (spid == v118)
                {
                  spid = 11;
                }
              }

              else
              {
                v97 = MEMORY[0x277CBEA90];
                mutableBytes2 = [v25 mutableBytes];
                v22 = [v97 dataWithBytes:mutableBytes2 length:v131];
                spid = 0;
                *intoBlob = v22;
              }

              goto LABEL_37;
            }
          }

          free(pressCopy);
          goto LABEL_31;
        }

LABEL_45:
        OUTLINED_FUNCTION_55();
        v91 = -75;
        goto LABEL_26;
      }
    }

    OUTLINED_FUNCTION_55();
    v91 = -6;
    goto LABEL_26;
  }

LABEL_37:
  v99 = DIV_LOG_KEXT(v22);
  v100 = v99;
  if (v15 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v99))
  {
    *buf = 0;
    OUTLINED_FUNCTION_17();
    _os_signpost_emit_with_name_impl(v101, v102, v103, spid, v104, v105, v106, 2u);
  }

  return spid;
}

+ (unsigned)appleIDVRecoverPersistedACLBlob:(id)blob intoBlob:(id *)intoBlob
{
  OUTLINED_FUNCTION_58();
  v65 = v4;
  v66 = v5;
  v7 = v6;
  v64 = *MEMORY[0x277D85DE8];
  v9 = v8;
  v10 = DIV_LOG_KEXT(v9);
  v11 = os_signpost_id_generate(v10);

  v13 = DIV_LOG_KEXT(v12);
  v14 = v13;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    *v63 = 0;
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_63(v15, v16, v17, v18, v19, v20, v21);
  }

  if (v9 && v7)
  {
    v23 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    bytes = [v9 bytes];
    v25 = [v9 length];
    mutableBytes = [v23 mutableBytes];
    v61 = mutableBytes;
    v62 = 0x4000;
    if (mutableBytes)
    {
      v27 = 5;
      if (bytes && v25 <= 0xFFFFFFFE)
      {
        v28 = mutableBytes;
        OUTLINED_FUNCTION_0();
        mutableBytes = malloc_type_malloc(0x1000uLL, v29);
        if (mutableBytes)
        {
          v30 = mutableBytes;
          *mutableBytes = 60;
          *(mutableBytes + 1) = v25;
          mutableBytes[3] = BYTE2(v25);
          mutableBytes[4] = BYTE3(v25);
          __memcpy_chk();
          v27 = GenericAppleIDVCall(2u, v30, (v25 + 5), v28, &v62);
          free(v30);
        }

        else
        {
          v27 = 5;
        }
      }
    }

    else
    {
      v27 = 18;
    }

    v31 = APPLEIDV_LOG_CLIENT(mutableBytes);
    if (OUTLINED_FUNCTION_46(v31))
    {
      *v63 = 67109632;
      *&v63[4] = 938;
      *&v63[8] = 1024;
      *&v63[10] = v27;
      *&v63[14] = 1024;
      *&v63[16] = v27;
      OUTLINED_FUNCTION_19();
      _os_log_debug_impl(v46, v47, v48, v49, v50, 0x14u);
    }

    v33 = APPLEIDV_LOG_CLIENT(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
    {
      *v63 = 136315650;
      *&v63[4] = "+[AppleIDVClient appleIDVRecoverPersistedACLBlob:intoBlob:]";
      *&v63[12] = 1024;
      *&v63[14] = 2076;
      *&v63[18] = 1024;
      *&v63[20] = 2;
      OUTLINED_FUNCTION_19();
      _os_log_debug_impl(v51, v52, v53, v54, v55, 0x18u);
    }

    v35 = APPLEIDV_LOG_CLIENT(v34);
    if (OUTLINED_FUNCTION_46(v35))
    {
      *v63 = 67109632;
      *&v63[4] = 2077;
      *&v63[8] = 1024;
      *&v63[10] = v27;
      *&v63[14] = 2048;
      *&v63[16] = v27;
      OUTLINED_FUNCTION_19();
      _os_log_debug_impl(v56, v57, v58, v59, v60, 0x18u);
    }

    if (v27)
    {
      OUTLINED_FUNCTION_5();
    }

    else
    {
      *v7 = [MEMORY[0x277CBEA90] dataWithBytes:v61 length:v62];
    }
  }

  v36 = DIV_LOG_KEXT(v22);
  v37 = v36;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v36))
  {
    *v63 = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63(v38, v39, v40, v41, v42, v43, v44);
  }

  OUTLINED_FUNCTION_59();
  return result;
}

+ (unsigned)appleIDVPersistModifiedSESlot:(int64_t)slot withReferenceBlob:(id)blob withLAContextData:(id)data intoBlob:(id *)intoBlob
{
  v77 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  dataCopy = data;
  v11 = DIV_LOG_KEXT(dataCopy);
  v12 = os_signpost_id_generate(v11);

  v14 = DIV_LOG_KEXT(v13);
  v15 = v14;
  v16 = v12 - 1;
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v14))
  {
    LOWORD(v74) = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v17, v18, v19, v12, v20, v21, v22, 2u);
  }

  v24 = 5;
  if (blobCopy && dataCopy && intoBlob)
  {
    intoBlobCopy = intoBlob;
    v69 = v12 - 1;
    v25 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    bytes = [blobCopy bytes];
    v70[1] = bytes;
    v27 = [blobCopy length];
    v70[2] = v27;
    mutableBytes = [v25 mutableBytes];
    v71 = mutableBytes;
    v72[0] = 0x4000;
    bytes2 = [dataCopy bytes];
    v72[1] = bytes2;
    v30 = [dataCopy length];
    v72[2] = v30;
    v70[0] = slot;
    if (!mutableBytes)
    {
      v38 = 18;
      v16 = v12 - 1;
LABEL_26:
      v39 = APPLEIDV_LOG_CLIENT(v30);
      if (OUTLINED_FUNCTION_36(v39))
      {
        LODWORD(v74) = 67109632;
        OUTLINED_FUNCTION_24();
        v76 = v38;
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_16();
        _os_log_debug_impl(v51, v52, v53, v54, v55, 0x18u);
      }

      v41 = APPLEIDV_LOG_CLIENT(v40);
      if (OUTLINED_FUNCTION_36(v41))
      {
        LODWORD(v74) = 67109632;
        OUTLINED_FUNCTION_24();
        v76 = v38;
        OUTLINED_FUNCTION_23();
        OUTLINED_FUNCTION_16();
        _os_log_debug_impl(v56, v57, v58, v59, v60, 0x18u);
      }

      if (v38)
      {
        OUTLINED_FUNCTION_12();
        if (v38 == v66)
        {
          v24 = 11;
        }

        else
        {
          v24 = v38;
        }
      }

      else
      {
        [MEMORY[0x277CBEA90] dataWithBytes:v71 length:v72[0]];
        *intoBlobCopy = v24 = 0;
      }

      goto LABEL_33;
    }

    v74 = 0;
    v67 = v12;
    if (bytes)
    {
      if (!v27)
      {
        goto LABEL_38;
      }

      if (bytes2)
      {
        v31 = v30;
        OUTLINED_FUNCTION_26();
        if (!(!v33 & v32))
        {
          v12 = 4096;
          OUTLINED_FUNCTION_0();
          v35 = malloc_type_malloc(0x1000uLL, v34);
          slot = v35;
          if (v35)
          {
            v12 = 4096;
            v73 = 4096;
            v35 = tlvEncodeWithCheck(v35, 21, bytes2, v31, &v73, &v74);
            if (!v35)
            {
              v35 = tlvEncodeWithCheck(slot + v74, 70, bytes, v27, &v73, &v74);
              if (v35)
              {
                v36 = v35;
                v12 = 4096;
              }

              else
              {
                v35 = tlvEncodeWithCheck(slot + v74, 31, v70, 8u, &v73, &v74);
                v36 = v35;
                if (v35)
                {
                  v12 = 4096;
                }

                else
                {
                  v12 = v74;
                }
              }

              v16 = v69;
              goto LABEL_19;
            }

            v36 = v35;
          }

          else
          {
            v36 = 9;
          }

LABEL_45:
          v16 = v69;
LABEL_19:
          v37 = APPLEIDV_LOG_CLIENT(v35);
          if (OUTLINED_FUNCTION_36(v37))
          {
            v74 = 0x35904000200;
            v75 = 1024;
            v76 = v36;
            OUTLINED_FUNCTION_16();
            _os_log_debug_impl(v61, v62, v63, v64, v65, 0xEu);
          }

          if (v36)
          {
            v38 = 5;
          }

          else
          {
            v30 = GenericAppleIDVCall(0xBu, slot, v12, mutableBytes, v72);
            v38 = v30;
          }

          v12 = v67;
          if (slot)
          {
            free(slot);
          }

          goto LABEL_26;
        }

LABEL_38:
        OUTLINED_FUNCTION_55();
        v36 = -75;
        goto LABEL_45;
      }
    }

    OUTLINED_FUNCTION_55();
    v36 = -6;
    goto LABEL_45;
  }

LABEL_33:
  v42 = DIV_LOG_KEXT(v23);
  v43 = v42;
  if (v16 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
  {
    LOWORD(v74) = 0;
    OUTLINED_FUNCTION_17();
    _os_signpost_emit_with_name_impl(v44, v45, v46, v12, v47, v48, v49, 2u);
  }

  return v24;
}

+ (unsigned)appleIDVPersistModifiedACLBlob:(id)blob withReferenceACLBlob:(id)lBlob withLAContextData:(id)data intoBlob:(id *)intoBlob returnBioUUIDs:(id *)ds
{
  v88 = *MEMORY[0x277D85DE8];
  blobCopy = blob;
  lBlobCopy = lBlob;
  dataCopy = data;
  v14 = DIV_LOG_KEXT(dataCopy);
  v15 = os_signpost_id_generate(v14);

  v17 = DIV_LOG_KEXT(v16);
  v18 = v17;
  v19 = v15 - 1;
  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2259A7000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v15, "appleIDV.persistModifiedACL", "enableTelemetry=YES", buf, 2u);
  }

  v21 = 0;
  v22 = 5;
  if (blobCopy && lBlobCopy && dataCopy && intoBlob && ds)
  {
    v21 = [MEMORY[0x277CBEB28] dataWithLength:0x4000];
    ACLForSCRD = [AppleIDVClient getUUIDsFromACL:blobCopy intoArray:ds];
    if (ACLForSCRD || (v81 = 0, v80 = 0u, v79 = 0u, v78 = 0u, v77 = 0u, v75 = [blobCopy bytes], v76 = objc_msgSend(blobCopy, "length"), ACLForSCRD = extractACLForSCRD(v75, v76, &v77, &v77 + 1), ACLForSCRD))
    {
      v22 = ACLForSCRD;
      goto LABEL_34;
    }

    v74 = v15 - 1;
    *(&v78 + 1) = [lBlobCopy bytes];
    *&v79 = [lBlobCopy length];
    *(&v79 + 1) = [v21 mutableBytes];
    *&v80 = 0x4000;
    *(&v80 + 1) = [dataCopy bytes];
    v23 = [dataCopy length];
    v81 = v23;
    v24 = *(&v79 + 1);
    v25 = 18;
    if (!*(&v79 + 1) || v80 < 0x4000)
    {
      goto LABEL_27;
    }

    v73 = v15;
    if (*(&v78 + 1))
    {
      OUTLINED_FUNCTION_33();
      if (!v27 & v26)
      {
        goto LABEL_40;
      }

      if (v75)
      {
        OUTLINED_FUNCTION_33();
        if (!v27 & v26)
        {
          goto LABEL_40;
        }

        if (*(&v80 + 1))
        {
          OUTLINED_FUNCTION_26();
          if (!(!v27 & v26))
          {
            v28 = 4096;
            OUTLINED_FUNCTION_0();
            v23 = malloc_type_malloc(0x1000uLL, v29);
            v30 = v23;
            if (v23)
            {
              *v23 = 20;
              *(v23 + 1) = v76;
              __memcpy_chk();
              v31 = (v76 + 5);
              v32 = &v30[v31];
              *v32 = 2112;
              v32[4] = 0;
              v33 = *(&v77 + 1);
              *(v32 + 5) = v77;
              *(v32 + 13) = 2113;
              v32[17] = 0;
              *(v32 + 18) = v33;
              v34 = v31 + 26;
              v35 = &v30[v31 + 26];
              v36 = v81;
              *v35 = 21;
              OUTLINED_FUNCTION_29(v35);
              *(v37 + 1) = v36;
              memcpy((v37 + 5), v38, v39);
              v40 = (v36 + 5) + v34;
              v41 = &v30[v40];
              v42 = v79;
              *v41 = 70;
              v41[1] = v42;
              OUTLINED_FUNCTION_29(&v30[v40]);
              v23 = memcpy((v43 + 5), v44, v45);
              v72 = 0;
              v28 = (v42 + 5) + v40;
              v46 = 1;
LABEL_21:
              v47 = APPLEIDV_LOG_CLIENT(v23);
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                *buf = 67109376;
                v83 = 893;
                v84 = 1024;
                v85 = v72;
                _os_log_debug_impl(&dword_2259A7000, v47, OS_LOG_TYPE_DEBUG, "[%d] err = %d", buf, 0xEu);
              }

              if (v46)
              {
                v23 = GenericAppleIDVCall(4u, v30, v28, v24, &v80);
                v25 = v23;
              }

              else
              {
                v25 = 5;
              }

              v15 = v73;
              if (v30)
              {
                free(v30);
              }

LABEL_27:
              v48 = APPLEIDV_LOG_CLIENT(v23);
              if (OUTLINED_FUNCTION_37(v48))
              {
                *buf = 67109632;
                v83 = 902;
                v84 = 1024;
                v85 = v25;
                v86 = 2048;
                v87 = v25;
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v60, v61, v62, v63, v64, 0x18u);
              }

              v50 = APPLEIDV_LOG_CLIENT(v49);
              if (OUTLINED_FUNCTION_37(v50))
              {
                *buf = 67109632;
                v83 = 2170;
                v84 = 1024;
                v85 = v25;
                v86 = 1024;
                LODWORD(v87) = v25;
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v65, v66, v67, v68, v69, 0x14u);
              }

              if (v25)
              {
                OUTLINED_FUNCTION_10();
                if (v27)
                {
                  v22 = v71;
                }

                else
                {
                  v22 = v25;
                }
              }

              else
              {
                ACLForSCRD = [MEMORY[0x277CBEA90] dataWithBytes:*(&v79 + 1) length:v80];
                v22 = 0;
                *intoBlob = ACLForSCRD;
              }

              v19 = v74;
              goto LABEL_34;
            }

            v46 = 0;
            v70 = 9;
LABEL_46:
            v72 = v70;
            goto LABEL_21;
          }

LABEL_40:
          v30 = 0;
          v28 = 0;
          v46 = 0;
          v70 = -75;
          goto LABEL_46;
        }
      }
    }

    v30 = 0;
    v28 = 0;
    v46 = 0;
    v70 = -6;
    goto LABEL_46;
  }

LABEL_34:
  v51 = DIV_LOG_KEXT(ACLForSCRD);
  v52 = v51;
  if (v19 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v51))
  {
    *buf = 0;
    OUTLINED_FUNCTION_32();
    _os_signpost_emit_with_name_impl(v53, v54, v55, v15, v56, v57, v58, 2u);
  }

  return v22;
}

+ (unsigned)appleIDVGeneratePrearmTrustKeyForWatchAndCopyPrivateKey:(id)key progenitorPublicKey:(id)publicKey encryptedPrivateKey:(id *)privateKey attestation:(id *)attestation publicKey:(id *)a7 keyBlob:(id *)blob
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v13);
  v96 = v14;
  OUTLINED_FUNCTION_50();
  v105 = *MEMORY[0x277D85DE8];
  v16 = v15;
  v17 = v8;
  OUTLINED_FUNCTION_56();
  v19 = DIV_LOG_KEXT(v18);
  v20 = os_signpost_id_generate(v19);

  v22 = DIV_LOG_KEXT(v21);
  v23 = v22;
  v24 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(v101) = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v25, v26, v27, v20, v28, v29, v30, 2u);
  }

  spid = v20;
  if (v16)
  {
    if (v10)
    {
      if (v9)
      {
        v95 = v11;
        if (v11)
        {
          bytes = [v16 bytes];
          v33 = [v16 length];
          bytes2 = [v8 bytes];
          [v8 length];
          OUTLINED_FUNCTION_44();
          if (bytes && v33 <= 0xFFFFFFFE && (v12 = v35, OUTLINED_FUNCTION_0(), (v35 = malloc_type_malloc(0x1000uLL, v36)) != 0))
          {
            OUTLINED_FUNCTION_41();
            v40 = tlvEncodeWithCheck(v37, 130, bytes, v33, v38, v39);
            if (v40 || (v48 = OUTLINED_FUNCTION_57(v40, v41, v42, v43, v44, v45, v46, v47, v93, spid, v95, v96, bytes, v33, bytes2, v97, v98, v99[0], v99[1], v100), v51 = tlvEncodeWithCheck(v48, 131, bytes2, v12, v49, v50), v51))
            {
              v53 = 5;
            }

            else
            {
              v52 = APPLEIDV_LOG_CLIENT(v51);
              v33 = v100;
              if (OUTLINED_FUNCTION_37(v52))
              {
                OUTLINED_FUNCTION_15("serializeGeneratePrearmTrustKeyStruct", 4.8153e-34);
                OUTLINED_FUNCTION_9(477);
                *(v87 + 30) = v100;
                OUTLINED_FUNCTION_21();
                _os_log_debug_impl(v88, v89, v90, v91, v92, 0x26u);
              }

              v53 = GenericAppleIDVCall(6u, 5, v33, &v101, v99);
            }

            free(5);
          }

          else
          {
            v53 = 5;
          }

          v54 = APPLEIDV_LOG_CLIENT(v35);
          if (OUTLINED_FUNCTION_36(v54))
          {
            v104 = 67109632;
            OUTLINED_FUNCTION_7(v53);
            OUTLINED_FUNCTION_16();
            _os_log_debug_impl(v77, v78, v79, v80, v81, 0x18u);
          }

          v56 = APPLEIDV_LOG_CLIENT(v55);
          if (OUTLINED_FUNCTION_36(v56))
          {
            v104 = 67109632;
            OUTLINED_FUNCTION_8(2214);
            OUTLINED_FUNCTION_16();
            _os_log_debug_impl(v82, v83, v84, v85, v86, 0x14u);
          }

          if (v53)
          {
            OUTLINED_FUNCTION_10();
          }

          else
          {
            v57 = v101;
            v58 = v102;
            v59 = v103;
            v60 = v101 + v102;
            v61 = __CFADD__(v101, v102);
            v62 = __CFADD__(v103, v60);
            v63 = v103 + v60;
            v64 = v62;
            if (!v61 && (v64 & 1) == 0 && v63 <= 0xFF4)
            {
              *v96 = [OUTLINED_FUNCTION_45() dataWithBytes:? length:?];
              *v10 = [v12[338] dataWithBytes:2 length:v57];
              v65 = v57 + 2;
              *v9 = [v12[338] dataWithBytes:v65 length:v58];
              v31 = [v12[338] dataWithBytes:v65 + v58 length:v59];
              *v95 = v31;
            }
          }
        }
      }
    }
  }

  v66 = DIV_LOG_KEXT(v31);
  v67 = v66;
  if (v24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    LOWORD(v104) = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_64(v68, v69, v70, v71, v72, v73, v74, v75, v93, spid);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVGetPrearmTrustKeyFromExistingKeyBlob:(id)blob nonce:(id)nonce progenitorPublicKey:(id)key encryptedPrivateKey:(id *)privateKey attestation:(id *)attestation publicKey:(id *)publicKey keyBlob:(id *)keyBlob
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v9);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v108 = *MEMORY[0x277D85DE8];
  v21 = v20;
  v22 = v19;
  v23 = v17;
  v100 = 0u;
  v24 = DIV_LOG_KEXT(v23);
  v25 = os_signpost_id_generate(v24);

  v27 = DIV_LOG_KEXT(v26);
  v28 = v27;
  v29 = v25 - 1;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    LOWORD(v103) = 0;
    OUTLINED_FUNCTION_39();
    _os_signpost_emit_with_name_impl(v30, v31, v32, v25, v33, v34, v35, 2u);
  }

  spid = v25;
  if (v21)
  {
    if (v22)
    {
      if (v15)
      {
        if (v13)
        {
          if (v11)
          {
            v98 = v15;
            v99 = v13;
            if (v109)
            {
              v96 = v11;
              v97 = v25 - 1;
              bytes = [v21 bytes];
              v38 = [v21 length];
              bytes2 = [v22 bytes];
              v40 = [v22 length];
              bytes3 = [v23 bytes];
              v42 = [v23 length];
              *&v100 = &v103;
              *(&v100 + 1) = 4096;
              v102 = 0;
              if (bytes && v38 <= 0xFFFFFFFE && bytes2 && v40 <= 0xFFFFFFFE && bytes3 && (v28 = v42, OUTLINED_FUNCTION_26(), v44 || !v43) && (OUTLINED_FUNCTION_0(), (v42 = malloc_type_malloc(0x1000uLL, v45)) != 0))
              {
                v46 = v42;
                v101 = 4096;
                OUTLINED_FUNCTION_18();
                if (tlvEncodeWithCheck(v47, 151, bytes, v38, v48, v49) || (OUTLINED_FUNCTION_18(), tlvEncodeWithCheck(v50, 152, bytes2, v40, v51, v52)) || (OUTLINED_FUNCTION_18(), v56 = tlvEncodeWithCheck(v53, 153, bytes3, v28, v54, v55), v56))
                {
                  v58 = 5;
                }

                else
                {
                  v57 = APPLEIDV_LOG_CLIENT(v56);
                  v28 = v102;
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
                  {
                    OUTLINED_FUNCTION_15("serializeGetPrearmTrustKeyStruct", 4.8153e-34);
                    OUTLINED_FUNCTION_9(531);
                    *(v89 + 30) = v102;
                    OUTLINED_FUNCTION_32();
                    _os_log_debug_impl(v90, v91, v92, v93, v94, 0x26u);
                  }

                  v58 = GenericAppleIDVCall(0xDu, v46, v28, &v103, &v100 + 1);
                }

                v29 = v97;
                free(v46);
              }

              else
              {
                v58 = 5;
                v29 = v97;
              }

              v59 = APPLEIDV_LOG_CLIENT(v42);
              if (OUTLINED_FUNCTION_38(v59))
              {
                v107 = 67109632;
                OUTLINED_FUNCTION_7(v58);
                OUTLINED_FUNCTION_17();
                _os_log_debug_impl(v79, v80, v81, v82, v83, 0x18u);
              }

              v61 = APPLEIDV_LOG_CLIENT(v60);
              if (OUTLINED_FUNCTION_38(v61))
              {
                v107 = 67109632;
                OUTLINED_FUNCTION_8(2282);
                OUTLINED_FUNCTION_17();
                _os_log_debug_impl(v84, v85, v86, v87, v88, 0x14u);
              }

              if (v58)
              {
                OUTLINED_FUNCTION_10();
              }

              else
              {
                v63 = v103;
                v62 = v104;
                v64 = v105;
                v65 = v103 + v104;
                v66 = __CFADD__(v103, v104);
                v43 = __CFADD__(v105, v65);
                v67 = v105 + v65;
                v68 = v43;
                if (!v66 && (v68 & 1) == 0 && v67 <= 0xFF4)
                {
                  *v109 = [MEMORY[0x277CBEA90] dataWithBytes:v100 length:?];
                  *v98 = [MEMORY[0x277CBEA90] dataWithBytes:v106 length:v63];
                  v69 = &v106[v63];
                  *v99 = [MEMORY[0x277CBEA90] dataWithBytes:v69 length:v62];
                  v36 = [MEMORY[0x277CBEA90] dataWithBytes:&v69[v62] length:v64];
                  *v96 = v36;
                }
              }
            }
          }
        }
      }
    }
  }

  v70 = DIV_LOG_KEXT(v36);
  v71 = v70;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    LOWORD(v107) = 0;
    OUTLINED_FUNCTION_17();
    _os_signpost_emit_with_name_impl(v72, v73, v74, spid, v75, v76, v77, 2u);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVUpdatePrearmTrustKeyForWatch:(id)watch progenitorPublicKey:(id)key encryptedPrivateKey:(id *)privateKey attestation:(id *)attestation publicKey:(id *)publicKey keyBlob:(id *)blob
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v12);
  v14 = v13;
  OUTLINED_FUNCTION_50();
  v104 = *MEMORY[0x277D85DE8];
  v16 = v15;
  v17 = v8;
  OUTLINED_FUNCTION_56();
  v19 = DIV_LOG_KEXT(v18);
  v20 = os_signpost_id_generate(v19);

  v22 = DIV_LOG_KEXT(v21);
  v23 = v22;
  v95 = v20 - 1;
  if (v20 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(v100) = 0;
    OUTLINED_FUNCTION_43();
    _os_signpost_emit_with_name_impl(v24, v25, v26, v20, v27, v28, v29, 2u);
  }

  spid = v20;
  if (v16)
  {
    if (v10)
    {
      if (v9)
      {
        if (v11)
        {
          v94 = v11;
          if (v14)
          {
            bytes = [v16 bytes];
            v32 = [v16 length];
            bytes2 = [v8 bytes];
            [v8 length];
            OUTLINED_FUNCTION_44();
            if (bytes && v32 <= 0xFFFFFFFE && bytes2 && (v23 = v34, OUTLINED_FUNCTION_26(), v36 || !v35) && (OUTLINED_FUNCTION_0(), (v34 = malloc_type_malloc(0x1000uLL, v37)) != 0))
            {
              OUTLINED_FUNCTION_41();
              v41 = tlvEncodeWithCheck(v38, 132, bytes, v32, v39, v40);
              if (v41 || (v49 = OUTLINED_FUNCTION_57(v41, v42, v43, v44, v45, v46, v47, v48, v92, spid, v94, v95, bytes, v32, bytes2, v96, v97, v98[0], v98[1], v99), v52 = tlvEncodeWithCheck(v49, 133, bytes2, v23, v50, v51), v52))
              {
                v54 = 5;
              }

              else
              {
                v53 = APPLEIDV_LOG_CLIENT(v52);
                v23 = v99;
                if (OUTLINED_FUNCTION_38(v53))
                {
                  OUTLINED_FUNCTION_15("serializeUpdatePrearmTrustKeyStruct", 4.8153e-34);
                  OUTLINED_FUNCTION_9(567);
                  *(v86 + 30) = v99;
                  OUTLINED_FUNCTION_17();
                  _os_log_debug_impl(v87, v88, v89, v90, v91, 0x26u);
                }

                v54 = GenericAppleIDVCall(0xCu, 5, v23, &v100, v98);
              }

              free(5);
            }

            else
            {
              v54 = 5;
            }

            v55 = APPLEIDV_LOG_CLIENT(v34);
            if (OUTLINED_FUNCTION_36(v55))
            {
              v103 = 67109632;
              OUTLINED_FUNCTION_7(v54);
              OUTLINED_FUNCTION_16();
              _os_log_debug_impl(v76, v77, v78, v79, v80, 0x18u);
            }

            v57 = APPLEIDV_LOG_CLIENT(v56);
            if (OUTLINED_FUNCTION_36(v57))
            {
              v103 = 67109632;
              OUTLINED_FUNCTION_8(2345);
              OUTLINED_FUNCTION_16();
              _os_log_debug_impl(v81, v82, v83, v84, v85, 0x14u);
            }

            if (v54)
            {
              OUTLINED_FUNCTION_10();
            }

            else
            {
              v59 = v100;
              v58 = v101;
              v60 = v102;
              v61 = v100 + v101;
              v62 = __CFADD__(v100, v101);
              v35 = __CFADD__(v102, v61);
              v63 = v102 + v61;
              v64 = v35;
              if (!v62 && (v64 & 1) == 0 && v63 <= 0xFF4)
              {
                *v14 = [OUTLINED_FUNCTION_45() dataWithBytes:? length:?];
                *v10 = [bytes[338] dataWithBytes:2 length:v59];
                *v9 = [bytes[338] dataWithBytes:v59 + 2 length:v58];
                v30 = [bytes[338] dataWithBytes:v59 + 2 + v58 length:v60];
                *v94 = v30;
              }
            }
          }
        }
      }
    }
  }

  v65 = DIV_LOG_KEXT(v30);
  v66 = v65;
  if (v95 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v65))
  {
    LOWORD(v103) = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_64(v67, v68, v69, v70, v71, v72, v73, v74, v92, spid);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVGeneratePhoneTokenWithNonce:(id)nonce withReferenceACLBlob:(id)blob keyBlob:(id)keyBlob keyAttestation:(id)attestation casdCertificate:(id)certificate phoneToken:(id *)token
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v8);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v114 = *MEMORY[0x277D85DE8];
  v20 = v19;
  v21 = v18;
  v22 = v16;
  v108 = v14;
  v23 = v12;
  v109 = 0u;
  v24 = DIV_LOG_KEXT(v23);
  v25 = os_signpost_id_generate(v24);

  v27 = DIV_LOG_KEXT(v26);
  v28 = v27;
  spid = v25;
  v29 = v25 - 1;
  if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v27))
  {
    *v111 = 0;
    OUTLINED_FUNCTION_64(&dword_2259A7000, v28, OS_SIGNPOST_INTERVAL_BEGIN, v30, "appleIDV.generatePhoneToken", "enableTelemetry=YES", v111, v31, v95, v25);
  }

  if (v20 && v21 && v22 && v10 && (v108 == 0) == (v23 == 0))
  {
    v101 = v25 - 1;
    v102 = v10;
    v107 = v23;
    v100 = objc_opt_new();
    externalizedContext = [v100 externalizedContext];
    *&v109 = v111;
    *(&v109 + 1) = 4096;
    bytes = [externalizedContext bytes];
    v99 = externalizedContext;
    v34 = [externalizedContext length];
    bytes2 = [v21 bytes];
    v104 = v21;
    v36 = [v21 length];
    bytes3 = [v20 bytes];
    v105 = v20;
    v38 = [v20 length];
    bytes4 = [v22 bytes];
    v40 = [v22 length];
    v41 = v40;
    if (v108)
    {
      bytes5 = [v108 bytes];
      v40 = [v108 length];
      v42 = v40;
    }

    else
    {
      bytes5 = 0;
      v42 = 0;
    }

    v103 = v22;
    if (v107)
    {
      bytes6 = [v107 bytes];
      v40 = [v107 length];
      v43 = v40;
    }

    else
    {
      bytes6 = 0;
      v43 = 0;
    }

    v112 = 0;
    if (bytes3 && (!bytes2 ? (v44 = v36 == 0) : (v44 = 1), v44 && bytes && bytes4 && (v36 <= 0xFFFFFFFE ? (v45 = v38 > 0xFFFFFFFE) : (v45 = 1), !v45 ? (v46 = v34 > 0xFFFFFFFE) : (v46 = 1), !v46 ? (v47 = v41 > 0xFFFFFFFE) : (v47 = 1), !v47 ? (v48 = v42 > 0xFFFFFFFE) : (v48 = 1), !v48 ? (v49 = v43 > 0xFFFFFFFE) : (v49 = 1), !v49 && (OUTLINED_FUNCTION_0(), (v40 = malloc_type_malloc(0x1000uLL, v50)) != 0))))
    {
      v51 = v40;
      v110 = 4096;
      if (tlvEncodeWithCheck(v40, 100, bytes3, v38, &v110, &v112) || (v52 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v52, 101, bytes2, v36, v53, v54)) || (v55 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v55, 102, bytes, v34, v56, v57)) || (v58 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v58, 103, bytes4, v41, v59, v60)) || (v61 = OUTLINED_FUNCTION_6(), tlvEncodeWithCheck(v61, 105, bytes5, v42, v62, v63)) || (v64 = OUTLINED_FUNCTION_6(), v67 = tlvEncodeWithCheck(v64, 106, bytes6, v43, v65, v66), v67))
      {
        v70 = 5;
      }

      else
      {
        v68 = v112;
        v69 = APPLEIDV_LOG_CLIENT(v67);
        if (OUTLINED_FUNCTION_36(v69))
        {
          v112 = 0x2CC04000100;
          OUTLINED_FUNCTION_16();
          _os_log_debug_impl(v90, v91, v92, v93, v94, 8u);
        }

        v70 = GenericAppleIDVCall(5u, v51, v68, v111, &v109 + 1);
      }

      v20 = v105;
      v71 = v102;
      v22 = v103;
      v29 = v101;
      free(v51);
    }

    else
    {
      v70 = 5;
      v20 = v105;
      v71 = v102;
      v22 = v103;
      v29 = v101;
    }

    v72 = APPLEIDV_LOG_CLIENT(v40);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v112) = 67109632;
      OUTLINED_FUNCTION_20();
      v113 = v70;
      OUTLINED_FUNCTION_22(v86);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v72, v87, "[line %d] kret = %d 0x%lx", &v112);
    }

    v74 = APPLEIDV_LOG_CLIENT(v73);
    if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v112) = 67109632;
      OUTLINED_FUNCTION_20();
      v113 = v70;
      OUTLINED_FUNCTION_22(v88);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v74, v89, "[line %d] kret = %d 0x%lx", &v112);
    }

    if (v70)
    {
      OUTLINED_FUNCTION_12();
    }

    else
    {
      *v71 = [MEMORY[0x277CBEA90] dataWithBytes:v109 length:?];
    }

    v21 = v104;
    v23 = v107;
  }

  v75 = DIV_LOG_KEXT(v32);
  v76 = v75;
  if (v29 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v75))
  {
    LOWORD(v112) = 0;
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64(v77, v78, v79, v80, v81, v82, v83, v84, v95, spid);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVEstablishPrearmTrustWithCertificate:(id)certificate protectedPublicKey:(id *)key
{
  OUTLINED_FUNCTION_48();
  MEMORY[0x28223BE20](v4);
  v6 = v5;
  v67 = *MEMORY[0x277D85DE8];
  v8 = v7;
  v56 = 0u;
  v9 = DIV_LOG_KEXT(v8);
  v10 = os_signpost_id_generate(v9);

  v12 = DIV_LOG_KEXT(v11);
  v13 = v12;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    v59[0] = 0;
    OUTLINED_FUNCTION_39();
    OUTLINED_FUNCTION_63(v14, v15, v16, v17, v18, v19, v20);
  }

  if (v8 && v6)
  {
    *&v56 = v59;
    *(&v56 + 1) = 4096;
    bytes = [v8 bytes];
    v23 = [v8 length];
    v58 = 0;
    if (bytes && (v24 = v23, OUTLINED_FUNCTION_26(), !(!v26 & v25)) && (OUTLINED_FUNCTION_0(), (v23 = malloc_type_malloc(0x1000uLL, v27)) != 0))
    {
      v28 = v23;
      v57 = 4096;
      v29 = tlvEncodeWithCheck(v23, 90, bytes, v24, &v57, &v58);
      if (v29)
      {
        v33 = 5;
      }

      else
      {
        v30 = APPLEIDV_LOG_CLIENT(v29);
        v31 = OUTLINED_FUNCTION_46(v30);
        v32 = v58;
        if (v31)
        {
          v60 = 136315906;
          *v61 = "serializeEstablishPrearmTrustStruct";
          *&v61[8] = 1024;
          v62 = 1053;
          v63 = 2048;
          v64 = 4096;
          v65 = 2048;
          v66 = v58;
          OUTLINED_FUNCTION_19();
          _os_log_debug_impl(v51, v52, v53, v54, v55, 0x26u);
        }

        v33 = GenericAppleIDVCall(0xAu, v28, v32, v59, &v56 + 1);
      }

      free(v28);
    }

    else
    {
      v33 = 5;
    }

    v34 = APPLEIDV_LOG_CLIENT(v23);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      v60 = 67109632;
      OUTLINED_FUNCTION_20();
      *&v61[6] = v33;
      OUTLINED_FUNCTION_22(v47);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v34, v48, "[line %d] kret = %d 0x%lx", &v60);
    }

    v36 = APPLEIDV_LOG_CLIENT(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      v60 = 67109632;
      OUTLINED_FUNCTION_20();
      *&v61[6] = v33;
      OUTLINED_FUNCTION_22(v49);
      OUTLINED_FUNCTION_25(&dword_2259A7000, v36, v50, "[line %d] kret = %d 0x%lx", &v60);
    }

    if (v33)
    {
      OUTLINED_FUNCTION_12();
    }

    else
    {
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v56 length:?];
      *v6 = v21;
    }
  }

  v37 = DIV_LOG_KEXT(v21);
  v38 = v37;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
  {
    LOWORD(v60) = 0;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_63(v39, v40, v41, v42, v43, v44, v45);
  }

  OUTLINED_FUNCTION_49();
  return result;
}

+ (unsigned)appleIDVGenerateNonceOnWatch:(id *)watch
{
  v46 = *MEMORY[0x277D85DE8];
  v43 = 32;
  v5 = DIV_LOG_KEXT(self);
  v6 = os_signpost_id_generate(v5);

  v8 = DIV_LOG_KEXT(v7);
  v9 = v8;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v44[0] = 0;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_66(v10, v11, v12, v13, v14, v15, v16);
  }

  if (watch)
  {
    v18 = GenericAppleIDVCall(7u, 0, 0, v44, &v43);
    v19 = APPLEIDV_LOG_CLIENT(v18);
    if (OUTLINED_FUNCTION_38(v19))
    {
      v45 = 67109632;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_17();
      _os_log_debug_impl(v32, v33, v34, v35, v36, 0x18u);
    }

    v21 = APPLEIDV_LOG_CLIENT(v20);
    if (OUTLINED_FUNCTION_38(v21))
    {
      v45 = 67109632;
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_17();
      _os_log_debug_impl(v37, v38, v39, v40, v41, 0x18u);
    }

    if (v18)
    {
      OUTLINED_FUNCTION_12();
      if (v18 == v42)
      {
        LODWORD(v18) = 11;
      }
    }

    else
    {
      v17 = [MEMORY[0x277CBEA90] dataWithBytes:v44 length:v43];
      *watch = v17;
    }
  }

  else
  {
    LODWORD(v18) = 5;
  }

  v22 = DIV_LOG_KEXT(v17);
  v23 = v22;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v22))
  {
    LOWORD(v45) = 0;
    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_66(v24, v25, v26, v27, v28, v29, v30);
  }

  return v18;
}

+ (unsigned)prepareUnboundACLForWatch:(id *)watch withAccessibilityEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v41[1] = *MEMORY[0x277D85DE8];
  error = 0;
  v6 = objc_opt_new();
  v40 = @"osgn";
  v38[0] = @"cpo";
  v38[1] = @"pidvaccess";
  v7 = MEMORY[0x277CBEC28];
  if (enabledCopy)
  {
    v7 = MEMORY[0x277CBEC38];
  }

  v39[0] = @"IDVPolicy";
  v39[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  v41[0] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];

  if (watch)
  {
    v10 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBEE8], 0x10uLL, &error);
    if (v10)
    {
      v11 = v10;
      v34 = 0;
      v12 = [v6 evaluateAccessControl:v10 operation:0 options:0 error:&v34];
      v13 = v34;

      if (v12)
      {
        SecAccessControlSetConstraints();
        v15 = SecAccessControlCopyData();
        if (v15)
        {
          v16 = v15;
          v17 = 0;
          *watch = v15;
        }

        else
        {
          v19 = APPLEIDV_LOG_CLIENT(0);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            OUTLINED_FUNCTION_14();
            OUTLINED_FUNCTION_13();
            v37 = v11;
            OUTLINED_FUNCTION_61(&dword_2259A7000, v28, v29, "%s:%d, failed to copy acl data from acl %@", v30, v31, v32, v33, v34, error);
          }

          v16 = 0;
          v17 = 13;
        }
      }

      else
      {
        v18 = APPLEIDV_LOG_CLIENT(v14);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          OUTLINED_FUNCTION_14();
          OUTLINED_FUNCTION_13();
          v37 = v13;
          OUTLINED_FUNCTION_61(&dword_2259A7000, v22, v23, "%s:%d, failed to prepare ACL for item creation (%@)", v24, v25, v26, v27, v34, error);
        }

        v16 = 0;
        v17 = 16;
      }

      CFRelease(v11);
    }

    else
    {
      v16 = APPLEIDV_LOG_CLIENT(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v21 = error;
        *buf = 136315650;
        OUTLINED_FUNCTION_14();
        OUTLINED_FUNCTION_13();
        v37 = v21;
        _os_log_error_impl(&dword_2259A7000, v16, OS_LOG_TYPE_ERROR, "%s:%d, failed to create ACL (%@)", buf, 0x1Cu);
      }

      v17 = 13;
    }
  }

  else
  {
    v17 = 5;
  }

  return v17;
}

+ (void)getUUIDsFromACL:(uint64_t)a1 intoArray:(void *)a2 .cold.1(uint64_t a1, void **a2)
{
  v2 = *a2;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_51();
  _os_log_error_impl(v3, v4, OS_LOG_TYPE_ERROR, v5, v6, 0x26u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_51();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareACLForPhoneDecryption:withSubType:forBioUUID:.cold.5()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareACLForWatchDecryption:withSubType:forAclUsage:.cold.1()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareACLForWatchDecryption:withSubType:forAclUsage:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_51();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x26u);
}

+ (void)prepareACLForWatchDecryption:withSubType:forAclUsage:.cold.4()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareUnboundACLForBioBinding:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForBioBinding:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForBioBinding:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)prepareUnboundACLForBioBinding:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForBioBinding:.cold.5()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.3()
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

+ (void)prepareUnboundACLForPasscodeBinding:.cold.5()
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

+ (void)appleIDVRevokeCredentialAuthorizationToken
{
  v7 = *MEMORY[0x277D85DE8];
  v2[0] = 67109632;
  v2[1] = 1198;
  v3 = 1024;
  selfCopy = self;
  v5 = 1024;
  selfCopy2 = self;
  _os_log_debug_impl(&dword_2259A7000, a2, OS_LOG_TYPE_DEBUG, "[line %d] kret = %d %x", v2, 0x14u);
}

+ (void)appleIDVCredentialAuthenticationTokenStatus
{
  OUTLINED_FUNCTION_34(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x1Cu);
}

@end