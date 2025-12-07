void sub_22E9EEF3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v8 = v5;
  if (!a2 || v5)
  {
    v12 = CloudServicesLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_22E9F517C(a1, v8, v12);
    }
  }

  else
  {
    v9 = objc_msgSend_firstObject(a2, v6, v7);
    v12 = v9;
    if (v9)
    {
      v13 = objc_msgSend_countryCode(v9, v10, v11);
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_isEqualToString_(v13, v14, @"CN");
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

uint64_t sub_22E9F0358(char *a1, ...)
{
  va_start(va, a1);
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  if (vasprintf(&v4, a1, va) != -1 && v4 != 0)
  {
    v2 = CloudServicesLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v6 = v4;
      _os_log_impl(&dword_22E9CA000, v2, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
    }

    free(v4);
  }

  return 0;
}

uint64_t sub_22E9F0430(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22E9F0448(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  va_copy(v21, va);
  v22 = 0;
  if (vasprintf(&v22, a2, va) != -1 && v22 != 0)
  {
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    v15 = objc_msgSend_initWithUTF8String_(v13, v14, v22, va);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v16, v15, *MEMORY[0x277CCA450]);

    free(v22);
  }

  v17 = *(*(*(a1 + 32) + 8) + 40);
  if (v17)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v11, v17, *MEMORY[0x277CCA7E8]);
  }

  v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v11, @"EscrowServiceErrorDomain", 102, v10, v21);
  v19 = *(*(a1 + 32) + 8);
  v20 = *(v19 + 40);
  *(v19 + 40) = v18;
}

void sub_22E9F2BE8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getAccountInfoWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F2CC8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "enableWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F2D40(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F2DB8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverRecordContentsWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F2E30(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "createICDPRecord remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F2EA8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "disableWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F2F20(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "stashRecoveryDataWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F2F98(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "updateMetadata remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3010(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "cachePassphraseWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3088(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "uncachePassphraseWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3100(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "cacheRecoveryKeyWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3178(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "uncacheRecoveryKeyWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F31F0(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "startSMSChallengeWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3268(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getCountrySMSCodesWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F32E0(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "changeSMSTargetWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3358(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "backupWithInfo remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F33D0(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "backOffDateWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3448(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "setBackOffDateWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F34C0(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "notificationInfoWithReply remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3538(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "stateCaptureWithReply remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F35B0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup getAccountInfoWithError:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3628(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup updateMetadataWithError:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F36A0(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "updateMetadataWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3718(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup enableWithError:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3790(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup recoverWithError:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3808(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup recoverWithCDPContext:escrowRecord:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3880(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverWithCDPContext: remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F38F8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup recoverWithCDPContext:escrowRecord:altDSID:flowID:deviceSessionID:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3970(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup recoverSilentWithCDPContext:allRecords:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F39E8(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "recoverSilentWithCDPContextAndRecords: remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3A60(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup recoverSilentWithCDPContext:allRecords:altDSID:flowID:deviceSessionID:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3AD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup isRecoveryKeySet:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3B50(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "isRecoveryKeySet: remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3BC8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup restoreKeychainAsyncWithPassword:keybagDigest:haveBottledPeer:viewsNotToBeRestored:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3C40(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "restoreKeychainAsyncWithPassword: remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3CB8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup restoreKeychainWithBackupPassword:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3D30(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "restoreKeychainWithBackupPassword: remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3DA8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup verifyRecoveryKey:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3E20(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "verifyRecoveryKey: remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3E98(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup removeRecoveryKeyFromBackup:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F3F10(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "removeRecoveryKeyFromBackup: remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F3F88(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup disableWithError:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F4000(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup startSMSChallengeWithError:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F4078(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup changeSMSTargetWithError:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F40F0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup backupForRecoveryKeyWithInfo:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F41D0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup backupWithInfo:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F4248(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup prepareHSA2EscrowRecordContents:reply:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F42C0(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "prepareHSA2EscrowRecordContents remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F434C(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *a1;
  sub_22E9DC7CC(&dword_22E9CA000, a2, a3, "unknown passcode request state: %llu", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F43BC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[SecureBackup daemonPasscodeRequestOpinion:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F4434(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "daemonPasscodeRequestOpinion remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F44AC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[SecureBackup beginHSA2PasscodeRequest:uuid:reason:error:]";
  sub_22E9DC7CC(&dword_22E9CA000, a1, a3, "calling %s from the main thread", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_22E9F4524(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "beginHSA2PasscodeRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F459C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getCertificatesWithRequest remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F4614(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "saveTermsAcceptance remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F468C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "getAcceptedTermsForAltDSID remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F4704(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "moveToFederationAllowed remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F477C(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_code(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9DC7A0(&dword_22E9CA000, v3, v4, "knownICDPFederations remote proxy error: %ld", v5, v6, v7, v8);
}

void sub_22E9F484C(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = sub_22E9E0534(v2);
  sub_22E9E0558(&dword_22E9CA000, v4, v5, "invalid type for key %@: %@", v6, v7, v8, v9);
}

void sub_22E9F48FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  sub_22E9E745C();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v66 = *MEMORY[0x277D85DE8];
  v64 = 0;
  v65 = 0;
  v63 = v26;
  bzero(__src, 0x4000uLL);
  v60 = a23;
  __count = 0x4000;
  v57[0] = v40;
  memset(__n, 0, sizeof(__n));
  v57[1] = v38;
  v57[2] = v36;
  v57[3] = v34;
  v57[4] = v32;
  v57[5] = v30;
  v57[6] = v28;
  v58 = a21;
  v59 = a22;
  if (sub_22E9F4DB4(v57, &__n[1], __n) || (v64 = *&__n[1], v65 = __n[0], !a24))
  {
    sub_22E9E7474();
  }

  else
  {
    sub_22E9E7474();
    if (a25)
    {
      v41 = sub_22E9E7228();
      if (v41)
      {
        if (!sub_22E9E7424(v41, 0x9Fu, &v63, 3u, v42, v43, v44, v45, __src, &__count))
        {
          v46 = calloc(__count, 1uLL);
          *a24 = v46;
          if (v46)
          {
            v47 = __count;
            *a25 = __count;
            memcpy(v46, __src, v47);
          }
        }
      }

      else
      {
        sub_22E9E7410();
        fprintf(v48, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", "aks", v49, v50, v51, v52, v53, v54, v55, ":", 3201, &unk_22E9FB10B, &unk_22E9FB10B);
      }
    }
  }

  sub_22E9E7480(*&__n[1], __n[0]);
  free(*&__n[1]);
  sub_22E9E7480(__src, __count);
  sub_22E9E7444();
}

uint64_t sub_22E9F4B00(void *a1, void *a2, size_t *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v7 = *a1;
        if (*a1)
        {
          v8 = 0;
          v9 = 0;
          v10 = 0;
          do
          {
            v10 += v7[2];
            v7 = *v7;
            v9 -= 16;
            --v8;
          }

          while (v7);
          if (v8 >= 0xF000000000000001 && (v11 = -v9, (v12 = calloc(-v9, 1uLL)) != 0))
          {
            v13 = v12;
            v14 = *a1;
            if (*a1)
            {
              v15 = v12;
              do
              {
                *v15++ = *(v14 + 1);
                v14 = *v14;
              }

              while (v14);
            }

            qsort(v12, -v8, 0x10uLL, sub_22E9F4F14);
            v16 = ccder_sizeof();
            v17 = calloc(v16, 1uLL);
            v18 = v17;
            if (v17)
            {
              v25 = v17;
              v26 = &v17[v16];
              v19 = v8 - 1;
              v20 = v13 - v9 - 8;
              while (!__CFADD__(v19++, 1))
              {
                v22 = v20 - 16;
                v23 = ccder_blob_encode_body();
                v20 = v22;
                if ((v23 & 1) == 0)
                {
                  goto LABEL_16;
                }
              }

              if (!ccder_blob_encode_tl() || v25 != v26)
              {
LABEL_16:
                v3 = 0xFFFFFFFFLL;
                goto LABEL_20;
              }

              v3 = 0;
              *a2 = v18;
              *a3 = v16;
              v18 = 0;
            }

            else
            {
              v3 = 4294967279;
            }

LABEL_20:
            memset_s(v13, v11, 0, v11);
            free(v13);
            if (v18)
            {
              memset_s(v18, v16, 0, v16);
              free(v18);
            }
          }

          else
          {
            return 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v3;
}

uint64_t sub_22E9F4CD0()
{
  result = sub_22E9E7630();
  if (v0 && v3 && v4)
  {
    ccder_sizeof();
    v5 = sub_22E9E75E4();
    if (sub_22E9E7618(v5))
    {
      sub_22E9E75B4();
      v6 = ccder_blob_encode_body();
      if (v6 && (sub_22E9E75D8(v6, v7, v8, v9, v10, v11, v12, v13, v32), v14 = ccder_blob_encode_tl(), v14) && (sub_22E9E7544(v14, v15, v16, v17, v18, v19, v20, v21, v33, v35, v37, v39), sub_22E9E7534(), sub_22E9E7590(v22, v23, v24, v25, v26, v27, v28, v29, v34, v36, v38, v40), sub_22E9E7534(), v30 == v1) && (v31 = sub_22E9E7600()) != 0)
      {
        return sub_22E9E7518(v31);
      }

      else
      {
        sub_22E9E7570();
        free(v1);
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      return 4294967279;
    }
  }

  return result;
}

uint64_t sub_22E9F4DB4(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v3 = 4294967285;
  v17 = 0;
  if (a1 && a2 && a3)
  {
    if (*a1 && sub_22E9F4CD0() || a1[2] && sub_22E9F4CD0() || a1[4] && sub_22E9F4CD0() || a1[6] && sub_22E9F4CD0() || a1[8] && sub_22E9F4CD0() || a1[10] && sub_22E9F4CD0())
    {
      v3 = 4294967273;
    }

    else
    {
      v5 = sub_22E9F4B00(&v17, &v15, &v16);
      if (v5)
      {
        v3 = 0xFFFFFFFFLL;
      }

      else
      {
        v3 = 0;
        sub_22E9E75C8(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15, v16);
      }
    }
  }

  sub_22E9E7498(&v17);
  return v3;
}

uint64_t sub_22E9F4F14(const void **a1, void **a2)
{
  v5 = *a1;
  __s2 = *a2;
  if (!ccder_blob_decode_sequence_tl() || !ccder_blob_decode_sequence_tl() || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !v5 || !ccder_blob_decode_tag() || !ccder_blob_decode_len() || !__s2)
  {
    return 4294967293;
  }

  v3 = memcmp(v5, __s2, 0);
  if (v3 > 0)
  {
    return 1;
  }

  else
  {
    return ((v3 != 0) << 31 >> 31);
  }
}

void sub_22E9F5054(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = __error();
  v3 = strerror(*v2);
  v4 = *__error();
  v5 = 136315394;
  v6 = v3;
  v7 = 1024;
  v8 = v4;
  _os_log_error_impl(&dword_22E9CA000, a1, OS_LOG_TYPE_ERROR, "No code for POSIX error: %s (%d)", &v5, 0x12u);
}

void sub_22E9F511C()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

void sub_22E9F517C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = 138478083;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_22E9CA000, log, OS_LOG_TYPE_ERROR, "failed to get terms for altDSID %{private}@: %@", &v4, 0x16u);
}

void sub_22E9F5208()
{
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22E9F5278()
{
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22E9F52E8()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F539C()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F53D8()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5414()
{
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22E9F5484(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 40);
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2112;
  v6 = v3;
  _os_log_error_impl(&dword_22E9CA000, log, OS_LOG_TYPE_ERROR, "srp_challenge_process failed: %d, %@", v4, 0x12u);
}

void sub_22E9F5514(uint8_t *buf, int a2, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a2;
  _os_log_error_impl(&dword_22E9CA000, log, OS_LOG_TYPE_ERROR, "unknown reqVersion: %d", buf, 8u);
}

void sub_22E9F555C()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5598()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F55D4(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_length(a1, a2, a3);
  sub_22E9DC7C0();
  sub_22E9F2B00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_22E9F5654()
{
  sub_22E9DC7C0();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_22E9F56C4(void *a1, const char *a2, uint64_t a3)
{
  objc_msgSend_reqVersion(a1, a2, a3);
  sub_22E9F2B00();
  _os_log_error_impl(v3, v4, v5, v6, v7, 8u);
}

void sub_22E9F5748()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5784()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F57C0()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F57FC()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_22E9F5838()
{
  sub_22E9F2AF4();
  sub_22E9F2AE8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}