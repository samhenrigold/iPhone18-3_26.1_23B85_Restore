@interface PTClassicMicro
+ (BOOL)isError:(uint64_t)error;
+ (id)getACLfromAssetACL:(id)l error:(id *)error;
+ (id)getNonce:(void *)nonce error:;
+ (id)sign:(id)sign designatedKey:(id)key extAuth:(id)auth seHandle:(id)handle seid:(id)seid error:(id *)error;
+ (id)sign:(void *)sign aid:(unsigned int)aid slotNumber:(void *)number assetACL:(void *)l assetACLAttesetation:(uint64_t)attesetation operationApprovalVersion:(void *)version extAuth:(void *)auth seHandle:(void *)self0 seid:(void *)self1 error:;
+ (uint64_t)evaluateSecureElementACL:(void *)l assetACLAttesetation:(void *)attesetation extAuth:(void *)auth seid:(void *)seid operation:(void *)operation nonce:(unsigned __int8)nonce operationApprovalVersion:(void *)version outOperationApproval:(void *)self0 outOperationApprovalAttestation:(void *)self1 error:;
+ (uint64_t)select:(void *)select seHandle:(uint64_t)handle error:;
+ (void)executeCommand:(uint64_t)command itemData:(uint64_t)data spec:(void *)spec seHandle:(void *)handle error:;
@end

@implementation PTClassicMicro

+ (id)sign:(id)sign designatedKey:(id)key extAuth:(id)auth seHandle:(id)handle seid:(id)seid error:(id *)error
{
  seidCopy = seid;
  handleCopy = handle;
  authCopy = auth;
  keyCopy = key;
  signCopy = sign;
  v17 = [keyCopy aid];
  slotNumber = [keyCopy slotNumber];
  assetACL = [keyCopy assetACL];
  assetACLAttestation = [keyCopy assetACLAttestation];
  operationApprovalVersion = [keyCopy operationApprovalVersion];

  v22 = [PTClassicMicro sign:signCopy aid:v17 slotNumber:slotNumber assetACL:assetACL assetACLAttesetation:assetACLAttestation operationApprovalVersion:operationApprovalVersion extAuth:authCopy seHandle:handleCopy seid:seidCopy error:error];

  return v22;
}

+ (id)sign:(void *)sign aid:(unsigned int)aid slotNumber:(void *)number assetACL:(void *)l assetACLAttesetation:(uint64_t)attesetation operationApprovalVersion:(void *)version extAuth:(void *)auth seHandle:(void *)self0 seid:(void *)self1 error:
{
  attesetationCopy = attesetation;
  v43 = a2;
  signCopy = sign;
  numberCopy = number;
  lCopy = l;
  versionCopy = version;
  authCopy = auth;
  handleCopy = handle;
  objc_opt_self();
  v55[0] = 0;
  v20 = [PTClassicMicro select:signCopy seHandle:authCopy error:v55];
  v21 = v55[0];
  if ((v20 & 1) == 0)
  {
    if (!seid)
    {
      v28 = v43;
      goto LABEL_29;
    }

    v22 = SESDefaultLogObject();
    asHexString = [signCopy asHexString];
    *seid = SESCreateAndLogError();
    goto LABEL_15;
  }

  v54 = v21;
  v22 = [PTClassicMicro getNonce:authCopy error:&v54];
  v23 = v54;

  if (v22 && !v23)
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v24 = [PTClassicMicro evaluateSecureElementACL:numberCopy assetACLAttesetation:lCopy extAuth:versionCopy seid:handleCopy operation:@"osgn" nonce:v22 operationApprovalVersion:attesetationCopy outOperationApproval:&v53 outOperationApprovalAttestation:&v52 error:&v51];
    asHexString = v53;
    v42 = v52;
    v26 = v51;
    v21 = v26;
    if (v24 && asHexString && v42 && !v26)
    {
      v50 = 1;
      v49 = bswap32(aid) >> 16;
      hexStringAsData = [@"0001" hexStringAsData];
      v48[0] = &v50;
      v48[1] = 1;
      v48[2] = &v49;
      v48[3] = 2;
      v28 = v43;
      v48[4] = [v43 DERItem];
      v48[5] = v29;
      v48[6] = [hexStringAsData DERItem];
      v48[7] = v30;
      v48[8] = [asHexString DERItem];
      v48[9] = v31;
      v48[10] = [v42 DERItem];
      v48[11] = v32;
      v47 = 0;
      v33 = [PTClassicMicro executeCommand:v48 itemData:&PTSignInputSpec spec:authCopy seHandle:&v47 error:?];
      v34 = v47;
      v21 = v34;
      v40 = hexStringAsData;
      v41 = v33;
      if (!v33 || v34)
      {
        if (seid)
        {
          v36 = SESDefaultLogObject();
          *seid = SESCreateAndLogError();
        }
      }

      else
      {
        [v33 DERItem];
        DERParseSequenceSpec();
        if (seid)
        {
          v37 = SESDefaultLogObject();
          asHexString2 = [v41 asHexString];
          *seid = SESCreateAndLogError();

          v28 = v43;
        }
      }
    }

    else
    {
      if (seid)
      {
        v35 = SESDefaultLogObject();
        *seid = SESCreateAndLogError();
      }

      v28 = v43;
    }

    goto LABEL_27;
  }

  if (seid)
  {
    asHexString = SESDefaultLogObject();
    *seid = SESCreateAndLogError();
    v21 = v23;
LABEL_15:
    v28 = v43;
LABEL_27:

    goto LABEL_28;
  }

  v21 = v23;
  v28 = v43;
LABEL_28:

LABEL_29:

  return 0;
}

+ (uint64_t)select:(void *)select seHandle:(uint64_t)handle error:
{
  selectCopy = select;
  v7 = a2;
  objc_opt_self();
  v8 = [MEMORY[0x1E695DF88] dataWithBytes:&select_seHandle_error__selectHdr length:4];
  [v8 appendU8:{objc_msgSend(v7, "length")}];
  [v8 appendData:v7];

  v9 = [selectCopy transceive:v8 error:handle];

  LODWORD(v7) = [PTClassicMicro isError:v9];
  return v7 ^ 1;
}

+ (id)getNonce:(void *)nonce error:
{
  v4 = a2;
  objc_opt_self();
  v5 = [PTClassicMicro executeCommand:0 itemData:0 spec:v4 seHandle:nonce error:?];

  return v5;
}

+ (uint64_t)evaluateSecureElementACL:(void *)l assetACLAttesetation:(void *)attesetation extAuth:(void *)auth seid:(void *)seid operation:(void *)operation nonce:(unsigned __int8)nonce operationApprovalVersion:(void *)version outOperationApproval:(void *)self0 outOperationApprovalAttestation:(void *)self1 error:
{
  operationCopy = operation;
  seidCopy = seid;
  authCopy = auth;
  attesetationCopy = attesetation;
  lCopy = l;
  v22 = a2;
  objc_opt_self();
  v27 = 0;
  v28 = 0;
  v23 = SSEEvaluateSecureElementACL(attesetationCopy, 0xFFFFFFFFLL, authCopy, v22, lCopy, seidCopy, operationCopy, nonce, &v28, &v27);

  *version = v28;
  v24 = v27;
  *approval = v24;
  if (!v23 && *version && v24)
  {
    return 1;
  }

  if (attestation)
  {
    v25 = SESDefaultLogObject();
    *attestation = SESCreateAndLogError();
  }

  return 0;
}

+ (void)executeCommand:(uint64_t)command itemData:(uint64_t)data spec:(void *)spec seHandle:(void *)handle error:
{
  v32 = a2;
  specCopy = spec;
  objc_opt_self();
  v11 = 0;
  if (command && data && (encodeSequenceSpec(), (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    handle = 0;
  }

  else
  {
    v31 = 1;
    v32 = __rev16(a2);
    v25 = &v31;
    v26 = 1;
    v27 = &v32;
    v28 = 2;
    dERItem = [v11 DERItem];
    v30 = v12;
    v13 = encodeSequenceSpec();
    v24 = 0;
    v23 = 8429696;
    v14 = [MEMORY[0x1E695DF88] dataWithBytes:&v23 length:5];
    [v14 appendU16BE:{objc_msgSend(v13, "length")}];
    [v14 appendData:v13];
    [v14 appendU16BE:0];
    v22 = 0;
    v15 = [specCopy transceive:v14 error:&v22];
    v16 = v22;
    v17 = v16;
    if (!v15 || v16 || [PTClassicMicro isError:v15])
    {
      if (handle)
      {
        v18 = SESDefaultLogObject();
        asHexString = [v15 asHexString];
        asHexString2 = [v14 asHexString];
        *handle = SESCreateAndLogError();

        handle = 0;
      }
    }

    else
    {
      handle = [v15 subdataWithRange:{0, objc_msgSend(v15, "length") - 2}];
    }
  }

  return handle;
}

+ (BOOL)isError:(uint64_t)error
{
  v2 = a2;
  objc_opt_self();
  if ([v2 length] >= 2)
  {
    bytes = [v2 bytes];
    v3 = *([v2 length] + bytes - 2) != 144;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

+ (id)getACLfromAssetACL:(id)l error:(id *)error
{
  lCopy = l;
  memset(v9, 0, sizeof(v9));
  if (DERParseSequenceSpec())
  {
    if (error)
    {
      v6 = SESDefaultLogObject();
      base64 = [lCopy base64];
      *error = SESCreateAndLogError();

      error = 0;
    }
  }

  else
  {
    error = [MEMORY[0x1E695DEF0] dataWithDERItem:v9];
  }

  return error;
}

@end