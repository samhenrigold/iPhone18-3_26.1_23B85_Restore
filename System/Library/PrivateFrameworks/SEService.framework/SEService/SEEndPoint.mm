@interface SEEndPoint
+ (id)decodeWithData:(id)data error:(id *)error;
+ (id)endPointWithType:(int64_t)type appletIdentifier:(id)identifier identifier:(id)a5 certificateData:(id)data error:(id *)error;
+ (id)parsePTAExtension:(__CFString *)extension certificate:(__SecCertificate *)certificate specification:(id *)specification output:(PTAEndPointExtensionContent *)output;
+ (id)revokedEndpointWithPublicKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier revocationAttestation:(id)attestation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (SEEndPoint)initWithCoder:(id)coder;
- (id)configurePrivateData:(id)data confidentialData:(id)confidentialData contactlessPersistentVisibility:(id)visibility wiredPersistentVisibility:(id)persistentVisibility nfcExpressOnlyInLPM:(id)m;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deleteEndPointLongTermPrivacyKey;
- (id)description;
- (id)dumpState;
- (id)generateEndPointPrivacyLongTermPrivacyKey;
- (id)validateAuthorizedEndpointConfig:(id)config;
- (unint64_t)getEndpointUser;
- (unint64_t)hash;
- (void)configurePrivateDataOffset:(unsigned __int16)offset privateDataLength:(unsigned __int16)length confidentialDataOffset:(unsigned __int16)dataOffset confidentialDataLength:(unsigned __int16)dataLength contactlessVisibility:(BOOL)visibility wiredVisibility:(BOOL)wiredVisibility;
- (void)encodeWithCoder:(id)coder;
- (void)prependCertificateChain:(id)chain;
@end

@implementation SEEndPoint

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = [(SEEndPoint *)self encodeWithError:0];
  v4 = [SEEndPoint decodeWithData:v3 error:0];

  return v4;
}

- (unint64_t)hash
{
  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
  v3 = [publicKeyIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
    publicKeyIdentifier2 = [equalCopy publicKeyIdentifier];
    v7 = [publicKeyIdentifier isEqualToData:publicKeyIdentifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)endPointWithType:(int64_t)type appletIdentifier:(id)identifier identifier:(id)a5 certificateData:(id)data error:(id *)error
{
  identifierCopy = identifier;
  v14 = a5;
  dataCopy = data;
  if (dataCopy)
  {
    v16 = SecCertificateCreateWithData(0, dataCopy);
    v17 = v16;
    if (!v16)
    {
      if (error)
      {
        v26 = SESDefaultLogObject();
        base64 = [(__CFData *)dataCopy base64];
        *error = SESCreateAndLogError();
      }

      v23 = 0;
      goto LABEL_60;
    }

    commonName = 0;
    SecCertificateCopyCommonName(v16, &commonName);
    v18 = commonName;
    v19 = SecCertificateCopyIssuerSummary();
    if ((type - 1) >= 5)
    {
      if (error)
      {
        v27 = SESDefaultLogObject();
        *error = SESCreateAndLogError();
      }

      v23 = 0;
      goto LABEL_59;
    }

    v20 = off_1E82D0FE8[type - 1];
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v81 = 0u;
    v75 = 0;
    v76 = &v75;
    v77 = 0x3032000000;
    v78 = __Block_byref_object_copy__1;
    if ((type & 6) == 4)
    {
      v21 = &PTALyonEndPointExtensionSpec;
    }

    else
    {
      v21 = &PTAEndPointExtensionSpec;
    }

    v79 = __Block_byref_object_dispose__1;
    v80 = [self parsePTAExtension:v20 certificate:v17 specification:v21 output:&v81];
    if (v76[5])
    {
      if (!error)
      {
        v23 = 0;
LABEL_58:
        _Block_object_dispose(&v75, 8);

LABEL_59:
LABEL_60:

        goto LABEL_61;
      }

      v22 = SESDefaultLogObject();
      SESCreateAndLogError();
      *error = v23 = 0;
      v24 = v22;
LABEL_57:

      goto LABEL_58;
    }

    v28 = SecCertificateCopyKey(v17);
    v24 = v28;
    if (!v28)
    {
      if (error)
      {
        v43 = SESDefaultLogObject();
        *error = SESCreateAndLogError();
      }

      v23 = 0;
      goto LABEL_57;
    }

    v74 = 0;
    v66 = v28;
    SecKeyCopyPublicBytes();
    v29 = objc_opt_new();
    *(v29 + 8) = type;
    objc_storeStrong((v29 + 16), identifier);
    v30 = [MEMORY[0x1E695DEC8] arrayWithObject:dataCopy];
    v31 = *(v29 + 136);
    *(v29 + 136) = v30;

    if (v14)
    {
      v32 = v14;
    }

    else
    {
      v32 = v18;
    }

    objc_storeStrong((v29 + 24), v32);
    objc_storeStrong((v29 + 32), v18);
    objc_storeStrong((v29 + 40), 0);
    ses_sha1 = [0 ses_sha1];
    v34 = *(v29 + 48);
    *(v29 + 48) = ses_sha1;

    objc_storeStrong((v29 + 456), v19);
    v35 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v82];
    v36 = *(v29 + 80);
    *(v29 + 80) = v35;

    v37 = getPublicKeyBytes();
    v38 = *(v29 + 88);
    *(v29 + 88) = v37;

    if (*(v29 + 88))
    {
      v39 = [SEEndPointConfiguration configurationWithOpt1:*v83 opt2:*v84];
      v40 = *(v29 + 72);
      *(v29 + 72) = v39;

      if (*(v29 + 72))
      {
        v41 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v87];
        v42 = *(v29 + 472);
        *(v29 + 472) = v41;

        v73 = 0;
        if (*(&v90 + 1))
        {
          if (*(&v90 + 1) == 1 || *v90 != 2 || *(v90 + 1) >= 5u)
          {
            if (error)
            {
              goto LABEL_53;
            }

            goto LABEL_55;
          }

          *&v90 = v90 + 2;
          *(&v90 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!error)
            {
              goto LABEL_55;
            }

            goto LABEL_81;
          }

          v46 = v73;
        }

        else
        {
          v46 = 0;
        }

        v47 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v46];
        v48 = *(v29 + 120);
        *(v29 + 120) = v47;

        if (*(&v89 + 1))
        {
          if (*(&v89 + 1) == 1 || *v89 != 2 || *(v89 + 1) >= 5u)
          {
            if (error)
            {
              goto LABEL_53;
            }

            goto LABEL_55;
          }

          *&v89 = v89 + 2;
          *(&v89 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!error)
            {
              goto LABEL_55;
            }

            goto LABEL_81;
          }

          v49 = v73;
        }

        else
        {
          v49 = 0;
          v73 = 0;
        }

        v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v49];
        v51 = *(v29 + 112);
        *(v29 + 112) = v50;

        if (*(&v91 + 1))
        {
          if (*(&v91 + 1) == 1 || *v91 != 2 || *(v91 + 1) >= 5u)
          {
            if (error)
            {
LABEL_53:
              v65 = SESDefaultLogObject();
              v52 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v90];
              asHexString = [v52 asHexString];
              *error = SESCreateAndLogError();

              v54 = v65;
LABEL_54:
            }

LABEL_55:
            v23 = 0;
LABEL_56:

            v24 = v66;
            goto LABEL_57;
          }

          *&v91 = v91 + 2;
          *(&v91 + 1) -= 2;
          if (DERParseInteger())
          {
            if (!error)
            {
              goto LABEL_55;
            }

LABEL_81:
            v64 = SESDefaultLogObject();
            v60 = [MEMORY[0x1E695DEF0] dataWithDERItem:&v90];
            *error = SESCreateAndLogError();

            v54 = v64;
            goto LABEL_54;
          }

          v56 = v73;
        }

        else
        {
          v56 = 0;
          v73 = 0;
        }

        v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v56];
        v58 = *(v29 + 128);
        *(v29 + 128) = v57;

        if (*(&v88 + 1))
        {
          v67 = 0;
          v68 = &v67;
          v69 = 0x3032000000;
          v70 = __Block_byref_object_copy__1;
          v71 = __Block_byref_object_dispose__1;
          array = [MEMORY[0x1E695DF70] array];
          if (DERDecodeSequenceWithBlock() || v76[5])
          {
            if (error)
            {
              v59 = SESDefaultLogObject();
              *error = SESCreateAndLogError();
            }

            _Block_object_dispose(&v67, 8);
            v54 = array;
            goto LABEL_54;
          }

          objc_storeStrong((v29 + 104), v68[5]);
          _Block_object_dispose(&v67, 8);
        }

        generateEndPointPrivacyLongTermPrivacyKey = [v29 generateEndPointPrivacyLongTermPrivacyKey];
        v62 = v76[5];
        v76[5] = generateEndPointPrivacyLongTermPrivacyKey;

        if (!v76[5])
        {
          v23 = v29;
          goto LABEL_56;
        }

        if (!error)
        {
          goto LABEL_55;
        }

        v44 = SESDefaultLogObject();
        [v76[5] code];
        v45 = SESCreateAndLogError();
LABEL_39:
        *error = v45;

        goto LABEL_55;
      }

      if (!error)
      {
        goto LABEL_55;
      }
    }

    else if (!error)
    {
      goto LABEL_55;
    }

    v44 = SESDefaultLogObject();
    v45 = SESCreateAndLogError();
    goto LABEL_39;
  }

  if (error)
  {
    v25 = SESDefaultLogObject();
    *error = SESCreateAndLogError();
  }

  v23 = 0;
LABEL_61:

  return v23;
}

uint64_t __81__SEEndPoint_endPointWithType_appletIdentifier_identifier_certificateData_error___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = a2 + 8;
  v6 = getPublicKeyBytes();
  if (v6)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObject:v6];
    v7 = 0;
  }

  else
  {
    v8 = SESDefaultLogObject();
    v13 = [MEMORY[0x1E695DEF0] dataWithDERItem:v5];
    v9 = SESCreateAndLogError();
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    *a3 = 1;
    v7 = 6;
  }

  return v7;
}

+ (id)parsePTAExtension:(__CFString *)extension certificate:(__SecCertificate *)certificate specification:(id *)specification output:(PTAEndPointExtensionContent *)output
{
  if (extension && certificate && specification && output)
  {
    v6 = SecCertificateCopyExtensionValue();
    if (v6 && !DERParseSequenceSpec())
    {
      v7 = 0;
    }

    else
    {
      v8 = SESDefaultLogObject();
      v7 = SESCreateAndLogError();
    }
  }

  else
  {
    v6 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
  }

  return v7;
}

+ (id)revokedEndpointWithPublicKeyIdentifier:(id)identifier appletIdentifier:(id)appletIdentifier revocationAttestation:(id)attestation error:(id *)error
{
  identifierCopy = identifier;
  appletIdentifierCopy = appletIdentifier;
  attestationCopy = attestation;
  v13 = attestationCopy;
  if (identifierCopy && attestationCopy)
  {
    v14 = objc_opt_new();
    objc_storeStrong((v14 + 16), appletIdentifier);
    objc_storeStrong((v14 + 48), identifier);
    objc_storeStrong((v14 + 400), attestation);
    hexStringAsData = [@"A000000809434343444B417631" hexStringAsData];
    v16 = [hexStringAsData isEqualToData:appletIdentifierCopy];

    if (v16)
    {
      v17 = 1;
    }

    else
    {
      hexStringAsData2 = [@"A00000085801010100000001" hexStringAsData];
      v20 = [hexStringAsData2 isEqualToData:appletIdentifierCopy];

      if (v20)
      {
        v17 = 3;
      }

      else
      {
        hexStringAsData3 = [@"A00000085802010100000001" hexStringAsData];
        v22 = [hexStringAsData3 isEqualToData:appletIdentifierCopy];

        if (v22)
        {
          v17 = 2;
        }

        else
        {
          hexStringAsData4 = [@"A000000909ACCE5501" hexStringAsData];
          v24 = [hexStringAsData4 isEqualToData:appletIdentifierCopy];

          if ((v24 & 1) == 0)
          {
            if (error)
            {
              v26 = SESDefaultLogObject();
              *error = SESCreateAndLogError();
            }

            v18 = 0;
            goto LABEL_15;
          }

          v17 = 5;
        }
      }
    }

    *(v14 + 8) = v17;
    v18 = v14;
  }

  else
  {
    if (!error)
    {
      v18 = 0;
      goto LABEL_16;
    }

    v14 = SESDefaultLogObject();
    SESCreateAndLogError();
    *error = v18 = 0;
  }

LABEL_15:

LABEL_16:

  return v18;
}

- (id)validateAuthorizedEndpointConfig:(id)config
{
  configCopy = config;
  if (!configCopy)
  {
    goto LABEL_8;
  }

  configuration = [(SEEndPoint *)self configuration];
  authorizeEndPointWithAuthorizeAllowed = [configuration authorizeEndPointWithAuthorizeAllowed];

  if (authorizeEndPointWithAuthorizeAllowed)
  {
    v7 = 0;
    goto LABEL_10;
  }

  v8 = SecCertificateCreateWithData(0, configCopy);
  if (v8 && (v9 = v8, v10 = SecCertificateCopyExtensionValue(), CFRelease(v9), v10))
  {
    [v10 DERItem];
    DERParseSequenceSpec();
    v12 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
  }

  else
  {
LABEL_8:
    v10 = SESDefaultLogObject();
    v7 = SESCreateAndLogError();
  }

LABEL_10:

  return v7;
}

- (void)prependCertificateChain:(id)chain
{
  chainCopy = chain;
  certificates = [(SEEndPoint *)self certificates];
  v5 = [chainCopy arrayByAddingObjectsFromArray:certificates];

  certificates = self->_certificates;
  self->_certificates = v5;
}

- (void)configurePrivateDataOffset:(unsigned __int16)offset privateDataLength:(unsigned __int16)length confidentialDataOffset:(unsigned __int16)dataOffset confidentialDataLength:(unsigned __int16)dataLength contactlessVisibility:(BOOL)visibility wiredVisibility:(BOOL)wiredVisibility
{
  wiredVisibilityCopy = wiredVisibility;
  visibilityCopy = visibility;
  dataLengthCopy = dataLength;
  dataOffsetCopy = dataOffset;
  lengthCopy = length;
  offsetCopy = offset;
  configuration = [(SEEndPoint *)self configuration];
  [configuration setOffsetPrivateMailBox:offsetCopy];

  configuration2 = [(SEEndPoint *)self configuration];
  [configuration2 setLengthPrivateMailBox:lengthCopy];

  configuration3 = [(SEEndPoint *)self configuration];
  [configuration3 setOffsetConfidentialMailBox:dataOffsetCopy];

  configuration4 = [(SEEndPoint *)self configuration];
  [configuration4 setLengthConfidentialMailBox:dataLengthCopy];

  configuration5 = [(SEEndPoint *)self configuration];
  [configuration5 setEnabledOnContactless:visibilityCopy];

  configuration6 = [(SEEndPoint *)self configuration];
  [configuration6 setEnabledOnWire:wiredVisibilityCopy];
}

- (id)configurePrivateData:(id)data confidentialData:(id)confidentialData contactlessPersistentVisibility:(id)visibility wiredPersistentVisibility:(id)persistentVisibility nfcExpressOnlyInLPM:(id)m
{
  dataCopy = data;
  confidentialDataCopy = confidentialData;
  visibilityCopy = visibility;
  persistentVisibilityCopy = persistentVisibility;
  mCopy = m;
  if (dataCopy)
  {
    if ([dataCopy length] != 3)
    {
      goto LABEL_12;
    }

    v43 = visibilityCopy;
    bytes = [dataCopy bytes];
    v18 = *bytes;
    v19 = __rev16(v18);
    v20 = bswap32(v18);
    v21 = *(bytes + 2);
    privateMailBoxSize = [(SEEndPoint *)self privateMailBoxSize];
    unsignedIntValue = [privateMailBoxSize unsignedIntValue];

    if (unsignedIntValue < v21 + HIWORD(v20))
    {
      configuration7 = SESDefaultLogObject();
      privateMailBoxSize2 = [(SEEndPoint *)self privateMailBoxSize];
      [privateMailBoxSize2 unsignedIntValue];
      v26 = SESCreateAndLogError();

LABEL_11:
      visibilityCopy = v43;
LABEL_20:

      goto LABEL_21;
    }

    configuration = [(SEEndPoint *)self configuration];
    [configuration setOffsetPrivateMailBox:v19];

    configuration2 = [(SEEndPoint *)self configuration];
    [configuration2 setLengthPrivateMailBox:v21];

    visibilityCopy = v43;
  }

  if (!confidentialDataCopy)
  {
    goto LABEL_14;
  }

  if ([confidentialDataCopy length] != 3)
  {
LABEL_12:
    configuration7 = SESDefaultLogObject();
    [dataCopy length];
    v26 = SESCreateAndLogError();
    goto LABEL_20;
  }

  v43 = visibilityCopy;
  bytes2 = [confidentialDataCopy bytes];
  v30 = *bytes2;
  v31 = __rev16(v30);
  v32 = bswap32(v30);
  v33 = *(bytes2 + 2);
  confidentialMailBoxSize = [(SEEndPoint *)self confidentialMailBoxSize];
  unsignedIntegerValue = [confidentialMailBoxSize unsignedIntegerValue];

  if (unsignedIntegerValue < v33 + HIWORD(v32))
  {
    configuration7 = SESDefaultLogObject();
    privateMailBoxSize3 = [(SEEndPoint *)self privateMailBoxSize];
    [privateMailBoxSize3 unsignedIntValue];
    v26 = SESCreateAndLogError();

    goto LABEL_11;
  }

  configuration3 = [(SEEndPoint *)self configuration];
  [configuration3 setOffsetConfidentialMailBox:v31];

  configuration4 = [(SEEndPoint *)self configuration];
  [configuration4 setLengthConfidentialMailBox:v33];

  visibilityCopy = v43;
LABEL_14:
  if (visibilityCopy)
  {
    configuration5 = [(SEEndPoint *)self configuration];
    [configuration5 setEnabledOnContactless:{objc_msgSend(visibilityCopy, "BOOLValue")}];
  }

  if (persistentVisibilityCopy)
  {
    configuration6 = [(SEEndPoint *)self configuration];
    [configuration6 setEnabledOnWire:{objc_msgSend(persistentVisibilityCopy, "BOOLValue")}];
  }

  if (mCopy)
  {
    bOOLValue = [mCopy BOOLValue];
    configuration7 = [(SEEndPoint *)self configuration];
    [configuration7 setNfcExpressOnlyInLPM:bOOLValue];
    v26 = 0;
    goto LABEL_20;
  }

  v26 = 0;
LABEL_21:

  return v26;
}

- (id)generateEndPointPrivacyLongTermPrivacyKey
{
  selfCopy = self;
  v29[3] = *MEMORY[0x1E69E9840];
  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];
  v4 = [privacyKeyIdentifier length];

  if (v4)
  {
    goto LABEL_16;
  }

  v5 = MEMORY[0x1E696AEC0];
  identifier = [selfCopy identifier];
  v7 = [v5 stringWithFormat:@"%@::LTPrivacyKey", identifier];

  v8 = SecAccessControlCreateWithFlags(*MEMORY[0x1E695E480], *MEMORY[0x1E697ABE0], 0, 0);
  SecAccessControlSetConstraints();
  v9 = *MEMORY[0x1E697AD78];
  v10 = *MEMORY[0x1E697AD50];
  v28[0] = *MEMORY[0x1E697AD68];
  v28[1] = v10;
  v29[0] = v9;
  v29[1] = &unk_1F4762E78;
  v28[2] = *MEMORY[0x1E697B2D0];
  v11 = *MEMORY[0x1E697AD18];
  v26[0] = *MEMORY[0x1E697B390];
  v26[1] = v11;
  v27[0] = MEMORY[0x1E695E118];
  v27[1] = MEMORY[0x1E695E118];
  v12 = *MEMORY[0x1E697ABC8];
  v26[2] = *MEMORY[0x1E697AC48];
  v26[3] = v12;
  v27[2] = v7;
  v27[3] = v8;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:4];
  v29[2] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:3];

  error = 0;
  v15 = SecKeyCreateRandomKey(v14, &error);
  v16 = v15;
  v17 = error;
  if (error || !v15)
  {
    v19 = SESDefaultLogObject();
    selfCopy = SESCreateAndLogError();
    v21 = 0;
  }

  else
  {
    objc_storeStrong((selfCopy + 464), v7);
    v17 = getSecKeyPublicBytes();
    v18 = 0;
    v19 = v18;
    v20 = v17 || v18 == 0;
    v21 = !v20;
    if (v20)
    {
      v23 = SESDefaultLogObject();
      selfCopy = SESCreateAndLogError();
    }

    else
    {
      objc_storeStrong((selfCopy + 56), 0);
      ses_sha1 = [v19 ses_sha1];
      v23 = *(selfCopy + 64);
      *(selfCopy + 64) = ses_sha1;
    }
  }

  if (v21)
  {
LABEL_16:
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)deleteEndPointLongTermPrivacyKey
{
  v18 = *MEMORY[0x1E69E9840];
  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];
  v4 = [privacyKeyIdentifier length];

  if (v4)
  {
    v5 = SESDefaultLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      privacyKeyIdentifier2 = [(SEEndPoint *)self privacyKeyIdentifier];
      *buf = 138412290;
      v17 = privacyKeyIdentifier2;
      _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "Deleting long term privacy key %@", buf, 0xCu);
    }

    v7 = *MEMORY[0x1E697AFF8];
    v15[0] = *MEMORY[0x1E697B020];
    v8 = *MEMORY[0x1E697AC48];
    v14[0] = v7;
    v14[1] = v8;
    privacyKeyIdentifier3 = [(SEEndPoint *)self privacyKeyIdentifier];
    v14[2] = *MEMORY[0x1E697B390];
    v15[1] = privacyKeyIdentifier3;
    v15[2] = MEMORY[0x1E695E118];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:3];

    if (SecItemDelete(v10))
    {
      privacyKeyIdentifier = SESDefaultLogObject();
      v12 = SESCreateAndLogError();
    }

    else
    {
      v12 = 0;
      privacyKeyIdentifier = self->_privacyKeyIdentifier;
      self->_privacyKeyIdentifier = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)getEndpointUser
{
  if ([(SEEndPoint *)self endPointType]!= 1)
  {
    return 2;
  }

  identifier = [(SEEndPoint *)self identifier];
  v4 = [identifier componentsSeparatedByString:@"."];

  if ([v4 count] >= 2)
  {
    v6 = [v4 objectAtIndexedSubscript:1];
    v7 = [v6 isEqualToString:@"OWNR"];

    if (v7)
    {
      v5 = 0;
    }

    else
    {
      v8 = [v4 objectAtIndexedSubscript:1];
      v9 = [v8 isEqualToString:@"FRND"];

      if (v9)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else
  {
    v5 = 2;
  }

  return v5;
}

- (id)description
{
  v193 = *MEMORY[0x1E69E9840];
  v185 = 0;
  v186 = &v185;
  v187 = 0x3032000000;
  v188 = __Block_byref_object_copy__1;
  v189 = __Block_byref_object_dispose__1;
  string = [MEMORY[0x1E696AD60] string];
  v3 = v186[5];
  identifier = [(SEEndPoint *)self identifier];
  [v3 appendFormat:@"Identifier : %@ : {\n", identifier];

  v5 = v186[5];
  appletIdentifier = [(SEEndPoint *)self appletIdentifier];
  asHexString = [appletIdentifier asHexString];
  [v5 appendFormat:@"\tAppletIdentifier : %@\n", asHexString];

  [v186[5] appendFormat:@"\tsharingRecords : {\n"];
  sharingRecords = self->_sharingRecords;
  v184[0] = MEMORY[0x1E69E9820];
  v184[1] = 3221225472;
  v184[2] = __25__SEEndPoint_description__block_invoke;
  v184[3] = &unk_1E82D0FA0;
  v184[4] = &v185;
  [(NSArray *)sharingRecords enumerateObjectsUsingBlock:v184];
  [v186[5] appendFormat:@"\t}\n"];
  v9 = v186[5];
  revocationAttestation = [(SEEndPoint *)self revocationAttestation];
  v11 = @"REVOKED";
  if (!revocationAttestation)
  {
    v11 = @"ACTIVE";
  }

  [v9 appendFormat:@"\tstate : %@\n", v11];

  v12 = v186[5];
  issuerIdentifier = [(SEEndPoint *)self issuerIdentifier];
  [v12 appendFormat:@"\tissuerIdentifier : %@\n", issuerIdentifier];

  v14 = v186[5];
  subjectIdentifier = [(SEEndPoint *)self subjectIdentifier];
  [v14 appendFormat:@"\tsubjectIdentifier : %@\n", subjectIdentifier];

  v16 = v186[5];
  publicKey = [(SEEndPoint *)self publicKey];
  asHexString2 = [publicKey asHexString];
  [v16 appendFormat:@"\tpublicKey : %@\n", asHexString2];

  v19 = v186[5];
  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
  asHexString3 = [publicKeyIdentifier asHexString];
  [v19 appendFormat:@"\tpublicKeyIdentifier : %@\n", asHexString3];

  v22 = v186[5];
  privacyPublicKey = [(SEEndPoint *)self privacyPublicKey];
  asHexString4 = [privacyPublicKey asHexString];
  [v22 appendFormat:@"\tprivacyPublicKey : %@\n", asHexString4];

  v25 = v186[5];
  privacyPublicKeyIdentifier = [(SEEndPoint *)self privacyPublicKeyIdentifier];
  asHexString5 = [privacyPublicKeyIdentifier asHexString];
  [v25 appendFormat:@"\tprivacyPublicKeyIdentifier : %@\n", asHexString5];

  v28 = v186[5];
  configuration = [(SEEndPoint *)self configuration];
  [v28 appendFormat:@"\tconfiguration : %@, \n", configuration];

  v30 = v186[5];
  readerIdentifier = [(SEEndPoint *)self readerIdentifier];
  asHexString6 = [readerIdentifier asHexString];
  [v30 appendFormat:@"\treaderIdentifier : %@, \n", asHexString6];

  v33 = v186[5];
  readerPublicKey = [(SEEndPoint *)self readerPublicKey];
  asHexString7 = [readerPublicKey asHexString];
  [v33 appendFormat:@"\treaderPublicKey : %@, \n", asHexString7];

  v36 = v186[5];
  keyIdentifier = [(SEEndPoint *)self keyIdentifier];
  asHexString8 = [keyIdentifier asHexString];
  [v36 appendFormat:@"\tkeyIdentifier : %@, \n", asHexString8];

  v39 = v186[5];
  confidentialMailBoxSize = [(SEEndPoint *)self confidentialMailBoxSize];
  [v39 appendFormat:@"\tconfidentialMailBoxSize : %@, \n", confidentialMailBoxSize];

  v41 = v186[5];
  privateMailBoxSize = [(SEEndPoint *)self privateMailBoxSize];
  [v41 appendFormat:@"\tprivateMailBoxSize : %@, \n", privateMailBoxSize];

  v43 = v186[5];
  counter = [(SEEndPoint *)self counter];
  [v43 appendFormat:@"\tcounter : %@, \n", counter];

  v45 = v186[5];
  authorizedKeys = [(SEEndPoint *)self authorizedKeys];
  [v45 appendFormat:@"\tauthorizedKeys (%lu) : {\n", objc_msgSend(authorizedKeys, "count")];

  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  authorizedKeys2 = [(SEEndPoint *)self authorizedKeys];
  v48 = [authorizedKeys2 countByEnumeratingWithState:&v180 objects:v192 count:16];
  if (v48)
  {
    v49 = *v181;
    do
    {
      for (i = 0; i != v48; ++i)
      {
        if (*v181 != v49)
        {
          objc_enumerationMutation(authorizedKeys2);
        }

        v51 = v186[5];
        asHexString9 = [*(*(&v180 + 1) + 8 * i) asHexString];
        [v51 appendFormat:@"\t\t%@, \n", asHexString9];
      }

      v48 = [authorizedKeys2 countByEnumeratingWithState:&v180 objects:v192 count:16];
    }

    while (v48);
  }

  [v186[5] appendFormat:@"\t}\n"];
  v53 = v186[5];
  friendlyName = [(SEEndPoint *)self friendlyName];
  [v53 appendFormat:@"\tfriendlyName : %@, \n", friendlyName];

  keyRole = [(SEEndPoint *)self keyRole];
  LOBYTE(friendlyName) = keyRole == 0;

  if ((friendlyName & 1) == 0)
  {
    v56 = v186[5];
    keyRole2 = [(SEEndPoint *)self keyRole];
    [v56 appendFormat:@"\tkeyRole : 0x%04X, \n", objc_msgSend(keyRole2, "unsignedShortValue")];
  }

  v58 = v186[5];
  readerInfo = [(SEEndPoint *)self readerInfo];
  [v58 appendFormat:@"\treaderInfo : %@, \n", readerInfo];

  v60 = v186[5];
  invitationIdentifier = [(SEEndPoint *)self invitationIdentifier];
  [v60 appendFormat:@"\tinvitationIdentifier : %@, \n", invitationIdentifier];

  v62 = v186[5];
  sharingSessionUUID = [(SEEndPoint *)self sharingSessionUUID];
  [v62 appendFormat:@"\tsharingSessionUUID : %@, \n", sharingSessionUUID];

  v64 = v186[5];
  ownerIDSIdentifier = [(SEEndPoint *)self ownerIDSIdentifier];
  [v64 appendFormat:@"\townerIDSIdentifier : %@, \n", ownerIDSIdentifier];

  v66 = v186[5];
  mailboxMapping = [(SEEndPoint *)self mailboxMapping];
  asHexString10 = [mailboxMapping asHexString];
  [v66 appendFormat:@"\tmailboxMapping : %@, \n", asHexString10];

  v69 = v186[5];
  trackingRequest = [(SEEndPoint *)self trackingRequest];
  asHexString11 = [trackingRequest asHexString];
  [v69 appendFormat:@"\ttrackingRequest : %@, \n", asHexString11];

  v72 = v186[5];
  trackingReceipt = [(SEEndPoint *)self trackingReceipt];
  asHexString12 = [trackingReceipt asHexString];
  [v72 appendFormat:@"\ttrackingReceipt : %@, \n", asHexString12];

  v75 = v186[5];
  deviceConfiguration = [(SEEndPoint *)self deviceConfiguration];
  asHexString13 = [deviceConfiguration asHexString];
  [v75 appendFormat:@"\tdeviceConfiguration : %@, \n", asHexString13];

  v78 = v186[5];
  sharingAttestationData = [(SEEndPoint *)self sharingAttestationData];
  asHexString14 = [sharingAttestationData asHexString];
  [v78 appendFormat:@"\tsharingAttestationData : %@\n", asHexString14];

  v81 = v186[5];
  ownerEphemeralKey = [(SEEndPoint *)self ownerEphemeralKey];
  asHexString15 = [ownerEphemeralKey asHexString];
  [v81 appendFormat:@"\townerEphemeralKey : %@\n", asHexString15];

  v84 = v186[5];
  additionalAttestationsDict = [(SEEndPoint *)self additionalAttestationsDict];
  [v84 appendFormat:@"\tadditionalAttestationsDict : %lu\n", objc_msgSend(additionalAttestationsDict, "count")];

  v86 = v186[5];
  sharingEncryptedData = [(SEEndPoint *)self sharingEncryptedData];
  asHexString16 = [sharingEncryptedData asHexString];
  [v86 appendFormat:@"\tsharingEncryptedData : %@\n", asHexString16];

  v89 = v186[5];
  revocationAttestation2 = [(SEEndPoint *)self revocationAttestation];
  asHexString17 = [revocationAttestation2 asHexString];
  [v89 appendFormat:@"\trevocationAttestation : %@\n", asHexString17];

  v92 = v186[5];
  terminatedByTaskID = [(SEEndPoint *)self terminatedByTaskID];
  [v92 appendFormat:@"\tterminatedByTaskID : %@\n", terminatedByTaskID];

  [v186[5] appendFormat:@"\tcarOEMProprietaryData : {\n"];
  carOEMProprietaryData = [(SEEndPoint *)self carOEMProprietaryData];

  if (carOEMProprietaryData)
  {
    v95 = v186[5];
    carOEMProprietaryData2 = [(SEEndPoint *)self carOEMProprietaryData];
    version = [carOEMProprietaryData2 version];
    [v95 appendFormat:@"\t\tversion : %@, \n", version];

    v98 = v186[5];
    carOEMProprietaryData3 = [(SEEndPoint *)self carOEMProprietaryData];
    cipherText = [carOEMProprietaryData3 cipherText];
    asHexString18 = [cipherText asHexString];
    [v98 appendFormat:@"\t\tcipherText : %@, \n", asHexString18];

    v102 = v186[5];
    carOEMProprietaryData4 = [(SEEndPoint *)self carOEMProprietaryData];
    ephemeralPublicKeydata = [carOEMProprietaryData4 ephemeralPublicKeydata];
    asHexString19 = [ephemeralPublicKeydata asHexString];
    [v102 appendFormat:@"\t\tephemeralPublicKeydata : %@, \n", asHexString19];

    v106 = v186[5];
    carOEMProprietaryData5 = [(SEEndPoint *)self carOEMProprietaryData];
    receiverPublicKeyHash = [carOEMProprietaryData5 receiverPublicKeyHash];
    asHexString20 = [receiverPublicKeyHash asHexString];
    [v106 appendFormat:@"\t\treceiverPublicKeyHash : %@, \n", asHexString20];
  }

  [v186[5] appendFormat:@"\t}, \n"];
  v110 = v186[5];
  environment = [(SEEndPoint *)self environment];
  [v110 appendFormat:@"\tenvironment : %@, \n", environment];

  v112 = v186[5];
  sharingTokenAvailabilityBitmap = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
  [v112 appendFormat:@"\tsharingTokenAvailabilityBitmap : %@, \n", sharingTokenAvailabilityBitmap];

  v114 = v186[5];
  homeUUIDString = [(SEEndPoint *)self homeUUIDString];
  [v114 appendFormat:@"\thomeUUID : %@, \n", homeUUIDString];

  v116 = v186[5];
  certificates = [(SEEndPoint *)self certificates];
  [v116 appendFormat:@"\tcertificates (%lu) : {\n", objc_msgSend(certificates, "count")];

  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  certificates2 = [(SEEndPoint *)self certificates];
  v119 = [certificates2 countByEnumeratingWithState:&v176 objects:v191 count:16];
  if (v119)
  {
    v120 = *v177;
    do
    {
      for (j = 0; j != v119; ++j)
      {
        if (*v177 != v120)
        {
          objc_enumerationMutation(certificates2);
        }

        v122 = v186[5];
        asHexString21 = [*(*(&v176 + 1) + 8 * j) asHexString];
        [v122 appendFormat:@"\t\t%@, \n", asHexString21];
      }

      v119 = [certificates2 countByEnumeratingWithState:&v176 objects:v191 count:16];
    }

    while (v119);
  }

  [v186[5] appendFormat:@"\t}\n}\n"];
  shareInitiatorCertificateChainData = [(SEEndPoint *)self shareInitiatorCertificateChainData];

  if (shareInitiatorCertificateChainData)
  {
    v125 = v186[5];
    shareInitiatorCertificateChainData2 = [(SEEndPoint *)self shareInitiatorCertificateChainData];
    asHexString22 = [shareInitiatorCertificateChainData2 asHexString];
    [v125 appendFormat:@"\tshareInitiatorCertificateChainData : %@\n", asHexString22];
  }

  v128 = v186[5];
  readerLongTermPublicKeyCertificate = [(SEEndPoint *)self readerLongTermPublicKeyCertificate];
  asHexString23 = [readerLongTermPublicKeyCertificate asHexString];
  [v128 appendFormat:@"\treaderLongTermPublicKeyCertificate : %@, \n", asHexString23];

  v131 = v186[5];
  bleUUID = [(SEEndPoint *)self bleUUID];
  [v131 appendFormat:@"\tbleUUID : %@\n", bleUUID];

  v133 = v186[5];
  bleIntroKey = [(SEEndPoint *)self bleIntroKey];
  asHexString24 = [bleIntroKey asHexString];
  [v133 appendFormat:@"\tbleIntroKey : %@\n", asHexString24];

  v136 = v186[5];
  bleOOBKey = [(SEEndPoint *)self bleOOBKey];
  asHexString25 = [bleOOBKey asHexString];
  [v136 appendFormat:@"\tbleOOBKey : %@\n", asHexString25];

  v139 = v186[5];
  bleOOBMasterKey = [(SEEndPoint *)self bleOOBMasterKey];
  asHexString26 = [bleOOBMasterKey asHexString];
  [v139 appendFormat:@"\tbleOOBMasterKey : %@\n", asHexString26];

  v142 = v186[5];
  bleDCKIdentifier = [(SEEndPoint *)self bleDCKIdentifier];
  asHexString27 = [bleDCKIdentifier asHexString];
  [v142 appendFormat:@"\tbleDCKIdentifier : %@\n", asHexString27];

  v145 = v186[5];
  bleAddress = [(SEEndPoint *)self bleAddress];
  asHexString28 = [bleAddress asHexString];
  [v145 appendFormat:@"\tbleAddress : %@\n", asHexString28];

  v148 = v186[5];
  blePairingRequest = [(SEEndPoint *)self blePairingRequest];
  [v148 appendFormat:@"\tblePairingRequest : %@\n", blePairingRequest];

  v150 = v186[5];
  supportedRKEFunctions = [(SEEndPoint *)self supportedRKEFunctions];
  [v150 appendFormat:@"\tsupportedRKEFunctions : %@\n", supportedRKEFunctions];

  v152 = v186[5];
  longTermSharedSecret = [(SEEndPoint *)self longTermSharedSecret];
  [v152 appendFormat:@"\tlongTermSharedSecret length : %lu\n", objc_msgSend(longTermSharedSecret, "length")];

  v154 = v186[5];
  readerConfigID = [(SEEndPoint *)self readerConfigID];
  asHexString29 = [readerConfigID asHexString];
  [v154 appendFormat:@"\treaderConfigID : %@, \n", asHexString29];

  v157 = v186[5];
  hupData = [(SEEndPoint *)self hupData];
  asHexString30 = [hupData asHexString];
  [v157 appendFormat:@"\thupData : %@, \n", asHexString30];

  v160 = v186[5];
  hupDone = [(SEEndPoint *)self hupDone];
  [v160 appendFormat:@"\thupDone : %d, \n", objc_msgSend(hupDone, "BOOLValue")];

  v162 = v186[5];
  vehicleSupportedVersionsData = [(SEEndPoint *)self vehicleSupportedVersionsData];
  asHexString31 = [vehicleSupportedVersionsData asHexString];
  [v162 appendFormat:@"\tvehicleSupportedVersionsData : %@, \n", asHexString31];

  v165 = v186[5];
  mailboxSizesPlusAdditionalData = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
  asHexString32 = [mailboxSizesPlusAdditionalData asHexString];
  [v165 appendFormat:@"\tmailboxSizesPlusAdditionalData : %@, \n", asHexString32];

  v168 = v186[5];
  slotIdentifier = [(SEEndPoint *)self slotIdentifier];
  [v168 appendFormat:@"\tslotIdentifier length : %ld, \n", objc_msgSend(slotIdentifier, "length")];

  v170 = v186[5];
  upgradeEndpointJSONData = [(SEEndPoint *)self upgradeEndpointJSONData];
  [v170 appendFormat:@"\tupgradeEndpointJSONData length : %ld, \n", objc_msgSend(upgradeEndpointJSONData, "length")];

  v172 = v186[5];
  anonymizedDsid = [(SEEndPoint *)self anonymizedDsid];
  [v172 appendFormat:@"\tanonymizedDsid length : %ld, \n", objc_msgSend(anonymizedDsid, "length")];

  v174 = v186[5];
  _Block_object_dispose(&v185, 8);

  return v174;
}

void __25__SEEndPoint_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(*(*(a1 + 32) + 8) + 40);
  v5 = [a2 asHexString];
  [v4 appendFormat:@"\t%lu : %@, \n", a3, v5];
}

- (id)dumpState
{
  v3 = objc_opt_new();
  identifier = [(SEEndPoint *)self identifier];

  if (identifier)
  {
    identifier2 = [(SEEndPoint *)self identifier];
    [v3 setObject:identifier2 forKeyedSubscript:@"identifier"];
  }

  appletIdentifier = [(SEEndPoint *)self appletIdentifier];

  if (appletIdentifier)
  {
    appletIdentifier2 = [(SEEndPoint *)self appletIdentifier];
    asHexString = [appletIdentifier2 asHexString];
    [v3 setObject:asHexString forKeyedSubscript:@"appletIdentifier"];
  }

  subjectIdentifier = [(SEEndPoint *)self subjectIdentifier];

  if (subjectIdentifier)
  {
    subjectIdentifier2 = [(SEEndPoint *)self subjectIdentifier];
    [v3 setObject:subjectIdentifier2 forKeyedSubscript:@"subjectIdentifier"];
  }

  issuerIdentifier = [(SEEndPoint *)self issuerIdentifier];

  if (issuerIdentifier)
  {
    issuerIdentifier2 = [(SEEndPoint *)self issuerIdentifier];
    [v3 setObject:issuerIdentifier2 forKeyedSubscript:@"issuerIdentifier"];
  }

  publicKey = [(SEEndPoint *)self publicKey];

  if (publicKey)
  {
    publicKey2 = [(SEEndPoint *)self publicKey];
    asHexString2 = [publicKey2 asHexString];
    [v3 setObject:asHexString2 forKeyedSubscript:@"publicKey"];
  }

  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];

  if (publicKeyIdentifier)
  {
    publicKeyIdentifier2 = [(SEEndPoint *)self publicKeyIdentifier];
    asHexString3 = [publicKeyIdentifier2 asHexString];
    [v3 setObject:asHexString3 forKeyedSubscript:@"publicKeyIdentifier"];
  }

  readerIdentifier = [(SEEndPoint *)self readerIdentifier];

  if (readerIdentifier)
  {
    readerIdentifier2 = [(SEEndPoint *)self readerIdentifier];
    asHexString4 = [readerIdentifier2 asHexString];
    [v3 setObject:asHexString4 forKeyedSubscript:@"readerIdentifier"];
  }

  readerPublicKey = [(SEEndPoint *)self readerPublicKey];

  if (readerPublicKey)
  {
    readerPublicKey2 = [(SEEndPoint *)self readerPublicKey];
    asHexString5 = [readerPublicKey2 asHexString];
    [v3 setObject:asHexString5 forKeyedSubscript:@"readerPublicKey"];
  }

  readerInfo = [(SEEndPoint *)self readerInfo];

  if (readerInfo)
  {
    readerInfo2 = [(SEEndPoint *)self readerInfo];
    [v3 setObject:readerInfo2 forKeyedSubscript:@"readerInfo"];
  }

  v27 = objc_opt_new();
  authorizedKeys = [(SEEndPoint *)self authorizedKeys];
  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __23__SEEndPoint_dumpState__block_invoke;
  v85[3] = &unk_1E82D0FC8;
  v29 = v27;
  v86 = v29;
  [authorizedKeys enumerateObjectsUsingBlock:v85];

  [v3 setObject:v29 forKeyedSubscript:@"authorizedKeys"];
  friendlyName = [(SEEndPoint *)self friendlyName];

  if (friendlyName)
  {
    friendlyName2 = [(SEEndPoint *)self friendlyName];
    [v3 setObject:friendlyName2 forKeyedSubscript:@"friendlyName"];
  }

  invitationIdentifier = [(SEEndPoint *)self invitationIdentifier];

  if (invitationIdentifier)
  {
    invitationIdentifier2 = [(SEEndPoint *)self invitationIdentifier];
    [v3 setObject:invitationIdentifier2 forKeyedSubscript:@"invitationIdentifier"];
  }

  sharingSessionUUID = [(SEEndPoint *)self sharingSessionUUID];

  if (sharingSessionUUID)
  {
    sharingSessionUUID2 = [(SEEndPoint *)self sharingSessionUUID];
    [v3 setObject:sharingSessionUUID2 forKeyedSubscript:@"sharingSessionUUID"];
  }

  ownerIDSIdentifier = [(SEEndPoint *)self ownerIDSIdentifier];

  if (ownerIDSIdentifier)
  {
    ownerIDSIdentifier2 = [(SEEndPoint *)self ownerIDSIdentifier];
    [v3 setObject:ownerIDSIdentifier2 forKeyedSubscript:@"ownerIDSIdentifier"];
  }

  trackingRequest = [(SEEndPoint *)self trackingRequest];

  if (trackingRequest)
  {
    trackingRequest2 = [(SEEndPoint *)self trackingRequest];
    asHexString6 = [trackingRequest2 asHexString];
    [v3 setObject:asHexString6 forKeyedSubscript:@"trackingRequest"];
  }

  trackingReceipt = [(SEEndPoint *)self trackingReceipt];

  if (trackingReceipt)
  {
    trackingReceipt2 = [(SEEndPoint *)self trackingReceipt];
    asHexString7 = [trackingReceipt2 asHexString];
    [v3 setObject:asHexString7 forKeyedSubscript:@"trackingReceipt"];
  }

  privacyPublicKey = [(SEEndPoint *)self privacyPublicKey];

  if (privacyPublicKey)
  {
    privacyPublicKey2 = [(SEEndPoint *)self privacyPublicKey];
    asHexString8 = [privacyPublicKey2 asHexString];
    [v3 setObject:asHexString8 forKeyedSubscript:@"privacyPublicKey"];
  }

  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];

  if (privacyKeyIdentifier)
  {
    privacyKeyIdentifier2 = [(SEEndPoint *)self privacyKeyIdentifier];
    [v3 setObject:privacyKeyIdentifier2 forKeyedSubscript:@"privacyKeyIdentifier"];
  }

  sharingTokenAvailabilityBitmap = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];

  if (sharingTokenAvailabilityBitmap)
  {
    sharingTokenAvailabilityBitmap2 = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
    [v3 setObject:sharingTokenAvailabilityBitmap2 forKeyedSubscript:@"sharingTokenAvailabilityBitmap"];
  }

  bleUUID = [(SEEndPoint *)self bleUUID];

  if (bleUUID)
  {
    bleUUID2 = [(SEEndPoint *)self bleUUID];
    [v3 setObject:bleUUID2 forKeyedSubscript:@"bleUUID"];
  }

  readerConfigID = [(SEEndPoint *)self readerConfigID];

  if (readerConfigID)
  {
    readerConfigID2 = [(SEEndPoint *)self readerConfigID];
    asHexString9 = [readerConfigID2 asHexString];
    [v3 setObject:asHexString9 forKeyedSubscript:@"readerConfigID"];
  }

  hupData = [(SEEndPoint *)self hupData];

  if (hupData)
  {
    hupData2 = [(SEEndPoint *)self hupData];
    asHexString10 = [hupData2 asHexString];
    [v3 setObject:asHexString10 forKeyedSubscript:@"hupData"];
  }

  hupDone = [(SEEndPoint *)self hupDone];

  if (hupDone)
  {
    hupDone2 = [(SEEndPoint *)self hupDone];
    [v3 setObject:hupDone2 forKeyedSubscript:@"hupDone"];
  }

  vehicleSupportedVersionsData = [(SEEndPoint *)self vehicleSupportedVersionsData];

  if (vehicleSupportedVersionsData)
  {
    vehicleSupportedVersionsData2 = [(SEEndPoint *)self vehicleSupportedVersionsData];
    asHexString11 = [vehicleSupportedVersionsData2 asHexString];
    [v3 setObject:asHexString11 forKeyedSubscript:@"vehicleSupportedVersionsData"];
  }

  mailboxSizesPlusAdditionalData = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];

  if (mailboxSizesPlusAdditionalData)
  {
    mailboxSizesPlusAdditionalData2 = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
    asHexString12 = [mailboxSizesPlusAdditionalData2 asHexString];
    [v3 setObject:asHexString12 forKeyedSubscript:@"mailboxSizesPlusAdditionalData"];
  }

  sharingRecords = [(SEEndPoint *)self sharingRecords];
  v83[0] = MEMORY[0x1E69E9820];
  v83[1] = 3221225472;
  v83[2] = __23__SEEndPoint_dumpState__block_invoke_2;
  v83[3] = &unk_1E82D0FC8;
  v68 = v3;
  v84 = v68;
  [sharingRecords enumerateObjectsUsingBlock:v83];

  v69 = MEMORY[0x1E696AEC0];
  configuration = [(SEEndPoint *)self configuration];
  opt1 = [configuration opt1];
  configuration2 = [(SEEndPoint *)self configuration];
  opt2 = [configuration2 opt2];
  configuration3 = [(SEEndPoint *)self configuration];
  v75 = [v69 stringWithFormat:@"Opt1 0x%X Opt2 0x%X OptA 0x%X", opt1, opt2, objc_msgSend(configuration3, "optA")];
  [v68 setObject:v75 forKeyedSubscript:@"configuration"];

  revocationAttestation = [(SEEndPoint *)self revocationAttestation];
  if (revocationAttestation)
  {
    v77 = @"REVOKED";
  }

  else
  {
    v77 = @"ACTIVE";
  }

  [v68 setObject:v77 forKeyedSubscript:@"lifecycle"];

  terminatedByTaskID = [(SEEndPoint *)self terminatedByTaskID];

  if (terminatedByTaskID)
  {
    terminatedByTaskID2 = [(SEEndPoint *)self terminatedByTaskID];
    [v68 setObject:terminatedByTaskID2 forKeyedSubscript:@"terminatedByTaskID"];
  }

  v80 = v84;
  v81 = v68;

  return v68;
}

void __23__SEEndPoint_dumpState__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 asHexString];
  [v2 addObject:v3];
}

void __23__SEEndPoint_dumpState__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [a2 asHexString];
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"sharingrecord-%u", a3];
  [v5 setObject:v7 forKeyedSubscript:v6];
}

+ (id)decodeWithData:(id)data error:(id *)error
{
  v5 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v7 = [v5 unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:error];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[SEEndPoint endPointType](self forKey:{"endPointType"), @"endPointType"}];
  identifier = [(SEEndPoint *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  sharingRecords = [(SEEndPoint *)self sharingRecords];
  [coderCopy encodeObject:sharingRecords forKey:@"sharingRecords"];

  issuerIdentifier = [(SEEndPoint *)self issuerIdentifier];
  [coderCopy encodeObject:issuerIdentifier forKey:@"issuerIdentifier"];

  subjectIdentifier = [(SEEndPoint *)self subjectIdentifier];
  [coderCopy encodeObject:subjectIdentifier forKey:@"subjectIdentifier"];

  publicKey = [(SEEndPoint *)self publicKey];
  [coderCopy encodeObject:publicKey forKey:@"publicKey"];

  publicKeyIdentifier = [(SEEndPoint *)self publicKeyIdentifier];
  [coderCopy encodeObject:publicKeyIdentifier forKey:@"publicKeyIdentifier"];

  privacyPublicKey = [(SEEndPoint *)self privacyPublicKey];
  [coderCopy encodeObject:privacyPublicKey forKey:@"privacyPublicKey"];

  privacyPublicKeyIdentifier = [(SEEndPoint *)self privacyPublicKeyIdentifier];
  [coderCopy encodeObject:privacyPublicKeyIdentifier forKey:@"privacyPublicKeyIdentifier"];

  configuration = [(SEEndPoint *)self configuration];
  [coderCopy encodeObject:configuration forKey:@"configuration"];

  readerIdentifier = [(SEEndPoint *)self readerIdentifier];
  [coderCopy encodeObject:readerIdentifier forKey:@"readerIdentifier"];

  readerPublicKey = [(SEEndPoint *)self readerPublicKey];
  [coderCopy encodeObject:readerPublicKey forKey:@"readerPublicKey"];

  keyIdentifier = [(SEEndPoint *)self keyIdentifier];
  [coderCopy encodeObject:keyIdentifier forKey:@"keyIdentifier"];

  invitationIdentifier = [(SEEndPoint *)self invitationIdentifier];
  [coderCopy encodeObject:invitationIdentifier forKey:@"invitationIdentifier"];

  certificates = [(SEEndPoint *)self certificates];
  [coderCopy encodeObject:certificates forKey:@"certificates"];

  shareInitiatorCertificateChainData = [(SEEndPoint *)self shareInitiatorCertificateChainData];
  [coderCopy encodeObject:shareInitiatorCertificateChainData forKey:@"shareInitiatorCertificateChainData"];

  revocationAttestation = [(SEEndPoint *)self revocationAttestation];
  [coderCopy encodeObject:revocationAttestation forKey:@"revocationAttestation"];

  authorizedKeys = [(SEEndPoint *)self authorizedKeys];
  [coderCopy encodeObject:authorizedKeys forKey:@"authorizedKeys"];

  confidentialMailBoxSize = [(SEEndPoint *)self confidentialMailBoxSize];
  [coderCopy encodeObject:confidentialMailBoxSize forKey:@"confidentialMailBoxSize"];

  privateMailBoxSize = [(SEEndPoint *)self privateMailBoxSize];
  [coderCopy encodeObject:privateMailBoxSize forKey:@"privateMailBoxSize"];

  counter = [(SEEndPoint *)self counter];
  [coderCopy encodeObject:counter forKey:@"counter"];

  privacyKeyIdentifier = [(SEEndPoint *)self privacyKeyIdentifier];
  [coderCopy encodeObject:privacyKeyIdentifier forKey:@"privacyKeyIdentifier"];

  friendlyName = [(SEEndPoint *)self friendlyName];
  [coderCopy encodeObject:friendlyName forKey:@"friendlyName"];

  keyRole = [(SEEndPoint *)self keyRole];
  [coderCopy encodeObject:keyRole forKey:@"keyRole"];

  readerInfo = [(SEEndPoint *)self readerInfo];
  [coderCopy encodeObject:readerInfo forKey:@"readerInfo"];

  mailboxMapping = [(SEEndPoint *)self mailboxMapping];
  [coderCopy encodeObject:mailboxMapping forKey:@"mailboxMapping"];

  trackingRequest = [(SEEndPoint *)self trackingRequest];
  [coderCopy encodeObject:trackingRequest forKey:@"trackingRequest"];

  trackingReceipt = [(SEEndPoint *)self trackingReceipt];
  [coderCopy encodeObject:trackingReceipt forKey:@"trackingReceipt"];

  deviceConfiguration = [(SEEndPoint *)self deviceConfiguration];
  [coderCopy encodeObject:deviceConfiguration forKey:@"deviceConfiguration"];

  sharingAttestationData = [(SEEndPoint *)self sharingAttestationData];
  [coderCopy encodeObject:sharingAttestationData forKey:@"sharingAttestationData"];

  ownerEphemeralKey = [(SEEndPoint *)self ownerEphemeralKey];
  [coderCopy encodeObject:ownerEphemeralKey forKey:@"ownerEphemeralKey"];

  sharingEncryptedData = [(SEEndPoint *)self sharingEncryptedData];
  [coderCopy encodeObject:sharingEncryptedData forKey:@"sharingEncryptedData"];

  additionalAttestationsDict = [(SEEndPoint *)self additionalAttestationsDict];
  [coderCopy encodeObject:additionalAttestationsDict forKey:@"additionalAttestationsDict"];

  environment = [(SEEndPoint *)self environment];
  [coderCopy encodeObject:environment forKey:@"environment"];

  sharingTokenAvailabilityBitmap = [(SEEndPoint *)self sharingTokenAvailabilityBitmap];
  [coderCopy encodeObject:sharingTokenAvailabilityBitmap forKey:@"sharingTokenAvailabilityBitmap"];

  bleUUID = [(SEEndPoint *)self bleUUID];
  [coderCopy encodeObject:bleUUID forKey:@"bleUUID"];

  readerLongTermPublicKeyCertificate = [(SEEndPoint *)self readerLongTermPublicKeyCertificate];
  [coderCopy encodeObject:readerLongTermPublicKeyCertificate forKey:@"readerLongTermPublicKeyCertificate"];

  carOEMProprietaryData = [(SEEndPoint *)self carOEMProprietaryData];
  [coderCopy encodeObject:carOEMProprietaryData forKey:@"carOEMProprietaryData"];

  bleIntroKey = [(SEEndPoint *)self bleIntroKey];
  [coderCopy encodeObject:bleIntroKey forKey:@"bleIntroKey"];

  bleOOBKey = [(SEEndPoint *)self bleOOBKey];
  [coderCopy encodeObject:bleOOBKey forKey:@"bleOOBKey"];

  bleOOBMasterKey = [(SEEndPoint *)self bleOOBMasterKey];
  [coderCopy encodeObject:bleOOBMasterKey forKey:@"bleOOBMasterKey"];

  bleDCKIdentifier = [(SEEndPoint *)self bleDCKIdentifier];
  [coderCopy encodeObject:bleDCKIdentifier forKey:@"bleDCKIdentifier"];

  bleAddress = [(SEEndPoint *)self bleAddress];
  [coderCopy encodeObject:bleAddress forKey:@"bleAddress"];

  blePairingRequest = [(SEEndPoint *)self blePairingRequest];
  [coderCopy encodeObject:blePairingRequest forKey:@"blePairingRequest"];

  supportedRKEFunctions = [(SEEndPoint *)self supportedRKEFunctions];
  [coderCopy encodeObject:supportedRKEFunctions forKey:@"supportedRKEFunctions"];

  appletIdentifier = [(SEEndPoint *)self appletIdentifier];
  [coderCopy encodeObject:appletIdentifier forKey:@"appletIdentifier"];

  terminatedByTaskID = [(SEEndPoint *)self terminatedByTaskID];
  [coderCopy encodeObject:terminatedByTaskID forKey:@"terminatedByTaskID"];

  longTermSharedSecret = [(SEEndPoint *)self longTermSharedSecret];
  [coderCopy encodeObject:longTermSharedSecret forKey:@"longTermSharedSecret"];

  ownerIDSIdentifier = [(SEEndPoint *)self ownerIDSIdentifier];
  [coderCopy encodeObject:ownerIDSIdentifier forKey:@"ownerIDSIdentifier"];

  sharingSessionUUID = [(SEEndPoint *)self sharingSessionUUID];
  [coderCopy encodeObject:sharingSessionUUID forKey:@"sharingSessionUUID"];

  readerConfigID = [(SEEndPoint *)self readerConfigID];
  [coderCopy encodeObject:readerConfigID forKey:@"readerConfigID"];

  hupData = [(SEEndPoint *)self hupData];
  [coderCopy encodeObject:hupData forKey:@"hupData"];

  hupDone = [(SEEndPoint *)self hupDone];
  [coderCopy encodeObject:hupDone forKey:@"hupDone"];

  vehicleSupportedVersionsData = [(SEEndPoint *)self vehicleSupportedVersionsData];
  [coderCopy encodeObject:vehicleSupportedVersionsData forKey:@"vehicleSupportedVersionsData"];

  mailboxSizesPlusAdditionalData = [(SEEndPoint *)self mailboxSizesPlusAdditionalData];
  [coderCopy encodeObject:mailboxSizesPlusAdditionalData forKey:@"mailboxSizesPlusAdditionalData"];

  slotIdentifier = [(SEEndPoint *)self slotIdentifier];
  [coderCopy encodeObject:slotIdentifier forKey:@"slotIdentifier"];

  homeUUIDString = [(SEEndPoint *)self homeUUIDString];
  [coderCopy encodeObject:homeUUIDString forKey:@"homeUUIDString"];

  upgradeEndpointJSONData = [(SEEndPoint *)self upgradeEndpointJSONData];
  [coderCopy encodeObject:upgradeEndpointJSONData forKey:@"upgradeEndpointJSONData"];

  anonymizedDsid = [(SEEndPoint *)self anonymizedDsid];
  [coderCopy encodeObject:anonymizedDsid forKey:@"anonymizedDsid"];
}

- (SEEndPoint)initWithCoder:(id)coder
{
  v139 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [v5 setWithObjects:{v6, v7, objc_opt_class(), 0}];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = [v9 setWithObjects:{v10, v11, objc_opt_class(), 0}];
  v136.receiver = self;
  v136.super_class = SEEndPoint;
  v13 = [(SEEndPoint *)&v136 init];
  if (v13)
  {
    v13->_endPointType = [coderCopy decodeIntForKey:@"endPointType"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v13->_identifier;
    v13->_identifier = v14;

    v16 = [coderCopy decodeObjectOfClasses:v8 forKey:@"sharingRecords"];
    sharingRecords = v13->_sharingRecords;
    v13->_sharingRecords = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"issuerIdentifier"];
    issuerIdentifier = v13->_issuerIdentifier;
    v13->_issuerIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subjectIdentifier"];
    subjectIdentifier = v13->_subjectIdentifier;
    v13->_subjectIdentifier = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKey"];
    publicKey = v13->_publicKey;
    v13->_publicKey = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"publicKeyIdentifier"];
    publicKeyIdentifier = v13->_publicKeyIdentifier;
    v13->_publicKeyIdentifier = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPublicKey"];
    privacyPublicKey = v13->_privacyPublicKey;
    v13->_privacyPublicKey = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyPublicKeyIdentifier"];
    privacyPublicKeyIdentifier = v13->_privacyPublicKeyIdentifier;
    v13->_privacyPublicKeyIdentifier = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"configuration"];
    configuration = v13->_configuration;
    v13->_configuration = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerIdentifier"];
    readerIdentifier = v13->_readerIdentifier;
    v13->_readerIdentifier = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerPublicKey"];
    readerPublicKey = v13->_readerPublicKey;
    v13->_readerPublicKey = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyIdentifier"];
    keyIdentifier = v13->_keyIdentifier;
    v13->_keyIdentifier = v36;

    v38 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationIdentifier"];
    invitationIdentifier = v13->_invitationIdentifier;
    v13->_invitationIdentifier = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareInitiatorCertificateChainData"];
    shareInitiatorCertificateChainData = v13->_shareInitiatorCertificateChainData;
    v13->_shareInitiatorCertificateChainData = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyKeyIdentifier"];
    privacyKeyIdentifier = v13->_privacyKeyIdentifier;
    v13->_privacyKeyIdentifier = v42;

    v44 = [coderCopy decodeObjectOfClasses:v8 forKey:@"certificates"];
    certificates = v13->_certificates;
    v13->_certificates = v44;

    v46 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"revocationAttestation"];
    revocationAttestation = v13->_revocationAttestation;
    v13->_revocationAttestation = v46;

    v48 = [coderCopy decodeObjectOfClasses:v8 forKey:@"authorizedKeys"];
    authorizedKeys = v13->_authorizedKeys;
    v13->_authorizedKeys = v48;

    v50 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confidentialMailBoxSize"];
    confidentialMailBoxSize = v13->_confidentialMailBoxSize;
    v13->_confidentialMailBoxSize = v50;

    v52 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privateMailBoxSize"];
    privateMailBoxSize = v13->_privateMailBoxSize;
    v13->_privateMailBoxSize = v52;

    v54 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"counter"];
    counter = v13->_counter;
    v13->_counter = v54;

    v56 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"friendlyName"];
    friendlyName = v13->_friendlyName;
    v13->_friendlyName = v56;

    v58 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"keyRole"];
    keyRole = v13->_keyRole;
    v13->_keyRole = v58;

    v60 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerInfo"];
    readerInfo = v13->_readerInfo;
    v13->_readerInfo = v60;

    v62 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mailboxMapping"];
    mailboxMapping = v13->_mailboxMapping;
    v13->_mailboxMapping = v62;

    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingRequest"];
    trackingRequest = v13->_trackingRequest;
    v13->_trackingRequest = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"trackingReceipt"];
    trackingReceipt = v13->_trackingReceipt;
    v13->_trackingReceipt = v66;

    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"deviceConfiguration"];
    deviceConfiguration = v13->_deviceConfiguration;
    v13->_deviceConfiguration = v68;

    v70 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingAttestationData"];
    sharingAttestationData = v13->_sharingAttestationData;
    v13->_sharingAttestationData = v70;

    v72 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerEphemeralKey"];
    ownerEphemeralKey = v13->_ownerEphemeralKey;
    v13->_ownerEphemeralKey = v72;

    v74 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingEncryptedData"];
    sharingEncryptedData = v13->_sharingEncryptedData;
    v13->_sharingEncryptedData = v74;

    v76 = [coderCopy decodeObjectOfClasses:v12 forKey:@"additionalAttestationsDict"];
    additionalAttestationsDict = v13->_additionalAttestationsDict;
    v13->_additionalAttestationsDict = v76;

    v78 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"environment"];
    environment = v13->_environment;
    v13->_environment = v78;

    v80 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingTokenAvailabilityBitmap"];
    sharingTokenAvailabilityBitmap = v13->_sharingTokenAvailabilityBitmap;
    v13->_sharingTokenAvailabilityBitmap = v80;

    v82 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleUUID"];
    bleUUID = v13->_bleUUID;
    v13->_bleUUID = v82;

    v84 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerLongTermPublicKeyCertificate"];
    readerLongTermPublicKeyCertificate = v13->_readerLongTermPublicKeyCertificate;
    v13->_readerLongTermPublicKeyCertificate = v84;

    v86 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carOEMProprietaryData"];
    carOEMProprietaryData = v13->_carOEMProprietaryData;
    v13->_carOEMProprietaryData = v86;

    v88 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleIntroKey"];
    bleIntroKey = v13->_bleIntroKey;
    v13->_bleIntroKey = v88;

    v90 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleOOBKey"];
    bleOOBKey = v13->_bleOOBKey;
    v13->_bleOOBKey = v90;

    v92 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleOOBMasterKey"];
    bleOOBMasterKey = v13->_bleOOBMasterKey;
    v13->_bleOOBMasterKey = v92;

    v94 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleDCKIdentifier"];
    bleDCKIdentifier = v13->_bleDCKIdentifier;
    v13->_bleDCKIdentifier = v94;

    v96 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bleAddress"];
    bleAddress = v13->_bleAddress;
    v13->_bleAddress = v96;

    v98 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"blePairingRequest"];
    blePairingRequest = v13->_blePairingRequest;
    v13->_blePairingRequest = v98;

    v100 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"longTermSharedSecret"];
    longTermSharedSecret = v13->_longTermSharedSecret;
    v13->_longTermSharedSecret = v100;

    v102 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerIDSIdentifier"];
    ownerIDSIdentifier = v13->_ownerIDSIdentifier;
    v13->_ownerIDSIdentifier = v102;

    v104 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingSessionUUID"];
    sharingSessionUUID = v13->_sharingSessionUUID;
    v13->_sharingSessionUUID = v104;

    v106 = [coderCopy decodeObjectOfClasses:v8 forKey:@"supportedRKEFunctions"];
    supportedRKEFunctions = v13->_supportedRKEFunctions;
    v13->_supportedRKEFunctions = v106;

    v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appletIdentifier"];
    appletIdentifier = v13->_appletIdentifier;
    v13->_appletIdentifier = v108;

    v110 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"terminatedByTaskID"];
    terminatedByTaskID = v13->_terminatedByTaskID;
    v13->_terminatedByTaskID = v110;

    v112 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"readerConfigID"];
    readerConfigID = v13->_readerConfigID;
    v13->_readerConfigID = v112;

    v114 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hupData"];
    hupData = v13->_hupData;
    v13->_hupData = v114;

    v116 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hupDone"];
    hupDone = v13->_hupDone;
    v13->_hupDone = v116;

    v118 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"vehicleSupportedVersionsData"];
    vehicleSupportedVersionsData = v13->_vehicleSupportedVersionsData;
    v13->_vehicleSupportedVersionsData = v118;

    v120 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mailboxSizesPlusAdditionalData"];
    mailboxSizesPlusAdditionalData = v13->_mailboxSizesPlusAdditionalData;
    v13->_mailboxSizesPlusAdditionalData = v120;

    v122 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"slotIdentifier"];
    slotIdentifier = v13->_slotIdentifier;
    v13->_slotIdentifier = v122;

    v124 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeUUIDString"];
    homeUUIDString = v13->_homeUUIDString;
    v13->_homeUUIDString = v124;

    v126 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"upgradeEndpointJSONData"];
    upgradeEndpointJSONData = v13->_upgradeEndpointJSONData;
    v13->_upgradeEndpointJSONData = v126;

    v128 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"anonymizedDsid"];
    anonymizedDsid = v13->_anonymizedDsid;
    v13->_anonymizedDsid = v128;

    if (!v13->_endPointType)
    {
      v130 = SESDefaultLogObject();
      if (os_log_type_enabled(v130, OS_LOG_TYPE_INFO))
      {
        asHexString = [(NSData *)v13->_publicKeyIdentifier asHexString];
        *buf = 138412290;
        v138 = asHexString;
        _os_log_impl(&dword_1C7B9A000, v130, OS_LOG_TYPE_INFO, "Loading from pre15.X, inferring SEEndPointTypeAlisha with PKI %@", buf, 0xCu);
      }

      v13->_endPointType = 1;
    }

    if (!v13->_appletIdentifier)
    {
      v132 = SESDefaultLogObject();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1C7B9A000, v132, OS_LOG_TYPE_INFO, "Loading from pre15.X, inferring appletIdentifier as CCC AID", buf, 2u);
      }

      hexStringAsData = [@"A000000809434343444B417631" hexStringAsData];
      v134 = v13->_appletIdentifier;
      v13->_appletIdentifier = hexStringAsData;
    }
  }

  return v13;
}

@end