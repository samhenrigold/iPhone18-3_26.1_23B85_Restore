@interface WFShortcutSigningContext
+ (id)contextWithAppleIDAccount:(id)account signingKey:(__SecKey *)key;
+ (id)contextWithAuthData:(id)data;
+ (id)contextWithSigningCertificateChain:(id)chain;
- (BOOL)validateAppleIDCertificatesWithError:(id *)error;
- (BOOL)validateSigningCertificateChainWithICloudIdentifier:(id *)identifier error:(id *)error;
- (BOOL)validateWithSigningMethod:(int64_t *)method iCloudIdentifier:(id *)identifier error:(id *)error;
- (WFShortcutSigningContext)initWithAppleIDValidationRecord:(id)record appleIDCertificateChain:(id)chain signingPublicKey:(__SecKey *)key signingPublicKeyData:(id)data;
- (WFShortcutSigningContext)initWithSigningCertificateChain:(id)chain;
- (__SecKey)copyPublicKey;
- (id)generateAuthData;
- (void)dealloc;
- (void)validateAppleIDValidationRecordWithCompletion:(id)completion;
- (void)validateWithCompletion:(id)completion;
@end

@implementation WFShortcutSigningContext

- (BOOL)validateSigningCertificateChainWithICloudIdentifier:(id *)identifier error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = getWFSecurityLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
    _os_log_impl(&dword_1CA256000, v7, OS_LOG_TYPE_DEFAULT, "%s Validating Shortcut Signing Certificate Chain", buf, 0xCu);
  }

  signingCertificateChain = [(WFShortcutSigningContext *)self signingCertificateChain];
  v9 = [signingCertificateChain if_map:&__block_literal_global_239_74617];

  Revocation = SecPolicyCreateRevocation(3uLL);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __86__WFShortcutSigningContext_validateSigningCertificateChainWithICloudIdentifier_error___block_invoke_2;
  aBlock[3] = &__block_descriptor_40_e5_v8__0l;
  aBlock[4] = Revocation;
  v11 = _Block_copy(aBlock);
  trust = 0;
  v12 = SecTrustCreateWithCertificates(v9, Revocation, &trust);
  if (!v12 || !trust)
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __86__WFShortcutSigningContext_validateSigningCertificateChainWithICloudIdentifier_error___block_invoke_240;
    v25[3] = &__block_descriptor_40_e5_v8__0l;
    v25[4] = trust;
    v14 = _Block_copy(v25);
    v18 = [v9 objectAtIndexedSubscript:0];

    if (identifier)
    {
      *buf = 0;
      SecCertificateCopyCommonName(v18, buf);
      *identifier = *buf;
    }

    v24 = 0;
    if (SecTrustEvaluateWithError(trust, &v24))
    {
      if (SecCertificateCopyExtensionValue())
      {
        v19 = getWFSecurityLogObject();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
          _os_log_impl(&dword_1CA256000, v19, OS_LOG_TYPE_DEFAULT, "%s Shortcut Signing Certificate Chain Validated Successfully", buf, 0xCu);
        }

        v17 = 1;
        goto LABEL_26;
      }

      v19 = WFShortcutSigningContextSigningCertificateChainFailureError(0);
      v21 = getWFSecurityLogObject();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_1CA256000, v21, OS_LOG_TYPE_ERROR, "%s Unrecognized Shortcut Signing Certificate: %@", buf, 0x16u);
      }

      if (error)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v19 = WFShortcutSigningContextSigningCertificateChainFailureError(v24);
      v20 = getWFSecurityLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
        v29 = 2112;
        v30 = v19;
        _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_ERROR, "%s Failed to Evaluate Shortcut Signing Certificate Chain: %@", buf, 0x16u);
      }

      if (error)
      {
LABEL_24:
        v22 = v19;
        v17 = 0;
        *error = v19;
LABEL_26:

        (v14[2].isa)(v14);
        goto LABEL_27;
      }
    }

    v17 = 0;
    goto LABEL_26;
  }

  v13 = WFErrorFromSecurityOSStatus(v12);
  v14 = WFShortcutSigningContextSigningCertificateChainFailureError(v13);

  if (error)
  {
    v15 = v14;
    *error = v14;
  }

  v16 = getWFSecurityLogObject();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "[WFShortcutSigningContext validateSigningCertificateChainWithICloudIdentifier:error:]";
    v29 = 2112;
    v30 = v14;
    _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_ERROR, "%s Validating Shortcut Signing Certificate Chain Failed: %@", buf, 0x16u);
  }

  v17 = 0;
LABEL_27:

  v11[2](v11);
  return v17;
}

- (void)validateAppleIDValidationRecordWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Validating AppleID Validation Record", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x1E69CDE10]);
  v7 = [v6 myAccountWithError:0];
  altDSID = [v7 altDSID];
  appleIDValidationRecord = [(WFShortcutSigningContext *)self appleIDValidationRecord];
  altDSID2 = [appleIDValidationRecord altDSID];
  isEqualToString = objc_msgSend_isEqualToString_(altDSID);

  if (isEqualToString)
  {
    v12 = getWFSecurityLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]";
      _os_log_impl(&dword_1CA256000, v12, OS_LOG_TYPE_DEFAULT, "%s Found the current user's AppleID Validation Record", buf, 0xCu);
    }

    (*(completionCopy + 2))(completionCopy, 1, 3, 0, 0);
  }

  else if (+[WFSharingSettings isPrivateSharingEnabled])
  {
    appleIDValidationRecord2 = [(WFShortcutSigningContext *)self appleIDValidationRecord];
    validatedEmailHashes = [appleIDValidationRecord2 validatedEmailHashes];
    v15 = WFCombinedHashStringFromArray(validatedEmailHashes);

    appleIDValidationRecord3 = [(WFShortcutSigningContext *)self appleIDValidationRecord];
    validatedPhoneHashes = [appleIDValidationRecord3 validatedPhoneHashes];
    v18 = WFCombinedHashStringFromArray(validatedPhoneHashes);

    v19 = objc_alloc_init(MEMORY[0x1E69CDE40]);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __74__WFShortcutSigningContext_validateAppleIDValidationRecordWithCompletion___block_invoke;
    v22[3] = &unk_1E837FBD8;
    v23 = completionCopy;
    [v19 contactIDForEmailHash:v15 phoneHash:v18 completion:v22];
  }

  else
  {
    v20 = getWFSecurityLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]";
      _os_log_impl(&dword_1CA256000, v20, OS_LOG_TYPE_DEFAULT, "%s Skipping AppleID Validation Record due to Private Sharing Disabled", buf, 0xCu);
    }

    v21 = [WFSharingSettings privateSharingDisabledErrorWithShortcutName:0];
    (*(completionCopy + 2))(completionCopy, 0, 2, 0, v21);
  }
}

void __74__WFShortcutSigningContext_validateAppleIDValidationRecordWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Found contact matching with AppleID Validation Record", &v11, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E696ABC0];
    v13[0] = *MEMORY[0x1E696A578];
    v9 = WFLocalizedString(@"This shortcut cannot be opened because it was shared by someone who is not in your contacts.");
    v13[1] = *MEMORY[0x1E696AA08];
    v14[0] = v9;
    v14[1] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v7 = [v8 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v10];

    v6 = getWFSecurityLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 136315138;
      v12 = "[WFShortcutSigningContext validateAppleIDValidationRecordWithCompletion:]_block_invoke";
      _os_log_impl(&dword_1CA256000, v6, OS_LOG_TYPE_DEFAULT, "%s Contact with matching AppleID Validation Record Couldn't be found", &v11, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)validateAppleIDCertificatesWithError:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v35 = "[WFShortcutSigningContext validateAppleIDCertificatesWithError:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Validating AppleID Certificate Chain", buf, 0xCu);
  }

  appleIDCertificateChain = [(WFShortcutSigningContext *)self appleIDCertificateChain];
  v7 = [appleIDCertificateChain if_map:&__block_literal_global_227_74650];

  v8 = v7;
  trust = 0;
  error = 0;
  if (!v8)
  {
    v14 = 0;
    errorCopy = 0;
    LODWORD(v13) = -6705;
    goto LABEL_15;
  }

  AppleIDAuthorityPolicy = SecPolicyCreateAppleIDAuthorityPolicy();
  if (AppleIDAuthorityPolicy)
  {
    v10 = SecTrustCreateWithCertificates(v8, AppleIDAuthorityPolicy, &trust);
    if (v10)
    {
      v27 = v10;
      v25 = getWFSecurityLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v35 = "WFAppleIDVerifyCertificateChain";
        v36 = 1024;
        LODWORD(v37) = v27;
        v26 = "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecTrustCreateWithCertificates failed with error %d";
        v28 = v25;
        v29 = 18;
LABEL_40:
        _os_log_impl(&dword_1CA256000, v28, OS_LOG_TYPE_ERROR, v26, buf, v29);
      }
    }

    else
    {
      if (trust)
      {
        if (SecTrustEvaluateWithError(trust, &error) || (Domain = CFErrorGetDomain(error), CFEqual(Domain, *MEMORY[0x1E696A768])) && CFErrorGetCode(error) == -67818)
        {
          errorCopy = 0;
          LODWORD(v13) = 0;
          v14 = 1;
        }

        else
        {
          errorCopy = error;
          v13 = getWFSecurityLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v35 = "WFAppleIDVerifyCertificateChain";
            v36 = 2112;
            v37 = errorCopy;
            _os_log_impl(&dword_1CA256000, v13, OS_LOG_TYPE_ERROR, "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecTrustEvaluateWithError failed with error %@", buf, 0x16u);
          }

          LODWORD(v13) = NSErrorToOSStatus();
          v14 = 0;
        }

        goto LABEL_11;
      }

      v25 = getWFSecurityLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v35 = "WFAppleIDVerifyCertificateChain";
        v26 = "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecTrustCreateWithCertificates returned NULL trust";
        goto LABEL_39;
      }
    }
  }

  else
  {
    v25 = getWFSecurityLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v35 = "WFAppleIDVerifyCertificateChain";
      v26 = "%s Signed Shortcut File Apple Account Certificate Chain Verification: SecPolicyCreateAppleIDAuthorityPolicy failed";
LABEL_39:
      v28 = v25;
      v29 = 12;
      goto LABEL_40;
    }
  }

  v14 = 0;
  errorCopy = 0;
  LODWORD(v13) = -6762;
LABEL_11:
  if (trust)
  {
    CFRelease(trust);
  }

  if (AppleIDAuthorityPolicy)
  {
    CFRelease(AppleIDAuthorityPolicy);
  }

LABEL_15:
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  if (v15)
  {
    v13 = v13;
  }

  else
  {
    v13 = 4294960596;
  }

  if (v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (v16)
  {
    v17 = getWFSecurityLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v35 = "[WFShortcutSigningContext validateAppleIDCertificatesWithError:]";
      _os_log_impl(&dword_1CA256000, v17, OS_LOG_TYPE_DEFAULT, "%s Shortcut AppleID Certificate Chain Validated Successfully", buf, 0xCu);
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v32[0] = *MEMORY[0x1E696A578];
    v19 = WFLocalizedString(@"Failed to verify Apple Account information of this shortcut");
    v33[0] = v19;
    v32[1] = *MEMORY[0x1E696AA08];
    v20 = WFErrorFromSecurityOSStatus(v13);
    v33[1] = v20;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v17 = [v18 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v21];

    v22 = getWFSecurityLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v35 = "[WFShortcutSigningContext validateAppleIDCertificatesWithError:]";
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_1CA256000, v22, OS_LOG_TYPE_ERROR, "%s Failed to Evaluate AppleID Certificate Chain: %@", buf, 0x16u);
    }

    if (error)
    {
      v23 = v17;
      *error = v17;
    }
  }

  return v16;
}

- (BOOL)validateWithSigningMethod:(int64_t *)method iCloudIdentifier:(id *)identifier error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__74659;
  v41 = __Block_byref_object_dispose__74660;
  v42 = 0;
  v9 = getWFSecurityLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = "[WFShortcutSigningContext validateWithSigningMethod:iCloudIdentifier:error:]";
    _os_log_impl(&dword_1CA256000, v9, OS_LOG_TYPE_DEFAULT, "%s Start validating Shortcut Signing Context", &buf, 0xCu);
  }

  appleIDValidationRecord = [(WFShortcutSigningContext *)self appleIDValidationRecord];

  if (appleIDValidationRecord)
  {
    v44[3] = 2;
    v11 = [(WFShortcutSigningContext *)self validateAppleIDCertificatesWithError:error];
    *(v48 + 24) = v11;
    if (v11)
    {
      appleIDValidationRecord2 = [(WFShortcutSigningContext *)self appleIDValidationRecord];

      if (appleIDValidationRecord2)
      {
        v13 = dispatch_semaphore_create(0);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v56 = 0x3032000000;
        v57 = __Block_byref_object_copy__74659;
        v58 = __Block_byref_object_dispose__74660;
        v59 = 0;
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __77__WFShortcutSigningContext_validateWithSigningMethod_iCloudIdentifier_error___block_invoke;
        v31[3] = &unk_1E837FB90;
        v33 = &v47;
        p_buf = &buf;
        v35 = &v43;
        v36 = &v37;
        v14 = v13;
        v32 = v14;
        [(WFShortcutSigningContext *)self validateAppleIDValidationRecordWithCompletion:v31];
        v15 = dispatch_time(0, 30000000000);
        v16 = dispatch_semaphore_wait(v14, v15);
        v17 = *(v48 + 24);
        if (v16)
        {
          v17 = 0;
        }

        *(v48 + 24) = v17;
        if (error && (v17 & 1) == 0)
        {
          v18 = *(*(&buf + 1) + 40);
          if (v18)
          {
            *error = v18;
          }

          else
          {
            v24 = MEMORY[0x1E696ABC0];
            v53 = *MEMORY[0x1E696A578];
            v25 = WFLocalizedString(@"Failed to verify Apple Account information of this shortcut");
            v54 = v25;
            v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
            v27 = [v24 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v26];
            *error = v27;
          }
        }

        _Block_object_dispose(&buf, 8);
      }

      else
      {
        *(v48 + 24) = 0;
        if (error)
        {
          v21 = MEMORY[0x1E696ABC0];
          v51 = *MEMORY[0x1E696A578];
          v22 = WFLocalizedString(@"This shortcut file data is corrupted");
          v52 = v22;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
          *error = [v21 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v23];
        }
      }
    }
  }

  else
  {
    v44[3] = 1;
    v19 = (v38 + 5);
    obj = v38[5];
    v20 = [(WFShortcutSigningContext *)self validateSigningCertificateChainWithICloudIdentifier:&obj error:error];
    objc_storeStrong(v19, obj);
    *(v48 + 24) = v20;
  }

  if (method)
  {
    *method = v44[3];
  }

  if (identifier)
  {
    *identifier = v38[5];
  }

  v28 = *(v48 + 24);
  _Block_object_dispose(&v37, 8);

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);
  return v28 & 1;
}

void __77__WFShortcutSigningContext_validateWithSigningMethod_iCloudIdentifier_error___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v13 = a5;
  *(*(*(a1 + 40) + 8) + 24) &= a2;
  if ((a2 & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a5);
  }

  *(*(*(a1 + 56) + 8) + 24) = a3;
  v10 = *(*(a1 + 64) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
  v12 = v9;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)validateWithCompletion:(id)completion
{
  v23 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = getWFSecurityLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[WFShortcutSigningContext validateWithCompletion:]";
    _os_log_impl(&dword_1CA256000, v5, OS_LOG_TYPE_DEFAULT, "%s Start validating Shortcut Signing Context", buf, 0xCu);
  }

  appleIDCertificateChain = [(WFShortcutSigningContext *)self appleIDCertificateChain];

  if (!appleIDCertificateChain)
  {
    v16 = 0;
    v17 = 0;
    v7 = [(WFShortcutSigningContext *)self validateSigningCertificateChainWithICloudIdentifier:&v17 error:&v16];
    v10 = v17;
    v8 = v16;
    v11 = 1;
LABEL_10:
    completionCopy[2](completionCopy, v7, v11, v10, v8);

    goto LABEL_11;
  }

  v18 = 0;
  v7 = [(WFShortcutSigningContext *)self validateAppleIDCertificatesWithError:&v18];
  v8 = v18;
  if (!v7)
  {
    v10 = 0;
    v11 = 2;
    goto LABEL_10;
  }

  appleIDValidationRecord = [(WFShortcutSigningContext *)self appleIDValidationRecord];

  if (!appleIDValidationRecord)
  {
    v12 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E696A578];
    v13 = WFLocalizedString(@"This shortcut file data is corrupted");
    v20 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [v12 errorWithDomain:@"WFWorkflowErrorDomain" code:5 userInfo:v14];

    v10 = 0;
    v7 = 0;
    v11 = 2;
    v8 = v15;
    goto LABEL_10;
  }

  [(WFShortcutSigningContext *)self validateAppleIDValidationRecordWithCompletion:completionCopy];
LABEL_11:
}

- (__SecKey)copyPublicKey
{
  signingCertificateChain = [(WFShortcutSigningContext *)self signingCertificateChain];
  v4 = [signingCertificateChain count];

  if (v4)
  {
    signingCertificateChain2 = [(WFShortcutSigningContext *)self signingCertificateChain];
    firstObject = [signingCertificateChain2 firstObject];
    copyPublicKey = [firstObject copyPublicKey];

    return copyPublicKey;
  }

  else
  {
    signingPublicKey = [(WFShortcutSigningContext *)self signingPublicKey];

    return CFRetain(signingPublicKey);
  }
}

- (void)dealloc
{
  signingPublicKey = self->_signingPublicKey;
  if (signingPublicKey)
  {
    CFRelease(signingPublicKey);
  }

  v4.receiver = self;
  v4.super_class = WFShortcutSigningContext;
  [(WFShortcutSigningContext *)&v4 dealloc];
}

- (WFShortcutSigningContext)initWithSigningCertificateChain:(id)chain
{
  chainCopy = chain;
  v10.receiver = self;
  v10.super_class = WFShortcutSigningContext;
  v5 = [(WFShortcutSigningContext *)&v10 init];
  if (v5 && [chainCopy count])
  {
    v6 = [chainCopy copy];
    signingCertificateChain = v5->_signingCertificateChain;
    v5->_signingCertificateChain = v6;

    v8 = v5;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (WFShortcutSigningContext)initWithAppleIDValidationRecord:(id)record appleIDCertificateChain:(id)chain signingPublicKey:(__SecKey *)key signingPublicKeyData:(id)data
{
  recordCopy = record;
  chainCopy = chain;
  dataCopy = data;
  v22.receiver = self;
  v22.super_class = WFShortcutSigningContext;
  v14 = [(WFShortcutSigningContext *)&v22 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_appleIDValidationRecord, record);
    v16 = [chainCopy copy];
    appleIDCertificateChain = v15->_appleIDCertificateChain;
    v15->_appleIDCertificateChain = v16;

    v15->_signingPublicKey = CFRetain(key);
    v18 = [dataCopy copy];
    signingPublicKeySignature = v15->_signingPublicKeySignature;
    v15->_signingPublicKeySignature = v18;

    v20 = v15;
  }

  return v15;
}

- (id)generateAuthData
{
  v28[1] = *MEMORY[0x1E69E9840];
  signingCertificateChain = [(WFShortcutSigningContext *)self signingCertificateChain];
  v4 = [signingCertificateChain count];

  if (!v4)
  {
    appleIDValidationRecord = [(WFShortcutSigningContext *)self appleIDValidationRecord];

    if (!appleIDValidationRecord)
    {
      v12 = 0;
      goto LABEL_10;
    }

    appleIDCertificateChain = [(WFShortcutSigningContext *)self appleIDCertificateChain];
    v6 = [appleIDCertificateChain if_compactMap:&__block_literal_global_178_74676];

    v15 = [v6 count];
    appleIDCertificateChain2 = [(WFShortcutSigningContext *)self appleIDCertificateChain];
    v17 = [appleIDCertificateChain2 count];

    if (v15 == v17)
    {
      v11 = SecKeyCopyExternalRepresentation([(WFShortcutSigningContext *)self signingPublicKey], 0);
      v18 = MEMORY[0x1E695DF90];
      v25[0] = @"AppleIDCertificateChain";
      v25[1] = @"SigningPublicKey";
      v26[0] = v6;
      v26[1] = v11;
      v25[2] = @"SigningPublicKeySignature";
      signingPublicKeySignature = [(WFShortcutSigningContext *)self signingPublicKeySignature];
      v26[2] = signingPublicKeySignature;
      v25[3] = @"AppleIDValidationRecord";
      appleIDValidationRecord2 = [(WFShortcutSigningContext *)self appleIDValidationRecord];
      data = [appleIDValidationRecord2 data];
      v26[3] = data;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:4];
      v12 = [v18 dictionaryWithDictionary:v22];

      goto LABEL_7;
    }

LABEL_8:

    v23 = 0;
    goto LABEL_11;
  }

  signingCertificateChain2 = [(WFShortcutSigningContext *)self signingCertificateChain];
  v6 = [signingCertificateChain2 if_compactMap:&__block_literal_global_74674];

  v7 = [v6 count];
  signingCertificateChain3 = [(WFShortcutSigningContext *)self signingCertificateChain];
  v9 = [signingCertificateChain3 count];

  if (v7 != v9)
  {
    goto LABEL_8;
  }

  v10 = MEMORY[0x1E695DF90];
  v27 = @"SigningCertificateChain";
  v28[0] = v6;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  v12 = [v10 dictionaryWithDictionary:v11];
LABEL_7:

LABEL_10:
  v23 = [MEMORY[0x1E696AE40] dataWithPropertyList:v12 format:200 options:0 error:0];

LABEL_11:

  return v23;
}

+ (id)contextWithSigningCertificateChain:(id)chain
{
  chainCopy = chain;
  v5 = [[self alloc] initWithSigningCertificateChain:chainCopy];

  return v5;
}

+ (id)contextWithAppleIDAccount:(id)account signingKey:(__SecKey *)key
{
  v28[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identity = [accountCopy identity];
  if (identity)
  {
    identity2 = [accountCopy identity];
    copyCertificate = [identity2 copyCertificate];

    identity3 = [accountCopy identity];
    copyIntermediateCertificate = [identity3 copyIntermediateCertificate];

    v12 = 0;
    if (copyCertificate && copyIntermediateCertificate)
    {
      v25 = [[WFShortcutSigningCertificate alloc] initWithCertificate:copyCertificate];
      v13 = [[WFShortcutSigningCertificate alloc] initWithCertificate:copyIntermediateCertificate];
      copyPrivateKey = [identity copyPrivateKey];
      if (copyPrivateKey)
      {
        v15 = copyPrivateKey;
        v16 = SecKeyCopyPublicKey(key);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __65__WFShortcutSigningContext_contextWithAppleIDAccount_signingKey___block_invoke;
        aBlock[3] = &__block_descriptor_40_e5_v8__0l;
        aBlock[4] = v16;
        v17 = _Block_copy(aBlock);
        v18 = SecKeyCopyExternalRepresentation(v16, 0);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __65__WFShortcutSigningContext_contextWithAppleIDAccount_signingKey___block_invoke_2;
        v26[3] = &__block_descriptor_40_e5_v8__0l;
        v26[4] = v18;
        v19 = _Block_copy(v26);
        Signature = SecKeyCreateSignature(v15, *MEMORY[0x1E697B1E0], v18, 0);
        v28[0] = v25;
        v28[1] = v13;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
        v22 = [self alloc];
        validationRecord = [accountCopy validationRecord];
        v12 = [v22 initWithAppleIDValidationRecord:validationRecord appleIDCertificateChain:v21 signingPublicKey:v16 signingPublicKeyData:Signature];

        v19[2](v19);
        v17[2](v17);
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

+ (id)contextWithAuthData:(id)data
{
  v73[2] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v5 = [MEMORY[0x1E696AE40] propertyListWithData:dataCopy options:0 format:0 error:0];
  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    self = 0;
    goto LABEL_22;
  }

  v6 = [v5 objectForKeyedSubscript:@"SigningCertificateChain"];
  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 if_compactMap:&__block_literal_global_183_74703];
      v8 = [v7 count];
      if (v8 == [v6 count])
      {
        self = [self contextWithSigningCertificateChain:v7];
      }

      else
      {
        self = 0;
      }

      goto LABEL_21;
    }
  }

  v9 = [v5 objectForKeyedSubscript:@"AppleIDCertificateChain"];

  if (v9)
  {
    v10 = [v5 objectForKeyedSubscript:@"AppleIDCertificateChain"];
    if (v10)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = [v10 if_compactMap:&__block_literal_global_186_74704];
        v12 = [v11 count];
        if (v12 == [v10 count])
        {
          v13 = [v5 objectForKeyedSubscript:@"SigningPublicKey"];
          if (v13)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v14 = v13;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          v16 = v14;

          v17 = [v5 objectForKeyedSubscript:@"SigningPublicKeySignature"];
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          signature = v18;

          firstObject = [v11 firstObject];
          copyPublicKey = [firstObject copyPublicKey];

          v21 = *MEMORY[0x1E697AD78];
          v22 = *MEMORY[0x1E697AD30];
          v72[0] = *MEMORY[0x1E697AD68];
          v72[1] = v22;
          v23 = *MEMORY[0x1E697AD40];
          v73[0] = v21;
          v73[1] = v23;
          v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
          v55 = SecKeyCreateWithData(v16, v24, 0);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __48__WFShortcutSigningContext_contextWithAuthData___block_invoke_3;
          aBlock[3] = &__block_descriptor_40_e5_v8__0l;
          aBlock[4] = v55;
          v25 = _Block_copy(aBlock);
          if (!SecKeyVerifySignature(copyPublicKey, *MEMORY[0x1E697B1E0], v16, signature, 0))
          {
            v36 = 0;
            self = 0;
            goto LABEL_58;
          }

          v26 = [v5 objectForKeyedSubscript:@"AppleIDValidationRecord"];

          if (!v26)
          {
            v36 = 1;
            goto LABEL_58;
          }

          v27 = [v5 objectForKeyedSubscript:@"AppleIDValidationRecord"];
          v28 = v27;
          if (v27)
          {
            v52 = v16;
            v53 = v24;
            v29 = v27;
            v65 = 0;
            v66 = &v65;
            v67 = 0x3032000000;
            v68 = __Block_byref_object_copy__74659;
            v69 = __Block_byref_object_dispose__74660;
            v70 = 0;
            v61 = 0;
            v62 = &v61;
            v63 = 0x2020000000;
            v64 = 1;
            v49 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
            v30 = dispatch_queue_create("SFAppleIDQueue", v49);
            v31 = dispatch_semaphore_create(0);
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = __48__WFShortcutSigningContext_contextWithAuthData___block_invoke_190;
            v57[3] = &unk_1E837FB60;
            v59 = &v65;
            v60 = &v61;
            v32 = v31;
            v58 = v32;
            v48 = v29;
            v50 = v30;
            WFAppleIDParseValidationRecordData(v29, v30, v57);
            v33 = dispatch_time(0, 30000000000);
            v51 = v32;
            v34 = dispatch_semaphore_wait(v32, v33);
            v35 = 0;
            v54 = 0;
            v16 = v52;
            v24 = v53;
            if (v66[5] && !v34)
            {
              if (*(v62 + 6))
              {
                v54 = 0;
                v35 = 0;
              }

              else
              {
                v37 = objc_alloc(MEMORY[0x1E69CDE18]);
                v54 = [v37 initWithDictionary:v66[5]];
                v38 = [v66[5] objectForKeyedSubscript:@"altDsID"];
                [v54 setAltDSID:v38];

                v39 = [v66[5] objectForKeyedSubscript:@"SuggestValidDuration"];
                if (v39)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v40 = v39;
                  }

                  else
                  {
                    v40 = 0;
                  }
                }

                else
                {
                  v40 = 0;
                }

                v41 = v40;

                [v54 setSuggestedValidDuration:{objc_msgSend(v41, "unsignedIntValue")}];
                v42 = [v66[5] objectForKeyedSubscript:@"ValidatedEmailHashes"];
                if ([v42 count])
                {
                  v43 = v42;
                }

                else
                {
                  v43 = 0;
                }

                [v54 setValidatedEmailHashes:v43];
                v46 = [v66[5] objectForKeyedSubscript:@"ValidatedPhoneHashes"];

                if ([v46 count])
                {
                  v44 = v46;
                }

                else
                {
                  v44 = 0;
                }

                [v54 setValidatedPhoneHashes:{v44, v46}];
                v45 = [v66[5] objectForKeyedSubscript:@"ValidAsOf"];
                [v54 setValidStartDate:v45];

                v35 = 1;
              }
            }

            _Block_object_dispose(&v61, 8);
            _Block_object_dispose(&v65, 8);

            if ((v35 & 1) == 0)
            {
              self = 0;
              v28 = v48;
              goto LABEL_57;
            }

            v28 = v48;
          }

          else
          {
            v54 = 0;
          }

          self = [[self alloc] initWithAppleIDValidationRecord:v54 appleIDCertificateChain:v11 signingPublicKey:v55 signingPublicKeyData:signature];
LABEL_57:

          v36 = 0;
LABEL_58:
          v25[2](v25);

          if ((v36 & 1) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }
      }
    }
  }

LABEL_20:
  self = 0;
LABEL_21:

LABEL_22:

  return self;
}

void __48__WFShortcutSigningContext_contextWithAuthData___block_invoke_190(uint64_t a1, void *a2, int a3)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v6 = a2;
  *(*(*(a1 + 48) + 8) + 24) = a3;
  dispatch_semaphore_signal(*(a1 + 32));
}

WFShortcutSigningCertificate *__48__WFShortcutSigningContext_contextWithAuthData___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFShortcutSigningCertificate alloc] initWithCertificateData:v2];

  return v3;
}

WFShortcutSigningCertificate *__48__WFShortcutSigningContext_contextWithAuthData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[WFShortcutSigningCertificate alloc] initWithCertificateData:v2];

  return v3;
}

@end