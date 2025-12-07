@interface TUPrivacyManager
+ (TUPrivacyManager)sharedPrivacyManager;
- (BOOL)isIncomingCommunicationBlockedForBusinessID:(id)d;
- (BOOL)isIncomingCommunicationBlockedForEmailAddress:(id)address;
- (BOOL)isIncomingCommunicationBlockedForHandle:(id)handle;
- (BOOL)isIncomingCommunicationBlockedForPhoneNumber:(id)number;
- (NSArray)privacyRules;
- (TUPrivacyManager)init;
- (void)_handleBlockListChanged:(id)changed;
- (void)addRule:(id)rule;
- (void)dealloc;
- (void)removeRule:(id)rule;
- (void)setBlockIncomingCommunication:(BOOL)communication forBusinessID:(id)d;
- (void)setBlockIncomingCommunication:(BOOL)communication forEmailAddress:(id)address;
- (void)setBlockIncomingCommunication:(BOOL)communication forPhoneNumber:(id)number;
@end

@implementation TUPrivacyManager

uint64_t __40__TUPrivacyManager_sharedPrivacyManager__block_invoke()
{
  sharedPrivacyManager_privacyManager = objc_alloc_init(TUPrivacyManager);

  return MEMORY[0x1EEE66BB8]();
}

- (TUPrivacyManager)init
{
  v5.receiver = self;
  v5.super_class = TUPrivacyManager;
  v2 = [(TUPrivacyManager *)&v5 init];
  if (v2)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__handleBlockListChanged_ name:*MEMORY[0x1E6995900] object:0];
  }

  return v2;
}

+ (TUPrivacyManager)sharedPrivacyManager
{
  if (sharedPrivacyManager_onceToken != -1)
  {
    +[TUPrivacyManager sharedPrivacyManager];
  }

  v3 = sharedPrivacyManager_privacyManager;

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUPrivacyManager;
  [(TUPrivacyManager *)&v4 dealloc];
}

- (void)_handleBlockListChanged:(id)changed
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __44__TUPrivacyManager__handleBlockListChanged___block_invoke;
  v3[3] = &unk_1E7424950;
  v3[4] = self;
  TUGuaranteeExecutionOnMainThreadAsync(v3);
}

void __44__TUPrivacyManager__handleBlockListChanged___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"com.apple.TelephonyUtilities.TUPrivacyManager.RulesChanged" object:*(a1 + 32) userInfo:0];
}

- (void)setBlockIncomingCommunication:(BOOL)communication forPhoneNumber:(id)number
{
  communicationCopy = communication;
  v11 = *MEMORY[0x1E69E9840];
  [number phoneNumberRef];
  v5 = CMFItemCreateWithPhoneNumber();
  if (v5)
  {
    v6 = v5;
    v7 = TUDefaultLog(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (communicationCopy)
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "CMFBlockListAddItemForAllServices(%@)", &v9, 0xCu);
      }

      CMFBlockListAddItemForAllServices();
    }

    else
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "CMFBlockListRemoveItemForAllServices(%@)", &v9, 0xCu);
      }

      CMFBlockListRemoveItemFromAllServices();
    }

    CFRelease(v6);
  }
}

- (void)setBlockIncomingCommunication:(BOOL)communication forEmailAddress:(id)address
{
  communicationCopy = communication;
  v11 = *MEMORY[0x1E69E9840];
  v5 = CMFItemCreateWithEmailAddress();
  if (v5)
  {
    v6 = v5;
    v7 = TUDefaultLog(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (communicationCopy)
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "CMFBlockListAddItemForAllServices(%@)", &v9, 0xCu);
      }

      CMFBlockListAddItemForAllServices();
    }

    else
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "CMFBlockListRemoveItemForAllServices(%@)", &v9, 0xCu);
      }

      CMFBlockListRemoveItemFromAllServices();
    }

    CFRelease(v6);
  }
}

- (void)setBlockIncomingCommunication:(BOOL)communication forBusinessID:(id)d
{
  communicationCopy = communication;
  v11 = *MEMORY[0x1E69E9840];
  v5 = CMFItemCreateWithBusinessID();
  if (v5)
  {
    v6 = v5;
    v7 = TUDefaultLog(v5);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (communicationCopy)
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "CMFBlockListAddItemForAllServices(%@)", &v9, 0xCu);
      }

      CMFBlockListAddItemForAllServices();
    }

    else
    {
      if (v8)
      {
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "CMFBlockListRemoveItemForAllServices(%@)", &v9, 0xCu);
      }

      CMFBlockListRemoveItemFromAllServices();
    }

    CFRelease(v6);
  }
}

- (void)addRule:(id)rule
{
  ruleCopy = rule;
  type = [ruleCopy type];
  if (type == 2)
  {
    businessID = [ruleCopy businessID];
    [(TUPrivacyManager *)self setBlockIncomingCommunication:1 forBusinessID:businessID];
  }

  else if (type == 1)
  {
    businessID = [ruleCopy email];
    [(TUPrivacyManager *)self setBlockIncomingCommunication:1 forEmailAddress:businessID];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    businessID = [ruleCopy phoneNumber];
    [(TUPrivacyManager *)self setBlockIncomingCommunication:1 forPhoneNumber:businessID];
  }

LABEL_8:
}

- (void)removeRule:(id)rule
{
  ruleCopy = rule;
  type = [ruleCopy type];
  if (type == 2)
  {
    businessID = [ruleCopy businessID];
    [(TUPrivacyManager *)self setBlockIncomingCommunication:0 forBusinessID:businessID];
  }

  else if (type == 1)
  {
    businessID = [ruleCopy email];
    [(TUPrivacyManager *)self setBlockIncomingCommunication:0 forEmailAddress:businessID];
  }

  else
  {
    if (type)
    {
      goto LABEL_8;
    }

    businessID = [ruleCopy phoneNumber];
    [(TUPrivacyManager *)self setBlockIncomingCommunication:0 forPhoneNumber:businessID];
  }

LABEL_8:
}

- (BOOL)isIncomingCommunicationBlockedForPhoneNumber:(id)number
{
  numberCopy = number;
  v4 = numberCopy;
  if (numberCopy && ([numberCopy phoneNumberRef], (v5 = CMFItemCreateWithPhoneNumber()) != 0))
  {
    v6 = v5;
    v7 = CMFBlockListIsItemBlocked() != 0;
    CFRelease(v6);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isIncomingCommunicationBlockedForEmailAddress:(id)address
{
  addressCopy = address;
  if (addressCopy && (v4 = CMFItemCreateWithEmailAddress()) != 0)
  {
    v5 = v4;
    v6 = CMFBlockListIsItemBlocked() != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isIncomingCommunicationBlockedForBusinessID:(id)d
{
  dCopy = d;
  if (dCopy && (v4 = CMFItemCreateWithBusinessID()) != 0)
  {
    v5 = v4;
    v6 = CMFBlockListIsItemBlocked() != 0;
    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isIncomingCommunicationBlockedForHandle:(id)handle
{
  handleCopy = handle;
  v4 = handleCopy;
  if (handleCopy && ([handleCopy value], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "_stripFZIDPrefix"), CMFItemFromString = CreateCMFItemFromString(), v5, CMFItemFromString))
  {
    v7 = CMFBlockListIsItemBlocked() != 0;
    CFRelease(CMFItemFromString);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSArray)privacyRules
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  array = [MEMORY[0x1E695DF70] array];
  v8[7] = 0;
  CMFBlockListCopyItemsForAllServicesService();
  v4 = [MEMORY[0x1E695DEC8] arrayWithArray:0];
  v5 = TUDefaultLog(0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "CMFBlockListCopyItemsForAllServicesService = %@", buf, 0xCu);
  }

  if (v4)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__TUPrivacyManager_privacyRules__block_invoke;
    v8[3] = &unk_1E7426C88;
    v8[4] = self;
    v8[5] = &v9;
    v8[6] = a2;
    [v4 enumerateObjectsUsingBlock:v8];
  }

  v6 = [MEMORY[0x1E695DEC8] arrayWithArray:v10[5]];

  _Block_object_dispose(&v9, 8);

  return v6;
}

void __32__TUPrivacyManager_privacyRules__block_invoke(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  Type = CMFItemGetType();
  switch(Type)
  {
    case 2:
      cf = 0;
      CMFItemCopyBusinessID();
      v16 = 0;
      v12 = v16;
      if (v16)
      {
        CFRelease(v16);
      }

      v17 = TUDefaultLog(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "CMFItemCopyBusinessID(%@) = %@", buf, 0x16u);
      }

      if (v12)
      {
        v14 = *(*(a1[5] + 8) + 40);
        v15 = [TUPrivacyRule ruleForBusinessID:v12];
        goto LABEL_21;
      }

      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CMFItemCopyBusinessID for item with type CMFItemTypeBusiness returned nothing!"];
      NSLog(&cfstr_TuassertionFai.isa, v25);

      if (_TUAssertShouldCrashApplication())
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = v20;
        v21 = a1[6];
        v22 = a1[4];
        v23 = @"CMFItemCopyBusinessID for item with type CMFItemTypeBusiness returned nothing!";
        v24 = 228;
        goto LABEL_26;
      }

LABEL_28:

      break;
    case 1:
      cf = 0;
      CMFItemCopyEmailAddress();
      v11 = 0;
      v12 = v11;
      if (v11)
      {
        CFRelease(v11);
      }

      v13 = TUDefaultLog(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        v28 = 2112;
        v29 = v12;
        _os_log_impl(&dword_1956FD000, v13, OS_LOG_TYPE_DEFAULT, "CMFItemCopyEmailAddress(%@) = %@", buf, 0x16u);
      }

      if (v12)
      {
        v14 = *(*(a1[5] + 8) + 40);
        v15 = [TUPrivacyRule ruleForEmail:v12];
LABEL_21:
        v18 = v15;
        [v14 addObject:v15];
LABEL_27:

        goto LABEL_28;
      }

      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CMFItemCopyEmailAddress for item with type CMFItemTypeEmail returned nothing!"];
      NSLog(&cfstr_TuassertionFai.isa, v19);

      if (_TUAssertShouldCrashApplication())
      {
        v20 = [MEMORY[0x1E696AAA8] currentHandler];
        v18 = v20;
        v21 = a1[6];
        v22 = a1[4];
        v23 = @"CMFItemCopyEmailAddress for item with type CMFItemTypeEmail returned nothing!";
        v24 = 214;
LABEL_26:
        [v20 handleFailureInMethod:v21 object:v22 file:@"TUPrivacyManager.m" lineNumber:v24 description:v23];
        goto LABEL_27;
      }

      goto LABEL_28;
    case 0:
      cf = 0;
      v5 = CMFItemCopyPhoneNumber();
      v6 = TUDefaultLog(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v3;
        v28 = 2112;
        v29 = cf;
        _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "CMFItemCopyPhoneNumber(%@) = %@", buf, 0x16u);
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CMFItemCopyPhoneNumber for item with type CMFItemTypePhone returned nothing!"];
      NSLog(&cfstr_TuassertionFai.isa, v7);

      if (_TUAssertShouldCrashApplication())
      {
        __32__TUPrivacyManager_privacyRules__block_invoke_cold_1(a1, &cf, buf);
        if (*buf)
        {
          v8 = *(*(a1[5] + 8) + 40);
          v9 = [TUPhoneNumber phoneNumberWithCFPhoneNumberRef:?];
          v10 = [TUPrivacyRule ruleForPhoneNumber:v9];
          [v8 addObject:v10];

          CFRelease(cf);
        }
      }

      break;
  }
}

void __32__TUPrivacyManager_privacyRules__block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TUPrivacyManager.m" lineNumber:198 description:@"CMFItemCopyPhoneNumber for item with type CMFItemTypePhone returned nothing!"];

  *a3 = *a2;
}

@end