@interface PCSShareProtectionObject
- (PCSShareProtectionObject)initWithShareProtectionRef:(_OpaquePCSShareProtection *)ref;
- (PCSShareProtectionObject)initWithSharingRequestData:(id)data identitySet:(_PCSIdentitySetData *)set error:(id *)error;
- (id)exportAcceptedSharingRequestWithError:(id *)error;
- (id)sharingRequestDataForIdentity:(_PCSPublicIdentityData *)identity owner:(void *)owner flags:(unsigned int)flags error:(id *)error;
- (void)dealloc;
@end

@implementation PCSShareProtectionObject

- (PCSShareProtectionObject)initWithShareProtectionRef:(_OpaquePCSShareProtection *)ref
{
  v6.receiver = self;
  v6.super_class = PCSShareProtectionObject;
  v4 = [(PCSShareProtectionObject *)&v6 init];
  if (v4)
  {
    if (ref)
    {
      CFRetain(ref);
    }

    v4->_shareProtection = ref;
  }

  return v4;
}

- (PCSShareProtectionObject)initWithSharingRequestData:(id)data identitySet:(_PCSIdentitySetData *)set error:(id *)error
{
  dataCopy = data;
  v25.receiver = self;
  v25.super_class = PCSShareProtectionObject;
  v9 = [(PCSShareProtectionObject *)&v25 init];
  if (v9)
  {
    v10 = v9;
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v11 = [[PCSManateeShareInvitation alloc] initWithData:dataCopy];
    v12 = v11;
    if (v11 && [(PCSManateeShareInvitation *)v11 hasExportedPCSData])
    {
      v13 = PCSIdentitySetCopyIdentities(set, 0);
      context[0] = MEMORY[0x1E69E9820];
      context[1] = 3221225472;
      context[2] = __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke;
      context[3] = &unk_1E7B18FD0;
      v14 = v10;
      v18 = v14;
      v20 = &v21;
      v19 = v12;
      CFDictionaryApplyFunction(v13, apply_block_2_1, context);
      if (v13)
      {
        CFRelease(v13);
      }

      if (!v14->_shareProtection)
      {

        v14 = 0;
      }

      v10 = v18;
    }

    else
    {
      _PCSError(v22 + 3, 139, @"Failed to deserialize PCSManateeShareInvitation");
      v14 = 0;
    }

    v15 = v22[3];
    if (error)
    {
      *error = v15;
      v22[3] = 0;
    }

    else if (v15)
    {
      v22[3] = 0;
      CFRelease(v15);
    }

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke(uint64_t result, uint64_t a2, const void *a3)
{
  if (!*(*(result + 32) + 8))
  {
    __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke_cold_1(result, a3, (result + 32));
  }
}

- (void)dealloc
{
  shareProtection = self->_shareProtection;
  if (shareProtection)
  {
    self->_shareProtection = 0;
    CFRelease(shareProtection);
  }

  identity = self->_identity;
  if (identity)
  {
    self->_identity = 0;
    CFRelease(identity);
  }

  v5.receiver = self;
  v5.super_class = PCSShareProtectionObject;
  [(PCSShareProtectionObject *)&v5 dealloc];
}

- (id)sharingRequestDataForIdentity:(_PCSPublicIdentityData *)identity owner:(void *)owner flags:(unsigned int)flags error:(id *)error
{
  v22 = 0;
  PCSFPAddPublicIdentityWithShareFlags(self->_shareProtection, identity, *&flags, owner, *&flags, error, v6, v7);
  shareProtection = self->_shareProtection;
  if (owner)
  {
    PCSFPSetOwnerIdentity(shareProtection, owner);
  }

  else if (!shareProtection->var19 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [PCSShareProtectionObject sharingRequestDataForIdentity:owner:flags:error:];
  }

  v16 = _PCSFPCopyExportedWithOptions(self->_shareProtection, 0, 1, identity, &v22, v12, v13, v14);
  v17 = v22;
  if (error)
  {
    *error = v22;
    v22 = 0;
  }

  else if (v22)
  {
    v22 = 0;
    CFRelease(v17);
  }

  if (v16)
  {
    v18 = objc_alloc_init(PCSManateeShareInvitation);
    [(PCSManateeShareInvitation *)v18 setExportedPCSData:v16];
    v19 = PCSPublicIdentityCopyPublicKey(identity);
    [(PCSManateeShareInvitation *)v18 setShareePublicKeyData:v19];

    data = [(PCSManateeShareInvitation *)v18 data];
  }

  else
  {
    data = 0;
  }

  return data;
}

- (id)exportAcceptedSharingRequestWithError:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  SigningIdentity = _PCSIdentityGetSigningIdentity(self->_identity);
  v6 = PCSIdentityCopyPublicIdentity(SigningIdentity);
  if (v6)
  {
    v10 = v6;
    v17 = 0;
    v11 = _PCSFPCopyExportedWithOptions(self->_shareProtection, 1, 1, v6, &v17, v7, v8, v9);
    v12 = v17;
    if (error)
    {
      *error = v17;
      v17 = 0;
    }

    else if (v17)
    {
      v17 = 0;
      CFRelease(v12);
    }

    CFRelease(v10);
  }

  else
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = kPCSErrorDomain;
      v18 = *MEMORY[0x1E696A578];
      v19[0] = @"missing signing identity";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = [v13 errorWithDomain:v14 code:144 userInfo:v15];
    }

    v11 = 0;
  }

  return v11;
}

void __73__PCSShareProtectionObject_initWithSharingRequestData_identitySet_error___block_invoke_cold_1(uint64_t a1, const void *a2, uint64_t *a3)
{
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 24);
  if (v7)
  {
    *(v6 + 24) = 0;
    CFRelease(v7);
  }

  v8 = [*(a1 + 40) exportedPCSData];
  v9 = *(*(a1 + 48) + 8);
  if (!a2)
  {
    _PCSError((v9 + 24), 27, @"PCSFPCreateWithExportedManateeSharingInvitation need an identity");
    goto LABEL_14;
  }

  Mutable = PCSIdentitySetCreateMutable((v9 + 24));
  if (!Mutable)
  {
LABEL_14:
    v12 = 0;
    goto LABEL_8;
  }

  v11 = Mutable;
  if (PCSIdentitySetAddIdentity(Mutable, a2))
  {
    v12 = CreateWithExportedInternal(v8, v11, 0, 0, 1u, 0, 0, (v9 + 24));
  }

  else
  {
    v12 = 0;
  }

  CFRelease(v11);
LABEL_8:
  *(*a3 + 8) = v12;

  v13 = *a3;
  if (*(*a3 + 8))
  {
    if (a2)
    {
      CFRetain(a2);
      v13 = *a3;
    }

    *(v13 + 16) = a2;
  }
}

@end