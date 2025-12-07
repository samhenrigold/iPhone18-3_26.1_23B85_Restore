@interface AAKeychainManager
+ (id)passwordForServiceName:(id)name username:(id)username accessGroup:(id)group;
+ (void)initialize;
+ (void)removePasswordForService:(id)service username:(id)username accessGroup:(id)group;
+ (void)setPassword:(id)password forServiceName:(id)name username:(id)username accessGroup:(id)group;
@end

@implementation AAKeychainManager

+ (void)initialize
{
  _aa_keychainLock = objc_alloc_init(MEMORY[0x1E696AD10]);

  MEMORY[0x1EEE66BB8]();
}

+ (id)passwordForServiceName:(id)name username:(id)username accessGroup:(id)group
{
  v29 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  if (![nameCopy length] || !objc_msgSend(usernameCopy, "length"))
  {
    v18 = 0;
    goto LABEL_23;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], usernameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], nameCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  if (groupCopy)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], groupCopy);
  }

  result = 0;
  v11 = SecItemCopyMatching(Mutable, &result);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = result == 0;
  }

  if (v12)
  {
    v13 = v11;
    v14 = _AALogSystem(v11);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v13 == -25308)
      {
        if (v15)
        {
          *buf = 0;
          v16 = "SecItemCopyMatching Error: errInteractionNotAllowed - The keychain is inaccessible. It may be locked.";
LABEL_17:
          v19 = v14;
          v20 = 2;
LABEL_20:
          _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, v16, buf, v20);
        }
      }

      else if (v15)
      {
        *buf = 67109634;
        v24 = v13;
        v25 = 2112;
        v26 = nameCopy;
        v27 = 2112;
        v28 = usernameCopy;
        v16 = "SecItemCopyMatching result: %d - keychain item %@ - username %@";
        v19 = v14;
        v20 = 28;
        goto LABEL_20;
      }
    }

    else if (v15)
    {
      *buf = 0;
      v16 = "SecItemCopyMatching succeeded with empty results";
      goto LABEL_17;
    }

    v18 = 0;
    goto LABEL_22;
  }

  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [v17 initWithData:result encoding:4];
  CFRelease(result);
LABEL_22:
  CFRelease(Mutable);
LABEL_23:

  return v18;
}

+ (void)setPassword:(id)password forServiceName:(id)name username:(id)username accessGroup:(id)group
{
  result[1] = *MEMORY[0x1E69E9840];
  passwordCopy = password;
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  [_aa_keychainLock lock];
  if ([nameCopy length] && objc_msgSend(passwordCopy, "length") && objc_msgSend(usernameCopy, "length"))
  {
    v13 = [passwordCopy dataUsingEncoding:4];
    v14 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], usernameCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], nameCopy);
    if (groupCopy)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], groupCopy);
    }

    v16 = [objc_opt_class() passwordForServiceName:nameCopy username:usernameCopy accessGroup:groupCopy];
    if (!v16)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE0]);
      result[0] = 0;
      v24 = v13;
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v13);
      v17 = SecItemAdd(Mutable, result);
      if (!v17)
      {
LABEL_18:
        CFRelease(Mutable);

        goto LABEL_19;
      }

      v18 = v17;
      v19 = _AALogSystem(v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v26 = v18;
        _os_log_impl(&dword_1B6F6A000, v19, OS_LOG_TYPE_DEFAULT, "SecItemAdd result: %d", buf, 8u);
      }

      v13 = v24;
    }

    if (([v16 isEqualToString:passwordCopy] & 1) == 0)
    {
      v20 = CFDictionaryCreateMutable(v14, 0, 0, 0);
      CFDictionaryAddValue(v20, *MEMORY[0x1E697B3C0], v13);
      CFDictionaryAddValue(v20, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE0]);
      v21 = SecItemUpdate(Mutable, v20);
      v22 = v21;
      if (v20)
      {
        CFRelease(v20);
      }

      if (v22)
      {
        v23 = _AALogSystem(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(result[0]) = 67109120;
          HIDWORD(result[0]) = v22;
          _os_log_impl(&dword_1B6F6A000, v23, OS_LOG_TYPE_DEFAULT, "SecItemUpdate result: %d", result, 8u);
        }
      }
    }

    goto LABEL_18;
  }

LABEL_19:
  [_aa_keychainLock unlock];
}

+ (void)removePasswordForService:(id)service username:(id)username accessGroup:(id)group
{
  value = service;
  usernameCopy = username;
  groupCopy = group;
  [_aa_keychainLock lock];
  if ([value length] && objc_msgSend(usernameCopy, "length"))
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], usernameCopy);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], value);
    if (groupCopy)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], groupCopy);
    }

    SecItemDelete(Mutable);
    CFRelease(Mutable);
  }

  [_aa_keychainLock unlock];
}

@end