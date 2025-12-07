@interface LAPSPasscodePersistenceLAAdapter
- (BOOL)canRemovePasscode:(id *)passcode;
- (id)_localizedErrorMessageForBiometryType:(int64_t)type;
- (id)_localizedErrorTitleForBiometryType:(int64_t)type;
@end

@implementation LAPSPasscodePersistenceLAAdapter

- (BOOL)canRemovePasscode:(id *)passcode
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CD4790]);
  v21 = 0;
  [v5 canEvaluatePolicy:1 error:&v21];
  v6 = v21;
  if ([v6 code] == -7 || objc_msgSend(v6, "code") == -6)
  {
    v7 = LACLogPasscodeService();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
LABEL_6:
      v11 = 1;
      goto LABEL_7;
    }

    *buf = 138412290;
    v25 = v6;
    v8 = "canRemovePasscode: YES (%@)";
    v9 = v7;
    v10 = 12;
LABEL_5:
    _os_log_impl(&dword_238BCD000, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    goto LABEL_6;
  }

  biometryType = [v5 biometryType];
  if (!biometryType)
  {
    v7 = LACLogPasscodeService();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    *buf = 0;
    v8 = "canRemovePasscode: YES (no biometry)";
    v9 = v7;
    v10 = 2;
    goto LABEL_5;
  }

  v14 = biometryType;
  v22[0] = *MEMORY[0x277CCA068];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Biometry Enrolled (%@)", v6];
  v23[0] = v15;
  v22[1] = *MEMORY[0x277CCA450];
  v16 = [(LAPSPasscodePersistenceLAAdapter *)self _localizedErrorTitleForBiometryType:v14];
  v23[1] = v16;
  v22[2] = *MEMORY[0x277CCA498];
  v17 = [(LAPSPasscodePersistenceLAAdapter *)self _localizedErrorMessageForBiometryType:v14];
  v22[3] = @"LAPSInteractiveErrorKey";
  v23[2] = v17;
  v23[3] = MEMORY[0x277CBEC38];
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];
  v7 = [LAPSErrorBuilder errorWithCode:8 userInfo:v18];

  if (passcode)
  {
    v19 = v7;
    *passcode = v7;
  }

  v20 = LACLogPasscodeService();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [(LAPSPasscodePersistenceLAAdapter *)v7 canRemovePasscode:v20];
  }

  v11 = 0;
LABEL_7:

  return v11;
}

- (id)_localizedErrorTitleForBiometryType:(int64_t)type
{
  switch(type)
  {
    case 4:
      v3 = +[LALocalizedString passcodeRemovalNotAllowedTitleOpticID];
      break;
    case 2:
      v3 = +[LALocalizedString passcodeRemovalNotAllowedTitleFaceID];
      break;
    case 1:
      v3 = +[LALocalizedString passcodeRemovalNotAllowedTitleTouchID];
      break;
    default:
      v3 = &stru_284B7B4C0;
      break;
  }

  return v3;
}

- (id)_localizedErrorMessageForBiometryType:(int64_t)type
{
  switch(type)
  {
    case 4:
      v3 = +[LALocalizedString passcodeRemovalNotAllowedTextOpticID];
      break;
    case 2:
      v3 = +[LALocalizedString passcodeRemovalNotAllowedTextFaceID];
      break;
    case 1:
      v3 = +[LALocalizedString passcodeRemovalNotAllowedTextTouchID];
      break;
    default:
      v3 = &stru_284B7B4C0;
      break;
  }

  return v3;
}

- (void)canRemovePasscode:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_238BCD000, a2, OS_LOG_TYPE_ERROR, "canRemovePasscode: NO (%@)", &v2, 0xCu);
}

@end