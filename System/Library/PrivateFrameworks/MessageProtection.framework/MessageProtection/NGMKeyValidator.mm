@interface NGMKeyValidator
+ (BOOL)isValidKeyValidator:(id)validator receiversIdentity:(id)identity sendersIdentity:(id)sendersIdentity error:(id *)error;
+ (_NSRange)rangeOnPublicKey;
+ (id)keyValidatorWithReceiversIdentity:(id)identity sendersIdentity:(id)sendersIdentity;
+ (id)versionByte;
+ (unint64_t)validatorLength;
@end

@implementation NGMKeyValidator

+ (unint64_t)validatorLength
{
  [self rangeOnPublicKey];
  v4 = 3 * v3;
  versionByte = [self versionByte];
  v6 = [versionByte length];

  return v6 + v4;
}

+ (_NSRange)rangeOnPublicKey
{
  v2 = 0;
  v3 = 2;
  result.length = v3;
  result.location = v2;
  return result;
}

+ (id)versionByte
{
  v4 = +[NGMProtocolVersion supportedVersion];
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&v4 length:1];

  return v2;
}

+ (BOOL)isValidKeyValidator:(id)validator receiversIdentity:(id)identity sendersIdentity:(id)sendersIdentity error:(id *)error
{
  v77 = *MEMORY[0x277D85DE8];
  validatorCopy = validator;
  identityCopy = identity;
  sendersIdentityCopy = sendersIdentity;
  rangeOnPublicKey = [self rangeOnPublicKey];
  v13 = v12;
  v14 = [validatorCopy length];
  validatorLength = [self validatorLength];
  v16 = validatorLength;
  if (v14 == validatorLength)
  {
    v17 = [validatorCopy subdataWithRange:{0, 2}];
    v54 = [validatorCopy subdataWithRange:{2, 2}];
    v53 = [validatorCopy subdataWithRange:{4, 2}];
    v55 = [validatorCopy subdataWithRange:{6, 1}];
    if (!+[NGMProtocolVersion isVersionSupported:](NGMProtocolVersion, "isVersionSupported:", *[v55 bytes]))
    {
      MPLogAndAssignError(900, error, @"Discarding this payload because of bad NGM version.");
LABEL_42:

      goto LABEL_43;
    }

    signingKey = [sendersIdentityCopy signingKey];
    dataRepresentation = [signingKey dataRepresentation];
    v52 = [dataRepresentation subdataWithRange:{rangeOnPublicKey, v13}];

    v50 = [v17 isEqualToData:v52];
    deviceSigningKey = [identityCopy deviceSigningKey];
    publicKey = [deviceSigningKey publicKey];
    dataRepresentation2 = [publicKey dataRepresentation];
    v51 = [dataRepresentation2 subdataWithRange:{rangeOnPublicKey, v13}];

    v49 = [v54 isEqualToData:v51];
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    devicePrekeys = [identityCopy devicePrekeys];
    LODWORD(deviceSigningKey) = [devicePrekeys count] == 0;

    if (deviceSigningKey)
    {
      v39 = MessageProtectionLog(v24);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        if (v50)
        {
          v42 = &stru_283F0C6E8;
        }

        else
        {
          v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The sender signing key's was incorrect. Found bytes: %@, expected %@ . \n", v52, v17];
        }

        if (v49)
        {
          v46 = &stru_283F0C6E8;
        }

        else
        {
          v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The receiver's signing key was incorrect. Found bytes: %@, expected %@. \n", v51, v54];
        }

        *buf = 138412802;
        v72 = v42;
        v73 = 2112;
        v74 = v46;
        v75 = 2112;
        v76 = @"No prekeys were found on the device";
        _os_log_error_impl(&dword_22B404000, v39, OS_LOG_TYPE_ERROR, "While checking the key validator, we found the following issues: \n %@%@%@", buf, 0x20u);
        if ((v49 & 1) == 0)
        {
        }

        if ((v50 & 1) == 0)
        {
        }
      }

      MPLogAndAssignError(807, error, @"Sender and receiver's keys are incorrect.");
      goto LABEL_41;
    }

    array = [MEMORY[0x277CBEB18] array];
    devicePrekeys2 = [identityCopy devicePrekeys];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke;
    v61[3] = &unk_2786FDD80;
    v65 = rangeOnPublicKey;
    v66 = v13;
    v27 = array;
    v62 = v27;
    v28 = v53;
    v63 = v28;
    v64 = &v67;
    [devicePrekeys2 enumerateObjectsUsingBlock:v61];

    string = [MEMORY[0x277CCAB68] string];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke_21;
    v58[3] = &unk_2786FDDA8;
    v30 = string;
    v59 = v30;
    v31 = v27;
    v60 = v31;
    v32 = [v31 enumerateObjectsUsingBlock:v58];
    if ((v50 & v49) == 1 && *(v68 + 24) == 1)
    {
      if (!error || !*error)
      {
        goto LABEL_40;
      }

      code = [*error code];
      v34 = [*error description];
      MPLogAndAssignError(code + 10000, error, v34);
      goto LABEL_37;
    }

    v35 = MessageProtectionLog(v32);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      if (v50)
      {
        v48 = &stru_283F0C6E8;
      }

      else
      {
        v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The sender signing key's was incorrect. Found bytes: %@, expected %@ . \n", v52, v17];
      }

      if (v49)
      {
        v43 = &stru_283F0C6E8;
      }

      else
      {
        v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ The receiver's signing key was incorrect. Found bytes: %@, expected %@. \n", v51, v54];
      }

      v44 = *(v68 + 24);
      v47 = v43;
      if (v44)
      {
        v45 = &stru_283F0C6E8;
      }

      else
      {
        v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"❌ No prekey was found that matches the one in the validator (%@). Was it already deleted? Prekeys on device are: %@. \n", v28, v30];
        v43 = v47;
      }

      *buf = 138412802;
      v72 = v48;
      v73 = 2112;
      v74 = v43;
      v75 = 2112;
      v76 = v45;
      _os_log_error_impl(&dword_22B404000, v35, OS_LOG_TYPE_ERROR, "While checking the key validator, we found the following issues: \n %@%@%@", buf, 0x20u);
      if ((v44 & 1) == 0)
      {
      }

      if ((v49 & 1) == 0)
      {
      }

      if ((v50 & 1) == 0)
      {
      }
    }

    if (((v50 | v49) & 1) != 0 || *(v68 + 24) == 1)
    {
      v36 = *(v68 + 24);
      if (v49)
      {
        if ((v36 | v50))
        {
          if (*(v68 + 24))
          {
            if (v50)
            {
              v37 = 806;
            }

            else
            {
              v37 = 801;
            }

            if (v50)
            {
              v38 = @"Unhandled key validator case.";
            }

            else
            {
              v38 = @"The sender key is incorrect.";
            }
          }

          else
          {
            v38 = @"The receiver's encryption key is incorrect.";
            v37 = 804;
          }

          goto LABEL_39;
        }

        v40 = @"encryption key";
      }

      else
      {
        if (*(v68 + 24))
        {
          v37 = 803;
        }

        else
        {
          v37 = 802;
        }

        if (*(v68 + 24))
        {
          v38 = @"The receiver's signing key is incorrect.";
        }

        else
        {
          v38 = @"Receiver's keys are incorrect.";
        }

        if (v50 & 1 | ((v36 & 1) == 0))
        {
          goto LABEL_39;
        }

        v40 = @"signing key";
      }

      v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"The receiver's %@ and sender's identity keys are incorrect.", v40];
      MPLogAndAssignError(805, error, v34);
LABEL_37:

LABEL_40:
LABEL_41:
      _Block_object_dispose(&v67, 8);

      goto LABEL_42;
    }

    v38 = @"Sender and receiver's keys are incorrect.";
    v37 = 800;
LABEL_39:
    MPLogAndAssignError(v37, error, v38);
    goto LABEL_40;
  }

  v17 = MessageProtectionLog(validatorLength);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [NGMKeyValidator isValidKeyValidator:v17 receiversIdentity:? sendersIdentity:? error:?];
  }

LABEL_43:

  return v14 == v16;
}

void __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 dhKey];
  v7 = [v6 publicKey];
  v8 = [v7 dataRepresentation];
  v9 = [v8 subdataWithRange:{*(a1 + 56), *(a1 + 64)}];

  if (v9)
  {
    [*(a1 + 32) addObject:v9];
    if ([*(a1 + 40) isEqualToData:v9])
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  else
  {
    v11 = MessageProtectionLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke_cold_1(v11);
    }
  }
}

void __79__NGMKeyValidator_isValidKeyValidator_receiversIdentity_sendersIdentity_error___block_invoke_21(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = MEMORY[0x277CCACA8];
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a2;
  if (([v6 count] - 1) == a3)
  {
    v8 = &stru_283F0C6E8;
  }

  else
  {
    v8 = @",";
  }

  v9 = [v4 stringWithFormat:@"%@%@", v7, v8];

  [v5 appendString:v9];
}

+ (id)keyValidatorWithReceiversIdentity:(id)identity sendersIdentity:(id)sendersIdentity
{
  sendersIdentityCopy = sendersIdentity;
  identityCopy = identity;
  rangeOnPublicKey = [self rangeOnPublicKey];
  v10 = v9;
  validatorLength = [self validatorLength];
  v12 = [MEMORY[0x277CBEB28] dataWithCapacity:validatorLength];
  deviceSigningKey = [sendersIdentityCopy deviceSigningKey];

  publicKey = [deviceSigningKey publicKey];
  dataRepresentation = [publicKey dataRepresentation];
  v16 = [dataRepresentation subdataWithRange:{rangeOnPublicKey, v10}];

  signingKey = [identityCopy signingKey];
  dataRepresentation2 = [signingKey dataRepresentation];
  v19 = [dataRepresentation2 subdataWithRange:{rangeOnPublicKey, v10}];

  echnidaRegistration = [identityCopy echnidaRegistration];

  dhKey = [echnidaRegistration dhKey];
  dataRepresentation3 = [dhKey dataRepresentation];
  v23 = [dataRepresentation3 subdataWithRange:{rangeOnPublicKey, v10}];

  [v12 appendData:v16];
  [v12 appendData:v19];
  [v12 appendData:v23];
  versionByte = [self versionByte];
  [v12 appendData:versionByte];

  if ([v12 length] == validatorLength)
  {
    v25 = v12;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

@end