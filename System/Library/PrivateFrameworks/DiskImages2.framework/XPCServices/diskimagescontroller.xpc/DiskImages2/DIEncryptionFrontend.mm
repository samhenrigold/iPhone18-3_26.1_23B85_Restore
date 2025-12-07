@interface DIEncryptionFrontend
- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error;
- (BOOL)addPassphraseEntryWithXpcHandler:(id)handler flags:(unint64_t)flags usage:(int64_t)usage error:(id *)error;
- (BOOL)askPermissionWithRememberPassword:(BOOL *)password error:(id *)error;
- (BOOL)checkAuthEntriesWithHasPassphraseEntry:(BOOL *)entry hasPublicKeyEntry:(BOOL *)keyEntry error:(id *)error;
- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error;
- (BOOL)keychainUnlockWithError:(id *)error;
- (BOOL)keychainUnlockWithIsSystemKeychain:(BOOL)keychain error:(id *)error;
- (BOOL)setPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)storeInKeychainWithPassphrase:(id)passphrase forceSystemKeychain:(BOOL)keychain error:(id *)error;
- (BOOL)unlockUsingPublicKeyWithError:(id *)error;
- (BOOL)unlockUsingSaksWithError:(id *)error;
- (BOOL)unlockUsingSymmetricKeyWithError:(id *)error;
- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)unlockWithXpcHandler:(id)handler error:(id *)error;
- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error;
- (BOOL)validateDeserializationWithError:(id *)error;
- (DIEncryptionFrontend)initWithCoder:(id)coder;
- (DIEncryptionFrontend)initWithParams:(id)params;
- (NSString)CLIPassphrasePromptCreate;
- (NSString)CLIPassphrasePromptUnlock;
- (NSString)GUIPassphrasePromptCreate;
- (NSString)GUIPassphrasePromptUnlock;
- (expected<crypto::crypto_serializer_t,)getSerializerWithAuthTable:(DIEncryptionFrontend *)self;
- (id).cxx_construct;
- (id)getCertificateWithCertificatePath:(id)path error:(id *)error;
- (id)getCertificateWithPublicKey:(id)key error:(id *)error;
- (unint64_t)flags;
- (void)encodeWithCoder:(id)coder;
- (void)generateAuthTableWithError:(id *)error;
@end

@implementation DIEncryptionFrontend

- (DIEncryptionFrontend)initWithParams:(id)params
{
  paramsCopy = params;
  v11.receiver = self;
  v11.super_class = DIEncryptionFrontend;
  v6 = [(DIEncryptionFrontend *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_diParams, params);
    if ([(DIEncryptionFrontend *)v7 validateDeserializationWithError:0])
    {
      encryptionUUID = [paramsCopy encryptionUUID];
      encryptionUUID = v7->_encryptionUUID;
      v7->_encryptionUUID = encryptionUUID;
    }
  }

  return v7;
}

- (NSString)GUIPassphrasePromptCreate
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter a new password to secure “%@”", lastPathComponent];

  return v5;
}

- (NSString)GUIPassphrasePromptUnlock
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter password to access “%@”", lastPathComponent];

  return v5;
}

- (NSString)CLIPassphrasePromptCreate
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter a new password to secure “%@”: ", lastPathComponent];

  return v5;
}

- (NSString)CLIPassphrasePromptUnlock
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  lastPathComponent = [inputURL lastPathComponent];
  v5 = [NSString stringWithFormat:@"Enter password to access “%@”: ", lastPathComponent];

  return v5;
}

- (unint64_t)flags
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  readPassphraseFlags = [diParams readPassphraseFlags];

  v4 = isatty(0);
  v5 = 2;
  if (!v4)
  {
    v5 = 8;
  }

  v6 = readPassphraseFlags & 0xFFFFFFFFFFFFFFF5;
  if (v4)
  {
    v6 = readPassphraseFlags;
  }

  if ((readPassphraseFlags & 8) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (+[DIEncryptionFrontend hasGUIaccess])
  {
    return v7;
  }

  else
  {
    return v7 & 0xFFFFFFFFFFFFFFFBLL;
  }
}

- (id)getCertificateWithCertificatePath:(id)path error:(id *)error
{
  v5 = [NSData dataWithContentsOfFile:path];
  if (!v5)
  {
    v5 = [DIError nilWithPOSIXCode:*__error() description:@"Failed to read from certificate file " error:error];
  }

  return v5;
}

- (id)getCertificateWithPublicKey:(id)key error:(id *)error
{
  keyCopy = key;
  v11 = 0;
  v12[0] = kSecClass;
  v12[1] = kSecAttrPublicKeyHash;
  v13[0] = kSecClassCertificate;
  v13[1] = keyCopy;
  v12[2] = kSecReturnData;
  v13[2] = &__kCFBooleanTrue;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:3];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  v8 = SecItemCopyMatching(v7, &v11);
  if (v8)
  {
    v9 = [DIError nilWithOSStatus:v8 verboseInfo:@"Failed to find keychain item using hashed key" error:error];
  }

  else
  {
    v9 = v11;
  }

  return v9;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error
{
  stdinCopy = stdin;
  v9 = *__error();
  v10 = sub_1000E044C();
  if (v10)
  {
    v39 = 0;
    v12 = sub_1000E03D8(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *buf = 68157954;
    v41 = 72;
    v42 = 2080;
    v43 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
    LODWORD(v38) = 18;
    v14 = _os_log_send_and_compose_impl(v13, &v39, 0, 0, &_mh_execute_header, v12, 0, "%.*s: Asking for passphrase using readpassphrase", buf, v38);

    if (v14)
    {
      fprintf(__stderrp, "%s\n", v14);
      free(v14);
    }
  }

  else
  {
    v15 = sub_1000E03D8(v10, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v41 = 72;
      v42 = 2080;
      v43 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Asking for passphrase using readpassphrase", buf, 0x12u);
    }
  }

  *__error() = v9;
  if (usage)
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptCreate];
    v17 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v19 = 32;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptUnlock];
    v20 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v19 = 32;
    }

    else
    {
      v19 = 2;
    }
  }

  v21 = readpassphrase(uTF8String, __s1, 0x102uLL, v19);

  if (v21)
  {
    if (!usage)
    {
      goto LABEL_24;
    }

    if (stdinCopy)
    {
      goto LABEL_24;
    }

    cLIVerifyPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
    v23 = cLIVerifyPassphrasePromptCreate == 0;

    if (v23)
    {
      goto LABEL_24;
    }

    cLIVerifyPassphrasePromptCreate2 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
    v25 = cLIVerifyPassphrasePromptCreate2;
    v26 = readpassphrase([cLIVerifyPassphrasePromptCreate2 UTF8String], buf, 0x102uLL, 2);

    if (!v26)
    {
      return [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:error];
    }

    if (!strncmp(__s1, buf, 0x101uLL))
    {
LABEL_24:
      if (usage == 1)
      {
        return [(DIEncryptionFrontend *)self setPassphrase:__s1 error:error];
      }

      if (usage)
      {
        return [DIError failWithPOSIXCode:80 verboseInfo:@"Failed to use the passphrase that was given" error:error];
      }

      return [(DIEncryptionFrontend *)self unlockWithPassphrase:__s1 error:error];
    }

    return [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:error];
  }

  if (stdinCopy)
  {
    return [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:error];
  }

  v28 = *__error();
  v29 = sub_1000E044C();
  if (v29)
  {
    v39 = 0;
    v31 = sub_1000E03D8(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *buf = 68157954;
    v41 = 72;
    v42 = 2080;
    v43 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
    LODWORD(v38) = 18;
    v33 = _os_log_send_and_compose_impl(v32, &v39, 0, 0, &_mh_execute_header, v31, 0, "%.*s: Failed to read passphrase from TTY", buf, v38);

    if (v33)
    {
      fprintf(__stderrp, "%s\n", v33);
      free(v33);
    }
  }

  else
  {
    v34 = sub_1000E03D8(v29, v30);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v41 = 72;
      v42 = 2080;
      v43 = "[DIEncryptionFrontend consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "%.*s: Failed to read passphrase from TTY", buf, 0x12u);
    }
  }

  *__error() = v28;
  v35 = [NSError errorWithDomain:NSPOSIXErrorDomain code:25 userInfo:0];
  v36 = [DIError failWithInError:v35 outError:error];

  return v36;
}

- (BOOL)storeInKeychainWithPassphrase:(id)passphrase forceSystemKeychain:(BOOL)keychain error:(id *)error
{
  passphraseCopy = passphrase;
  diParams = [(DIEncryptionFrontend *)self diParams];
  inputURL = [diParams inputURL];
  path = [inputURL path];
  lastPathComponent = [path lastPathComponent];

  uTF8String = [passphraseCopy UTF8String];
  if (uTF8String && *uTF8String)
  {
    v14 = [[NSData alloc] initWithBytes:uTF8String length:strlen(uTF8String)];
    v41[0] = kSecClassGenericPassword;
    v40[0] = kSecClass;
    v40[1] = kSecAttrAccount;
    encryptionUUID = [(DIEncryptionFrontend *)self encryptionUUID];
    uUIDString = [encryptionUUID UUIDString];
    v41[1] = uUIDString;
    v41[2] = @"disk image password";
    v40[2] = kSecAttrDescription;
    v40[3] = kSecAttrLabel;
    v41[3] = lastPathComponent;
    v41[4] = lastPathComponent;
    v40[4] = kSecAttrService;
    v40[5] = kSecAttrSynchronizable;
    v40[6] = kSecValueData;
    v41[5] = &__kCFBooleanTrue;
    v41[6] = v14;
    v17 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:7];
    v18 = [NSMutableDictionary dictionaryWithDictionary:v17];

    v33 = 0;
    if (keychain)
    {
      goto LABEL_31;
    }

    if (![(DIEncryptionFrontend *)self checkWithHasIcloudKeychain:&v33 error:error])
    {
LABEL_17:
      v19 = 0;
LABEL_27:

      goto LABEL_28;
    }

    if ((v33 & 1) == 0)
    {
LABEL_31:
      if (![DIEncryptionFrontend updateSystemKeychainAttrWithDict:v18 isStoring:1 error:error])
      {
        goto LABEL_17;
      }
    }

    v20 = *__error();
    v21 = sub_1000E044C();
    if (v21)
    {
      v32 = 0;
      v23 = sub_1000E03D8(v21, v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = 3;
      }

      else
      {
        v24 = 2;
      }

      v25 = "system";
      *buf = 68158210;
      v35 = 80;
      v37 = "[DIEncryptionFrontend storeInKeychainWithPassphrase:forceSystemKeychain:error:]";
      v36 = 2080;
      if (v33)
      {
        v25 = "iCloud";
      }

      v38 = 2080;
      v39 = v25;
      LODWORD(v31) = 28;
      v26 = _os_log_send_and_compose_impl(v24, &v32, 0, 0, &_mh_execute_header, v23, 0, "%.*s: Storing passphrase in the %s keychain", buf, v31);

      if (v26)
      {
        fprintf(__stderrp, "%s\n", v26);
        free(v26);
      }
    }

    else
    {
      v27 = sub_1000E03D8(v21, v22);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        if (v33)
        {
          v28 = "iCloud";
        }

        else
        {
          v28 = "system";
        }

        *buf = 68158210;
        v35 = 80;
        v36 = 2080;
        v37 = "[DIEncryptionFrontend storeInKeychainWithPassphrase:forceSystemKeychain:error:]";
        v38 = 2080;
        v39 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "%.*s: Storing passphrase in the %s keychain", buf, 0x1Cu);
      }
    }

    *__error() = v20;
    v29 = SecItemAdd(v18, 0);
    if (v29)
    {
      v19 = [DIError failWithOSStatus:v29 description:@"Failed to store the passphrase in the keychain" error:error];
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_27;
  }

  v19 = [DIError failWithEnumValue:154 verboseInfo:@"Cannot store an empty passphrase" error:error];
LABEL_28:

  return v19;
}

- (BOOL)askPermissionWithRememberPassword:(BOOL *)password error:(id *)error
{
  if (![(DIEncryptionFrontend *)self allowStoringInKeychain])
  {
    return 1;
  }

  v6 = *__error();
  v7 = sub_1000E044C();
  if (v7)
  {
    *error = 0;
    v9 = sub_1000E03D8(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *buf = 68157954;
    *&buf[4] = 64;
    v25 = 2080;
    v26 = "[DIEncryptionFrontend askPermissionWithRememberPassword:error:]";
    LODWORD(v20) = 18;
    v11 = _os_log_send_and_compose_impl(v10, error, 0, 0, &_mh_execute_header, v9, 0, "%.*s: Asking user permission to store the passphrase in the keychain", buf, v20);

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E03D8(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 64;
      v25 = 2080;
      v26 = "[DIEncryptionFrontend askPermissionWithRememberPassword:error:]";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Asking user permission to store the passphrase in the keychain", buf, 0x12u);
    }
  }

  *__error() = v6;
  error[0] = 0;
  v22[0] = kCFUserNotificationAlertHeaderKey;
  v22[1] = kCFUserNotificationDefaultButtonTitleKey;
  v23[0] = @"Remember password in my keychain?";
  v23[1] = @"Yes";
  v22[2] = kCFUserNotificationOtherButtonTitleKey;
  v22[3] = kCFUserNotificationAlternateButtonTitleKey;
  v23[2] = @"No";
  v23[3] = @"Cancel";
  v13 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
  v14 = CFUserNotificationCreate(0, 0.0, 3uLL, error, v13);
  v15 = v14;
  if (!v14)
  {
    v18 = [NSString stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error[0]];
    v17 = [DIError failWithEnumValue:154 verboseInfo:v18 error:error];

    return v17;
  }

  *buf = 0;
  if (!CFUserNotificationReceiveResponse(v14, 0.0, buf))
  {
    if (*buf != 2)
    {
      if (*buf)
      {
        v16 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:error];
        goto LABEL_14;
      }

      *password = 1;
    }

    return 1;
  }

  v16 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:error];
LABEL_14:
  v17 = v16;

  return v17;
}

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error
{
  error = 0;
  if (usage)
  {
    gUIPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v8 = [NSMutableArray arrayWithObject:gUIPassphraseLabelCreate];

    gUIVerifyPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v10 = 65539;
    v11 = gUIVerifyPassphraseLabelCreate != 0;

    if (gUIVerifyPassphraseLabelCreate)
    {
      gUIVerifyPassphraseLabelCreate2 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v8 addObject:gUIVerifyPassphraseLabelCreate2];

      v10 = 196611;
    }

    v31[0] = kCFUserNotificationAlertHeaderKey;
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    gUIPassphraseLabelUnlock = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v8 = [NSMutableArray arrayWithObject:gUIPassphraseLabelUnlock];

    v31[0] = kCFUserNotificationAlertHeaderKey;
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v11 = 0;
    v10 = 65539;
  }

  v32[0] = gUIPassphrasePromptCreate;
  v32[1] = @"OK";
  v31[1] = kCFUserNotificationDefaultButtonTitleKey;
  v31[2] = kCFUserNotificationAlternateButtonTitleKey;
  v31[3] = kCFUserNotificationTextFieldTitlesKey;
  v32[2] = @"Cancel";
  v32[3] = v8;
  v15 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:4];
  v16 = [NSMutableDictionary dictionaryWithDictionary:v15];

  v17 = CFUserNotificationCreate(0, 0.0, v10, &error, v16);
  v18 = v17;
  if (!v17)
  {
    error = [NSString stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v19 = [DIError failWithEnumValue:154 verboseInfo:error error:error];

    goto LABEL_14;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v17, 0.0, &responseFlags))
  {
    v28 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v21 = 0;
      v22 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:error];
    }

    else
    {
      v21 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 0);
      if (v11)
      {
        v24 = CFUserNotificationGetResponseValue(v18, kCFUserNotificationTextFieldValuesKey, 1);
        if (![v21 isEqualToString:v24])
        {
          v19 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:error];

          goto LABEL_13;
        }
      }

      if (usage == 1)
      {
        v27 = v21;
        v26 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v21 UTF8String], error);
      }

      else
      {
        if (usage)
        {
          v22 = [DIError failWithPOSIXCode:80 verboseInfo:@"Failed to use the passphrase that was given" error:error];
          goto LABEL_12;
        }

        v25 = v21;
        v26 = -[DIEncryptionFrontend unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v21 UTF8String], error);
      }

      if ((v26 & 1) == 0 || ![(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v28 error:error])
      {
        v19 = 0;
        goto LABEL_13;
      }

      if (![(DIEncryptionFrontend *)self allowStoringInKeychain]|| v28 != 1)
      {
        v19 = 1;
        goto LABEL_13;
      }

      v22 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v21 forceSystemKeychain:0 error:error];
    }

LABEL_12:
    v19 = v22;
LABEL_13:

    goto LABEL_14;
  }

  v19 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:error];
LABEL_14:

  return v19;
}

- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error
{
  frontendCopy = frontend;
  v7 = [frontendCopy validateDeserializationWithError:error];
  if (v7)
  {
    diParams = [frontendCopy diParams];
    diskImageParamsXPC = [diParams diskImageParamsXPC];
    diParams2 = [(DIEncryptionFrontend *)self diParams];
    [diParams2 setDiskImageParamsXPC:diskImageParamsXPC];

    -[DIEncryptionFrontend setAllowStoringInKeychain:](self, "setAllowStoringInKeychain:", [frontendCopy allowStoringInKeychain]);
  }

  return v7;
}

- (DIEncryptionFrontend)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diParams"];
  v6 = [(DIEncryptionFrontend *)self initWithParams:v5];
  if (v6)
  {
    v6->_allowStoringInKeychain = [coderCopy decodeBoolForKey:@"allowStoringInKeychain"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diParams = [(DIEncryptionFrontend *)self diParams];
  [coderCopy encodeObject:diParams forKey:@"diParams"];

  [coderCopy encodeBool:-[DIEncryptionFrontend allowStoringInKeychain](self forKey:{"allowStoringInKeychain"), @"allowStoringInKeychain"}];
}

- (BOOL)validateDeserializationWithError:(id *)error
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  LOBYTE(error) = [diParams validateDeserializationWithError:error];

  return error;
}

- (void)generateAuthTableWithError:(id *)error
{
  p_auth_table = &self->auth_table;
  if (!self->auth_table.__engaged_)
  {
    diParams = [(DIEncryptionFrontend *)self diParams];
    diskImageParamsXPC = [diParams diskImageParamsXPC];
    backendXPC = [diskImageParamsXPC backendXPC];

    if (backendXPC)
    {
      objc_msgSend_getCryptoHeaderBackend(backendXPC);
      if (v12)
      {
        [backendXPC cryptoHeader];
        sub_1001886C0();
      }
    }

    else
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }

    error = [DIError nilWithUnexpected:v10 verboseInfo:v11 error:@"Failed to open crypto header", error];
    p_auth_table = 0;
    if (v12 == 1 && v11)
    {
      sub_10000367C(v11);
    }
  }

  return p_auth_table;
}

- (expected<crypto::crypto_serializer_t,)getSerializerWithAuthTable:(DIEncryptionFrontend *)self
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];
  backendXPC = [diskImageParamsXPC backendXPC];
  v10 = backendXPC;
  if (backendXPC)
  {
    objc_msgSend_getCryptoHeaderBackend(backendXPC);
  }

  else
  {
    v20 = 0;
    v21 = 0;
  }

  if (v21)
  {
    diParams2 = [(DIEncryptionFrontend *)self diParams];
    v13 = diParams2;
    if (diParams2)
    {
      objc_msgSend_backend(diParams2);
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }

    sub_100030C94(&v16, &v18);
    if (v17)
    {
      sub_10000367C(v17);
    }

    v14 = v18[1];
    v15 = v18[2];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100188860(v14, &v20, a4, retstr);
    if (v15)
    {
      sub_10000367C(v15);
    }

    result = v19;
    if (v19)
    {
      sub_10000367C(v19);
    }

    if (v21)
    {
      result = v20.var0.var0.__cntrl_;
      if (v20.var0.var0.__cntrl_)
      {
        sub_10000367C(v20.var0.var0.__cntrl_);
      }
    }
  }

  else
  {
    retstr->var0.var0.var0 = v20;
    LOBYTE(retstr[2].var0.var0.var0.var0.var1.var1) = 0;
  }

  return result;
}

- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  v20 = diskImageParamsXPC;
  backendXPC = [diskImageParamsXPC backendXPC];
  v10 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v11 = v10;
  if (v10)
  {
    v12 = *v10;
    v28 = v10;
    v29 = v12;
    v30[0] = 0;
    v31 = 0;
    v13 = &selRef_stringWithCString_encoding_;
    if (v12 == v10[1])
    {
LABEL_20:
      sleep(2u);
      error = [v13 + 445 failWithPOSIXCode:80 description:@"Incorrect passphrase" error:error];
    }

    else
    {
      while (1)
      {
        v14 = sub_100031244(&v28);
        if (!*(v14 + 632))
        {
          v15 = sub_100180660(v14, passphrase, &v21);
          if (v23 == 1)
          {
            [backendXPC cryptoHeader];
            sub_100036F78();
          }

          v16 = std::generic_category();
          *buf = 35;
          v27[0] = v16;
          if (*(*v22 + 32))(v22, v21, buf) || ((*(*v27[0] + 40))(v27[0], &v21, *buf))
          {
            v17 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v21 error:v22, error];
            v17 = 0;
          }

          if (v23 == 1)
          {
            *buf = &v21;
            sub_100036760(buf);
          }

          if ((v17 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v28, &v24);
        if (v25[640] == 1)
        {
          sub_100035E5C(v25);
        }

        if (v28 == v11 && v29 == v11[1])
        {
          if (v31)
          {
            sub_100035E5C(v30);
          }

          v13 = &selRef_stringWithCString_encoding_;
          goto LABEL_20;
        }
      }

      if (v31)
      {
        sub_100035E5C(v30);
      }
    }
  }

  else
  {
    error = 0;
  }

  return error & 1;
}

- (BOOL)setPassphrase:(const char *)passphrase error:(id *)error
{
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  if (!v7)
  {
    LOBYTE(v10) = 0;
    return v10 & 1;
  }

  v8 = v7;
  objc_msgSend_getSerializerWithAuthTable_(self);
  if (v18)
  {
    LODWORD(v22) = 8;
    sub_10017FF04(v8, passphrase, &v22, v17, &v26);
    if (v28)
    {
      (*(v17[0] + 1))(v15, v17, &v27 + 4);
      if (v16)
      {
        v9 = *(v8 + 8);
        v19[0] = v8;
        v19[1] = v9;
        v10 = v19;
        v20[0] = 0;
        v21 = 0;
        sub_10017FA9C(v8, v15, v19, &v22);
        if (v21 == 1)
        {
          sub_100035E5C(v20);
        }

        v11 = v25;
        if (v25 & 1) != 0 || (LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to add passphrase entry to auth table", error], (v25))
        {
          if (v24[640] == 1)
          {
            sub_100035E5C(v24);
          }

          if (v11)
          {
            (*(v17[0] + 4))(&v22, v17, v8);
            v12 = v24[0];
            if ((v24[0] & 1) == 0)
            {
              LOBYTE(v10) = [DIError failWithUnexpected:v22 verboseInfo:v23 error:@"Failed to update crypto header", error];
            }

            LOBYTE(v10) = v12 | v10;
          }
        }
      }

      else
      {
        LOBYTE(v10) = [DIError failWithUnexpected:*&v15[0] verboseInfo:*(&v15[0] + 1) error:@"Failed to serialize passphrase to crypto header", error];
      }

      if (v16 == 1)
      {
        sub_100036B7C(v15);
      }

      goto LABEL_19;
    }

    error = [DIError failWithUnexpected:v26 verboseInfo:v27 error:@"Failed to create passphrase auth entry", error];
  }

  else
  {
    error = [DIError failWithUnexpected:v17[0] verboseInfo:v17[1] error:@"Failed to create crypto serializer", error];
  }

  LOBYTE(v10) = error;
LABEL_19:
  if (v18 == 1)
  {
    (*(v17[0] + 7))(v17);
  }

  return v10 & 1;
}

- (BOOL)addPassphraseEntryWithXpcHandler:(id)handler flags:(unint64_t)flags usage:(int64_t)usage error:(id *)error
{
  flagsCopy = flags;
  handlerCopy = handler;
  if ((flagsCopy & 8) != 0)
  {
    v11 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:1 usage:usage error:error];
    goto LABEL_14;
  }

  if (([(DIEncryptionFrontend *)self flags]& 2) != 0)
  {
    v19 = 0;
    v12 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:0 usage:usage error:&v19];
    v13 = v19;
    v14 = v13;
    if (v12)
    {
      v15 = 1;
    }

    else
    {
      code = [v13 code];
      if (code >= 0)
      {
        v17 = code;
      }

      else
      {
        v17 = -code;
      }

      if (v17 == 25)
      {

        if ((flagsCopy & 4) == 0)
        {
          goto LABEL_4;
        }

LABEL_13:
        v11 = [handlerCopy GUIAskForPassphraseWithEncryptionFrontend:self usage:usage error:error];
        goto LABEL_14;
      }

      v15 = [DIError failWithInError:v14 outError:error];
    }

    goto LABEL_15;
  }

  if ((flagsCopy & 4) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  v11 = [DIError failWithPOSIXCode:25 verboseInfo:@"Cannot retrieve passphrase from user via TTY or GUI" error:error];
LABEL_14:
  v15 = v11;
LABEL_15:

  return v15;
}

- (BOOL)unlockWithXpcHandler:(id)handler error:(id *)error
{
  handlerCopy = handler;
  diParams = [(DIEncryptionFrontend *)self diParams];
  mutableSymmetricKey = [diParams mutableSymmetricKey];

  if (!mutableSymmetricKey)
  {
    flags = [(DIEncryptionFrontend *)self flags];
    v39 = 0;
    if (![(DIEncryptionFrontend *)self checkAuthEntriesWithHasPassphraseEntry:&v39 + 1 hasPublicKeyEntry:&v39 error:error])
    {
      goto LABEL_25;
    }

    if (v39 == 1 && (flags & 1) != 0)
    {
      if (![(DIEncryptionFrontend *)self unlockUsingPublicKeyWithError:error])
      {
        goto LABEL_25;
      }

      diParams2 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend = [diParams2 hasUnlockedBackend];

      if (hasUnlockedBackend)
      {
LABEL_9:
        v10 = 1;
        goto LABEL_26;
      }
    }

    if (HIBYTE(v39) != 1)
    {
      v22 = @"The image is encrypted but has no passphrase auth entry";
      v23 = 81;
      goto LABEL_28;
    }

    if ((flags & 8) != 0)
    {
      v9 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:1 usage:0 error:error];
      goto LABEL_3;
    }

    if (flags)
    {
      if (![(DIEncryptionFrontend *)self unlockUsingPublicKeyWithError:error])
      {
        goto LABEL_25;
      }

      diParams3 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend2 = [diParams3 hasUnlockedBackend];

      if (hasUnlockedBackend2)
      {
        goto LABEL_9;
      }

      if (![handlerCopy keychainUnlockWithEncryptionUnlocker:self error:error])
      {
        goto LABEL_25;
      }

      diParams4 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend3 = [diParams4 hasUnlockedBackend];

      if (hasUnlockedBackend3)
      {
        goto LABEL_9;
      }

      if ([(DIEncryptionFrontend *)self allowStoringInKeychain])
      {
        if (![(DIEncryptionFrontend *)self lookupLegacyKeychainWithXpcHandler:handlerCopy error:error])
        {
          goto LABEL_25;
        }

        diParams5 = [(DIEncryptionFrontend *)self diParams];
        hasUnlockedBackend4 = [diParams5 hasUnlockedBackend];

        if (hasUnlockedBackend4)
        {
          goto LABEL_9;
        }
      }
    }

    if ([(DIEncryptionFrontend *)self unlockUsingSaksWithError:error])
    {
      diParams6 = [(DIEncryptionFrontend *)self diParams];
      hasUnlockedBackend5 = [diParams6 hasUnlockedBackend];

      if (hasUnlockedBackend5)
      {
        goto LABEL_9;
      }

      if ((flags & 2) != 0)
      {
        v38 = 0;
        v25 = [(DIEncryptionFrontend *)self consoleAskForPassphraseWithUseStdin:0 usage:0 error:&v38];
        v26 = v38;
        v27 = v26;
        if (v25)
        {
LABEL_31:
          v10 = 1;
LABEL_50:

          goto LABEL_26;
        }

        code = [v26 code];
        if (code >= 0)
        {
          v29 = code;
        }

        else
        {
          v29 = -code;
        }

        if (v29 != 25)
        {
          v36 = [DIError failWithInError:v27 outError:error];
LABEL_49:
          v10 = v36;
          goto LABEL_50;
        }

        if ((flags & 4) == 0)
        {
          goto LABEL_24;
        }
      }

      else if ((flags & 4) == 0)
      {
LABEL_24:
        v22 = @"Cannot retrieve passphrase from user via TTY or GUI";
        v23 = 25;
LABEL_28:
        v9 = [DIError failWithPOSIXCode:v23 verboseInfo:v22 error:error];
        goto LABEL_3;
      }

      v30 = 0;
      v31 = 2;
      while (1)
      {
        v37 = v30;
        v32 = [handlerCopy GUIAskForPassphraseWithEncryptionFrontend:self usage:0 error:&v37];
        v27 = v37;

        if (v32)
        {
          goto LABEL_31;
        }

        code2 = [v27 code];
        if (code2 >= 0)
        {
          v34 = code2;
        }

        else
        {
          v34 = -code2;
        }

        v35 = v34 != 80 || v31-- == 0;
        v30 = v27;
        if (v35)
        {
          v36 = [DIError failWithInError:v27 outError:error];
          goto LABEL_49;
        }
      }
    }

LABEL_25:
    v10 = 0;
    goto LABEL_26;
  }

  v9 = [(DIEncryptionFrontend *)self unlockUsingSymmetricKeyWithError:error];
LABEL_3:
  v10 = v9;
LABEL_26:

  return v10;
}

- (BOOL)keychainUnlockWithIsSystemKeychain:(BOOL)keychain error:(id *)error
{
  keychainCopy = keychain;
  result = 0;
  v62[0] = kSecClassGenericPassword;
  v61[0] = kSecClass;
  v61[1] = kSecAttrAccount;
  encryptionUUID = [(DIEncryptionFrontend *)self encryptionUUID];
  uUIDString = [encryptionUUID UUIDString];
  v62[1] = uUIDString;
  v62[2] = kSecAttrSynchronizableAny;
  v61[2] = kSecAttrSynchronizable;
  v61[3] = kSecReturnData;
  v61[4] = kSecUseDataProtectionKeychain;
  v62[3] = &__kCFBooleanTrue;
  v62[4] = &__kCFBooleanTrue;
  v9 = [NSDictionary dictionaryWithObjects:v62 forKeys:v61 count:5];
  v10 = [NSMutableDictionary dictionaryWithDictionary:v9];

  if (keychainCopy && ![DIEncryptionFrontend updateSystemKeychainAttrWithDict:v10 isStoring:0 error:0])
  {
    goto LABEL_59;
  }

  v11 = *__error();
  v12 = sub_1000E044C();
  if (v12)
  {
    v53 = 0;
    v14 = sub_1000E03D8(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v16 = "iCloud";
    *buf = 68158210;
    v56 = 65;
    v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    v57 = 2080;
    if (keychainCopy)
    {
      v16 = "system";
    }

    v59 = 2080;
    v60 = v16;
    LODWORD(v52) = 28;
    v17 = _os_log_send_and_compose_impl(v15, &v53, 0, 0, &_mh_execute_header, v14, 0, "%.*s: Looking for encrypted image passphrase in the %s keychain", buf, v52);

    if (v17)
    {
      fprintf(__stderrp, "%s\n", v17);
      free(v17);
    }
  }

  else
  {
    v18 = sub_1000E03D8(v12, v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "iCloud";
      *buf = 68158210;
      v56 = 65;
      v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      v57 = 2080;
      if (keychainCopy)
      {
        v19 = "system";
      }

      v59 = 2080;
      v60 = v19;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%.*s: Looking for encrypted image passphrase in the %s keychain", buf, 0x1Cu);
    }
  }

  *__error() = v11;
  v20 = SecItemCopyMatching(v10, &result);
  v21 = v20;
  if (v20 == -25308)
  {
    v22 = *__error();
    v34 = sub_1000E044C();
    if (!v34)
    {
      v48 = sub_1000E03D8(v34, v35);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v56 = 65;
        v57 = 2080;
        v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
        _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "%.*s: Keychain item requires ACL upgrade", buf, 0x12u);
      }

      goto LABEL_54;
    }

    v53 = 0;
    v36 = sub_1000E03D8(v34, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = 3;
    }

    else
    {
      v37 = 2;
    }

    *buf = 68157954;
    v56 = 65;
    v57 = 2080;
    v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    LODWORD(v52) = 18;
    v27 = _os_log_send_and_compose_impl(v37, &v53, 0, 0, &_mh_execute_header, v36, 0, "%.*s: Keychain item requires ACL upgrade", buf, v52);

    if (v27)
    {
LABEL_24:
      fprintf(__stderrp, "%s\n", v27);
      free(v27);
    }

LABEL_54:
    *__error() = v22;
    v47 = 1;
    [(DIEncryptionFrontend *)self setAllowStoringInKeychain:1];
    goto LABEL_60;
  }

  if (v20)
  {
    if (v20 == -25300)
    {
      v22 = *__error();
      v23 = sub_1000E044C();
      if (!v23)
      {
        v49 = sub_1000E03D8(v23, v24);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 68157954;
          v56 = 65;
          v57 = 2080;
          v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
          _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "%.*s: No matching item found in keychain", buf, 0x12u);
        }

        goto LABEL_54;
      }

      v53 = 0;
      v25 = sub_1000E03D8(v23, v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      *buf = 68157954;
      v56 = 65;
      v57 = 2080;
      v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      LODWORD(v52) = 18;
      v27 = _os_log_send_and_compose_impl(v26, &v53, 0, 0, &_mh_execute_header, v25, 0, "%.*s: No matching item found in keychain", buf, v52);

      if (v27)
      {
        goto LABEL_24;
      }

      goto LABEL_54;
    }

    v38 = *__error();
    v39 = sub_1000E044C();
    if (v39)
    {
      v53 = 0;
      v41 = sub_1000E03D8(v39, v40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = 3;
      }

      else
      {
        v42 = 2;
      }

      *buf = 68158210;
      v56 = 65;
      v57 = 2080;
      v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      v59 = 1024;
      LODWORD(v60) = v21;
      LODWORD(v52) = 24;
      v43 = _os_log_send_and_compose_impl(v42, &v53, 0, 0, &_mh_execute_header, v41, 0, "%.*s: Keychain lookup returned %d", buf, v52);

      if (v43)
      {
        fprintf(__stderrp, "%s\n", v43);
        free(v43);
      }
    }

    else
    {
      v50 = sub_1000E03D8(v39, v40);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v56 = 65;
        v57 = 2080;
        v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
        v59 = 1024;
        LODWORD(v60) = v21;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "%.*s: Keychain lookup returned %d", buf, 0x18u);
      }
    }

    *__error() = v38;
LABEL_59:
    v47 = 1;
    goto LABEL_60;
  }

  v28 = *__error();
  v29 = sub_1000E044C();
  if (v29)
  {
    v53 = 0;
    v31 = sub_1000E03D8(v29, v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = 3;
    }

    else
    {
      v32 = 2;
    }

    *buf = 68157954;
    v56 = 65;
    v57 = 2080;
    v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
    LODWORD(v52) = 18;
    v33 = _os_log_send_and_compose_impl(v32, &v53, 0, 0, &_mh_execute_header, v31, 0, "%.*s: Passphrase found in keychain, unlocking the image", buf, v52);

    if (v33)
    {
      fprintf(__stderrp, "%s\n", v33);
      free(v33);
    }
  }

  else
  {
    v44 = sub_1000E03D8(v29, v30);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v56 = 65;
      v57 = 2080;
      v58 = "[DIEncryptionFrontend keychainUnlockWithIsSystemKeychain:error:]";
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "%.*s: Passphrase found in keychain, unlocking the image", buf, 0x12u);
    }
  }

  *__error() = v28;
  v45 = result;
  v46 = result;
  v47 = -[DIEncryptionFrontend unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v45 bytes], error);

LABEL_60:
  return v47;
}

- (BOOL)keychainUnlockWithError:(id *)error
{
  v7 = 0;
  v5 = [(DIEncryptionFrontend *)self checkWithHasIcloudKeychain:&v7 error:error];
  if (v5 && (v7 != 1 || (v5 = [(DIEncryptionFrontend *)self keychainUnlockWithIsSystemKeychain:0 error:error])))
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (BOOL)unlockUsingSaksWithError:(id *)error
{
  v30 = 0u;
  memset(v31, 0, sizeof(v31));
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v6 = [(DIEncryptionFrontend *)self generateAuthTableWithError:?];
  if (v6)
  {
    v7 = v6;
    v8 = *v6;
    v23 = v6;
    v24 = v8;
    v25[0] = 0;
    v26 = 0;
    if (v8 == v6[1])
    {
      v3 = 1;
    }

    else
    {
      while (1)
      {
        v9 = sub_100031244(&v23);
        if (*(v9 + 632) == 3 && *(v9 + 12) == 9)
        {
          __p = 0;
          v19 = 0;
          v20 = 0;
          sub_100036BE0(&__p, *(v9 + 16), *(v9 + 24), *(v9 + 24) - *(v9 + 16));
          v11 = [NSData dataWithBytes:__p length:v19 - __p];
          v12 = [[NSString alloc] initWithData:v11 encoding:4];
          if ([DIKeyRetriever decryptKeyWithData:v12 destKey:&v27 destKeySize:88 error:error]&& (v13 = [(DIEncryptionFrontend *)self unlockWithPassphrase:&v27 error:error], v30 = 0u, memset(v31, 0, sizeof(v31)), v28 = 0u, v29 = 0u, v27 = 0u, (v13 & 1) != 0))
          {
            diParams = [(DIEncryptionFrontend *)self diParams];
            hasUnlockedBackend = [diParams hasUnlockedBackend];

            v16 = hasUnlockedBackend ^ 1;
            v3 |= hasUnlockedBackend;
          }

          else
          {
            v16 = 0;
            v3 = 0;
          }

          if (__p)
          {
            v19 = __p;
            operator delete(__p);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v23, &v21);
        if (v22[640] == 1)
        {
          sub_100035E5C(v22);
        }

        if (v23 == v7 && v24 == v7[1])
        {
          v3 = 1;
          break;
        }
      }

      if (v26)
      {
        sub_100035E5C(v25);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

- (BOOL)checkAuthEntriesWithHasPassphraseEntry:(BOOL *)entry hasPublicKeyEntry:(BOOL *)keyEntry error:(id *)error
{
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v8 = v7;
  if (v7)
  {
    *entry = 0;
    *keyEntry = 0;
    v9 = *v7;
    v16 = v7;
    v17 = v9;
    v18[0] = 0;
    v19 = 0;
    if (v9 != v7[1])
    {
      do
      {
        v12[0] = entry;
        v12[1] = keyEntry;
        v10 = *(sub_100031244(&v16) + 632);
        if (v10 == -1)
        {
          sub_100036CC4();
        }

        v13 = v12;
        (off_100205A48[v10])(&v13);
        sub_1000312E4(&v16, &v14);
        if (v15[640] == 1)
        {
          sub_100035E5C(v15);
        }
      }

      while (v16 != v8 || v17 != v8[1]);
      if (v19)
      {
        sub_100035E5C(v18);
      }
    }
  }

  return v8 != 0;
}

- (BOOL)unlockUsingPublicKeyWithError:(id *)error
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  v17 = diskImageParamsXPC;
  backendXPC = [diskImageParamsXPC backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v25 = v9;
    v26 = v11;
    v27[0] = 0;
    v28 = 0;
    if (v11 == v9[1])
    {
      error = 1;
    }

    else
    {
      while (1)
      {
        v12 = sub_100031244(&v25);
        if (*(v12 + 632) == 1)
        {
          v13 = sub_1001819E0(v12, &v18);
          if (v20 == 1)
          {
            [backendXPC cryptoHeader];
            sub_100036F78();
          }

          v14 = std::generic_category();
          *buf = 35;
          v24[0] = v14;
          if (*(*v19 + 32))(v19, v18, buf) || ((*(*v24[0] + 40))(v24[0], &v18, *buf))
          {
            v15 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v18 error:v19, error];
            v15 = 0;
          }

          if (v20 == 1)
          {
            *buf = &v18;
            sub_100036760(buf);
          }

          if ((v15 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v25, &v21);
        if (v22[640] == 1)
        {
          sub_100035E5C(v22);
        }

        if (v25 == v10 && v26 == v10[1])
        {
          error = 1;
          break;
        }
      }

      if (v28)
      {
        sub_100035E5C(v27);
      }
    }
  }

  else
  {
    error = 0;
  }

  return error & 1;
}

- (BOOL)unlockUsingSymmetricKeyWithError:(id *)error
{
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  v18 = diskImageParamsXPC;
  backendXPC = [diskImageParamsXPC backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v26 = v9;
    v27 = v11;
    v28[0] = 0;
    v29 = 0;
    if (v11 == v9[1])
    {
LABEL_19:
      error = [DIError failWithPOSIXCode:80 verboseInfo:@"The symmteric key is wrong" error:error];
    }

    else
    {
      while (1)
      {
        v12 = sub_100031244(&v26);
        if (v12[158] == 2)
        {
          diParams2 = [(DIEncryptionFrontend *)self diParams];
          mutableSymmetricKey = [diParams2 mutableSymmetricKey];
          sub_100181EE0(&v19, mutableSymmetricKey, v12);

          if (v21 == 1)
          {
            [backendXPC cryptoHeader];
            sub_100036F78();
          }

          v15 = std::generic_category();
          *buf = 35;
          v25[0] = v15;
          if (*(*v20 + 32))(v20, v19, buf) || ((*(*v25[0] + 40))(v25[0], &v19, *buf))
          {
            v16 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v19 error:v20, error];
            v16 = 0;
          }

          if (v21 == 1)
          {
            *buf = &v19;
            sub_100036760(buf);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        sub_1000312E4(&v26, &v22);
        if (v23[640] == 1)
        {
          sub_100035E5C(v23);
        }

        if (v26 == v10 && v27 == v10[1])
        {
          if (v29)
          {
            sub_100035E5C(v28);
          }

          goto LABEL_19;
        }
      }

      if (v29)
      {
        sub_100035E5C(v28);
      }
    }
  }

  else
  {
    error = 0;
  }

  return error & 1;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 48) = 0;
  return self;
}

@end