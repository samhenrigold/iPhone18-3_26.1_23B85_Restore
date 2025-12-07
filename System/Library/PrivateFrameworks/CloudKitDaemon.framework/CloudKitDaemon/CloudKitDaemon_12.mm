uint64_t sub_2252AD8D4(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0);
  }

  return result;
}

uint64_t sub_2252AD8F4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

void sub_2252AD918(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_callbackQueue(*(a1 + 32), v7, v8);
  dispatch_assert_queue_V2(v9);

  if (objc_msgSend_pcs(v5, v10, v11) && objc_msgSend_publicPCS(v5, v12, v13))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v14 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v16 = v14;
      v19 = objc_msgSend_recordID(v15, v17, v18);
      v28 = 138412290;
      v29 = v19;
      v20 = "Decrypted share PCS for share %@";
      v21 = v16;
      v22 = 12;
LABEL_11:
      _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, v20, &v28, v22);
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 40);
      v16 = v23;
      v19 = objc_msgSend_recordID(v24, v25, v26);
      v28 = 138412546;
      v29 = v19;
      v30 = 2112;
      v31 = v6;
      v20 = "Couldn't unlock the private share PCS for share %@: %@";
      v21 = v16;
      v22 = 22;
      goto LABEL_11;
    }
  }

  v27 = *(a1 + 48);
  if (v27)
  {
    (*(v27 + 16))(v27, v5, v6);
  }
}

void sub_2252AED38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252AED5C(uint64_t a1)
{
  result = PCSFPAddPublicIdentityWithShareFlags();
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_2252AF288(void *a1)
{
  result = PCSFPRemovePublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AF994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252AF9D0(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = PCSPublicIdentityCopyPublicKey();
  if (objc_msgSend_isEqualToData_(*(a1 + 32), v5, v4))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = MEMORY[0x277CBC830];
    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Removing public identity for key %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x2020000000;
    v23 = 0;
    v11 = *(a1 + 40);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2252AFC28;
    v16[3] = &unk_27854BD18;
    v12 = *(a1 + 64);
    v16[4] = &buf;
    v16[5] = v12;
    v16[6] = a2;
    objc_msgSend__onSynchronizeQueue_(v11, v9, v16);
    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        v14 = *(a1 + 32);
        v15 = *(a1 + 64);
        *v17 = 138543618;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Failed to remove public identity matching key %{public}@ from record PCS %@", v17, 0x16u);
      }

      *(*(*(a1 + 56) + 8) + 24) = 0;
    }

    _Block_object_dispose(&buf, 8);
  }
}

void sub_2252AFC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252AFC28(void *a1)
{
  result = PCSFPRemovePublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252AFEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_2252AFED0(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = PCSPublicIdentityCopyCurrentKeyFingerprint();
  if (objc_msgSend_isEqualToData_(*(a1 + 32), v5, v4))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v6 = MEMORY[0x277CBC880];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v7 = MEMORY[0x277CBC830];
    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 32);
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v10;
      _os_log_impl(&dword_22506F000, v8, OS_LOG_TYPE_INFO, "Removing public identity for keyID %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v26 = 0x2020000000;
    v27 = 0;
    v11 = *(a1 + 40);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_2252B0174;
    v20[3] = &unk_27854BD18;
    v12 = *(a1 + 64);
    v20[4] = &buf;
    v20[5] = v12;
    v20[6] = a2;
    objc_msgSend__onSynchronizeQueue_(v11, v9, v20);
    if ((*(*(&buf + 1) + 24) & 1) == 0)
    {
      if (*v6 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v13 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 32);
        v16 = *(a1 + 64);
        *v21 = 138543618;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        _os_log_impl(&dword_22506F000, v13, OS_LOG_TYPE_INFO, "Failed to remove public identity matching keyID %{public}@ from PCS %@", v21, 0x16u);
      }

      if (!*(*(*(a1 + 56) + 8) + 40))
      {
        v17 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v14, *MEMORY[0x277CBC120], 5005, @"Couldn't remove public identity with keyID %@ from PCS %@", *(a1 + 32), *(a1 + 64));
        v18 = *(*(a1 + 56) + 8);
        v19 = *(v18 + 40);
        *(v18 + 40) = v17;
      }
    }

    _Block_object_dispose(&buf, 8);
  }
}

uint64_t sub_2252B0174(void *a1)
{
  result = PCSFPRemovePublicIdentity();
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void sub_2252B0EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252B0F20(uint64_t a1, CFTypeRef cf1, int a3)
{
  result = CFEqual(cf1, *(a1 + 40));
  if (result)
  {
    if (a3 <= 3)
    {
      if (!a3)
      {
        v6 = 0;
        goto LABEL_17;
      }

      if (a3 == 2)
      {
        v6 = 2;
        goto LABEL_17;
      }
    }

    else if (a3 > 15)
    {
      if (a3 == 16)
      {
        v6 = 16;
        goto LABEL_17;
      }

      if (a3 == 32)
      {
        v6 = 32;
        goto LABEL_17;
      }
    }

    else
    {
      if (a3 == 4)
      {
        v6 = 4;
        goto LABEL_17;
      }

      if (a3 == 8)
      {
        v6 = 8;
LABEL_17:
        *(*(*(a1 + 32) + 8) + 24) = v6;
        return result;
      }
    }

    v6 = 1;
    goto LABEL_17;
  }

  return result;
}

void sub_2252B2944(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v9 = objc_msgSend_synchronizeQueue(*(a1 + 32), v7, v8);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252B2A30;
  v13[3] = &unk_2785488E0;
  v14 = v5;
  v15 = v6;
  v10 = *(a1 + 40);
  v16 = *(a1 + 32);
  v17 = v10;
  v11 = v6;
  v12 = v5;
  dispatch_async(v9, v13);
}

void sub_2252B2A30(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(a1 + 40) == 0;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    objc_msgSend_setBoundaryKeyData_(*(a1 + 48), a2, v3);
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], a2, *MEMORY[0x277CBC120], 5005);
  }

  v8 = objc_msgSend_callbackQueue(*(a1 + 48), v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2252B2B4C;
  block[3] = &unk_2785457E0;
  v13 = *(a1 + 56);
  v11 = *(a1 + 32);
  v12 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

void sub_2252B34E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, ...)
{
  va_start(va, a53);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v53 - 248), 8);
  _Block_object_dispose((v53 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2252B3544(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0);
  }

  return result;
}

void sub_2252B3564(uint64_t a1, char a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Keychain sync for signing identity %{public}@ failed: %@", &v12, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2252B36A8(uint64_t a1, char a2, void *a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  if (v8)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = 138543618;
      v13 = v11;
      v14 = 2112;
      v15 = v8;
      _os_log_impl(&dword_22506F000, v10, OS_LOG_TYPE_INFO, "Warn: Keychain sync for signing identity %{public}@ failed: %@", &v12, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }

  dispatch_group_leave(*(a1 + 40));
}

uint64_t sub_2252B37EC(void *a1)
{
  result = a1[4];
  if (result)
  {
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v3 = *(*(a1[6] + 8) + 24);
    }

    else
    {
      v3 = 0;
    }

    v4 = *(*(a1[7] + 8) + 40);
    if (!v4)
    {
      v4 = *(*(a1[8] + 8) + 40);
    }

    return (*(result + 16))(result, v3 & 1, v4);
  }

  return result;
}

uint64_t sub_2252B3CA0(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, 0, 0);
  }

  return result;
}

uint64_t sub_2252B3CC4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32), 0);
  }

  return result;
}

void sub_2252B3CEC(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v11 = objc_msgSend_callbackQueue(*(a1 + 32), v9, v10);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2252B3DE4;
  v15[3] = &unk_27854C440;
  v12 = *(a1 + 40);
  v17 = v8;
  v18 = v12;
  v19 = a2;
  v16 = v7;
  v13 = v8;
  v14 = v7;
  dispatch_async(v11, v15);
}

uint64_t sub_2252B3DE4(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 56), *(a1 + 32), *(a1 + 40));
  }

  return result;
}

uint64_t sub_2252B41E8(uint64_t a1, const char *a2)
{
  qword_280D583B8 = objc_msgSend_setWithObjects_(MEMORY[0x277CBEB98], a2, @"com.apple.cloudkit.unittest.nopcs.CKManateeContainerTests.", @"com.apple.cloudkit.zoneshare.test_non_manatee", @"com.apple.cloudkit.unittest.zonesharing.", @"com.apple.cloudkit.unittest.fdb.zonesharing.", @"com.apple.test.p", @"com.apple.test.fdb.p", @"com.apple.cloudkit.unittest.CKAnonymousToServerShareParticipantTests.", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2252B4348()
{
  v0 = objc_alloc(MEMORY[0x277CBEB98]);
  qword_280D583C8 = objc_msgSend_initWithObjects_(v0, v1, @"ForceUserKeyRegistrySyncRetryOnZonePCSCreation", @"ForceUserKeyRegistrySyncRetryOnDecryption", @"ForceMissingIdentitiesErrorOnDecryptionRetry", @"ForceDecryptFailedErrorOnDecryptionRetry", @"ResetKeySyncState", @"AllowThrottlingWithUnitTestAccount", @"AllowRealKeySync", @"ForceKeySyncFailure", @"ForceKeySyncFailureForReminders", @"ForceNoCurrentIdentityOnce", @"FakeOutCurrentIdentityIsMissing", @"ForceImmediateUserKeyRegistrySyncFailure", @"FakeSignatureGenerationErrorDeviceCapabilities", @"FakeSignatureGenerationErrorZoneUsage", @"FakeSignatureGenerationErrorShareUsage", @"FakeSignatureGenerationErrorRequiredFeatures", @"FakeSignatureGenerationErrorAnonymousToServerShareAccept", @"FakeSignatureGenerationErrorAnonymousToServerAuthentication", @"FakeInvalidSignature", @"ForceKRSReturnExistingIdentityValue", @"DisallowKRSToBePerformed", @"ExpectedPersonaIdentifier", @"ForceKeyRegistrySyncOnRemindersZoneCreation", @"ForceSingleIdentityForRemindersZone", @"GenerateOneInvalidSignature", @"OverrideShareModificationDate", @"FakeSignatureValidationError", @"ExpectValidationSuccessWithManateeIdentity", @"ExpectValidationSuccessWithStingrayIdentity", @"ClearContainersOnPCSNotifier", @"SimulateMissingSigningIdentityForDeviceCapabilities", @"SimulateMissingSigningIdentityForZoneUsage", @"SimulateMissingSigningIdentityForShareUsage", @"SimulateMissingSigningIdentityForRequiredFeatures", @"FakeDBRAccountNeedsReauthenticationPCSError", 0);

  return MEMORY[0x2821F96F8]();
}

void sub_2252B45F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  if (!v4 || (v7 = v4, v8 = objc_msgSend_count(*(a1 + 40), v5, v6), v7, !v8))
  {
    v11 = objc_opt_new();
    objc_msgSend_setPcsTestOverrides_(*(a1 + 32), v12, v11);
  }

  if (!objc_msgSend_count(*(a1 + 40), v9, v10))
  {
    v15 = objc_msgSend_identityManager(*(a1 + 32), v13, v14);
    objc_msgSend_clearOverrides(v15, v16, v17);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v18 = *(a1 + 40);
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v45, v49, 16);
  if (v20)
  {
    v21 = v20;
    v22 = *v46;
    do
    {
      v23 = 0;
      do
      {
        if (*v46 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v24 = *(*(&v45 + 1) + 8 * v23);
        v25 = objc_opt_class();
        v28 = objc_msgSend_pcsOverrideKeys(v25, v26, v27, v45);
        v30 = objc_msgSend_containsObject_(v28, v29, v24);

        if (v30)
        {
          v33 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v31, v24);
          v36 = objc_msgSend_pcsTestOverrides(*(a1 + 32), v34, v35);
          objc_msgSend_setObject_forKeyedSubscript_(v36, v37, v33, v24);
        }

        else
        {
          v38 = objc_msgSend_overrideKeys(CKDPCSIdentityManager, v31, v32);
          v40 = objc_msgSend_containsObject_(v38, v39, v24);

          if (!v40)
          {
            goto LABEL_16;
          }

          v33 = objc_msgSend_identityManager(*(a1 + 32), v41, v42);
          v36 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 40), v43, v24);
          objc_msgSend_setOverride_value_(v33, v44, v24, v36);
        }

LABEL_16:
        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v41, &v45, v49, 16);
    }

    while (v21);
  }
}

void sub_2252B4970(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_BOOLValue(v6, v7, v8);

  v12 = objc_msgSend_pcsTestOverrides(*(a1 + 32), v9, v10);
  objc_msgSend_setObject_forKeyedSubscript_(v12, v11, 0, *(a1 + 40));
}

void sub_2252B4B58(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, *(a1 + 40));
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_BOOLValue(v5, v6, v7);
}

void sub_2252B4D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252B4D5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v8 = objc_msgSend_pcsTestOverrides(*(a1 + 32), a2, a3);
  v5 = objc_msgSend_objectForKeyedSubscript_(v8, v4, *(a1 + 40));
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void *sub_2252B4E94(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_2252B4EE4(a1, a2, a3);
  result = dlsym(v4, "MarkForCounterSigning");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27D71F848 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2252B4EE4(uint64_t a1, const char *a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  if (!qword_27D71F850)
  {
    v9[1] = MEMORY[0x277D85DD0];
    v9[2] = 3221225472;
    v9[3] = sub_2252B5038;
    v9[4] = &unk_278545AD0;
    v9[5] = v9;
    v10 = xmmword_27854C4A8;
    v11 = 0;
    qword_27D71F850 = _sl_dlopen();
  }

  v3 = qword_27D71F850;
  if (!qword_27D71F850)
  {
    v3 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3);
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void *ProtectedCloudStorageLibrary(void)");
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v8, v7, @"CKDPCSManager.m", 65, @"%s", v9[0]);

    __break(1u);
    goto LABEL_7;
  }

  v4 = v9[0];
  if (v9[0])
  {
LABEL_7:
    free(v4);
  }

  return v3;
}

uint64_t sub_2252B5038(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27D71F850 = result;
  return result;
}

void *sub_2252B50AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_2252B4EE4(a1, a2, a3);
  result = dlsym(v4, "PCSObjectCreateFromExportedWithKeyedPCSAndOptionsWithTrusts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27D71F858 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_2252B50FC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = sub_2252B4EE4(a1, a2, a3);
  result = dlsym(v4, "PCSNeedsRollAndCounterSign");
  *(*(*(a1 + 32) + 8) + 24) = result;
  off_27D71F860 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uintptr_t sub_2252B5538()
{
  result = dispatch_source_get_data(qword_280D583E8);
  qword_280D583E0 = result;
  return result;
}

void sub_2252B563C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_pcsCache(a2, a2, a3);
  objc_msgSend_runMemoryCacheEviction(v5, v3, v4);
}

void sub_2252B57EC(uint64_t a1)
{
  v2 = CKGetGlobalQueue();
  v3 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v2);
  v4 = qword_280D583F0;
  qword_280D583F0 = v3;

  v5 = qword_280D583F0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252B5938;
  v9[3] = &unk_278545AD0;
  v9[4] = *(a1 + 32);
  v6 = v9;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = sub_2250878E0;
  handler[3] = &unk_2785456A0;
  v11 = v6;
  dispatch_source_set_event_handler(v5, handler);

  v7 = qword_280D583F0;
  v8 = dispatch_time(0, 1800000000000);
  dispatch_source_set_timer(v7, v8, 0x1A3185C5000uLL, 0x1A3185C5000uLL);
}

void sub_2252B5938(uint64_t a1)
{
  v2 = _os_activity_create(&dword_22506F000, "pcsMemoryCacheEvict", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v2, &v7);
  objc_msgSend_stopEvictionTimer(*(a1 + 32), v3, v4);
  objc_msgSend_runMemoryCacheEvictionInAllCaches(*(a1 + 32), v5, v6);
  os_activity_scope_leave(&v7);
}

uint64_t sub_2252B5AA0(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  objc_msgSend_lastAccess(a2, v5, v6);
  v8 = v7;
  objc_msgSend_lastAccess(v4, v9, v10);
  v12 = v11;

  if (v8 > v12)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

void sub_2252B5C20(uint64_t a1, const char *a2, uint64_t a3)
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_cacheEntries(*(a1 + 32), a2, a3);
  v6 = objc_msgSend_objectForKey_(v4, v5, *(a1 + 40));

  if (v6)
  {
    v9 = objc_msgSend_pcsData(v6, v7, v8);
    v12 = objc_msgSend_pcs(v9, v10, v11);

    v13 = *MEMORY[0x277CBC878];
    if (v12)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v14 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v35 = *(a1 + 32);
        v36 = *(a1 + 40);
        v37 = v14;
        v40 = objc_msgSend_pcsData(v6, v38, v39);
        v43 = objc_msgSend_etag(v40, v41, v42);
        v46 = 138543874;
        v47 = v35;
        v48 = 2114;
        v49 = v36;
        v50 = 2114;
        v51 = v43;
        _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Returning PCS data from in-memory cache (%{public}@). scopedItemID=%{public}@, protectionInfoTag=%{public}@", &v46, 0x20u);
      }

      v17 = *(a1 + 32);
      v18 = objc_msgSend_memoryCacheHitCount(v17, v15, v16);
      objc_msgSend_setMemoryCacheHitCount_(v17, v19, v18 + 1);
      objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x277CBEAA8], v20, v21);
      objc_msgSend_setLastAccess_(v6, v22, v23);
      v26 = objc_msgSend_pcsData(v6, v24, v25);
      v29 = objc_msgSend_copy(v26, v27, v28);
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v13);
      }

      v30 = *MEMORY[0x277CBC858];
      if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
      {
        v44 = *(a1 + 32);
        v45 = *(a1 + 40);
        v46 = 138543618;
        v47 = v44;
        v48 = 2114;
        v49 = v45;
        _os_log_debug_impl(&dword_22506F000, v30, OS_LOG_TYPE_DEBUG, "Found a memory cache entry in (%{public}@) but it has no decrypted data, removing it. scopedItemID=%{public}@", &v46, 0x16u);
      }

      v26 = objc_msgSend_cacheEntries(*(a1 + 32), v31, v32);
      objc_msgSend_removeObjectForKey_(v26, v33, *(a1 + 40));
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v34 = *(a1 + 48);
  if (v34)
  {
    (*(v34 + 16))(v34, v29);
  }
}

uint64_t sub_2252B5FDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_pcs(*(a1 + 32), a2, a3);
  v7 = *(a1 + 40);
  if (v4)
  {
    updated = objc_msgSend_memoryCacheUpdateCount(*(a1 + 40), v5, v6);
    objc_msgSend_setMemoryCacheUpdateCount_(v7, v9, updated + 1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v37 = *(a1 + 40);
      v36 = *(a1 + 48);
      v38 = *(a1 + 32);
      v39 = v10;
      v42 = objc_msgSend_etag(v38, v40, v41);
      v45 = 138543874;
      v46 = v37;
      v47 = 2114;
      v48 = v36;
      v49 = 2114;
      v50 = v42;
      _os_log_debug_impl(&dword_22506F000, v39, OS_LOG_TYPE_DEBUG, "Setting PCS data in the in-memory cache (%{public}@). scopedItemID=%{public}@, protectionInfoTag=%{public}@", &v45, 0x20u);
    }

    v11 = objc_opt_new();
    objc_msgSend_setPcsData_(v11, v12, *(a1 + 32));
    v15 = objc_msgSend_cacheEntries(*(a1 + 40), v13, v14);
    objc_msgSend_setObject_forKey_(v15, v16, v11, *(a1 + 48));

    v19 = objc_msgSend_cacheEntries(*(a1 + 40), v17, v18);
    v22 = objc_msgSend_count(v19, v20, v21);

    v25 = objc_msgSend_memoryCacheHighwaterCount(*(a1 + 40), v23, v24);
    if (v22 <= v25)
    {
      objc_msgSend_setMemoryCacheHighwaterCount_(*(a1 + 40), v26, v25);
    }

    else
    {
      objc_msgSend_setMemoryCacheHighwaterCount_(*(a1 + 40), v26, v22);
    }
  }

  else
  {
    v27 = objc_msgSend_memoryCacheDeleteCount(*(a1 + 40), v5, v6);
    objc_msgSend_setMemoryCacheDeleteCount_(v7, v28, v27 + 1);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v29 = *MEMORY[0x277CBC858];
    if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
    {
      v43 = *(a1 + 40);
      v44 = *(a1 + 48);
      v45 = 138543618;
      v46 = v43;
      v47 = 2114;
      v48 = v44;
      _os_log_debug_impl(&dword_22506F000, v29, OS_LOG_TYPE_DEBUG, "Removing PCS data in the in-memory cache (%{public}@). scopedItemID=%{public}@", &v45, 0x16u);
    }

    v11 = objc_msgSend_cacheEntries(*(a1 + 40), v30, v31);
    objc_msgSend_removeObjectForKey_(v11, v32, *(a1 + 48));
  }

  objc_msgSend__lockedEvictEntriesFromCache(*(a1 + 40), v33, v34);
  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_2252B63F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252B640C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_cacheEntries(*(a1 + 32), a2, a3);
  *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_count(v6, v4, v5);
}

uint64_t sub_2252B689C()
{
  qword_280D58400 = objc_alloc_init(CKDPCSNotifier);

  return MEMORY[0x2821F96F8]();
}

void sub_2252B709C(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = objc_msgSend_weakUnscopedIdentityChangeWatchers(WeakRetained, v3, v4);
    objc_sync_enter(v6);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v9 = objc_msgSend_weakUnscopedIdentityChangeWatchers(v5, v7, v8, 0);
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v9);
          }

          objc_msgSend_pcsIdentityChanged(*(*(&v17 + 1) + 8 * v15++), v11, v12);
        }

        while (v13 != v15);
        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v17, v21, 16);
      }

      while (v13);
    }

    objc_sync_exit(v6);
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    (*(v16 + 16))();
  }
}

void sub_2252B7484(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v12 = 138543362;
    v13 = a3;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Received identities changed notification %{public}@", &v12, 0xCu);
  }

  v8 = objc_msgSend_pcsUpdateSource(v4, v6, v7);

  if (v8)
  {
    v11 = objc_msgSend_pcsUpdateSource(v4, v9, v10);
    dispatch_source_merge_data(v11, 1uLL);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    objc_msgSend_clearSharedMockIdentitySetsCache(CKDPCSIdentityManager, v9, v10);
  }
}

void sub_2252B75C4(uint64_t a1)
{
  v262 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state.opaque[1] = 0;
  state.opaque[0] = 0;
  v211 = _os_activity_create(&dword_22506F000, "CKDPCSNotifier/PCSIdentitiesChanged", MEMORY[0x277D86210], OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v211, &state);
  v222 = WeakRetained;
  if (WeakRetained)
  {
    if (*MEMORY[0x277CBC810] == 1)
    {
      v214 = objc_msgSend_checkAndClearTestOverrides_(WeakRetained, v2, @"ClearContainerOnPCSUpdateSource");
    }

    else
    {
      v214 = 0;
    }

    v3 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v3);
    }

    v4 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "PCS identities changed. Clearing PCS identity caches and in-memory PCS objects", buf, 2u);
    }

    v7 = objc_msgSend_weakUnscopedIdentityChangeWatchers(v222, v5, v6);
    objc_sync_enter(v7);
    v247 = 0u;
    v248 = 0u;
    v249 = 0u;
    v250 = 0u;
    v10 = objc_msgSend_weakUnscopedIdentityChangeWatchers(v222, v8, v9);
    v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v247, v261, 16);
    if (v14)
    {
      v15 = *v248;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v248 != v15)
          {
            objc_enumerationMutation(v10);
          }

          objc_msgSend_pcsIdentityChanged(*(*(&v247 + 1) + 8 * i), v12, v13);
        }

        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v12, &v247, v261, 16);
      }

      while (v14);
    }

    objc_sync_exit(v7);
    obj = objc_msgSend_cloudCoreIdentityContextsMap(v222, v17, v18);
    objc_sync_enter(obj);
    v223 = objc_opt_new();
    v245 = 0u;
    v246 = 0u;
    v243 = 0u;
    v244 = 0u;
    v21 = objc_msgSend_cloudCoreIdentityContextsMap(v222, v19, v20);
    v24 = objc_msgSend_allKeys(v21, v22, v23);

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v243, v260, 16);
    if (v28)
    {
      v29 = *v244;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v244 != v29)
          {
            objc_enumerationMutation(v24);
          }

          v31 = *(*(&v243 + 1) + 8 * j);
          v32 = objc_msgSend_cloudCoreIdentityContextsMap(v222, v26, v27);
          v34 = objc_msgSend_objectForKeyedSubscript_(v32, v33, v31);

          v37 = objc_msgSend_account(v34, v35, v36);
          v40 = objc_msgSend_service(v34, v38, v39);
          v42 = objc_msgSend_currentIdentityPublicKeyIDForAccount_serviceName_error_(CKDPCSIdentityManager, v41, v37, v40, 0);

          if (v42)
          {
            v45 = objc_msgSend_delegate(v34, v43, v44);
            v46 = *MEMORY[0x277CBC878];
            if (v45)
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v46);
              }

              v47 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
              {
                v56 = objc_msgSend_service(v34, v48, v49);
                *buf = 138543362;
                v254 = v56;
                _os_log_debug_impl(&dword_22506F000, v47, OS_LOG_TYPE_DEBUG, "Service %{public}@ now has a current identity, calling delegate.", buf, 0xCu);
              }

              objc_msgSend_pcsIdentityChanged(v45, v50, v51);
            }

            else
            {
              if (*MEMORY[0x277CBC880] != -1)
              {
                dispatch_once(MEMORY[0x277CBC880], v46);
              }

              v52 = *MEMORY[0x277CBC830];
              if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
              {
                v57 = objc_msgSend_service(v34, v53, v54);
                *buf = 138543362;
                v254 = v57;
                _os_log_debug_impl(&dword_22506F000, v52, OS_LOG_TYPE_DEBUG, "Delegate has been deleted. Removing watcher for service %{public}@", buf, 0xCu);
              }

              objc_msgSend_addObject_(v223, v55, v31);
            }
          }
        }

        v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v243, v260, 16);
      }

      while (v28);
    }

    v60 = objc_msgSend_cloudCoreIdentityContextsMap(v222, v58, v59);
    objc_msgSend_removeObjectsForKeys_(v60, v61, v223);

    objc_sync_exit(obj);
    v210 = objc_msgSend_missingIdentitiesContextMap(v222, v62, v63);
    objc_sync_enter(v210);
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v242 = 0u;
    v66 = objc_msgSend_missingIdentitiesContextMap(v222, v64, v65);
    v212 = objc_msgSend_allKeys(v66, v67, v68);

    v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(v212, v69, &v239, v259, 16);
    if (v215)
    {
      v213 = *v240;
      *&v72 = 138412290;
      v209 = v72;
LABEL_38:
      v218 = 0;
      while (1)
      {
        if (*v240 != v213)
        {
          objc_enumerationMutation(v212);
        }

        v217 = *(*(&v239 + 1) + 8 * v218);
        v73 = objc_msgSend_missingIdentitiesContextMap(v222, v70, v71, v209);
        obja = objc_msgSend_objectForKeyedSubscript_(v73, v74, v217);

        if (v214)
        {
          objc_msgSend_setContainer_(obja, v75, 0);
        }

        v219 = objc_msgSend_container(obja, v75, v76);
        if (v219)
        {
          v79 = objc_msgSend_pcsManager(v219, v77, v78);
          v82 = objc_msgSend_identityManager(v79, v80, v81);
          objc_msgSend_identitiesChanged(v82, v83, v84);

          v87 = objc_msgSend_pcsCache(v219, v85, v86);
          objc_msgSend_clearPCSMemoryCaches(v87, v88, v89);

          v92 = objc_msgSend_pcsManager(v219, v90, v91);
          objc_msgSend_setBoundaryKeyData_(v92, v93, 0);
        }

        v224 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v94 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v97 = objc_msgSend_copyOfMissingIdentityPublicKeys(obja, v95, v96);
        if (objc_msgSend_count(v97, v98, v99))
        {
        }

        else
        {
          v104 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v100, v101);
          v107 = objc_msgSend_count(v104, v105, v106) == 0;

          if (v107)
          {
            goto LABEL_92;
          }
        }

        v108 = objc_msgSend_account(obja, v102, v103);
        v109 = v108 == 0;

        v110 = *MEMORY[0x277CBC878];
        if (v109)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v110);
          }

          v189 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_22506F000, v189, OS_LOG_TYPE_ERROR, "No account found on missing identities context.", buf, 2u);
          }

          goto LABEL_118;
        }

        v111 = v110;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], v111);
        }

        v112 = *MEMORY[0x277CBC858];
        if (os_log_type_enabled(v112, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_22506F000, v112, OS_LOG_TYPE_DEBUG, "We've come across missing identities before. Checking to see if a formerly missing key has arrived.", buf, 2u);
        }

        v115 = objc_msgSend_account(obja, v113, v114);
        v118 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v116, v117);
        v121 = objc_msgSend_anyObject(v118, v119, v120);
        v123 = v121;
        if (v121)
        {
          v124 = v121;
        }

        else
        {
          v124 = *MEMORY[0x277D43050];
        }

        v238 = 0;
        v125 = objc_msgSend_createFullKeychainIdentitySetForAccount_serviceName_error_(CKDPCSIdentityManager, v122, v115, v124, &v238);
        v216 = v238;

        if (!v125)
        {
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v207 = *MEMORY[0x277CBC858];
          if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
          {
            v208 = @"Unknown error";
            if (v216)
            {
              v208 = v216;
            }

            *buf = v209;
            v254 = v208;
            _os_log_error_impl(&dword_22506F000, v207, OS_LOG_TYPE_ERROR, "Couldn't get a full identity set to verify against: %@", buf, 0xCu);
          }

          goto LABEL_128;
        }

        v236 = 0u;
        v237 = 0u;
        v234 = 0u;
        v235 = 0u;
        v128 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v126, v127);
        v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v129, &v234, v258, 16);
        if (v130)
        {
          v131 = *v235;
          do
          {
            v132 = 0;
            do
            {
              if (*v235 != v131)
              {
                objc_enumerationMutation(v128);
              }

              v133 = *(*(&v234 + 1) + 8 * v132);
              cf = 0;
              v135 = PCSIdentitySetCopyCurrentIdentityWithError();
              v136 = cf;
              if (v135)
              {
                v137 = cf == 0;
              }

              else
              {
                v137 = 0;
              }

              if (v137)
              {
                v138 = *MEMORY[0x277CBC878];
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v138);
                }

                v139 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(v139, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543362;
                  v254 = v133;
                  _os_log_debug_impl(&dword_22506F000, v139, OS_LOG_TYPE_DEBUG, "Service %{public}@ now has a current identity", buf, 0xCu);
                }

                objc_msgSend_addObject_(v224, v140, v133);
                v136 = cf;
              }

              if (v136)
              {
                CFRelease(v136);
                cf = 0;
              }

              if (v135)
              {
                CFRelease(v135);
              }

              ++v132;
            }

            while (v130 != v132);
            v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(v128, v134, &v234, v258, 16);
          }

          while (v130);
        }

        v231 = 0u;
        v232 = 0u;
        v229 = 0u;
        v230 = 0u;
        v143 = objc_msgSend_copyOfMissingIdentityPublicKeys(obja, v141, v142);
        v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v144, &v229, v257, 16);
        if (v145)
        {
          v146 = *v230;
          do
          {
            v147 = 0;
            do
            {
              if (*v230 != v146)
              {
                objc_enumerationMutation(v143);
              }

              v148 = *(*(&v229 + 1) + 8 * v147);
              v150 = PCSIdentitySetCopyIdentity();
              if (v150)
              {
                v151 = *MEMORY[0x277CBC878];
                if (*MEMORY[0x277CBC880] != -1)
                {
                  dispatch_once(MEMORY[0x277CBC880], v151);
                }

                v152 = *MEMORY[0x277CBC858];
                if (os_log_type_enabled(v152, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 138543618;
                  v254 = v148;
                  v255 = 2112;
                  v256 = v150;
                  _os_log_debug_impl(&dword_22506F000, v152, OS_LOG_TYPE_DEBUG, "Formerly missing public key %{public}@ was found with identity %@.", buf, 0x16u);
                }

                objc_msgSend_addObject_(v94, v153, v148);
                CFRelease(v150);
              }

              ++v147;
            }

            while (v145 != v147);
            v145 = objc_msgSend_countByEnumeratingWithState_objects_count_(v143, v149, &v229, v257, 16);
          }

          while (v145);
        }

        CFRelease(v125);
LABEL_92:
        if (objc_msgSend_count(v94, v102, v103) || objc_msgSend_count(v224, v154, v155))
        {
          v156 = objc_msgSend_pcsManager(v219, v154, v155);
          v159 = objc_msgSend_undecryptablePCSDataHashes(v156, v157, v158);
          objc_msgSend_removeAllObjects(v159, v160, v161);

          v164 = objc_msgSend_missingIdentityPublicKeys(obja, v162, v163);
          objc_msgSend_minusSet_(v164, v165, v94);

          v168 = objc_msgSend_servicesWithMissingIdentities(obja, v166, v167);
          objc_msgSend_minusSet_(v168, v169, v224);

          v170 = *MEMORY[0x277CBC878];
          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], v170);
          }

          v171 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(v171, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_debug_impl(&dword_22506F000, v171, OS_LOG_TYPE_DEBUG, "One or more previously missing PCS identities have arrived. Posting a notification to all clients", buf, 2u);
          }

          objc_msgSend_invalidateCachedAccountInfo(MEMORY[0x277CBC160], v172, v173);
          v227 = 0u;
          v228 = 0u;
          v225 = 0u;
          v226 = 0u;
          v174 = v224;
          v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v175, &v225, v252, 16);
          if (v176)
          {
            v177 = *v226;
            do
            {
              for (k = 0; k != v176; ++k)
              {
                if (*v226 != v177)
                {
                  objc_enumerationMutation(v174);
                }

                v179 = CKNotificationKey();
                v182 = objc_msgSend_UTF8String(v179, v180, v181);
                notify_post(v182);
              }

              v176 = objc_msgSend_countByEnumeratingWithState_objects_count_(v174, v183, &v225, v252, 16);
            }

            while (v176);
          }
        }

        v184 = objc_msgSend_copyOfServicesWithMissingIdentities(obja, v154, v155);
        if (objc_msgSend_count(v184, v185, v186))
        {
        }

        else
        {
          v190 = objc_msgSend_copyOfMissingIdentityPublicKeys(obja, v187, v188);
          v193 = (v219 | objc_msgSend_count(v190, v191, v192)) == 0;

          if (v193)
          {
            v196 = objc_msgSend_missingIdentitiesContextMap(v222, v194, v195);
            objc_msgSend_removeObjectForKey_(v196, v197, v217);

            v198 = *MEMORY[0x277CBC878];
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], v198);
            }

            v199 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(v199, OS_LOG_TYPE_DEBUG))
            {
              *buf = v209;
              v254 = v217;
              _os_log_debug_impl(&dword_22506F000, v199, OS_LOG_TYPE_DEBUG, "Removed empty context from manager context map for UUID: %@", buf, 0xCu);
            }
          }
        }

LABEL_118:

        if (++v218 == v215)
        {
          v215 = objc_msgSend_countByEnumeratingWithState_objects_count_(v212, v70, &v239, v259, 16);
          if (v215)
          {
            goto LABEL_38;
          }

          break;
        }
      }
    }

    v200 = *MEMORY[0x277CBC878];
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v200);
    }

    v212 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEBUG))
    {
      v203 = objc_msgSend_missingIdentitiesContextMap(v222, v201, v202);
      v206 = objc_msgSend_count(v203, v204, v205);
      *buf = 134217984;
      v254 = v206;
      _os_log_debug_impl(&dword_22506F000, v212, OS_LOG_TYPE_DEBUG, "Number of remaining missing identity contexts: %lu", buf, 0xCu);
    }

LABEL_128:

    objc_sync_exit(v210);
  }

  os_activity_scope_leave(&state);
}

void sub_2252B85DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id obj)
{
  objc_sync_exit(obj);
  os_activity_scope_leave(&STACK[0x240]);
  _Unwind_Resume(a1);
}

void sub_2252B9648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v12 = a3;
    _os_log_debug_impl(&dword_22506F000, v5, OS_LOG_TYPE_DEBUG, "Received DBR account became ready notification %{public}@", buf, 0xCu);
  }

  v8 = objc_msgSend_sharedManager(CKDPCSKeySyncManager, v6, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2252B9898;
  v10[3] = &unk_278545AD0;
  v10[4] = a2;
  objc_msgSend_setRacedWithGuitarfishRepairCallbackOnAllOutstandingHandlersWithCompletion_(v8, v9, v10);
}

void sub_2252B9898(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v4 = objc_msgSend_servicesNeedingDBRReauthentication(v1, v2, v3);
  objc_msgSend_clearServicesNeedingDBRReauthentication(v1, v5, v6);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = v4;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v23, v27, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = CKNotificationKey();
        v16 = objc_msgSend_UTF8String(v13, v14, v15, v23);
        notify_post(v16);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v17, &v23, v27, 16);
    }

    while (v10);
  }

  if (*MEMORY[0x277CBC810] == 1)
  {
    v20 = objc_msgSend_servicesNeedingDBRReauthentication(v1, v18, v19);
    if (objc_msgSend_count(v20, v21, v22))
    {
      __assert_rtn("_guitarfishRepairCallback_block_invoke", "CKDPCSNotifier.m", 467, "notifier.servicesNeedingDBRReauthentication.count == 0");
    }
  }
}

void sub_2252BA40C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_cacheTable(a2, a2, a3);
  objc_msgSend_deleteAllEntries_(v4, v3, 0);
}

void sub_2252BA61C(uint64_t a1, const char *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_deviceScopedDatabase(*(a1 + 32), a2, a3);
  v7 = objc_msgSend_specialContainerType(*(a1 + 40), v5, v6);
  v9 = objc_msgSend_tableGroupOptionsForContainerType_(CKDPCSSQLCacheTableGroup, v8, v7);
  v10 = *(a1 + 48);
  v21 = 0;
  v12 = objc_msgSend_tableGroupInDatabase_withName_options_error_(CKDPCSSQLCacheTableGroup, v11, v4, v10, v9, &v21);
  v13 = v21;
  if (v12)
  {
    objc_storeStrong((*(a1 + 56) + 32), v12);
    v16 = objc_msgSend_cacheTable(v12, v14, v15);
    v17 = *(a1 + 56);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 40);
      *buf = 138412546;
      v23 = v20;
      v24 = 2112;
      v25 = v13;
      _os_log_error_impl(&dword_22506F000, v19, OS_LOG_TYPE_ERROR, "Failed to create PCS cache database for containerID %@, error: %@", buf, 0x16u);
    }
  }
}

void sub_2252BA8CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 40), a2, a3);
  v8 = objc_msgSend__lockedFetchPCSDataForID_databaseScope_itemType_(v4, v6, v5, *(a1 + 56), 2);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

void sub_2252BAA24(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 40), a2, a3);
  v8 = objc_msgSend__lockedFetchPCSDataForID_databaseScope_itemType_(v4, v6, v5, *(a1 + 56), 1);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

void sub_2252BAB7C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = objc_msgSend_sqliteRepresentation(*(a1 + 40), a2, a3);
  v8 = objc_msgSend__lockedFetchPCSDataForID_databaseScope_itemType_(v4, v6, v5, *(a1 + 56), 3);

  v7 = *(a1 + 48);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, 0);
  }
}

uint64_t sub_2252BAFFC(uint64_t a1, const char *a2)
{
  objc_msgSend__lockedSetPCSData_databaseScope_itemType_forID_(*(a1 + 32), a2, *(a1 + 40), *(a1 + 64), *(a1 + 72), *(a1 + 48));
  result = *(a1 + 56);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

uint64_t sub_2252BB144(void *a1, const char *a2, uint64_t a3)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = *(a1[5] + 40);
    v6 = objc_msgSend_sqliteRepresentation(v4, a2, a3);
    v8 = objc_msgSend_deletePCSDataForZone_account_serviceName_(v5, v7, v6, *(a1[5] + 16), *(a1[5] + 24));
  }

  result = a1[6];
  if (result)
  {
    v10 = *(result + 16);

    return v10();
  }

  return result;
}

void sub_2252BB2A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(*(a1 + 40) + 40);
    v6 = objc_msgSend_sqliteRepresentation(v4, a2, a3);
    v8 = objc_msgSend_deletePCSDataForShare_account_serviceName_(v5, v7, v6, *(*(a1 + 40) + 16), *(*(a1 + 40) + 24));
  }

  if (*(a1 + 48))
  {
    v9 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252BB38C;
    block[3] = &unk_2785456A0;
    v11 = *(a1 + 48);
    dispatch_async(v9, block);
  }
}

uint64_t sub_2252BB4BC(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_2252BBB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252BBD04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252BC750(uint64_t a1, const char *a2, uint64_t a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  v5 = objc_msgSend_completionHandlersByItemID(*(a1 + 32), a2, a3);
  objc_sync_enter(v5);
  objc_msgSend_callbacksForItemWithID_(*v4, v6, *(a1 + 40));
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v7 = v15 = 0u;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v14, v18, 16);
  if (v9)
  {
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        (*(*(*(&v14 + 1) + 8 * v11) + 16))(*(*(&v14 + 1) + 8 * v11));
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v12, &v14, v18, 16);
    }

    while (v9);
  }

  objc_msgSend_removeCallbacksForItemWithID_(*(a1 + 32), v13, *(a1 + 40), v14);
  objc_sync_exit(v5);
}

void sub_2252BC970(uint64_t a1, const char *a2, uint64_t a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 32);
  obj = objc_msgSend_completionHandlersByItemID(*(a1 + 32), a2, a3);
  objc_sync_enter(obj);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v7 = objc_msgSend_allItemIDs(*v4, v5, v6);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v43, v48, 16);
  if (v10)
  {
    v11 = *v44;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v43 + 1) + 8 * i);
        v14 = objc_msgSend_callbacksForItemWithID_(*(a1 + 32), v9, v13);
        v41 = 0u;
        v42 = 0u;
        v39 = 0u;
        v40 = 0u;
        v15 = v14;
        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v39, v47, 16);
        if (v17)
        {
          v18 = *v40;
          do
          {
            for (j = 0; j != v17; ++j)
            {
              if (*v40 != v18)
              {
                objc_enumerationMutation(v15);
              }

              (*(*(*(&v39 + 1) + 8 * j) + 16))();
            }

            v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v20, &v39, v47, 16);
          }

          while (v17);
        }

        objc_msgSend_removeCallbacksForItemWithID_(*(a1 + 32), v21, v13);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v9, &v43, v48, 16);
    }

    while (v10);
  }

  objc_sync_exit(obj);
  v24 = objc_msgSend_completionHandler(*(a1 + 32), v22, v23);

  if (v24)
  {
    objc_msgSend_highestQOS(*(a1 + 32), v25, v26);
    v27 = CKGetGlobalQueue();
    v30 = objc_msgSend_completionHandler(*(a1 + 32), v28, v29);
    dispatch_async(v27, v30);
  }

  objc_msgSend_setIsFinished_(*(a1 + 32), v25, 1);
  v33 = objc_msgSend_domain(*(a1 + 40), v31, v32);
  if (objc_msgSend_isEqualToString_(v33, v34, *MEMORY[0x277CBBF50]))
  {
    v37 = objc_msgSend_code(*(a1 + 40), v35, v36) == 20;
  }

  else
  {
    v37 = 0;
  }

  objc_msgSend_setIsCancelled_(*(a1 + 32), v35, v37);
}

void sub_2252BD1D8(uint64_t a1, const char *a2, uint64_t a3)
{
  v75 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isCancelled(*(a1 + 32), a2, a3))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v6 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22506F000, v6, OS_LOG_TYPE_INFO, "Not starting fetch because this operation has already been cancelled", buf, 2u);
    }
  }

  else
  {
    if (objc_msgSend_isFinished(*(a1 + 32), v4, v5) && objc_msgSend_isFinished(*(a1 + 32), v7, v8))
    {
      v57 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v57, v58, *(a1 + 40), *(a1 + 32), @"CKDQueuedFetch.m", 292, @"You can't restart a fetch that has already finished");
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v49 = *(a1 + 32);
      v50 = v11;
      v53 = objc_msgSend_numberOfCallbacks(v49, v51, v52);
      objc_msgSend_highestQOS(*(a1 + 32), v54, v55);
      v56 = CKStringForQOS();
      *buf = 138412802;
      v72 = v49;
      v73 = 1024;
      *v74 = v53;
      *&v74[4] = 2114;
      *&v74[6] = v56;
      _os_log_debug_impl(&dword_22506F000, v50, OS_LOG_TYPE_DEBUG, "Starting aggregate fetch %@ with %d callbacks at QoS %{public}@", buf, 0x1Cu);
    }

    v61 = objc_opt_new();
    group = dispatch_group_create();
    v60 = objc_msgSend_container(*(a1 + 32), v12, v13);
    v16 = objc_msgSend_serverConfig(v60, v14, v15);
    v19 = objc_msgSend_containerID(v60, v17, v18);
    v21 = objc_msgSend_maxBatchSize_(v16, v20, v19);

    if (v21 <= 0)
    {
      v24 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v22, v23);
      v21 = objc_msgSend_maxBatchSize(v24, v25, v26);
    }

    v27 = objc_msgSend_allItemIDs(*(a1 + 32), v22, v23);
    v30 = objc_msgSend_count(v27, v28, v29);

    objc_initWeak(&location, *(a1 + 32));
    if (v30 >= 1)
    {
      v34 = 0;
      *&v33 = 134218240;
      v59 = v33;
      do
      {
        if (v21 >= v30 - v34)
        {
          v35 = v30 - v34;
        }

        else
        {
          v35 = v21;
        }

        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v36 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
        {
          *buf = v59;
          v72 = v35;
          v73 = 2048;
          *v74 = v34;
          _os_log_debug_impl(&dword_22506F000, v36, OS_LOG_TYPE_DEBUG, "Generating a batch of %ld records from index %ld", buf, 0x16u);
        }

        v39 = objc_msgSend_allItemIDs(*(a1 + 32), v37, v38, v59);
        v41 = objc_msgSend_subarrayWithRange_(v39, v40, v34, v35);

        v42 = *(a1 + 32);
        v45 = objc_msgSend_operationQueue(v42, v43, v44);
        v66[0] = MEMORY[0x277D85DD0];
        v66[1] = 3221225472;
        v66[2] = sub_2252BD738;
        v66[3] = &unk_27854C648;
        v66[4] = *(a1 + 32);
        objc_copyWeak(&v69, &location);
        v67 = v61;
        v68 = group;
        objc_msgSend_createFetchOperationForItemIDs_operationQueue_operationConfigurationBlock_(v42, v46, v41, v45, v66);

        objc_destroyWeak(&v69);
        v34 += v35;
      }

      while (v34 < v30);
    }

    objc_msgSend_highestQOS(*(a1 + 32), v31, v32);
    v47 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2252BDACC;
    block[3] = &unk_2785476F0;
    objc_copyWeak(&v65, &location);
    v64 = v61;
    v48 = v61;
    dispatch_group_notify(group, v47, block);

    objc_destroyWeak(&v65);
    objc_destroyWeak(&location);
  }
}

void sub_2252BD738(id *a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_highestQOS(a1[4], v4, v5);
  objc_msgSend_setQualityOfService_(v3, v7, v6);
  v10 = objc_msgSend_operationID(v3, v8, v9);
  objc_msgSend_setRunningOperationID_(a1[4], v11, v10);

  objc_initWeak(&location, v3);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_2252BD890;
  v13[3] = &unk_27854A920;
  objc_copyWeak(&v16, a1 + 7);
  objc_copyWeak(&v17, &location);
  v14 = a1[5];
  v15 = a1[6];
  objc_msgSend_setCompletionBlock_(v3, v12, v13);
  dispatch_group_enter(a1[6]);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void sub_2252BD86C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2252BD890(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_loadWeakRetained((a1 + 56));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v18 = v4;
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v25 = objc_msgSend_error(v3, v21, v22);
    if (v25)
    {
      v26 = @" with error ";
    }

    else
    {
      v26 = &stru_28385ED00;
    }

    v27 = objc_msgSend_error(v3, v23, v24);
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = &stru_28385ED00;
    }

    v30 = 138544130;
    v31 = v20;
    v32 = 2112;
    v33 = WeakRetained;
    v34 = 2114;
    v35 = v26;
    v36 = 2112;
    v37 = v29;
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "%{public}@ operation %@ finished%{public}@%@.", &v30, 0x2Au);
  }

  v7 = objc_msgSend_error(v3, v5, v6);

  if (v7)
  {
    v10 = *(a1 + 32);
    objc_sync_enter(v10);
    v11 = *(a1 + 32);
    v14 = objc_msgSend_error(v3, v12, v13);
    objc_msgSend_addObject_(v11, v15, v14);

    objc_sync_exit(v10);
  }

  v16 = objc_msgSend_initialOperation(WeakRetained, v8, v9);
  objc_msgSend_combineMetricsWithOperation_(v16, v17, v3);

  dispatch_group_leave(*(a1 + 40));
}

void sub_2252BDACC(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v3 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v8 = *(a1 + 32);
    v9 = v3;
    v12 = objc_msgSend_count(v8, v10, v11);
    v13 = @" with errors ";
    v14 = *(a1 + 32);
    if (!v12)
    {
      v13 = &stru_28385ED00;
    }

    *v15 = 138412802;
    *&v15[4] = WeakRetained;
    if (!v14)
    {
      v14 = &stru_28385ED00;
    }

    *&v15[12] = 2112;
    *&v15[14] = v13;
    v16 = 2112;
    v17 = v14;
    _os_log_debug_impl(&dword_22506F000, v9, OS_LOG_TYPE_DEBUG, "Bulk record fetch operation %@ finished%@%@.", v15, 0x20u);
  }

  v6 = objc_msgSend_firstObject(*(a1 + 32), v4, v5, *v15, *&v15[8]);
  objc_msgSend_finishFetchOperationWithError_(WeakRetained, v7, v6);
}

void sub_2252BE148(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setUseCachedEtags_(v3, v4, 0);
  objc_msgSend_setSkipDecryption_(v3, v5, 1);
  objc_initWeak(&location, *(a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2252BE24C;
  v9[3] = &unk_278548CC0;
  objc_copyWeak(&v10, &location);
  objc_msgSend_setRecordFetchCompletionBlock_(v3, v6, v9);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v7, v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void sub_2252BE22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252BE24C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_performCallbacksForItemWithID_withItem_error_(WeakRetained, v10, v8, v9, v7);
}

void sub_2252BE574(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setOnlyFetchPCSInfo_(v3, v4, 1);
  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2252BE66C;
  v8[3] = &unk_27854C698;
  objc_copyWeak(&v9, &location);
  objc_msgSend_setRecordZoneFetchedProgressBlock_(v3, v5, v8);
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3, v6, v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void sub_2252BE64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252BE66C(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v9 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_performCallbacksForItemWithID_withItem_error_(WeakRetained, v10, v8, v9, v7);
}

uint64_t sub_2252BE754(void *a1, const char *a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_participants(a1, a2, a3, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (objc_msgSend_hasEncryptedPersonalInfo(*(*(&v11 + 1) + 8 * i), v5, v6))
        {
          v7 = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

void sub_2252BE850(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = objc_msgSend_participants(a1, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = objc_msgSend_recordID(a1, v12, v13);
        objc_msgSend__encryptPersonalInfoWithPCSBlob_inShareWithID_pcsManager_(v17, v19, a3, v18, v6);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v14);
  }
}

void sub_2252BE988(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = objc_msgSend_participants(a1, v7, v8, 0);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v20, v24, 16);
  if (v11)
  {
    v14 = v11;
    v15 = *v21;
    do
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v20 + 1) + 8 * v16);
        v18 = objc_msgSend_recordID(a1, v12, v13);
        objc_msgSend__decryptPersonalInfoWithPCSBlob_inShareWithID_pcsManager_(v17, v19, a3, v18, v6);

        ++v16;
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v20, v24, 16);
    }

    while (v14);
  }
}

void sub_2252BEAC0(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v35 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    v18 = v17;
    v21 = objc_msgSend_recordID(a1, v19, v20);
    *buf = 138412290;
    v34 = v21;
    _os_log_impl(&dword_22506F000, v18, OS_LOG_TYPE_INFO, "Ingesting manatee sharing invitation data for share %@", buf, 0xCu);
  }

  objc_initWeak(buf, a1);
  v24 = objc_msgSend_pcsManager(v14, v22, v23);
  v27 = objc_msgSend_sharingInvitationData(v12, v25, v26);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2252BED04;
  v30[3] = &unk_27854C6C0;
  objc_copyWeak(&v32, buf);
  v28 = v16;
  v31 = v28;
  objc_msgSend_createIngestedPPPCSDataFromInvitationData_shareModificationDate_requestorOperationID_completionHandler_(v24, v29, v27, v13, v15, v30);

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

void sub_2252BECD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2252BED04(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = objc_msgSend_currentUserParticipant(WeakRetained, v8, v9);
  if (v5 && !v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v11 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      v14 = 138412290;
      v15 = v10;
      _os_log_impl(&dword_22506F000, v11, OS_LOG_TYPE_INFO, "Setting per-participant PCS on self participant: %@", &v14, 0xCu);
    }

    objc_msgSend_setProtectionInfo_(v10, v12, v5);
  }

  v13 = *(a1 + 32);
  if (v13)
  {
    (*(v13 + 16))(v13, v5, v6);
  }
}

void sub_2252BEEB8(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_pcsManager(v6, v7, v8);
  v12 = objc_msgSend_serviceTypeForSharing(v9, v10, v11);

  v14 = objc_msgSend_dataWithShare_serviceType_(CKDSharePCSData, v13, a1, v12);
  if (objc_msgSend_invitedPCS(v14, v15, v16))
  {
    objc_msgSend_setSharePCSData_(a1, v17, v14);
    v20 = objc_msgSend_invitedPCS(v14, v18, v19);
    v23 = objc_msgSend_pcsManager(v6, v21, v22);
    objc_msgSend__encryptPersonalInfoWithPCSBlob_pcsManager_(a1, v24, v20, v23);

    v25 = dispatch_group_create();
    dispatch_group_enter(v25);
    v28 = objc_msgSend_pcsCache(v6, v26, v27);
    v31 = objc_msgSend_recordID(a1, v29, v30);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2252BF10C;
    v39[3] = &unk_278548128;
    v39[4] = a1;
    v40 = v25;
    v32 = v25;
    objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v28, v33, v14, v31, a4, v39);

    dispatch_group_wait(v32, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v34 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v35 = v34;
      v38 = objc_msgSend_recordID(a1, v36, v37);
      *buf = 138412290;
      v42 = v38;
      _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Didn't get any pre-decrypted share PCS for share %@", buf, 0xCu);
    }
  }
}

void sub_2252BF10C(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v9 = objc_msgSend_recordID(v5, v7, v8);
    v10 = 138412546;
    v11 = v9;
    v12 = 2112;
    v13 = v3;
    _os_log_debug_impl(&dword_22506F000, v6, OS_LOG_TYPE_DEBUG, "Error setting PCS data for share %@ in the cache: %@", &v10, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_2252BF230(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, char a7, void *a8, void *a9, void *a10)
{
  v62 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v48 = a5;
  v49 = a6;
  v16 = a8;
  v17 = a9;
  v46 = a10;
  v57[0] = 0;
  v57[1] = v57;
  v57[2] = 0x3032000000;
  v57[3] = sub_225074160;
  v57[4] = sub_22507363C;
  v58 = 0;
  if (v16)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_msgSend_zoneID(v16, v21, v22);
      v45 = objc_msgSend_recordID(a1, v43, v44);
      *location = 138412546;
      *&location[4] = v42;
      v60 = 2112;
      v61 = v45;
      _os_log_debug_impl(&dword_22506F000, v20, OS_LOG_TYPE_DEBUG, "Got a shared zone %@ to prep PCS for share %@", location, 0x16u);
    }

    v24 = objc_msgSend_dataWithZone_(CKDZonePCSData, v23, v16);
  }

  else
  {
    v24 = 0;
  }

  v25 = objc_msgSend_containerID(v15, v18, v19);
  if (objc_msgSend_specialContainerType(v25, v26, v27) == 4)
  {
    v30 = 1;
  }

  else
  {
    v31 = objc_msgSend_pcsManager(v15, v28, v29);
    IsManatee = objc_msgSend_currentServiceIsManatee(v31, v32, v33);

    if (IsManatee)
    {
      v30 = 0;
    }

    else
    {
      v30 = 2;
    }
  }

  objc_initWeak(location, a1);
  v37 = objc_msgSend_pcsManager(v15, v35, v36);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = sub_2252BF5D4;
  v50[3] = &unk_27854C6E8;
  objc_copyWeak(v55, location);
  v54 = v57;
  v56 = a7;
  v38 = v15;
  v51 = v38;
  v55[1] = a4;
  v39 = v24;
  v52 = v39;
  v40 = v46;
  v53 = v40;
  objc_msgSend_pcsDataFromFetchedShare_withPublicSharingKey_oonPrivateKey_withServiceType_requestorOperationID_completionHandler_(v37, v41, a1, v48, v49, v30, v17, v50);

  objc_destroyWeak(v55);
  objc_destroyWeak(location);

  _Block_object_dispose(v57, 8);
}

void sub_2252BF588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2252BF5D4(uint64_t a1, void *a2, void *a3)
{
  v82 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = WeakRetained;
  if (v5 && (objc_msgSend_setSharePCSData_(WeakRetained, v8, v5), !v6))
  {
    if (*(a1 + 80) == 1)
    {
      v22 = objc_msgSend_invitedKeysToRemove(v9, v10, v11);
      if (objc_msgSend_count(v22, v23, v24))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v25 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          v28 = v25;
          *buf = 134218242;
          v79 = objc_msgSend_count(v22, v29, v30);
          v80 = 2112;
          v81 = v22;
          _os_log_impl(&dword_22506F000, v28, OS_LOG_TYPE_INFO, "Need to remove %lu public key(s) from the private share PCS: %@", buf, 0x16u);
        }

        v31 = objc_msgSend_pcsManager(*(a1 + 32), v26, v27);
        v34 = objc_msgSend_invitedPCS(v5, v32, v33);
        objc_msgSend_removePublicKeys_fromPCS_(v31, v35, v22, v34);
      }
    }

    if (objc_msgSend_invitedPCS(v5, v10, v11))
    {
      v17 = objc_msgSend_recordID(v9, v36, v37);
      v40 = objc_msgSend_invitedPCS(v5, v38, v39);
      v43 = objc_msgSend_pcsManager(*(a1 + 32), v41, v42);
      objc_msgSend__encryptPersonalInfoWithPCSBlob_pcsManager_(v9, v44, v40, v43);

      v45 = dispatch_group_create();
      dispatch_group_enter(v45);
      v48 = objc_msgSend_pcsCache(*(a1 + 32), v46, v47);
      v49 = *(a1 + 72);
      v75[0] = MEMORY[0x277D85DD0];
      v75[1] = 3221225472;
      v75[2] = sub_2252BFB10;
      v75[3] = &unk_278548040;
      v77 = *(a1 + 56);
      v21 = v45;
      v76 = v21;
      objc_msgSend__setPCSData_forFetchedShareID_withScope_withCompletionHandler_(v48, v50, v5, v17, v49, v75);

      if (*(a1 + 40))
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v51 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v79 = v17;
          _os_log_impl(&dword_22506F000, v51, OS_LOG_TYPE_INFO, "Decrypting shared zone PCS data for share %@", buf, 0xCu);
        }

        v54 = objc_msgSend_pcsManager(*(a1 + 32), v52, v53);
        v55 = *(a1 + 40);
        v58 = objc_msgSend_invitedPCS(v5, v56, v57);
        v59 = *(*(a1 + 56) + 8);
        obj = *(v59 + 40);
        objc_msgSend_decryptSharedZonePCSData_withInvitedPCS_error_(v54, v60, v55, v58, &obj);
        objc_storeStrong((v59 + 40), obj);

        dispatch_group_enter(v21);
        v63 = objc_msgSend_pcsCache(*(a1 + 32), v61, v62);
        v64 = *(a1 + 40);
        v67 = objc_msgSend_zoneID(v17, v65, v66);
        v68 = *(a1 + 72);
        v71[0] = MEMORY[0x277D85DD0];
        v71[1] = 3221225472;
        v71[2] = sub_2252BFB7C;
        v71[3] = &unk_278548040;
        v73 = *(a1 + 56);
        v72 = v21;
        objc_msgSend__setPCSData_forFetchedZoneID_withScope_withCompletionHandler_(v63, v69, v64, v67, v68, v71);
      }

      dispatch_group_wait(v21, 0xFFFFFFFFFFFFFFFFLL);

      goto LABEL_25;
    }
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v79 = v6;
      _os_log_impl(&dword_22506F000, v12, OS_LOG_TYPE_INFO, "Warn: Couldn't create share PCS data: %@", buf, 0xCu);
    }

    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v15 = MEMORY[0x277CBC560];
      v16 = *MEMORY[0x277CBC120];
      v17 = objc_msgSend_recordID(v9, v13, v14);
      v19 = objc_msgSend_errorWithDomain_code_error_format_(v15, v18, v16, 5004, v6, @"Couldn't create share PCS data for share %@", v17);
      v20 = *(*(a1 + 56) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
LABEL_25:
    }
  }

  v70 = *(a1 + 48);
  if (v70)
  {
    (*(v70 + 16))(v70, *(*(*(a1 + 56) + 8) + 40) == 0);
  }
}

void sub_2252BFB10(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

void sub_2252BFB7C(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v4 = *(*(a1 + 40) + 8);
    v6 = *(v4 + 40);
    v5 = (v4 + 40);
    if (!v6)
    {
      objc_storeStrong(v5, a2);
    }
  }

  dispatch_group_leave(*(a1 + 32));
}

uint64_t sub_2252BFBE8(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedPersonalInfo(a1, a2, a3);
  if (v6)
  {
    hasEncryptedPersonalInfo = 1;
  }

  else
  {
    v8 = objc_msgSend_userIdentity(a1, v4, v5);
    hasEncryptedPersonalInfo = objc_msgSend_hasEncryptedPersonalInfo(v8, v9, v10);
  }

  return hasEncryptedPersonalInfo;
}

void sub_2252BFC4C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = @"CreatedInProcess";
  v8 = MEMORY[0x277CCABB0];
  v9 = a5;
  v10 = a4;
  v13 = objc_msgSend_createdInProcess(a1, v11, v12);
  v15 = objc_msgSend_numberWithBool_(v8, v14, v13);
  v33[1] = @"ParticipantAcceptedInProcess";
  v34[0] = v15;
  v16 = MEMORY[0x277CCABB0];
  v19 = objc_msgSend_acceptedInProcess(a1, v17, v18);
  v21 = objc_msgSend_numberWithBool_(v16, v20, v19);
  v34[1] = v21;
  v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v34, v33, 2);

  v26 = objc_msgSend_participantID(a1, v24, v25);
  v27 = sub_2252BFDD0(v23, a3, v9, v10, v26);
  objc_msgSend_setEncryptedPersonalInfo_(a1, v28, v27);

  v31 = objc_msgSend_userIdentity(a1, v29, v30);
  objc_msgSend__encryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v31, v32, a3, v26, v10, v9);
}

id sub_2252BFDD0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277CCAAB0];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v14 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(v9, v13, a1, 1, 0);
  v15 = objc_alloc(MEMORY[0x277CBC2E8]);
  v17 = objc_msgSend_initWithData_(v15, v16, v14);
  v18 = [CKDWrappingContext alloc];
  v20 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v18, v19, v11, v10, 0, 0, 0);

  v22 = objc_msgSend_wrapEncryptedData_withPCS_inContext_(v12, v21, v17, a2, v20);

  if (v22)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v25 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v28 = 138412290;
      v29 = v22;
      _os_log_error_impl(&dword_22506F000, v25, OS_LOG_TYPE_ERROR, "Couldn't encrypt participant properties %@", &v28, 0xCu);
    }
  }

  v26 = objc_msgSend_encryptedData(v17, v23, v24);

  return v26;
}

void sub_2252BFFA8(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v32 = a4;
  v8 = a5;
  v11 = objc_msgSend_participantID(a1, v9, v10);
  v14 = objc_msgSend_encryptedPersonalInfo(a1, v12, v13);
  v15 = sub_2252C00F4(v14, a3, v8, v32, v11);

  if (v15)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"CreatedInProcess");
    v21 = v18;
    if (v18)
    {
      v22 = objc_msgSend_BOOLValue(v18, v19, v20);
      objc_msgSend_setCreatedInProcess_(a1, v23, v22);
    }

    v24 = objc_msgSend_objectForKeyedSubscript_(v15, v19, @"ParticipantAcceptedInProcess");
    v27 = v24;
    if (v24)
    {
      v28 = objc_msgSend_BOOLValue(v24, v25, v26);
      objc_msgSend_setAcceptedInProcess_(a1, v29, v28);
    }
  }

  v30 = objc_msgSend_userIdentity(a1, v16, v17);
  objc_msgSend__decryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v30, v31, a3, v11, v32, v8);
}

id sub_2252C00F4(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v9)
  {
    v13 = objc_alloc(MEMORY[0x277CBC2E8]);
    v15 = objc_msgSend_initWithEncryptedData_(v13, v14, v9);
    v16 = [CKDWrappingContext alloc];
    v18 = objc_msgSend_initWithRecordID_fieldName_mergeableDeltaID_fileSignature_referenceSignature_(v16, v17, v11, v12, 0, 0, 0);
    v22 = objc_msgSend_unwrapEncryptedData_withPCS_inContext_(v10, v19, v15, a2, v18);
    if (v22)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v23 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v45 = v22;
        _os_log_error_impl(&dword_22506F000, v23, OS_LOG_TYPE_ERROR, "Couldn't decrypt participant properties %@", buf, 0xCu);
      }
    }

    else
    {
      v24 = objc_msgSend_data(v15, v20, v21);
      if (v24)
      {
        v43 = v18;
        v41 = objc_alloc(MEMORY[0x277CBEB98]);
        v25 = objc_opt_class();
        v26 = v24;
        v27 = objc_opt_class();
        v28 = objc_opt_class();
        v29 = objc_opt_class();
        v39 = v27;
        v24 = v26;
        v31 = objc_msgSend_initWithObjects_(v41, v30, v25, v39, v28, v29, 0);
        v33 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v32, v31, v24, 0);
        if (v33)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            goto LABEL_22;
          }
        }

        v42 = v31;
        v18 = v43;
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v34 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          if (v33)
          {
            v38 = objc_opt_class();
            v37 = NSStringFromClass(v38);
          }

          else
          {
            v37 = @"nil";
          }

          *buf = 138543362;
          v40 = v37;
          v45 = v37;
          _os_log_error_impl(&dword_22506F000, v34, OS_LOG_TYPE_ERROR, "Decrypted PII was of unexpected class %{public}@", buf, 0xCu);
          if (v33)
          {
          }
        }
      }

      else
      {
        if (*MEMORY[0x277CBC880] != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v35 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_22506F000, v35, OS_LOG_TYPE_ERROR, "Decrypted PII was empty", buf, 2u);
        }
      }
    }
  }

  v33 = 0;
LABEL_22:

  return v33;
}

uint64_t sub_2252C04DC(void *a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_encryptedPersonalInfo(a1, a2, a3);
  if (v6)
  {
    hasEncryptedPersonalInfo = 1;
  }

  else
  {
    v8 = objc_msgSend_lookupInfo(a1, v4, v5);
    hasEncryptedPersonalInfo = objc_msgSend_hasEncryptedPersonalInfo(v8, v9, v10);
  }

  return hasEncryptedPersonalInfo;
}

void sub_2252C0540(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v23 = objc_opt_new();
  v16 = objc_msgSend_nameComponents(a1, v13, v14);
  if (v16)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v23, v15, v16, @"NameComponents");
  }

  v17 = sub_2252BFDD0(v23, a3, v10, v11, v12);
  objc_msgSend_setEncryptedPersonalInfo_(a1, v18, v17);

  v21 = objc_msgSend_lookupInfo(a1, v19, v20);
  objc_msgSend__encryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v21, v22, a3, v12, v11, v10);
}

void sub_2252C065C(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v22 = a4;
  v10 = a5;
  v11 = a6;
  v14 = objc_msgSend_encryptedPersonalInfo(a1, v12, v13);
  v15 = sub_2252C00F4(v14, a3, v11, v10, v22);

  if (v15)
  {
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v16, @"NameComponents");
    objc_msgSend_setNameComponents_(a1, v19, v18);
  }

  v20 = objc_msgSend_lookupInfo(a1, v16, v17);
  objc_msgSend__decryptPersonalInfoWithPCSBlob_participantID_inShareWithID_pcsManager_(v20, v21, a3, v22, v10, v11);
}

BOOL sub_2252C075C(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_encryptedPersonalInfo(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

void sub_2252C0790(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v22 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_opt_new();
  v17 = objc_msgSend_emailAddress(a1, v13, v14);
  if (v17)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v15, v17, @"Email");
  }

  v19 = objc_msgSend_phoneNumber(a1, v15, v16);
  if (v19)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v12, v18, v19, @"Phone");
  }

  v20 = sub_2252BFDD0(v12, a3, v11, v10, v22);
  objc_msgSend_setEncryptedPersonalInfo_(a1, v21, v20);
}

void sub_2252C08AC(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v15 = objc_msgSend_encryptedPersonalInfo(a1, v13, v14);
  v25 = sub_2252C00F4(v15, a3, v10, v11, v12);

  v17 = objc_msgSend_objectForKeyedSubscript_(v25, v16, @"Email");

  if (v17)
  {
    v19 = objc_msgSend_objectForKeyedSubscript_(v25, v18, @"Email");
    objc_msgSend_setEmailAddress_(a1, v20, v19);
  }

  v21 = objc_msgSend_objectForKeyedSubscript_(v25, v18, @"Phone");

  if (v21)
  {
    v23 = objc_msgSend_objectForKeyedSubscript_(v25, v22, @"Phone");
    objc_msgSend_setPhoneNumber_(a1, v24, v23);
  }
}

BOOL sub_2252C09E8(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_encryptedData(a1, a2, a3);
  v4 = v3 != 0;

  return v4;
}

void sub_2252C0A1C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v9 = objc_msgSend_share(a1, v7, v8);
  v12 = objc_msgSend_recordID(v9, v10, v11);

  v26 = @"AcceptedInProcess";
  v13 = MEMORY[0x277CCABB0];
  v16 = objc_msgSend_acceptedInProcess(a1, v14, v15);
  v18 = objc_msgSend_numberWithBool_(v13, v17, v16);
  v27[0] = v18;
  v20 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v27, &v26, 1);

  v23 = objc_msgSend_recordName(v12, v21, v22);
  v24 = sub_2252BFDD0(v20, a3, v6, v12, v23);

  objc_msgSend_setEncryptedData_(a1, v25, v24);
}

void sub_2252C0B54(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v9 = objc_msgSend_share(a1, v7, v8);
  v26 = objc_msgSend_recordID(v9, v10, v11);

  v14 = objc_msgSend_encryptedData(a1, v12, v13);
  v17 = objc_msgSend_recordName(v26, v15, v16);
  v18 = sub_2252C00F4(v14, a3, v6, v26, v17);

  v20 = objc_msgSend_objectForKeyedSubscript_(v18, v19, @"AcceptedInProcess");
  v23 = v20;
  if (v20)
  {
    v24 = objc_msgSend_BOOLValue(v20, v21, v22);
    objc_msgSend_setAcceptedInProcess_(a1, v25, v24);
  }
}

uint64_t sub_2252C3AA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v122 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v122, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v122 & 0x7F) << v10;
        if ((v122 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      if (v32 != 3)
      {
        if (v32 == 4)
        {
          v76 = 0;
          v77 = 0;
          v78 = 0;
          *(a1 + 44) |= 4u;
          while (1)
          {
            v124 = 0;
            v79 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
            {
              v87 = objc_msgSend_data(a2, v82, v83);
              v90 = objc_msgSend_position(a2, v88, v89);
              objc_msgSend_getBytes_range_(v87, v91, &v124, v90, 1);

              v94 = objc_msgSend_position(a2, v92, v93);
              objc_msgSend_setPosition_(a2, v95, v94 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v82, v83);
            }

            v78 |= (v124 & 0x7F) << v76;
            if ((v124 & 0x80) == 0)
            {
              break;
            }

            v76 += 7;
            v30 = v77++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_65;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v78;
          }

LABEL_65:
          v118 = 24;
        }

        else
        {
          if (v32 != 5)
          {
            goto LABEL_60;
          }

          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            v126 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v126, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v126 & 0x7F) << v33;
            if ((v126 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_71;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_71:
          v118 = 8;
        }

LABEL_76:
        *(a1 + v118) = v53;
        goto LABEL_77;
      }

      v74 = PBReaderReadString();
      v75 = *(a1 + 32);
      *(a1 + 32) = v74;

LABEL_77:
      v119 = objc_msgSend_position(a2, v32, v9);
      if (v119 >= objc_msgSend_length(a2, v120, v121))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v96 = 0;
      v97 = 0;
      v98 = 0;
      *(a1 + 44) |= 8u;
      while (1)
      {
        v123 = 0;
        v99 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v99 >= objc_msgSend_position(a2, v100, v101) && (v104 = objc_msgSend_position(a2, v102, v103) + 1, v104 <= objc_msgSend_length(a2, v105, v106)))
        {
          v107 = objc_msgSend_data(a2, v102, v103);
          v110 = objc_msgSend_position(a2, v108, v109);
          objc_msgSend_getBytes_range_(v107, v111, &v123, v110, 1);

          v114 = objc_msgSend_position(a2, v112, v113);
          objc_msgSend_setPosition_(a2, v115, v114 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v102, v103);
        }

        v98 |= (v123 & 0x7F) << v96;
        if ((v123 & 0x80) == 0)
        {
          break;
        }

        v96 += 7;
        v30 = v97++ >= 9;
        if (v30)
        {
          LOBYTE(v116) = 0;
          goto LABEL_67;
        }
      }

      v116 = (v98 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_67:
      *(a1 + 40) = v116;
      goto LABEL_77;
    }

    if (v32 != 2)
    {
LABEL_60:
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }

      goto LABEL_77;
    }

    v54 = 0;
    v55 = 0;
    v56 = 0;
    *(a1 + 44) |= 2u;
    while (1)
    {
      v125 = 0;
      v57 = objc_msgSend_position(a2, v32, v9) + 1;
      if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
      {
        v65 = objc_msgSend_data(a2, v60, v61);
        v68 = objc_msgSend_position(a2, v66, v67);
        objc_msgSend_getBytes_range_(v65, v69, &v125, v68, 1);

        v72 = objc_msgSend_position(a2, v70, v71);
        objc_msgSend_setPosition_(a2, v73, v72 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v60, v61);
      }

      v56 |= (v125 & 0x7F) << v54;
      if ((v125 & 0x80) == 0)
      {
        break;
      }

      v54 += 7;
      v30 = v55++ >= 9;
      if (v30)
      {
        v53 = 0;
        goto LABEL_75;
      }
    }

    if (objc_msgSend_hasError(a2, v32, v9))
    {
      v53 = 0;
    }

    else
    {
      v53 = v56;
    }

LABEL_75:
    v118 = 16;
    goto LABEL_76;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C4A74(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v39 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
          {
            v47 = objc_msgSend_data(a2, v42, v43);
            v50 = objc_msgSend_position(a2, v48, v49);
            objc_msgSend_getBytes_range_(v47, v51, v61, v50, 1);

            v54 = objc_msgSend_position(a2, v52, v53);
            objc_msgSend_setPosition_(a2, v55, v54 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v42, v43);
          }

          v38 |= (v61[0] & 0x7F) << v36;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v30 = v37++ >= 9;
          if (v30)
          {
            v56 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v56 = 0;
        }

        else
        {
          v56 = v38;
        }

LABEL_36:
        *(a1 + 8) = v56;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKCDPCodeServiceRequestAssetAuthorizeGetRequestOptionsHeaderInfo);
        objc_msgSend_addContentRequestHeaders_(a1, v34, v33);
        v61[0] = 0;
        v61[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252C54F8(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C54F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKCDPCodeServiceRequestAssetAuthorizeGetRequestOptionsHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKCDPCodeServiceRequestAssetAuthorizeGetRequestOptionsHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C5B84(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C5FF0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C66B4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(CKCDPCodeServiceRequestServiceClientConfig);
        objc_storeStrong((a1 + 8), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252CB130(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v60, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v60[0] & 0x7F) << v33;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            v53 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v53 = 0;
        }

        else
        {
          v53 = v35;
        }

LABEL_36:
        *(a1 + 16) = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C71FC(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v79 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v79, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v79 & 0x7F) << v10;
        if ((v79 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        objc_msgSend_clearOneofValuesForIdentifier(a1, v32, v9);
        *(a1 + 32) |= 2u;
        *(a1 + 16) = 2;
        v73 = PBReaderReadString();
        v74 = *(a1 + 24);
        *(a1 + 24) = v73;
      }

      else if (v32 == 1)
      {
        objc_msgSend_clearOneofValuesForIdentifier(a1, v32, v9);
        v52 = 0;
        v53 = 0;
        v54 = 0;
        *(a1 + 32) |= 2u;
        *(a1 + 16) = 1;
        *(a1 + 32) |= 1u;
        while (1)
        {
          v81 = 0;
          v55 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v55 >= objc_msgSend_position(a2, v56, v57) && (v60 = objc_msgSend_position(a2, v58, v59) + 1, v60 <= objc_msgSend_length(a2, v61, v62)))
          {
            v63 = objc_msgSend_data(a2, v58, v59);
            v66 = objc_msgSend_position(a2, v64, v65);
            objc_msgSend_getBytes_range_(v63, v67, &v81, v66, 1);

            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_setPosition_(a2, v71, v70 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v58, v59);
          }

          v54 |= (v81 & 0x7F) << v52;
          if ((v81 & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v30 = v53++ >= 9;
          if (v30)
          {
            v72 = 0;
            goto LABEL_44;
          }
        }

        v72 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v54;
LABEL_44:
        *(a1 + 8) = v72;
      }

      else if (v32)
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      else
      {
        v33 = 0;
        while (1)
        {
          v80 = 0;
          v34 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v34 >= objc_msgSend_position(a2, v35, v36) && (v39 = objc_msgSend_position(a2, v37, v38) + 1, v39 <= objc_msgSend_length(a2, v40, v41)))
          {
            v42 = objc_msgSend_data(a2, v37, v38);
            v45 = objc_msgSend_position(a2, v43, v44);
            objc_msgSend_getBytes_range_(v42, v46, &v80, v45, 1);

            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_setPosition_(a2, v50, v49 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v37, v38);
          }

          if ((v80 & 0x80000000) == 0)
          {
            break;
          }

          if (v33++ > 8)
          {
            goto LABEL_46;
          }
        }

        objc_msgSend_hasError(a2, v32, v9);
      }

LABEL_46:
      v76 = objc_msgSend_position(a2, v32, v9);
    }

    while (v76 < objc_msgSend_length(a2, v77, v78));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C7C2C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v61 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61 & 0x7F) << v10;
        if ((v61 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        break;
      }

      if (v32 == 3)
      {
        v33 = PBReaderReadString();
        v34 = 24;
LABEL_36:
        v57 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_41;
      }

      if (v32 != 4)
      {
LABEL_32:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_41;
      }

      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 40) |= 1u;
      while (1)
      {
        v62 = 0;
        v38 = objc_msgSend_position(a2, v32, v9) + 1;
        if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
        {
          v46 = objc_msgSend_data(a2, v41, v42);
          v49 = objc_msgSend_position(a2, v47, v48);
          objc_msgSend_getBytes_range_(v46, v50, &v62, v49, 1);

          v53 = objc_msgSend_position(a2, v51, v52);
          objc_msgSend_setPosition_(a2, v54, v53 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v41, v42);
        }

        v37 |= (v62 & 0x7F) << v35;
        if ((v62 & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v30 = v36++ >= 9;
        if (v30)
        {
          v55 = 0;
          goto LABEL_40;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v55 = 0;
      }

      else
      {
        v55 = v37;
      }

LABEL_40:
      *(a1 + 8) = v55;
LABEL_41:
      v58 = objc_msgSend_position(a2, v32, v9);
      if (v58 >= objc_msgSend_length(a2, v59, v60))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 1)
    {
      v33 = PBReaderReadString();
      v34 = 32;
    }

    else
    {
      if (v32 != 2)
      {
        goto LABEL_32;
      }

      v33 = PBReaderReadString();
      v34 = 16;
    }

    goto LABEL_36;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C87C0(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKCDPCodeServiceRequestProtectedCloudComputeMetadataCryptoSession);
        objc_msgSend_addCryptoSessions_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252C8F90(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C8F90(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadData();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252C9B00(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v127) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v127) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v127, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v127 & 0x7F) << v10;
        if ((v127 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 7)
      {
        if (v32 > 10)
        {
          switch(v32)
          {
            case 0xB:
              v97 = objc_alloc_init(CKCDPCodeServiceRequestOperationGroup);
              objc_storeStrong((a1 + 72), v97);
              v127 = 0;
              v128 = 0;
              if (!PBReaderPlaceMark() || !sub_2252C7C2C(v97, a2, v98))
              {
LABEL_100:

                return 0;
              }

              goto LABEL_80;
            case 0xC:
              v97 = objc_alloc_init(CKCDPCodeServiceRequestDatabaseOwner);
              objc_storeStrong((a1 + 48), v97);
              v127 = 0;
              v128 = 0;
              if (!PBReaderPlaceMark() || !sub_2252C71FC(v97, a2, v121))
              {
                goto LABEL_100;
              }

LABEL_80:
              PBReaderRecallMark();

              goto LABEL_98;
            case 0x10:
              v56 = 0;
              v57 = 0;
              v58 = 0;
              *(a1 + 100) |= 8u;
              while (1)
              {
                LOBYTE(v127) = 0;
                v59 = objc_msgSend_position(a2, v32, v9, v127) + 1;
                if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
                {
                  v67 = objc_msgSend_data(a2, v62, v63);
                  v70 = objc_msgSend_position(a2, v68, v69);
                  objc_msgSend_getBytes_range_(v67, v71, &v127, v70, 1);

                  v74 = objc_msgSend_position(a2, v72, v73);
                  objc_msgSend_setPosition_(a2, v75, v74 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v62, v63);
                }

                v58 |= (v127 & 0x7F) << v56;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v56 += 7;
                v30 = v57++ >= 9;
                if (v30)
                {
                  LOBYTE(v76) = 0;
                  goto LABEL_88;
                }
              }

              v76 = (v58 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_88:
              *(a1 + 96) = v76;
              goto LABEL_98;
          }
        }

        else
        {
          switch(v32)
          {
            case 8:
              v54 = PBReaderReadString();
              v55 = 24;
              goto LABEL_77;
            case 9:
              v99 = 0;
              v100 = 0;
              v101 = 0;
              *(a1 + 100) |= 1u;
              while (1)
              {
                LOBYTE(v127) = 0;
                v102 = objc_msgSend_position(a2, v32, v9, v127) + 1;
                if (v102 >= objc_msgSend_position(a2, v103, v104) && (v107 = objc_msgSend_position(a2, v105, v106) + 1, v107 <= objc_msgSend_length(a2, v108, v109)))
                {
                  v110 = objc_msgSend_data(a2, v105, v106);
                  v113 = objc_msgSend_position(a2, v111, v112);
                  objc_msgSend_getBytes_range_(v110, v114, &v127, v113, 1);

                  v117 = objc_msgSend_position(a2, v115, v116);
                  objc_msgSend_setPosition_(a2, v118, v117 + 1);
                }

                else
                {
                  objc_msgSend__setError(a2, v105, v106);
                }

                v101 |= (v127 & 0x7F) << v99;
                if ((v127 & 0x80) == 0)
                {
                  break;
                }

                v99 += 7;
                v30 = v100++ >= 9;
                if (v30)
                {
                  v119 = 0;
                  goto LABEL_97;
                }
              }

              if (objc_msgSend_hasError(a2, v32, v9))
              {
                v119 = 0;
              }

              else
              {
                v119 = v101;
              }

LABEL_97:
              *(a1 + 8) = v119;
              goto LABEL_98;
            case 0xA:
              v54 = PBReaderReadString();
              v55 = 80;
LABEL_77:
              v120 = *(a1 + v55);
              *(a1 + v55) = v54;

              goto LABEL_98;
          }
        }
      }

      else if (v32 > 3)
      {
        switch(v32)
        {
          case 4:
            v77 = 0;
            v78 = 0;
            v79 = 0;
            *(a1 + 100) |= 4u;
            while (1)
            {
              LOBYTE(v127) = 0;
              v80 = objc_msgSend_position(a2, v32, v9, v127) + 1;
              if (v80 >= objc_msgSend_position(a2, v81, v82) && (v85 = objc_msgSend_position(a2, v83, v84) + 1, v85 <= objc_msgSend_length(a2, v86, v87)))
              {
                v88 = objc_msgSend_data(a2, v83, v84);
                v91 = objc_msgSend_position(a2, v89, v90);
                objc_msgSend_getBytes_range_(v88, v92, &v127, v91, 1);

                v95 = objc_msgSend_position(a2, v93, v94);
                objc_msgSend_setPosition_(a2, v96, v95 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v83, v84);
              }

              v79 |= (v127 & 0x7F) << v77;
              if ((v127 & 0x80) == 0)
              {
                break;
              }

              v77 += 7;
              v30 = v78++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_92;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v79;
            }

LABEL_92:
            v122 = 56;
            goto LABEL_93;
          case 5:
            v54 = PBReaderReadString();
            v55 = 64;
            goto LABEL_77;
          case 6:
            v54 = PBReaderReadString();
            v55 = 16;
            goto LABEL_77;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v54 = PBReaderReadString();
            v55 = 88;
            goto LABEL_77;
          case 2:
            v54 = PBReaderReadString();
            v55 = 32;
            goto LABEL_77;
          case 3:
            v33 = 0;
            v34 = 0;
            v35 = 0;
            *(a1 + 100) |= 2u;
            while (1)
            {
              LOBYTE(v127) = 0;
              v36 = objc_msgSend_position(a2, v32, v9, v127) + 1;
              if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
              {
                v44 = objc_msgSend_data(a2, v39, v40);
                v47 = objc_msgSend_position(a2, v45, v46);
                objc_msgSend_getBytes_range_(v44, v48, &v127, v47, 1);

                v51 = objc_msgSend_position(a2, v49, v50);
                objc_msgSend_setPosition_(a2, v52, v51 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v39, v40);
              }

              v35 |= (v127 & 0x7F) << v33;
              if ((v127 & 0x80) == 0)
              {
                break;
              }

              v33 += 7;
              v30 = v34++ >= 9;
              if (v30)
              {
                v53 = 0;
                goto LABEL_86;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v53 = 0;
            }

            else
            {
              v53 = v35;
            }

LABEL_86:
            v122 = 40;
LABEL_93:
            *(a1 + v122) = v53;
            goto LABEL_98;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_98:
      v123 = objc_msgSend_position(a2, v32, v9);
    }

    while (v123 < objc_msgSend_length(a2, v124, v125));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CB130(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v60 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60 & 0x7F) << v10;
        if ((v60 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          v61 = 0;
          v38 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
          {
            v46 = objc_msgSend_data(a2, v41, v42);
            v49 = objc_msgSend_position(a2, v47, v48);
            objc_msgSend_getBytes_range_(v46, v50, &v61, v49, 1);

            v53 = objc_msgSend_position(a2, v51, v52);
            objc_msgSend_setPosition_(a2, v54, v53 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v41, v42);
          }

          v37 |= (v61 & 0x7F) << v35;
          if ((v61 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          v30 = v36++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_34;
          }
        }

        v55 = objc_msgSend_hasError(a2, v32, v9) ? 0 : v37;
LABEL_34:
        *(a1 + 16) = v55;
      }

      else if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = *(a1 + 8);
        *(a1 + 8) = v33;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CC958(char *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v44[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v44[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v44, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v44[0] & 0x7F) << v10;
        if ((v44[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        break;
      }

      if (v32 == 2)
      {
        v33 = PBReaderReadData();
        v34 = 8;
LABEL_22:
        v35 = *&a1[v34];
        *&a1[v34] = v33;
LABEL_26:

        goto LABEL_28;
      }

      if (v32 == 1)
      {
        v33 = PBReaderReadString();
        v34 = 24;
        goto LABEL_22;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v40 = objc_msgSend_position(a2, v38, v39);
      if (v40 >= objc_msgSend_length(a2, v41, v42))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v35 = objc_alloc_init(CKCDPCodeServiceResponseAssetAuthorizationResponseHeaderInfo);
    objc_msgSend_addResponseHeaders_(a1, v36, v35);
    v44[0] = 0;
    v44[1] = 0;
    if (!PBReaderPlaceMark() || !sub_2252CD3B8(v35, a2, v37))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CD3B8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKCDPCodeServiceResponseAssetAuthorizationResponseHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKCDPCodeServiceResponseAssetAuthorizationResponseHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CDC0C(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKCDPCodeServiceResponseAttestationResponseAttestation);
        objc_msgSend_addAttestations_(a1, v33, v32);
        v41[0] = 0;
        v41[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252CE484(v32, a2, v34))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v37 = objc_msgSend_position(a2, v35, v36);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CE484(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v43 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = PBReaderReadString();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__pckCertificate;
          goto LABEL_28;
        }

        if (v32 == 4)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__routingToken;
          goto LABEL_28;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__appQuote;
          goto LABEL_28;
        }

        if (v32 == 2)
        {
          v33 = PBReaderReadData();
          v34 = &OBJC_IVAR___CKCDPCodeServiceResponseAttestationResponseAttestation__aqeQuote;
LABEL_28:
          v37 = *v34;
          v38 = *(a1 + v37);
          *(a1 + v37) = v33;

          goto LABEL_29;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v39 = objc_msgSend_position(a2, v35, v36);
    }

    while (v39 < objc_msgSend_length(a2, v40, v41));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252CF2C0(_BYTE *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v105[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v105[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v105, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v105[0] & 0x7F) << v10;
        if ((v105[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 3)
      {
        break;
      }

      if (v32 == 4)
      {
        v76 = 0;
        v77 = 0;
        v78 = 0;
        a1[52] |= 1u;
        while (1)
        {
          LOBYTE(v105[0]) = 0;
          v79 = objc_msgSend_position(a2, v32, v9, v105[0]) + 1;
          if (v79 >= objc_msgSend_position(a2, v80, v81) && (v84 = objc_msgSend_position(a2, v82, v83) + 1, v84 <= objc_msgSend_length(a2, v85, v86)))
          {
            v87 = objc_msgSend_data(a2, v82, v83);
            v90 = objc_msgSend_position(a2, v88, v89);
            objc_msgSend_getBytes_range_(v87, v91, v105, v90, 1);

            v94 = objc_msgSend_position(a2, v92, v93);
            objc_msgSend_setPosition_(a2, v95, v94 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v82, v83);
          }

          v78 |= (v105[0] & 0x7F) << v76;
          if ((v105[0] & 0x80) == 0)
          {
            break;
          }

          v76 += 7;
          v30 = v77++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_66;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v78;
        }

LABEL_66:
        v100 = 8;
        goto LABEL_71;
      }

      if (v32 != 5)
      {
        if (v32 == 6)
        {
          v35 = 0;
          v36 = 0;
          v37 = 0;
          a1[52] |= 4u;
          while (1)
          {
            LOBYTE(v105[0]) = 0;
            v38 = objc_msgSend_position(a2, v32, v9, v105[0]) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, v105, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v105[0] & 0x7F) << v35;
            if ((v105[0] & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_70;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_70:
          v100 = 48;
          goto LABEL_71;
        }

LABEL_52:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_72;
      }

      v97 = objc_alloc_init(CKCDPErrorUserInfoEntry);
      objc_msgSend_addAuxiliaryUserInfo_(a1, v98, v97);
      v105[0] = 0;
      v105[1] = 0;
      if (!PBReaderPlaceMark() || !sub_2252D037C(v97, a2, v99))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_72:
      v101 = objc_msgSend_position(a2, v32, v9);
      if (v101 >= objc_msgSend_length(a2, v102, v103))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    switch(v32)
    {
      case 1:
        v56 = 0;
        v57 = 0;
        v58 = 0;
        a1[52] |= 2u;
        while (1)
        {
          LOBYTE(v105[0]) = 0;
          v59 = objc_msgSend_position(a2, v32, v9, v105[0]) + 1;
          if (v59 >= objc_msgSend_position(a2, v60, v61) && (v64 = objc_msgSend_position(a2, v62, v63) + 1, v64 <= objc_msgSend_length(a2, v65, v66)))
          {
            v67 = objc_msgSend_data(a2, v62, v63);
            v70 = objc_msgSend_position(a2, v68, v69);
            objc_msgSend_getBytes_range_(v67, v71, v105, v70, 1);

            v74 = objc_msgSend_position(a2, v72, v73);
            objc_msgSend_setPosition_(a2, v75, v74 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v62, v63);
          }

          v58 |= (v105[0] & 0x7F) << v56;
          if ((v105[0] & 0x80) == 0)
          {
            break;
          }

          v56 += 7;
          v30 = v57++ >= 9;
          if (v30)
          {
            v55 = 0;
            goto LABEL_62;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v55 = 0;
        }

        else
        {
          v55 = v58;
        }

LABEL_62:
        v100 = 32;
LABEL_71:
        *&a1[v100] = v55;
        goto LABEL_72;
      case 2:
        v33 = PBReaderReadString();
        v34 = 40;
        goto LABEL_55;
      case 3:
        v33 = PBReaderReadString();
        v34 = 16;
LABEL_55:
        v96 = *&a1[v34];
        *&a1[v34] = v33;

        goto LABEL_72;
    }

    goto LABEL_52;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D037C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v41[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v41[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v41, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v41[0] & 0x7F) << v10;
        if ((v41[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
LABEL_23:

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v37 = objc_msgSend_position(a2, v35, v36);
      if (v37 >= objc_msgSend_length(a2, v38, v39))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKCDPErrorUserInfoValue);
    objc_storeStrong((a1 + 16), v33);
    v41[0] = 0;
    v41[1] = 0;
    if (!PBReaderPlaceMark() || !sub_2252D111C(v33, a2, v34))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_23;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D111C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v121 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v121, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v121 & 0x7F) << v10;
        if ((v121 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          v75 = 0;
          v76 = 0;
          v77 = 0;
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 3;
          *(a1 + 48) |= 8u;
          while (1)
          {
            v124 = 0;
            v78 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v78 >= objc_msgSend_position(a2, v79, v80) && (v83 = objc_msgSend_position(a2, v81, v82) + 1, v83 <= objc_msgSend_length(a2, v84, v85)))
            {
              v86 = objc_msgSend_data(a2, v81, v82);
              v89 = objc_msgSend_position(a2, v87, v88);
              objc_msgSend_getBytes_range_(v86, v90, &v124, v89, 1);

              v93 = objc_msgSend_position(a2, v91, v92);
              objc_msgSend_setPosition_(a2, v94, v93 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v81, v82);
            }

            v77 |= (v124 & 0x7F) << v75;
            if ((v124 & 0x80) == 0)
            {
              break;
            }

            v75 += 7;
            v30 = v76++ >= 9;
            if (v30)
            {
              LOBYTE(v95) = 0;
              goto LABEL_61;
            }
          }

          v95 = (v77 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_61:
          *(a1 + 44) = v95;
        }

        else
        {
          if (v32 == 4)
          {
            objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 4;
            v54 = PBReaderReadString();
            v55 = 32;
          }

          else
          {
            if (v32 != 5)
            {
LABEL_52:
              result = PBReaderSkipValueWithTag();
              if (!result)
              {
                return result;
              }

              goto LABEL_68;
            }

            objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
            *(a1 + 48) |= 4u;
            *(a1 + 40) = 5;
            v54 = PBReaderReadData();
            v55 = 24;
          }

          v107 = *(a1 + v55);
          *(a1 + v55) = v54;
        }
      }

      else if (v32)
      {
        if (v32 == 1)
        {
          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 1;
          *(a1 + 48) |= 1u;
          v120 = 0;
          v99 = objc_msgSend_position(a2, v97, v98) + 8;
          if (v99 >= objc_msgSend_position(a2, v100, v101) && (v104 = objc_msgSend_position(a2, v102, v103) + 8, v104 <= objc_msgSend_length(a2, v105, v106)))
          {
            v108 = objc_msgSend_data(a2, v102, v103);
            v111 = objc_msgSend_position(a2, v109, v110);
            objc_msgSend_getBytes_range_(v108, v112, &v120, v111, 8);

            v115 = objc_msgSend_position(a2, v113, v114);
            objc_msgSend_setPosition_(a2, v116, v115 + 8);
          }

          else
          {
            objc_msgSend__setError(a2, v102, v103);
          }

          *(a1 + 8) = v120;
        }

        else
        {
          if (v32 != 2)
          {
            goto LABEL_52;
          }

          objc_msgSend_clearOneofValuesForValue(a1, v32, v9);
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *(a1 + 48) |= 4u;
          *(a1 + 40) = 2;
          *(a1 + 48) |= 2u;
          while (1)
          {
            v123 = 0;
            v36 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
            {
              v44 = objc_msgSend_data(a2, v39, v40);
              v47 = objc_msgSend_position(a2, v45, v46);
              objc_msgSend_getBytes_range_(v44, v48, &v123, v47, 1);

              v51 = objc_msgSend_position(a2, v49, v50);
              objc_msgSend_setPosition_(a2, v52, v51 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v39, v40);
            }

            v35 |= (v123 & 0x7F) << v33;
            if ((v123 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            v30 = v34++ >= 9;
            if (v30)
            {
              v53 = 0;
              goto LABEL_65;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v53 = 0;
          }

          else
          {
            v53 = v35;
          }

LABEL_65:
          *(a1 + 16) = v53;
        }
      }

      else
      {
        v56 = 0;
        while (1)
        {
          v122 = 0;
          v57 = objc_msgSend_position(a2, v32, v9) + 1;
          if (v57 >= objc_msgSend_position(a2, v58, v59) && (v62 = objc_msgSend_position(a2, v60, v61) + 1, v62 <= objc_msgSend_length(a2, v63, v64)))
          {
            v65 = objc_msgSend_data(a2, v60, v61);
            v68 = objc_msgSend_position(a2, v66, v67);
            objc_msgSend_getBytes_range_(v65, v69, &v122, v68, 1);

            v72 = objc_msgSend_position(a2, v70, v71);
            objc_msgSend_setPosition_(a2, v73, v72 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v60, v61);
          }

          if ((v122 & 0x80000000) == 0)
          {
            break;
          }

          if (v56++ > 8)
          {
            goto LABEL_68;
          }
        }

        objc_msgSend_hasError(a2, v32, v9);
      }

LABEL_68:
      v117 = objc_msgSend_position(a2, v32, v9);
    }

    while (v117 < objc_msgSend_length(a2, v118, v119));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D4660(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v82 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v82, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v82 & 0x7F) << v10;
        if ((v82 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v58 = 0;
          v59 = 0;
          v60 = 0;
          *(a1 + 36) |= 1u;
          while (1)
          {
            v83 = 0;
            v61 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
            {
              v69 = objc_msgSend_data(a2, v64, v65);
              v72 = objc_msgSend_position(a2, v70, v71);
              objc_msgSend_getBytes_range_(v69, v73, &v83, v72, 1);

              v76 = objc_msgSend_position(a2, v74, v75);
              objc_msgSend_setPosition_(a2, v77, v76 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v64, v65);
            }

            v60 |= (v83 & 0x7F) << v58;
            if ((v83 & 0x80) == 0)
            {
              break;
            }

            v58 += 7;
            v30 = v59++ >= 9;
            if (v30)
            {
              v78 = 0;
              goto LABEL_52;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v78 = 0;
          }

          else
          {
            v78 = v60;
          }

LABEL_52:
          *(a1 + 8) = v78;
        }

        else
        {
          if (v32 != 4)
          {
LABEL_32:
            result = PBReaderSkipValueWithTag();
            if (!result)
            {
              return result;
            }

            goto LABEL_53;
          }

          v35 = 0;
          v36 = 0;
          v37 = 0;
          *(a1 + 36) |= 2u;
          while (1)
          {
            v84 = 0;
            v38 = objc_msgSend_position(a2, v32, v9) + 1;
            if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
            {
              v46 = objc_msgSend_data(a2, v41, v42);
              v49 = objc_msgSend_position(a2, v47, v48);
              objc_msgSend_getBytes_range_(v46, v50, &v84, v49, 1);

              v53 = objc_msgSend_position(a2, v51, v52);
              objc_msgSend_setPosition_(a2, v54, v53 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v41, v42);
            }

            v37 |= (v84 & 0x7F) << v35;
            if ((v84 & 0x80) == 0)
            {
              break;
            }

            v35 += 7;
            v30 = v36++ >= 9;
            if (v30)
            {
              v55 = 0;
              goto LABEL_48;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v55 = 0;
          }

          else
          {
            v55 = v37;
          }

LABEL_48:
          *(a1 + 32) = v55;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = PBReaderReadData();
          v34 = 16;
        }

        else
        {
          if (v32 != 2)
          {
            goto LABEL_32;
          }

          v33 = PBReaderReadString();
          v34 = 24;
        }

        v57 = *(a1 + v34);
        *(a1 + v34) = v33;
      }

LABEL_53:
      v79 = objc_msgSend_position(a2, v32, v9);
    }

    while (v79 < objc_msgSend_length(a2, v80, v81));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252D5038()
{
  v0 = qword_280D54F18;
  qword_280D54F18 = &unk_2838C92F0;
}

uint64_t sub_2252D5810(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v65) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v65) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v65, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v65 & 0x7F) << v10;
        if ((v65 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 3)
      {
        switch(v32)
        {
          case 1:
            v33 = objc_alloc_init(MEMORY[0x277CBC278]);
            objc_storeStrong((a1 + 40), v33);
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
            {
LABEL_55:

              return 0;
            }

            goto LABEL_49;
          case 2:
            v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
            objc_msgSend_addZoneLevelCapabilities_(a1, v59, v33);
LABEL_47:
            v65 = 0;
            v66 = 0;
            if (!PBReaderPlaceMark() || !sub_22536EBA4(v33, a2, v60))
            {
              goto LABEL_55;
            }

LABEL_49:
            PBReaderRecallMark();

            goto LABEL_50;
          case 3:
            v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
            objc_msgSend_addRecordLevelCapabilities_(a1, v34, v33);
            goto LABEL_47;
        }
      }

      else if (v32 > 5)
      {
        if (v32 == 6)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 60) |= 1u;
          while (1)
          {
            LOBYTE(v65) = 0;
            v41 = objc_msgSend_position(a2, v32, v9, v65) + 1;
            if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
            {
              v49 = objc_msgSend_data(a2, v44, v45);
              v52 = objc_msgSend_position(a2, v50, v51);
              objc_msgSend_getBytes_range_(v49, v53, &v65, v52, 1);

              v56 = objc_msgSend_position(a2, v54, v55);
              objc_msgSend_setPosition_(a2, v57, v56 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v44, v45);
            }

            v40 |= (v65 & 0x7F) << v38;
            if ((v65 & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v30 = v39++ >= 9;
            if (v30)
            {
              LOBYTE(v58) = 0;
              goto LABEL_53;
            }
          }

          v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_53:
          *(a1 + 56) = v58;
          goto LABEL_50;
        }

        if (v32 == 7)
        {
          v35 = PBReaderReadData();
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;

          goto LABEL_50;
        }
      }

      else
      {
        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPSupportedCapabilitiesCapability);
          objc_msgSend_addFieldLevelCapabilities_(a1, v37, v33);
          goto LABEL_47;
        }

        if (v32 == 5)
        {
          v33 = objc_alloc_init(MEMORY[0x277CBC240]);
          objc_storeStrong((a1 + 16), v33);
          v65 = 0;
          v66 = 0;
          if (!PBReaderPlaceMark() || !CKDPDateReadFrom())
          {
            goto LABEL_55;
          }

          goto LABEL_49;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_50:
      v61 = objc_msgSend_position(a2, v32, v9);
    }

    while (v61 < objc_msgSend_length(a2, v62, v63));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D6D54(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) <= 2)
      {
        if (v32 == 1)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          *(a1 + 44) |= 1u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v41 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
            if (v41 >= objc_msgSend_position(a2, v42, v43) && (v46 = objc_msgSend_position(a2, v44, v45) + 1, v46 <= objc_msgSend_length(a2, v47, v48)))
            {
              v49 = objc_msgSend_data(a2, v44, v45);
              v52 = objc_msgSend_position(a2, v50, v51);
              objc_msgSend_getBytes_range_(v49, v53, v63, v52, 1);

              v56 = objc_msgSend_position(a2, v54, v55);
              objc_msgSend_setPosition_(a2, v57, v56 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v44, v45);
            }

            v40 |= (v63[0] & 0x7F) << v38;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v38 += 7;
            v30 = v39++ >= 9;
            if (v30)
            {
              LOBYTE(v58) = 0;
              goto LABEL_42;
            }
          }

          v58 = (v40 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_42:
          *(a1 + 40) = v58;
          goto LABEL_43;
        }

        if (v32 != 2)
        {
          goto LABEL_39;
        }

        v35 = objc_alloc_init(CKDPSignedVersionedBlob);
        v36 = 24;
      }

      else
      {
        switch(v32)
        {
          case 3:
            v35 = objc_alloc_init(CKDPSignedVersionedBlob);
            v36 = 16;
            break;
          case 4:
            v35 = objc_alloc_init(CKDPSignedVersionedBlob);
            v36 = 32;
            break;
          case 5:
            v33 = PBReaderReadData();
            v34 = *(a1 + 8);
            *(a1 + 8) = v33;

            goto LABEL_43;
          default:
LABEL_39:
            if ((PBReaderSkipValueWithTag() & 1) == 0)
            {
              return 0;
            }

            goto LABEL_43;
        }
      }

      objc_storeStrong((a1 + v36), v35);
      v63[0] = 0;
      v63[1] = 0;
      if (!PBReaderPlaceMark() || !sub_225360D24(v35, a2, v37))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252D77E0()
{
  v0 = qword_280D58418;
  qword_280D58418 = &unk_2838C9318;
}

uint64_t sub_2252D7930(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 3)
      {
        v32 = objc_alloc_init(CKDPSignedVersionedBlob);
        objc_storeStrong((a1 + 8), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !sub_225360D24(v32, a2, v33))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D859C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v63[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v63[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v63, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v63[0] & 0x7F) << v10;
        if ((v63[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPAdopterFeatureSetAdopterFeature);
          objc_msgSend_addRecordFeatures_(a1, v57, v33);
        }

        else
        {
          if (v32 != 4)
          {
            goto LABEL_24;
          }

          v33 = objc_alloc_init(CKDPAdopterFeatureSetAdopterFeature);
          objc_msgSend_addFieldFeatures_(a1, v35, v33);
        }
      }

      else
      {
        if (v32 == 1)
        {
          v36 = 0;
          v37 = 0;
          v38 = 0;
          *(a1 + 40) |= 1u;
          while (1)
          {
            LOBYTE(v63[0]) = 0;
            v39 = objc_msgSend_position(a2, v32, v9, v63[0]) + 1;
            if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
            {
              v47 = objc_msgSend_data(a2, v42, v43);
              v50 = objc_msgSend_position(a2, v48, v49);
              objc_msgSend_getBytes_range_(v47, v51, v63, v50, 1);

              v54 = objc_msgSend_position(a2, v52, v53);
              objc_msgSend_setPosition_(a2, v55, v54 + 1);
            }

            else
            {
              objc_msgSend__setError(a2, v42, v43);
            }

            v38 |= (v63[0] & 0x7F) << v36;
            if ((v63[0] & 0x80) == 0)
            {
              break;
            }

            v36 += 7;
            v30 = v37++ >= 9;
            if (v30)
            {
              v56 = 0;
              goto LABEL_42;
            }
          }

          if (objc_msgSend_hasError(a2, v32, v9))
          {
            v56 = 0;
          }

          else
          {
            v56 = v38;
          }

LABEL_42:
          *(a1 + 16) = v56;
          goto LABEL_43;
        }

        if (v32 != 2)
        {
LABEL_24:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            return 0;
          }

          goto LABEL_43;
        }

        v33 = objc_alloc_init(CKDPAdopterFeatureSetAdopterFeature);
        objc_msgSend_addZoneFeatures_(a1, v34, v33);
      }

      v63[0] = 0;
      v63[1] = 0;
      if (!PBReaderPlaceMark() || !sub_2252D95D4(v33, a2, v58))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_43:
      v59 = objc_msgSend_position(a2, v32, v9);
    }

    while (v59 < objc_msgSend_length(a2, v60, v61));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D95D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPAdopterFeatureSetAdopterFeature__value;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPAdopterFeatureSetAdopterFeature__key;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252D9FA4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v61[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v61[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v61, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v61[0] & 0x7F) << v10;
        if ((v61[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v36 = 0;
        v37 = 0;
        v38 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v61[0]) = 0;
          v39 = objc_msgSend_position(a2, v32, v9, v61[0]) + 1;
          if (v39 >= objc_msgSend_position(a2, v40, v41) && (v44 = objc_msgSend_position(a2, v42, v43) + 1, v44 <= objc_msgSend_length(a2, v45, v46)))
          {
            v47 = objc_msgSend_data(a2, v42, v43);
            v50 = objc_msgSend_position(a2, v48, v49);
            objc_msgSend_getBytes_range_(v47, v51, v61, v50, 1);

            v54 = objc_msgSend_position(a2, v52, v53);
            objc_msgSend_setPosition_(a2, v55, v54 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v42, v43);
          }

          v38 |= (v61[0] & 0x7F) << v36;
          if ((v61[0] & 0x80) == 0)
          {
            break;
          }

          v36 += 7;
          v30 = v37++ >= 9;
          if (v30)
          {
            v56 = 0;
            goto LABEL_36;
          }
        }

        if (objc_msgSend_hasError(a2, v32, v9))
        {
          v56 = 0;
        }

        else
        {
          v56 = v38;
        }

LABEL_36:
        *(a1 + 16) = v56;
      }

      else if (v32 == 1)
      {
        v33 = objc_alloc_init(CKDPAncestryEtagAncestorInformation);
        objc_msgSend_addAncestorInformation_(a1, v34, v33);
        v61[0] = 0;
        v61[1] = 0;
        if (!PBReaderPlaceMark() || !sub_2252DAA34(v33, a2, v35))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v57 = objc_msgSend_position(a2, v32, v9);
    }

    while (v57 < objc_msgSend_length(a2, v58, v59));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DAA34(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC278]);
        objc_storeStrong((a1 + 16), v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordZoneIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_25:
      v36 = objc_msgSend_position(a2, v34, v35);
      if (v36 >= objc_msgSend_length(a2, v37, v38))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = PBReaderReadString();
    v32 = *(a1 + 8);
    *(a1 + 8) = v33;
LABEL_23:

    goto LABEL_25;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252DB064()
{
  v0 = qword_280D58428;
  qword_280D58428 = &unk_2838C9340;
}

uint64_t sub_2252DB1D8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKDPAnonymousShareAddRequest__anonymousShareTupleHash;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKDPAnonymousShareAddRequest__encryptedShareTuple;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DB87C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252DBC18()
{
  v0 = qword_280D58438;
  qword_280D58438 = &unk_2838C9368;
}

uint64_t sub_2252DBD8C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKDPAnonymousShareRemoveRequest__anonymousShareTupleHash;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKDPAnonymousShareRemoveRequest__encryptedShareTuple;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DC430(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v40 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40 & 0x7F) << v10;
        if ((v40 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = *(a1 + 8);
        *(a1 + 8) = v32;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v37 = objc_msgSend_position(a2, v34, v35);
    }

    while (v37 < objc_msgSend_length(a2, v38, v39));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DC8D4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = PBReaderReadString();
        v33 = &OBJC_IVAR___CKDPAnonymousZoneInfo__anonymousZoneInfoID;
LABEL_21:
        v34 = *v33;
        v35 = *(a1 + v34);
        *(a1 + v34) = v32;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = PBReaderReadData();
    v33 = &OBJC_IVAR___CKDPAnonymousZoneInfo__anonymousZoneInfoData;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252DCE94()
{
  v0 = qword_280D58448;
  qword_280D58448 = &unk_2838C9390;
}

uint64_t sub_2252DD198(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v40[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v40[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v40, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v40[0] & 0x7F) << v10;
        if ((v40[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_msgSend_addIdsToArchive_(a1, v33, v32);
        v40[0] = 0;
        v40[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v36 = objc_msgSend_position(a2, v34, v35);
    }

    while (v36 < objc_msgSend_length(a2, v37, v38));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252DF538(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v60[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v60[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v60, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v60[0] & 0x7F) << v10;
        if ((v60[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        break;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        break;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) == 2)
      {
        v54 = objc_alloc_init(CKDPRequestedFields);
        objc_storeStrong((a1 + 8), v54);
        v60[0] = 0;
        v60[1] = 0;
        if (!PBReaderPlaceMark() || !CKDPRequestedFieldsReadFrom(v54, a2, v55))
        {

          return 0;
        }

        PBReaderRecallMark();
      }

      else if (v32 == 1)
      {
        v33 = 0;
        v34 = 0;
        v35 = 0;
        *(a1 + 20) |= 1u;
        while (1)
        {
          LOBYTE(v60[0]) = 0;
          v36 = objc_msgSend_position(a2, v32, v9, v60[0]) + 1;
          if (v36 >= objc_msgSend_position(a2, v37, v38) && (v41 = objc_msgSend_position(a2, v39, v40) + 1, v41 <= objc_msgSend_length(a2, v42, v43)))
          {
            v44 = objc_msgSend_data(a2, v39, v40);
            v47 = objc_msgSend_position(a2, v45, v46);
            objc_msgSend_getBytes_range_(v44, v48, v60, v47, 1);

            v51 = objc_msgSend_position(a2, v49, v50);
            objc_msgSend_setPosition_(a2, v52, v51 + 1);
          }

          else
          {
            objc_msgSend__setError(a2, v39, v40);
          }

          v35 |= (v60[0] & 0x7F) << v33;
          if ((v60[0] & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v30 = v34++ >= 9;
          if (v30)
          {
            LOBYTE(v53) = 0;
            goto LABEL_34;
          }
        }

        v53 = (v35 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_34:
        *(a1 + 16) = v53;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v56 = objc_msgSend_position(a2, v32, v9);
    }

    while (v56 < objc_msgSend_length(a2, v57, v58));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252DFC3C()
{
  v0 = qword_280D54EB8;
  qword_280D54EB8 = &unk_2838C93B8;
}

uint64_t sub_2252E05F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v90) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v90) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v90, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v90 & 0x7F) << v10;
        if ((v90 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 4)
      {
        if (v32 > 7)
        {
          if (v32 == 8)
          {
            v68 = 0;
            v69 = 0;
            v70 = 0;
            *(a1 + 72) |= 2u;
            while (1)
            {
              LOBYTE(v90) = 0;
              v71 = objc_msgSend_position(a2, v32, v9, v90) + 1;
              if (v71 >= objc_msgSend_position(a2, v72, v73) && (v76 = objc_msgSend_position(a2, v74, v75) + 1, v76 <= objc_msgSend_length(a2, v77, v78)))
              {
                v79 = objc_msgSend_data(a2, v74, v75);
                v82 = objc_msgSend_position(a2, v80, v81);
                objc_msgSend_getBytes_range_(v79, v83, &v90, v82, 1);

                v86 = objc_msgSend_position(a2, v84, v85);
                objc_msgSend_setPosition_(a2, v87, v86 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v74, v75);
              }

              v70 |= (v90 & 0x7F) << v68;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v68 += 7;
              v30 = v69++ >= 9;
              if (v30)
              {
                v88 = 0;
                goto LABEL_69;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v88 = 0;
            }

            else
            {
              v88 = v70;
            }

LABEL_69:
            *(a1 + 32) = v88;
            goto LABEL_53;
          }

          if (v32 == 9)
          {
            v39 = 0;
            v40 = 0;
            v41 = 0;
            *(a1 + 72) |= 1u;
            while (1)
            {
              LOBYTE(v90) = 0;
              v42 = objc_msgSend_position(a2, v32, v9, v90) + 1;
              if (v42 >= objc_msgSend_position(a2, v43, v44) && (v47 = objc_msgSend_position(a2, v45, v46) + 1, v47 <= objc_msgSend_length(a2, v48, v49)))
              {
                v50 = objc_msgSend_data(a2, v45, v46);
                v53 = objc_msgSend_position(a2, v51, v52);
                objc_msgSend_getBytes_range_(v50, v54, &v90, v53, 1);

                v57 = objc_msgSend_position(a2, v55, v56);
                objc_msgSend_setPosition_(a2, v58, v57 + 1);
              }

              else
              {
                objc_msgSend__setError(a2, v45, v46);
              }

              v41 |= (v90 & 0x7F) << v39;
              if ((v90 & 0x80) == 0)
              {
                break;
              }

              v39 += 7;
              v30 = v40++ >= 9;
              if (v30)
              {
                v59 = 0;
                goto LABEL_73;
              }
            }

            if (objc_msgSend_hasError(a2, v32, v9))
            {
              v59 = 0;
            }

            else
            {
              v59 = v41;
            }

LABEL_73:
            *(a1 + 8) = v59;
            goto LABEL_53;
          }
        }

        else
        {
          if (v32 == 5)
          {
            v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveRequestHeaderInfo);
            objc_msgSend_addContentRequestHeaders_(a1, v61, v33);
            v90 = 0;
            v91 = 0;
            if (!PBReaderPlaceMark() || !sub_2252E277C(v33, a2, v62))
            {
LABEL_75:

              return 0;
            }

            goto LABEL_52;
          }

          if (v32 == 6)
          {
            v35 = PBReaderReadData();
            v36 = *(a1 + 24);
            *(a1 + 24) = v35;

            goto LABEL_53;
          }
        }
      }

      else if (v32 > 2)
      {
        if (v32 == 3)
        {
          v33 = objc_alloc_init(CKDPAsset);
          objc_msgSend_addAssets_(a1, v63, v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v33, a2, v64))
          {
            goto LABEL_75;
          }

          goto LABEL_52;
        }

        if (v32 == 4)
        {
          v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveRequestRecordAssetUpload);
          objc_msgSend_addUploads_(a1, v37, v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !sub_2252E3094(&v33->super.super.isa, a2, v38))
          {
            goto LABEL_75;
          }

          goto LABEL_52;
        }
      }

      else
      {
        if (v32 == 1)
        {
          v33 = objc_alloc_init(CKDPRecordType);
          objc_storeStrong((a1 + 56), v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v33, a2, v60))
          {
            goto LABEL_75;
          }

          goto LABEL_52;
        }

        if (v32 == 2)
        {
          v33 = objc_alloc_init(CKDPRecordFieldIdentifier);
          objc_storeStrong((a1 + 48), v33);
          v90 = 0;
          v91 = 0;
          if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v33, a2, v34))
          {
            goto LABEL_75;
          }

LABEL_52:
          PBReaderRecallMark();

          goto LABEL_53;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_53:
      v65 = objc_msgSend_position(a2, v32, v9);
    }

    while (v65 < objc_msgSend_length(a2, v66, v67));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E1DF0(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v42) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v42) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 2)
      {
        break;
      }

      if ((v31 >> 3) == 1)
      {
        v32 = objc_alloc_init(CKDPRecordFieldIdentifier);
        objc_storeStrong(a1 + 2, v32);
        v42 = 0;
        v43 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordFieldIdentifierReadFrom(v32, a2, v33))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = objc_alloc_init(CKDPAsset);
    objc_msgSend_addAssets_(a1, v34, v32);
    v42 = 0;
    v43 = 0;
    if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v32, a2, v35))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E277C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveRequestHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveRequestHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E3094(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v43) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v43) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v43, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v43 & 0x7F) << v10;
        if ((v43 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 3)
      {
        v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveRequestAssetField);
        objc_msgSend_addAssetFields_(a1, v35, v33);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !sub_2252E1DF0(&v33->super.super.isa, a2, v36))
        {
LABEL_32:

          return 0;
        }

        goto LABEL_28;
      }

      if (v32 == 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBC268]);
        objc_storeStrong(a1 + 2, v33);
        v43 = 0;
        v44 = 0;
        if (!PBReaderPlaceMark() || !CKDPRecordIdentifierReadFrom())
        {
          goto LABEL_32;
        }

LABEL_28:
        PBReaderRecallMark();

        goto LABEL_30;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_30:
      v39 = objc_msgSend_position(a2, v37, v38);
      if (v39 >= objc_msgSend_length(a2, v40, v41))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPRecordType);
    objc_storeStrong(a1 + 3, v33);
    v43 = 0;
    v44 = 0;
    if (!PBReaderPlaceMark() || !CKDPRecordTypeReadFrom(v33, a2, v34))
    {
      goto LABEL_32;
    }

    goto LABEL_28;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E3F04(void *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v45) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v45, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v45 & 0x7F) << v10;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) == 4)
      {
        break;
      }

      if (v32 == 3)
      {
        v36 = PBReaderReadData();
        v33 = a1[1];
        a1[1] = v36;
        goto LABEL_27;
      }

      if (v32 == 2)
      {
        v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveResponseUploadToken);
        objc_msgSend_addUploadTokens_(a1, v34, v33);
        v45 = 0;
        v46 = 0;
        if (!PBReaderPlaceMark() || !sub_2252E5394(v33, a2, v35))
        {
          goto LABEL_31;
        }

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_29:
      v41 = objc_msgSend_position(a2, v39, v40);
      if (v41 >= objc_msgSend_length(a2, v42, v43))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v33 = objc_alloc_init(CKDPAssetUploadTokenRetrieveResponseHeaderInfo);
    objc_msgSend_addContentResponseHeaders_(a1, v37, v33);
    v45 = 0;
    v46 = 0;
    if (!PBReaderPlaceMark() || !sub_2252E4B48(v33, a2, v38))
    {
LABEL_31:

      return 0;
    }

LABEL_26:
    PBReaderRecallMark();
LABEL_27:

    goto LABEL_29;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E4B48(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v42 = 0;
        v13 = objc_msgSend_position(a2, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v42, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v42 & 0x7F) << v10;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      if ((v31 >> 3) == 1)
      {
        break;
      }

      if ((v31 >> 3) == 2)
      {
        v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveResponseHeaderInfo__headerValue;
LABEL_21:
        v33 = PBReaderReadString();
        v34 = *v32;
        v35 = *(a1 + v34);
        *(a1 + v34) = v33;

        goto LABEL_23;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_23:
      v38 = objc_msgSend_position(a2, v36, v37);
      if (v38 >= objc_msgSend_length(a2, v39, v40))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    v32 = &OBJC_IVAR___CKDPAssetUploadTokenRetrieveResponseHeaderInfo__headerKey;
    goto LABEL_21;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

uint64_t sub_2252E5394(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v83[0]) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v83[0]) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, v83, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v83[0] & 0x7F) << v10;
        if ((v83[0] & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v56 = PBReaderReadString();
        v57 = *(a1 + 24);
        *(a1 + 24) = v56;

        goto LABEL_52;
      }

      if (v32 != 2)
      {
        goto LABEL_34;
      }

      v33 = objc_alloc_init(CKDPAsset);
      objc_storeStrong((a1 + 16), v33);
      v83[0] = 0;
      v83[1] = 0;
      if (!PBReaderPlaceMark() || !CKDPAssetReadFrom(v33, a2, v34))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_52:
      v79 = objc_msgSend_position(a2, v32, v9);
      if (v79 >= objc_msgSend_length(a2, v80, v81))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }
    }

    if (v32 == 3)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      *(a1 + 36) |= 1u;
      while (1)
      {
        LOBYTE(v83[0]) = 0;
        v61 = objc_msgSend_position(a2, v32, v9, v83[0]) + 1;
        if (v61 >= objc_msgSend_position(a2, v62, v63) && (v66 = objc_msgSend_position(a2, v64, v65) + 1, v66 <= objc_msgSend_length(a2, v67, v68)))
        {
          v69 = objc_msgSend_data(a2, v64, v65);
          v72 = objc_msgSend_position(a2, v70, v71);
          objc_msgSend_getBytes_range_(v69, v73, v83, v72, 1);

          v76 = objc_msgSend_position(a2, v74, v75);
          objc_msgSend_setPosition_(a2, v77, v76 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v64, v65);
        }

        v60 |= (v83[0] & 0x7F) << v58;
        if ((v83[0] & 0x80) == 0)
        {
          break;
        }

        v58 += 7;
        v30 = v59++ >= 9;
        if (v30)
        {
          v78 = 0;
          goto LABEL_51;
        }
      }

      if (objc_msgSend_hasError(a2, v32, v9))
      {
        v78 = 0;
      }

      else
      {
        v78 = v60;
      }

LABEL_51:
      *(a1 + 8) = v78;
      goto LABEL_52;
    }

    if (v32 == 4)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      *(a1 + 36) |= 2u;
      while (1)
      {
        LOBYTE(v83[0]) = 0;
        v38 = objc_msgSend_position(a2, v32, v9, v83[0]) + 1;
        if (v38 >= objc_msgSend_position(a2, v39, v40) && (v43 = objc_msgSend_position(a2, v41, v42) + 1, v43 <= objc_msgSend_length(a2, v44, v45)))
        {
          v46 = objc_msgSend_data(a2, v41, v42);
          v49 = objc_msgSend_position(a2, v47, v48);
          objc_msgSend_getBytes_range_(v46, v50, v83, v49, 1);

          v53 = objc_msgSend_position(a2, v51, v52);
          objc_msgSend_setPosition_(a2, v54, v53 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v41, v42);
        }

        v37 |= (v83[0] & 0x7F) << v35;
        if ((v83[0] & 0x80) == 0)
        {
          break;
        }

        v35 += 7;
        v30 = v36++ >= 9;
        if (v30)
        {
          LOBYTE(v55) = 0;
          goto LABEL_47;
        }
      }

      v55 = (v37 != 0) & ~objc_msgSend_hasError(a2, v32, v9);
LABEL_47:
      *(a1 + 32) = v55;
      goto LABEL_52;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_52;
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252E5DF4()
{
  v0 = qword_280D58458;
  qword_280D58458 = &unk_2838C93E0;
}

uint64_t sub_2252E6138(void *a1, void *a2, uint64_t a3)
{
  for (i = objc_msgSend_position(a2, a2, a3); i < objc_msgSend_length(a2, v6, v7) && (objc_msgSend_hasError(a2, v8, v9) & 1) == 0; i = objc_msgSend_position(a2, v34, v35))
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    while (1)
    {
      v37 = 0;
      v13 = objc_msgSend_position(a2, v8, v9) + 1;
      if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
      {
        v21 = objc_msgSend_data(a2, v16, v17);
        v24 = objc_msgSend_position(a2, v22, v23);
        objc_msgSend_getBytes_range_(v21, v25, &v37, v24, 1);

        v28 = objc_msgSend_position(a2, v26, v27);
        objc_msgSend_setPosition_(a2, v29, v28 + 1);
      }

      else
      {
        objc_msgSend__setError(a2, v16, v17);
      }

      v12 |= (v37 & 0x7F) << v10;
      if ((v37 & 0x80) == 0)
      {
        break;
      }

      v10 += 7;
      if (v11++ >= 9)
      {
        v31 = 0;
        goto LABEL_16;
      }
    }

    v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_16:
    if (objc_msgSend_hasError(a2, v8, v9))
    {
      break;
    }

    v9 = v31 & 7;
    if (v9 == 4)
    {
      break;
    }

    if ((v31 >> 3) == 1)
    {
      v33 = PBReaderReadString();
      if (v33)
      {
        objc_msgSend_addBundleID_(a1, v32, v33);
      }
    }

    else
    {
      result = PBReaderSkipValueWithTag();
      if (!result)
      {
        return result;
      }
    }
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}

void sub_2252E67E0()
{
  v0 = qword_280D54F28;
  qword_280D54F28 = &unk_2838C9408;
}

uint64_t sub_2252E6A78(id *a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_position(a2, a2, a3);
  if (v5 < objc_msgSend_length(a2, v6, v7))
  {
    do
    {
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        LOBYTE(v45) = 0;
        v13 = objc_msgSend_position(a2, v8, v9, v45) + 1;
        if (v13 >= objc_msgSend_position(a2, v14, v15) && (v18 = objc_msgSend_position(a2, v16, v17) + 1, v18 <= objc_msgSend_length(a2, v19, v20)))
        {
          v21 = objc_msgSend_data(a2, v16, v17);
          v24 = objc_msgSend_position(a2, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v45, v24, 1);

          v28 = objc_msgSend_position(a2, v26, v27);
          objc_msgSend_setPosition_(a2, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a2, v16, v17);
        }

        v12 |= (v45 & 0x7F) << v10;
        if ((v45 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        if (v11++ >= 9)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a2, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a2, v8, v9))
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        return objc_msgSend_hasError(a2, v8, v9) ^ 1;
      }

      v32 = v31 >> 3;
      if ((v31 >> 3) > 3)
      {
        switch(v32)
        {
          case 4:
            v35 = objc_alloc_init(CKDPCodeFunctionInvokeRequestProtectedCloudComputeMetadata);
            objc_storeStrong(a1 + 3, v35);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !sub_2252E7C3C(v35, a2, v37))
            {
LABEL_42:

              return 0;
            }

LABEL_38:
            PBReaderRecallMark();
LABEL_39:

            goto LABEL_40;
          case 5:
            v35 = objc_alloc_init(CKDPCodeFunctionInvokeRequestAttestationRequest);
            objc_storeStrong(a1 + 1, v35);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !sub_2252E7608(v35, a2, v40))
            {
              goto LABEL_42;
            }

            goto LABEL_38;
          case 6:
            v35 = objc_alloc_init(CKCDPTrustedTargetCryptoMetadata);
            objc_storeStrong(a1 + 6, v35);
            v45 = 0;
            v46 = 0;
            if (!PBReaderPlaceMark() || !sub_2252D4660(v35, a2, v36))
            {
              goto LABEL_42;
            }

            goto LABEL_38;
        }
      }

      else
      {
        switch(v32)
        {
          case 1:
            v33 = PBReaderReadString();
            v34 = 5;
            goto LABEL_35;
          case 2:
            v33 = PBReaderReadString();
            v34 = 2;
            goto LABEL_35;
          case 3:
            v33 = PBReaderReadData();
            v34 = 4;
LABEL_35:
            v35 = a1[v34];
            a1[v34] = v33;
            goto LABEL_39;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_40:
      v41 = objc_msgSend_position(a2, v38, v39);
    }

    while (v41 < objc_msgSend_length(a2, v42, v43));
  }

  return objc_msgSend_hasError(a2, v8, v9) ^ 1;
}