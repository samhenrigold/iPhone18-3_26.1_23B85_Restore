@interface IMTextInputCryptographer
+ (id)sharedCryptographer;
- (IMTextInputCryptographer)init;
- (NSData)deviceSalt;
- (id)stringDigestForName:(id)name;
- (void)prewarmDeviceSalt;
@end

@implementation IMTextInputCryptographer

+ (id)sharedCryptographer
{
  if (qword_1EB2E90C0 != -1)
  {
    sub_1A8256070();
  }

  v3 = qword_1EB2E90C8;

  return v3;
}

- (IMTextInputCryptographer)init
{
  v6.receiver = self;
  v6.super_class = IMTextInputCryptographer;
  v2 = [(IMTextInputCryptographer *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TextInput.crypto", 0);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)prewarmDeviceSalt
{
  if (!self->_deviceSalt)
  {
    block[7] = v2;
    block[8] = v3;
    dispatchQueue = [(IMTextInputCryptographer *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A82561C8;
    block[3] = &unk_1E780FCB0;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (NSData)deviceSalt
{
  v39 = *MEMORY[0x1E69E9840];
  deviceSalt = self->_deviceSalt;
  if (!deviceSalt)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B020]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697AC20]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC40], @"deviceSalt");
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], @"com.apple.TextInput");
    result = 0;
    v6 = SecItemCopyMatching(Mutable, &result);
    v7 = self->_deviceSalt;
    self->_deviceSalt = result;

    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = self->_deviceSalt;
      if (v9)
      {
        v10 = @"NO";
      }

      else
      {
        v10 = @"YES";
      }

      v11 = [(NSData *)v9 length];
      *buf = 138412802;
      *&buf[4] = v10;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      v37 = 1024;
      v38 = v6;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "Received _deviceSalt is nil? %@, length? %lu, with status: %d", buf, 0x1Cu);
    }

    if (self->_deviceSalt)
    {
      goto LABEL_18;
    }

    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1A84E2598(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    memset(buf, 0, 20);
    arc4random_buf(buf, 0x14uLL);
    v20 = CFDataCreate(v4, buf, 20);
    v21 = self->_deviceSalt;
    self->_deviceSalt = v20;

    v22 = self->_deviceSalt;
    if (v22)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v22);
      v23 = SecItemAdd(Mutable, 0);
      if (!v23)
      {
LABEL_18:
        CFRelease(Mutable);
        deviceSalt = self->_deviceSalt;
        goto LABEL_19;
      }

      v24 = v23;
      v25 = IMLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E25D0(v24, v25);
      }

      p_super = &self->_deviceSalt->super;
      self->_deviceSalt = 0;
    }

    else
    {
      p_super = IMLogHandleForCategory();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        sub_1A84E2648(p_super, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    goto LABEL_18;
  }

LABEL_19:

  return deviceSalt;
}

- (id)stringDigestForName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1A8259C50;
  v15 = sub_1A825AF54;
  v16 = 0;
  if ([nameCopy length])
  {
    dispatchQueue = [(IMTextInputCryptographer *)self dispatchQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1A8395B48;
    block[3] = &unk_1E7813DE8;
    block[4] = self;
    v9 = nameCopy;
    v10 = &v11;
    dispatch_sync(dispatchQueue, block);
  }

  v6 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v6;
}

@end